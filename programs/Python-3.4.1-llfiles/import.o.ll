; ModuleID = 'import.o.bc'
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
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }

@_PyImport_Inittab = external global [0 x %struct._inittab], align 8
@PyImport_Inittab = global %struct._inittab* getelementptr inbounds ([0 x %struct._inittab], [0 x %struct._inittab]* @_PyImport_Inittab, i64 0, i64 0), align 8
@.str = private unnamed_addr constant [9 x i8] c"__init__\00", align 1
@initstr = internal unnamed_addr global %struct._object* null, align 8
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
@import_lock = internal unnamed_addr global i8* null, align 8
@import_lock_thread = internal unnamed_addr global i64 -1, align 8
@import_lock_level = internal unnamed_addr global i32 0, align 4
@extensions = internal unnamed_addr global %struct._object* null, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.15 = private unnamed_addr constant [46 x i8] c"PyImport_GetModuleDict: no module dictionary!\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"# clear builtins._\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@sys_deletes = internal unnamed_addr constant [14 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i8* null], align 16
@.str.18 = private unnamed_addr constant [16 x i8] c"# clear sys.%s\0A\00", align 1
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
@PyImport_Import.silly_list = internal unnamed_addr global %struct._object* null, align 8
@PyImport_Import.builtins_str = internal unnamed_addr global %struct._object* null, align 8
@PyImport_Import.import_str = internal unnamed_addr global %struct._object* null, align 8
@.str.58 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"builtins\00", align 1
@.str.60 = private unnamed_addr constant [5 x i8] c"{OO}\00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"OOOOi\00", align 1
@impmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @doc_imp, i32 0, i32 0), i64 0, %struct.PyMethodDef* getelementptr inbounds ([13 x %struct.PyMethodDef], [13 x %struct.PyMethodDef]* @imp_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@PyImport_ExtendInittab.our_copy = internal unnamed_addr global %struct._inittab* null, align 8
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
  %call = tail call %struct._ts* @PyThreadState_Get() #1, !dbg !1491
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %call, i64 0, i32 2, !dbg !1492
  %0 = load %struct._is*, %struct._is** %interp1, align 8, !dbg !1492, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %0, i64 0, metadata !561, metadata !1500), !dbg !1501
  %call2 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0)) #1, !dbg !1502
  store %struct._object* %call2, %struct._object** @initstr, align 8, !dbg !1503, !tbaa !1504
  %cmp = icmp eq %struct._object* %call2, null, !dbg !1505
  br i1 %cmp, label %if.then, label %if.end, !dbg !1507

if.then:                                          ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1508
  unreachable, !dbg !1508

if.end:                                           ; preds = %entry
  %builtins = getelementptr inbounds %struct._is, %struct._is* %0, i64 0, i32 5, !dbg !1509
  %1 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1509, !tbaa !1510
  %call3 = tail call %struct._object* @PyDict_Copy(%struct._object* %1) #1, !dbg !1512
  %builtins_copy = getelementptr inbounds %struct._is, %struct._is* %0, i64 0, i32 13, !dbg !1513
  store %struct._object* %call3, %struct._object** %builtins_copy, align 8, !dbg !1514, !tbaa !1515
  %cmp5 = icmp eq %struct._object* %call3, null, !dbg !1516
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1518

if.then.6:                                        ; preds = %if.end
  tail call void @Py_FatalError(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1519
  unreachable, !dbg !1519

if.end.7:                                         ; preds = %if.end
  ret void, !dbg !1520
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare %struct._ts* @PyThreadState_Get() #3

declare %struct._object* @PyUnicode_InternFromString(i8*) #3

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #4

declare %struct._object* @PyDict_Copy(%struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define void @_PyImportHooks_Init() #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !565, metadata !1500), !dbg !1521
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !566, metadata !1500), !dbg !1522
  %call = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !1523
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !564, metadata !1500), !dbg !1524
  %cmp = icmp eq %struct._object* %call, null, !dbg !1525
  br i1 %cmp, label %error, label %if.end, !dbg !1527

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PySys_SetObject(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), %struct._object* %call) #1, !dbg !1528
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !566, metadata !1500), !dbg !1522
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !567, metadata !1500), !dbg !1529
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1531
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1531, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !1531
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1531, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1531
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !1535

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1536
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1536, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1536
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1536, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !1536
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.else
  %tobool = icmp eq i32 %call1, 0, !dbg !1542
  br i1 %tobool, label %if.end.6, label %error, !dbg !1544

if.end.6:                                         ; preds = %if.end.4
  %call7 = tail call %struct._object* @PyDict_New() #1, !dbg !1545
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !564, metadata !1500), !dbg !1524
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !1546
  br i1 %cmp8, label %error, label %if.end.10, !dbg !1548

if.end.10:                                        ; preds = %if.end.6
  %call11 = tail call i32 @PySys_SetObject(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), %struct._object* %call7) #1, !dbg !1549
  tail call void @llvm.dbg.value(metadata i32 %call11, i64 0, metadata !566, metadata !1500), !dbg !1522
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !569, metadata !1500), !dbg !1550
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 0, !dbg !1552
  %3 = load i64, i64* %ob_refcnt14, align 8, !dbg !1552, !tbaa !1533
  %dec15 = add i64 %3, -1, !dbg !1552
  store i64 %dec15, i64* %ob_refcnt14, align 8, !dbg !1552, !tbaa !1533
  %cmp16 = icmp eq i64 %dec15, 0, !dbg !1552
  br i1 %cmp16, label %if.else.18, label %if.end.21, !dbg !1554

if.else.18:                                       ; preds = %if.end.10
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 1, !dbg !1555
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8, !dbg !1555, !tbaa !1538
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1555
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8, !dbg !1555, !tbaa !1539
  tail call void %5(%struct._object* %call7) #1, !dbg !1555
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.10, %if.else.18
  %tobool24 = icmp eq i32 %call11, 0, !dbg !1557
  br i1 %tobool24, label %if.end.26, label %error, !dbg !1559

if.end.26:                                        ; preds = %if.end.21
  %call27 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !1560
  tail call void @llvm.dbg.value(metadata %struct._object* %call27, i64 0, metadata !565, metadata !1500), !dbg !1521
  %cmp28 = icmp eq %struct._object* %call27, null, !dbg !1561
  br i1 %cmp28, label %error, label %if.end.30, !dbg !1563

if.end.30:                                        ; preds = %if.end.26
  %call31 = tail call i32 @PySys_SetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), %struct._object* %call27) #1, !dbg !1564
  tail call void @llvm.dbg.value(metadata i32 %call31, i64 0, metadata !566, metadata !1500), !dbg !1522
  %tobool32 = icmp eq i32 %call31, 0, !dbg !1565
  br i1 %tobool32, label %do.body.35, label %error, !dbg !1567

error:                                            ; preds = %if.end.30, %if.end.21, %if.end.4, %if.end.26, %if.end.6, %entry
  tail call void @PyErr_Print() #1, !dbg !1568
  tail call void @Py_FatalError(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !1570
  unreachable, !dbg !1570

do.body.35:                                       ; preds = %if.end.30
  tail call void @llvm.dbg.value(metadata %struct._object* %call27, i64 0, metadata !571, metadata !1500), !dbg !1571
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %call27, i64 0, i32 0, !dbg !1573
  %6 = load i64, i64* %ob_refcnt37, align 8, !dbg !1573, !tbaa !1533
  %dec38 = add i64 %6, -1, !dbg !1573
  store i64 %dec38, i64* %ob_refcnt37, align 8, !dbg !1573, !tbaa !1533
  %cmp39 = icmp eq i64 %dec38, 0, !dbg !1573
  br i1 %cmp39, label %if.else.41, label %if.end.44, !dbg !1575

if.else.41:                                       ; preds = %do.body.35
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %call27, i64 0, i32 1, !dbg !1576
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !1576, !tbaa !1538
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1576
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8, !dbg !1576, !tbaa !1539
  tail call void %8(%struct._object* %call27) #1, !dbg !1576
  br label %if.end.44

if.end.44:                                        ; preds = %do.body.35, %if.else.41
  ret void, !dbg !1578
}

declare %struct._object* @PyList_New(i64) #3

declare i32 @PySys_SetObject(i8*, %struct._object*) #3

declare %struct._object* @PyDict_New() #3

declare void @PyErr_Print() #3

; Function Attrs: nounwind uwtable
define void @_PyImportZip_Init() #0 {
entry:
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !577, metadata !1500), !dbg !1579
  %call = tail call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #1, !dbg !1580
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !575, metadata !1500), !dbg !1581
  %cmp = icmp eq %struct._object* %call, null, !dbg !1582
  br i1 %cmp, label %if.then, label %if.end, !dbg !1584

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1585, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0)) #1, !dbg !1587
  br label %error, !dbg !1588

if.end:                                           ; preds = %entry
  %1 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1589, !tbaa !1591
  %tobool = icmp eq i32 %1, 0, !dbg !1589
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1592

if.then.1:                                        ; preds = %if.end
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0)) #1, !dbg !1593
  br label %if.end.2, !dbg !1593

if.end.2:                                         ; preds = %if.end, %if.then.1
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64 0, metadata !889, metadata !1500) #1, !dbg !1594
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #1, !dbg !1596
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !890, metadata !1500) #1, !dbg !1597
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !1598
  br i1 %cmp.i, label %if.then.5, label %if.end.i, !dbg !1600

if.end.i:                                         ; preds = %if.end.2
  %call1.i = tail call %struct._object* @PyImport_Import(%struct._object* %call.i) #1, !dbg !1601
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !891, metadata !1500) #1, !dbg !1602
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !892, metadata !1500) #1, !dbg !1603
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !1605
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1605, !tbaa !1533
  %dec.i = add i64 %2, -1, !dbg !1605
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1605, !tbaa !1533
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !1605
  br i1 %cmp2.i, label %if.else.i, label %PyImport_ImportModule.exit, !dbg !1607

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !1608
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1608, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1608
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1608, !tbaa !1539
  tail call void %4(%struct._object* %call.i) #1, !dbg !1608
  br label %PyImport_ImportModule.exit, !dbg !1610

PyImport_ImportModule.exit:                       ; preds = %if.end.i, %if.else.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !576, metadata !1500), !dbg !1611
  %cmp4 = icmp eq %struct._object* %call1.i, null, !dbg !1612
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1613

if.then.5:                                        ; preds = %if.end.2, %PyImport_ImportModule.exit
  tail call void @PyErr_Clear() #1, !dbg !1614
  %5 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1616, !tbaa !1591
  %tobool6 = icmp eq i32 %5, 0, !dbg !1616
  br i1 %tobool6, label %cleanup.41, label %if.then.7, !dbg !1618

if.then.7:                                        ; preds = %if.then.5
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0)) #1, !dbg !1619
  br label %cleanup.41, !dbg !1619

if.else:                                          ; preds = %PyImport_ImportModule.exit
  %call9 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call1.i, %struct._Py_Identifier* nonnull @_PyImportZip_Init.PyId_zipimporter) #1, !dbg !1620
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !578, metadata !1500), !dbg !1621
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !581, metadata !1500), !dbg !1622
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !1624
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1624, !tbaa !1533
  %dec = add i64 %6, -1, !dbg !1624
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1624, !tbaa !1533
  %cmp10 = icmp eq i64 %dec, 0, !dbg !1624
  br i1 %cmp10, label %if.else.12, label %if.end.13, !dbg !1626

if.else.12:                                       ; preds = %if.else
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !1627
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1627, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1627
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1627, !tbaa !1539
  tail call void %8(%struct._object* %call1.i) #1, !dbg !1627
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.else.12
  %cmp14 = icmp eq %struct._object* %call9, null, !dbg !1629
  br i1 %cmp14, label %if.then.15, label %if.else.19, !dbg !1630

if.then.15:                                       ; preds = %if.end.13
  tail call void @PyErr_Clear() #1, !dbg !1631
  %9 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1633, !tbaa !1591
  %tobool16 = icmp eq i32 %9, 0, !dbg !1633
  br i1 %tobool16, label %cleanup.41, label %if.then.17, !dbg !1635

if.then.17:                                       ; preds = %if.then.15
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i64 0, i64 0)) #1, !dbg !1636
  br label %cleanup.41, !dbg !1636

if.else.19:                                       ; preds = %if.end.13
  %call20 = tail call i32 @PyList_Insert(%struct._object* %call, i64 0, %struct._object* %call9) #1, !dbg !1637
  tail call void @llvm.dbg.value(metadata i32 %call20, i64 0, metadata !577, metadata !1500), !dbg !1579
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !583, metadata !1500), !dbg !1638
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 0, !dbg !1640
  %10 = load i64, i64* %ob_refcnt23, align 8, !dbg !1640, !tbaa !1533
  %dec24 = add i64 %10, -1, !dbg !1640
  store i64 %dec24, i64* %ob_refcnt23, align 8, !dbg !1640, !tbaa !1533
  %cmp25 = icmp eq i64 %dec24, 0, !dbg !1640
  br i1 %cmp25, label %if.else.27, label %if.end.30, !dbg !1642

if.else.27:                                       ; preds = %if.else.19
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 1, !dbg !1643
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !1643, !tbaa !1538
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1643
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8, !dbg !1643, !tbaa !1539
  tail call void %12(%struct._object* %call9) #1, !dbg !1643
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.19, %if.else.27
  %cmp33 = icmp slt i32 %call20, 0, !dbg !1645
  br i1 %cmp33, label %error, label %if.end.35, !dbg !1647

if.end.35:                                        ; preds = %if.end.30
  %13 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1648, !tbaa !1591
  %tobool36 = icmp eq i32 %13, 0, !dbg !1648
  br i1 %tobool36, label %cleanup.41, label %if.then.37, !dbg !1650

if.then.37:                                       ; preds = %if.end.35
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !1651
  br label %cleanup.41, !dbg !1651

error:                                            ; preds = %if.end.30, %if.then
  tail call void @PyErr_Print() #1, !dbg !1652
  tail call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0)) #7, !dbg !1653
  unreachable, !dbg !1653

cleanup.41:                                       ; preds = %if.then.17, %if.then.37, %if.end.35, %if.then.15, %if.then.7, %if.then.5
  ret void, !dbg !1654
}

declare %struct._object* @PySys_GetObject(i8*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare void @PySys_WriteStderr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModule(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !889, metadata !1500), !dbg !1655
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %name) #1, !dbg !1656
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !890, metadata !1500), !dbg !1657
  %cmp = icmp eq %struct._object* %call, null, !dbg !1658
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1659

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyImport_Import(%struct._object* %call), !dbg !1660
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !891, metadata !1500), !dbg !1661
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !892, metadata !1500), !dbg !1662
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1663
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !1663, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !1663
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1663, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1663
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !1664

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1665
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1665, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !1665
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1665, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !1665
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !1666
}

declare void @PyErr_Clear() #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare i32 @PyList_Insert(%struct._object*, i64, %struct._object*) #3

; Function Attrs: nounwind uwtable
define void @_PyImport_AcquireLock() #0 {
entry:
  %call = tail call i64 @PyThread_get_thread_ident() #1, !dbg !1667
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !589, metadata !1500), !dbg !1668
  %cmp = icmp eq i64 %call, -1, !dbg !1669
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1671

if.end:                                           ; preds = %entry
  %0 = load i8*, i8** @import_lock, align 8, !dbg !1672, !tbaa !1504
  %cmp1 = icmp eq i8* %0, null, !dbg !1674
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !1675

if.then.2:                                        ; preds = %if.end
  %call3 = tail call i8* @PyThread_allocate_lock() #1, !dbg !1676
  store i8* %call3, i8** @import_lock, align 8, !dbg !1678, !tbaa !1504
  %cmp4 = icmp eq i8* %call3, null, !dbg !1679
  br i1 %cmp4, label %cleanup, label %if.end.7, !dbg !1681

if.end.7:                                         ; preds = %if.then.2, %if.end
  %1 = phi i8* [ %call3, %if.then.2 ], [ %0, %if.end ], !dbg !1682
  %2 = load i64, i64* @import_lock_thread, align 8, !dbg !1684, !tbaa !1686
  %cmp8 = icmp eq i64 %2, %call, !dbg !1687
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1688

if.then.9:                                        ; preds = %if.end.7
  %3 = load i32, i32* @import_lock_level, align 4, !dbg !1689, !tbaa !1591
  %inc = add i32 %3, 1, !dbg !1689
  store i32 %inc, i32* @import_lock_level, align 4, !dbg !1689, !tbaa !1591
  br label %cleanup, !dbg !1691

if.end.10:                                        ; preds = %if.end.7
  %cmp11 = icmp eq i64 %2, -1, !dbg !1692
  br i1 %cmp11, label %lor.lhs.false, label %if.then.13, !dbg !1693

lor.lhs.false:                                    ; preds = %if.end.10
  %call12 = tail call i32 @PyThread_acquire_lock(i8* %1, i32 0) #1, !dbg !1694
  %tobool = icmp eq i32 %call12, 0, !dbg !1694
  br i1 %tobool, label %if.then.13, label %if.end.16, !dbg !1695

if.then.13:                                       ; preds = %lor.lhs.false, %if.end.10
  %call14 = tail call %struct._ts* @PyEval_SaveThread() #1, !dbg !1696
  tail call void @llvm.dbg.value(metadata %struct._ts* %call14, i64 0, metadata !590, metadata !1500), !dbg !1697
  %4 = load i8*, i8** @import_lock, align 8, !dbg !1698, !tbaa !1504
  %call15 = tail call i32 @PyThread_acquire_lock(i8* %4, i32 1) #1, !dbg !1699
  tail call void @PyEval_RestoreThread(%struct._ts* %call14) #1, !dbg !1700
  br label %if.end.16, !dbg !1701

if.end.16:                                        ; preds = %lor.lhs.false, %if.then.13
  store i64 %call, i64* @import_lock_thread, align 8, !dbg !1702, !tbaa !1686
  store i32 1, i32* @import_lock_level, align 4, !dbg !1703, !tbaa !1591
  br label %cleanup, !dbg !1704

cleanup:                                          ; preds = %if.then.2, %entry, %if.end.16, %if.then.9
  ret void, !dbg !1704
}

declare i64 @PyThread_get_thread_ident() #3

declare i8* @PyThread_allocate_lock() #3

declare i32 @PyThread_acquire_lock(i8*, i32) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

; Function Attrs: nounwind uwtable
define i32 @_PyImport_ReleaseLock() #0 {
entry:
  %call = tail call i64 @PyThread_get_thread_ident() #1, !dbg !1705
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !597, metadata !1500), !dbg !1706
  %cmp = icmp eq i64 %call, -1, !dbg !1707
  %0 = load i8*, i8** @import_lock, align 8, !dbg !1709
  %cmp1 = icmp eq i8* %0, null, !dbg !1712
  %or.cond = or i1 %cmp, %cmp1, !dbg !1713
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !1713

if.end:                                           ; preds = %entry
  %1 = load i64, i64* @import_lock_thread, align 8, !dbg !1714, !tbaa !1686
  %cmp2 = icmp eq i64 %1, %call, !dbg !1716
  br i1 %cmp2, label %if.end.4, label %cleanup, !dbg !1717

if.end.4:                                         ; preds = %if.end
  %2 = load i32, i32* @import_lock_level, align 4, !dbg !1718, !tbaa !1591
  %dec = add i32 %2, -1, !dbg !1718
  store i32 %dec, i32* @import_lock_level, align 4, !dbg !1718, !tbaa !1591
  %cmp5 = icmp eq i32 %dec, 0, !dbg !1719
  br i1 %cmp5, label %if.then.6, label %cleanup, !dbg !1720

if.then.6:                                        ; preds = %if.end.4
  store i64 -1, i64* @import_lock_thread, align 8, !dbg !1721, !tbaa !1686
  tail call void @PyThread_release_lock(i8* %0) #1, !dbg !1722
  br label %cleanup, !dbg !1723

cleanup:                                          ; preds = %if.end.4, %if.then.6, %if.end, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ -1, %if.end ], [ 1, %if.then.6 ], [ 1, %if.end.4 ]
  ret i32 %retval.0, !dbg !1724
}

declare void @PyThread_release_lock(i8*) #3

; Function Attrs: nounwind uwtable
define void @_PyImport_ReInitLock() #0 {
entry:
  %0 = load i8*, i8** @import_lock, align 8, !dbg !1725, !tbaa !1504
  %cmp = icmp eq i8* %0, null, !dbg !1727
  br i1 %cmp, label %if.end, label %if.then, !dbg !1728

if.then:                                          ; preds = %entry
  %call = tail call i8* @PyThread_allocate_lock() #1, !dbg !1729
  store i8* %call, i8** @import_lock, align 8, !dbg !1730, !tbaa !1504
  br label %if.end, !dbg !1731

if.end:                                           ; preds = %entry, %if.then
  %1 = load i32, i32* @import_lock_level, align 4, !dbg !1732, !tbaa !1591
  %cmp1 = icmp sgt i32 %1, 1, !dbg !1733
  br i1 %cmp1, label %if.then.2, label %if.else, !dbg !1734

if.then.2:                                        ; preds = %if.end
  %call3 = tail call i64 @PyThread_get_thread_ident() #1, !dbg !1735
  tail call void @llvm.dbg.value(metadata i64 %call3, i64 0, metadata !600, metadata !1500), !dbg !1736
  %2 = load i8*, i8** @import_lock, align 8, !dbg !1737, !tbaa !1504
  %call4 = tail call i32 @PyThread_acquire_lock(i8* %2, i32 0) #1, !dbg !1738
  store i64 %call3, i64* @import_lock_thread, align 8, !dbg !1739, !tbaa !1686
  %3 = load i32, i32* @import_lock_level, align 4, !dbg !1740, !tbaa !1591
  %dec = add i32 %3, -1, !dbg !1740
  br label %if.end.5, !dbg !1741

if.else:                                          ; preds = %if.end
  store i64 -1, i64* @import_lock_thread, align 8, !dbg !1742, !tbaa !1686
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  %storemerge = phi i32 [ 0, %if.else ], [ %dec, %if.then.2 ]
  store i32 %storemerge, i32* @import_lock_level, align 4, !dbg !1740, !tbaa !1591
  ret void, !dbg !1744
}

; Function Attrs: nounwind uwtable
define void @_PyImport_Fini() #0 {
entry:
  %0 = load %struct._object*, %struct._object** @extensions, align 8, !dbg !1745, !tbaa !1504
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !605, metadata !1500), !dbg !1745
  %cmp = icmp eq %struct._object* %0, null, !dbg !1747
  br i1 %cmp, label %if.end.4, label %if.then, !dbg !1748

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** @extensions, align 8, !dbg !1749, !tbaa !1504
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !607, metadata !1500), !dbg !1751
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1753
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1753, !tbaa !1533
  %dec = add i64 %1, -1, !dbg !1753
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1753, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1753
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !1755

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1756
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1756, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1756
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1756, !tbaa !1539
  tail call void %3(%struct._object* %0) #1, !dbg !1756
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then, %entry
  %4 = load i8*, i8** @import_lock, align 8, !dbg !1758, !tbaa !1504
  %cmp7 = icmp eq i8* %4, null, !dbg !1760
  br i1 %cmp7, label %if.end.9, label %if.then.8, !dbg !1761

if.then.8:                                        ; preds = %if.end.4
  tail call void @PyThread_free_lock(i8* %4) #1, !dbg !1762
  store i8* null, i8** @import_lock, align 8, !dbg !1764, !tbaa !1504
  br label %if.end.9, !dbg !1765

if.end.9:                                         ; preds = %if.end.4, %if.then.8
  ret void, !dbg !1766
}

declare void @PyThread_free_lock(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_GetModuleDict() #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500), !dbg !1767
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500), !dbg !1767
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500), !dbg !1767
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1768, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !1500), !dbg !1767
  %interp4 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !1771
  %1 = bitcast i8* %interp4 to %struct._is**, !dbg !1771
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !1771, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !613, metadata !1500), !dbg !1772
  %modules = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 2, !dbg !1773
  %3 = load %struct._object*, %struct._object** %modules, align 8, !dbg !1773, !tbaa !1775
  %cmp = icmp eq %struct._object* %3, null, !dbg !1776
  br i1 %cmp, label %if.then, label %if.end, !dbg !1777

if.then:                                          ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1778
  unreachable, !dbg !1778

if.end:                                           ; preds = %entry
  ret %struct._object* %3, !dbg !1779
}

; Function Attrs: nounwind uwtable
define void @PyImport_Cleanup() #0 {
entry:
  %pos = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %0 = bitcast i64* %pos to i8*, !dbg !1780
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1780
  %1 = bitcast %struct._object** %key to i8*, !dbg !1781
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1781
  %2 = bitcast %struct._object** %value to i8*, !dbg !1781
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1781
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !634, metadata !1500), !dbg !1782
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !637, metadata !1500), !dbg !1782
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !638, metadata !1500), !dbg !1782
  %3 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1783, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !636, metadata !1500), !dbg !1782
  %interp4 = getelementptr inbounds i8, i8* %3, i64 16, !dbg !1786
  %4 = bitcast i8* %interp4 to %struct._is**, !dbg !1786
  %5 = load %struct._is*, %struct._is** %4, align 8, !dbg !1786, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %5, i64 0, metadata !633, metadata !1500), !dbg !1787
  %modules6 = getelementptr inbounds %struct._is, %struct._is* %5, i64 0, i32 2, !dbg !1788
  %6 = load %struct._object*, %struct._object** %modules6, align 8, !dbg !1788, !tbaa !1775
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !639, metadata !1500), !dbg !1789
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !640, metadata !1500), !dbg !1790
  %cmp = icmp eq %struct._object* %6, null, !dbg !1791
  br i1 %cmp, label %cleanup.228, label %if.end, !dbg !1793

if.end:                                           ; preds = %entry
  %7 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1794, !tbaa !1591
  %tobool = icmp eq i32 %7, 0, !dbg !1794
  br i1 %tobool, label %if.end.10, label %if.then.9, !dbg !1796

if.then.9:                                        ; preds = %if.end
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0)) #1, !dbg !1797
  br label %if.end.10, !dbg !1797

if.end.10:                                        ; preds = %if.end, %if.then.9
  %builtins = getelementptr inbounds %struct._is, %struct._is* %5, i64 0, i32 5, !dbg !1798
  %8 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1798, !tbaa !1510
  %call = tail call i32 @PyDict_SetItemString(%struct._object* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1799
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !641, metadata !1500), !dbg !1800
  %sysdict = getelementptr inbounds %struct._is, %struct._is* %5, i64 0, i32 4, !dbg !1801
  br label %for.body, !dbg !1805

for.cond.16.preheader:                            ; preds = %if.end.14
  %9 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1806, !tbaa !1591
  %tobool19 = icmp eq i32 %9, 0, !dbg !1806
  br i1 %tobool19, label %if.end.21, label %if.then.20, !dbg !1811

for.body:                                         ; preds = %if.end.10, %if.end.14
  %10 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), %if.end.10 ], [ %14, %if.end.14 ]
  %p.0334 = phi i8** [ getelementptr inbounds ([14 x i8*], [14 x i8*]* @sys_deletes, i64 0, i64 0), %if.end.10 ], [ %incdec.ptr, %if.end.14 ]
  %11 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1812, !tbaa !1591
  %tobool12 = icmp eq i32 %11, 0, !dbg !1812
  br i1 %tobool12, label %if.end.14, label %if.then.13, !dbg !1814

if.then.13:                                       ; preds = %for.body
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i64 0, i64 0), i8* %10) #1, !dbg !1815
  br label %if.end.14, !dbg !1815

if.end.14:                                        ; preds = %for.body, %if.then.13
  %12 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1801, !tbaa !1816
  %13 = load i8*, i8** %p.0334, align 8, !dbg !1817, !tbaa !1504
  %call15 = tail call i32 @PyDict_SetItemString(%struct._object* %12, i8* %13, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1818
  %incdec.ptr = getelementptr i8*, i8** %p.0334, i64 1, !dbg !1819
  tail call void @llvm.dbg.value(metadata i8** %incdec.ptr, i64 0, metadata !641, metadata !1500), !dbg !1800
  %14 = load i8*, i8** %incdec.ptr, align 8, !dbg !1820, !tbaa !1504
  %cmp11 = icmp eq i8* %14, null, !dbg !1821
  br i1 %cmp11, label %for.cond.16.preheader, label %for.body, !dbg !1805

if.then.20:                                       ; preds = %for.cond.16.preheader
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0)) #1, !dbg !1822
  br label %if.end.21, !dbg !1822

if.end.21:                                        ; preds = %for.cond.16.preheader, %if.then.20
  %15 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1823, !tbaa !1816
  %call23 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i64 0, i64 0)) #1, !dbg !1824
  %cmp24 = icmp eq %struct._object* %call23, null, !dbg !1825
  %_Py_NoneStruct.call23 = select i1 %cmp24, %struct._object* @_Py_NoneStruct, %struct._object* %call23, !dbg !1827
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct.call23, i64 0, metadata !631, metadata !1500), !dbg !1828
  store %struct._object* %_Py_NoneStruct.call23, %struct._object** %value, align 8, !dbg !1829, !tbaa !1504
  %16 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1830, !tbaa !1816
  %call28 = tail call i32 @PyDict_SetItemString(%struct._object* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), %struct._object* %_Py_NoneStruct.call23) #1, !dbg !1831
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !641, metadata !1500), !dbg !1800
  %17 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1806, !tbaa !1591
  %tobool19.1 = icmp eq i32 %17, 0, !dbg !1806
  br i1 %tobool19.1, label %if.end.21.1, label %if.then.20.1, !dbg !1811

if.then.34:                                       ; preds = %if.end.21.2
  tail call void @PyErr_Clear() #1, !dbg !1832
  br label %if.end.35, !dbg !1832

if.end.35:                                        ; preds = %if.then.34, %if.end.21.2
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !629, metadata !1500), !dbg !1834
  store i64 0, i64* %pos, align 8, !dbg !1835, !tbaa !1686
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !629, metadata !1500), !dbg !1834
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %call36.331 = call i32 @PyDict_Next(%struct._object* %6, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !1837
  %tobool37.332 = icmp eq i32 %call36.331, 0, !dbg !1838
  br i1 %tobool37.332, label %while.end, label %while.body.lr.ph, !dbg !1838

while.body.lr.ph:                                 ; preds = %if.end.35
  br i1 %cmp33, label %while.body.us.preheader, label %while.body.preheader, !dbg !1839

while.body.preheader:                             ; preds = %while.body.lr.ph
  br label %while.body, !dbg !1828

while.body.us.preheader:                          ; preds = %while.body.lr.ph
  br label %while.body.us, !dbg !1828

while.body.us:                                    ; preds = %while.body.us.preheader, %while.cond.backedge.us
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %18 = load %struct._object*, %struct._object** %value, align 8, !dbg !1840, !tbaa !1504
  %ob_type.us = getelementptr inbounds %struct._object, %struct._object* %18, i64 0, i32 1, !dbg !1840
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type.us, align 8, !dbg !1840, !tbaa !1538
  %cmp38.us = icmp eq %struct._typeobject* %19, @PyModule_Type, !dbg !1840
  br i1 %cmp38.us, label %if.then.42.us, label %lor.lhs.false.us, !dbg !1840

lor.lhs.false.us:                                 ; preds = %while.body.us
  %call40.us = call i32 @PyType_IsSubtype(%struct._typeobject* %19, %struct._typeobject* nonnull @PyModule_Type) #1, !dbg !1841
  %tobool41.us = icmp eq i32 %call40.us, 0, !dbg !1841
  br i1 %tobool41.us, label %while.cond.backedge.us, label %if.then.42.us, !dbg !1843

if.then.42.us:                                    ; preds = %lor.lhs.false.us, %while.body.us
  %20 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1844, !tbaa !1591
  %tobool43.us = icmp eq i32 %20, 0, !dbg !1844
  br i1 %tobool43.us, label %if.end.97.us, label %land.lhs.true.us, !dbg !1846

land.lhs.true.us:                                 ; preds = %if.then.42.us
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  %21 = load %struct._object*, %struct._object** %key, align 8, !dbg !1847, !tbaa !1504
  %ob_type44.us = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 1, !dbg !1847
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type44.us, align 8, !dbg !1847, !tbaa !1538
  %tp_flags.us = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 19, !dbg !1847
  %23 = load i64, i64* %tp_flags.us, align 8, !dbg !1847, !tbaa !1849
  %and.us = and i64 %23, 268435456, !dbg !1847
  %cmp45.us = icmp eq i64 %and.us, 0, !dbg !1847
  br i1 %cmp45.us, label %if.end.97.us, label %if.then.46.us, !dbg !1850

if.then.46.us:                                    ; preds = %land.lhs.true.us
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %24 = load %struct._object*, %struct._object** %value, align 8, !dbg !1851, !tbaa !1504
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), %struct._object* %21, %struct._object* %24) #1, !dbg !1852
  br label %if.end.97.us, !dbg !1852

if.end.97.us:                                     ; preds = %if.then.42.us, %land.lhs.true.us, %if.then.46.us
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  %25 = load %struct._object*, %struct._object** %key, align 8, !dbg !1853, !tbaa !1504
  %call98.us = call i32 @PyDict_SetItem(%struct._object* %6, %struct._object* %25, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1854
  br label %while.cond.backedge.us, !dbg !1855

while.cond.backedge.us:                           ; preds = %if.end.97.us, %lor.lhs.false.us
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !629, metadata !1500), !dbg !1834
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %call36.us = call i32 @PyDict_Next(%struct._object* %6, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !1837
  %tobool37.us = icmp eq i32 %call36.us, 0, !dbg !1838
  br i1 %tobool37.us, label %while.end.loopexit, label %while.body.us, !dbg !1838

while.body:                                       ; preds = %while.body.preheader, %while.cond.backedge
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %26 = load %struct._object*, %struct._object** %value, align 8, !dbg !1840, !tbaa !1504
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 1, !dbg !1840
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1840, !tbaa !1538
  %cmp38 = icmp eq %struct._typeobject* %27, @PyModule_Type, !dbg !1840
  br i1 %cmp38, label %if.then.42, label %lor.lhs.false, !dbg !1840

lor.lhs.false:                                    ; preds = %while.body
  %call40 = call i32 @PyType_IsSubtype(%struct._typeobject* %27, %struct._typeobject* nonnull @PyModule_Type) #1, !dbg !1841
  %tobool41 = icmp eq i32 %call40, 0, !dbg !1841
  br i1 %tobool41, label %while.cond.backedge, label %if.then.42, !dbg !1843

if.then.42:                                       ; preds = %lor.lhs.false, %while.body
  %28 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1844, !tbaa !1591
  %tobool43 = icmp eq i32 %28, 0, !dbg !1844
  br i1 %tobool43, label %if.then.49, label %land.lhs.true, !dbg !1846

land.lhs.true:                                    ; preds = %if.then.42
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  %29 = load %struct._object*, %struct._object** %key, align 8, !dbg !1847, !tbaa !1504
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !1847
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8, !dbg !1847, !tbaa !1538
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 19, !dbg !1847
  %31 = load i64, i64* %tp_flags, align 8, !dbg !1847, !tbaa !1849
  %and = and i64 %31, 268435456, !dbg !1847
  %cmp45 = icmp eq i64 %and, 0, !dbg !1847
  br i1 %cmp45, label %if.then.49, label %if.then.46, !dbg !1850

if.then.46:                                       ; preds = %land.lhs.true
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %32 = load %struct._object*, %struct._object** %value, align 8, !dbg !1851, !tbaa !1504
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i64 0, i64 0), %struct._object* %29, %struct._object* %32) #1, !dbg !1852
  br label %if.then.49, !dbg !1852

if.then.49:                                       ; preds = %if.then.46, %if.then.42, %land.lhs.true
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %33 = load %struct._object*, %struct._object** %value, align 8, !dbg !1856, !tbaa !1504
  %call51 = call %struct._object* @PyWeakref_NewRef(%struct._object* %33, %struct._object* null) #1, !dbg !1856
  call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !643, metadata !1500), !dbg !1856
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  %34 = load %struct._object*, %struct._object** %key, align 8, !dbg !1858, !tbaa !1504
  %tobool52 = icmp ne %struct._object* %34, null, !dbg !1858
  %tobool54 = icmp ne %struct._object* %call51, null, !dbg !1859
  %or.cond = and i1 %tobool54, %tobool52, !dbg !1858
  br i1 %or.cond, label %if.then.55, label %do.body.72, !dbg !1858

if.then.55:                                       ; preds = %if.then.49
  %call57 = call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %34, %struct._object* %call51) #1, !dbg !1861
  call void @llvm.dbg.value(metadata %struct._object* %call57, i64 0, metadata !649, metadata !1500), !dbg !1861
  %call58 = call i32 @PyList_Append(%struct._object* %call32, %struct._object* %call57) #1, !dbg !1861
  call void @llvm.dbg.value(metadata %struct._object* %call57, i64 0, metadata !652, metadata !1500), !dbg !1863
  %cmp60 = icmp eq %struct._object* %call57, null, !dbg !1865
  br i1 %cmp60, label %do.body.72, label %do.body.62, !dbg !1866

do.body.62:                                       ; preds = %if.then.55
  call void @llvm.dbg.value(metadata %struct._object* %call57, i64 0, metadata !654, metadata !1500), !dbg !1867
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call57, i64 0, i32 0, !dbg !1869
  %35 = load i64, i64* %ob_refcnt, align 8, !dbg !1869, !tbaa !1533
  %dec = add i64 %35, -1, !dbg !1869
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1869, !tbaa !1533
  %cmp64 = icmp eq i64 %dec, 0, !dbg !1869
  br i1 %cmp64, label %if.else, label %do.body.72, !dbg !1871

if.else:                                          ; preds = %do.body.62
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %call57, i64 0, i32 1, !dbg !1872
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !1872, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !1872
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1872, !tbaa !1539
  call void %37(%struct._object* %call57) #1, !dbg !1872
  br label %do.body.72

do.body.72:                                       ; preds = %if.then.55, %do.body.62, %if.else, %if.then.49
  call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !657, metadata !1500), !dbg !1874
  br i1 %tobool54, label %do.body.77, label %if.end.90, !dbg !1876

do.body.77:                                       ; preds = %do.body.72
  call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !659, metadata !1500), !dbg !1877
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %call51, i64 0, i32 0, !dbg !1879
  %38 = load i64, i64* %ob_refcnt80, align 8, !dbg !1879, !tbaa !1533
  %dec81 = add i64 %38, -1, !dbg !1879
  store i64 %dec81, i64* %ob_refcnt80, align 8, !dbg !1879, !tbaa !1533
  %cmp82 = icmp eq i64 %dec81, 0, !dbg !1879
  br i1 %cmp82, label %if.else.84, label %if.end.90, !dbg !1881

if.else.84:                                       ; preds = %do.body.77
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %call51, i64 0, i32 1, !dbg !1882
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8, !dbg !1882, !tbaa !1538
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i64 0, i32 4, !dbg !1882
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8, !dbg !1882, !tbaa !1539
  call void %40(%struct._object* %call51) #1, !dbg !1882
  br label %if.end.90

if.end.90:                                        ; preds = %if.else.84, %do.body.77, %do.body.72
  %call93 = call %struct._object* @PyErr_Occurred() #1, !dbg !1884
  %tobool94 = icmp eq %struct._object* %call93, null, !dbg !1884
  br i1 %tobool94, label %if.end.97, label %if.then.95, !dbg !1887

if.then.95:                                       ; preds = %if.end.90
  call void @PyErr_Clear() #1, !dbg !1888
  br label %if.end.97, !dbg !1888

if.end.97:                                        ; preds = %if.then.95, %if.end.90
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  %41 = load %struct._object*, %struct._object** %key, align 8, !dbg !1853, !tbaa !1504
  %call98 = call i32 @PyDict_SetItem(%struct._object* %6, %struct._object* %41, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1854
  br label %while.cond.backedge, !dbg !1855

while.cond.backedge:                              ; preds = %if.end.97, %lor.lhs.false
  call void @llvm.dbg.value(metadata i64* %pos, i64 0, metadata !629, metadata !1500), !dbg !1834
  call void @llvm.dbg.value(metadata %struct._object** %key, i64 0, metadata !630, metadata !1500), !dbg !1836
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !631, metadata !1500), !dbg !1828
  %call36 = call i32 @PyDict_Next(%struct._object* %6, i64* nonnull %pos, %struct._object** nonnull %key, %struct._object** nonnull %value) #1, !dbg !1837
  %tobool37 = icmp eq i32 %call36, 0, !dbg !1838
  br i1 %tobool37, label %while.end.loopexit337, label %while.body, !dbg !1838

while.end.loopexit:                               ; preds = %while.cond.backedge.us
  br label %while.end, !dbg !1890

while.end.loopexit337:                            ; preds = %while.cond.backedge
  br label %while.end, !dbg !1890

while.end:                                        ; preds = %while.end.loopexit337, %while.end.loopexit, %if.end.35
  call void @PyDict_Clear(%struct._object* %6) #1, !dbg !1890
  %42 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1891, !tbaa !1510
  %call101 = call %struct._object* @PyDict_Copy(%struct._object* %42) #1, !dbg !1892
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !632, metadata !1500), !dbg !1893
  %cmp102 = icmp eq %struct._object* %call101, null, !dbg !1894
  br i1 %cmp102, label %if.then.103, label %if.end.104, !dbg !1896

if.then.103:                                      ; preds = %while.end
  call void @PyErr_Clear() #1, !dbg !1897
  br label %if.end.104, !dbg !1897

if.end.104:                                       ; preds = %if.then.103, %while.end
  %43 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1898, !tbaa !1510
  call void @PyDict_Clear(%struct._object* %43) #1, !dbg !1899
  %44 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1900, !tbaa !1510
  %builtins_copy = getelementptr inbounds %struct._is, %struct._is* %5, i64 0, i32 13, !dbg !1902
  %45 = load %struct._object*, %struct._object** %builtins_copy, align 8, !dbg !1902, !tbaa !1515
  %call107 = call i32 @PyDict_Update(%struct._object* %44, %struct._object* %45) #1, !dbg !1903
  %tobool108 = icmp eq i32 %call107, 0, !dbg !1903
  br i1 %tobool108, label %do.body.111, label %if.then.109, !dbg !1904

if.then.109:                                      ; preds = %if.end.104
  call void @PyErr_Clear() #1, !dbg !1905
  br label %do.body.111, !dbg !1905

do.body.111:                                      ; preds = %if.end.104, %if.then.109
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !662, metadata !1500), !dbg !1906
  br i1 %cmp102, label %if.end.129, label %do.body.116, !dbg !1908

do.body.116:                                      ; preds = %do.body.111
  call void @llvm.dbg.value(metadata %struct._object* %call101, i64 0, metadata !664, metadata !1500), !dbg !1909
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 0, !dbg !1911
  %46 = load i64, i64* %ob_refcnt119, align 8, !dbg !1911, !tbaa !1533
  %dec120 = add i64 %46, -1, !dbg !1911
  store i64 %dec120, i64* %ob_refcnt119, align 8, !dbg !1911, !tbaa !1533
  %cmp121 = icmp eq i64 %dec120, 0, !dbg !1911
  br i1 %cmp121, label %if.else.123, label %if.end.129, !dbg !1913

if.else.123:                                      ; preds = %do.body.116
  %ob_type124 = getelementptr inbounds %struct._object, %struct._object* %call101, i64 0, i32 1, !dbg !1914
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type124, align 8, !dbg !1914, !tbaa !1538
  %tp_dealloc125 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i64 0, i32 4, !dbg !1914
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc125, align 8, !dbg !1914, !tbaa !1539
  call void %48(%struct._object* %call101) #1, !dbg !1914
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.123, %do.body.116, %do.body.111
  call void @_PyState_ClearModules() #1, !dbg !1916
  %call132 = call i64 @_PyGC_CollectNoFail() #1, !dbg !1917
  call void @_PyGC_DumpShutdownStats() #1, !dbg !1918
  br i1 %cmp33, label %if.end.204, label %if.then.134, !dbg !1919

if.then.134:                                      ; preds = %if.end.129
  %49 = getelementptr inbounds %struct._object, %struct._object* %call32, i64 1, i32 0, !dbg !1920
  %50 = load i64, i64* %49, align 8, !dbg !1920, !tbaa !1921
  call void @llvm.dbg.value(metadata i64 %50, i64 0, metadata !670, metadata !1500), !dbg !1922
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !667, metadata !1500), !dbg !1923
  %cmp138.329 = icmp sgt i64 %50, 0, !dbg !1924
  br i1 %cmp138.329, label %for.body.139.lr.ph, label %do.body.191, !dbg !1925

for.body.139.lr.ph:                               ; preds = %if.then.134
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call32, i64 1, i32 1, !dbg !1926
  %51 = bitcast %struct._typeobject** %ob_item to %struct._object***, !dbg !1926
  br label %for.body.139, !dbg !1925

for.body.139:                                     ; preds = %cleanup, %for.body.139.lr.ph
  %i.0330 = phi i64 [ 0, %for.body.139.lr.ph ], [ %inc189, %cleanup ]
  %52 = load %struct._object**, %struct._object*** %51, align 8, !dbg !1926, !tbaa !1927
  %arrayidx = getelementptr %struct._object*, %struct._object** %52, i64 %i.0330, !dbg !1926
  %53 = bitcast %struct._object** %arrayidx to %struct.PyTupleObject**, !dbg !1926
  %54 = load %struct.PyTupleObject*, %struct.PyTupleObject** %53, align 8, !dbg !1926, !tbaa !1504
  %arrayidx144 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %54, i64 0, i32 1, i64 0, !dbg !1929
  %55 = load %struct._object*, %struct._object** %arrayidx144, align 8, !dbg !1929, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object* %55, i64 0, metadata !675, metadata !1500), !dbg !1930
  %arrayidx147 = getelementptr %struct.PyTupleObject, %struct.PyTupleObject* %54, i64 0, i32 1, i64 1, !dbg !1931
  %56 = bitcast %struct._object** %arrayidx147 to %struct._PyWeakReference**, !dbg !1931
  %57 = load %struct._PyWeakReference*, %struct._PyWeakReference** %56, align 8, !dbg !1931, !tbaa !1504
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %57, i64 0, i32 1, !dbg !1931
  %58 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !1931, !tbaa !1932
  %ob_refcnt148 = getelementptr inbounds %struct._object, %struct._object* %58, i64 0, i32 0, !dbg !1931
  %59 = load i64, i64* %ob_refcnt148, align 8, !dbg !1931, !tbaa !1533
  %cmp153328 = icmp eq %struct._object* %58, @_Py_NoneStruct, !dbg !1934
  %not.cmp149 = icmp slt i64 %59, 1, !dbg !1934
  %cmp153 = or i1 %cmp153328, %not.cmp149, !dbg !1934
  br i1 %cmp153, label %cleanup, label %if.end.155, !dbg !1936

if.end.155:                                       ; preds = %for.body.139
  %call156 = call %struct._object* @PyModule_GetDict(%struct._object* %58) #1, !dbg !1937
  call void @llvm.dbg.value(metadata %struct._object* %call156, i64 0, metadata !632, metadata !1500), !dbg !1893
  %60 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1938, !tbaa !1510
  %cmp158 = icmp eq %struct._object* %call156, %60, !dbg !1940
  br i1 %cmp158, label %cleanup, label %lor.lhs.false.159, !dbg !1941

lor.lhs.false.159:                                ; preds = %if.end.155
  %61 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1942, !tbaa !1816
  %cmp161 = icmp eq %struct._object* %call156, %61, !dbg !1943
  br i1 %cmp161, label %cleanup, label %if.end.163, !dbg !1944

if.end.163:                                       ; preds = %lor.lhs.false.159
  %62 = load i64, i64* %ob_refcnt148, align 8, !dbg !1945, !tbaa !1533
  %inc = add i64 %62, 1, !dbg !1945
  store i64 %inc, i64* %ob_refcnt148, align 8, !dbg !1945, !tbaa !1533
  %63 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1946, !tbaa !1591
  %tobool165 = icmp eq i32 %63, 0, !dbg !1946
  br i1 %tobool165, label %if.end.172, label %land.lhs.true.166, !dbg !1948

land.lhs.true.166:                                ; preds = %if.end.163
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %55, i64 0, i32 1, !dbg !1949
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8, !dbg !1949, !tbaa !1538
  %tp_flags168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i64 0, i32 19, !dbg !1949
  %65 = load i64, i64* %tp_flags168, align 8, !dbg !1949, !tbaa !1849
  %and169 = and i64 %65, 268435456, !dbg !1949
  %cmp170 = icmp eq i64 %and169, 0, !dbg !1949
  br i1 %cmp170, label %if.end.172, label %if.then.171, !dbg !1951

if.then.171:                                      ; preds = %land.lhs.true.166
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0), %struct._object* %55) #1, !dbg !1952
  br label %if.end.172, !dbg !1952

if.end.172:                                       ; preds = %land.lhs.true.166, %if.end.163, %if.then.171
  call void @_PyModule_Clear(%struct._object* %58) #1, !dbg !1953
  %66 = load i64, i64* %ob_refcnt148, align 8, !dbg !1954, !tbaa !1533
  %dec177 = add i64 %66, -1, !dbg !1954
  store i64 %dec177, i64* %ob_refcnt148, align 8, !dbg !1954, !tbaa !1533
  %cmp178 = icmp eq i64 %dec177, 0, !dbg !1954
  br i1 %cmp178, label %if.else.180, label %cleanup, !dbg !1956

if.else.180:                                      ; preds = %if.end.172
  %ob_type181 = getelementptr inbounds %struct._object, %struct._object* %58, i64 0, i32 1, !dbg !1957
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type181, align 8, !dbg !1957, !tbaa !1538
  %tp_dealloc182 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i64 0, i32 4, !dbg !1957
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc182, align 8, !dbg !1957, !tbaa !1539
  call void %68(%struct._object* %58) #1, !dbg !1957
  br label %cleanup

cleanup:                                          ; preds = %if.else.180, %if.end.172, %if.end.155, %lor.lhs.false.159, %for.body.139
  %inc189 = add nuw nsw i64 %i.0330, 1, !dbg !1959
  call void @llvm.dbg.value(metadata i64 %inc189, i64 0, metadata !667, metadata !1500), !dbg !1923
  %exitcond = icmp eq i64 %inc189, %50, !dbg !1925
  br i1 %exitcond, label %do.body.191.loopexit, label %for.body.139, !dbg !1925

do.body.191.loopexit:                             ; preds = %cleanup
  br label %do.body.191, !dbg !1960

do.body.191:                                      ; preds = %do.body.191.loopexit, %if.then.134
  call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !679, metadata !1500), !dbg !1960
  %ob_refcnt194 = getelementptr inbounds %struct._object, %struct._object* %call32, i64 0, i32 0, !dbg !1962
  %69 = load i64, i64* %ob_refcnt194, align 8, !dbg !1962, !tbaa !1533
  %dec195 = add i64 %69, -1, !dbg !1962
  store i64 %dec195, i64* %ob_refcnt194, align 8, !dbg !1962, !tbaa !1533
  %cmp196 = icmp eq i64 %dec195, 0, !dbg !1962
  br i1 %cmp196, label %if.else.198, label %if.end.204, !dbg !1964

if.else.198:                                      ; preds = %do.body.191
  %ob_type199 = getelementptr inbounds %struct._object, %struct._object* %call32, i64 0, i32 1, !dbg !1965
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type199, align 8, !dbg !1965, !tbaa !1538
  %tp_dealloc200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i64 0, i32 4, !dbg !1965
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc200, align 8, !dbg !1965, !tbaa !1539
  call void %71(%struct._object* %call32) #1, !dbg !1965
  br label %if.end.204

if.end.204:                                       ; preds = %if.else.198, %do.body.191, %if.end.129
  %72 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1967, !tbaa !1591
  %tobool205 = icmp eq i32 %72, 0, !dbg !1967
  br i1 %tobool205, label %if.end.207, label %if.then.206, !dbg !1969

if.then.206:                                      ; preds = %if.end.204
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.22, i64 0, i64 0)) #1, !dbg !1970
  br label %if.end.207, !dbg !1970

if.end.207:                                       ; preds = %if.end.204, %if.then.206
  %73 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1971, !tbaa !1816
  call void @_PyModule_ClearDict(%struct._object* %73) #1, !dbg !1972
  %74 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1973, !tbaa !1591
  %tobool209 = icmp eq i32 %74, 0, !dbg !1973
  br i1 %tobool209, label %if.end.211, label %if.then.210, !dbg !1975

if.then.210:                                      ; preds = %if.end.207
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i64 0, i64 0)) #1, !dbg !1976
  br label %if.end.211, !dbg !1976

if.end.211:                                       ; preds = %if.end.207, %if.then.210
  %75 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !1977, !tbaa !1510
  call void @_PyModule_ClearDict(%struct._object* %75) #1, !dbg !1978
  store %struct._object* null, %struct._object** %modules6, align 8, !dbg !1979, !tbaa !1775
  call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !681, metadata !1500), !dbg !1980
  %ob_refcnt217 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 0, !dbg !1982
  %76 = load i64, i64* %ob_refcnt217, align 8, !dbg !1982, !tbaa !1533
  %dec218 = add i64 %76, -1, !dbg !1982
  store i64 %dec218, i64* %ob_refcnt217, align 8, !dbg !1982, !tbaa !1533
  %cmp219 = icmp eq i64 %dec218, 0, !dbg !1982
  br i1 %cmp219, label %if.else.221, label %if.end.224, !dbg !1984

if.else.221:                                      ; preds = %if.end.211
  %ob_type222 = getelementptr inbounds %struct._object, %struct._object* %6, i64 0, i32 1, !dbg !1985
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type222, align 8, !dbg !1985, !tbaa !1538
  %tp_dealloc223 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i64 0, i32 4, !dbg !1985
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc223, align 8, !dbg !1985, !tbaa !1539
  call void %78(%struct._object* %6) #1, !dbg !1985
  br label %if.end.224

if.end.224:                                       ; preds = %if.end.211, %if.else.221
  %call227 = call i64 @_PyGC_CollectNoFail() #1, !dbg !1987
  br label %cleanup.228, !dbg !1988

cleanup.228:                                      ; preds = %entry, %if.end.224
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1989
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1989
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1989
  ret void, !dbg !1988

if.then.20.1:                                     ; preds = %if.end.21
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0)) #1, !dbg !1822
  br label %if.end.21.1, !dbg !1822

if.end.21.1:                                      ; preds = %if.then.20.1, %if.end.21
  %79 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1823, !tbaa !1816
  %call23.1 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.75, i64 0, i64 0)) #1, !dbg !1824
  %cmp24.1 = icmp eq %struct._object* %call23.1, null, !dbg !1825
  %_Py_NoneStruct.call23.1 = select i1 %cmp24.1, %struct._object* @_Py_NoneStruct, %struct._object* %call23.1, !dbg !1827
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct.call23, i64 0, metadata !631, metadata !1500), !dbg !1828
  store %struct._object* %_Py_NoneStruct.call23.1, %struct._object** %value, align 8, !dbg !1829, !tbaa !1504
  %80 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1830, !tbaa !1816
  %call28.1 = tail call i32 @PyDict_SetItemString(%struct._object* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.74, i64 0, i64 0), %struct._object* %_Py_NoneStruct.call23.1) #1, !dbg !1831
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !641, metadata !1500), !dbg !1800
  %81 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1806, !tbaa !1591
  %tobool19.2 = icmp eq i32 %81, 0, !dbg !1806
  br i1 %tobool19.2, label %if.end.21.2, label %if.then.20.2, !dbg !1811

if.then.20.2:                                     ; preds = %if.end.21.1
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0)) #1, !dbg !1822
  br label %if.end.21.2, !dbg !1822

if.end.21.2:                                      ; preds = %if.then.20.2, %if.end.21.1
  %82 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1823, !tbaa !1816
  %call23.2 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %82, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.77, i64 0, i64 0)) #1, !dbg !1824
  %cmp24.2 = icmp eq %struct._object* %call23.2, null, !dbg !1825
  %_Py_NoneStruct.call23.2 = select i1 %cmp24.2, %struct._object* @_Py_NoneStruct, %struct._object* %call23.2, !dbg !1827
  tail call void @llvm.dbg.value(metadata %struct._object* %_Py_NoneStruct.call23, i64 0, metadata !631, metadata !1500), !dbg !1828
  store %struct._object* %_Py_NoneStruct.call23.2, %struct._object** %value, align 8, !dbg !1829, !tbaa !1504
  %83 = load %struct._object*, %struct._object** %sysdict, align 8, !dbg !1830, !tbaa !1816
  %call28.2 = tail call i32 @PyDict_SetItemString(%struct._object* %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.76, i64 0, i64 0), %struct._object* %_Py_NoneStruct.call23.2) #1, !dbg !1831
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !641, metadata !1500), !dbg !1800
  %call32 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !1991
  tail call void @llvm.dbg.value(metadata %struct._object* %call32, i64 0, metadata !640, metadata !1500), !dbg !1790
  %cmp33 = icmp eq %struct._object* %call32, null, !dbg !1992
  br i1 %cmp33, label %if.then.34, label %if.end.35, !dbg !1993
}

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyDict_GetItemString(%struct._object*, i8*) #3

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #3

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #3

declare void @PySys_FormatStderr(i8*, ...) #3

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #3

declare %struct._object* @PyTuple_Pack(i64, ...) #3

declare i32 @PyList_Append(%struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyDict_Clear(%struct._object*) #3

declare i32 @PyDict_Update(%struct._object*, %struct._object*) #3

declare void @_PyState_ClearModules() #3

declare i64 @_PyGC_CollectNoFail() #3

declare void @_PyGC_DumpShutdownStats() #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare void @_PyModule_Clear(%struct._object*) #3

declare void @_PyModule_ClearDict(%struct._object*) #3

; Function Attrs: nounwind uwtable
define i64 @PyImport_GetMagicNumber() #0 {
entry:
  %call = tail call %struct._ts* @PyThreadState_Get() #1, !dbg !1994
  %interp1 = getelementptr inbounds %struct._ts, %struct._ts* %call, i64 0, i32 2, !dbg !1995
  %0 = load %struct._is*, %struct._is** %interp1, align 8, !dbg !1995, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %0, i64 0, metadata !688, metadata !1500), !dbg !1996
  %importlib = getelementptr inbounds %struct._is, %struct._is* %0, i64 0, i32 6, !dbg !1997
  %1 = load %struct._object*, %struct._object** %importlib, align 8, !dbg !1997, !tbaa !1998
  %call2 = tail call %struct._object* @PyObject_GetAttrString(%struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0)) #1, !dbg !1999
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !689, metadata !1500), !dbg !2000
  %cmp = icmp eq %struct._object* %call2, null, !dbg !2001
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2003

if.end:                                           ; preds = %entry
  %call3 = tail call i64 @PyLong_AsLong(%struct._object* %call2) #1, !dbg !2004
  tail call void @llvm.dbg.value(metadata i64 %call3, i64 0, metadata !687, metadata !1500), !dbg !2005
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !690, metadata !1500), !dbg !2006
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 0, !dbg !2008
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2008, !tbaa !1533
  %dec = add i64 %2, -1, !dbg !2008
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2008, !tbaa !1533
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2008
  br i1 %cmp4, label %if.else, label %cleanup, !dbg !2010

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 1, !dbg !2011
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2011, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !2011
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2011, !tbaa !1539
  tail call void %4(%struct._object* %call2) #1, !dbg !2011
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi i64 [ -1, %entry ], [ %call3, %if.end ], [ %call3, %if.else ]
  ret i64 %retval.0, !dbg !2013
}

declare %struct._object* @PyObject_GetAttrString(%struct._object*, i8*) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

; Function Attrs: nounwind readonly uwtable
define i8* @PyImport_GetMagicTag() #5 {
entry:
  %0 = load i8*, i8** @_PySys_ImplCacheTag, align 8, !dbg !2014, !tbaa !1504
  ret i8* %0, !dbg !2015
}

; Function Attrs: nounwind uwtable
define i32 @_PyImport_FixupExtensionObject(%struct._object* %mod, %struct._object* %name, %struct._object* %filename) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %mod, i64 0, metadata !698, metadata !1500), !dbg !2016
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !699, metadata !1500), !dbg !2017
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !700, metadata !1500), !dbg !2018
  %0 = load %struct._object*, %struct._object** @extensions, align 8, !dbg !2019, !tbaa !1504
  %cmp = icmp eq %struct._object* %0, null, !dbg !2021
  br i1 %cmp, label %if.then, label %if.end.3, !dbg !2022

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyDict_New() #1, !dbg !2023
  store %struct._object* %call, %struct._object** @extensions, align 8, !dbg !2025, !tbaa !1504
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2026
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !2028

if.end.3:                                         ; preds = %if.then, %entry
  %cmp4 = icmp eq %struct._object* %mod, null, !dbg !2029
  br i1 %cmp4, label %if.then.9, label %lor.lhs.false, !dbg !2031

lor.lhs.false:                                    ; preds = %if.end.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %mod, i64 0, i32 1, !dbg !2032
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2032, !tbaa !1538
  %cmp5 = icmp eq %struct._typeobject* %1, @PyModule_Type, !dbg !2032
  br i1 %cmp5, label %if.end.10, label %lor.lhs.false.6, !dbg !2032

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %call8 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %1, %struct._typeobject* nonnull @PyModule_Type) #1, !dbg !2034
  %tobool = icmp eq i32 %call8, 0, !dbg !2034
  br i1 %tobool, label %if.then.9, label %if.end.10, !dbg !2036

if.then.9:                                        ; preds = %lor.lhs.false.6, %if.end.3
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 597) #1, !dbg !2037
  br label %cleanup, !dbg !2039

if.end.10:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false
  %call11 = tail call %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %mod) #1, !dbg !2040
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %call11, i64 0, metadata !704, metadata !1500), !dbg !2041
  %tobool12 = icmp eq %struct.PyModuleDef* %call11, null, !dbg !2042
  br i1 %tobool12, label %if.then.13, label %if.end.14, !dbg !2044

if.then.13:                                       ; preds = %if.end.10
  tail call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i32 602) #1, !dbg !2045
  br label %cleanup, !dbg !2047

if.end.14:                                        ; preds = %if.end.10
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2048
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2048
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2048
  %2 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2050, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %2, i64 0, metadata !621, metadata !1500) #1, !dbg !2048
  %interp4.i = getelementptr inbounds i8, i8* %2, i64 16, !dbg !2051
  %3 = bitcast i8* %interp4.i to %struct._is**, !dbg !2051
  %4 = load %struct._is*, %struct._is** %3, align 8, !dbg !2051, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %4, i64 0, metadata !613, metadata !1500) #1, !dbg !2052
  %modules.i = getelementptr inbounds %struct._is, %struct._is* %4, i64 0, i32 2, !dbg !2053
  %5 = load %struct._object*, %struct._object** %modules.i, align 8, !dbg !2053, !tbaa !1775
  %cmp.i = icmp eq %struct._object* %5, null, !dbg !2054
  br i1 %cmp.i, label %if.then.i, label %PyImport_GetModuleDict.exit, !dbg !2055

if.then.i:                                        ; preds = %if.end.14
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2056
  unreachable, !dbg !2056

PyImport_GetModuleDict.exit:                      ; preds = %if.end.14
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !701, metadata !1500), !dbg !2057
  %call16 = tail call i32 @PyDict_SetItem(%struct._object* %5, %struct._object* %name, %struct._object* %mod) #1, !dbg !2058
  %cmp17 = icmp slt i32 %call16, 0, !dbg !2060
  br i1 %cmp17, label %cleanup, label %if.end.19, !dbg !2061

if.end.19:                                        ; preds = %PyImport_GetModuleDict.exit
  %call20 = tail call i32 @_PyState_AddModule(%struct._object* %mod, %struct.PyModuleDef* %call11) #1, !dbg !2062
  %cmp21 = icmp slt i32 %call20, 0, !dbg !2064
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !2065

if.then.22:                                       ; preds = %if.end.19
  %call23 = tail call i32 @PyDict_DelItem(%struct._object* %5, %struct._object* %name) #1, !dbg !2066
  br label %cleanup, !dbg !2068

if.end.24:                                        ; preds = %if.end.19
  %m_size = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %call11, i64 0, i32 3, !dbg !2069
  %6 = load i64, i64* %m_size, align 8, !dbg !2069, !tbaa !2070
  %cmp25 = icmp eq i64 %6, -1, !dbg !2073
  br i1 %cmp25, label %if.then.26, label %if.end.56, !dbg !2074

if.then.26:                                       ; preds = %if.end.24
  %m_copy = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %call11, i64 0, i32 0, i32 3, !dbg !2075
  %7 = load %struct._object*, %struct._object** %m_copy, align 8, !dbg !2075, !tbaa !2076
  %tobool27 = icmp eq %struct._object* %7, null, !dbg !2077
  br i1 %tobool27, label %if.end.43, label %if.then.32, !dbg !2078

if.then.32:                                       ; preds = %if.then.26
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !707, metadata !1500), !dbg !2079
  store %struct._object* null, %struct._object** %m_copy, align 8, !dbg !2081, !tbaa !2076
  tail call void @llvm.dbg.value(metadata %struct._object* %7, i64 0, metadata !713, metadata !1500), !dbg !2083
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 0, !dbg !2085
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !2085, !tbaa !1533
  %dec = add i64 %8, -1, !dbg !2085
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2085, !tbaa !1533
  %cmp36 = icmp eq i64 %dec, 0, !dbg !2085
  br i1 %cmp36, label %if.else, label %if.end.43, !dbg !2087

if.else:                                          ; preds = %if.then.32
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %7, i64 0, i32 1, !dbg !2088
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !2088, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !2088
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2088, !tbaa !1539
  tail call void %10(%struct._object* %7) #1, !dbg !2088
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.32, %if.else, %if.then.26
  %call44 = tail call %struct._object* @PyModule_GetDict(%struct._object* %mod) #1, !dbg !2090
  tail call void @llvm.dbg.value(metadata %struct._object* %call44, i64 0, metadata !702, metadata !1500), !dbg !2091
  %cmp45 = icmp eq %struct._object* %call44, null, !dbg !2092
  br i1 %cmp45, label %cleanup, label %if.end.47, !dbg !2094

if.end.47:                                        ; preds = %if.end.43
  %call48 = tail call %struct._object* @PyDict_Copy(%struct._object* %call44) #1, !dbg !2095
  store %struct._object* %call48, %struct._object** %m_copy, align 8, !dbg !2096, !tbaa !2076
  %cmp53 = icmp eq %struct._object* %call48, null, !dbg !2097
  br i1 %cmp53, label %cleanup, label %if.end.56, !dbg !2099

if.end.56:                                        ; preds = %if.end.47, %if.end.24
  %call57 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %filename, %struct._object* %name) #1, !dbg !2100
  tail call void @llvm.dbg.value(metadata %struct._object* %call57, i64 0, metadata !703, metadata !1500), !dbg !2101
  %cmp58 = icmp eq %struct._object* %call57, null, !dbg !2102
  br i1 %cmp58, label %cleanup, label %if.end.60, !dbg !2104

if.end.60:                                        ; preds = %if.end.56
  %11 = load %struct._object*, %struct._object** @extensions, align 8, !dbg !2105, !tbaa !1504
  %12 = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %call11, i64 0, i32 0, i32 0, !dbg !2106
  %call61 = tail call i32 @PyDict_SetItem(%struct._object* %11, %struct._object* %call57, %struct._object* %12) #1, !dbg !2107
  tail call void @llvm.dbg.value(metadata i32 %call61, i64 0, metadata !706, metadata !1500), !dbg !2108
  tail call void @llvm.dbg.value(metadata %struct._object* %call57, i64 0, metadata !717, metadata !1500), !dbg !2109
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %call57, i64 0, i32 0, !dbg !2111
  %13 = load i64, i64* %ob_refcnt64, align 8, !dbg !2111, !tbaa !1533
  %dec65 = add i64 %13, -1, !dbg !2111
  store i64 %dec65, i64* %ob_refcnt64, align 8, !dbg !2111, !tbaa !1533
  %cmp66 = icmp eq i64 %dec65, 0, !dbg !2111
  br i1 %cmp66, label %if.else.68, label %if.end.71, !dbg !2113

if.else.68:                                       ; preds = %if.end.60
  %ob_type69 = getelementptr inbounds %struct._object, %struct._object* %call57, i64 0, i32 1, !dbg !2114
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type69, align 8, !dbg !2114, !tbaa !1538
  %tp_dealloc70 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2114
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc70, align 8, !dbg !2114, !tbaa !1539
  tail call void %15(%struct._object* %call57) #1, !dbg !2114
  br label %if.end.71

if.end.71:                                        ; preds = %if.end.60, %if.else.68
  %call61.lobit = ashr i32 %call61, 31, !dbg !2116
  br label %cleanup, !dbg !2116

cleanup:                                          ; preds = %if.end.71, %if.end.56, %if.end.47, %if.end.43, %PyImport_GetModuleDict.exit, %if.then, %if.then.22, %if.then.13, %if.then.9
  %retval.0 = phi i32 [ -1, %if.then.9 ], [ -1, %if.then.22 ], [ -1, %if.then.13 ], [ -1, %if.then ], [ -1, %PyImport_GetModuleDict.exit ], [ -1, %if.end.43 ], [ -1, %if.end.47 ], [ -1, %if.end.56 ], [ %call61.lobit, %if.end.71 ]
  ret i32 %retval.0, !dbg !2118
}

declare void @_PyErr_BadInternalCall(i8*, i32) #3

declare %struct.PyModuleDef* @PyModule_GetDef(%struct._object*) #3

declare i32 @_PyState_AddModule(%struct._object*, %struct.PyModuleDef*) #3

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define i32 @_PyImport_FixupBuiltin(%struct._object* %mod, i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %mod, i64 0, metadata !723, metadata !1500), !dbg !2119
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !724, metadata !1500), !dbg !2120
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* %name) #1, !dbg !2121
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !726, metadata !1500), !dbg !2122
  %cmp = icmp eq %struct._object* %call, null, !dbg !2123
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2125

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @_PyImport_FixupExtensionObject(%struct._object* %mod, %struct._object* %call, %struct._object* %call), !dbg !2126
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !725, metadata !1500), !dbg !2127
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !727, metadata !1500), !dbg !2128
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2130
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2130, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !2130
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2130, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2130
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !2132

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2133
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2133, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2133
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2133, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !2133
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret i32 %retval.0, !dbg !2135
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyImport_FindExtensionObject(%struct._object* %name, %struct._object* %filename) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !731, metadata !1500), !dbg !2136
  tail call void @llvm.dbg.value(metadata %struct._object* %filename, i64 0, metadata !732, metadata !1500), !dbg !2137
  %0 = load %struct._object*, %struct._object** @extensions, align 8, !dbg !2138, !tbaa !1504
  %cmp = icmp eq %struct._object* %0, null, !dbg !2140
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2141

if.end:                                           ; preds = %entry
  %call = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %filename, %struct._object* %name) #1, !dbg !2142
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !735, metadata !1500), !dbg !2143
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2144
  br i1 %cmp1, label %cleanup, label %if.end.3, !dbg !2146

if.end.3:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** @extensions, align 8, !dbg !2147, !tbaa !1504
  %call4 = tail call %struct._object* @PyDict_GetItem(%struct._object* %1, %struct._object* %call) #1, !dbg !2148
  %2 = bitcast %struct._object* %call4 to %struct.PyModuleDef*, !dbg !2149
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %2, i64 0, metadata !736, metadata !1500), !dbg !2150
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !737, metadata !1500), !dbg !2151
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2153
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !2153, !tbaa !1533
  %dec = add i64 %3, -1, !dbg !2153
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2153, !tbaa !1533
  %cmp5 = icmp eq i64 %dec, 0, !dbg !2153
  br i1 %cmp5, label %if.else, label %if.end.7, !dbg !2155

if.else:                                          ; preds = %if.end.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2156
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2156, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2156
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2156, !tbaa !1539
  tail call void %5(%struct._object* %call) #1, !dbg !2156
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.3, %if.else
  %cmp8 = icmp eq %struct._object* %call4, null, !dbg !2158
  br i1 %cmp8, label %cleanup, label %if.end.10, !dbg !2160

if.end.10:                                        ; preds = %if.end.7
  %m_size = getelementptr inbounds %struct._object, %struct._object* %call4, i64 3, i32 1, !dbg !2161
  %6 = bitcast %struct._typeobject** %m_size to i64*, !dbg !2161
  %7 = load i64, i64* %6, align 8, !dbg !2161, !tbaa !2070
  %cmp11 = icmp eq i64 %7, -1, !dbg !2162
  br i1 %cmp11, label %if.then.12, label %if.else.29, !dbg !2163

if.then.12:                                       ; preds = %if.end.10
  %m_copy = getelementptr inbounds %struct._object, %struct._object* %call4, i64 2, !dbg !2164
  %8 = bitcast %struct._object* %m_copy to %struct._object**, !dbg !2164
  %9 = load %struct._object*, %struct._object** %8, align 8, !dbg !2164, !tbaa !2076
  %cmp13 = icmp eq %struct._object* %9, null, !dbg !2167
  br i1 %cmp13, label %cleanup, label %if.end.15, !dbg !2168

if.end.15:                                        ; preds = %if.then.12
  %call16 = tail call %struct._object* @PyImport_AddModuleObject(%struct._object* %name), !dbg !2169
  tail call void @llvm.dbg.value(metadata %struct._object* %call16, i64 0, metadata !733, metadata !1500), !dbg !2170
  %cmp17 = icmp eq %struct._object* %call16, null, !dbg !2171
  br i1 %cmp17, label %cleanup, label %if.end.19, !dbg !2173

if.end.19:                                        ; preds = %if.end.15
  %call20 = tail call %struct._object* @PyModule_GetDict(%struct._object* %call16) #1, !dbg !2174
  tail call void @llvm.dbg.value(metadata %struct._object* %call20, i64 0, metadata !734, metadata !1500), !dbg !2175
  %cmp21 = icmp eq %struct._object* %call20, null, !dbg !2176
  br i1 %cmp21, label %cleanup, label %if.end.23, !dbg !2178

if.end.23:                                        ; preds = %if.end.19
  %10 = load %struct._object*, %struct._object** %8, align 8, !dbg !2179, !tbaa !2076
  %call26 = tail call i32 @PyDict_Update(%struct._object* %call20, %struct._object* %10) #1, !dbg !2181
  %tobool = icmp eq i32 %call26, 0, !dbg !2181
  br i1 %tobool, label %if.end.69, label %cleanup, !dbg !2182

if.else.29:                                       ; preds = %if.end.10
  %m_init = getelementptr inbounds %struct._object, %struct._object* %call4, i64 1, !dbg !2183
  %11 = bitcast %struct._object* %m_init to %struct._object* ()**, !dbg !2183
  %12 = load %struct._object* ()*, %struct._object* ()** %11, align 8, !dbg !2183, !tbaa !2185
  %cmp31 = icmp eq %struct._object* ()* %12, null, !dbg !2186
  br i1 %cmp31, label %cleanup, label %if.end.33, !dbg !2187

if.end.33:                                        ; preds = %if.else.29
  %call36 = tail call %struct._object* %12() #1, !dbg !2188
  tail call void @llvm.dbg.value(metadata %struct._object* %call36, i64 0, metadata !733, metadata !1500), !dbg !2170
  %cmp37 = icmp eq %struct._object* %call36, null, !dbg !2189
  br i1 %cmp37, label %cleanup, label %if.end.39, !dbg !2191

if.end.39:                                        ; preds = %if.end.33
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2192
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2192
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2192
  %13 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2194, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !621, metadata !1500) #1, !dbg !2192
  %interp4.i = getelementptr inbounds i8, i8* %13, i64 16, !dbg !2195
  %14 = bitcast i8* %interp4.i to %struct._is**, !dbg !2195
  %15 = load %struct._is*, %struct._is** %14, align 8, !dbg !2195, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %15, i64 0, metadata !613, metadata !1500) #1, !dbg !2196
  %modules.i = getelementptr inbounds %struct._is, %struct._is* %15, i64 0, i32 2, !dbg !2197
  %16 = load %struct._object*, %struct._object** %modules.i, align 8, !dbg !2197, !tbaa !1775
  %cmp.i = icmp eq %struct._object* %16, null, !dbg !2198
  br i1 %cmp.i, label %if.then.i, label %PyImport_GetModuleDict.exit, !dbg !2199

if.then.i:                                        ; preds = %if.end.39
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2200
  unreachable, !dbg !2200

PyImport_GetModuleDict.exit:                      ; preds = %if.end.39
  %call41 = tail call i32 @PyDict_SetItem(%struct._object* %16, %struct._object* %name, %struct._object* %call36) #1, !dbg !2201
  %cmp42 = icmp eq i32 %call41, -1, !dbg !2202
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %call36, i64 0, i32 0, !dbg !2203
  %17 = load i64, i64* %ob_refcnt46, align 8, !dbg !2203, !tbaa !1533
  %dec47 = add i64 %17, -1, !dbg !2203
  store i64 %dec47, i64* %ob_refcnt46, align 8, !dbg !2203, !tbaa !1533
  %cmp48 = icmp eq i64 %dec47, 0, !dbg !2203
  br i1 %cmp42, label %do.body.44, label %do.body.57, !dbg !2205

do.body.44:                                       ; preds = %PyImport_GetModuleDict.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %call36, i64 0, metadata !739, metadata !1500), !dbg !2206
  br i1 %cmp48, label %if.else.50, label %cleanup, !dbg !2208

if.else.50:                                       ; preds = %do.body.44
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %call36, i64 0, i32 1, !dbg !2209
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8, !dbg !2209, !tbaa !1538
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i64 0, i32 4, !dbg !2209
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8, !dbg !2209, !tbaa !1539
  tail call void %19(%struct._object* %call36) #1, !dbg !2209
  br label %cleanup

do.body.57:                                       ; preds = %PyImport_GetModuleDict.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %call36, i64 0, metadata !745, metadata !1500), !dbg !2211
  br i1 %cmp48, label %if.else.63, label %if.end.69, !dbg !2213

if.else.63:                                       ; preds = %do.body.57
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %call36, i64 0, i32 1, !dbg !2214
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !2214, !tbaa !1538
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i64 0, i32 4, !dbg !2214
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !2214, !tbaa !1539
  tail call void %21(%struct._object* %call36) #1, !dbg !2214
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.63, %do.body.57, %if.end.23
  %mod.0 = phi %struct._object* [ %call16, %if.end.23 ], [ %call36, %do.body.57 ], [ %call36, %if.else.63 ]
  %call70 = tail call i32 @_PyState_AddModule(%struct._object* %mod.0, %struct.PyModuleDef* %2) #1, !dbg !2217
  %cmp71 = icmp slt i32 %call70, 0, !dbg !2218
  br i1 %cmp71, label %if.then.72, label %if.end.87, !dbg !2219

if.then.72:                                       ; preds = %if.end.69
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2220
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2220
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2220
  %22 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2222, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %22, i64 0, metadata !621, metadata !1500) #1, !dbg !2220
  %interp4.i.131 = getelementptr inbounds i8, i8* %22, i64 16, !dbg !2223
  %23 = bitcast i8* %interp4.i.131 to %struct._is**, !dbg !2223
  %24 = load %struct._is*, %struct._is** %23, align 8, !dbg !2223, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %24, i64 0, metadata !613, metadata !1500) #1, !dbg !2224
  %modules.i.132 = getelementptr inbounds %struct._is, %struct._is* %24, i64 0, i32 2, !dbg !2225
  %25 = load %struct._object*, %struct._object** %modules.i.132, align 8, !dbg !2225, !tbaa !1775
  %cmp.i.133 = icmp eq %struct._object* %25, null, !dbg !2226
  br i1 %cmp.i.133, label %if.then.i.134, label %PyImport_GetModuleDict.exit135, !dbg !2227

if.then.i.134:                                    ; preds = %if.then.72
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2228
  unreachable, !dbg !2228

PyImport_GetModuleDict.exit135:                   ; preds = %if.then.72
  %call74 = tail call i32 @PyDict_DelItem(%struct._object* %25, %struct._object* %name) #1, !dbg !2229
  tail call void @llvm.dbg.value(metadata %struct._object* %mod.0, i64 0, metadata !747, metadata !1500), !dbg !2230
  %ob_refcnt77 = getelementptr inbounds %struct._object, %struct._object* %mod.0, i64 0, i32 0, !dbg !2232
  %26 = load i64, i64* %ob_refcnt77, align 8, !dbg !2232, !tbaa !1533
  %dec78 = add i64 %26, -1, !dbg !2232
  store i64 %dec78, i64* %ob_refcnt77, align 8, !dbg !2232, !tbaa !1533
  %cmp79 = icmp eq i64 %dec78, 0, !dbg !2232
  br i1 %cmp79, label %if.else.81, label %cleanup, !dbg !2234

if.else.81:                                       ; preds = %PyImport_GetModuleDict.exit135
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %mod.0, i64 0, i32 1, !dbg !2235
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8, !dbg !2235, !tbaa !1538
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !2235
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8, !dbg !2235, !tbaa !1539
  tail call void %28(%struct._object* %mod.0) #1, !dbg !2235
  br label %cleanup

if.end.87:                                        ; preds = %if.end.69
  %29 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2237, !tbaa !1591
  %tobool88 = icmp eq i32 %29, 0, !dbg !2237
  br i1 %tobool88, label %cleanup, label %if.then.89, !dbg !2239

if.then.89:                                       ; preds = %if.end.87
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.26, i64 0, i64 0), %struct._object* %name, %struct._object* %filename) #1, !dbg !2240
  br label %cleanup, !dbg !2240

cleanup:                                          ; preds = %if.then.89, %if.end.87, %if.else.81, %PyImport_GetModuleDict.exit135, %if.else.50, %do.body.44, %if.end.33, %if.else.29, %if.end.23, %if.end.19, %if.end.15, %if.then.12, %if.end.7, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end ], [ null, %if.end.7 ], [ null, %if.then.12 ], [ null, %if.end.15 ], [ null, %if.end.19 ], [ null, %if.end.23 ], [ null, %if.else.29 ], [ null, %if.end.33 ], [ null, %do.body.44 ], [ null, %if.else.50 ], [ null, %PyImport_GetModuleDict.exit135 ], [ null, %if.else.81 ], [ %mod.0, %if.end.87 ], [ %mod.0, %if.then.89 ]
  ret %struct._object* %retval.0, !dbg !2241
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_AddModuleObject(%struct._object* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !762, metadata !1500), !dbg !2242
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2243
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2243
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2243
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2245, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !1500) #1, !dbg !2243
  %interp4.i = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2246
  %1 = bitcast i8* %interp4.i to %struct._is**, !dbg !2246
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !2246, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !613, metadata !1500) #1, !dbg !2247
  %modules.i = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 2, !dbg !2248
  %3 = load %struct._object*, %struct._object** %modules.i, align 8, !dbg !2248, !tbaa !1775
  %cmp.i = icmp eq %struct._object* %3, null, !dbg !2249
  br i1 %cmp.i, label %if.then.i, label %PyImport_GetModuleDict.exit, !dbg !2250

if.then.i:                                        ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2251
  unreachable, !dbg !2251

PyImport_GetModuleDict.exit:                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !763, metadata !1500), !dbg !2252
  %call1 = tail call %struct._object* @PyDict_GetItem(%struct._object* %3, %struct._object* %name) #1, !dbg !2253
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !764, metadata !1500), !dbg !2255
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2256
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !2257

land.lhs.true:                                    ; preds = %PyImport_GetModuleDict.exit
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2258
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2258, !tbaa !1538
  %cmp2 = icmp eq %struct._typeobject* %4, @PyModule_Type, !dbg !2258
  br i1 %cmp2, label %cleanup, label %lor.lhs.false, !dbg !2258

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call4 = tail call i32 @PyType_IsSubtype(%struct._typeobject* %4, %struct._typeobject* nonnull @PyModule_Type) #1, !dbg !2259
  %tobool = icmp eq i32 %call4, 0, !dbg !2259
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2261

if.end:                                           ; preds = %lor.lhs.false, %PyImport_GetModuleDict.exit
  %call5 = tail call %struct._object* @PyModule_NewObject(%struct._object* %name) #1, !dbg !2262
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !764, metadata !1500), !dbg !2255
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !2263
  br i1 %cmp6, label %cleanup, label %if.end.8, !dbg !2265

if.end.8:                                         ; preds = %if.end
  %call9 = tail call i32 @PyDict_SetItem(%struct._object* %3, %struct._object* %name, %struct._object* %call5) #1, !dbg !2266
  %cmp10 = icmp eq i32 %call9, 0, !dbg !2267
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !2268
  %5 = load i64, i64* %ob_refcnt19, align 8, !dbg !2268, !tbaa !1533
  %dec20 = add i64 %5, -1, !dbg !2268
  store i64 %dec20, i64* %ob_refcnt19, align 8, !dbg !2268, !tbaa !1533
  %cmp21 = icmp eq i64 %dec20, 0, !dbg !2268
  br i1 %cmp10, label %do.body.17, label %do.body, !dbg !2270

do.body:                                          ; preds = %if.end.8
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !765, metadata !1500), !dbg !2271
  br i1 %cmp21, label %if.else, label %cleanup, !dbg !2273

if.else:                                          ; preds = %do.body
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !2274
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8, !dbg !2274, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2274
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2274, !tbaa !1539
  tail call void %7(%struct._object* %call5) #1, !dbg !2274
  br label %cleanup

do.body.17:                                       ; preds = %if.end.8
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !769, metadata !1500), !dbg !2277
  br i1 %cmp21, label %if.else.23, label %cleanup, !dbg !2279

if.else.23:                                       ; preds = %do.body.17
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !2280
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8, !dbg !2280, !tbaa !1538
  %tp_dealloc25 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2280
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc25, align 8, !dbg !2280, !tbaa !1539
  tail call void %9(%struct._object* %call5) #1, !dbg !2280
  br label %cleanup

cleanup:                                          ; preds = %if.else.23, %do.body.17, %if.else, %do.body, %if.end, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi %struct._object* [ %call1, %lor.lhs.false ], [ %call1, %land.lhs.true ], [ null, %if.end ], [ null, %do.body ], [ null, %if.else ], [ %call5, %do.body.17 ], [ %call5, %if.else.23 ]
  ret %struct._object* %retval.0, !dbg !2282
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyImport_FindBuiltin(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !755, metadata !1500), !dbg !2283
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* %name) #1, !dbg !2284
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !757, metadata !1500), !dbg !2285
  %cmp = icmp eq %struct._object* %call, null, !dbg !2286
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2288

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @_PyImport_FindExtensionObject(%struct._object* %call, %struct._object* %call), !dbg !2289
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !756, metadata !1500), !dbg !2290
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !758, metadata !1500), !dbg !2291
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2293
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2293, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !2293
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2293, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2293
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !2295

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2296
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2296, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2296
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2296, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !2296
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !2298
}

declare %struct._object* @PyModule_NewObject(%struct._object*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_AddModule(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !773, metadata !1500), !dbg !2299
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %name) #1, !dbg !2300
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !774, metadata !1500), !dbg !2301
  %cmp = icmp eq %struct._object* %call, null, !dbg !2302
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2304

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyImport_AddModuleObject(%struct._object* %call), !dbg !2305
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !775, metadata !1500), !dbg !2306
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !776, metadata !1500), !dbg !2307
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2309
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2309, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !2309
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2309, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2309
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !2311

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2312
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2312, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2312
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2312, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !2312
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !2314
}

declare %struct._object* @PyUnicode_FromString(i8*) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModule(i8* %name, %struct._object* %co) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !782, metadata !1500), !dbg !2315
  tail call void @llvm.dbg.value(metadata %struct._object* %co, i64 0, metadata !783, metadata !1500), !dbg !2316
  %call = tail call %struct._object* @PyImport_ExecCodeModuleWithPathnames(i8* %name, %struct._object* %co, i8* null, i8* null), !dbg !2317
  ret %struct._object* %call, !dbg !2318
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModuleWithPathnames(i8* %name, %struct._object* %co, i8* %pathname, i8* %cpathname) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !795, metadata !1500), !dbg !2319
  tail call void @llvm.dbg.value(metadata %struct._object* %co, i64 0, metadata !796, metadata !1500), !dbg !2320
  tail call void @llvm.dbg.value(metadata i8* %pathname, i64 0, metadata !797, metadata !1500), !dbg !2321
  tail call void @llvm.dbg.value(metadata i8* %cpathname, i64 0, metadata !798, metadata !1500), !dbg !2322
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !799, metadata !1500), !dbg !2323
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !801, metadata !1500), !dbg !2324
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !802, metadata !1500), !dbg !2325
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %name) #1, !dbg !2326
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !800, metadata !1500), !dbg !2327
  %cmp = icmp eq %struct._object* %call, null, !dbg !2328
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2330

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i8* %cpathname, null, !dbg !2331
  br i1 %cmp1, label %if.end.7, label %if.then.2, !dbg !2333

if.then.2:                                        ; preds = %if.end
  %call3 = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %cpathname) #1, !dbg !2334
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !802, metadata !1500), !dbg !2325
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !2336
  br i1 %cmp4, label %do.body, label %if.end.7, !dbg !2338

if.end.7:                                         ; preds = %if.end, %if.then.2
  %cpathobj.0 = phi %struct._object* [ %call3, %if.then.2 ], [ null, %if.end ]
  %cmp8 = icmp eq i8* %pathname, null, !dbg !2339
  br i1 %cmp8, label %if.else.14, label %if.then.9, !dbg !2340

if.then.9:                                        ; preds = %if.end.7
  %call10 = tail call %struct._object* @PyUnicode_DecodeFSDefault(i8* %pathname) #1, !dbg !2341
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !801, metadata !1500), !dbg !2324
  %cmp11 = icmp eq %struct._object* %call10, null, !dbg !2343
  br i1 %cmp11, label %do.body, label %if.end.30, !dbg !2345

if.else.14:                                       ; preds = %if.end.7
  %cmp15 = icmp eq %struct._object* %cpathobj.0, null, !dbg !2346
  br i1 %cmp15, label %if.end.30, label %if.then.16, !dbg !2347

if.then.16:                                       ; preds = %if.else.14
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !807, metadata !1500), !dbg !2348
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !810, metadata !1500), !dbg !2348
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !811, metadata !1500), !dbg !2348
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2349, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !809, metadata !1500), !dbg !2348
  %interp20 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2352
  %1 = bitcast i8* %interp20 to %struct._is**, !dbg !2352
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !2352, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !803, metadata !1500), !dbg !2353
  %cmp21 = icmp eq %struct._is* %2, null, !dbg !2354
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !2356

if.then.22:                                       ; preds = %if.then.16
  tail call void @Py_FatalError(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.28, i64 0, i64 0)) #7, !dbg !2357
  unreachable, !dbg !2357

if.end.23:                                        ; preds = %if.then.16
  %importlib = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 6, !dbg !2359
  %3 = load %struct._object*, %struct._object** %importlib, align 8, !dbg !2359, !tbaa !1998
  %call24 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %3, %struct._Py_Identifier* nonnull @PyImport_ExecCodeModuleWithPathnames.PyId__get_sourcefile, %struct._object* %cpathobj.0, i8* null) #1, !dbg !2360
  tail call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !801, metadata !1500), !dbg !2324
  %cmp25 = icmp eq %struct._object* %call24, null, !dbg !2361
  br i1 %cmp25, label %if.then.26, label %if.end.30, !dbg !2363

if.then.26:                                       ; preds = %if.end.23
  tail call void @PyErr_Clear() #1, !dbg !2364
  br label %if.end.30, !dbg !2364

if.end.30:                                        ; preds = %if.else.14, %if.end.23, %if.then.26, %if.then.9
  %pathobj.0 = phi %struct._object* [ %call10, %if.then.9 ], [ null, %if.then.26 ], [ %call24, %if.end.23 ], [ null, %if.else.14 ]
  %call31 = tail call %struct._object* @PyImport_ExecCodeModuleObject(%struct._object* %call, %struct._object* %co, %struct._object* %pathobj.0, %struct._object* %cpathobj.0), !dbg !2365
  tail call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !799, metadata !1500), !dbg !2323
  br label %do.body, !dbg !2366

do.body:                                          ; preds = %if.end.30, %if.then.2, %if.then.9
  %cpathobj.1 = phi %struct._object* [ null, %if.then.2 ], [ %cpathobj.0, %if.then.9 ], [ %cpathobj.0, %if.end.30 ]
  %pathobj.1 = phi %struct._object* [ null, %if.then.2 ], [ null, %if.then.9 ], [ %pathobj.0, %if.end.30 ]
  %m.0 = phi %struct._object* [ null, %if.then.2 ], [ null, %if.then.9 ], [ %call31, %if.end.30 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !812, metadata !1500), !dbg !2367
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2369
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2369, !tbaa !1533
  %dec = add i64 %4, -1, !dbg !2369
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2369, !tbaa !1533
  %cmp33 = icmp eq i64 %dec, 0, !dbg !2369
  br i1 %cmp33, label %if.else.35, label %if.end.36, !dbg !2371

if.else.35:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2372
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2372, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2372
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2372, !tbaa !1539
  tail call void %6(%struct._object* %call) #1, !dbg !2372
  br label %if.end.36

if.end.36:                                        ; preds = %do.body, %if.else.35
  tail call void @llvm.dbg.value(metadata %struct._object* %pathobj.1, i64 0, metadata !814, metadata !1500), !dbg !2374
  %cmp39 = icmp eq %struct._object* %pathobj.1, null, !dbg !2376
  br i1 %cmp39, label %if.end.54, label %do.body.41, !dbg !2377

do.body.41:                                       ; preds = %if.end.36
  tail call void @llvm.dbg.value(metadata %struct._object* %pathobj.1, i64 0, metadata !816, metadata !1500), !dbg !2378
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %pathobj.1, i64 0, i32 0, !dbg !2380
  %7 = load i64, i64* %ob_refcnt44, align 8, !dbg !2380, !tbaa !1533
  %dec45 = add i64 %7, -1, !dbg !2380
  store i64 %dec45, i64* %ob_refcnt44, align 8, !dbg !2380, !tbaa !1533
  %cmp46 = icmp eq i64 %dec45, 0, !dbg !2380
  br i1 %cmp46, label %if.else.48, label %if.end.54, !dbg !2382

if.else.48:                                       ; preds = %do.body.41
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %pathobj.1, i64 0, i32 1, !dbg !2383
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !2383, !tbaa !1538
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !2383
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8, !dbg !2383, !tbaa !1539
  tail call void %9(%struct._object* %pathobj.1) #1, !dbg !2383
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.48, %do.body.41, %if.end.36
  tail call void @llvm.dbg.value(metadata %struct._object* %cpathobj.1, i64 0, metadata !819, metadata !1500), !dbg !2385
  %cmp60 = icmp eq %struct._object* %cpathobj.1, null, !dbg !2387
  br i1 %cmp60, label %cleanup, label %do.body.62, !dbg !2388

do.body.62:                                       ; preds = %if.end.54
  tail call void @llvm.dbg.value(metadata %struct._object* %cpathobj.1, i64 0, metadata !821, metadata !1500), !dbg !2389
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %cpathobj.1, i64 0, i32 0, !dbg !2391
  %10 = load i64, i64* %ob_refcnt65, align 8, !dbg !2391, !tbaa !1533
  %dec66 = add i64 %10, -1, !dbg !2391
  store i64 %dec66, i64* %ob_refcnt65, align 8, !dbg !2391, !tbaa !1533
  %cmp67 = icmp eq i64 %dec66, 0, !dbg !2391
  br i1 %cmp67, label %if.else.69, label %cleanup, !dbg !2393

if.else.69:                                       ; preds = %do.body.62
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %cpathobj.1, i64 0, i32 1, !dbg !2394
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8, !dbg !2394, !tbaa !1538
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2394
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8, !dbg !2394, !tbaa !1539
  tail call void %12(%struct._object* %cpathobj.1) #1, !dbg !2394
  br label %cleanup

cleanup:                                          ; preds = %if.end.54, %do.body.62, %if.else.69, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %m.0, %if.else.69 ], [ %m.0, %do.body.62 ], [ %m.0, %if.end.54 ]
  ret %struct._object* %retval.0, !dbg !2396
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModuleEx(i8* %name, %struct._object* %co, i8* %pathname) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !788, metadata !1500), !dbg !2397
  tail call void @llvm.dbg.value(metadata %struct._object* %co, i64 0, metadata !789, metadata !1500), !dbg !2398
  tail call void @llvm.dbg.value(metadata i8* %pathname, i64 0, metadata !790, metadata !1500), !dbg !2399
  %call = tail call %struct._object* @PyImport_ExecCodeModuleWithPathnames(i8* %name, %struct._object* %co, i8* %pathname, i8* null), !dbg !2400
  ret %struct._object* %call, !dbg !2401
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #3

declare %struct._object* @_PyObject_CallMethodIdObjArgs(%struct._object*, %struct._Py_Identifier*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ExecCodeModuleObject(%struct._object* %name, %struct._object* %co, %struct._object* %pathname, %struct._object* %cpathname) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !828, metadata !1500), !dbg !2402
  tail call void @llvm.dbg.value(metadata %struct._object* %co, i64 0, metadata !829, metadata !1500), !dbg !2403
  tail call void @llvm.dbg.value(metadata %struct._object* %pathname, i64 0, metadata !830, metadata !1500), !dbg !2404
  tail call void @llvm.dbg.value(metadata %struct._object* %cpathname, i64 0, metadata !831, metadata !1500), !dbg !2405
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !835, metadata !1500), !dbg !2406
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !838, metadata !1500), !dbg !2406
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !839, metadata !1500), !dbg !2406
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2407, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !837, metadata !1500), !dbg !2406
  %interp4 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2410
  %1 = bitcast i8* %interp4 to %struct._is**, !dbg !2410
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !2410, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !834, metadata !1500), !dbg !2411
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1116, metadata !1500) #1, !dbg !2412
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1118, metadata !1500) #1, !dbg !2414
  %call.i.32 = tail call %struct._object* @PyImport_AddModuleObject(%struct._object* %name) #1, !dbg !2415
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.32, i64 0, metadata !1117, metadata !1500) #1, !dbg !2416
  %cmp.i.33 = icmp eq %struct._object* %call.i.32, null, !dbg !2417
  br i1 %cmp.i.33, label %cleanup, label %if.end.i, !dbg !2419

if.end.i:                                         ; preds = %entry
  %call1.i.34 = tail call %struct._object* @PyModule_GetDict(%struct._object* %call.i.32) #1, !dbg !2420
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.34, i64 0, metadata !1118, metadata !1500) #1, !dbg !2414
  %call2.i = tail call %struct._object* @PyDict_GetItemString(%struct._object* %call1.i.34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0)) #1, !dbg !2421
  %cmp3.i = icmp eq %struct._object* %call2.i, null, !dbg !2423
  br i1 %cmp3.i, label %if.then.4.i, label %module_dict_for_exec.exit, !dbg !2424

if.then.4.i:                                      ; preds = %if.end.i
  %call5.i.35 = tail call %struct._object* @PyEval_GetBuiltins() #1, !dbg !2425
  %call6.i = tail call i32 @PyDict_SetItemString(%struct._object* %call1.i.34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), %struct._object* %call5.i.35) #1, !dbg !2428
  %cmp7.i = icmp eq i32 %call6.i, 0, !dbg !2429
  br i1 %cmp7.i, label %module_dict_for_exec.exit, label %if.then.8.i, !dbg !2430

if.then.8.i:                                      ; preds = %if.then.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1121, metadata !1500) #1, !dbg !2431
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2434
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2434
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2434
  %3 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2436, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %3, i64 0, metadata !621, metadata !1500) #1, !dbg !2434
  %interp4.i.i = getelementptr inbounds i8, i8* %3, i64 16, !dbg !2437
  %4 = bitcast i8* %interp4.i.i to %struct._is**, !dbg !2437
  %5 = load %struct._is*, %struct._is** %4, align 8, !dbg !2437, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %5, i64 0, metadata !613, metadata !1500) #1, !dbg !2438
  %modules.i.i = getelementptr inbounds %struct._is, %struct._is* %5, i64 0, i32 2, !dbg !2439
  %6 = load %struct._object*, %struct._object** %modules.i.i, align 8, !dbg !2439, !tbaa !1775
  %cmp.i.i = icmp eq %struct._object* %6, null, !dbg !2440
  br i1 %cmp.i.i, label %if.then.i.i, label %PyImport_GetModuleDict.exit.i, !dbg !2441

if.then.i.i:                                      ; preds = %if.then.8.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2442
  unreachable, !dbg !2442

PyImport_GetModuleDict.exit.i:                    ; preds = %if.then.8.i
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !1122, metadata !1500) #1, !dbg !2443
  %call1.i.37 = tail call %struct._object* @PyDict_GetItem(%struct._object* %6, %struct._object* %name) #1, !dbg !2444
  %cmp.i.38 = icmp eq %struct._object* %call1.i.37, null, !dbg !2446
  br i1 %cmp.i.38, label %cleanup, label %if.end.i.41, !dbg !2447

if.end.i.41:                                      ; preds = %PyImport_GetModuleDict.exit.i
  %call2.i.39 = tail call i32 @PyDict_DelItem(%struct._object* %6, %struct._object* %name) #1, !dbg !2448
  %cmp3.i.40 = icmp slt i32 %call2.i.39, 0, !dbg !2450
  br i1 %cmp3.i.40, label %if.then.4.i.42, label %cleanup, !dbg !2451

if.then.4.i.42:                                   ; preds = %if.end.i.41
  tail call void @Py_FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i64 0, i64 0)) #7, !dbg !2452
  unreachable, !dbg !2452

module_dict_for_exec.exit:                        ; preds = %if.end.i, %if.then.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.34, i64 0, metadata !832, metadata !1500), !dbg !2453
  %cmp = icmp eq %struct._object* %call1.i.34, null, !dbg !2454
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2456

if.end:                                           ; preds = %module_dict_for_exec.exit
  %cmp5 = icmp eq %struct._object* %pathname, null, !dbg !2457
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !2459

if.then.6:                                        ; preds = %if.end
  %co_filename = getelementptr inbounds %struct._object, %struct._object* %co, i64 6, !dbg !2460
  %7 = bitcast %struct._object* %co_filename to %struct._object**, !dbg !2460
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !2460, !tbaa !2462
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !830, metadata !1500), !dbg !2404
  br label %if.end.7, !dbg !2464

if.end.7:                                         ; preds = %if.then.6, %if.end
  %pathname.addr.0 = phi %struct._object* [ %8, %if.then.6 ], [ %pathname, %if.end ]
  %importlib = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 6, !dbg !2465
  %9 = load %struct._object*, %struct._object** %importlib, align 8, !dbg !2465, !tbaa !1998
  %call8 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %9, %struct._Py_Identifier* nonnull @PyImport_ExecCodeModuleObject.PyId__fix_up_module, %struct._object* %call1.i.34, %struct._object* %name, %struct._object* %pathname.addr.0, %struct._object* %cpathname, i8* null) #1, !dbg !2466
  tail call void @llvm.dbg.value(metadata %struct._object* %call8, i64 0, metadata !833, metadata !1500), !dbg !2467
  %cmp9 = icmp eq %struct._object* %call8, null, !dbg !2468
  br i1 %cmp9, label %cleanup, label %if.then.10, !dbg !2470

if.then.10:                                       ; preds = %if.end.7
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1125, metadata !1500) #1, !dbg !2471
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.34, i64 0, metadata !1126, metadata !1500) #1, !dbg !2474
  tail call void @llvm.dbg.value(metadata %struct._object* %co, i64 0, metadata !1127, metadata !1500) #1, !dbg !2475
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2476
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2476
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2476
  %10 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2478, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %10, i64 0, metadata !621, metadata !1500) #1, !dbg !2476
  %interp4.i = getelementptr inbounds i8, i8* %10, i64 16, !dbg !2479
  %11 = bitcast i8* %interp4.i to %struct._is**, !dbg !2479
  %12 = load %struct._is*, %struct._is** %11, align 8, !dbg !2479, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %12, i64 0, metadata !613, metadata !1500) #1, !dbg !2480
  %modules.i = getelementptr inbounds %struct._is, %struct._is* %12, i64 0, i32 2, !dbg !2481
  %13 = load %struct._object*, %struct._object** %modules.i, align 8, !dbg !2481, !tbaa !1775
  %cmp.i.43 = icmp eq %struct._object* %13, null, !dbg !2482
  br i1 %cmp.i.43, label %if.then.i.44, label %PyImport_GetModuleDict.exit, !dbg !2483

if.then.i.44:                                     ; preds = %if.then.10
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2484
  unreachable, !dbg !2484

PyImport_GetModuleDict.exit:                      ; preds = %if.then.10
  tail call void @llvm.dbg.value(metadata %struct._object* %13, i64 0, metadata !1128, metadata !1500) #1, !dbg !2485
  %call1.i = tail call %struct._object* @PyEval_EvalCode(%struct._object* %co, %struct._object* %call1.i.34, %struct._object* %call1.i.34) #1, !dbg !2486
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1129, metadata !1500) #1, !dbg !2487
  %cmp.i = icmp eq %struct._object* %call1.i, null, !dbg !2488
  br i1 %cmp.i, label %if.then.i, label %do.body.i, !dbg !2490

if.then.i:                                        ; preds = %PyImport_GetModuleDict.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1121, metadata !1500) #1, !dbg !2491
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2494
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2494
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2494
  %14 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2496, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !621, metadata !1500) #1, !dbg !2494
  %interp4.i.i.46 = getelementptr inbounds i8, i8* %14, i64 16, !dbg !2497
  %15 = bitcast i8* %interp4.i.i.46 to %struct._is**, !dbg !2497
  %16 = load %struct._is*, %struct._is** %15, align 8, !dbg !2497, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %16, i64 0, metadata !613, metadata !1500) #1, !dbg !2498
  %modules.i.i.47 = getelementptr inbounds %struct._is, %struct._is* %16, i64 0, i32 2, !dbg !2499
  %17 = load %struct._object*, %struct._object** %modules.i.i.47, align 8, !dbg !2499, !tbaa !1775
  %cmp.i.i.48 = icmp eq %struct._object* %17, null, !dbg !2500
  br i1 %cmp.i.i.48, label %if.then.i.i.49, label %PyImport_GetModuleDict.exit.i.52, !dbg !2501

if.then.i.i.49:                                   ; preds = %if.then.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2502
  unreachable, !dbg !2502

PyImport_GetModuleDict.exit.i.52:                 ; preds = %if.then.i
  tail call void @llvm.dbg.value(metadata %struct._object* %17, i64 0, metadata !1122, metadata !1500) #1, !dbg !2503
  %call1.i.50 = tail call %struct._object* @PyDict_GetItem(%struct._object* %17, %struct._object* %name) #1, !dbg !2504
  %cmp.i.51 = icmp eq %struct._object* %call1.i.50, null, !dbg !2505
  br i1 %cmp.i.51, label %cleanup, label %if.end.i.55, !dbg !2506

if.end.i.55:                                      ; preds = %PyImport_GetModuleDict.exit.i.52
  %call2.i.53 = tail call i32 @PyDict_DelItem(%struct._object* %17, %struct._object* %name) #1, !dbg !2507
  %cmp3.i.54 = icmp slt i32 %call2.i.53, 0, !dbg !2508
  br i1 %cmp3.i.54, label %if.then.4.i.56, label %cleanup, !dbg !2509

if.then.4.i.56:                                   ; preds = %if.end.i.55
  tail call void @Py_FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i64 0, i64 0)) #7, !dbg !2510
  unreachable, !dbg !2510

do.body.i:                                        ; preds = %PyImport_GetModuleDict.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1131, metadata !1500) #1, !dbg !2511
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !2513
  %18 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2513, !tbaa !1533
  %dec.i = add i64 %18, -1, !dbg !2513
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2513, !tbaa !1533
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2513
  br i1 %cmp2.i, label %if.else.i, label %if.end.4.i, !dbg !2515

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !2516
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2516, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !2516
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2516, !tbaa !1539
  tail call void %20(%struct._object* %call1.i) #1, !dbg !2516
  br label %if.end.4.i, !dbg !2518

if.end.4.i:                                       ; preds = %if.else.i, %do.body.i
  %call5.i = tail call %struct._object* @PyDict_GetItem(%struct._object* %13, %struct._object* %name) #1, !dbg !2519
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i, i64 0, metadata !1130, metadata !1500) #1, !dbg !2521
  %cmp6.i = icmp eq %struct._object* %call5.i, null, !dbg !2522
  br i1 %cmp6.i, label %if.then.7.i, label %if.end.9.i, !dbg !2523

if.then.7.i:                                      ; preds = %if.end.4.i
  %21 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !2524, !tbaa !1504
  %call8.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %21, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.79, i64 0, i64 0), %struct._object* %name) #1, !dbg !2526
  br label %cleanup, !dbg !2527

if.end.9.i:                                       ; preds = %if.end.4.i
  %ob_refcnt10.i = getelementptr inbounds %struct._object, %struct._object* %call5.i, i64 0, i32 0, !dbg !2528
  %22 = load i64, i64* %ob_refcnt10.i, align 8, !dbg !2528, !tbaa !1533
  %inc.i = add i64 %22, 1, !dbg !2528
  store i64 %inc.i, i64* %ob_refcnt10.i, align 8, !dbg !2528, !tbaa !1533
  br label %cleanup, !dbg !2529

cleanup:                                          ; preds = %if.end.i.41, %PyImport_GetModuleDict.exit.i, %entry, %if.end.9.i, %if.then.7.i, %PyImport_GetModuleDict.exit.i.52, %if.end.i.55, %if.end.7, %module_dict_for_exec.exit
  %retval.0 = phi %struct._object* [ null, %module_dict_for_exec.exit ], [ null, %if.end.7 ], [ null, %if.then.7.i ], [ %call5.i, %if.end.9.i ], [ null, %PyImport_GetModuleDict.exit.i.52 ], [ null, %if.end.i.55 ], [ null, %entry ], [ null, %PyImport_GetModuleDict.exit.i ], [ null, %if.end.i.41 ]
  ret %struct._object* %retval.0, !dbg !2530
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_GetImporter(%struct._object* %path) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %path, i64 0, metadata !842, metadata !1500), !dbg !2531
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !843, metadata !1500), !dbg !2532
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !844, metadata !1500), !dbg !2533
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !845, metadata !1500), !dbg !2534
  %call = tail call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)) #1, !dbg !2535
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !844, metadata !1500), !dbg !2533
  %call1 = tail call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)) #1, !dbg !2536
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !845, metadata !1500), !dbg !2534
  %cmp = icmp ne %struct._object* %call, null, !dbg !2537
  %cmp2 = icmp ne %struct._object* %call1, null, !dbg !2539
  %or.cond = and i1 %cmp, %cmp2, !dbg !2540
  br i1 %or.cond, label %if.then, label %if.end.6, !dbg !2540

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1135, metadata !1500) #1, !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !1136, metadata !1500) #1, !dbg !2544
  tail call void @llvm.dbg.value(metadata %struct._object* %path, i64 0, metadata !1137, metadata !1500) #1, !dbg !2545
  %call.i = tail call i64 @PyList_Size(%struct._object* %call1) #1, !dbg !2546
  tail call void @llvm.dbg.value(metadata i64 %call.i, i64 0, metadata !1140, metadata !1500) #1, !dbg !2547
  %cmp.i = icmp slt i64 %call.i, 0, !dbg !2548
  br i1 %cmp.i, label %if.end.6, label %if.end.i, !dbg !2550

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call %struct._object* @PyDict_GetItem(%struct._object* %call, %struct._object* %path) #1, !dbg !2551
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1138, metadata !1500) #1, !dbg !2552
  %cmp2.i = icmp eq %struct._object* %call1.i, null, !dbg !2553
  br i1 %cmp2.i, label %if.end.4.i, label %if.then.5, !dbg !2555

if.end.4.i:                                       ; preds = %if.end.i
  %call5.i = tail call i32 @PyDict_SetItem(%struct._object* %call, %struct._object* %path, %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !2556
  %cmp6.i = icmp eq i32 %call5.i, 0, !dbg !2558
  br i1 %cmp6.i, label %for.cond.preheader.i, label %if.end.6, !dbg !2559

for.cond.preheader.i:                             ; preds = %if.end.4.i
  %cmp9.72.i = icmp sgt i64 %call.i, 0, !dbg !2560
  br i1 %cmp9.72.i, label %for.body.i.preheader, label %if.then.5, !dbg !2561

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !2562

for.body.i:                                       ; preds = %for.body.i.preheader, %for.inc.i
  %j.073.i = phi i64 [ %inc.i, %for.inc.i ], [ 0, %for.body.i.preheader ], !dbg !2563
  %call10.i = tail call %struct._object* @PyList_GetItem(%struct._object* %call1, i64 %j.073.i) #1, !dbg !2562
  tail call void @llvm.dbg.value(metadata %struct._object* %call10.i, i64 0, metadata !1141, metadata !1500) #1, !dbg !2564
  %cmp11.i = icmp eq %struct._object* %call10.i, null, !dbg !2565
  br i1 %cmp11.i, label %if.end.6.loopexit, label %if.end.13.i, !dbg !2567

if.end.13.i:                                      ; preds = %for.body.i
  %call14.i = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %call10.i, %struct._object* %path, i8* null) #1, !dbg !2568
  tail call void @llvm.dbg.value(metadata %struct._object* %call14.i, i64 0, metadata !1138, metadata !1500) #1, !dbg !2552
  %cmp15.i = icmp eq %struct._object* %call14.i, null, !dbg !2569
  br i1 %cmp15.i, label %if.end.17.i, label %if.then.25.i, !dbg !2571

if.end.17.i:                                      ; preds = %if.end.13.i
  %0 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !2572, !tbaa !1504
  %call18.i = tail call i32 @PyErr_ExceptionMatches(%struct._object* %0) #1, !dbg !2574
  %tobool.i = icmp eq i32 %call18.i, 0, !dbg !2574
  br i1 %tobool.i, label %if.end.6.loopexit, label %for.inc.i, !dbg !2575

for.inc.i:                                        ; preds = %if.end.17.i
  tail call void @PyErr_Clear() #1, !dbg !2576
  %inc.i = add nuw nsw i64 %j.073.i, 1, !dbg !2577
  tail call void @llvm.dbg.value(metadata i64 %inc.i, i64 0, metadata !1139, metadata !1500) #1, !dbg !2578
  %cmp9.i = icmp slt i64 %inc.i, %call.i, !dbg !2560
  br i1 %cmp9.i, label %for.body.i, label %if.then.5.loopexit, !dbg !2561

if.then.25.i:                                     ; preds = %if.end.13.i
  %call14.i.lcssa = phi %struct._object* [ %call14.i, %if.end.13.i ]
  %call26.i = tail call i32 @PyDict_SetItem(%struct._object* %call, %struct._object* %path, %struct._object* %call14.i.lcssa) #1, !dbg !2579
  tail call void @llvm.dbg.value(metadata i32 %call26.i, i64 0, metadata !1145, metadata !1500) #1, !dbg !2580
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call14.i.lcssa, i64 0, i32 0, !dbg !2581
  %1 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2581, !tbaa !1533
  %dec.i = add i64 %1, -1, !dbg !2581
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2581, !tbaa !1533
  %cmp27.i = icmp eq i64 %dec.i, 0, !dbg !2581
  br i1 %cmp27.i, label %if.else.i, label %if.end.29.i, !dbg !2583

if.else.i:                                        ; preds = %if.then.25.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call14.i.lcssa, i64 0, i32 1, !dbg !2584
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2584, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !2584
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2584, !tbaa !1539
  tail call void %3(%struct._object* %call14.i.lcssa) #1, !dbg !2584
  br label %if.end.29.i, !dbg !2563

if.end.29.i:                                      ; preds = %if.else.i, %if.then.25.i
  %cmp30.i = icmp eq i32 %call26.i, 0, !dbg !2586
  br i1 %cmp30.i, label %if.then.5, label %if.end.6

if.then.5.loopexit:                               ; preds = %for.inc.i
  br label %if.then.5, !dbg !2588

if.then.5:                                        ; preds = %if.then.5.loopexit, %if.end.29.i, %if.end.i, %for.cond.preheader.i
  %importer.0.ph = phi %struct._object* [ @_Py_NoneStruct, %for.cond.preheader.i ], [ %call1.i, %if.end.i ], [ %call14.i.lcssa, %if.end.29.i ], [ @_Py_NoneStruct, %if.then.5.loopexit ]
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %importer.0.ph, i64 0, i32 0, !dbg !2588
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !2588, !tbaa !1533
  %inc = add i64 %4, 1, !dbg !2588
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2588, !tbaa !1533
  br label %if.end.6, !dbg !2588

if.end.6.loopexit:                                ; preds = %if.end.17.i, %for.body.i
  br label %if.end.6, !dbg !2591

if.end.6:                                         ; preds = %if.end.6.loopexit, %if.end.4.i, %if.then, %if.end.29.i, %entry, %if.then.5
  %importer.017 = phi %struct._object* [ %importer.0.ph, %if.then.5 ], [ null, %entry ], [ null, %if.end.29.i ], [ null, %if.then ], [ null, %if.end.4.i ], [ null, %if.end.6.loopexit ]
  ret %struct._object* %importer.017, !dbg !2591
}

; Function Attrs: nounwind uwtable
define i32 @PyImport_ImportFrozenModuleObject(%struct._object* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !850, metadata !1500), !dbg !2592
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1154, metadata !1500) #1, !dbg !2593
  %cmp.i = icmp eq %struct._object* %name, null, !dbg !2595
  br i1 %cmp.i, label %cleanup.95, label %if.end.i, !dbg !2597

if.end.i:                                         ; preds = %entry
  %0 = load %struct._frozen*, %struct._frozen** @PyImport_FrozenModules, align 8, !dbg !2598, !tbaa !1504
  tail call void @llvm.dbg.value(metadata %struct._frozen* %0, i64 0, metadata !1155, metadata !1500) #1, !dbg !2600
  %name1.13.i = getelementptr inbounds %struct._frozen, %struct._frozen* %0, i64 0, i32 0, !dbg !2601
  %1 = load i8*, i8** %name1.13.i, align 8, !dbg !2601, !tbaa !2605
  %cmp2.14.i = icmp eq i8* %1, null, !dbg !2607
  br i1 %cmp2.14.i, label %cleanup.95, label %if.end.4.i.preheader, !dbg !2608

if.end.4.i.preheader:                             ; preds = %if.end.i
  br label %if.end.4.i, !dbg !2609

if.end.4.i:                                       ; preds = %if.end.4.i.preheader, %for.inc.i
  %2 = phi i8* [ %3, %for.inc.i ], [ %1, %if.end.4.i.preheader ], !dbg !2611
  %p.015.i = phi %struct._frozen* [ %incdec.ptr.i, %for.inc.i ], [ %0, %if.end.4.i.preheader ], !dbg !2611
  %call.i = tail call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %name, i8* %2) #1, !dbg !2609
  %cmp6.i = icmp eq i32 %call.i, 0, !dbg !2612
  br i1 %cmp6.i, label %find_frozen.exit, label %for.inc.i, !dbg !2613

for.inc.i:                                        ; preds = %if.end.4.i
  %incdec.ptr.i = getelementptr %struct._frozen, %struct._frozen* %p.015.i, i64 1, !dbg !2614
  tail call void @llvm.dbg.value(metadata %struct._frozen* %incdec.ptr.i, i64 0, metadata !1155, metadata !1500) #1, !dbg !2600
  %name1.i = getelementptr inbounds %struct._frozen, %struct._frozen* %incdec.ptr.i, i64 0, i32 0, !dbg !2601
  %3 = load i8*, i8** %name1.i, align 8, !dbg !2601, !tbaa !2605
  %cmp2.i = icmp eq i8* %3, null, !dbg !2607
  br i1 %cmp2.i, label %cleanup.95.loopexit, label %if.end.4.i, !dbg !2608

find_frozen.exit:                                 ; preds = %if.end.4.i
  %p.015.i.lcssa = phi %struct._frozen* [ %p.015.i, %if.end.4.i ]
  tail call void @llvm.dbg.value(metadata %struct._frozen* %p.015.i, i64 0, metadata !851, metadata !1500), !dbg !2615
  %cmp = icmp eq %struct._frozen* %p.015.i.lcssa, null, !dbg !2616
  br i1 %cmp, label %cleanup.95, label %if.end, !dbg !2618

if.end:                                           ; preds = %find_frozen.exit
  %code = getelementptr inbounds %struct._frozen, %struct._frozen* %p.015.i.lcssa, i64 0, i32 1, !dbg !2619
  %4 = load i8*, i8** %code, align 8, !dbg !2619, !tbaa !2621
  %cmp1 = icmp eq i8* %4, null, !dbg !2622
  br i1 %cmp1, label %if.then.2, label %if.end.4, !dbg !2623

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !2624, !tbaa !1504
  %call3 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), %struct._object* %name) #1, !dbg !2626
  br label %cleanup.95, !dbg !2627

if.end.4:                                         ; preds = %if.end
  %size5 = getelementptr inbounds %struct._frozen, %struct._frozen* %p.015.i.lcssa, i64 0, i32 2, !dbg !2628
  %6 = load i32, i32* %size5, align 4, !dbg !2628, !tbaa !2629
  tail call void @llvm.dbg.value(metadata i32 %6, i64 0, metadata !865, metadata !1500), !dbg !2630
  %cmp6 = icmp slt i32 %6, 0, !dbg !2631
  %sub = sub i32 0, %6, !dbg !2632
  tail call void @llvm.dbg.value(metadata i32 %sub, i64 0, metadata !865, metadata !1500), !dbg !2630
  %sub. = select i1 %cmp6, i32 %sub, i32 %6, !dbg !2634
  %conv10 = sext i32 %sub. to i64, !dbg !2635
  %call11 = tail call %struct._object* @PyMarshal_ReadObjectFromString(i8* %4, i64 %conv10) #1, !dbg !2636
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !861, metadata !1500), !dbg !2637
  %cmp12 = icmp eq %struct._object* %call11, null, !dbg !2638
  br i1 %cmp12, label %cleanup.95, label %if.end.15, !dbg !2640

if.end.15:                                        ; preds = %if.end.4
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 1, !dbg !2641
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2641, !tbaa !1538
  %cmp16 = icmp eq %struct._typeobject* %7, @PyCode_Type, !dbg !2641
  br i1 %cmp16, label %if.end.20, label %if.then.18, !dbg !2643

if.then.18:                                       ; preds = %if.end.15
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2644, !tbaa !1504
  %call19 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0), %struct._object* %name) #1, !dbg !2646
  br label %do.body.82, !dbg !2647

if.end.20:                                        ; preds = %if.end.15
  br i1 %cmp6, label %if.then.22, label %if.end.45, !dbg !2648

if.then.22:                                       ; preds = %if.end.20
  %call23 = tail call %struct._object* @PyImport_AddModuleObject(%struct._object* %name), !dbg !2649
  tail call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !862, metadata !1500), !dbg !2650
  %cmp24 = icmp eq %struct._object* %call23, null, !dbg !2651
  br i1 %cmp24, label %do.body.82, label %if.end.27, !dbg !2653

if.end.27:                                        ; preds = %if.then.22
  %call28 = tail call %struct._object* @PyModule_GetDict(%struct._object* %call23) #1, !dbg !2654
  tail call void @llvm.dbg.value(metadata %struct._object* %call28, i64 0, metadata !863, metadata !1500), !dbg !2655
  %call29 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !2656
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !866, metadata !1500), !dbg !2657
  %cmp30 = icmp eq %struct._object* %call29, null, !dbg !2658
  br i1 %cmp30, label %do.body.82, label %if.end.33, !dbg !2660

if.end.33:                                        ; preds = %if.end.27
  %call34 = tail call i32 @PyDict_SetItemString(%struct._object* %call28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0), %struct._object* %call29) #1, !dbg !2661
  tail call void @llvm.dbg.value(metadata i32 %call34, i64 0, metadata !869, metadata !1500), !dbg !2662
  tail call void @llvm.dbg.value(metadata %struct._object* %call29, i64 0, metadata !870, metadata !1500), !dbg !2663
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 0, !dbg !2665
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !2665, !tbaa !1533
  %dec = add i64 %9, -1, !dbg !2665
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2665, !tbaa !1533
  %cmp35 = icmp eq i64 %dec, 0, !dbg !2665
  br i1 %cmp35, label %if.else, label %cleanup, !dbg !2667

if.else:                                          ; preds = %if.end.33
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %call29, i64 0, i32 1, !dbg !2668
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8, !dbg !2668, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2668
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2668, !tbaa !1539
  tail call void %11(%struct._object* %call29) #1, !dbg !2668
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.33
  %cmp40 = icmp eq i32 %call34, 0, !dbg !2670
  br i1 %cmp40, label %if.end.45, label %do.body.82

if.end.45:                                        ; preds = %cleanup, %if.end.20
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1116, metadata !1500) #1, !dbg !2672
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1118, metadata !1500) #1, !dbg !2674
  %call.i.143 = tail call %struct._object* @PyImport_AddModuleObject(%struct._object* %name) #1, !dbg !2675
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.143, i64 0, metadata !1117, metadata !1500) #1, !dbg !2676
  %cmp.i.144 = icmp eq %struct._object* %call.i.143, null, !dbg !2677
  br i1 %cmp.i.144, label %do.body.82, label %if.end.i.145, !dbg !2678

if.end.i.145:                                     ; preds = %if.end.45
  %call1.i = tail call %struct._object* @PyModule_GetDict(%struct._object* %call.i.143) #1, !dbg !2679
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1118, metadata !1500) #1, !dbg !2674
  %call2.i = tail call %struct._object* @PyDict_GetItemString(%struct._object* %call1.i, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0)) #1, !dbg !2680
  %cmp3.i = icmp eq %struct._object* %call2.i, null, !dbg !2681
  br i1 %cmp3.i, label %if.then.4.i, label %module_dict_for_exec.exit, !dbg !2682

if.then.4.i:                                      ; preds = %if.end.i.145
  %call5.i = tail call %struct._object* @PyEval_GetBuiltins() #1, !dbg !2683
  %call6.i = tail call i32 @PyDict_SetItemString(%struct._object* %call1.i, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), %struct._object* %call5.i) #1, !dbg !2684
  %cmp7.i = icmp eq i32 %call6.i, 0, !dbg !2685
  br i1 %cmp7.i, label %module_dict_for_exec.exit, label %if.then.8.i, !dbg !2686

if.then.8.i:                                      ; preds = %if.then.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1121, metadata !1500) #1, !dbg !2687
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2689
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2689
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2689
  %12 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2691, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %12, i64 0, metadata !621, metadata !1500) #1, !dbg !2689
  %interp4.i.i = getelementptr inbounds i8, i8* %12, i64 16, !dbg !2692
  %13 = bitcast i8* %interp4.i.i to %struct._is**, !dbg !2692
  %14 = load %struct._is*, %struct._is** %13, align 8, !dbg !2692, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %14, i64 0, metadata !613, metadata !1500) #1, !dbg !2693
  %modules.i.i = getelementptr inbounds %struct._is, %struct._is* %14, i64 0, i32 2, !dbg !2694
  %15 = load %struct._object*, %struct._object** %modules.i.i, align 8, !dbg !2694, !tbaa !1775
  %cmp.i.i = icmp eq %struct._object* %15, null, !dbg !2695
  br i1 %cmp.i.i, label %if.then.i.i, label %PyImport_GetModuleDict.exit.i, !dbg !2696

if.then.i.i:                                      ; preds = %if.then.8.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2697
  unreachable, !dbg !2697

PyImport_GetModuleDict.exit.i:                    ; preds = %if.then.8.i
  tail call void @llvm.dbg.value(metadata %struct._object* %15, i64 0, metadata !1122, metadata !1500) #1, !dbg !2698
  %call1.i.147 = tail call %struct._object* @PyDict_GetItem(%struct._object* %15, %struct._object* %name) #1, !dbg !2699
  %cmp.i.148 = icmp eq %struct._object* %call1.i.147, null, !dbg !2700
  br i1 %cmp.i.148, label %do.body.82, label %if.end.i.151, !dbg !2701

if.end.i.151:                                     ; preds = %PyImport_GetModuleDict.exit.i
  %call2.i.149 = tail call i32 @PyDict_DelItem(%struct._object* %15, %struct._object* %name) #1, !dbg !2702
  %cmp3.i.150 = icmp slt i32 %call2.i.149, 0, !dbg !2703
  br i1 %cmp3.i.150, label %if.then.4.i.152, label %do.body.82, !dbg !2704

if.then.4.i.152:                                  ; preds = %if.end.i.151
  tail call void @Py_FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i64 0, i64 0)) #7, !dbg !2705
  unreachable, !dbg !2705

module_dict_for_exec.exit:                        ; preds = %if.end.i.145, %if.then.4.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !863, metadata !1500), !dbg !2655
  %cmp47 = icmp eq %struct._object* %call1.i, null, !dbg !2706
  br i1 %cmp47, label %do.body.82, label %if.end.50, !dbg !2708

if.end.50:                                        ; preds = %module_dict_for_exec.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1125, metadata !1500) #1, !dbg !2709
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1126, metadata !1500) #1, !dbg !2711
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !1127, metadata !1500) #1, !dbg !2712
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2713
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2713
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2713
  %16 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2715, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !621, metadata !1500) #1, !dbg !2713
  %interp4.i = getelementptr inbounds i8, i8* %16, i64 16, !dbg !2716
  %17 = bitcast i8* %interp4.i to %struct._is**, !dbg !2716
  %18 = load %struct._is*, %struct._is** %17, align 8, !dbg !2716, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %18, i64 0, metadata !613, metadata !1500) #1, !dbg !2717
  %modules.i = getelementptr inbounds %struct._is, %struct._is* %18, i64 0, i32 2, !dbg !2718
  %19 = load %struct._object*, %struct._object** %modules.i, align 8, !dbg !2718, !tbaa !1775
  %cmp.i.161 = icmp eq %struct._object* %19, null, !dbg !2719
  br i1 %cmp.i.161, label %if.then.i.162, label %PyImport_GetModuleDict.exit, !dbg !2720

if.then.i.162:                                    ; preds = %if.end.50
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2721
  unreachable, !dbg !2721

PyImport_GetModuleDict.exit:                      ; preds = %if.end.50
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !1128, metadata !1500) #1, !dbg !2722
  %call1.i.154 = tail call %struct._object* @PyEval_EvalCode(%struct._object* %call11, %struct._object* %call1.i, %struct._object* %call1.i) #1, !dbg !2723
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.154, i64 0, metadata !1129, metadata !1500) #1, !dbg !2724
  %cmp.i.155 = icmp eq %struct._object* %call1.i.154, null, !dbg !2725
  br i1 %cmp.i.155, label %if.then.i, label %do.body.i, !dbg !2726

if.then.i:                                        ; preds = %PyImport_GetModuleDict.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !1121, metadata !1500) #1, !dbg !2727
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2729
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2729
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2729
  %20 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2731, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %20, i64 0, metadata !621, metadata !1500) #1, !dbg !2729
  %interp4.i.i.164 = getelementptr inbounds i8, i8* %20, i64 16, !dbg !2732
  %21 = bitcast i8* %interp4.i.i.164 to %struct._is**, !dbg !2732
  %22 = load %struct._is*, %struct._is** %21, align 8, !dbg !2732, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %22, i64 0, metadata !613, metadata !1500) #1, !dbg !2733
  %modules.i.i.165 = getelementptr inbounds %struct._is, %struct._is* %22, i64 0, i32 2, !dbg !2734
  %23 = load %struct._object*, %struct._object** %modules.i.i.165, align 8, !dbg !2734, !tbaa !1775
  %cmp.i.i.166 = icmp eq %struct._object* %23, null, !dbg !2735
  br i1 %cmp.i.i.166, label %if.then.i.i.167, label %PyImport_GetModuleDict.exit.i.170, !dbg !2736

if.then.i.i.167:                                  ; preds = %if.then.i
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2737
  unreachable, !dbg !2737

PyImport_GetModuleDict.exit.i.170:                ; preds = %if.then.i
  tail call void @llvm.dbg.value(metadata %struct._object* %23, i64 0, metadata !1122, metadata !1500) #1, !dbg !2738
  %call1.i.168 = tail call %struct._object* @PyDict_GetItem(%struct._object* %23, %struct._object* %name) #1, !dbg !2739
  %cmp.i.169 = icmp eq %struct._object* %call1.i.168, null, !dbg !2740
  br i1 %cmp.i.169, label %do.body.82, label %if.end.i.173, !dbg !2741

if.end.i.173:                                     ; preds = %PyImport_GetModuleDict.exit.i.170
  %call2.i.171 = tail call i32 @PyDict_DelItem(%struct._object* %23, %struct._object* %name) #1, !dbg !2742
  %cmp3.i.172 = icmp slt i32 %call2.i.171, 0, !dbg !2743
  br i1 %cmp3.i.172, label %if.then.4.i.174, label %do.body.82, !dbg !2744

if.then.4.i.174:                                  ; preds = %if.end.i.173
  tail call void @Py_FatalError(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.78, i64 0, i64 0)) #7, !dbg !2745
  unreachable, !dbg !2745

do.body.i:                                        ; preds = %PyImport_GetModuleDict.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.154, i64 0, metadata !1131, metadata !1500) #1, !dbg !2746
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.154, i64 0, i32 0, !dbg !2747
  %24 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2747, !tbaa !1533
  %dec.i = add i64 %24, -1, !dbg !2747
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2747, !tbaa !1533
  %cmp2.i.156 = icmp eq i64 %dec.i, 0, !dbg !2747
  br i1 %cmp2.i.156, label %if.else.i, label %if.end.4.i.159, !dbg !2748

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.154, i64 0, i32 1, !dbg !2749
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2749, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !2749
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2749, !tbaa !1539
  tail call void %26(%struct._object* %call1.i.154) #1, !dbg !2749
  br label %if.end.4.i.159, !dbg !2750

if.end.4.i.159:                                   ; preds = %if.else.i, %do.body.i
  %call5.i.157 = tail call %struct._object* @PyDict_GetItem(%struct._object* %19, %struct._object* %name) #1, !dbg !2751
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i.157, i64 0, metadata !1130, metadata !1500) #1, !dbg !2752
  %cmp6.i.158 = icmp eq %struct._object* %call5.i.157, null, !dbg !2753
  br i1 %cmp6.i.158, label %if.then.7.i, label %do.body.56, !dbg !2754

if.then.7.i:                                      ; preds = %if.end.4.i.159
  %27 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !2755, !tbaa !1504
  %call8.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.79, i64 0, i64 0), %struct._object* %name) #1, !dbg !2756
  br label %do.body.82, !dbg !2757

do.body.56:                                       ; preds = %if.end.4.i.159
  %ob_refcnt10.i = getelementptr inbounds %struct._object, %struct._object* %call5.i.157, i64 0, i32 0, !dbg !2758
  %28 = load i64, i64* %ob_refcnt10.i, align 8, !dbg !2758, !tbaa !1533
  %inc.i = add i64 %28, 1, !dbg !2758
  store i64 %inc.i, i64* %ob_refcnt10.i, align 8, !dbg !2758, !tbaa !1533
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i.157, i64 0, metadata !862, metadata !1500), !dbg !2650
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !872, metadata !1500), !dbg !2759
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 0, !dbg !2761
  %29 = load i64, i64* %ob_refcnt58, align 8, !dbg !2761, !tbaa !1533
  %dec59 = add i64 %29, -1, !dbg !2761
  store i64 %dec59, i64* %ob_refcnt58, align 8, !dbg !2761, !tbaa !1533
  %cmp60 = icmp eq i64 %dec59, 0, !dbg !2761
  br i1 %cmp60, label %if.else.63, label %if.end.66, !dbg !2763

if.else.63:                                       ; preds = %do.body.56
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2764, !tbaa !1538
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !2764
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !2764, !tbaa !1539
  tail call void %31(%struct._object* %call11) #1, !dbg !2764
  br label %if.end.66

if.end.66:                                        ; preds = %do.body.56, %if.else.63
  tail call void @llvm.dbg.value(metadata %struct._object* %call5.i.157, i64 0, metadata !874, metadata !1500), !dbg !2766
  %32 = load i64, i64* %ob_refcnt10.i, align 8, !dbg !2768, !tbaa !1533
  %dec72 = add i64 %32, -1, !dbg !2768
  store i64 %dec72, i64* %ob_refcnt10.i, align 8, !dbg !2768, !tbaa !1533
  %cmp73 = icmp eq i64 %dec72, 0, !dbg !2768
  br i1 %cmp73, label %if.else.76, label %cleanup.95, !dbg !2770

if.else.76:                                       ; preds = %if.end.66
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %call5.i.157, i64 0, i32 1, !dbg !2771
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8, !dbg !2771, !tbaa !1538
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !2771
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8, !dbg !2771, !tbaa !1539
  tail call void %34(%struct._object* %call5.i.157) #1, !dbg !2771
  br label %cleanup.95

do.body.82:                                       ; preds = %cleanup, %if.end.i.173, %PyImport_GetModuleDict.exit.i.170, %if.then.7.i, %if.end.i.151, %PyImport_GetModuleDict.exit.i, %if.end.45, %if.end.27, %if.then.22, %if.then.18, %module_dict_for_exec.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %call11, i64 0, metadata !876, metadata !1500), !dbg !2773
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %call11, i64 0, i32 0, !dbg !2775
  %35 = load i64, i64* %ob_refcnt84, align 8, !dbg !2775, !tbaa !1533
  %dec85 = add i64 %35, -1, !dbg !2775
  store i64 %dec85, i64* %ob_refcnt84, align 8, !dbg !2775, !tbaa !1533
  %cmp86 = icmp eq i64 %dec85, 0, !dbg !2775
  br i1 %cmp86, label %if.else.89, label %cleanup.95, !dbg !2777

if.else.89:                                       ; preds = %do.body.82
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2778, !tbaa !1538
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i64 0, i32 4, !dbg !2778
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !2778, !tbaa !1539
  tail call void %37(%struct._object* %call11) #1, !dbg !2778
  br label %cleanup.95

cleanup.95.loopexit:                              ; preds = %for.inc.i
  br label %cleanup.95, !dbg !2780

cleanup.95:                                       ; preds = %cleanup.95.loopexit, %if.end.i, %entry, %if.else.89, %do.body.82, %if.else.76, %if.end.66, %if.end.4, %find_frozen.exit, %if.then.2
  %retval.0 = phi i32 [ -1, %if.then.2 ], [ 0, %find_frozen.exit ], [ -1, %if.end.4 ], [ 1, %if.end.66 ], [ 1, %if.else.76 ], [ -1, %do.body.82 ], [ -1, %if.else.89 ], [ 0, %entry ], [ 0, %if.end.i ], [ 0, %cleanup.95.loopexit ]
  ret i32 %retval.0, !dbg !2780
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare %struct._object* @PyMarshal_ReadObjectFromString(i8*, i64) #3

; Function Attrs: nounwind uwtable
define i32 @PyImport_ImportFrozenModule(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !882, metadata !1500), !dbg !2781
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* %name) #1, !dbg !2782
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !883, metadata !1500), !dbg !2783
  %cmp = icmp eq %struct._object* %call, null, !dbg !2784
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2786

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PyImport_ImportFrozenModuleObject(%struct._object* %call), !dbg !2787
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !884, metadata !1500), !dbg !2788
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !885, metadata !1500), !dbg !2789
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !2791
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !2791, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !2791
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2791, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2791
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !2793

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !2794
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2794, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2794
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2794, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !2794
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret i32 %retval.0, !dbg !2796
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_Import(%struct._object* %module_name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %module_name, i64 0, metadata !1047, metadata !1500), !dbg !2797
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1048, metadata !1500), !dbg !2798
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1049, metadata !1500), !dbg !2799
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1050, metadata !1500), !dbg !2800
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1051, metadata !1500), !dbg !2801
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1052, metadata !1500), !dbg !2802
  %0 = load %struct._object*, %struct._object** @PyImport_Import.silly_list, align 8, !dbg !2803, !tbaa !1504
  %cmp = icmp eq %struct._object* %0, null, !dbg !2805
  br i1 %cmp, label %if.then, label %if.end.11, !dbg !2806

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i64 0, i64 0)) #1, !dbg !2807
  store %struct._object* %call, %struct._object** @PyImport_Import.import_str, align 8, !dbg !2809, !tbaa !1504
  %cmp1 = icmp eq %struct._object* %call, null, !dbg !2810
  br i1 %cmp1, label %cleanup, label %if.end, !dbg !2812

if.end:                                           ; preds = %if.then
  %call3 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0)) #1, !dbg !2813
  store %struct._object* %call3, %struct._object** @PyImport_Import.builtins_str, align 8, !dbg !2814, !tbaa !1504
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !2815
  br i1 %cmp4, label %cleanup, label %if.end.6, !dbg !2817

if.end.6:                                         ; preds = %if.end
  %call7 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !2818
  store %struct._object* %call7, %struct._object** @PyImport_Import.silly_list, align 8, !dbg !2819, !tbaa !1504
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !2820
  br i1 %cmp8, label %cleanup, label %if.end.11, !dbg !2822

if.end.11:                                        ; preds = %if.end.6, %entry
  %call12 = tail call %struct._object* @PyEval_GetGlobals() #1, !dbg !2823
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !1048, metadata !1500), !dbg !2798
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !2824
  br i1 %cmp13, label %if.else, label %if.then.14, !dbg !2826

if.then.14:                                       ; preds = %if.end.11
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2827
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !2827, !tbaa !1533
  %inc = add i64 %1, 1, !dbg !2827
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2827, !tbaa !1533
  %2 = load %struct._object*, %struct._object** @PyImport_Import.builtins_str, align 8, !dbg !2829, !tbaa !1504
  %call15 = tail call %struct._object* @PyObject_GetItem(%struct._object* %call12, %struct._object* %2) #1, !dbg !2830
  tail call void @llvm.dbg.value(metadata %struct._object* %call15, i64 0, metadata !1050, metadata !1500), !dbg !2800
  %cmp16 = icmp eq %struct._object* %call15, null, !dbg !2831
  br i1 %cmp16, label %do.body.60, label %if.end.27, !dbg !2833

if.else:                                          ; preds = %if.end.11
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0), i64 0, metadata !1028, metadata !1500) #1, !dbg !2834
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1029, metadata !1500) #1, !dbg !2837
  tail call void @llvm.dbg.value(metadata %struct._object* undef, i64 0, metadata !1030, metadata !1500) #1, !dbg !2838
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1031, metadata !1500) #1, !dbg !2839
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1032, metadata !1500) #1, !dbg !2840
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i64 0, i64 0)) #1, !dbg !2841
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1033, metadata !1500) #1, !dbg !2842
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2843
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2845

if.end.i:                                         ; preds = %if.else
  %call1.i = tail call %struct._object* @PyImport_ImportModuleLevelObject(%struct._object* %call.i, %struct._object* null, %struct._object* undef, %struct._object* null, i32 0) #1, !dbg !2846
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1034, metadata !1500) #1, !dbg !2847
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1035, metadata !1500) #1, !dbg !2848
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2850
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2850, !tbaa !1533
  %dec.i = add i64 %3, -1, !dbg !2850
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2850, !tbaa !1533
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2850
  br i1 %cmp2.i, label %if.else.i, label %PyImport_ImportModuleLevel.exit, !dbg !2852

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2853
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2853, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !2853
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2853, !tbaa !1539
  tail call void %5(%struct._object* %call.i) #1, !dbg !2853
  br label %PyImport_ImportModuleLevel.exit, !dbg !2855

PyImport_ImportModuleLevel.exit:                  ; preds = %if.end.i, %if.else.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1050, metadata !1500), !dbg !2800
  %cmp20 = icmp eq %struct._object* %call1.i, null, !dbg !2856
  br i1 %cmp20, label %cleanup, label %if.end.22, !dbg !2858

if.end.22:                                        ; preds = %PyImport_ImportModuleLevel.exit
  %6 = load %struct._object*, %struct._object** @PyImport_Import.builtins_str, align 8, !dbg !2859, !tbaa !1504
  %call23 = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.60, i64 0, i64 0), %struct._object* %6, %struct._object* %call1.i) #1, !dbg !2860
  tail call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !1048, metadata !1500), !dbg !2798
  %cmp24 = icmp eq %struct._object* %call23, null, !dbg !2861
  br i1 %cmp24, label %do.body.79, label %if.end.27, !dbg !2863

if.end.27:                                        ; preds = %if.end.22, %if.then.14
  %builtins.0 = phi %struct._object* [ %call15, %if.then.14 ], [ %call1.i, %if.end.22 ]
  %globals.0 = phi %struct._object* [ %call12, %if.then.14 ], [ %call23, %if.end.22 ]
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %builtins.0, i64 0, i32 1, !dbg !2864
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2864, !tbaa !1538
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 19, !dbg !2864
  %8 = load i64, i64* %tp_flags, align 8, !dbg !2864, !tbaa !1849
  %and = and i64 %8, 536870912, !dbg !2864
  %cmp28 = icmp eq i64 %and, 0, !dbg !2864
  %9 = load %struct._object*, %struct._object** @PyImport_Import.import_str, align 8, !dbg !2866, !tbaa !1504
  br i1 %cmp28, label %if.end.36, label %if.then.29, !dbg !2868

if.then.29:                                       ; preds = %if.end.27
  %call30 = tail call %struct._object* @PyObject_GetItem(%struct._object* %builtins.0, %struct._object* %9) #1, !dbg !2869
  tail call void @llvm.dbg.value(metadata %struct._object* %call30, i64 0, metadata !1049, metadata !1500), !dbg !2799
  %cmp31 = icmp eq %struct._object* %call30, null, !dbg !2870
  br i1 %cmp31, label %if.end.36.thread, label %if.end.39, !dbg !2872

if.end.36.thread:                                 ; preds = %if.then.29
  %10 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !2873, !tbaa !1504
  %11 = load %struct._object*, %struct._object** @PyImport_Import.import_str, align 8, !dbg !2874, !tbaa !1504
  tail call void @PyErr_SetObject(%struct._object* %10, %struct._object* %11) #1, !dbg !2875
  br label %do.body.60, !dbg !2876

if.end.36:                                        ; preds = %if.end.27
  %call35 = tail call %struct._object* @PyObject_GetAttr(%struct._object* %builtins.0, %struct._object* %9) #1, !dbg !2877
  tail call void @llvm.dbg.value(metadata %struct._object* %call35, i64 0, metadata !1049, metadata !1500), !dbg !2799
  %cmp37 = icmp eq %struct._object* %call35, null, !dbg !2878
  br i1 %cmp37, label %do.body.60, label %if.end.39, !dbg !2876

if.end.39:                                        ; preds = %if.then.29, %if.end.36
  %import.0165 = phi %struct._object* [ %call35, %if.end.36 ], [ %call30, %if.then.29 ]
  %12 = load %struct._object*, %struct._object** @PyImport_Import.silly_list, align 8, !dbg !2880, !tbaa !1504
  %call40 = tail call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %import.0165, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i64 0, i64 0), %struct._object* %module_name, %struct._object* %globals.0, %struct._object* %globals.0, %struct._object* %12, i32 0, i8* null) #1, !dbg !2881
  tail call void @llvm.dbg.value(metadata %struct._object* %call40, i64 0, metadata !1052, metadata !1500), !dbg !2802
  %cmp41 = icmp eq %struct._object* %call40, null, !dbg !2882
  br i1 %cmp41, label %do.body.60, label %do.body, !dbg !2884

do.body:                                          ; preds = %if.end.39
  tail call void @llvm.dbg.value(metadata %struct._object* %call40, i64 0, metadata !1053, metadata !1500), !dbg !2885
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %call40, i64 0, i32 0, !dbg !2887
  %13 = load i64, i64* %ob_refcnt44, align 8, !dbg !2887, !tbaa !1533
  %dec = add i64 %13, -1, !dbg !2887
  store i64 %dec, i64* %ob_refcnt44, align 8, !dbg !2887, !tbaa !1533
  %cmp45 = icmp eq i64 %dec, 0, !dbg !2887
  br i1 %cmp45, label %if.else.47, label %if.end.49, !dbg !2889

if.else.47:                                       ; preds = %do.body
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %call40, i64 0, i32 1, !dbg !2890
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2890, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2890
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2890, !tbaa !1539
  tail call void %15(%struct._object* %call40) #1, !dbg !2890
  br label %if.end.49

if.end.49:                                        ; preds = %do.body, %if.else.47
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !2892
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !2892
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !2892
  %16 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2894, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %16, i64 0, metadata !621, metadata !1500) #1, !dbg !2892
  %interp4.i = getelementptr inbounds i8, i8* %16, i64 16, !dbg !2895
  %17 = bitcast i8* %interp4.i to %struct._is**, !dbg !2895
  %18 = load %struct._is*, %struct._is** %17, align 8, !dbg !2895, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %18, i64 0, metadata !613, metadata !1500) #1, !dbg !2896
  %modules.i = getelementptr inbounds %struct._is, %struct._is* %18, i64 0, i32 2, !dbg !2897
  %19 = load %struct._object*, %struct._object** %modules.i, align 8, !dbg !2897, !tbaa !1775
  %cmp.i.159 = icmp eq %struct._object* %19, null, !dbg !2898
  br i1 %cmp.i.159, label %if.then.i, label %PyImport_GetModuleDict.exit, !dbg !2899

if.then.i:                                        ; preds = %if.end.49
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !2900
  unreachable, !dbg !2900

PyImport_GetModuleDict.exit:                      ; preds = %if.end.49
  tail call void @llvm.dbg.value(metadata %struct._object* %19, i64 0, metadata !1051, metadata !1500), !dbg !2801
  %call51 = tail call %struct._object* @PyDict_GetItem(%struct._object* %19, %struct._object* %module_name) #1, !dbg !2901
  tail call void @llvm.dbg.value(metadata %struct._object* %call51, i64 0, metadata !1052, metadata !1500), !dbg !2802
  %cmp52 = icmp eq %struct._object* %call51, null, !dbg !2902
  br i1 %cmp52, label %do.body.57, label %if.then.53, !dbg !2904

if.then.53:                                       ; preds = %PyImport_GetModuleDict.exit
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %call51, i64 0, i32 0, !dbg !2905
  %20 = load i64, i64* %ob_refcnt54, align 8, !dbg !2905, !tbaa !1533
  %inc55 = add i64 %20, 1, !dbg !2905
  store i64 %inc55, i64* %ob_refcnt54, align 8, !dbg !2905, !tbaa !1533
  br label %do.body.57, !dbg !2905

do.body.57:                                       ; preds = %PyImport_GetModuleDict.exit, %if.then.53
  %r.0 = phi %struct._object* [ %call51, %if.then.53 ], [ null, %PyImport_GetModuleDict.exit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %globals.0, i64 0, metadata !1055, metadata !1500), !dbg !2906
  %cmp58 = icmp eq %struct._object* %globals.0, null, !dbg !2908
  br i1 %cmp58, label %if.end.72, label %do.body.60, !dbg !2909

do.body.60:                                       ; preds = %if.end.36.thread, %if.end.39, %if.end.36, %if.then.14, %do.body.57
  %globals.1173 = phi %struct._object* [ %globals.0, %do.body.57 ], [ %globals.0, %if.end.36.thread ], [ %globals.0, %if.end.39 ], [ %globals.0, %if.end.36 ], [ %call12, %if.then.14 ]
  %import.1171 = phi %struct._object* [ %import.0165, %do.body.57 ], [ null, %if.end.36.thread ], [ %import.0165, %if.end.39 ], [ null, %if.end.36 ], [ null, %if.then.14 ]
  %builtins.1169 = phi %struct._object* [ %builtins.0, %do.body.57 ], [ %builtins.0, %if.end.36.thread ], [ %builtins.0, %if.end.39 ], [ %builtins.0, %if.end.36 ], [ null, %if.then.14 ]
  %r.0167 = phi %struct._object* [ %r.0, %do.body.57 ], [ null, %if.end.36.thread ], [ null, %if.end.39 ], [ null, %if.end.36 ], [ null, %if.then.14 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %globals.0, i64 0, metadata !1057, metadata !1500), !dbg !2910
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %globals.1173, i64 0, i32 0, !dbg !2912
  %21 = load i64, i64* %ob_refcnt62, align 8, !dbg !2912, !tbaa !1533
  %dec63 = add i64 %21, -1, !dbg !2912
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !2912, !tbaa !1533
  %cmp64 = icmp eq i64 %dec63, 0, !dbg !2912
  br i1 %cmp64, label %if.else.66, label %if.end.72, !dbg !2914

if.else.66:                                       ; preds = %do.body.60
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %globals.1173, i64 0, i32 1, !dbg !2915
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !2915, !tbaa !1538
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !2915
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !2915, !tbaa !1539
  tail call void %23(%struct._object* %globals.1173) #1, !dbg !2915
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.66, %do.body.60, %do.body.57
  %import.1172 = phi %struct._object* [ %import.1171, %if.else.66 ], [ %import.1171, %do.body.60 ], [ %import.0165, %do.body.57 ]
  %builtins.1170 = phi %struct._object* [ %builtins.1169, %if.else.66 ], [ %builtins.1169, %do.body.60 ], [ %builtins.0, %do.body.57 ]
  %r.0168 = phi %struct._object* [ %r.0167, %if.else.66 ], [ %r.0167, %do.body.60 ], [ %r.0, %do.body.57 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %builtins.0, i64 0, metadata !1060, metadata !1500), !dbg !2917
  %cmp77 = icmp eq %struct._object* %builtins.1170, null, !dbg !2919
  br i1 %cmp77, label %if.end.91, label %do.body.79, !dbg !2920

do.body.79:                                       ; preds = %if.end.22, %if.end.72
  %r.0168180 = phi %struct._object* [ %r.0168, %if.end.72 ], [ null, %if.end.22 ]
  %builtins.1170179 = phi %struct._object* [ %builtins.1170, %if.end.72 ], [ %call1.i, %if.end.22 ]
  %import.1172177 = phi %struct._object* [ %import.1172, %if.end.72 ], [ null, %if.end.22 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %builtins.0, i64 0, metadata !1062, metadata !1500), !dbg !2921
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %builtins.1170179, i64 0, i32 0, !dbg !2923
  %24 = load i64, i64* %ob_refcnt81, align 8, !dbg !2923, !tbaa !1533
  %dec82 = add i64 %24, -1, !dbg !2923
  store i64 %dec82, i64* %ob_refcnt81, align 8, !dbg !2923, !tbaa !1533
  %cmp83 = icmp eq i64 %dec82, 0, !dbg !2923
  br i1 %cmp83, label %if.else.85, label %if.end.91, !dbg !2925

if.else.85:                                       ; preds = %do.body.79
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %builtins.1170179, i64 0, i32 1, !dbg !2926
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8, !dbg !2926, !tbaa !1538
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !2926
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8, !dbg !2926, !tbaa !1539
  tail call void %26(%struct._object* %builtins.1170179) #1, !dbg !2926
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.85, %do.body.79, %if.end.72
  %r.0168181 = phi %struct._object* [ %r.0168180, %if.else.85 ], [ %r.0168180, %do.body.79 ], [ %r.0168, %if.end.72 ]
  %import.1172178 = phi %struct._object* [ %import.1172177, %if.else.85 ], [ %import.1172177, %do.body.79 ], [ %import.1172, %if.end.72 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %import.0165, i64 0, metadata !1065, metadata !1500), !dbg !2928
  %cmp96 = icmp eq %struct._object* %import.1172178, null, !dbg !2930
  br i1 %cmp96, label %cleanup, label %do.body.98, !dbg !2931

do.body.98:                                       ; preds = %if.end.91
  tail call void @llvm.dbg.value(metadata %struct._object* %import.0165, i64 0, metadata !1067, metadata !1500), !dbg !2932
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %import.1172178, i64 0, i32 0, !dbg !2934
  %27 = load i64, i64* %ob_refcnt100, align 8, !dbg !2934, !tbaa !1533
  %dec101 = add i64 %27, -1, !dbg !2934
  store i64 %dec101, i64* %ob_refcnt100, align 8, !dbg !2934, !tbaa !1533
  %cmp102 = icmp eq i64 %dec101, 0, !dbg !2934
  br i1 %cmp102, label %if.else.104, label %cleanup, !dbg !2936

if.else.104:                                      ; preds = %do.body.98
  %ob_type105 = getelementptr inbounds %struct._object, %struct._object* %import.1172178, i64 0, i32 1, !dbg !2937
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type105, align 8, !dbg !2937, !tbaa !1538
  %tp_dealloc106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2937
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc106, align 8, !dbg !2937, !tbaa !1539
  tail call void %29(%struct._object* %import.1172178) #1, !dbg !2937
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end.91, %do.body.98, %if.else.104, %PyImport_ImportModuleLevel.exit, %if.end.6, %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.end ], [ null, %if.end.6 ], [ null, %PyImport_ImportModuleLevel.exit ], [ %r.0168181, %if.else.104 ], [ %r.0168181, %do.body.98 ], [ %r.0168181, %if.end.91 ], [ null, %if.else ]
  ret %struct._object* %retval.0, !dbg !2939
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModuleNoBlock(i8* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !896, metadata !1500), !dbg !2940
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !889, metadata !1500) #1, !dbg !2941
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* %name) #1, !dbg !2943
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !890, metadata !1500) #1, !dbg !2944
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2945
  br i1 %cmp.i, label %PyImport_ImportModule.exit, label %if.end.i, !dbg !2946

if.end.i:                                         ; preds = %entry
  %call1.i = tail call %struct._object* @PyImport_Import(%struct._object* %call.i) #1, !dbg !2947
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !891, metadata !1500) #1, !dbg !2948
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !892, metadata !1500) #1, !dbg !2949
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2950
  %0 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2950, !tbaa !1533
  %dec.i = add i64 %0, -1, !dbg !2950
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2950, !tbaa !1533
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2950
  br i1 %cmp2.i, label %if.else.i, label %PyImport_ImportModule.exit, !dbg !2951

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2952
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2952, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !2952
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2952, !tbaa !1539
  tail call void %2(%struct._object* %call.i) #1, !dbg !2952
  br label %PyImport_ImportModule.exit, !dbg !2953

PyImport_ImportModule.exit:                       ; preds = %entry, %if.end.i, %if.else.i
  %retval.0.i = phi %struct._object* [ null, %entry ], [ %call1.i, %if.end.i ], [ %call1.i, %if.else.i ], !dbg !2953
  ret %struct._object* %retval.0.i, !dbg !2954
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModuleLevelObject(%struct._object* %name, %struct._object* %given_globals, %struct._object* nocapture readnone %locals, %struct._object* %given_fromlist, i32 %level) #0 {
entry:
  %exception.i = alloca %struct._object*, align 8
  %value.i = alloca %struct._object*, align 8
  %base_tb.i = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !901, metadata !1500), !dbg !2955
  tail call void @llvm.dbg.value(metadata %struct._object* %given_globals, i64 0, metadata !902, metadata !1500), !dbg !2956
  tail call void @llvm.dbg.value(metadata %struct._object* %locals, i64 0, metadata !903, metadata !1500), !dbg !2957
  tail call void @llvm.dbg.value(metadata %struct._object* %given_fromlist, i64 0, metadata !904, metadata !1500), !dbg !2958
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !905, metadata !1500), !dbg !2959
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !906, metadata !1500), !dbg !2960
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !907, metadata !1500), !dbg !2961
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !908, metadata !1500), !dbg !2962
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !909, metadata !1500), !dbg !2963
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !910, metadata !1500), !dbg !2964
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !911, metadata !1500), !dbg !2965
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !912, metadata !1500), !dbg !2966
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !914, metadata !1500), !dbg !2967
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !917, metadata !1500), !dbg !2967
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !918, metadata !1500), !dbg !2967
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !2968, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !916, metadata !1500), !dbg !2967
  %interp4 = getelementptr inbounds i8, i8* %0, i64 16, !dbg !2971
  %1 = bitcast i8* %interp4 to %struct._is**, !dbg !2971
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !2971, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !913, metadata !1500), !dbg !2972
  %cmp = icmp eq %struct._object* %given_globals, null, !dbg !2973
  br i1 %cmp, label %if.then, label %if.else, !dbg !2975

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyDict_New() #1, !dbg !2976
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !911, metadata !1500), !dbg !2965
  %cmp5 = icmp eq %struct._object* %call, null, !dbg !2978
  br i1 %cmp5, label %if.then.592, label %if.end.11, !dbg !2980

if.else:                                          ; preds = %entry
  %cmp7 = icmp sgt i32 %level, 0, !dbg !2981
  br i1 %cmp7, label %land.lhs.true, label %if.end.10, !dbg !2984

land.lhs.true:                                    ; preds = %if.else
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %given_globals, i64 0, i32 1, !dbg !2985
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2985, !tbaa !1538
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 19, !dbg !2985
  %4 = load i64, i64* %tp_flags, align 8, !dbg !2985, !tbaa !1849
  %and = and i64 %4, 536870912, !dbg !2985
  %cmp8 = icmp eq i64 %and, 0, !dbg !2985
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !2987

if.then.9:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2988, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0)) #1, !dbg !2990
  br label %if.then.592, !dbg !2991

if.end.10:                                        ; preds = %land.lhs.true, %if.else
  tail call void @llvm.dbg.value(metadata %struct._object* %given_globals, i64 0, metadata !911, metadata !1500), !dbg !2965
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %given_globals, i64 0, i32 0, !dbg !2992
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !2992, !tbaa !1533
  %inc = add i64 %6, 1, !dbg !2992
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2992, !tbaa !1533
  br label %if.end.11

if.end.11:                                        ; preds = %if.then, %if.end.10
  %globals.0 = phi %struct._object* [ %call, %if.then ], [ %given_globals, %if.end.10 ]
  %cmp12 = icmp eq %struct._object* %given_fromlist, null, !dbg !2993
  br i1 %cmp12, label %if.then.13, label %if.else.18, !dbg !2995

if.then.13:                                       ; preds = %if.end.11
  %call14 = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !2996
  tail call void @llvm.dbg.value(metadata %struct._object* %call14, i64 0, metadata !912, metadata !1500), !dbg !2966
  %cmp15 = icmp eq %struct._object* %call14, null, !dbg !2998
  br i1 %cmp15, label %do.body.554, label %if.end.21, !dbg !3000

if.else.18:                                       ; preds = %if.end.11
  tail call void @llvm.dbg.value(metadata %struct._object* %given_fromlist, i64 0, metadata !912, metadata !1500), !dbg !2966
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %given_fromlist, i64 0, i32 0, !dbg !3001
  %7 = load i64, i64* %ob_refcnt19, align 8, !dbg !3001, !tbaa !1533
  %inc20 = add i64 %7, 1, !dbg !3001
  store i64 %inc20, i64* %ob_refcnt19, align 8, !dbg !3001, !tbaa !1533
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.13, %if.else.18
  %fromlist.0 = phi %struct._object* [ %call14, %if.then.13 ], [ %given_fromlist, %if.else.18 ]
  %cmp22 = icmp eq %struct._object* %name, null, !dbg !3003
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !3005

if.then.23:                                       ; preds = %if.end.21
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3006, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0)) #1, !dbg !3008
  br label %do.body.554, !dbg !3009

if.end.24:                                        ; preds = %if.end.21
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %name, i64 0, i32 1, !dbg !3010
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8, !dbg !3010, !tbaa !1538
  %tp_flags26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 19, !dbg !3010
  %10 = load i64, i64* %tp_flags26, align 8, !dbg !3010, !tbaa !1849
  %and27 = and i64 %10, 268435456, !dbg !3010
  %cmp28 = icmp eq i64 %and27, 0, !dbg !3010
  br i1 %cmp28, label %if.then.29, label %if.else.30, !dbg !3012

if.then.29:                                       ; preds = %if.end.24
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3013, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.44, i64 0, i64 0)) #1, !dbg !3015
  br label %do.body.554, !dbg !3016

if.else.30:                                       ; preds = %if.end.24
  %state = getelementptr inbounds %struct._object, %struct._object* %name, i64 2, !dbg !3017
  %12 = bitcast %struct._object* %state to i32*, !dbg !3017
  %bf.load = load i32, i32* %12, align 4, !dbg !3017
  %bf.clear = and i32 %bf.load, 128, !dbg !3017
  %tobool = icmp eq i32 %bf.clear, 0, !dbg !3017
  br i1 %tobool, label %cond.end, label %if.end.35, !dbg !3017

cond.end:                                         ; preds = %if.else.30
  %call31 = tail call i32 @_PyUnicode_Ready(%struct._object* %name) #1, !dbg !3019
  %cmp32 = icmp slt i32 %call31, 0, !dbg !3021
  br i1 %cmp32, label %do.body.554, label %if.end.35, !dbg !3024

if.end.35:                                        ; preds = %if.else.30, %cond.end
  %cmp36 = icmp slt i32 %level, 0, !dbg !3025
  br i1 %cmp36, label %if.then.37, label %if.else.38, !dbg !3026

if.then.37:                                       ; preds = %if.end.35
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3027, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i64 0, i64 0)) #1, !dbg !3029
  br label %do.body.554, !dbg !3030

if.else.38:                                       ; preds = %if.end.35
  %cmp39 = icmp sgt i32 %level, 0, !dbg !3031
  br i1 %cmp39, label %if.then.40, label %if.else.111, !dbg !3032

if.then.40:                                       ; preds = %if.else.38
  %call41 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %globals.0, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId___package__) #1, !dbg !3033
  tail call void @llvm.dbg.value(metadata %struct._object* %call41, i64 0, metadata !910, metadata !1500), !dbg !2964
  %cmp42 = icmp ne %struct._object* %call41, null, !dbg !3034
  %cmp44 = icmp ne %struct._object* %call41, @_Py_NoneStruct, !dbg !3035
  %or.cond = and i1 %cmp42, %cmp44, !dbg !3036
  br i1 %or.cond, label %if.then.45, label %if.else.54, !dbg !3036

if.then.45:                                       ; preds = %if.then.40
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %call41, i64 0, i32 0, !dbg !3037
  %14 = load i64, i64* %ob_refcnt46, align 8, !dbg !3037, !tbaa !1533
  %inc47 = add i64 %14, 1, !dbg !3037
  store i64 %inc47, i64* %ob_refcnt46, align 8, !dbg !3037, !tbaa !1533
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %call41, i64 0, i32 1, !dbg !3039
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !3039, !tbaa !1538
  %tp_flags49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i64 0, i32 19, !dbg !3039
  %16 = load i64, i64* %tp_flags49, align 8, !dbg !3039, !tbaa !1849
  %and50 = and i64 %16, 268435456, !dbg !3039
  %cmp51 = icmp eq i64 %and50, 0, !dbg !3039
  br i1 %cmp51, label %if.then.52, label %if.end.105, !dbg !3041

if.then.52:                                       ; preds = %if.then.45
  %17 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3042, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0)) #1, !dbg !3044
  br label %do.body.533, !dbg !3045

if.else.54:                                       ; preds = %if.then.40
  %call55 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %globals.0, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId___name__) #1, !dbg !3046
  tail call void @llvm.dbg.value(metadata %struct._object* %call55, i64 0, metadata !910, metadata !1500), !dbg !2964
  %cmp56 = icmp eq %struct._object* %call55, null, !dbg !3047
  br i1 %cmp56, label %if.then.57, label %if.else.58, !dbg !3049

if.then.57:                                       ; preds = %if.else.54
  %18 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !3050, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.47, i64 0, i64 0)) #1, !dbg !3052
  br label %do.body.554, !dbg !3053

if.else.58:                                       ; preds = %if.else.54
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %call55, i64 0, i32 1, !dbg !3054
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !3054, !tbaa !1538
  %tp_flags60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 19, !dbg !3054
  %20 = load i64, i64* %tp_flags60, align 8, !dbg !3054, !tbaa !1849
  %and61 = and i64 %20, 268435456, !dbg !3054
  %cmp62 = icmp eq i64 %and61, 0, !dbg !3054
  br i1 %cmp62, label %if.then.63, label %if.end.65, !dbg !3056

if.then.63:                                       ; preds = %if.else.58
  %21 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !3057, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0)) #1, !dbg !3059
  br label %if.end.65, !dbg !3060

if.end.65:                                        ; preds = %if.else.58, %if.then.63
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %call55, i64 0, i32 0, !dbg !3061
  %22 = load i64, i64* %ob_refcnt66, align 8, !dbg !3061, !tbaa !1533
  %inc67 = add i64 %22, 1, !dbg !3061
  store i64 %inc67, i64* %ob_refcnt66, align 8, !dbg !3061, !tbaa !1533
  %call68 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %globals.0, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId___path__) #1, !dbg !3062
  %cmp69 = icmp eq %struct._object* %call68, null, !dbg !3063
  br i1 %cmp69, label %if.then.70, label %if.end.105, !dbg !3064

if.then.70:                                       ; preds = %if.end.65
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !919, metadata !1500), !dbg !3065
  %call73 = tail call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.single_dot) #1, !dbg !3066
  tail call void @llvm.dbg.value(metadata %struct._object* %call73, i64 0, metadata !927, metadata !1500), !dbg !3067
  %cmp74 = icmp eq %struct._object* %call73, null, !dbg !3068
  br i1 %cmp74, label %do.body.533, label %if.end.76, !dbg !3070

if.end.76:                                        ; preds = %if.then.70
  %call77 = tail call %struct._object* @PyUnicode_RPartition(%struct._object* %call55, %struct._object* %call73) #1, !dbg !3071
  tail call void @llvm.dbg.value(metadata %struct._object* %call77, i64 0, metadata !919, metadata !1500), !dbg !3065
  tail call void @llvm.dbg.value(metadata %struct._object* %call55, i64 0, metadata !928, metadata !1500), !dbg !3072
  %23 = load i64, i64* %ob_refcnt66, align 8, !dbg !3074, !tbaa !1533
  %dec = add i64 %23, -1, !dbg !3074
  store i64 %dec, i64* %ob_refcnt66, align 8, !dbg !3074, !tbaa !1533
  %cmp80 = icmp eq i64 %dec, 0, !dbg !3074
  br i1 %cmp80, label %if.else.82, label %if.end.84, !dbg !3076

if.else.82:                                       ; preds = %if.end.76
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8, !dbg !3077, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !3077
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3077, !tbaa !1539
  tail call void %25(%struct._object* %call55) #1, !dbg !3077
  br label %if.end.84

if.end.84:                                        ; preds = %if.end.76, %if.else.82
  %cmp85 = icmp eq %struct._object* %call77, null, !dbg !3079
  br i1 %cmp85, label %do.body.533, label %if.end.87, !dbg !3081

if.end.87:                                        ; preds = %if.end.84
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %call77, i64 1, i32 1, !dbg !3082
  %arrayidx = bitcast %struct._typeobject** %ob_item to %struct._object**, !dbg !3082
  %26 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !3082, !tbaa !1504
  tail call void @llvm.dbg.value(metadata %struct._object* %26, i64 0, metadata !910, metadata !1500), !dbg !2964
  %ob_refcnt88 = getelementptr inbounds %struct._object, %struct._object* %26, i64 0, i32 0, !dbg !3083
  %27 = load i64, i64* %ob_refcnt88, align 8, !dbg !3083, !tbaa !1533
  %inc89 = add i64 %27, 1, !dbg !3083
  store i64 %inc89, i64* %ob_refcnt88, align 8, !dbg !3083, !tbaa !1533
  tail call void @llvm.dbg.value(metadata %struct._object* %call77, i64 0, metadata !930, metadata !1500), !dbg !3084
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %call77, i64 0, i32 0, !dbg !3086
  %28 = load i64, i64* %ob_refcnt93, align 8, !dbg !3086, !tbaa !1533
  %dec94 = add i64 %28, -1, !dbg !3086
  store i64 %dec94, i64* %ob_refcnt93, align 8, !dbg !3086, !tbaa !1533
  %cmp95 = icmp eq i64 %dec94, 0, !dbg !3086
  br i1 %cmp95, label %if.else.97, label %if.end.105, !dbg !3088

if.else.97:                                       ; preds = %if.end.87
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %call77, i64 0, i32 1, !dbg !3089
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8, !dbg !3089, !tbaa !1538
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i64 0, i32 4, !dbg !3089
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8, !dbg !3089, !tbaa !1539
  tail call void %30(%struct._object* %call77) #1, !dbg !3089
  br label %if.end.105

if.end.105:                                       ; preds = %if.else.97, %if.end.87, %if.then.45, %if.end.65
  %package.1 = phi %struct._object* [ %call41, %if.then.45 ], [ %call55, %if.end.65 ], [ %26, %if.end.87 ], [ %26, %if.else.97 ]
  %modules = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 2, !dbg !3091
  %31 = load %struct._object*, %struct._object** %modules, align 8, !dbg !3091, !tbaa !1775
  %call106 = tail call %struct._object* @PyDict_GetItem(%struct._object* %31, %struct._object* %package.1) #1, !dbg !3093
  %cmp107 = icmp eq %struct._object* %call106, null, !dbg !3094
  br i1 %cmp107, label %if.then.108, label %if.then.120, !dbg !3095

if.then.108:                                      ; preds = %if.end.105
  %32 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !3096, !tbaa !1504
  %call109 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %32, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.49, i64 0, i64 0), %struct._object* %package.1) #1, !dbg !3098
  br label %if.end.525, !dbg !3099

if.else.111:                                      ; preds = %if.else.38
  %33 = getelementptr inbounds %struct._object, %struct._object* %name, i64 1, i32 0, !dbg !3100
  %34 = load i64, i64* %33, align 8, !dbg !3100, !tbaa !3103
  %cmp112 = icmp eq i64 %34, 0, !dbg !3106
  br i1 %cmp112, label %if.then.113, label %if.else.191, !dbg !3107

if.then.113:                                      ; preds = %if.else.111
  %35 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3108, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %35, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i64 0, i64 0)) #1, !dbg !3110
  br label %do.body.554, !dbg !3111

if.then.120:                                      ; preds = %if.end.105
  %36 = getelementptr inbounds %struct._object, %struct._object* %package.1, i64 1, i32 0, !dbg !3112
  %37 = load i64, i64* %36, align 8, !dbg !3112, !tbaa !3103
  tail call void @llvm.dbg.value(metadata i64 %37, i64 0, metadata !932, metadata !1500), !dbg !3113
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !935, metadata !1500), !dbg !3114
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !936, metadata !1500), !dbg !3115
  %cmp125.917 = icmp sgt i32 %level, 1, !dbg !3116
  br i1 %cmp125.917, label %for.body.preheader, label %for.end, !dbg !3119

for.body.preheader:                               ; preds = %if.then.120
  br label %for.body, !dbg !3120

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %last_dot.0919 = phi i64 [ %call126, %for.inc ], [ %37, %for.body.preheader ]
  %level_up.0918 = phi i32 [ %add, %for.inc ], [ 1, %for.body.preheader ]
  %call126 = tail call i64 @PyUnicode_FindChar(%struct._object* %package.1, i32 46, i64 0, i64 %last_dot.0919, i32 -1) #1, !dbg !3120
  tail call void @llvm.dbg.value(metadata i64 %call126, i64 0, metadata !932, metadata !1500), !dbg !3113
  switch i64 %call126, label %for.inc [
    i64 -2, label %if.end.525.loopexit
    i64 -1, label %if.then.131
  ], !dbg !3122

if.then.131:                                      ; preds = %for.body
  %38 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3123, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %38, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.50, i64 0, i64 0)) #1, !dbg !3127
  br label %if.end.525, !dbg !3128

for.inc:                                          ; preds = %for.body
  %add = add nuw nsw i32 %level_up.0918, 1, !dbg !3129
  tail call void @llvm.dbg.value(metadata i32 %add, i64 0, metadata !936, metadata !1500), !dbg !3115
  %cmp125 = icmp slt i32 %add, %level, !dbg !3116
  br i1 %cmp125, label %for.body, label %for.end.loopexit, !dbg !3119

for.end.loopexit:                                 ; preds = %for.inc
  %call126.lcssa932 = phi i64 [ %call126, %for.inc ]
  br label %for.end, !dbg !3130

for.end:                                          ; preds = %for.end.loopexit, %if.then.120
  %last_dot.0.lcssa = phi i64 [ %37, %if.then.120 ], [ %call126.lcssa932, %for.end.loopexit ]
  %call134 = tail call %struct._object* @PyUnicode_Substring(%struct._object* %package.1, i64 0, i64 %last_dot.0.lcssa) #1, !dbg !3130
  tail call void @llvm.dbg.value(metadata %struct._object* %call134, i64 0, metadata !935, metadata !1500), !dbg !3114
  %cmp135 = icmp eq %struct._object* %call134, null, !dbg !3131
  br i1 %cmp135, label %if.end.525, label %if.end.137, !dbg !3133

if.end.137:                                       ; preds = %for.end
  %39 = getelementptr inbounds %struct._object, %struct._object* %name, i64 1, i32 0, !dbg !3134
  %40 = load i64, i64* %39, align 8, !dbg !3134, !tbaa !3103
  %cmp139 = icmp sgt i64 %40, 0, !dbg !3135
  br i1 %cmp139, label %if.then.140, label %if.end.194, !dbg !3136

if.then.140:                                      ; preds = %if.end.137
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !940, metadata !1500), !dbg !3137
  %call144 = tail call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.single_dot) #1, !dbg !3138
  tail call void @llvm.dbg.value(metadata %struct._object* %call144, i64 0, metadata !937, metadata !1500), !dbg !3139
  %call145 = tail call %struct._object* (i64, ...) @PyTuple_Pack(i64 2, %struct._object* %call134, %struct._object* %name) #1, !dbg !3140
  tail call void @llvm.dbg.value(metadata %struct._object* %call145, i64 0, metadata !940, metadata !1500), !dbg !3137
  tail call void @llvm.dbg.value(metadata %struct._object* %call134, i64 0, metadata !941, metadata !1500), !dbg !3141
  %ob_refcnt149 = getelementptr inbounds %struct._object, %struct._object* %call134, i64 0, i32 0, !dbg !3143
  %41 = load i64, i64* %ob_refcnt149, align 8, !dbg !3143, !tbaa !1533
  %dec150 = add i64 %41, -1, !dbg !3143
  store i64 %dec150, i64* %ob_refcnt149, align 8, !dbg !3143, !tbaa !1533
  %cmp151 = icmp eq i64 %dec150, 0, !dbg !3143
  br i1 %cmp151, label %if.else.153, label %if.end.156, !dbg !3145

if.else.153:                                      ; preds = %if.then.140
  %ob_type154 = getelementptr inbounds %struct._object, %struct._object* %call134, i64 0, i32 1, !dbg !3146
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type154, align 8, !dbg !3146, !tbaa !1538
  %tp_dealloc155 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !3146
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc155, align 8, !dbg !3146, !tbaa !1539
  tail call void %43(%struct._object* %call134) #1, !dbg !3146
  br label %if.end.156

if.end.156:                                       ; preds = %if.then.140, %if.else.153
  %cmp159 = icmp eq %struct._object* %call144, null, !dbg !3148
  %cmp160 = icmp eq %struct._object* %call145, null, !dbg !3150
  %or.cond605 = or i1 %cmp159, %cmp160, !dbg !3151
  br i1 %or.cond605, label %if.end.525, label %if.end.162, !dbg !3151

if.end.162:                                       ; preds = %if.end.156
  %call163 = tail call %struct._object* @PyUnicode_Join(%struct._object* %call144, %struct._object* %call145) #1, !dbg !3152
  tail call void @llvm.dbg.value(metadata %struct._object* %call163, i64 0, metadata !906, metadata !1500), !dbg !2960
  tail call void @llvm.dbg.value(metadata %struct._object* %call145, i64 0, metadata !943, metadata !1500), !dbg !3153
  %ob_refcnt167 = getelementptr inbounds %struct._object, %struct._object* %call145, i64 0, i32 0, !dbg !3155
  %44 = load i64, i64* %ob_refcnt167, align 8, !dbg !3155, !tbaa !1533
  %dec168 = add i64 %44, -1, !dbg !3155
  store i64 %dec168, i64* %ob_refcnt167, align 8, !dbg !3155, !tbaa !1533
  %cmp169 = icmp eq i64 %dec168, 0, !dbg !3155
  br i1 %cmp169, label %if.else.171, label %if.end.174, !dbg !3157

if.else.171:                                      ; preds = %if.end.162
  %ob_type172 = getelementptr inbounds %struct._object, %struct._object* %call145, i64 0, i32 1, !dbg !3158
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type172, align 8, !dbg !3158, !tbaa !1538
  %tp_dealloc173 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !3158
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc173, align 8, !dbg !3158, !tbaa !1539
  tail call void %46(%struct._object* %call145) #1, !dbg !3158
  br label %if.end.174

if.end.174:                                       ; preds = %if.end.162, %if.else.171
  %cmp177 = icmp eq %struct._object* %call163, null, !dbg !3160
  br i1 %cmp177, label %if.end.525, label %if.end.194

if.else.191:                                      ; preds = %if.else.111
  tail call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !910, metadata !1500), !dbg !2964
  %47 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3162, !tbaa !1533
  %inc116 = add i64 %47, 1, !dbg !3162
  store i64 %inc116, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3162, !tbaa !1533
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !906, metadata !1500), !dbg !2960
  %ob_refcnt192 = getelementptr inbounds %struct._object, %struct._object* %name, i64 0, i32 0, !dbg !3163
  %48 = load i64, i64* %ob_refcnt192, align 8, !dbg !3163, !tbaa !1533
  %inc193 = add i64 %48, 1, !dbg !3163
  store i64 %inc193, i64* %ob_refcnt192, align 8, !dbg !3163, !tbaa !1533
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.174, %if.end.137, %if.else.191
  %package.2844 = phi %struct._object* [ @_Py_NoneStruct, %if.else.191 ], [ %package.1, %if.end.137 ], [ %package.1, %if.end.174 ]
  %abs_name.3 = phi %struct._object* [ %name, %if.else.191 ], [ %call134, %if.end.137 ], [ %call163, %if.end.174 ]
  tail call void @_PyImport_AcquireLock(), !dbg !3165
  %ob_type195 = getelementptr inbounds %struct._object, %struct._object* %globals.0, i64 0, i32 1, !dbg !3166
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type195, align 8, !dbg !3166, !tbaa !1538
  %tp_flags196 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i64 0, i32 19, !dbg !3166
  %50 = load i64, i64* %tp_flags196, align 8, !dbg !3166, !tbaa !1849
  %and197 = and i64 %50, 536870912, !dbg !3166
  %cmp198 = icmp eq i64 %and197, 0, !dbg !3166
  br i1 %cmp198, label %if.then.203, label %if.end.201, !dbg !3168

if.end.201:                                       ; preds = %if.end.194
  %call200 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %globals.0, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId___import__) #1, !dbg !3169
  tail call void @llvm.dbg.value(metadata %struct._object* %call200, i64 0, metadata !907, metadata !1500), !dbg !2961
  %cmp202 = icmp eq %struct._object* %call200, null, !dbg !3171
  br i1 %cmp202, label %if.then.203, label %if.end.208, !dbg !3173

if.then.203:                                      ; preds = %if.end.194, %if.end.201
  %builtins = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 5, !dbg !3174
  %51 = load %struct._object*, %struct._object** %builtins, align 8, !dbg !3174, !tbaa !1510
  %call204 = tail call %struct._object* @_PyDict_GetItemId(%struct._object* %51, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId___import__) #1, !dbg !3176
  tail call void @llvm.dbg.value(metadata %struct._object* %call204, i64 0, metadata !907, metadata !1500), !dbg !2961
  %cmp205 = icmp eq %struct._object* %call204, null, !dbg !3177
  br i1 %cmp205, label %if.then.206, label %if.end.208, !dbg !3179

if.then.206:                                      ; preds = %if.then.203
  %52 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !3180, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.51, i64 0, i64 0)) #1, !dbg !3182
  br label %error_with_unlock, !dbg !3183

if.end.208:                                       ; preds = %if.then.203, %if.end.201
  %builtins_import.1 = phi %struct._object* [ %call204, %if.then.203 ], [ %call200, %if.end.201 ]
  %ob_refcnt209 = getelementptr inbounds %struct._object, %struct._object* %builtins_import.1, i64 0, i32 0, !dbg !3184
  %53 = load i64, i64* %ob_refcnt209, align 8, !dbg !3184, !tbaa !1533
  %inc210 = add i64 %53, 1, !dbg !3184
  store i64 %inc210, i64* %ob_refcnt209, align 8, !dbg !3184, !tbaa !1533
  %modules211 = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 2, !dbg !3185
  %54 = load %struct._object*, %struct._object** %modules211, align 8, !dbg !3185, !tbaa !1775
  %call212 = tail call %struct._object* @PyDict_GetItem(%struct._object* %54, %struct._object* %abs_name.3) #1, !dbg !3186
  tail call void @llvm.dbg.value(metadata %struct._object* %call212, i64 0, metadata !909, metadata !1500), !dbg !2963
  %cmp213 = icmp eq %struct._object* %call212, @_Py_NoneStruct, !dbg !3187
  br i1 %cmp213, label %if.then.214, label %if.else.235, !dbg !3188

if.then.214:                                      ; preds = %if.end.208
  %call216 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.52, i64 0, i64 0), %struct._object* %abs_name.3) #1, !dbg !3189
  tail call void @llvm.dbg.value(metadata %struct._object* %call216, i64 0, metadata !945, metadata !1500), !dbg !3190
  %cmp217 = icmp eq %struct._object* %call216, null, !dbg !3191
  br i1 %cmp217, label %error_with_unlock, label %if.then.218, !dbg !3192

if.then.218:                                      ; preds = %if.then.214
  %call219 = tail call %struct._object* @PyErr_SetImportError(%struct._object* %call216, %struct._object* %abs_name.3, %struct._object* null) #1, !dbg !3193
  tail call void @llvm.dbg.value(metadata %struct._object* %call216, i64 0, metadata !948, metadata !1500), !dbg !3194
  %ob_refcnt223 = getelementptr inbounds %struct._object, %struct._object* %call216, i64 0, i32 0, !dbg !3196
  %55 = load i64, i64* %ob_refcnt223, align 8, !dbg !3196, !tbaa !1533
  %dec224 = add i64 %55, -1, !dbg !3196
  store i64 %dec224, i64* %ob_refcnt223, align 8, !dbg !3196, !tbaa !1533
  %cmp225 = icmp eq i64 %dec224, 0, !dbg !3196
  br i1 %cmp225, label %if.else.227, label %error_with_unlock, !dbg !3198

if.else.227:                                      ; preds = %if.then.218
  %ob_type228 = getelementptr inbounds %struct._object, %struct._object* %call216, i64 0, i32 1, !dbg !3199
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type228, align 8, !dbg !3199, !tbaa !1538
  %tp_dealloc229 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i64 0, i32 4, !dbg !3199
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc229, align 8, !dbg !3199, !tbaa !1539
  tail call void %57(%struct._object* %call216) #1, !dbg !3199
  br label %error_with_unlock

if.else.235:                                      ; preds = %if.end.208
  %cmp236 = icmp eq %struct._object* %call212, null, !dbg !3201
  br i1 %cmp236, label %if.else.312, label %if.then.237, !dbg !3202

if.then.237:                                      ; preds = %if.else.235
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !952, metadata !1500), !dbg !3203
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !956, metadata !1500), !dbg !3204
  %ob_refcnt241 = getelementptr inbounds %struct._object, %struct._object* %call212, i64 0, i32 0, !dbg !3205
  %58 = load i64, i64* %ob_refcnt241, align 8, !dbg !3205, !tbaa !1533
  %inc242 = add i64 %58, 1, !dbg !3205
  store i64 %inc242, i64* %ob_refcnt241, align 8, !dbg !3205, !tbaa !1533
  %call243 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call212, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId___spec__) #1, !dbg !3206
  tail call void @llvm.dbg.value(metadata %struct._object* %call243, i64 0, metadata !955, metadata !1500), !dbg !3207
  %cmp244 = icmp eq %struct._object* %call243, null, !dbg !3208
  br i1 %cmp244, label %if.then.262, label %if.then.245, !dbg !3209

if.then.245:                                      ; preds = %if.then.237
  %call246 = tail call %struct._object* @_PyObject_GetAttrId(%struct._object* %call243, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId__initializing) #1, !dbg !3210
  tail call void @llvm.dbg.value(metadata %struct._object* %call246, i64 0, metadata !952, metadata !1500), !dbg !3203
  tail call void @llvm.dbg.value(metadata %struct._object* %call243, i64 0, metadata !957, metadata !1500), !dbg !3211
  %ob_refcnt250 = getelementptr inbounds %struct._object, %struct._object* %call243, i64 0, i32 0, !dbg !3213
  %59 = load i64, i64* %ob_refcnt250, align 8, !dbg !3213, !tbaa !1533
  %dec251 = add i64 %59, -1, !dbg !3213
  store i64 %dec251, i64* %ob_refcnt250, align 8, !dbg !3213, !tbaa !1533
  %cmp252 = icmp eq i64 %dec251, 0, !dbg !3213
  br i1 %cmp252, label %if.else.254, label %if.end.260, !dbg !3215

if.else.254:                                      ; preds = %if.then.245
  %ob_type255 = getelementptr inbounds %struct._object, %struct._object* %call243, i64 0, i32 1, !dbg !3216
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type255, align 8, !dbg !3216, !tbaa !1538
  %tp_dealloc256 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !3216
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc256, align 8, !dbg !3216, !tbaa !1539
  tail call void %61(%struct._object* %call243) #1, !dbg !3216
  br label %if.end.260

if.end.260:                                       ; preds = %if.else.254, %if.then.245
  %cmp261 = icmp eq %struct._object* %call246, null, !dbg !3218
  br i1 %cmp261, label %if.then.262, label %if.else.263, !dbg !3219

if.then.262:                                      ; preds = %if.then.237, %if.end.260
  tail call void @PyErr_Clear() #1, !dbg !3220
  br label %if.else.301, !dbg !3220

if.else.263:                                      ; preds = %if.end.260
  %call264 = tail call i32 @PyObject_IsTrue(%struct._object* %call246) #1, !dbg !3221
  tail call void @llvm.dbg.value(metadata i32 %call264, i64 0, metadata !956, metadata !1500), !dbg !3204
  tail call void @llvm.dbg.value(metadata %struct._object* %call246, i64 0, metadata !961, metadata !1500), !dbg !3222
  %ob_refcnt268 = getelementptr inbounds %struct._object, %struct._object* %call246, i64 0, i32 0, !dbg !3224
  %62 = load i64, i64* %ob_refcnt268, align 8, !dbg !3224, !tbaa !1533
  %dec269 = add i64 %62, -1, !dbg !3224
  store i64 %dec269, i64* %ob_refcnt268, align 8, !dbg !3224, !tbaa !1533
  %cmp270 = icmp eq i64 %dec269, 0, !dbg !3224
  br i1 %cmp270, label %if.else.272, label %if.end.275, !dbg !3226

if.else.272:                                      ; preds = %if.else.263
  %ob_type273 = getelementptr inbounds %struct._object, %struct._object* %call246, i64 0, i32 1, !dbg !3227
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type273, align 8, !dbg !3227, !tbaa !1538
  %tp_dealloc274 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i64 0, i32 4, !dbg !3227
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc274, align 8, !dbg !3227, !tbaa !1539
  tail call void %64(%struct._object* %call246) #1, !dbg !3227
  br label %if.end.275

if.end.275:                                       ; preds = %if.else.263, %if.else.272
  %cmp278 = icmp eq i32 %call264, -1, !dbg !3229
  br i1 %cmp278, label %if.then.279, label %if.end.281, !dbg !3231

if.then.279:                                      ; preds = %if.end.275
  tail call void @PyErr_Clear() #1, !dbg !3232
  br label %if.else.301, !dbg !3232

if.end.281:                                       ; preds = %if.end.275
  %cmp282 = icmp sgt i32 %call264, 0, !dbg !3233
  br i1 %cmp282, label %if.then.283, label %if.else.301, !dbg !3234

if.then.283:                                      ; preds = %if.end.281
  %importlib = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 6, !dbg !3235
  %65 = load %struct._object*, %struct._object** %importlib, align 8, !dbg !3235, !tbaa !1998
  %call284 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %65, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId__lock_unlock_module, %struct._object* %abs_name.3, i8* null) #1, !dbg !3236
  tail call void @llvm.dbg.value(metadata %struct._object* %call284, i64 0, metadata !952, metadata !1500), !dbg !3203
  %cmp285 = icmp eq %struct._object* %call284, null, !dbg !3237
  br i1 %cmp285, label %do.body.466, label %do.body.288, !dbg !3239

do.body.288:                                      ; preds = %if.then.283
  tail call void @llvm.dbg.value(metadata %struct._object* %call284, i64 0, metadata !965, metadata !1500), !dbg !3240
  %ob_refcnt291 = getelementptr inbounds %struct._object, %struct._object* %call284, i64 0, i32 0, !dbg !3242
  %66 = load i64, i64* %ob_refcnt291, align 8, !dbg !3242, !tbaa !1533
  %dec292 = add i64 %66, -1, !dbg !3242
  store i64 %dec292, i64* %ob_refcnt291, align 8, !dbg !3242, !tbaa !1533
  %cmp293 = icmp eq i64 %dec292, 0, !dbg !3242
  br i1 %cmp293, label %if.else.295, label %if.end.319, !dbg !3244

if.else.295:                                      ; preds = %do.body.288
  %ob_type296 = getelementptr inbounds %struct._object, %struct._object* %call284, i64 0, i32 1, !dbg !3245
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type296, align 8, !dbg !3245, !tbaa !1538
  %tp_dealloc297 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i64 0, i32 4, !dbg !3245
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc297, align 8, !dbg !3245, !tbaa !1539
  tail call void %68(%struct._object* %call284) #1, !dbg !3245
  br label %if.end.319

if.else.301:                                      ; preds = %if.then.279, %if.then.262, %if.end.281
  %call.i.826 = tail call i64 @PyThread_get_thread_ident() #1, !dbg !3247
  tail call void @llvm.dbg.value(metadata i64 %call.i.826, i64 0, metadata !597, metadata !1500) #1, !dbg !3251
  %cmp.i.827 = icmp eq i64 %call.i.826, -1, !dbg !3252
  %69 = load i8*, i8** @import_lock, align 8, !dbg !3253
  %cmp1.i = icmp eq i8* %69, null, !dbg !3254
  %or.cond.i.828 = or i1 %cmp.i.827, %cmp1.i, !dbg !3255
  br i1 %or.cond.i.828, label %if.end.319, label %if.end.i.829, !dbg !3255

if.end.i.829:                                     ; preds = %if.else.301
  %70 = load i64, i64* @import_lock_thread, align 8, !dbg !3256, !tbaa !1686
  %cmp2.i = icmp eq i64 %70, %call.i.826, !dbg !3257
  br i1 %cmp2.i, label %if.end.4.i, label %if.then.304, !dbg !3258

if.end.4.i:                                       ; preds = %if.end.i.829
  %71 = load i32, i32* @import_lock_level, align 4, !dbg !3259, !tbaa !1591
  %dec.i.830 = add i32 %71, -1, !dbg !3259
  store i32 %dec.i.830, i32* @import_lock_level, align 4, !dbg !3259, !tbaa !1591
  %cmp5.i = icmp eq i32 %dec.i.830, 0, !dbg !3260
  br i1 %cmp5.i, label %if.then.6.i, label %if.end.319, !dbg !3261

if.then.6.i:                                      ; preds = %if.end.4.i
  store i64 -1, i64* @import_lock_thread, align 8, !dbg !3262, !tbaa !1686
  tail call void @PyThread_release_lock(i8* %69) #1, !dbg !3263
  br label %if.end.319, !dbg !3264

if.then.304:                                      ; preds = %if.end.i.829
  %72 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3265, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0)) #1, !dbg !3267
  br label %do.body.466, !dbg !3268

if.else.312:                                      ; preds = %if.else.235
  %importlib313 = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 6, !dbg !3269
  %73 = load %struct._object*, %struct._object** %importlib313, align 8, !dbg !3269, !tbaa !1998
  %call314 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %73, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId__find_and_load, %struct._object* %abs_name.3, %struct._object* %builtins_import.1, i8* null) #1, !dbg !3271
  tail call void @llvm.dbg.value(metadata %struct._object* %call314, i64 0, metadata !909, metadata !1500), !dbg !2963
  %cmp315 = icmp eq %struct._object* %call314, null, !dbg !3272
  br i1 %cmp315, label %do.body.470, label %if.end.319, !dbg !3274

if.end.319:                                       ; preds = %if.end.4.i, %if.then.6.i, %if.else.301, %do.body.288, %if.else.295, %if.else.312
  %mod.0 = phi %struct._object* [ %call314, %if.else.312 ], [ %call212, %if.else.295 ], [ %call212, %do.body.288 ], [ %call212, %if.else.301 ], [ %call212, %if.then.6.i ], [ %call212, %if.end.4.i ]
  %call320 = tail call i32 @PyObject_Not(%struct._object* %fromlist.0) #1, !dbg !3275
  %tobool321 = icmp eq i32 %call320, 0, !dbg !3275
  br i1 %tobool321, label %if.else.457, label %if.then.322, !dbg !3276

if.then.322:                                      ; preds = %if.end.319
  %cmp323 = icmp eq i32 %level, 0, !dbg !3277
  br i1 %cmp323, label %if.then.327, label %lor.lhs.false.324, !dbg !3278

lor.lhs.false.324:                                ; preds = %if.then.322
  %74 = getelementptr inbounds %struct._object, %struct._object* %name, i64 1, i32 0, !dbg !3279
  %75 = load i64, i64* %74, align 8, !dbg !3279, !tbaa !3103
  %cmp326 = icmp sgt i64 %75, 0, !dbg !3281
  br i1 %cmp326, label %if.then.327, label %if.else.453, !dbg !3282

if.then.327:                                      ; preds = %lor.lhs.false.324, %if.then.322
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !969, metadata !1500), !dbg !3283
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !974, metadata !1500), !dbg !3284
  %call333 = tail call %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.single_dot) #1, !dbg !3285
  tail call void @llvm.dbg.value(metadata %struct._object* %call333, i64 0, metadata !975, metadata !1500), !dbg !3286
  %cmp334 = icmp eq %struct._object* %call333, null, !dbg !3287
  br i1 %cmp334, label %do.body.466, label %if.end.336, !dbg !3289

if.end.336:                                       ; preds = %if.then.327
  %call337 = tail call %struct._object* @PyUnicode_Partition(%struct._object* %name, %struct._object* %call333) #1, !dbg !3290
  tail call void @llvm.dbg.value(metadata %struct._object* %call337, i64 0, metadata !974, metadata !1500), !dbg !3284
  %cmp338 = icmp eq %struct._object* %call337, null, !dbg !3291
  br i1 %cmp338, label %do.body.466, label %if.end.340, !dbg !3293

if.end.340:                                       ; preds = %if.end.336
  %ob_item341 = getelementptr inbounds %struct._object, %struct._object* %call337, i64 1, i32 1, !dbg !3294
  %arrayidx342 = getelementptr %struct._typeobject*, %struct._typeobject** %ob_item341, i64 1, !dbg !3294
  %76 = bitcast %struct._typeobject** %arrayidx342 to %struct.PyASCIIObject**, !dbg !3294
  %77 = load %struct.PyASCIIObject*, %struct.PyASCIIObject** %76, align 8, !dbg !3294, !tbaa !1504
  %length343 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %77, i64 0, i32 1, !dbg !3294
  %78 = load i64, i64* %length343, align 8, !dbg !3294, !tbaa !3103
  %cmp344 = icmp eq i64 %78, 0, !dbg !3295
  br i1 %cmp344, label %do.body.346, label %if.end.361, !dbg !3296

do.body.346:                                      ; preds = %if.end.340
  tail call void @llvm.dbg.value(metadata %struct._object* %call337, i64 0, metadata !976, metadata !1500), !dbg !3297
  %ob_refcnt349 = getelementptr inbounds %struct._object, %struct._object* %call337, i64 0, i32 0, !dbg !3299
  %79 = load i64, i64* %ob_refcnt349, align 8, !dbg !3299, !tbaa !1533
  %dec350 = add i64 %79, -1, !dbg !3299
  store i64 %dec350, i64* %ob_refcnt349, align 8, !dbg !3299, !tbaa !1533
  %cmp351 = icmp eq i64 %dec350, 0, !dbg !3299
  br i1 %cmp351, label %if.else.353, label %if.end.356, !dbg !3301

if.else.353:                                      ; preds = %do.body.346
  %ob_type354 = getelementptr inbounds %struct._object, %struct._object* %call337, i64 0, i32 1, !dbg !3302
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type354, align 8, !dbg !3302, !tbaa !1538
  %tp_dealloc355 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i64 0, i32 4, !dbg !3302
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc355, align 8, !dbg !3302, !tbaa !1539
  tail call void %81(%struct._object* %call337) #1, !dbg !3302
  br label %if.end.356

if.end.356:                                       ; preds = %do.body.346, %if.else.353
  tail call void @llvm.dbg.value(metadata %struct._object* %mod.0, i64 0, metadata !908, metadata !1500), !dbg !2962
  %ob_refcnt359 = getelementptr inbounds %struct._object, %struct._object* %mod.0, i64 0, i32 0, !dbg !3304
  %82 = load i64, i64* %ob_refcnt359, align 8, !dbg !3304, !tbaa !1533
  %inc360 = add i64 %82, 1, !dbg !3304
  store i64 %inc360, i64* %ob_refcnt359, align 8, !dbg !3304, !tbaa !1533
  br label %do.body.466, !dbg !3305

if.end.361:                                       ; preds = %if.end.340
  %arrayidx363 = bitcast %struct._typeobject** %ob_item341 to %struct._object**, !dbg !3306
  %83 = load %struct._object*, %struct._object** %arrayidx363, align 8, !dbg !3306, !tbaa !1504
  tail call void @llvm.dbg.value(metadata %struct._object* %83, i64 0, metadata !969, metadata !1500), !dbg !3283
  %ob_refcnt364 = getelementptr inbounds %struct._object, %struct._object* %83, i64 0, i32 0, !dbg !3307
  %84 = load i64, i64* %ob_refcnt364, align 8, !dbg !3307, !tbaa !1533
  %inc365 = add i64 %84, 1, !dbg !3307
  store i64 %inc365, i64* %ob_refcnt364, align 8, !dbg !3307, !tbaa !1533
  tail call void @llvm.dbg.value(metadata %struct._object* %call337, i64 0, metadata !980, metadata !1500), !dbg !3308
  %ob_refcnt369 = getelementptr inbounds %struct._object, %struct._object* %call337, i64 0, i32 0, !dbg !3310
  %85 = load i64, i64* %ob_refcnt369, align 8, !dbg !3310, !tbaa !1533
  %dec370 = add i64 %85, -1, !dbg !3310
  store i64 %dec370, i64* %ob_refcnt369, align 8, !dbg !3310, !tbaa !1533
  %cmp371 = icmp eq i64 %dec370, 0, !dbg !3310
  br i1 %cmp371, label %if.else.373, label %if.end.376, !dbg !3312

if.else.373:                                      ; preds = %if.end.361
  %ob_type374 = getelementptr inbounds %struct._object, %struct._object* %call337, i64 0, i32 1, !dbg !3313
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type374, align 8, !dbg !3313, !tbaa !1538
  %tp_dealloc375 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i64 0, i32 4, !dbg !3313
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc375, align 8, !dbg !3313, !tbaa !1539
  tail call void %87(%struct._object* %call337) #1, !dbg !3313
  br label %if.end.376

if.end.376:                                       ; preds = %if.end.361, %if.else.373
  br i1 %cmp323, label %if.then.380, label %if.else.395, !dbg !3315

if.then.380:                                      ; preds = %if.end.376
  %call381 = tail call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %builtins_import.1, %struct._object* %83, i8* null) #1, !dbg !3316
  tail call void @llvm.dbg.value(metadata %struct._object* %call381, i64 0, metadata !908, metadata !1500), !dbg !2962
  tail call void @llvm.dbg.value(metadata %struct._object* %83, i64 0, metadata !982, metadata !1500), !dbg !3317
  %88 = load i64, i64* %ob_refcnt364, align 8, !dbg !3319, !tbaa !1533
  %dec386 = add i64 %88, -1, !dbg !3319
  store i64 %dec386, i64* %ob_refcnt364, align 8, !dbg !3319, !tbaa !1533
  %cmp387 = icmp eq i64 %dec386, 0, !dbg !3319
  br i1 %cmp387, label %if.else.389, label %do.body.466, !dbg !3321

if.else.389:                                      ; preds = %if.then.380
  %ob_type390 = getelementptr inbounds %struct._object, %struct._object* %83, i64 0, i32 1, !dbg !3322
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type390, align 8, !dbg !3322, !tbaa !1538
  %tp_dealloc391 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i64 0, i32 4, !dbg !3322
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc391, align 8, !dbg !3322, !tbaa !1539
  tail call void %90(%struct._object* %83) #1, !dbg !3322
  br label %do.body.466

if.else.395:                                      ; preds = %if.end.376
  %91 = getelementptr inbounds %struct._object, %struct._object* %name, i64 1, i32 0, !dbg !3324
  %92 = load i64, i64* %91, align 8, !dbg !3324, !tbaa !3103
  %93 = getelementptr inbounds %struct._object, %struct._object* %83, i64 1, i32 0, !dbg !3325
  %94 = load i64, i64* %93, align 8, !dbg !3325, !tbaa !3103
  %95 = getelementptr inbounds %struct._object, %struct._object* %abs_name.3, i64 1, i32 0, !dbg !3326
  %96 = load i64, i64* %95, align 8, !dbg !3326, !tbaa !3103
  tail call void @llvm.dbg.value(metadata i64 %96, i64 0, metadata !988, metadata !1500), !dbg !3327
  %sub825 = sub i64 %94, %92, !dbg !3328
  %sub402 = add i64 %sub825, %96, !dbg !3328
  %call403 = tail call %struct._object* @PyUnicode_Substring(%struct._object* %abs_name.3, i64 0, i64 %sub402) #1, !dbg !3329
  tail call void @llvm.dbg.value(metadata %struct._object* %call403, i64 0, metadata !989, metadata !1500), !dbg !3330
  tail call void @llvm.dbg.value(metadata %struct._object* %83, i64 0, metadata !990, metadata !1500), !dbg !3331
  %97 = load i64, i64* %ob_refcnt364, align 8, !dbg !3333, !tbaa !1533
  %dec408 = add i64 %97, -1, !dbg !3333
  store i64 %dec408, i64* %ob_refcnt364, align 8, !dbg !3333, !tbaa !1533
  %cmp409 = icmp eq i64 %dec408, 0, !dbg !3333
  br i1 %cmp409, label %if.else.411, label %if.end.414, !dbg !3335

if.else.411:                                      ; preds = %if.else.395
  %ob_type412 = getelementptr inbounds %struct._object, %struct._object* %83, i64 0, i32 1, !dbg !3336
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type412, align 8, !dbg !3336, !tbaa !1538
  %tp_dealloc413 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i64 0, i32 4, !dbg !3336
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc413, align 8, !dbg !3336, !tbaa !1539
  tail call void %99(%struct._object* %83) #1, !dbg !3336
  br label %if.end.414

if.end.414:                                       ; preds = %if.else.395, %if.else.411
  %cmp417 = icmp eq %struct._object* %call403, null, !dbg !3338
  br i1 %cmp417, label %do.body.466, label %if.end.419, !dbg !3340

if.end.419:                                       ; preds = %if.end.414
  %100 = load %struct._object*, %struct._object** %modules211, align 8, !dbg !3341, !tbaa !1775
  %call421 = tail call %struct._object* @PyDict_GetItem(%struct._object* %100, %struct._object* %call403) #1, !dbg !3342
  tail call void @llvm.dbg.value(metadata %struct._object* %call421, i64 0, metadata !908, metadata !1500), !dbg !2962
  %cmp422 = icmp eq %struct._object* %call421, null, !dbg !3343
  br i1 %cmp422, label %if.then.423, label %if.else.425, !dbg !3345

if.then.423:                                      ; preds = %if.end.419
  %101 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8, !dbg !3346, !tbaa !1504
  %call424 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.54, i64 0, i64 0), %struct._object* %call403) #1, !dbg !3348
  br label %do.body.429, !dbg !3349

if.else.425:                                      ; preds = %if.end.419
  %ob_refcnt426 = getelementptr inbounds %struct._object, %struct._object* %call421, i64 0, i32 0, !dbg !3350
  %102 = load i64, i64* %ob_refcnt426, align 8, !dbg !3350, !tbaa !1533
  %inc427 = add i64 %102, 1, !dbg !3350
  store i64 %inc427, i64* %ob_refcnt426, align 8, !dbg !3350, !tbaa !1533
  br label %do.body.429

do.body.429:                                      ; preds = %if.then.423, %if.else.425
  tail call void @llvm.dbg.value(metadata %struct._object* %call403, i64 0, metadata !992, metadata !1500), !dbg !3352
  %ob_refcnt432 = getelementptr inbounds %struct._object, %struct._object* %call403, i64 0, i32 0, !dbg !3354
  %103 = load i64, i64* %ob_refcnt432, align 8, !dbg !3354, !tbaa !1533
  %dec433 = add i64 %103, -1, !dbg !3354
  store i64 %dec433, i64* %ob_refcnt432, align 8, !dbg !3354, !tbaa !1533
  %cmp434 = icmp eq i64 %dec433, 0, !dbg !3354
  br i1 %cmp434, label %if.else.436, label %do.body.466, !dbg !3356

if.else.436:                                      ; preds = %do.body.429
  %ob_type437 = getelementptr inbounds %struct._object, %struct._object* %call403, i64 0, i32 1, !dbg !3357
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type437, align 8, !dbg !3357, !tbaa !1538
  %tp_dealloc438 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i64 0, i32 4, !dbg !3357
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc438, align 8, !dbg !3357, !tbaa !1539
  tail call void %105(%struct._object* %call403) #1, !dbg !3357
  br label %do.body.466

if.else.453:                                      ; preds = %lor.lhs.false.324
  tail call void @llvm.dbg.value(metadata %struct._object* %mod.0, i64 0, metadata !908, metadata !1500), !dbg !2962
  %ob_refcnt454 = getelementptr inbounds %struct._object, %struct._object* %mod.0, i64 0, i32 0, !dbg !3359
  %106 = load i64, i64* %ob_refcnt454, align 8, !dbg !3359, !tbaa !1533
  %inc455 = add i64 %106, 1, !dbg !3359
  store i64 %inc455, i64* %ob_refcnt454, align 8, !dbg !3359, !tbaa !1533
  br label %do.body.466

if.else.457:                                      ; preds = %if.end.319
  %importlib458 = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 6, !dbg !3361
  %107 = load %struct._object*, %struct._object** %importlib458, align 8, !dbg !3361, !tbaa !1998
  %call459 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, ...) @_PyObject_CallMethodIdObjArgs(%struct._object* %107, %struct._Py_Identifier* nonnull @PyImport_ImportModuleLevelObject.PyId__handle_fromlist, %struct._object* %mod.0, %struct._object* %fromlist.0, %struct._object* %builtins_import.1, i8* null) #1, !dbg !3363
  tail call void @llvm.dbg.value(metadata %struct._object* %call459, i64 0, metadata !908, metadata !1500), !dbg !2962
  br label %do.body.466

error_with_unlock:                                ; preds = %if.then.214, %if.then.218, %if.else.227, %if.then.206
  %builtins_import.2 = phi %struct._object* [ null, %if.then.206 ], [ %builtins_import.1, %if.else.227 ], [ %builtins_import.1, %if.then.218 ], [ %builtins_import.1, %if.then.214 ]
  %call.i.831 = tail call i64 @PyThread_get_thread_ident() #1, !dbg !3364
  tail call void @llvm.dbg.value(metadata i64 %call.i.831, i64 0, metadata !597, metadata !1500) #1, !dbg !3367
  %cmp.i.832 = icmp eq i64 %call.i.831, -1, !dbg !3368
  %108 = load i8*, i8** @import_lock, align 8, !dbg !3369
  %cmp1.i.833 = icmp eq i8* %108, null, !dbg !3370
  %or.cond.i.834 = or i1 %cmp.i.832, %cmp1.i.833, !dbg !3371
  br i1 %or.cond.i.834, label %do.body.466, label %if.end.i.836, !dbg !3371

if.end.i.836:                                     ; preds = %error_with_unlock
  %109 = load i64, i64* @import_lock_thread, align 8, !dbg !3372, !tbaa !1686
  %cmp2.i.835 = icmp eq i64 %109, %call.i.831, !dbg !3373
  br i1 %cmp2.i.835, label %if.end.4.i.839, label %if.then.464, !dbg !3374

if.end.4.i.839:                                   ; preds = %if.end.i.836
  %110 = load i32, i32* @import_lock_level, align 4, !dbg !3375, !tbaa !1591
  %dec.i.837 = add i32 %110, -1, !dbg !3375
  store i32 %dec.i.837, i32* @import_lock_level, align 4, !dbg !3375, !tbaa !1591
  %cmp5.i.838 = icmp eq i32 %dec.i.837, 0, !dbg !3376
  br i1 %cmp5.i.838, label %if.then.6.i.840, label %do.body.466, !dbg !3377

if.then.6.i.840:                                  ; preds = %if.end.4.i.839
  store i64 -1, i64* @import_lock_thread, align 8, !dbg !3378, !tbaa !1686
  tail call void @PyThread_release_lock(i8* %108) #1, !dbg !3379
  br label %do.body.466, !dbg !3380

if.then.464:                                      ; preds = %if.end.i.836
  %111 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3381, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %111, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0)) #1, !dbg !3383
  br label %do.body.466, !dbg !3384

do.body.466:                                      ; preds = %if.end.4.i.839, %if.then.6.i.840, %error_with_unlock, %if.else.436, %do.body.429, %if.end.414, %if.then.380, %if.else.389, %if.end.336, %if.then.327, %if.end.356, %if.then.304, %if.then.283, %if.else.453, %if.else.457, %if.then.464
  %mod.2 = phi %struct._object* [ null, %if.then.464 ], [ %mod.0, %if.else.453 ], [ %mod.0, %if.else.457 ], [ %call212, %if.then.283 ], [ %call212, %if.then.304 ], [ %mod.0, %if.end.356 ], [ %mod.0, %if.then.327 ], [ %mod.0, %if.end.336 ], [ %mod.0, %if.else.389 ], [ %mod.0, %if.then.380 ], [ %mod.0, %if.end.414 ], [ %mod.0, %do.body.429 ], [ %mod.0, %if.else.436 ], [ null, %error_with_unlock ], [ null, %if.then.6.i.840 ], [ null, %if.end.4.i.839 ]
  %final_mod.3 = phi %struct._object* [ null, %if.then.464 ], [ %mod.0, %if.else.453 ], [ %call459, %if.else.457 ], [ null, %if.then.283 ], [ null, %if.then.304 ], [ %mod.0, %if.end.356 ], [ null, %if.then.327 ], [ null, %if.end.336 ], [ %call381, %if.else.389 ], [ %call381, %if.then.380 ], [ null, %if.end.414 ], [ %call421, %do.body.429 ], [ %call421, %if.else.436 ], [ null, %error_with_unlock ], [ null, %if.then.6.i.840 ], [ null, %if.end.4.i.839 ]
  %builtins_import.3 = phi %struct._object* [ %builtins_import.2, %if.then.464 ], [ %builtins_import.1, %if.else.453 ], [ %builtins_import.1, %if.else.457 ], [ %builtins_import.1, %if.then.283 ], [ %builtins_import.1, %if.then.304 ], [ %builtins_import.1, %if.end.356 ], [ %builtins_import.1, %if.then.327 ], [ %builtins_import.1, %if.end.336 ], [ %builtins_import.1, %if.else.389 ], [ %builtins_import.1, %if.then.380 ], [ %builtins_import.1, %if.end.414 ], [ %builtins_import.1, %do.body.429 ], [ %builtins_import.1, %if.else.436 ], [ %builtins_import.2, %error_with_unlock ], [ %builtins_import.2, %if.then.6.i.840 ], [ %builtins_import.2, %if.end.4.i.839 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %abs_name.3, i64 0, metadata !994, metadata !1500), !dbg !3385
  %cmp468 = icmp eq %struct._object* %abs_name.3, null, !dbg !3387
  br i1 %cmp468, label %if.end.483, label %do.body.470, !dbg !3388

do.body.470:                                      ; preds = %if.else.312, %do.body.466
  %builtins_import.3876 = phi %struct._object* [ %builtins_import.3, %do.body.466 ], [ %builtins_import.1, %if.else.312 ]
  %final_mod.3875 = phi %struct._object* [ %final_mod.3, %do.body.466 ], [ null, %if.else.312 ]
  %mod.2874 = phi %struct._object* [ %mod.2, %do.body.466 ], [ null, %if.else.312 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %abs_name.3, i64 0, metadata !996, metadata !1500), !dbg !3389
  %ob_refcnt473 = getelementptr inbounds %struct._object, %struct._object* %abs_name.3, i64 0, i32 0, !dbg !3391
  %112 = load i64, i64* %ob_refcnt473, align 8, !dbg !3391, !tbaa !1533
  %dec474 = add i64 %112, -1, !dbg !3391
  store i64 %dec474, i64* %ob_refcnt473, align 8, !dbg !3391, !tbaa !1533
  %cmp475 = icmp eq i64 %dec474, 0, !dbg !3391
  br i1 %cmp475, label %if.else.477, label %if.end.483, !dbg !3393

if.else.477:                                      ; preds = %do.body.470
  %ob_type478 = getelementptr inbounds %struct._object, %struct._object* %abs_name.3, i64 0, i32 1, !dbg !3394
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type478, align 8, !dbg !3394, !tbaa !1538
  %tp_dealloc479 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i64 0, i32 4, !dbg !3394
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc479, align 8, !dbg !3394, !tbaa !1539
  tail call void %114(%struct._object* %abs_name.3) #1, !dbg !3394
  br label %if.end.483

if.end.483:                                       ; preds = %if.else.477, %do.body.470, %do.body.466
  %builtins_import.3868 = phi %struct._object* [ %builtins_import.3876, %if.else.477 ], [ %builtins_import.3876, %do.body.470 ], [ %builtins_import.3, %do.body.466 ]
  %final_mod.3867 = phi %struct._object* [ %final_mod.3875, %if.else.477 ], [ %final_mod.3875, %do.body.470 ], [ %final_mod.3, %do.body.466 ]
  %mod.2866 = phi %struct._object* [ %mod.2874, %if.else.477 ], [ %mod.2874, %do.body.470 ], [ %mod.2, %do.body.466 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %builtins_import.3, i64 0, metadata !999, metadata !1500), !dbg !3396
  %cmp489 = icmp eq %struct._object* %builtins_import.3868, null, !dbg !3398
  br i1 %cmp489, label %if.end.504, label %do.body.491, !dbg !3399

do.body.491:                                      ; preds = %if.end.483
  tail call void @llvm.dbg.value(metadata %struct._object* %builtins_import.3, i64 0, metadata !1001, metadata !1500), !dbg !3400
  %ob_refcnt494 = getelementptr inbounds %struct._object, %struct._object* %builtins_import.3868, i64 0, i32 0, !dbg !3402
  %115 = load i64, i64* %ob_refcnt494, align 8, !dbg !3402, !tbaa !1533
  %dec495 = add i64 %115, -1, !dbg !3402
  store i64 %dec495, i64* %ob_refcnt494, align 8, !dbg !3402, !tbaa !1533
  %cmp496 = icmp eq i64 %dec495, 0, !dbg !3402
  br i1 %cmp496, label %if.else.498, label %if.end.504, !dbg !3404

if.else.498:                                      ; preds = %do.body.491
  %ob_type499 = getelementptr inbounds %struct._object, %struct._object* %builtins_import.3868, i64 0, i32 1, !dbg !3405
  %116 = load %struct._typeobject*, %struct._typeobject** %ob_type499, align 8, !dbg !3405, !tbaa !1538
  %tp_dealloc500 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %116, i64 0, i32 4, !dbg !3405
  %117 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc500, align 8, !dbg !3405, !tbaa !1539
  tail call void %117(%struct._object* %builtins_import.3868) #1, !dbg !3405
  br label %if.end.504

if.end.504:                                       ; preds = %if.else.498, %do.body.491, %if.end.483
  tail call void @llvm.dbg.value(metadata %struct._object* %mod.2, i64 0, metadata !1004, metadata !1500), !dbg !3407
  %cmp510 = icmp eq %struct._object* %mod.2866, null, !dbg !3409
  br i1 %cmp510, label %if.end.525, label %do.body.512, !dbg !3410

do.body.512:                                      ; preds = %if.end.504
  tail call void @llvm.dbg.value(metadata %struct._object* %mod.2, i64 0, metadata !1006, metadata !1500), !dbg !3411
  %ob_refcnt515 = getelementptr inbounds %struct._object, %struct._object* %mod.2866, i64 0, i32 0, !dbg !3413
  %118 = load i64, i64* %ob_refcnt515, align 8, !dbg !3413, !tbaa !1533
  %dec516 = add i64 %118, -1, !dbg !3413
  store i64 %dec516, i64* %ob_refcnt515, align 8, !dbg !3413, !tbaa !1533
  %cmp517 = icmp eq i64 %dec516, 0, !dbg !3413
  br i1 %cmp517, label %if.else.519, label %if.end.525, !dbg !3415

if.else.519:                                      ; preds = %do.body.512
  %ob_type520 = getelementptr inbounds %struct._object, %struct._object* %mod.2866, i64 0, i32 1, !dbg !3416
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type520, align 8, !dbg !3416, !tbaa !1538
  %tp_dealloc521 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i64 0, i32 4, !dbg !3416
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc521, align 8, !dbg !3416, !tbaa !1539
  tail call void %120(%struct._object* %mod.2866) #1, !dbg !3416
  br label %if.end.525

if.end.525.loopexit:                              ; preds = %for.body
  br label %if.end.525, !dbg !3418

if.end.525:                                       ; preds = %if.end.525.loopexit, %if.end.174, %if.end.156, %for.end, %if.then.131, %if.then.108, %if.else.519, %do.body.512, %if.end.504
  %final_mod.3867879888 = phi %struct._object* [ %final_mod.3867, %if.else.519 ], [ %final_mod.3867, %do.body.512 ], [ %final_mod.3867, %if.end.504 ], [ null, %if.then.108 ], [ null, %if.then.131 ], [ null, %for.end ], [ null, %if.end.156 ], [ null, %if.end.174 ], [ null, %if.end.525.loopexit ]
  %package.3865881887 = phi %struct._object* [ %package.2844, %if.else.519 ], [ %package.2844, %do.body.512 ], [ %package.2844, %if.end.504 ], [ %package.1, %if.then.108 ], [ %package.1, %if.then.131 ], [ %package.1, %for.end ], [ %package.1, %if.end.156 ], [ %package.1, %if.end.174 ], [ %package.1, %if.end.525.loopexit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %package.2844, i64 0, metadata !1009, metadata !1500), !dbg !3418
  %cmp531 = icmp eq %struct._object* %package.3865881887, null, !dbg !3420
  br i1 %cmp531, label %if.end.546, label %do.body.533, !dbg !3421

do.body.533:                                      ; preds = %if.then.52, %if.then.70, %if.end.84, %if.end.525
  %package.3865881887897 = phi %struct._object* [ %package.3865881887, %if.end.525 ], [ %call41, %if.then.52 ], [ %call55, %if.then.70 ], [ %call55, %if.end.84 ]
  %final_mod.3867879888896 = phi %struct._object* [ %final_mod.3867879888, %if.end.525 ], [ null, %if.then.52 ], [ null, %if.then.70 ], [ null, %if.end.84 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %package.2844, i64 0, metadata !1011, metadata !1500), !dbg !3422
  %ob_refcnt536 = getelementptr inbounds %struct._object, %struct._object* %package.3865881887897, i64 0, i32 0, !dbg !3424
  %121 = load i64, i64* %ob_refcnt536, align 8, !dbg !3424, !tbaa !1533
  %dec537 = add i64 %121, -1, !dbg !3424
  store i64 %dec537, i64* %ob_refcnt536, align 8, !dbg !3424, !tbaa !1533
  %cmp538 = icmp eq i64 %dec537, 0, !dbg !3424
  br i1 %cmp538, label %if.else.540, label %if.end.546, !dbg !3426

if.else.540:                                      ; preds = %do.body.533
  %ob_type541 = getelementptr inbounds %struct._object, %struct._object* %package.3865881887897, i64 0, i32 1, !dbg !3427
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type541, align 8, !dbg !3427, !tbaa !1538
  %tp_dealloc542 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i64 0, i32 4, !dbg !3427
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc542, align 8, !dbg !3427, !tbaa !1539
  tail call void %123(%struct._object* %package.3865881887897) #1, !dbg !3427
  br label %if.end.546

if.end.546:                                       ; preds = %if.else.540, %do.body.533, %if.end.525
  %final_mod.3867879888890 = phi %struct._object* [ %final_mod.3867879888896, %if.else.540 ], [ %final_mod.3867879888896, %do.body.533 ], [ %final_mod.3867879888, %if.end.525 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %globals.0, i64 0, metadata !1014, metadata !1500), !dbg !3429
  %cmp552 = icmp eq %struct._object* %globals.0, null, !dbg !3431
  br i1 %cmp552, label %if.end.567, label %do.body.554, !dbg !3432

do.body.554:                                      ; preds = %if.then.29, %if.then.113, %if.then.57, %if.then.37, %cond.end, %if.then.23, %if.then.13, %if.end.546
  %final_mod.3867879888890904 = phi %struct._object* [ %final_mod.3867879888890, %if.end.546 ], [ null, %if.then.13 ], [ null, %if.then.23 ], [ null, %cond.end ], [ null, %if.then.37 ], [ null, %if.then.57 ], [ null, %if.then.113 ], [ null, %if.then.29 ]
  %fromlist.1863883885892901 = phi %struct._object* [ %fromlist.0, %if.end.546 ], [ null, %if.then.13 ], [ %fromlist.0, %if.then.23 ], [ %fromlist.0, %cond.end ], [ %fromlist.0, %if.then.37 ], [ %fromlist.0, %if.then.57 ], [ %fromlist.0, %if.then.113 ], [ %fromlist.0, %if.then.29 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %globals.0, i64 0, metadata !1016, metadata !1500), !dbg !3433
  %ob_refcnt557 = getelementptr inbounds %struct._object, %struct._object* %globals.0, i64 0, i32 0, !dbg !3435
  %124 = load i64, i64* %ob_refcnt557, align 8, !dbg !3435, !tbaa !1533
  %dec558 = add i64 %124, -1, !dbg !3435
  store i64 %dec558, i64* %ob_refcnt557, align 8, !dbg !3435, !tbaa !1533
  %cmp559 = icmp eq i64 %dec558, 0, !dbg !3435
  br i1 %cmp559, label %if.else.561, label %if.end.567, !dbg !3437

if.else.561:                                      ; preds = %do.body.554
  %ob_type562 = getelementptr inbounds %struct._object, %struct._object* %globals.0, i64 0, i32 1, !dbg !3438
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type562, align 8, !dbg !3438, !tbaa !1538
  %tp_dealloc563 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i64 0, i32 4, !dbg !3438
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc563, align 8, !dbg !3438, !tbaa !1539
  tail call void %126(%struct._object* %globals.0) #1, !dbg !3438
  br label %if.end.567

if.end.567:                                       ; preds = %if.else.561, %do.body.554, %if.end.546
  %final_mod.3867879888890905 = phi %struct._object* [ %final_mod.3867879888890904, %if.else.561 ], [ %final_mod.3867879888890904, %do.body.554 ], [ %final_mod.3867879888890, %if.end.546 ]
  %fromlist.1863883885892902 = phi %struct._object* [ %fromlist.1863883885892901, %if.else.561 ], [ %fromlist.1863883885892901, %do.body.554 ], [ %fromlist.0, %if.end.546 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %fromlist.0, i64 0, metadata !1019, metadata !1500), !dbg !3440
  %cmp573 = icmp eq %struct._object* %fromlist.1863883885892902, null, !dbg !3442
  br i1 %cmp573, label %if.end.588, label %do.body.575, !dbg !3443

do.body.575:                                      ; preds = %if.end.567
  tail call void @llvm.dbg.value(metadata %struct._object* %fromlist.0, i64 0, metadata !1021, metadata !1500), !dbg !3444
  %ob_refcnt578 = getelementptr inbounds %struct._object, %struct._object* %fromlist.1863883885892902, i64 0, i32 0, !dbg !3446
  %127 = load i64, i64* %ob_refcnt578, align 8, !dbg !3446, !tbaa !1533
  %dec579 = add i64 %127, -1, !dbg !3446
  store i64 %dec579, i64* %ob_refcnt578, align 8, !dbg !3446, !tbaa !1533
  %cmp580 = icmp eq i64 %dec579, 0, !dbg !3446
  br i1 %cmp580, label %if.else.582, label %if.end.588, !dbg !3448

if.else.582:                                      ; preds = %do.body.575
  %ob_type583 = getelementptr inbounds %struct._object, %struct._object* %fromlist.1863883885892902, i64 0, i32 1, !dbg !3449
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type583, align 8, !dbg !3449, !tbaa !1538
  %tp_dealloc584 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i64 0, i32 4, !dbg !3449
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc584, align 8, !dbg !3449, !tbaa !1539
  tail call void %129(%struct._object* %fromlist.1863883885892902) #1, !dbg !3449
  br label %if.end.588

if.end.588:                                       ; preds = %if.else.582, %do.body.575, %if.end.567
  %cmp591 = icmp eq %struct._object* %final_mod.3867879888890905, null, !dbg !3451
  br i1 %cmp591, label %if.then.592, label %cleanup.594, !dbg !3453

if.then.592:                                      ; preds = %if.then.9, %if.then, %if.end.588
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !1158, metadata !1500) #1, !dbg !3454
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !1159, metadata !1500) #1, !dbg !3456
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1160, metadata !1500) #1, !dbg !3457
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1161, metadata !1500) #1, !dbg !3458
  %130 = bitcast %struct._object** %exception.i to i8*, !dbg !3459
  call void @llvm.lifetime.start(i64 8, i8* %130) #1, !dbg !3459
  %131 = bitcast %struct._object** %value.i to i8*, !dbg !3459
  call void @llvm.lifetime.start(i64 8, i8* %131) #1, !dbg !3459
  %132 = bitcast %struct._object** %base_tb.i to i8*, !dbg !3459
  call void @llvm.lifetime.start(i64 8, i8* %132) #1, !dbg !3459
  tail call void @llvm.dbg.value(metadata %struct._object** null, i64 0, metadata !1167, metadata !1500) #1, !dbg !3460
  tail call void @llvm.dbg.value(metadata %struct._object** %exception.i, i64 0, metadata !1162, metadata !1500) #1, !dbg !3461
  tail call void @llvm.dbg.value(metadata %struct._object** %value.i, i64 0, metadata !1163, metadata !1500) #1, !dbg !3462
  tail call void @llvm.dbg.value(metadata %struct._object** %base_tb.i, i64 0, metadata !1164, metadata !1500) #1, !dbg !3463
  call void @PyErr_Fetch(%struct._object** nonnull %exception.i, %struct._object** nonnull %value.i, %struct._object** nonnull %base_tb.i) #1, !dbg !3464
  call void @llvm.dbg.value(metadata %struct._object** %exception.i, i64 0, metadata !1162, metadata !1500) #1, !dbg !3461
  %133 = load %struct._object*, %struct._object** %exception.i, align 8, !dbg !3465, !tbaa !1504
  %tobool.i = icmp eq %struct._object* %133, null, !dbg !3465
  %134 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !3467
  %tobool1.i = icmp ne i32 %134, 0, !dbg !3468
  %or.cond.i = or i1 %tobool.i, %tobool1.i, !dbg !3470
  br i1 %or.cond.i, label %remove_importlib_frames.exit, label %if.end.i, !dbg !3470

if.end.i:                                         ; preds = %if.then.592
  %135 = bitcast %struct._object* %133 to %struct._typeobject*, !dbg !3471
  %136 = load %struct._typeobject*, %struct._typeobject** bitcast (%struct._object** @PyExc_ImportError to %struct._typeobject**), align 8, !dbg !3473, !tbaa !1504
  %call.i = call i32 @PyType_IsSubtype(%struct._typeobject* %135, %struct._typeobject* %136) #1, !dbg !3474
  call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1160, metadata !1500) #1, !dbg !3457
  call void @llvm.dbg.value(metadata %struct._object** %base_tb.i, i64 0, metadata !1166, metadata !1500) #1, !dbg !3475
  call void @llvm.dbg.value(metadata %struct._object** %base_tb.i, i64 0, metadata !1164, metadata !1500) #1, !dbg !3463
  %137 = load %struct._object*, %struct._object** %base_tb.i, align 8, !dbg !3476, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object* %137, i64 0, metadata !1165, metadata !1500) #1, !dbg !3477
  %cmp.65.i = icmp eq %struct._object* %137, null, !dbg !3478
  br i1 %cmp.65.i, label %done.loopexit.i, label %while.body.lr.ph.i, !dbg !3479

while.body.lr.ph.i:                               ; preds = %if.end.i
  %tobool2.i = icmp eq i32 %call.i, 0, !dbg !3474
  br i1 %tobool2.i, label %while.body.us.i.preheader, label %while.body.i.preheader, !dbg !3480

while.body.i.preheader:                           ; preds = %while.body.lr.ph.i
  br label %while.body.i, !dbg !3481

while.body.us.i.preheader:                        ; preds = %while.body.lr.ph.i
  br label %while.body.us.i, !dbg !3481

while.body.us.i:                                  ; preds = %while.body.us.i.preheader, %while.cond.backedge.us.i
  %in_importlib.069.us.i = phi i32 [ %conv.us.i, %while.cond.backedge.us.i ], [ 0, %while.body.us.i.preheader ], !dbg !3467
  %tb.068.us.i = phi %struct._object* [ %139, %while.cond.backedge.us.i ], [ %137, %while.body.us.i.preheader ], !dbg !3467
  %prev_link.067.us.i = phi %struct._object** [ %prev_link.0.be.us.i, %while.cond.backedge.us.i ], [ %base_tb.i, %while.body.us.i.preheader ], !dbg !3467
  %outer_link.066.us.i = phi %struct._object** [ %outer_link.0.prev_link.0.us.i, %while.cond.backedge.us.i ], [ null, %while.body.us.i.preheader ], !dbg !3467
  %tb_next.us.i = getelementptr inbounds %struct._object, %struct._object* %tb.068.us.i, i64 1, !dbg !3481
  %138 = bitcast %struct._object* %tb_next.us.i to %struct._object**, !dbg !3481
  %139 = load %struct._object*, %struct._object** %138, align 8, !dbg !3481, !tbaa !3482
  call void @llvm.dbg.value(metadata %struct._object* %139, i64 0, metadata !1170, metadata !1500) #1, !dbg !3484
  %tb_frame.us.i = getelementptr inbounds %struct._object, %struct._object* %tb.068.us.i, i64 1, i32 1, !dbg !3485
  %140 = bitcast %struct._typeobject** %tb_frame.us.i to %struct._frame**, !dbg !3485
  %141 = load %struct._frame*, %struct._frame** %140, align 8, !dbg !3485, !tbaa !3486
  call void @llvm.dbg.value(metadata %struct._frame* %141, i64 0, metadata !1171, metadata !1500) #1, !dbg !3487
  %f_code.us.i = getelementptr inbounds %struct._frame, %struct._frame* %141, i64 0, i32 2, !dbg !3488
  %142 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code.us.i, align 8, !dbg !3488, !tbaa !3489
  call void @llvm.dbg.value(metadata %struct.PyCodeObject* %142, i64 0, metadata !1174, metadata !1500) #1, !dbg !3491
  %co_filename.us.i = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %142, i64 0, i32 13, !dbg !3492
  %143 = load %struct._object*, %struct._object** %co_filename.us.i, align 8, !dbg !3492, !tbaa !2462
  %call5.us.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %143, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0)) #1, !dbg !3493
  %cmp6.us.i = icmp eq i32 %call5.us.i, 0, !dbg !3494
  %conv.us.i = zext i1 %cmp6.us.i to i32, !dbg !3494
  call void @llvm.dbg.value(metadata i32 %conv.us.i, i64 0, metadata !1175, metadata !1500) #1, !dbg !3495
  %tobool7.us.i = xor i1 %cmp6.us.i, true, !dbg !3496
  %tobool8.us.i = icmp ne i32 %in_importlib.069.us.i, 0, !dbg !3498
  %or.cond36.us.i = or i1 %tobool8.us.i, %tobool7.us.i, !dbg !3500
  %outer_link.0.prev_link.0.us.i = select i1 %or.cond36.us.i, %struct._object** %outer_link.066.us.i, %struct._object** %prev_link.067.us.i, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %conv.us.i, i64 0, metadata !1161, metadata !1500) #1, !dbg !3458
  br i1 %cmp6.us.i, label %lor.lhs.false.14.us.i, label %while.cond.backedge.us.i, !dbg !3501

lor.lhs.false.14.us.i:                            ; preds = %while.body.us.i
  %co_name.us.i = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %142, i64 0, i32 14, !dbg !3502
  %144 = load %struct._object*, %struct._object** %co_name.us.i, align 8, !dbg !3502, !tbaa !3503
  %call15.us.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %144, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i64 0, i64 0)) #1, !dbg !3504
  %cmp16.us.i = icmp eq i32 %call15.us.i, 0, !dbg !3505
  br i1 %cmp16.us.i, label %if.then.18.us.i, label %while.cond.backedge.us.i, !dbg !3506

if.then.18.us.i:                                  ; preds = %lor.lhs.false.14.us.i
  %145 = load %struct._object*, %struct._object** %outer_link.0.prev_link.0.us.i, align 8, !dbg !3507, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object* %145, i64 0, metadata !1176, metadata !1500) #1, !dbg !3508
  store %struct._object* %139, %struct._object** %outer_link.0.prev_link.0.us.i, align 8, !dbg !3509, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object* %139, i64 0, metadata !1179, metadata !1500) #1, !dbg !3510
  %cmp20.us.i = icmp eq %struct._object* %139, null, !dbg !3512
  br i1 %cmp20.us.i, label %if.end.23.us.i, label %if.then.22.us.i, !dbg !3514

if.then.22.us.i:                                  ; preds = %if.then.18.us.i
  %ob_refcnt.us.i = getelementptr inbounds %struct._object, %struct._object* %139, i64 0, i32 0, !dbg !3515
  %146 = load i64, i64* %ob_refcnt.us.i, align 8, !dbg !3515, !tbaa !1533
  %inc.us.i = add i64 %146, 1, !dbg !3515
  store i64 %inc.us.i, i64* %ob_refcnt.us.i, align 8, !dbg !3515, !tbaa !1533
  br label %if.end.23.us.i, !dbg !3515

if.end.23.us.i:                                   ; preds = %if.then.22.us.i, %if.then.18.us.i
  call void @llvm.dbg.value(metadata %struct._object* %145, i64 0, metadata !1181, metadata !1500) #1, !dbg !3517
  %ob_refcnt26.us.i = getelementptr inbounds %struct._object, %struct._object* %145, i64 0, i32 0, !dbg !3519
  %147 = load i64, i64* %ob_refcnt26.us.i, align 8, !dbg !3519, !tbaa !1533
  %dec.us.i = add i64 %147, -1, !dbg !3519
  store i64 %dec.us.i, i64* %ob_refcnt26.us.i, align 8, !dbg !3519, !tbaa !1533
  %cmp27.us.i = icmp eq i64 %dec.us.i, 0, !dbg !3519
  br i1 %cmp27.us.i, label %if.else.us.i, label %while.cond.backedge.us.i, !dbg !3521

if.else.us.i:                                     ; preds = %if.end.23.us.i
  %ob_type.us.i = getelementptr inbounds %struct._object, %struct._object* %145, i64 0, i32 1, !dbg !3522
  %148 = load %struct._typeobject*, %struct._typeobject** %ob_type.us.i, align 8, !dbg !3522, !tbaa !1538
  %tp_dealloc.us.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %148, i64 0, i32 4, !dbg !3522
  %149 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.us.i, align 8, !dbg !3522, !tbaa !1539
  call void %149(%struct._object* %145) #1, !dbg !3522
  br label %while.cond.backedge.us.i, !dbg !3467

while.cond.backedge.us.i:                         ; preds = %if.else.us.i, %if.end.23.us.i, %lor.lhs.false.14.us.i, %while.body.us.i
  %prev_link.0.be.us.i = phi %struct._object** [ %outer_link.0.prev_link.0.us.i, %if.else.us.i ], [ %outer_link.0.prev_link.0.us.i, %if.end.23.us.i ], [ %138, %lor.lhs.false.14.us.i ], [ %138, %while.body.us.i ], !dbg !3467
  %cmp.us.i = icmp eq %struct._object* %139, null, !dbg !3478
  br i1 %cmp.us.i, label %done.loopexit.i.loopexit, label %while.body.us.i, !dbg !3479

while.body.i:                                     ; preds = %while.body.i.preheader, %while.cond.backedge.i
  %in_importlib.069.i = phi i32 [ %conv.i, %while.cond.backedge.i ], [ 0, %while.body.i.preheader ], !dbg !3467
  %tb.068.i = phi %struct._object* [ %151, %while.cond.backedge.i ], [ %137, %while.body.i.preheader ], !dbg !3467
  %prev_link.067.i = phi %struct._object** [ %prev_link.0.be.i, %while.cond.backedge.i ], [ %base_tb.i, %while.body.i.preheader ], !dbg !3467
  %outer_link.066.i = phi %struct._object** [ %outer_link.0.prev_link.0.i, %while.cond.backedge.i ], [ null, %while.body.i.preheader ], !dbg !3467
  %tb_next.i = getelementptr inbounds %struct._object, %struct._object* %tb.068.i, i64 1, !dbg !3481
  %150 = bitcast %struct._object* %tb_next.i to %struct._object**, !dbg !3481
  %151 = load %struct._object*, %struct._object** %150, align 8, !dbg !3481, !tbaa !3482
  call void @llvm.dbg.value(metadata %struct._object* %151, i64 0, metadata !1170, metadata !1500) #1, !dbg !3484
  %tb_frame.i = getelementptr inbounds %struct._object, %struct._object* %tb.068.i, i64 1, i32 1, !dbg !3485
  %152 = bitcast %struct._typeobject** %tb_frame.i to %struct._frame**, !dbg !3485
  %153 = load %struct._frame*, %struct._frame** %152, align 8, !dbg !3485, !tbaa !3486
  call void @llvm.dbg.value(metadata %struct._frame* %153, i64 0, metadata !1171, metadata !1500) #1, !dbg !3487
  %f_code.i = getelementptr inbounds %struct._frame, %struct._frame* %153, i64 0, i32 2, !dbg !3488
  %154 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code.i, align 8, !dbg !3488, !tbaa !3489
  call void @llvm.dbg.value(metadata %struct.PyCodeObject* %154, i64 0, metadata !1174, metadata !1500) #1, !dbg !3491
  %co_filename.i = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %154, i64 0, i32 13, !dbg !3492
  %155 = load %struct._object*, %struct._object** %co_filename.i, align 8, !dbg !3492, !tbaa !2462
  %call5.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %155, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0)) #1, !dbg !3493
  %cmp6.i = icmp eq i32 %call5.i, 0, !dbg !3494
  %conv.i = zext i1 %cmp6.i to i32, !dbg !3494
  call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !1175, metadata !1500) #1, !dbg !3495
  %tobool7.i = xor i1 %cmp6.i, true, !dbg !3496
  %tobool8.i = icmp ne i32 %in_importlib.069.i, 0, !dbg !3498
  %or.cond36.i = or i1 %tobool8.i, %tobool7.i, !dbg !3500
  %outer_link.0.prev_link.0.i = select i1 %or.cond36.i, %struct._object** %outer_link.066.i, %struct._object** %prev_link.067.i, !dbg !3500
  call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !1161, metadata !1500) #1, !dbg !3458
  br i1 %cmp6.i, label %if.then.18.i, label %while.cond.backedge.i, !dbg !3501

if.then.18.i:                                     ; preds = %while.body.i
  %156 = load %struct._object*, %struct._object** %outer_link.0.prev_link.0.i, align 8, !dbg !3507, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object* %156, i64 0, metadata !1176, metadata !1500) #1, !dbg !3508
  store %struct._object* %151, %struct._object** %outer_link.0.prev_link.0.i, align 8, !dbg !3509, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object* %151, i64 0, metadata !1179, metadata !1500) #1, !dbg !3510
  %cmp20.i = icmp eq %struct._object* %151, null, !dbg !3512
  br i1 %cmp20.i, label %if.end.23.i, label %if.then.22.i, !dbg !3514

if.then.22.i:                                     ; preds = %if.then.18.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %151, i64 0, i32 0, !dbg !3515
  %157 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3515, !tbaa !1533
  %inc.i = add i64 %157, 1, !dbg !3515
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !3515, !tbaa !1533
  br label %if.end.23.i, !dbg !3515

if.end.23.i:                                      ; preds = %if.then.22.i, %if.then.18.i
  call void @llvm.dbg.value(metadata %struct._object* %156, i64 0, metadata !1181, metadata !1500) #1, !dbg !3517
  %ob_refcnt26.i = getelementptr inbounds %struct._object, %struct._object* %156, i64 0, i32 0, !dbg !3519
  %158 = load i64, i64* %ob_refcnt26.i, align 8, !dbg !3519, !tbaa !1533
  %dec.i = add i64 %158, -1, !dbg !3519
  store i64 %dec.i, i64* %ob_refcnt26.i, align 8, !dbg !3519, !tbaa !1533
  %cmp27.i = icmp eq i64 %dec.i, 0, !dbg !3519
  br i1 %cmp27.i, label %if.else.i, label %while.cond.backedge.i, !dbg !3521

if.else.i:                                        ; preds = %if.end.23.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %156, i64 0, i32 1, !dbg !3522
  %159 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3522, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %159, i64 0, i32 4, !dbg !3522
  %160 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !3522, !tbaa !1539
  call void %160(%struct._object* %156) #1, !dbg !3522
  br label %while.cond.backedge.i, !dbg !3467

while.cond.backedge.i:                            ; preds = %if.else.i, %if.end.23.i, %while.body.i
  %prev_link.0.be.i = phi %struct._object** [ %outer_link.0.prev_link.0.i, %if.else.i ], [ %outer_link.0.prev_link.0.i, %if.end.23.i ], [ %150, %while.body.i ], !dbg !3467
  %cmp.i = icmp eq %struct._object* %151, null, !dbg !3478
  br i1 %cmp.i, label %done.loopexit.i.loopexit928, label %while.body.i, !dbg !3479

done.loopexit.i.loopexit:                         ; preds = %while.cond.backedge.us.i
  br label %done.loopexit.i, !dbg !3524

done.loopexit.i.loopexit928:                      ; preds = %while.cond.backedge.i
  br label %done.loopexit.i, !dbg !3524

done.loopexit.i:                                  ; preds = %done.loopexit.i.loopexit928, %done.loopexit.i.loopexit, %if.end.i
  %.pre.i = load %struct._object*, %struct._object** %exception.i, align 8, !dbg !3524, !tbaa !1504
  br label %remove_importlib_frames.exit, !dbg !3461

remove_importlib_frames.exit:                     ; preds = %if.then.592, %done.loopexit.i
  %161 = phi %struct._object* [ %.pre.i, %done.loopexit.i ], [ %133, %if.then.592 ], !dbg !3524
  call void @llvm.dbg.value(metadata %struct._object** %exception.i, i64 0, metadata !1162, metadata !1500) #1, !dbg !3461
  call void @llvm.dbg.value(metadata %struct._object** %value.i, i64 0, metadata !1163, metadata !1500) #1, !dbg !3462
  %162 = load %struct._object*, %struct._object** %value.i, align 8, !dbg !3525, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object** %base_tb.i, i64 0, metadata !1164, metadata !1500) #1, !dbg !3463
  %163 = load %struct._object*, %struct._object** %base_tb.i, align 8, !dbg !3526, !tbaa !1504
  call void @PyErr_Restore(%struct._object* %161, %struct._object* %162, %struct._object* %163) #1, !dbg !3527
  call void @llvm.lifetime.end(i64 8, i8* %132) #1, !dbg !3528
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !3528
  call void @llvm.lifetime.end(i64 8, i8* %130) #1, !dbg !3528
  br label %cleanup.594, !dbg !3467

cleanup.594:                                      ; preds = %if.end.588, %remove_importlib_frames.exit
  %final_mod.3867879888890905910912 = phi %struct._object* [ %final_mod.3867879888890905, %if.end.588 ], [ null, %remove_importlib_frames.exit ]
  ret %struct._object* %final_mod.3867879888890905910912, !dbg !3529
}

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #3

declare %struct._object* @_PyUnicode_FromId(%struct._Py_Identifier*) #3

declare %struct._object* @PyUnicode_RPartition(%struct._object*, %struct._object*) #3

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #3

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #3

declare %struct._object* @PyUnicode_Join(%struct._object*, %struct._object*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare %struct._object* @PyErr_SetImportError(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare i32 @PyObject_Not(%struct._object*) #3

declare %struct._object* @PyUnicode_Partition(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ImportModuleLevel(i8* %name, %struct._object* %globals, %struct._object* nocapture readnone %locals, %struct._object* %fromlist, i32 %level) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !1028, metadata !1500), !dbg !3530
  tail call void @llvm.dbg.value(metadata %struct._object* %globals, i64 0, metadata !1029, metadata !1500), !dbg !3531
  tail call void @llvm.dbg.value(metadata %struct._object* %locals, i64 0, metadata !1030, metadata !1500), !dbg !3532
  tail call void @llvm.dbg.value(metadata %struct._object* %fromlist, i64 0, metadata !1031, metadata !1500), !dbg !3533
  tail call void @llvm.dbg.value(metadata i32 %level, i64 0, metadata !1032, metadata !1500), !dbg !3534
  %call = tail call %struct._object* @PyUnicode_FromString(i8* %name) #1, !dbg !3535
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1033, metadata !1500), !dbg !3536
  %cmp = icmp eq %struct._object* %call, null, !dbg !3537
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3538

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyImport_ImportModuleLevelObject(%struct._object* %call, %struct._object* %globals, %struct._object* undef, %struct._object* %fromlist, i32 %level), !dbg !3539
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !1034, metadata !1500), !dbg !3540
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1035, metadata !1500), !dbg !3541
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3542
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !3542, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !3542
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3542, !tbaa !1533
  %cmp2 = icmp eq i64 %dec, 0, !dbg !3542
  br i1 %cmp2, label %if.else, label %cleanup, !dbg !3543

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3544
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3544, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !3544
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3544, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !3544
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call1, %if.end ], [ %call1, %if.else ]
  ret %struct._object* %retval.0, !dbg !3545
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyImport_ReloadModule(%struct._object* %m) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %m, i64 0, metadata !1039, metadata !1500), !dbg !3546
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1040, metadata !1500), !dbg !3547
  tail call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !614, metadata !1500) #1, !dbg !3548
  tail call void @llvm.dbg.value(metadata !695, i64 0, metadata !622, metadata !1500) #1, !dbg !3548
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !625, metadata !1500) #1, !dbg !3548
  %0 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !3550, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !621, metadata !1500) #1, !dbg !3548
  %interp4.i = getelementptr inbounds i8, i8* %0, i64 16, !dbg !3551
  %1 = bitcast i8* %interp4.i to %struct._is**, !dbg !3551
  %2 = load %struct._is*, %struct._is** %1, align 8, !dbg !3551, !tbaa !1493
  tail call void @llvm.dbg.value(metadata %struct._is* %2, i64 0, metadata !613, metadata !1500) #1, !dbg !3552
  %modules.i = getelementptr inbounds %struct._is, %struct._is* %2, i64 0, i32 2, !dbg !3553
  %3 = load %struct._object*, %struct._object** %modules.i, align 8, !dbg !3553, !tbaa !1775
  %cmp.i = icmp eq %struct._object* %3, null, !dbg !3554
  br i1 %cmp.i, label %if.then.i, label %PyImport_GetModuleDict.exit, !dbg !3555

if.then.i:                                        ; preds = %entry
  tail call void @Py_FatalError(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !3556
  unreachable, !dbg !3556

PyImport_GetModuleDict.exit:                      ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !1041, metadata !1500), !dbg !3557
  %call1 = tail call %struct._object* @PyDict_GetItemString(%struct._object* %3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #1, !dbg !3558
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !1042, metadata !1500), !dbg !3559
  %cmp = icmp eq %struct._object* %call1, null, !dbg !3560
  br i1 %cmp, label %if.then, label %if.else, !dbg !3562

if.then:                                          ; preds = %PyImport_GetModuleDict.exit
  tail call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0), i64 0, metadata !889, metadata !1500) #1, !dbg !3563
  %call.i = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.56, i64 0, i64 0)) #1, !dbg !3566
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !890, metadata !1500) #1, !dbg !3567
  %cmp.i.24 = icmp eq %struct._object* %call.i, null, !dbg !3568
  br i1 %cmp.i.24, label %cleanup, label %if.end.i, !dbg !3569

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call %struct._object* @PyImport_Import(%struct._object* %call.i) #1, !dbg !3570
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !891, metadata !1500) #1, !dbg !3571
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !892, metadata !1500) #1, !dbg !3572
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !3573
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3573, !tbaa !1533
  %dec.i = add i64 %4, -1, !dbg !3573
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !3573, !tbaa !1533
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !3573
  br i1 %cmp2.i, label %if.else.i, label %PyImport_ImportModule.exit, !dbg !3574

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !3575
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3575, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !3575
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !3575, !tbaa !1539
  tail call void %6(%struct._object* %call.i) #1, !dbg !3575
  br label %PyImport_ImportModule.exit, !dbg !3576

PyImport_ImportModule.exit:                       ; preds = %if.end.i, %if.else.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1042, metadata !1500), !dbg !3559
  %cmp3 = icmp eq %struct._object* %call1.i, null, !dbg !3577
  br i1 %cmp3, label %cleanup, label %if.end.5, !dbg !3579

if.else:                                          ; preds = %PyImport_GetModuleDict.exit
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !3580
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !3580, !tbaa !1533
  %inc = add i64 %7, 1, !dbg !3580
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3580, !tbaa !1533
  br label %if.end.5

if.end.5:                                         ; preds = %PyImport_ImportModule.exit, %if.else
  %imp.0 = phi %struct._object* [ %call1.i, %PyImport_ImportModule.exit ], [ %call1, %if.else ]
  %call6 = tail call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %imp.0, %struct._Py_Identifier* nonnull @PyImport_ReloadModule.PyId_reload, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.57, i64 0, i64 0), %struct._object* %m) #1, !dbg !3582
  tail call void @llvm.dbg.value(metadata %struct._object* %call6, i64 0, metadata !1040, metadata !1500), !dbg !3547
  tail call void @llvm.dbg.value(metadata %struct._object* %imp.0, i64 0, metadata !1043, metadata !1500), !dbg !3583
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %imp.0, i64 0, i32 0, !dbg !3585
  %8 = load i64, i64* %ob_refcnt7, align 8, !dbg !3585, !tbaa !1533
  %dec = add i64 %8, -1, !dbg !3585
  store i64 %dec, i64* %ob_refcnt7, align 8, !dbg !3585, !tbaa !1533
  %cmp8 = icmp eq i64 %dec, 0, !dbg !3585
  br i1 %cmp8, label %if.else.10, label %cleanup, !dbg !3587

if.else.10:                                       ; preds = %if.end.5
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %imp.0, i64 0, i32 1, !dbg !3588
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3588, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !3588
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3588, !tbaa !1539
  tail call void %10(%struct._object* %imp.0) #1, !dbg !3588
  br label %cleanup

cleanup:                                          ; preds = %if.then, %if.else.10, %if.end.5, %PyImport_ImportModule.exit
  %retval.0 = phi %struct._object* [ null, %PyImport_ImportModule.exit ], [ %call6, %if.end.5 ], [ %call6, %if.else.10 ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !3590
}

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #3

declare %struct._object* @PyEval_GetGlobals() #3

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_GetAttr(%struct._object*, %struct._object*) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_imp() #0 {
entry:
  %call = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @impmodule, i32 1013) #1, !dbg !3591
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1072, metadata !1500), !dbg !3592
  %cond = icmp eq %struct._object* %call, null, !dbg !3593
  br i1 %cond, label %cleanup, label %if.end, !dbg !3593

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyModule_GetDict(%struct._object* %call) #1, !dbg !3594
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !1073, metadata !1500), !dbg !3595
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !3596
  br i1 %cmp2, label %do.body.7, label %cleanup, !dbg !3598

do.body.7:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1074, metadata !1500), !dbg !3599
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !1076, metadata !1500), !dbg !3601
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !3603
  %0 = load i64, i64* %ob_refcnt, align 8, !dbg !3603, !tbaa !1533
  %dec = add i64 %0, -1, !dbg !3603
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3603, !tbaa !1533
  %cmp8 = icmp eq i64 %dec, 0, !dbg !3603
  br i1 %cmp8, label %if.else, label %cleanup, !dbg !3605

if.else:                                          ; preds = %do.body.7
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !3606
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3606, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i64 0, i32 4, !dbg !3606
  %2 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3606, !tbaa !1539
  tail call void %2(%struct._object* %call) #1, !dbg !3606
  br label %cleanup

cleanup:                                          ; preds = %entry, %do.body.7, %if.else, %if.end
  %retval.0 = phi %struct._object* [ %call, %if.end ], [ null, %if.else ], [ null, %do.body.7 ], [ null, %entry ]
  ret %struct._object* %retval.0, !dbg !3608
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

; Function Attrs: nounwind uwtable
define i32 @PyImport_ExtendInittab(%struct._inittab* nocapture readonly %newtab) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._inittab* %newtab, i64 0, metadata !1083, metadata !1500), !dbg !3609
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1086, metadata !1500), !dbg !3610
  br label %for.cond, !dbg !3611

for.cond:                                         ; preds = %for.cond, %entry
  %n.0 = phi i32 [ 0, %entry ], [ %inc, %for.cond ]
  %idxprom = sext i32 %n.0 to i64, !dbg !3613
  %name = getelementptr inbounds %struct._inittab, %struct._inittab* %newtab, i64 %idxprom, i32 0, !dbg !3615
  %0 = load i8*, i8** %name, align 8, !dbg !3615, !tbaa !3616
  %cmp = icmp eq i8* %0, null, !dbg !3618
  %inc = add i32 %n.0, 1, !dbg !3619
  tail call void @llvm.dbg.value(metadata i32 %inc, i64 0, metadata !1086, metadata !1500), !dbg !3610
  br i1 %cmp, label %for.end, label %for.cond, !dbg !3621

for.end:                                          ; preds = %for.cond
  %inc.lcssa = phi i32 [ %inc, %for.cond ]
  %n.0.lcssa = phi i32 [ %n.0, %for.cond ]
  %cmp1 = icmp eq i32 %n.0.lcssa, 0, !dbg !3622
  br i1 %cmp1, label %cleanup, label %for.cond.2.preheader, !dbg !3624

for.cond.2.preheader:                             ; preds = %for.end
  %1 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !3625, !tbaa !1504
  br label %for.cond.2, !dbg !3625

for.cond.2:                                       ; preds = %for.cond.2, %for.cond.2.preheader
  %i.0 = phi i32 [ %inc9, %for.cond.2 ], [ 0, %for.cond.2.preheader ]
  %idxprom3 = sext i32 %i.0 to i64, !dbg !3625
  %name5 = getelementptr inbounds %struct._inittab, %struct._inittab* %1, i64 %idxprom3, i32 0, !dbg !3628
  %2 = load i8*, i8** %name5, align 8, !dbg !3628, !tbaa !3616
  %cmp6 = icmp eq i8* %2, null, !dbg !3629
  %inc9 = add i32 %i.0, 1, !dbg !3630
  tail call void @llvm.dbg.value(metadata i32 %inc9, i64 0, metadata !1085, metadata !1500), !dbg !3632
  br i1 %cmp6, label %for.end.10, label %for.cond.2, !dbg !3633

for.end.10:                                       ; preds = %for.cond.2
  %inc9.lcssa = phi i32 [ %inc9, %for.cond.2 ]
  %idxprom3.lcssa = phi i64 [ %idxprom3, %for.cond.2 ]
  %i.0.lcssa = phi i32 [ %i.0, %for.cond.2 ]
  %add11 = add i32 %inc.lcssa, %i.0.lcssa, !dbg !3634
  %cmp12 = icmp slt i32 %add11, 0, !dbg !3634
  br i1 %cmp12, label %cleanup, label %cond.end, !dbg !3634

cond.end:                                         ; preds = %for.end.10
  %conv = sext i32 %add11 to i64, !dbg !3634
  %3 = load i8*, i8** bitcast (%struct._inittab** @PyImport_ExtendInittab.our_copy to i8**), align 8, !dbg !3635, !tbaa !1504
  %mul = shl nsw i64 %conv, 4, !dbg !3636
  %call = tail call i8* @PyMem_Realloc(i8* %3, i64 %mul) #1, !dbg !3636
  %4 = bitcast i8* %call to %struct._inittab*, !dbg !3636
  tail call void @llvm.dbg.value(metadata %struct._inittab* %4, i64 0, metadata !1084, metadata !1500), !dbg !3638
  %cmp17 = icmp eq i8* %call, null, !dbg !3639
  br i1 %cmp17, label %cleanup, label %if.end.20, !dbg !3641

if.end.20:                                        ; preds = %cond.end
  %5 = load %struct._inittab*, %struct._inittab** @PyImport_ExtendInittab.our_copy, align 8, !dbg !3642, !tbaa !1504
  %6 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !3644, !tbaa !1504
  %cmp21 = icmp eq %struct._inittab* %5, %6, !dbg !3645
  br i1 %cmp21, label %if.end.27, label %if.then.23, !dbg !3646

if.then.23:                                       ; preds = %if.end.20
  %7 = bitcast %struct._inittab* %6 to i8*, !dbg !3647
  %conv25 = sext i32 %inc9.lcssa to i64, !dbg !3648
  %mul26 = shl nsw i64 %conv25, 4, !dbg !3649
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call, i8* %7, i64 %mul26, i32 8, i1 false), !dbg !3647
  br label %if.end.27, !dbg !3647

if.end.27:                                        ; preds = %if.end.20, %if.then.23
  store i8* %call, i8** bitcast (%struct._inittab** @PyImport_ExtendInittab.our_copy to i8**), align 8, !dbg !3650, !tbaa !1504
  store i8* %call, i8** bitcast (%struct._inittab** @PyImport_Inittab to i8**), align 8, !dbg !3651, !tbaa !1504
  %add.ptr = getelementptr %struct._inittab, %struct._inittab* %4, i64 %idxprom3.lcssa, !dbg !3652
  %8 = bitcast %struct._inittab* %add.ptr to i8*, !dbg !3653
  %9 = bitcast %struct._inittab* %newtab to i8*, !dbg !3653
  %conv29 = sext i32 %inc.lcssa to i64, !dbg !3654
  %mul30 = shl nsw i64 %conv29, 4, !dbg !3655
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %9, i64 %mul30, i32 8, i1 false), !dbg !3653
  br label %cleanup, !dbg !3656

cleanup:                                          ; preds = %for.end.10, %cond.end, %for.end, %if.end.27
  %retval.0 = phi i32 [ 0, %if.end.27 ], [ 0, %for.end ], [ -1, %cond.end ], [ -1, %for.end.10 ]
  ret i32 %retval.0, !dbg !3657
}

declare i8* @PyMem_Realloc(i8*, i64) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind uwtable
define i32 @PyImport_AppendInittab(i8* %name, %struct._object* ()* %initfunc) #0 {
entry:
  %newtab = alloca [2 x %struct._inittab], align 16
  tail call void @llvm.dbg.value(metadata i8* %name, i64 0, metadata !1091, metadata !1500), !dbg !3658
  tail call void @llvm.dbg.value(metadata %struct._object* ()* %initfunc, i64 0, metadata !1092, metadata !1500), !dbg !3659
  %0 = bitcast [2 x %struct._inittab]* %newtab to i8*, !dbg !3660
  call void @llvm.lifetime.start(i64 32, i8* %0) #1, !dbg !3660
  tail call void @llvm.dbg.declare(metadata [2 x %struct._inittab]* %newtab, metadata !1093, metadata !1500), !dbg !3661
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 32, i32 16, i1 false), !dbg !3662
  %name1 = getelementptr [2 x %struct._inittab], [2 x %struct._inittab]* %newtab, i64 0, i64 0, i32 0, !dbg !3663
  store i8* %name, i8** %name1, align 16, !dbg !3664, !tbaa !3616
  %initfunc3 = getelementptr [2 x %struct._inittab], [2 x %struct._inittab]* %newtab, i64 0, i64 0, i32 1, !dbg !3665
  store %struct._object* ()* %initfunc, %struct._object* ()** %initfunc3, align 8, !dbg !3666, !tbaa !3667
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1086, metadata !1500) #1, !dbg !3668
  %cmp.i.4 = icmp eq i8* %name, null, !dbg !3670
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !1086, metadata !1500) #1, !dbg !3668
  br i1 %cmp.i.4, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge.preheader, !dbg !3671

for.cond.i.for.cond.i_crit_edge.preheader:        ; preds = %entry
  br label %for.cond.i.for.cond.i_crit_edge, !dbg !3672

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i.for.cond.i_crit_edge.preheader, %for.cond.i.for.cond.i_crit_edge
  %inc.i5 = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ], [ 1, %for.cond.i.for.cond.i_crit_edge.preheader ]
  %idxprom.i.phi.trans.insert = sext i32 %inc.i5 to i64, !dbg !3672
  %name.i.phi.trans.insert = getelementptr inbounds [2 x %struct._inittab], [2 x %struct._inittab]* %newtab, i64 0, i64 %idxprom.i.phi.trans.insert, i32 0, !dbg !3673
  %.pre = load i8*, i8** %name.i.phi.trans.insert, align 16, !dbg !3673, !tbaa !3616
  %cmp.i = icmp eq i8* %.pre, null, !dbg !3670
  %inc.i = add i32 %inc.i5, 1, !dbg !3674
  tail call void @llvm.dbg.value(metadata i32 %inc.i, i64 0, metadata !1086, metadata !1500) #1, !dbg !3668
  br i1 %cmp.i, label %for.end.i.loopexit, label %for.cond.i.for.cond.i_crit_edge, !dbg !3671

for.end.i.loopexit:                               ; preds = %for.cond.i.for.cond.i_crit_edge
  %inc.i.lcssa8 = phi i32 [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %inc.i5.lcssa = phi i32 [ %inc.i5, %for.cond.i.for.cond.i_crit_edge ]
  br label %for.end.i, !dbg !3675

for.end.i:                                        ; preds = %for.end.i.loopexit, %entry
  %inc.i.lcssa = phi i32 [ 1, %entry ], [ %inc.i.lcssa8, %for.end.i.loopexit ]
  %n.0.i.lcssa = phi i32 [ 0, %entry ], [ %inc.i5.lcssa, %for.end.i.loopexit ]
  %cmp1.i = icmp eq i32 %n.0.i.lcssa, 0, !dbg !3675
  br i1 %cmp1.i, label %PyImport_ExtendInittab.exit, label %for.cond.2.preheader.i, !dbg !3676

for.cond.2.preheader.i:                           ; preds = %for.end.i
  %1 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !3677, !tbaa !1504
  br label %for.cond.2.i, !dbg !3677

for.cond.2.i:                                     ; preds = %for.cond.2.i, %for.cond.2.preheader.i
  %i.0.i = phi i32 [ %inc9.i, %for.cond.2.i ], [ 0, %for.cond.2.preheader.i ], !dbg !3678
  %idxprom3.i = sext i32 %i.0.i to i64, !dbg !3677
  %name5.i = getelementptr inbounds %struct._inittab, %struct._inittab* %1, i64 %idxprom3.i, i32 0, !dbg !3679
  %2 = load i8*, i8** %name5.i, align 8, !dbg !3679, !tbaa !3616
  %cmp6.i = icmp eq i8* %2, null, !dbg !3680
  %inc9.i = add i32 %i.0.i, 1, !dbg !3681
  tail call void @llvm.dbg.value(metadata i32 %inc9.i, i64 0, metadata !1085, metadata !1500) #1, !dbg !3682
  br i1 %cmp6.i, label %for.end.10.i, label %for.cond.2.i, !dbg !3683

for.end.10.i:                                     ; preds = %for.cond.2.i
  %inc9.i.lcssa = phi i32 [ %inc9.i, %for.cond.2.i ]
  %idxprom3.i.lcssa = phi i64 [ %idxprom3.i, %for.cond.2.i ]
  %i.0.i.lcssa = phi i32 [ %i.0.i, %for.cond.2.i ]
  %add11.i = add i32 %i.0.i.lcssa, %inc.i.lcssa, !dbg !3684
  %cmp12.i = icmp slt i32 %add11.i, 0, !dbg !3684
  br i1 %cmp12.i, label %PyImport_ExtendInittab.exit, label %cond.end.i, !dbg !3684

cond.end.i:                                       ; preds = %for.end.10.i
  %conv.i = sext i32 %add11.i to i64, !dbg !3684
  %3 = load i8*, i8** bitcast (%struct._inittab** @PyImport_ExtendInittab.our_copy to i8**), align 8, !dbg !3685, !tbaa !1504
  %mul.i = shl nsw i64 %conv.i, 4, !dbg !3686
  %call.i = tail call i8* @PyMem_Realloc(i8* %3, i64 %mul.i) #1, !dbg !3686
  %4 = bitcast i8* %call.i to %struct._inittab*, !dbg !3686
  tail call void @llvm.dbg.value(metadata %struct._inittab* %4, i64 0, metadata !1084, metadata !1500) #1, !dbg !3687
  %cmp17.i = icmp eq i8* %call.i, null, !dbg !3688
  br i1 %cmp17.i, label %PyImport_ExtendInittab.exit, label %if.end.20.i, !dbg !3689

if.end.20.i:                                      ; preds = %cond.end.i
  %5 = load %struct._inittab*, %struct._inittab** @PyImport_ExtendInittab.our_copy, align 8, !dbg !3690, !tbaa !1504
  %6 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !3691, !tbaa !1504
  %cmp21.i = icmp eq %struct._inittab* %5, %6, !dbg !3692
  br i1 %cmp21.i, label %if.end.27.i, label %if.then.23.i, !dbg !3693

if.then.23.i:                                     ; preds = %if.end.20.i
  %7 = bitcast %struct._inittab* %6 to i8*, !dbg !3694
  %conv25.i = sext i32 %inc9.i.lcssa to i64, !dbg !3695
  %mul26.i = shl nsw i64 %conv25.i, 4, !dbg !3696
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* %call.i, i8* %7, i64 %mul26.i, i32 8, i1 false) #1, !dbg !3694
  br label %if.end.27.i, !dbg !3694

if.end.27.i:                                      ; preds = %if.then.23.i, %if.end.20.i
  store i8* %call.i, i8** bitcast (%struct._inittab** @PyImport_ExtendInittab.our_copy to i8**), align 8, !dbg !3697, !tbaa !1504
  store i8* %call.i, i8** bitcast (%struct._inittab** @PyImport_Inittab to i8**), align 8, !dbg !3698, !tbaa !1504
  %add.ptr.i = getelementptr %struct._inittab, %struct._inittab* %4, i64 %idxprom3.i.lcssa, !dbg !3699
  %8 = bitcast %struct._inittab* %add.ptr.i to i8*, !dbg !3700
  %conv29.i = sext i32 %inc.i.lcssa to i64, !dbg !3701
  %mul30.i = shl nsw i64 %conv29.i, 4, !dbg !3702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* %0, i64 %mul30.i, i32 8, i1 false) #1, !dbg !3700
  br label %PyImport_ExtendInittab.exit, !dbg !3703

PyImport_ExtendInittab.exit:                      ; preds = %for.end.i, %for.end.10.i, %cond.end.i, %if.end.27.i
  %retval.0.i = phi i32 [ 0, %if.end.27.i ], [ 0, %for.end.i ], [ -1, %cond.end.i ], [ -1, %for.end.10.i ], !dbg !3678
  call void @llvm.lifetime.end(i64 32, i8* %0) #1, !dbg !3704
  ret i32 %retval.0.i, !dbg !3705
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

declare %struct._object* @PyEval_GetBuiltins() #3

declare %struct._object* @PyEval_EvalCode(%struct._object*, %struct._object*, %struct._object*) #3

declare i64 @PyList_Size(%struct._object*) #3

declare %struct._object* @PyList_GetItem(%struct._object*, i64) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_extension_suffixes(%struct.PyModuleDef* nocapture readnone %module, %struct._object* nocapture readnone %_unused_ignored) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1187, metadata !1500), !dbg !3706
  tail call void @llvm.dbg.value(metadata %struct._object* %_unused_ignored, i64 0, metadata !1188, metadata !1500), !dbg !3707
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1193, metadata !1500) #1, !dbg !3708
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1196, metadata !1500) #1, !dbg !3710
  %call.i = tail call %struct._object* @PyList_New(i64 0) #1, !dbg !3711
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1194, metadata !1500) #1, !dbg !3712
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !3713
  br i1 %cmp.i, label %_imp_extension_suffixes_impl.exit, label %while.cond.preheader.i, !dbg !3715

while.cond.preheader.i:                           ; preds = %entry
  %0 = load i8*, i8** getelementptr inbounds ([0 x i8*], [0 x i8*]* @_PyImport_DynLoadFiletab, i64 0, i64 0), align 8, !dbg !3716, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %0, i64 0, metadata !1195, metadata !1500) #1, !dbg !3717
  %tobool.2.i = icmp eq i8* %0, null, !dbg !3718
  br i1 %tobool.2.i, label %_imp_extension_suffixes_impl.exit, label %while.body.i.preheader, !dbg !3718

while.body.i.preheader:                           ; preds = %while.cond.preheader.i
  br label %while.body.i, !dbg !3719

while.body.i:                                     ; preds = %while.body.i.preheader, %cleanup.i
  %1 = phi i8* [ %14, %cleanup.i ], [ %0, %while.body.i.preheader ], !dbg !3720
  %index.03.i = phi i32 [ %add.i, %cleanup.i ], [ 0, %while.body.i.preheader ], !dbg !3720
  %call1.i = tail call %struct._object* @PyUnicode_FromString(i8* %1) #1, !dbg !3719
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1197, metadata !1500) #1, !dbg !3721
  %cmp2.i = icmp eq %struct._object* %call1.i, null, !dbg !3722
  br i1 %cmp2.i, label %do.body.i, label %if.end.7.i, !dbg !3723

do.body.i:                                        ; preds = %while.body.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1199, metadata !1500) #1, !dbg !3724
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !3726
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3726, !tbaa !1533
  %dec.i = add i64 %2, -1, !dbg !3726
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !3726, !tbaa !1533
  %cmp4.i = icmp eq i64 %dec.i, 0, !dbg !3726
  br i1 %cmp4.i, label %if.else.i, label %_imp_extension_suffixes_impl.exit, !dbg !3728

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !3729
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3729, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !3729
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !3729, !tbaa !1539
  tail call void %4(%struct._object* %call.i) #1, !dbg !3729
  br label %_imp_extension_suffixes_impl.exit, !dbg !3720

if.end.7.i:                                       ; preds = %while.body.i
  %call8.i = tail call i32 @PyList_Append(%struct._object* %call.i, %struct._object* %call1.i) #1, !dbg !3731
  %cmp9.i = icmp slt i32 %call8.i, 0, !dbg !3732
  br i1 %cmp9.i, label %do.body.11.i, label %do.body.36.i, !dbg !3733

do.body.11.i:                                     ; preds = %if.end.7.i
  %call1.i.lcssa11 = phi %struct._object* [ %call1.i, %if.end.7.i ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !1203, metadata !1500) #1, !dbg !3734
  %ob_refcnt13.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !3736
  %5 = load i64, i64* %ob_refcnt13.i, align 8, !dbg !3736, !tbaa !1533
  %dec14.i = add i64 %5, -1, !dbg !3736
  store i64 %dec14.i, i64* %ob_refcnt13.i, align 8, !dbg !3736, !tbaa !1533
  %cmp15.i = icmp eq i64 %dec14.i, 0, !dbg !3736
  br i1 %cmp15.i, label %if.else.17.i, label %if.end.20.i, !dbg !3738

if.else.17.i:                                     ; preds = %do.body.11.i
  %ob_type18.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !3739
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type18.i, align 8, !dbg !3739, !tbaa !1538
  %tp_dealloc19.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !3739
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19.i, align 8, !dbg !3739, !tbaa !1539
  tail call void %7(%struct._object* %call.i) #1, !dbg !3739
  br label %if.end.20.i, !dbg !3720

if.end.20.i:                                      ; preds = %if.else.17.i, %do.body.11.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1207, metadata !1500) #1, !dbg !3741
  %ob_refcnt25.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.lcssa11, i64 0, i32 0, !dbg !3743
  %8 = load i64, i64* %ob_refcnt25.i, align 8, !dbg !3743, !tbaa !1533
  %dec26.i = add i64 %8, -1, !dbg !3743
  store i64 %dec26.i, i64* %ob_refcnt25.i, align 8, !dbg !3743, !tbaa !1533
  %cmp27.i = icmp eq i64 %dec26.i, 0, !dbg !3743
  br i1 %cmp27.i, label %if.else.29.i, label %_imp_extension_suffixes_impl.exit, !dbg !3745

if.else.29.i:                                     ; preds = %if.end.20.i
  %ob_type30.i = getelementptr inbounds %struct._object, %struct._object* %call1.i.lcssa11, i64 0, i32 1, !dbg !3746
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type30.i, align 8, !dbg !3746, !tbaa !1538
  %tp_dealloc31.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i64 0, i32 4, !dbg !3746
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31.i, align 8, !dbg !3746, !tbaa !1539
  tail call void %10(%struct._object* %call1.i.lcssa11) #1, !dbg !3746
  br label %_imp_extension_suffixes_impl.exit, !dbg !3720

do.body.36.i:                                     ; preds = %if.end.7.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1209, metadata !1500) #1, !dbg !3748
  %ob_refcnt38.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 0, !dbg !3750
  %11 = load i64, i64* %ob_refcnt38.i, align 8, !dbg !3750, !tbaa !1533
  %dec39.i = add i64 %11, -1, !dbg !3750
  store i64 %dec39.i, i64* %ob_refcnt38.i, align 8, !dbg !3750, !tbaa !1533
  %cmp40.i = icmp eq i64 %dec39.i, 0, !dbg !3750
  br i1 %cmp40.i, label %if.else.42.i, label %cleanup.i, !dbg !3752

if.else.42.i:                                     ; preds = %do.body.36.i
  %ob_type43.i = getelementptr inbounds %struct._object, %struct._object* %call1.i, i64 0, i32 1, !dbg !3753
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type43.i, align 8, !dbg !3753, !tbaa !1538
  %tp_dealloc44.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i64 0, i32 4, !dbg !3753
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44.i, align 8, !dbg !3753, !tbaa !1539
  tail call void %13(%struct._object* %call1.i) #1, !dbg !3753
  br label %cleanup.i, !dbg !3720

cleanup.i:                                        ; preds = %if.else.42.i, %do.body.36.i
  %add.i = add i32 %index.03.i, 1, !dbg !3755
  tail call void @llvm.dbg.value(metadata i32 %add.i, i64 0, metadata !1196, metadata !1500) #1, !dbg !3710
  %idxprom.i = zext i32 %add.i to i64, !dbg !3716
  %arrayidx.i = getelementptr [0 x i8*], [0 x i8*]* @_PyImport_DynLoadFiletab, i64 0, i64 %idxprom.i, !dbg !3716
  %14 = load i8*, i8** %arrayidx.i, align 8, !dbg !3716, !tbaa !1504
  tail call void @llvm.dbg.value(metadata i8* %14, i64 0, metadata !1195, metadata !1500) #1, !dbg !3717
  %tobool.i = icmp eq i8* %14, null, !dbg !3718
  br i1 %tobool.i, label %_imp_extension_suffixes_impl.exit.loopexit, label %while.body.i, !dbg !3718

_imp_extension_suffixes_impl.exit.loopexit:       ; preds = %cleanup.i
  br label %_imp_extension_suffixes_impl.exit, !dbg !3756

_imp_extension_suffixes_impl.exit:                ; preds = %_imp_extension_suffixes_impl.exit.loopexit, %entry, %while.cond.preheader.i, %do.body.i, %if.else.i, %if.end.20.i, %if.else.29.i
  %retval.2.i = phi %struct._object* [ null, %entry ], [ null, %do.body.i ], [ null, %if.else.i ], [ null, %if.end.20.i ], [ null, %if.else.29.i ], [ %call.i, %while.cond.preheader.i ], [ %call.i, %_imp_extension_suffixes_impl.exit.loopexit ], !dbg !3720
  ret %struct._object* %retval.2.i, !dbg !3756
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_lock_held(%struct.PyModuleDef* nocapture readnone %module, %struct._object* nocapture readnone %_unused_ignored) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1213, metadata !1500), !dbg !3757
  tail call void @llvm.dbg.value(metadata %struct._object* %_unused_ignored, i64 0, metadata !1214, metadata !1500), !dbg !3758
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1217, metadata !1500) #1, !dbg !3759
  %0 = load i64, i64* @import_lock_thread, align 8, !dbg !3761, !tbaa !1686
  %cmp.i = icmp ne i64 %0, -1, !dbg !3762
  %conv1.i = zext i1 %cmp.i to i64, !dbg !3761
  %call.i = tail call %struct._object* @PyBool_FromLong(i64 %conv1.i) #1, !dbg !3763
  ret %struct._object* %call.i, !dbg !3764
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_acquire_lock(%struct.PyModuleDef* nocapture readnone %module, %struct._object* nocapture readnone %_unused_ignored) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1220, metadata !1500), !dbg !3765
  tail call void @llvm.dbg.value(metadata %struct._object* %_unused_ignored, i64 0, metadata !1221, metadata !1500), !dbg !3766
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1224, metadata !1500) #1, !dbg !3767
  tail call void @_PyImport_AcquireLock() #1, !dbg !3769
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3770, !tbaa !1533
  %inc.i = add i64 %0, 1, !dbg !3770
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3770, !tbaa !1533
  ret %struct._object* @_Py_NoneStruct, !dbg !3771
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_release_lock(%struct.PyModuleDef* nocapture readnone %module, %struct._object* nocapture readnone %_unused_ignored) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1227, metadata !1500), !dbg !3772
  tail call void @llvm.dbg.value(metadata %struct._object* %_unused_ignored, i64 0, metadata !1228, metadata !1500), !dbg !3773
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1231, metadata !1500) #1, !dbg !3774
  %call.i.i = tail call i64 @PyThread_get_thread_ident() #1, !dbg !3776
  tail call void @llvm.dbg.value(metadata i64 %call.i.i, i64 0, metadata !597, metadata !1500) #1, !dbg !3779
  %cmp.i.i = icmp eq i64 %call.i.i, -1, !dbg !3780
  %0 = load i8*, i8** @import_lock, align 8, !dbg !3781
  %cmp1.i.i = icmp eq i8* %0, null, !dbg !3782
  %or.cond.i.i = or i1 %cmp.i.i, %cmp1.i.i, !dbg !3783
  br i1 %or.cond.i.i, label %if.end.i, label %if.end.i.i, !dbg !3783

if.end.i.i:                                       ; preds = %entry
  %1 = load i64, i64* @import_lock_thread, align 8, !dbg !3784, !tbaa !1686
  %cmp2.i.i = icmp eq i64 %1, %call.i.i, !dbg !3785
  br i1 %cmp2.i.i, label %if.end.4.i.i, label %if.then.i, !dbg !3786

if.end.4.i.i:                                     ; preds = %if.end.i.i
  %2 = load i32, i32* @import_lock_level, align 4, !dbg !3787, !tbaa !1591
  %dec.i.i = add i32 %2, -1, !dbg !3787
  store i32 %dec.i.i, i32* @import_lock_level, align 4, !dbg !3787, !tbaa !1591
  %cmp5.i.i = icmp eq i32 %dec.i.i, 0, !dbg !3788
  br i1 %cmp5.i.i, label %if.then.6.i.i, label %if.end.i, !dbg !3789

if.then.6.i.i:                                    ; preds = %if.end.4.i.i
  store i64 -1, i64* @import_lock_thread, align 8, !dbg !3790, !tbaa !1686
  tail call void @PyThread_release_lock(i8* %0) #1, !dbg !3791
  br label %if.end.i, !dbg !3792

if.then.i:                                        ; preds = %if.end.i.i
  %3 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !3793, !tbaa !1504
  tail call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.53, i64 0, i64 0)) #1, !dbg !3795
  br label %_imp_release_lock_impl.exit, !dbg !3796

if.end.i:                                         ; preds = %if.then.6.i.i, %if.end.4.i.i, %entry
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3797, !tbaa !1533
  %inc.i = add i64 %4, 1, !dbg !3797
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3797, !tbaa !1533
  br label %_imp_release_lock_impl.exit, !dbg !3798

_imp_release_lock_impl.exit:                      ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi %struct._object* [ null, %if.then.i ], [ @_Py_NoneStruct, %if.end.i ], !dbg !3799
  ret %struct._object* %retval.0.i, !dbg !3800
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_get_frozen_object(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %name = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1234, metadata !1500), !dbg !3801
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1235, metadata !1500), !dbg !3802
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1236, metadata !1500), !dbg !3803
  %0 = bitcast %struct._object** %name to i8*, !dbg !3804
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3804
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1237, metadata !1500), !dbg !3805
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.95, i64 0, i64 0), %struct._object** nonnull %name) #1, !dbg !3806
  %tobool = icmp eq i32 %call, 0, !dbg !3806
  br i1 %tobool, label %exit, label %if.end, !dbg !3808

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1237, metadata !1500), !dbg !3805
  %1 = load %struct._object*, %struct._object** %name, align 8, !dbg !3809, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1240, metadata !1500) #1, !dbg !3810
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1244, metadata !1500) #1, !dbg !3812
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1154, metadata !1500) #1, !dbg !3814
  %cmp.i.i.i = icmp eq %struct._object* %1, null, !dbg !3816
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i.i, !dbg !3817

if.end.i.i.i:                                     ; preds = %if.end
  %2 = load %struct._frozen*, %struct._frozen** @PyImport_FrozenModules, align 8, !dbg !3818, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._frozen* %2, i64 0, metadata !1155, metadata !1500) #1, !dbg !3819
  %name1.13.i.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %2, i64 0, i32 0, !dbg !3820
  %3 = load i8*, i8** %name1.13.i.i.i, align 8, !dbg !3820, !tbaa !2605
  %cmp2.14.i.i.i = icmp eq i8* %3, null, !dbg !3821
  br i1 %cmp2.14.i.i.i, label %if.then.i.i, label %if.end.4.i.i.i.preheader, !dbg !3822

if.end.4.i.i.i.preheader:                         ; preds = %if.end.i.i.i
  br label %if.end.4.i.i.i, !dbg !3823

if.end.4.i.i.i:                                   ; preds = %if.end.4.i.i.i.preheader, %for.inc.i.i.i
  %4 = phi i8* [ %5, %for.inc.i.i.i ], [ %3, %if.end.4.i.i.i.preheader ], !dbg !3824
  %p.015.i.i.i = phi %struct._frozen* [ %incdec.ptr.i.i.i, %for.inc.i.i.i ], [ %2, %if.end.4.i.i.i.preheader ], !dbg !3824
  %call.i.i.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %1, i8* %4) #1, !dbg !3823
  %cmp6.i.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !3825
  br i1 %cmp6.i.i.i, label %find_frozen.exit.i.i, label %for.inc.i.i.i, !dbg !3826

for.inc.i.i.i:                                    ; preds = %if.end.4.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct._frozen, %struct._frozen* %p.015.i.i.i, i64 1, !dbg !3827
  call void @llvm.dbg.value(metadata %struct._frozen* %incdec.ptr.i.i.i, i64 0, metadata !1155, metadata !1500) #1, !dbg !3819
  %name1.i.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %incdec.ptr.i.i.i, i64 0, i32 0, !dbg !3820
  %5 = load i8*, i8** %name1.i.i.i, align 8, !dbg !3820, !tbaa !2605
  %cmp2.i.i.i = icmp eq i8* %5, null, !dbg !3821
  br i1 %cmp2.i.i.i, label %if.then.i.i.loopexit, label %if.end.4.i.i.i, !dbg !3822

find_frozen.exit.i.i:                             ; preds = %if.end.4.i.i.i
  %p.015.i.i.i.lcssa = phi %struct._frozen* [ %p.015.i.i.i, %if.end.4.i.i.i ]
  call void @llvm.dbg.value(metadata %struct._frozen* %p.015.i.i.i, i64 0, metadata !1245, metadata !1500) #1, !dbg !3828
  %cmp.i.i = icmp eq %struct._frozen* %p.015.i.i.i.lcssa, null, !dbg !3829
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !3831

if.then.i.i.loopexit:                             ; preds = %for.inc.i.i.i
  br label %if.then.i.i, !dbg !3832

if.then.i.i:                                      ; preds = %if.then.i.i.loopexit, %find_frozen.exit.i.i, %if.end.i.i.i, %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !3832, !tbaa !1504
  %call1.i.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.96, i64 0, i64 0), %struct._object* %1) #1, !dbg !3834
  br label %exit, !dbg !3835

if.end.i.i:                                       ; preds = %find_frozen.exit.i.i
  %code.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %p.015.i.i.i.lcssa, i64 0, i32 1, !dbg !3836
  %7 = load i8*, i8** %code.i.i, align 8, !dbg !3836, !tbaa !2621
  %cmp2.i.i = icmp eq i8* %7, null, !dbg !3838
  br i1 %cmp2.i.i, label %if.then.3.i.i, label %if.end.5.i.i, !dbg !3839

if.then.3.i.i:                                    ; preds = %if.end.i.i
  %8 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !3840, !tbaa !1504
  %call4.i.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0), %struct._object* %1) #1, !dbg !3842
  br label %exit, !dbg !3843

if.end.5.i.i:                                     ; preds = %if.end.i.i
  %size6.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %p.015.i.i.i.lcssa, i64 0, i32 2, !dbg !3844
  %9 = load i32, i32* %size6.i.i, align 4, !dbg !3844, !tbaa !2629
  call void @llvm.dbg.value(metadata i32 %9, i64 0, metadata !1246, metadata !1500) #1, !dbg !3845
  %cmp7.i.i = icmp slt i32 %9, 0, !dbg !3846
  %sub.i.i = sub i32 0, %9, !dbg !3848
  call void @llvm.dbg.value(metadata i32 %sub.i.i, i64 0, metadata !1246, metadata !1500) #1, !dbg !3845
  %sub..i.i = select i1 %cmp7.i.i, i32 %sub.i.i, i32 %9, !dbg !3849
  %conv.i.i = sext i32 %sub..i.i to i64, !dbg !3850
  %call11.i.i = call %struct._object* @PyMarshal_ReadObjectFromString(i8* %7, i64 %conv.i.i) #1, !dbg !3851
  br label %exit, !dbg !3852

exit:                                             ; preds = %if.end.5.i.i, %if.then.3.i.i, %if.then.i.i, %entry
  %return_value.0 = phi %struct._object* [ null, %entry ], [ null, %if.then.i.i ], [ null, %if.then.3.i.i ], [ %call11.i.i, %if.end.5.i.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !3853
  ret %struct._object* %return_value.0, !dbg !3854
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_frozen_package(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %name = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1249, metadata !1500), !dbg !3855
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1250, metadata !1500), !dbg !3856
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1251, metadata !1500), !dbg !3857
  %0 = bitcast %struct._object** %name to i8*, !dbg !3858
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3858
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1252, metadata !1500), !dbg !3859
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.97, i64 0, i64 0), %struct._object** nonnull %name) #1, !dbg !3860
  %tobool = icmp eq i32 %call, 0, !dbg !3860
  br i1 %tobool, label %exit, label %if.end, !dbg !3862

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1252, metadata !1500), !dbg !3859
  %1 = load %struct._object*, %struct._object** %name, align 8, !dbg !3863, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1255, metadata !1500) #1, !dbg !3864
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1259, metadata !1500) #1, !dbg !3866
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1154, metadata !1500) #1, !dbg !3868
  %cmp.i.i.i = icmp eq %struct._object* %1, null, !dbg !3870
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i.i.i, !dbg !3871

if.end.i.i.i:                                     ; preds = %if.end
  %2 = load %struct._frozen*, %struct._frozen** @PyImport_FrozenModules, align 8, !dbg !3872, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._frozen* %2, i64 0, metadata !1155, metadata !1500) #1, !dbg !3873
  %name1.13.i.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %2, i64 0, i32 0, !dbg !3874
  %3 = load i8*, i8** %name1.13.i.i.i, align 8, !dbg !3874, !tbaa !2605
  %cmp2.14.i.i.i = icmp eq i8* %3, null, !dbg !3875
  br i1 %cmp2.14.i.i.i, label %if.then.i.i, label %if.end.4.i.i.i.preheader, !dbg !3876

if.end.4.i.i.i.preheader:                         ; preds = %if.end.i.i.i
  br label %if.end.4.i.i.i, !dbg !3877

if.end.4.i.i.i:                                   ; preds = %if.end.4.i.i.i.preheader, %for.inc.i.i.i
  %4 = phi i8* [ %5, %for.inc.i.i.i ], [ %3, %if.end.4.i.i.i.preheader ], !dbg !3878
  %p.015.i.i.i = phi %struct._frozen* [ %incdec.ptr.i.i.i, %for.inc.i.i.i ], [ %2, %if.end.4.i.i.i.preheader ], !dbg !3878
  %call.i.i.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %1, i8* %4) #1, !dbg !3877
  %cmp6.i.i.i = icmp eq i32 %call.i.i.i, 0, !dbg !3879
  br i1 %cmp6.i.i.i, label %find_frozen.exit.i.i, label %for.inc.i.i.i, !dbg !3880

for.inc.i.i.i:                                    ; preds = %if.end.4.i.i.i
  %incdec.ptr.i.i.i = getelementptr %struct._frozen, %struct._frozen* %p.015.i.i.i, i64 1, !dbg !3881
  call void @llvm.dbg.value(metadata %struct._frozen* %incdec.ptr.i.i.i, i64 0, metadata !1155, metadata !1500) #1, !dbg !3873
  %name1.i.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %incdec.ptr.i.i.i, i64 0, i32 0, !dbg !3874
  %5 = load i8*, i8** %name1.i.i.i, align 8, !dbg !3874, !tbaa !2605
  %cmp2.i.i.i = icmp eq i8* %5, null, !dbg !3875
  br i1 %cmp2.i.i.i, label %if.then.i.i.loopexit, label %if.end.4.i.i.i, !dbg !3876

find_frozen.exit.i.i:                             ; preds = %if.end.4.i.i.i
  %p.015.i.i.i.lcssa = phi %struct._frozen* [ %p.015.i.i.i, %if.end.4.i.i.i ]
  call void @llvm.dbg.value(metadata %struct._frozen* %p.015.i.i.i, i64 0, metadata !1260, metadata !1500) #1, !dbg !3882
  %cmp.i.i = icmp eq %struct._frozen* %p.015.i.i.i.lcssa, null, !dbg !3883
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !3885

if.then.i.i.loopexit:                             ; preds = %for.inc.i.i.i
  br label %if.then.i.i, !dbg !3886

if.then.i.i:                                      ; preds = %if.then.i.i.loopexit, %find_frozen.exit.i.i, %if.end.i.i.i, %if.end
  %6 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !3886, !tbaa !1504
  %call1.i.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.96, i64 0, i64 0), %struct._object* %1) #1, !dbg !3888
  br label %exit, !dbg !3889

if.end.i.i:                                       ; preds = %find_frozen.exit.i.i
  %size2.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %p.015.i.i.i.lcssa, i64 0, i32 2, !dbg !3890
  %7 = load i32, i32* %size2.i.i, align 4, !dbg !3890, !tbaa !2629
  call void @llvm.dbg.value(metadata i32 %7, i64 0, metadata !1261, metadata !1500) #1, !dbg !3891
  %cmp3.i.i = icmp slt i32 %7, 0, !dbg !3892
  br i1 %cmp3.i.i, label %if.then.4.i.i, label %if.else.i.i, !dbg !3894

if.then.4.i.i:                                    ; preds = %if.end.i.i
  %8 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3895, !tbaa !1533
  %inc.i.i = add i64 %8, 1, !dbg !3895
  store i64 %inc.i.i, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3895, !tbaa !1533
  br label %exit, !dbg !3895

if.else.i.i:                                      ; preds = %if.end.i.i
  %9 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3896, !tbaa !1533
  %inc5.i.i = add i64 %9, 1, !dbg !3896
  store i64 %inc5.i.i, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !3896, !tbaa !1533
  br label %exit, !dbg !3896

exit:                                             ; preds = %if.else.i.i, %if.then.4.i.i, %if.then.i.i, %entry
  %return_value.0 = phi %struct._object* [ null, %entry ], [ null, %if.then.i.i ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then.4.i.i ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.else.i.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !3897
  ret %struct._object* %return_value.0, !dbg !3898
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_init_builtin(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %name = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1264, metadata !1500), !dbg !3899
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1265, metadata !1500), !dbg !3900
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1266, metadata !1500), !dbg !3901
  %0 = bitcast %struct._object** %name to i8*, !dbg !3902
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3902
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1267, metadata !1500), !dbg !3903
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i64 0, i64 0), %struct._object** nonnull %name) #1, !dbg !3904
  %tobool = icmp eq i32 %call, 0, !dbg !3904
  br i1 %tobool, label %exit, label %if.end, !dbg !3906

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1267, metadata !1500), !dbg !3903
  %1 = load %struct._object*, %struct._object** %name, align 8, !dbg !3907, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1270, metadata !1500) #1, !dbg !3908
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1278, metadata !1500) #1, !dbg !3910
  %call.i.i = call %struct._object* @_PyImport_FindExtensionObject(%struct._object* %1, %struct._object* %1) #1, !dbg !3912
  call void @llvm.dbg.value(metadata %struct._object* %call.i.i, i64 0, metadata !1280, metadata !1500) #1, !dbg !3913
  %call1.i.i = call %struct._object* @PyErr_Occurred() #1, !dbg !3914
  %tobool.i.i = icmp eq %struct._object* %call1.i.i, null, !dbg !3914
  br i1 %tobool.i.i, label %if.end.i.i, label %exit, !dbg !3916

if.end.i.i:                                       ; preds = %if.end
  %cmp.i.i = icmp eq %struct._object* %call.i.i, null, !dbg !3917
  br i1 %cmp.i.i, label %if.end.3.i.i, label %if.end.3.i, !dbg !3919

if.end.3.i.i:                                     ; preds = %if.end.i.i
  %2 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !3920, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._inittab* %2, i64 0, metadata !1279, metadata !1500) #1, !dbg !3921
  %name4.54.i.i = getelementptr inbounds %struct._inittab, %struct._inittab* %2, i64 0, i32 0, !dbg !3922
  %3 = load i8*, i8** %name4.54.i.i, align 8, !dbg !3922, !tbaa !3616
  %cmp5.55.i.i = icmp eq i8* %3, null, !dbg !3923
  br i1 %cmp5.55.i.i, label %if.then.2.i, label %for.body.i.i.preheader, !dbg !3924

for.body.i.i.preheader:                           ; preds = %if.end.3.i.i
  br label %for.body.i.i, !dbg !3925

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.inc.i.i
  %4 = phi i8* [ %13, %for.inc.i.i ], [ %3, %for.body.i.i.preheader ], !dbg !3926
  %p.056.i.i = phi %struct._inittab* [ %incdec.ptr.i.i, %for.inc.i.i ], [ %2, %for.body.i.i.preheader ], !dbg !3926
  %call8.i.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %1, i8* %4) #1, !dbg !3925
  %cmp9.i.i = icmp eq i32 %call8.i.i, 0, !dbg !3927
  br i1 %cmp9.i.i, label %if.then.10.i.i, label %for.inc.i.i, !dbg !3928

if.then.10.i.i:                                   ; preds = %for.body.i.i
  %p.056.i.i.lcssa = phi %struct._inittab* [ %p.056.i.i, %for.body.i.i ]
  %initfunc.i.i = getelementptr inbounds %struct._inittab, %struct._inittab* %p.056.i.i.lcssa, i64 0, i32 1, !dbg !3929
  %5 = load %struct._object* ()*, %struct._object* ()** %initfunc.i.i, align 8, !dbg !3929, !tbaa !3667
  %cmp11.i.i = icmp eq %struct._object* ()* %5, null, !dbg !3931
  br i1 %cmp11.i.i, label %if.then.12.i.i, label %if.end.14.i.i, !dbg !3932

if.then.12.i.i:                                   ; preds = %if.then.10.i.i
  %6 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !3933, !tbaa !1504
  %call13.i.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.99, i64 0, i64 0), %struct._object* %1) #1, !dbg !3935
  br label %exit, !dbg !3936

if.end.14.i.i:                                    ; preds = %if.then.10.i.i
  %call16.i.i = call %struct._object* %5() #1, !dbg !3937
  call void @llvm.dbg.value(metadata %struct._object* %call16.i.i, i64 0, metadata !1281, metadata !1500) #1, !dbg !3938
  %cmp17.i.i = icmp eq %struct._object* %call16.i.i, null, !dbg !3939
  br i1 %cmp17.i.i, label %exit, label %if.end.19.i.i, !dbg !3941

if.end.19.i.i:                                    ; preds = %if.end.14.i.i
  %call20.i.i = call %struct.PyModuleDef* @PyModule_GetDef(%struct._object* %call16.i.i) #1, !dbg !3942
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* %call20.i.i, i64 0, metadata !1285, metadata !1500) #1, !dbg !3943
  %7 = bitcast %struct._object* ()** %initfunc.i.i to i64*, !dbg !3944
  %8 = load i64, i64* %7, align 8, !dbg !3944, !tbaa !3667
  %m_init.i.i = getelementptr inbounds %struct.PyModuleDef, %struct.PyModuleDef* %call20.i.i, i64 0, i32 0, i32 1, !dbg !3945
  %9 = bitcast %struct._object* ()** %m_init.i.i to i64*, !dbg !3946
  store i64 %8, i64* %9, align 8, !dbg !3946, !tbaa !2185
  %call22.i.i = call i32 @_PyImport_FixupExtensionObject(%struct._object* %call16.i.i, %struct._object* %1, %struct._object* %1) #1, !dbg !3947
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0, !dbg !3949
  br i1 %cmp23.i.i, label %exit, label %do.body.i.i, !dbg !3950

do.body.i.i:                                      ; preds = %if.end.19.i.i
  call void @llvm.dbg.value(metadata %struct._object* %call16.i.i, i64 0, metadata !1286, metadata !1500) #1, !dbg !3951
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call16.i.i, i64 0, i32 0, !dbg !3953
  %10 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !3953, !tbaa !1533
  %dec.i.i = add i64 %10, -1, !dbg !3953
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !3953, !tbaa !1533
  %cmp26.i.i = icmp eq i64 %dec.i.i, 0, !dbg !3953
  br i1 %cmp26.i.i, label %if.else.i.i, label %if.end.3.i, !dbg !3955

if.else.i.i:                                      ; preds = %do.body.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call16.i.i, i64 0, i32 1, !dbg !3956
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !3956, !tbaa !1538
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !3956
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !3956, !tbaa !1539
  call void %12(%struct._object* %call16.i.i) #1, !dbg !3956
  br label %if.end.3.i, !dbg !3926

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr.i.i = getelementptr %struct._inittab, %struct._inittab* %p.056.i.i, i64 1, !dbg !3958
  call void @llvm.dbg.value(metadata %struct._inittab* %incdec.ptr.i.i, i64 0, metadata !1279, metadata !1500) #1, !dbg !3921
  %name4.i.i = getelementptr inbounds %struct._inittab, %struct._inittab* %incdec.ptr.i.i, i64 0, i32 0, !dbg !3922
  %13 = load i8*, i8** %name4.i.i, align 8, !dbg !3922, !tbaa !3616
  %cmp5.i.i = icmp eq i8* %13, null, !dbg !3923
  br i1 %cmp5.i.i, label %if.then.2.i.loopexit, label %for.body.i.i, !dbg !3924

if.then.2.i.loopexit:                             ; preds = %for.inc.i.i
  br label %if.then.2.i, !dbg !3959

if.then.2.i:                                      ; preds = %if.then.2.i.loopexit, %if.end.3.i.i
  %14 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3959, !tbaa !1533
  %inc.i = add i64 %14, 1, !dbg !3959
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3959, !tbaa !1533
  br label %exit, !dbg !3962

if.end.3.i:                                       ; preds = %if.else.i.i, %do.body.i.i, %if.end.i.i
  %call4.i = call %struct._object* @PyImport_AddModuleObject(%struct._object* %1) #1, !dbg !3963
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !1273, metadata !1500) #1, !dbg !3964
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !1274, metadata !1500) #1, !dbg !3965
  %cmp5.i = icmp eq %struct._object* %call4.i, null, !dbg !3967
  br i1 %cmp5.i, label %exit, label %if.then.6.i, !dbg !3969

if.then.6.i:                                      ; preds = %if.end.3.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call4.i, i64 0, i32 0, !dbg !3970
  %15 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3970, !tbaa !1533
  %inc7.i = add i64 %15, 1, !dbg !3970
  store i64 %inc7.i, i64* %ob_refcnt.i, align 8, !dbg !3970, !tbaa !1533
  br label %exit, !dbg !3970

exit:                                             ; preds = %if.then.6.i, %if.end.3.i, %if.then.2.i, %if.end.19.i.i, %if.end.14.i.i, %if.then.12.i.i, %if.end, %entry
  %return_value.0 = phi %struct._object* [ null, %entry ], [ @_Py_NoneStruct, %if.then.2.i ], [ null, %if.end.3.i ], [ %call4.i, %if.then.6.i ], [ null, %if.end ], [ null, %if.end.19.i.i ], [ null, %if.end.14.i.i ], [ null, %if.then.12.i.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !3972
  ret %struct._object* %return_value.0, !dbg !3973
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_init_frozen(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %name = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1292, metadata !1500), !dbg !3974
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1293, metadata !1500), !dbg !3975
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1294, metadata !1500), !dbg !3976
  %0 = bitcast %struct._object** %name to i8*, !dbg !3977
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3977
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1295, metadata !1500), !dbg !3978
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.100, i64 0, i64 0), %struct._object** nonnull %name) #1, !dbg !3979
  %tobool = icmp eq i32 %call, 0, !dbg !3979
  br i1 %tobool, label %exit, label %if.end, !dbg !3981

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1295, metadata !1500), !dbg !3978
  %1 = load %struct._object*, %struct._object** %name, align 8, !dbg !3982, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1298, metadata !1500) #1, !dbg !3983
  %call.i = call i32 @PyImport_ImportFrozenModuleObject(%struct._object* %1) #1, !dbg !3985
  call void @llvm.dbg.value(metadata i32 %call.i, i64 0, metadata !1300, metadata !1500) #1, !dbg !3986
  %cmp.i = icmp slt i32 %call.i, 0, !dbg !3987
  br i1 %cmp.i, label %exit, label %if.end.i, !dbg !3989

if.end.i:                                         ; preds = %if.end
  %cmp1.i = icmp eq i32 %call.i, 0, !dbg !3990
  br i1 %cmp1.i, label %if.then.2.i, label %if.end.3.i, !dbg !3992

if.then.2.i:                                      ; preds = %if.end.i
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3993, !tbaa !1533
  %inc.i = add i64 %2, 1, !dbg !3993
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !3993, !tbaa !1533
  br label %exit, !dbg !3995

if.end.3.i:                                       ; preds = %if.end.i
  %call4.i = call %struct._object* @PyImport_AddModuleObject(%struct._object* %1) #1, !dbg !3996
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !1301, metadata !1500) #1, !dbg !3997
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !1302, metadata !1500) #1, !dbg !3998
  %cmp5.i = icmp eq %struct._object* %call4.i, null, !dbg !4000
  br i1 %cmp5.i, label %exit, label %if.then.6.i, !dbg !4002

if.then.6.i:                                      ; preds = %if.end.3.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call4.i, i64 0, i32 0, !dbg !4003
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !4003, !tbaa !1533
  %inc7.i = add i64 %3, 1, !dbg !4003
  store i64 %inc7.i, i64* %ob_refcnt.i, align 8, !dbg !4003, !tbaa !1533
  br label %exit, !dbg !4003

exit:                                             ; preds = %if.then.6.i, %if.end.3.i, %if.then.2.i, %if.end, %entry
  %return_value.0 = phi %struct._object* [ null, %entry ], [ @_Py_NoneStruct, %if.then.2.i ], [ null, %if.end ], [ null, %if.end.3.i ], [ %call4.i, %if.then.6.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !4005
  ret %struct._object* %return_value.0, !dbg !4006
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_builtin(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %name = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1306, metadata !1500), !dbg !4007
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1307, metadata !1500), !dbg !4008
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1308, metadata !1500), !dbg !4009
  %0 = bitcast %struct._object** %name to i8*, !dbg !4010
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4010
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1309, metadata !1500), !dbg !4011
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.101, i64 0, i64 0), %struct._object** nonnull %name) #1, !dbg !4012
  %tobool = icmp eq i32 %call, 0, !dbg !4012
  br i1 %tobool, label %exit, label %if.end, !dbg !4014

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1309, metadata !1500), !dbg !4011
  %1 = load %struct._object*, %struct._object** %name, align 8, !dbg !4015, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1312, metadata !1500) #1, !dbg !4016
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1316, metadata !1500) #1, !dbg !4018
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1317, metadata !1500) #1, !dbg !4020
  %2 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !4021, !tbaa !1504
  %name1.17.i.i = getelementptr inbounds %struct._inittab, %struct._inittab* %2, i64 0, i32 0, !dbg !4024
  %3 = load i8*, i8** %name1.17.i.i, align 8, !dbg !4024, !tbaa !3616
  %cmp2.18.i.i = icmp eq i8* %3, null, !dbg !4025
  br i1 %cmp2.18.i.i, label %_imp_is_builtin_impl.exit, label %for.body.i.i.preheader, !dbg !4026

for.body.i.i.preheader:                           ; preds = %if.end
  br label %for.body.i.i, !dbg !4027

for.cond.i.i:                                     ; preds = %for.body.i.i
  %idxprom.i.i = sext i32 %inc.i.i to i64, !dbg !4021
  %4 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !4021, !tbaa !1504
  %name1.i.i = getelementptr inbounds %struct._inittab, %struct._inittab* %4, i64 %idxprom.i.i, i32 0, !dbg !4024
  %5 = load i8*, i8** %name1.i.i, align 8, !dbg !4024, !tbaa !3616
  %cmp2.i.i = icmp eq i8* %5, null, !dbg !4025
  br i1 %cmp2.i.i, label %_imp_is_builtin_impl.exit.loopexit, label %for.body.i.i, !dbg !4026

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.cond.i.i
  %6 = phi i8* [ %5, %for.cond.i.i ], [ %3, %for.body.i.i.preheader ], !dbg !4029
  %idxprom20.i.i = phi i64 [ %idxprom.i.i, %for.cond.i.i ], [ 0, %for.body.i.i.preheader ], !dbg !4029
  %i.019.i.i = phi i32 [ %inc.i.i, %for.cond.i.i ], [ 0, %for.body.i.i.preheader ], !dbg !4029
  %call.i.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %1, i8* %6) #1, !dbg !4027
  call void @llvm.dbg.value(metadata i32 %call.i.i, i64 0, metadata !1318, metadata !1500) #1, !dbg !4030
  %cmp6.i.i = icmp eq i32 %call.i.i, 0, !dbg !4031
  %inc.i.i = add i32 %i.019.i.i, 1, !dbg !4033
  call void @llvm.dbg.value(metadata i32 %inc.i.i, i64 0, metadata !1317, metadata !1500) #1, !dbg !4020
  br i1 %cmp6.i.i, label %if.then.i.i, label %for.cond.i.i, !dbg !4034

if.then.i.i:                                      ; preds = %for.body.i.i
  %idxprom20.i.i.lcssa = phi i64 [ %idxprom20.i.i, %for.body.i.i ]
  %7 = load %struct._inittab*, %struct._inittab** @PyImport_Inittab, align 8, !dbg !4035, !tbaa !1504
  %initfunc.i.i = getelementptr inbounds %struct._inittab, %struct._inittab* %7, i64 %idxprom20.i.i.lcssa, i32 1, !dbg !4038
  %8 = load %struct._object* ()*, %struct._object* ()** %initfunc.i.i, align 8, !dbg !4038, !tbaa !3667
  %cmp9.i.i = icmp eq %struct._object* ()* %8, null, !dbg !4039
  %phitmp.i = select i1 %cmp9.i.i, i64 -1, i64 1, !dbg !4040
  br label %_imp_is_builtin_impl.exit, !dbg !4040

_imp_is_builtin_impl.exit.loopexit:               ; preds = %for.cond.i.i
  br label %_imp_is_builtin_impl.exit, !dbg !4041

_imp_is_builtin_impl.exit:                        ; preds = %_imp_is_builtin_impl.exit.loopexit, %if.end, %if.then.i.i
  %retval.0.i.i = phi i64 [ %phitmp.i, %if.then.i.i ], [ 0, %if.end ], [ 0, %_imp_is_builtin_impl.exit.loopexit ], !dbg !4042
  %call1.i = call %struct._object* @PyLong_FromLong(i64 %retval.0.i.i) #1, !dbg !4041
  call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1308, metadata !1500), !dbg !4009
  br label %exit, !dbg !4043

exit:                                             ; preds = %entry, %_imp_is_builtin_impl.exit
  %return_value.0 = phi %struct._object* [ %call1.i, %_imp_is_builtin_impl.exit ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !4044
  ret %struct._object* %return_value.0, !dbg !4045
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_is_frozen(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %name = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1321, metadata !1500), !dbg !4046
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1322, metadata !1500), !dbg !4047
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1323, metadata !1500), !dbg !4048
  %0 = bitcast %struct._object** %name to i8*, !dbg !4049
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4049
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1324, metadata !1500), !dbg !4050
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.102, i64 0, i64 0), %struct._object** nonnull %name) #1, !dbg !4051
  %tobool = icmp eq i32 %call, 0, !dbg !4051
  br i1 %tobool, label %exit, label %if.end, !dbg !4053

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1324, metadata !1500), !dbg !4050
  %1 = load %struct._object*, %struct._object** %name, align 8, !dbg !4054, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1327, metadata !1500) #1, !dbg !4055
  call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1154, metadata !1500) #1, !dbg !4057
  %cmp.i.i = icmp eq %struct._object* %1, null, !dbg !4059
  br i1 %cmp.i.i, label %_imp_is_frozen_impl.exit, label %if.end.i.i, !dbg !4060

if.end.i.i:                                       ; preds = %if.end
  %2 = load %struct._frozen*, %struct._frozen** @PyImport_FrozenModules, align 8, !dbg !4061, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._frozen* %2, i64 0, metadata !1155, metadata !1500) #1, !dbg !4062
  %name1.13.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %2, i64 0, i32 0, !dbg !4063
  %3 = load i8*, i8** %name1.13.i.i, align 8, !dbg !4063, !tbaa !2605
  %cmp2.14.i.i = icmp eq i8* %3, null, !dbg !4064
  br i1 %cmp2.14.i.i, label %_imp_is_frozen_impl.exit, label %if.end.4.i.i.preheader, !dbg !4065

if.end.4.i.i.preheader:                           ; preds = %if.end.i.i
  br label %if.end.4.i.i, !dbg !4066

if.end.4.i.i:                                     ; preds = %if.end.4.i.i.preheader, %for.inc.i.i
  %4 = phi i8* [ %5, %for.inc.i.i ], [ %3, %if.end.4.i.i.preheader ], !dbg !4067
  %p.015.i.i = phi %struct._frozen* [ %incdec.ptr.i.i, %for.inc.i.i ], [ %2, %if.end.4.i.i.preheader ], !dbg !4067
  %call.i.i = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %1, i8* %4) #1, !dbg !4066
  %cmp6.i.i = icmp eq i32 %call.i.i, 0, !dbg !4068
  br i1 %cmp6.i.i, label %find_frozen.exit.i, label %for.inc.i.i, !dbg !4069

for.inc.i.i:                                      ; preds = %if.end.4.i.i
  %incdec.ptr.i.i = getelementptr %struct._frozen, %struct._frozen* %p.015.i.i, i64 1, !dbg !4070
  call void @llvm.dbg.value(metadata %struct._frozen* %incdec.ptr.i.i, i64 0, metadata !1155, metadata !1500) #1, !dbg !4062
  %name1.i.i = getelementptr inbounds %struct._frozen, %struct._frozen* %incdec.ptr.i.i, i64 0, i32 0, !dbg !4063
  %5 = load i8*, i8** %name1.i.i, align 8, !dbg !4063, !tbaa !2605
  %cmp2.i.i = icmp eq i8* %5, null, !dbg !4064
  br i1 %cmp2.i.i, label %_imp_is_frozen_impl.exit.loopexit, label %if.end.4.i.i, !dbg !4065

find_frozen.exit.i:                               ; preds = %if.end.4.i.i
  %p.015.i.i.lcssa = phi %struct._frozen* [ %p.015.i.i, %if.end.4.i.i ]
  call void @llvm.dbg.value(metadata %struct._frozen* %p.015.i.i, i64 0, metadata !1329, metadata !1500) #1, !dbg !4071
  %cmp.i = icmp eq %struct._frozen* %p.015.i.i.lcssa, null, !dbg !4072
  br i1 %cmp.i, label %_imp_is_frozen_impl.exit, label %cond.false.i, !dbg !4073

cond.false.i:                                     ; preds = %find_frozen.exit.i
  %size.i = getelementptr inbounds %struct._frozen, %struct._frozen* %p.015.i.i.lcssa, i64 0, i32 2, !dbg !4074
  %6 = load i32, i32* %size.i, align 4, !dbg !4074, !tbaa !2629
  %phitmp.i = sext i32 %6 to i64, !dbg !4073
  br label %_imp_is_frozen_impl.exit, !dbg !4073

_imp_is_frozen_impl.exit.loopexit:                ; preds = %for.inc.i.i
  br label %_imp_is_frozen_impl.exit, !dbg !4075

_imp_is_frozen_impl.exit:                         ; preds = %_imp_is_frozen_impl.exit.loopexit, %if.end, %if.end.i.i, %find_frozen.exit.i, %cond.false.i
  %cond.i = phi i64 [ %phitmp.i, %cond.false.i ], [ 0, %find_frozen.exit.i ], [ 0, %if.end ], [ 0, %if.end.i.i ], [ 0, %_imp_is_frozen_impl.exit.loopexit ], !dbg !4076
  %call1.i = call %struct._object* @PyBool_FromLong(i64 %cond.i) #1, !dbg !4075
  call void @llvm.dbg.value(metadata %struct._object* %call1.i, i64 0, metadata !1323, metadata !1500), !dbg !4048
  br label %exit, !dbg !4077

exit:                                             ; preds = %entry, %_imp_is_frozen_impl.exit
  %return_value.0 = phi %struct._object* [ %call1.i, %_imp_is_frozen_impl.exit ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !4078
  ret %struct._object* %return_value.0, !dbg !4079
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp_load_dynamic(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %name = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %file = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1332, metadata !1500), !dbg !4080
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1333, metadata !1500), !dbg !4081
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1334, metadata !1500), !dbg !4082
  %0 = bitcast %struct._object** %name to i8*, !dbg !4083
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4083
  %1 = bitcast %struct._object** %path to i8*, !dbg !4084
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4084
  %2 = bitcast %struct._object** %file to i8*, !dbg !4085
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4085
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1337, metadata !1500), !dbg !4086
  store %struct._object* null, %struct._object** %file, align 8, !dbg !4086, !tbaa !1504
  tail call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1335, metadata !1500), !dbg !4087
  tail call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !1336, metadata !1500), !dbg !4088
  tail call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !1337, metadata !1500), !dbg !4086
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.103, i64 0, i64 0), %struct._object** nonnull %name, i32 (%struct._object*, i8*)* nonnull @PyUnicode_FSDecoder, %struct._object** nonnull %path, %struct._object** nonnull %file) #1, !dbg !4089
  %tobool = icmp eq i32 %call, 0, !dbg !4089
  br i1 %tobool, label %exit, label %if.end, !dbg !4091

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %name, i64 0, metadata !1335, metadata !1500), !dbg !4087
  %3 = load %struct._object*, %struct._object** %name, align 8, !dbg !4092, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !1336, metadata !1500), !dbg !4088
  %4 = load %struct._object*, %struct._object** %path, align 8, !dbg !4093, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object** %file, i64 0, metadata !1337, metadata !1500), !dbg !4086
  %5 = load %struct._object*, %struct._object** %file, align 8, !dbg !4094, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1342, metadata !1500) #1, !dbg !4095
  %cmp.i = icmp eq %struct._object* %5, null, !dbg !4097
  br i1 %cmp.i, label %if.end.11.i, label %if.then.i, !dbg !4098

if.then.i:                                        ; preds = %if.end
  %call.i = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.104, i64 0, i64 0)) #1, !dbg !4099
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call.i, i64 0, metadata !1347, metadata !1500) #1, !dbg !4100
  %cmp1.i = icmp eq %struct._IO_FILE* %call.i, null, !dbg !4101
  br i1 %cmp1.i, label %do.body.i, label %if.end.11.i, !dbg !4102

do.body.i:                                        ; preds = %if.then.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !4103
  %6 = load i64, i64* %ob_refcnt.i, align 8, !dbg !4103, !tbaa !1533
  %dec.i = add i64 %6, -1, !dbg !4103
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !4103, !tbaa !1533
  %cmp3.i = icmp eq i64 %dec.i, 0, !dbg !4103
  br i1 %cmp3.i, label %if.else.i, label %if.end.i, !dbg !4105

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !4106
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !4106, !tbaa !1538
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !4106
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !4106, !tbaa !1539
  call void %8(%struct._object* %4) #1, !dbg !4106
  br label %if.end.i, !dbg !4108

if.end.i:                                         ; preds = %if.else.i, %do.body.i
  %call5.i = call %struct._object* @PyErr_Occurred() #1, !dbg !4109
  %tobool.i = icmp eq %struct._object* %call5.i, null, !dbg !4109
  br i1 %tobool.i, label %if.then.6.i, label %exit, !dbg !4111

if.then.6.i:                                      ; preds = %if.end.i
  %9 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !4112, !tbaa !1504
  %call7.i = call %struct._object* @PyErr_SetFromErrno(%struct._object* %9) #1, !dbg !4113
  br label %exit, !dbg !4113

if.end.11.i:                                      ; preds = %if.then.i, %if.end
  %fp.0.i = phi %struct._IO_FILE* [ %call.i, %if.then.i ], [ null, %if.end ], !dbg !4108
  %call12.i = call %struct._object* @_PyImport_LoadDynamicModule(%struct._object* %3, %struct._object* %4, %struct._IO_FILE* %fp.0.i) #1, !dbg !4114
  call void @llvm.dbg.value(metadata %struct._object* %call12.i, i64 0, metadata !1346, metadata !1500) #1, !dbg !4115
  %ob_refcnt15.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !4116
  %10 = load i64, i64* %ob_refcnt15.i, align 8, !dbg !4116, !tbaa !1533
  %dec16.i = add i64 %10, -1, !dbg !4116
  store i64 %dec16.i, i64* %ob_refcnt15.i, align 8, !dbg !4116, !tbaa !1533
  %cmp17.i = icmp eq i64 %dec16.i, 0, !dbg !4116
  br i1 %cmp17.i, label %if.else.19.i, label %if.end.22.i, !dbg !4118

if.else.19.i:                                     ; preds = %if.end.11.i
  %ob_type20.i = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !4119
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type20.i, align 8, !dbg !4119, !tbaa !1538
  %tp_dealloc21.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !4119
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21.i, align 8, !dbg !4119, !tbaa !1539
  call void %12(%struct._object* %4) #1, !dbg !4119
  br label %if.end.22.i, !dbg !4108

if.end.22.i:                                      ; preds = %if.else.19.i, %if.end.11.i
  %tobool25.i = icmp eq %struct._IO_FILE* %fp.0.i, null, !dbg !4121
  br i1 %tobool25.i, label %exit, label %if.then.26.i, !dbg !4123

if.then.26.i:                                     ; preds = %if.end.22.i
  %call27.i = call i32 @fclose(%struct._IO_FILE* %fp.0.i) #1, !dbg !4124
  br label %exit, !dbg !4124

exit:                                             ; preds = %if.then.26.i, %if.end.22.i, %if.then.6.i, %if.end.i, %entry
  %return_value.0 = phi %struct._object* [ null, %entry ], [ null, %if.end.i ], [ null, %if.then.6.i ], [ %call12.i, %if.end.22.i ], [ %call12.i, %if.then.26.i ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !4125
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !4125
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !4125
  ret %struct._object* %return_value.0, !dbg !4126
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @_imp__fix_co_filename(%struct.PyModuleDef* nocapture readnone %module, %struct._object* %args) #0 {
entry:
  %code = alloca %struct.PyCodeObject*, align 8
  %path = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct.PyModuleDef* %module, i64 0, metadata !1358, metadata !1500), !dbg !4127
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !1359, metadata !1500), !dbg !4128
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1360, metadata !1500), !dbg !4129
  %0 = bitcast %struct.PyCodeObject** %code to i8*, !dbg !4130
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4130
  %1 = bitcast %struct._object** %path to i8*, !dbg !4131
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4131
  tail call void @llvm.dbg.value(metadata %struct.PyCodeObject** %code, i64 0, metadata !1361, metadata !1500), !dbg !4132
  tail call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !1362, metadata !1500), !dbg !4133
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.105, i64 0, i64 0), %struct._typeobject* nonnull @PyCode_Type, %struct.PyCodeObject** nonnull %code, %struct._object** nonnull %path) #1, !dbg !4134
  %tobool = icmp eq i32 %call, 0, !dbg !4134
  br i1 %tobool, label %exit, label %if.end, !dbg !4136

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.PyCodeObject** %code, i64 0, metadata !1361, metadata !1500), !dbg !4132
  %2 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code, align 8, !dbg !4137, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !1362, metadata !1500), !dbg !4133
  %3 = load %struct._object*, %struct._object** %path, align 8, !dbg !4138, !tbaa !1504
  call void @llvm.dbg.value(metadata %struct.PyModuleDef* null, i64 0, metadata !1367, metadata !1500) #1, !dbg !4139
  call void @llvm.dbg.value(metadata %struct.PyCodeObject* %2, i64 0, metadata !1374, metadata !1500) #1, !dbg !4141
  call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !1375, metadata !1500) #1, !dbg !4143
  %co_filename.i.i = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %2, i64 0, i32 13, !dbg !4144
  %4 = load %struct._object*, %struct._object** %co_filename.i.i, align 8, !dbg !4144, !tbaa !2462
  %call.i.i = call i32 @PyUnicode_Compare(%struct._object* %4, %struct._object* %3) #1, !dbg !4146
  %cmp.i.i = icmp eq i32 %call.i.i, 0, !dbg !4147
  br i1 %cmp.i.i, label %_imp__fix_co_filename_impl.exit, label %if.end.i.i, !dbg !4148

if.end.i.i:                                       ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %co_filename.i.i, align 8, !dbg !4149, !tbaa !2462
  call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !1376, metadata !1500) #1, !dbg !4150
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !4151
  %6 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !4151, !tbaa !1533
  %inc.i.i = add i64 %6, 1, !dbg !4151
  store i64 %inc.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !4151, !tbaa !1533
  call fastcc void @update_code_filenames(%struct.PyCodeObject* %2, %struct._object* %5, %struct._object* %3) #1, !dbg !4152
  call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !1377, metadata !1500) #1, !dbg !4153
  %7 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !4155, !tbaa !1533
  %dec.i.i = add i64 %7, -1, !dbg !4155
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !4155, !tbaa !1533
  %cmp3.i.i = icmp eq i64 %dec.i.i, 0, !dbg !4155
  br i1 %cmp3.i.i, label %if.else.i.i, label %_imp__fix_co_filename_impl.exit, !dbg !4157

if.else.i.i:                                      ; preds = %if.end.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !4158
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !4158, !tbaa !1538
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i64 0, i32 4, !dbg !4158
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !4158, !tbaa !1539
  call void %9(%struct._object* %5) #1, !dbg !4158
  br label %_imp__fix_co_filename_impl.exit, !dbg !4160

_imp__fix_co_filename_impl.exit:                  ; preds = %if.end, %if.end.i.i, %if.else.i.i
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !4161, !tbaa !1533
  %inc.i = add i64 %10, 1, !dbg !4161
  store i64 %inc.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !4161, !tbaa !1533
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !1360, metadata !1500), !dbg !4129
  br label %exit, !dbg !4162

exit:                                             ; preds = %entry, %_imp__fix_co_filename_impl.exit
  %return_value.0 = phi %struct._object* [ @_Py_NoneStruct, %_imp__fix_co_filename_impl.exit ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !4163
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !4163
  ret %struct._object* %return_value.0, !dbg !4164
}

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #3

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare %struct._object* @_PyImport_LoadDynamicModule(%struct._object*, %struct._object*, %struct._IO_FILE*) #3

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #6

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal fastcc void @update_code_filenames(%struct.PyCodeObject* nocapture %co, %struct._object* %oldname, %struct._object* %newname) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.PyCodeObject* %co, i64 0, metadata !1383, metadata !1500), !dbg !4165
  tail call void @llvm.dbg.value(metadata %struct._object* %oldname, i64 0, metadata !1384, metadata !1500), !dbg !4166
  tail call void @llvm.dbg.value(metadata %struct._object* %newname, i64 0, metadata !1385, metadata !1500), !dbg !4167
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %co, i64 0, i32 13, !dbg !4168
  %0 = load %struct._object*, %struct._object** %co_filename, align 8, !dbg !4168, !tbaa !2462
  %call = tail call i32 @PyUnicode_Compare(%struct._object* %0, %struct._object* %oldname) #1, !dbg !4170
  %tobool = icmp eq i32 %call, 0, !dbg !4170
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4171

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %co_filename, align 8, !dbg !4172, !tbaa !2462
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1387, metadata !1500), !dbg !4173
  store %struct._object* %newname, %struct._object** %co_filename, align 8, !dbg !4174, !tbaa !2462
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %newname, i64 0, i32 0, !dbg !4175
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !4175, !tbaa !1533
  %inc = add i64 %2, 1, !dbg !4175
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !4175, !tbaa !1533
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !1390, metadata !1500), !dbg !4176
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !4178
  %3 = load i64, i64* %ob_refcnt7, align 8, !dbg !4178, !tbaa !1533
  %dec = add i64 %3, -1, !dbg !4178
  store i64 %dec, i64* %ob_refcnt7, align 8, !dbg !4178, !tbaa !1533
  %cmp = icmp eq i64 %dec, 0, !dbg !4178
  br i1 %cmp, label %if.else, label %if.end.9, !dbg !4180

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !4181
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4181, !tbaa !1538
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !4181
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4181, !tbaa !1539
  tail call void %5(%struct._object* %1) #1, !dbg !4181
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %if.else
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %co, i64 0, i32 7, !dbg !4183
  %6 = load %struct._object*, %struct._object** %co_consts, align 8, !dbg !4183, !tbaa !4184
  tail call void @llvm.dbg.value(metadata %struct._object* %6, i64 0, metadata !1386, metadata !1500), !dbg !4185
  %7 = getelementptr inbounds %struct._object, %struct._object* %6, i64 1, i32 0, !dbg !4186
  %8 = load i64, i64* %7, align 8, !dbg !4186, !tbaa !1921
  tail call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !1389, metadata !1500), !dbg !4187
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1388, metadata !1500), !dbg !4188
  %cmp10.37 = icmp sgt i64 %8, 0, !dbg !4189
  br i1 %cmp10.37, label %for.body.lr.ph, label %cleanup, !dbg !4192

for.body.lr.ph:                                   ; preds = %if.end.9
  %ob_item = getelementptr inbounds %struct._object, %struct._object* %6, i64 1, i32 1, !dbg !4193
  %9 = bitcast %struct._typeobject** %ob_item to [1 x %struct._object*]*, !dbg !4193
  br label %for.body, !dbg !4192

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %i.038 = phi i64 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc ]
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %9, i64 0, i64 %i.038, !dbg !4193
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8, !dbg !4193, !tbaa !1504
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !1387, metadata !1500), !dbg !4173
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %10, i64 0, i32 1, !dbg !4195
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8, !dbg !4195, !tbaa !1538
  %cmp12 = icmp eq %struct._typeobject* %11, @PyCode_Type, !dbg !4195
  br i1 %cmp12, label %if.then.13, label %for.inc, !dbg !4197

if.then.13:                                       ; preds = %for.body
  %12 = bitcast %struct._object* %10 to %struct.PyCodeObject*, !dbg !4198
  tail call fastcc void @update_code_filenames(%struct.PyCodeObject* %12, %struct._object* %oldname, %struct._object* %newname), !dbg !4199
  br label %for.inc, !dbg !4199

for.inc:                                          ; preds = %for.body, %if.then.13
  %inc15 = add nuw nsw i64 %i.038, 1, !dbg !4200
  tail call void @llvm.dbg.value(metadata i64 %inc15, i64 0, metadata !1388, metadata !1500), !dbg !4188
  %exitcond = icmp eq i64 %inc15, %8, !dbg !4192
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !4192

cleanup.loopexit:                                 ; preds = %for.inc
  br label %cleanup, !dbg !4201

cleanup:                                          ; preds = %cleanup.loopexit, %if.end.9, %entry
  ret void, !dbg !4201
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1488, !1489}
!llvm.ident = !{!1490}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !11, subprograms: !556, globals: !1392)
!1 = !DIFile(filename: "Python/import.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !4, line: 23, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8, !9, !10}
!6 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!7 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!8 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!9 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!10 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!11 = !{!12, !13, !351, !465, !466, !474, !481, !492, !60, !387, !37, !518, !102, !19, !537, !543, !545, !417, !25}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64, align: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !15, line: 109, baseType: !16)
!15 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!16 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !15, line: 105, size: 128, align: 64, elements: !17)
!17 = !{!18, !26}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !16, file: !15, line: 107, baseType: !19, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !20, line: 177, baseType: !21)
!20 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !22, line: 102, baseType: !23)
!22 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !24, line: 181, baseType: !25)
!24 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!25 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !16, file: !15, line: 108, baseType: !27, size: 64, align: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64, align: 64)
!28 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !15, line: 334, size: 3200, align: 64, elements: !29)
!29 = !{!30, !36, !40, !41, !42, !47, !110, !115, !120, !121, !126, !178, !209, !221, !227, !228, !229, !231, !233, !264, !265, !266, !275, !276, !281, !282, !284, !286, !296, !299, !317, !318, !319, !321, !323, !324, !326, !331, !336, !341, !342, !343, !344, !345, !346, !347, !348, !350}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !15, line: 335, baseType: !31, size: 192, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !15, line: 114, baseType: !32)
!32 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 111, size: 192, align: 64, elements: !33)
!33 = !{!34, !35}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !32, file: !15, line: 112, baseType: !14, size: 128, align: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !32, file: !15, line: 113, baseType: !19, size: 64, align: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !28, file: !15, line: 336, baseType: !37, size: 64, align: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !28, file: !15, line: 337, baseType: !19, size: 64, align: 64, offset: 256)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !28, file: !15, line: 337, baseType: !19, size: 64, align: 64, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !28, file: !15, line: 341, baseType: !43, size: 64, align: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !15, line: 308, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !13}
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !28, file: !15, line: 342, baseType: !48, size: 64, align: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !15, line: 314, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !13, !53, !52}
!52 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !22, line: 48, baseType: !55)
!55 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 246, size: 1728, align: 64, elements: !57)
!56 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!57 = !{!58, !59, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !79, !80, !81, !82, !84, !86, !88, !92, !95, !97, !98, !99, !100, !101, !105, !106}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !56, line: 247, baseType: !52, size: 32, align: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !55, file: !56, line: 252, baseType: !60, size: 64, align: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !55, file: !56, line: 253, baseType: !60, size: 64, align: 64, offset: 128)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !55, file: !56, line: 254, baseType: !60, size: 64, align: 64, offset: 192)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !55, file: !56, line: 255, baseType: !60, size: 64, align: 64, offset: 256)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !55, file: !56, line: 256, baseType: !60, size: 64, align: 64, offset: 320)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !55, file: !56, line: 257, baseType: !60, size: 64, align: 64, offset: 384)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !55, file: !56, line: 258, baseType: !60, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !55, file: !56, line: 259, baseType: !60, size: 64, align: 64, offset: 512)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !55, file: !56, line: 261, baseType: !60, size: 64, align: 64, offset: 576)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !55, file: !56, line: 262, baseType: !60, size: 64, align: 64, offset: 640)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !55, file: !56, line: 263, baseType: !60, size: 64, align: 64, offset: 704)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !55, file: !56, line: 265, baseType: !72, size: 64, align: 64, offset: 768)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !56, line: 161, size: 192, align: 64, elements: !74)
!74 = !{!75, !76, !78}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !73, file: !56, line: 162, baseType: !72, size: 64, align: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !73, file: !56, line: 163, baseType: !77, size: 64, align: 64, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64, align: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !73, file: !56, line: 167, baseType: !52, size: 32, align: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !55, file: !56, line: 267, baseType: !77, size: 64, align: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !55, file: !56, line: 269, baseType: !52, size: 32, align: 32, offset: 896)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !55, file: !56, line: 273, baseType: !52, size: 32, align: 32, offset: 928)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !55, file: !56, line: 275, baseType: !83, size: 64, align: 64, offset: 960)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !24, line: 140, baseType: !25)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !55, file: !56, line: 279, baseType: !85, size: 16, align: 16, offset: 1024)
!85 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !55, file: !56, line: 280, baseType: !87, size: 8, align: 8, offset: 1040)
!87 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !55, file: !56, line: 281, baseType: !89, size: 8, align: 8, offset: 1048)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 8, align: 8, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 1)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !55, file: !56, line: 285, baseType: !93, size: 64, align: 64, offset: 1088)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64, align: 64)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !56, line: 155, baseType: null)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !56, line: 294, baseType: !96, size: 64, align: 64, offset: 1152)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !24, line: 141, baseType: !25)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !55, file: !56, line: 303, baseType: !12, size: 64, align: 64, offset: 1216)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !55, file: !56, line: 304, baseType: !12, size: 64, align: 64, offset: 1280)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !55, file: !56, line: 305, baseType: !12, size: 64, align: 64, offset: 1344)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !55, file: !56, line: 306, baseType: !12, size: 64, align: 64, offset: 1408)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !55, file: !56, line: 307, baseType: !102, size: 64, align: 64, offset: 1472)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 62, baseType: !104)
!103 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!104 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !55, file: !56, line: 309, baseType: !52, size: 32, align: 32, offset: 1536)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !55, file: !56, line: 311, baseType: !107, size: 160, align: 8, offset: 1568)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 160, align: 8, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 20)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !28, file: !15, line: 343, baseType: !111, size: 64, align: 64, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !15, line: 316, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!13, !13, !60}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !28, file: !15, line: 344, baseType: !116, size: 64, align: 64, offset: 576)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !15, line: 318, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64, align: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!52, !13, !60, !13}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !28, file: !15, line: 345, baseType: !12, size: 64, align: 64, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !28, file: !15, line: 346, baseType: !122, size: 64, align: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !15, line: 320, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!13, !13}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !28, file: !15, line: 350, baseType: !127, size: 64, align: 64, offset: 768)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64, align: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !15, line: 278, baseType: !129)
!129 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 236, size: 2176, align: 64, elements: !130)
!130 = !{!131, !136, !137, !138, !139, !140, !145, !147, !148, !149, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !129, file: !15, line: 241, baseType: !132, size: 64, align: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !15, line: 166, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!13, !13, !13}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !129, file: !15, line: 242, baseType: !132, size: 64, align: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !129, file: !15, line: 243, baseType: !132, size: 64, align: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !129, file: !15, line: 244, baseType: !132, size: 64, align: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !129, file: !15, line: 245, baseType: !132, size: 64, align: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !129, file: !15, line: 246, baseType: !141, size: 64, align: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !15, line: 167, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!13, !13, !13, !13}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !129, file: !15, line: 247, baseType: !146, size: 64, align: 64, offset: 384)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !15, line: 165, baseType: !123)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !129, file: !15, line: 248, baseType: !146, size: 64, align: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !129, file: !15, line: 249, baseType: !146, size: 64, align: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !129, file: !15, line: 250, baseType: !150, size: 64, align: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !15, line: 168, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64, align: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{!52, !13}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !129, file: !15, line: 251, baseType: !146, size: 64, align: 64, offset: 640)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !129, file: !15, line: 252, baseType: !132, size: 64, align: 64, offset: 704)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !129, file: !15, line: 253, baseType: !132, size: 64, align: 64, offset: 768)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !129, file: !15, line: 254, baseType: !132, size: 64, align: 64, offset: 832)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !129, file: !15, line: 255, baseType: !132, size: 64, align: 64, offset: 896)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !129, file: !15, line: 256, baseType: !132, size: 64, align: 64, offset: 960)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !129, file: !15, line: 257, baseType: !146, size: 64, align: 64, offset: 1024)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !129, file: !15, line: 258, baseType: !12, size: 64, align: 64, offset: 1088)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !129, file: !15, line: 259, baseType: !146, size: 64, align: 64, offset: 1152)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !129, file: !15, line: 261, baseType: !132, size: 64, align: 64, offset: 1216)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !129, file: !15, line: 262, baseType: !132, size: 64, align: 64, offset: 1280)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !129, file: !15, line: 263, baseType: !132, size: 64, align: 64, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !129, file: !15, line: 264, baseType: !132, size: 64, align: 64, offset: 1408)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !129, file: !15, line: 265, baseType: !141, size: 64, align: 64, offset: 1472)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !129, file: !15, line: 266, baseType: !132, size: 64, align: 64, offset: 1536)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !129, file: !15, line: 267, baseType: !132, size: 64, align: 64, offset: 1600)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !129, file: !15, line: 268, baseType: !132, size: 64, align: 64, offset: 1664)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !129, file: !15, line: 269, baseType: !132, size: 64, align: 64, offset: 1728)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !129, file: !15, line: 270, baseType: !132, size: 64, align: 64, offset: 1792)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !129, file: !15, line: 272, baseType: !132, size: 64, align: 64, offset: 1856)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !129, file: !15, line: 273, baseType: !132, size: 64, align: 64, offset: 1920)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !129, file: !15, line: 274, baseType: !132, size: 64, align: 64, offset: 1984)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !129, file: !15, line: 275, baseType: !132, size: 64, align: 64, offset: 2048)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !129, file: !15, line: 277, baseType: !146, size: 64, align: 64, offset: 2112)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !28, file: !15, line: 351, baseType: !179, size: 64, align: 64, offset: 832)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64, align: 64)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !15, line: 292, baseType: !181)
!181 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 280, size: 640, align: 64, elements: !182)
!182 = !{!183, !188, !189, !194, !195, !196, !201, !202, !207, !208}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !181, file: !15, line: 281, baseType: !184, size: 64, align: 64)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !15, line: 169, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{!19, !13}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !181, file: !15, line: 282, baseType: !132, size: 64, align: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !181, file: !15, line: 283, baseType: !190, size: 64, align: 64, offset: 128)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !15, line: 170, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!13, !13, !19}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !181, file: !15, line: 284, baseType: !190, size: 64, align: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !181, file: !15, line: 285, baseType: !12, size: 64, align: 64, offset: 256)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !181, file: !15, line: 286, baseType: !197, size: 64, align: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !15, line: 172, baseType: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DISubroutineType(types: !200)
!200 = !{!52, !13, !19, !13}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !181, file: !15, line: 287, baseType: !12, size: 64, align: 64, offset: 384)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !181, file: !15, line: 288, baseType: !203, size: 64, align: 64, offset: 448)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !15, line: 231, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!52, !13, !13}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !181, file: !15, line: 290, baseType: !132, size: 64, align: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !181, file: !15, line: 291, baseType: !190, size: 64, align: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !28, file: !15, line: 352, baseType: !210, size: 64, align: 64, offset: 896)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !15, line: 298, baseType: !212)
!212 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 294, size: 192, align: 64, elements: !213)
!213 = !{!214, !215, !216}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !212, file: !15, line: 295, baseType: !184, size: 64, align: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !212, file: !15, line: 296, baseType: !132, size: 64, align: 64, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !212, file: !15, line: 297, baseType: !217, size: 64, align: 64, offset: 128)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !15, line: 174, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!52, !13, !13, !13}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !28, file: !15, line: 356, baseType: !222, size: 64, align: 64, offset: 960)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !15, line: 321, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!226, !13}
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !20, line: 186, baseType: !19)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !28, file: !15, line: 357, baseType: !141, size: 64, align: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !28, file: !15, line: 358, baseType: !122, size: 64, align: 64, offset: 1088)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !28, file: !15, line: 359, baseType: !230, size: 64, align: 64, offset: 1152)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !15, line: 317, baseType: !133)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !28, file: !15, line: 360, baseType: !232, size: 64, align: 64, offset: 1216)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !15, line: 319, baseType: !218)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !28, file: !15, line: 363, baseType: !234, size: 64, align: 64, offset: 1280)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !15, line: 304, baseType: !236)
!236 = !DICompositeType(tag: DW_TAG_structure_type, file: !15, line: 301, size: 128, align: 64, elements: !237)
!237 = !{!238, !259}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !236, file: !15, line: 302, baseType: !239, size: 64, align: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !15, line: 193, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!52, !13, !243, !52}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !15, line: 191, baseType: !245)
!245 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !15, line: 178, size: 640, align: 64, elements: !246)
!246 = !{!247, !248, !249, !250, !251, !252, !253, !254, !256, !257, !258}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !245, file: !15, line: 179, baseType: !12, size: 64, align: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !245, file: !15, line: 180, baseType: !13, size: 64, align: 64, offset: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !245, file: !15, line: 181, baseType: !19, size: 64, align: 64, offset: 128)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !245, file: !15, line: 182, baseType: !19, size: 64, align: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !245, file: !15, line: 184, baseType: !52, size: 32, align: 32, offset: 256)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !245, file: !15, line: 185, baseType: !52, size: 32, align: 32, offset: 288)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !245, file: !15, line: 186, baseType: !60, size: 64, align: 64, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !245, file: !15, line: 187, baseType: !255, size: 64, align: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64, align: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !245, file: !15, line: 188, baseType: !255, size: 64, align: 64, offset: 448)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !245, file: !15, line: 189, baseType: !255, size: 64, align: 64, offset: 512)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !245, file: !15, line: 190, baseType: !12, size: 64, align: 64, offset: 576)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !236, file: !15, line: 303, baseType: !260, size: 64, align: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !15, line: 194, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64, align: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{null, !13, !243}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !28, file: !15, line: 366, baseType: !104, size: 64, align: 64, offset: 1344)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !28, file: !15, line: 368, baseType: !37, size: 64, align: 64, offset: 1408)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !28, file: !15, line: 372, baseType: !267, size: 64, align: 64, offset: 1472)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !15, line: 233, baseType: !268)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64, align: 64)
!269 = !DISubroutineType(types: !270)
!270 = !{!52, !13, !271, !12}
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !15, line: 232, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64, align: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!52, !13, !12}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !28, file: !15, line: 375, baseType: !150, size: 64, align: 64, offset: 1536)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !28, file: !15, line: 379, baseType: !277, size: 64, align: 64, offset: 1600)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !15, line: 322, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!13, !13, !13, !52}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !28, file: !15, line: 382, baseType: !19, size: 64, align: 64, offset: 1664)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !28, file: !15, line: 385, baseType: !283, size: 64, align: 64, offset: 1728)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !15, line: 323, baseType: !123)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !28, file: !15, line: 386, baseType: !285, size: 64, align: 64, offset: 1792)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !15, line: 324, baseType: !123)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !28, file: !15, line: 389, baseType: !287, size: 64, align: 64, offset: 1856)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !289, line: 40, size: 256, align: 64, elements: !290)
!289 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!290 = !{!291, !292, !294, !295}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !288, file: !289, line: 41, baseType: !37, size: 64, align: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !288, file: !289, line: 42, baseType: !293, size: 64, align: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !289, line: 18, baseType: !133)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !288, file: !289, line: 43, baseType: !52, size: 32, align: 32, offset: 128)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !288, file: !289, line: 45, baseType: !37, size: 64, align: 64, offset: 192)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !28, file: !15, line: 390, baseType: !297, size: 64, align: 64, offset: 1920)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !15, line: 390, flags: DIFlagFwdDecl)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !28, file: !15, line: 391, baseType: !300, size: 64, align: 64, offset: 1984)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64, align: 64)
!301 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !302, line: 11, size: 320, align: 64, elements: !303)
!302 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!303 = !{!304, !305, !310, !315, !316}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !301, file: !302, line: 12, baseType: !60, size: 64, align: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !301, file: !302, line: 13, baseType: !306, size: 64, align: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !302, line: 8, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!13, !13, !12}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !301, file: !302, line: 14, baseType: !311, size: 64, align: 64, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !302, line: 9, baseType: !312)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64, align: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!52, !13, !13, !12}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !301, file: !302, line: 15, baseType: !60, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !301, file: !302, line: 16, baseType: !12, size: 64, align: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !28, file: !15, line: 392, baseType: !27, size: 64, align: 64, offset: 2048)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !28, file: !15, line: 393, baseType: !13, size: 64, align: 64, offset: 2112)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !28, file: !15, line: 394, baseType: !320, size: 64, align: 64, offset: 2176)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !15, line: 325, baseType: !142)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !28, file: !15, line: 395, baseType: !322, size: 64, align: 64, offset: 2240)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !15, line: 326, baseType: !218)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !28, file: !15, line: 396, baseType: !19, size: 64, align: 64, offset: 2304)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !28, file: !15, line: 397, baseType: !325, size: 64, align: 64, offset: 2368)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !15, line: 327, baseType: !218)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !28, file: !15, line: 398, baseType: !327, size: 64, align: 64, offset: 2432)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !15, line: 329, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64, align: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!13, !27, !19}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !28, file: !15, line: 399, baseType: !332, size: 64, align: 64, offset: 2496)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !15, line: 328, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!13, !27, !13, !13}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !28, file: !15, line: 400, baseType: !337, size: 64, align: 64, offset: 2560)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !15, line: 307, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !12}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !28, file: !15, line: 401, baseType: !150, size: 64, align: 64, offset: 2624)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !28, file: !15, line: 402, baseType: !13, size: 64, align: 64, offset: 2688)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !28, file: !15, line: 403, baseType: !13, size: 64, align: 64, offset: 2752)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !28, file: !15, line: 404, baseType: !13, size: 64, align: 64, offset: 2816)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !28, file: !15, line: 405, baseType: !13, size: 64, align: 64, offset: 2880)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !28, file: !15, line: 406, baseType: !13, size: 64, align: 64, offset: 2944)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !28, file: !15, line: 407, baseType: !43, size: 64, align: 64, offset: 3008)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !28, file: !15, line: 410, baseType: !349, size: 32, align: 32, offset: 3072)
!349 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !28, file: !15, line: 412, baseType: !43, size: 64, align: 64, offset: 3136)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !353, line: 139, baseType: !354)
!353 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !353, line: 69, size: 1536, align: 64, elements: !355)
!355 = !{!356, !358, !359, !379, !438, !439, !440, !441, !442, !443, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !354, file: !353, line: 72, baseType: !357, size: 64, align: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64, align: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !353, line: 73, baseType: !357, size: 64, align: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !354, file: !353, line: 74, baseType: !360, size: 64, align: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !353, line: 44, baseType: !362)
!362 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !353, line: 19, size: 832, align: 64, elements: !363)
!363 = !{!364, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !362, file: !353, line: 21, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !362, file: !353, line: 22, baseType: !357, size: 64, align: 64, offset: 64)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !362, file: !353, line: 24, baseType: !13, size: 64, align: 64, offset: 128)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !362, file: !353, line: 25, baseType: !13, size: 64, align: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !362, file: !353, line: 26, baseType: !13, size: 64, align: 64, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !362, file: !353, line: 27, baseType: !13, size: 64, align: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !362, file: !353, line: 28, baseType: !13, size: 64, align: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !362, file: !353, line: 30, baseType: !13, size: 64, align: 64, offset: 448)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !362, file: !353, line: 31, baseType: !13, size: 64, align: 64, offset: 512)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !362, file: !353, line: 32, baseType: !13, size: 64, align: 64, offset: 576)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !362, file: !353, line: 33, baseType: !52, size: 32, align: 32, offset: 640)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !362, file: !353, line: 34, baseType: !52, size: 32, align: 32, offset: 672)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !362, file: !353, line: 37, baseType: !52, size: 32, align: 32, offset: 704)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !362, file: !353, line: 43, baseType: !13, size: 64, align: 64, offset: 768)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !354, file: !353, line: 76, baseType: !380, size: 64, align: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64, align: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !382, line: 17, size: 3072, align: 64, elements: !383)
!382 = !DIFile(filename: "Include/frameobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!383 = !{!384, !385, !386, !413, !414, !415, !416, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !436}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !381, file: !382, line: 18, baseType: !31, size: 192, align: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "f_back", scope: !381, file: !382, line: 19, baseType: !380, size: 64, align: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "f_code", scope: !381, file: !382, line: 20, baseType: !387, size: 64, align: 64, offset: 256)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCodeObject", file: !389, line: 33, baseType: !390)
!389 = !DIFile(filename: "Include/code.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!390 = !DICompositeType(tag: DW_TAG_structure_type, file: !389, line: 11, size: 1152, align: 64, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !407, !408, !409, !410, !411, !412}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !390, file: !389, line: 12, baseType: !14, size: 128, align: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "co_argcount", scope: !390, file: !389, line: 13, baseType: !52, size: 32, align: 32, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "co_kwonlyargcount", scope: !390, file: !389, line: 14, baseType: !52, size: 32, align: 32, offset: 160)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "co_nlocals", scope: !390, file: !389, line: 15, baseType: !52, size: 32, align: 32, offset: 192)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "co_stacksize", scope: !390, file: !389, line: 16, baseType: !52, size: 32, align: 32, offset: 224)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "co_flags", scope: !390, file: !389, line: 17, baseType: !52, size: 32, align: 32, offset: 256)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "co_code", scope: !390, file: !389, line: 18, baseType: !13, size: 64, align: 64, offset: 320)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "co_consts", scope: !390, file: !389, line: 19, baseType: !13, size: 64, align: 64, offset: 384)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "co_names", scope: !390, file: !389, line: 20, baseType: !13, size: 64, align: 64, offset: 448)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "co_varnames", scope: !390, file: !389, line: 21, baseType: !13, size: 64, align: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "co_freevars", scope: !390, file: !389, line: 22, baseType: !13, size: 64, align: 64, offset: 576)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "co_cellvars", scope: !390, file: !389, line: 23, baseType: !13, size: 64, align: 64, offset: 640)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "co_cell2arg", scope: !390, file: !389, line: 25, baseType: !405, size: 64, align: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "co_filename", scope: !390, file: !389, line: 26, baseType: !13, size: 64, align: 64, offset: 768)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "co_name", scope: !390, file: !389, line: 27, baseType: !13, size: 64, align: 64, offset: 832)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "co_firstlineno", scope: !390, file: !389, line: 28, baseType: !52, size: 32, align: 32, offset: 896)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "co_lnotab", scope: !390, file: !389, line: 29, baseType: !13, size: 64, align: 64, offset: 960)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "co_zombieframe", scope: !390, file: !389, line: 31, baseType: !12, size: 64, align: 64, offset: 1024)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "co_weakreflist", scope: !390, file: !389, line: 32, baseType: !13, size: 64, align: 64, offset: 1088)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "f_builtins", scope: !381, file: !382, line: 21, baseType: !13, size: 64, align: 64, offset: 320)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "f_globals", scope: !381, file: !382, line: 22, baseType: !13, size: 64, align: 64, offset: 384)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "f_locals", scope: !381, file: !382, line: 23, baseType: !13, size: 64, align: 64, offset: 448)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "f_valuestack", scope: !381, file: !382, line: 24, baseType: !417, size: 64, align: 64, offset: 512)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64, align: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "f_stacktop", scope: !381, file: !382, line: 28, baseType: !417, size: 64, align: 64, offset: 576)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "f_trace", scope: !381, file: !382, line: 29, baseType: !13, size: 64, align: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_type", scope: !381, file: !382, line: 38, baseType: !13, size: 64, align: 64, offset: 704)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_value", scope: !381, file: !382, line: 38, baseType: !13, size: 64, align: 64, offset: 768)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "f_exc_traceback", scope: !381, file: !382, line: 38, baseType: !13, size: 64, align: 64, offset: 832)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "f_gen", scope: !381, file: !382, line: 40, baseType: !13, size: 64, align: 64, offset: 896)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "f_lasti", scope: !381, file: !382, line: 42, baseType: !52, size: 32, align: 32, offset: 960)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "f_lineno", scope: !381, file: !382, line: 48, baseType: !52, size: 32, align: 32, offset: 992)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "f_iblock", scope: !381, file: !382, line: 49, baseType: !52, size: 32, align: 32, offset: 1024)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "f_executing", scope: !381, file: !382, line: 50, baseType: !39, size: 8, align: 8, offset: 1056)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "f_blockstack", scope: !381, file: !382, line: 51, baseType: !429, size: 1920, align: 32, offset: 1088)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 1920, align: 32, elements: !108)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTryBlock", file: !382, line: 15, baseType: !431)
!431 = !DICompositeType(tag: DW_TAG_structure_type, file: !382, line: 11, size: 96, align: 32, elements: !432)
!432 = !{!433, !434, !435}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "b_type", scope: !431, file: !382, line: 12, baseType: !52, size: 32, align: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "b_handler", scope: !431, file: !382, line: 13, baseType: !52, size: 32, align: 32, offset: 32)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "b_level", scope: !431, file: !382, line: 14, baseType: !52, size: 32, align: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "f_localsplus", scope: !381, file: !382, line: 52, baseType: !437, size: 64, align: 64, offset: 3008)
!437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 64, align: 64, elements: !90)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !354, file: !353, line: 77, baseType: !52, size: 32, align: 32, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !354, file: !353, line: 78, baseType: !39, size: 8, align: 8, offset: 288)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !354, file: !353, line: 80, baseType: !39, size: 8, align: 8, offset: 296)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !354, file: !353, line: 85, baseType: !52, size: 32, align: 32, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !354, file: !353, line: 86, baseType: !52, size: 32, align: 32, offset: 352)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !354, file: !353, line: 88, baseType: !444, size: 64, align: 64, offset: 384)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !353, line: 54, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64, align: 64)
!446 = !DISubroutineType(types: !447)
!447 = !{!52, !13, !380, !52, !13}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !354, file: !353, line: 89, baseType: !444, size: 64, align: 64, offset: 448)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !354, file: !353, line: 90, baseType: !13, size: 64, align: 64, offset: 512)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !354, file: !353, line: 91, baseType: !13, size: 64, align: 64, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !354, file: !353, line: 93, baseType: !13, size: 64, align: 64, offset: 640)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !354, file: !353, line: 94, baseType: !13, size: 64, align: 64, offset: 704)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !354, file: !353, line: 95, baseType: !13, size: 64, align: 64, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !354, file: !353, line: 97, baseType: !13, size: 64, align: 64, offset: 832)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !354, file: !353, line: 98, baseType: !13, size: 64, align: 64, offset: 896)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !354, file: !353, line: 99, baseType: !13, size: 64, align: 64, offset: 960)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !354, file: !353, line: 101, baseType: !13, size: 64, align: 64, offset: 1024)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !354, file: !353, line: 103, baseType: !52, size: 32, align: 32, offset: 1088)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !354, file: !353, line: 105, baseType: !13, size: 64, align: 64, offset: 1152)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !354, file: !353, line: 106, baseType: !25, size: 64, align: 64, offset: 1216)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !354, file: !353, line: 108, baseType: !52, size: 32, align: 32, offset: 1280)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !354, file: !353, line: 109, baseType: !13, size: 64, align: 64, offset: 1344)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !354, file: !353, line: 134, baseType: !338, size: 64, align: 64, offset: 1408)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !354, file: !353, line: 135, baseType: !12, size: 64, align: 64, offset: 1472)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64, align: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64, align: 64)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyListObject", file: !468, line: 40, baseType: !469)
!468 = !DIFile(filename: "Include/listobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!469 = !DICompositeType(tag: DW_TAG_structure_type, file: !468, line: 23, size: 320, align: 64, elements: !470)
!470 = !{!471, !472, !473}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !469, file: !468, line: 24, baseType: !31, size: 192, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !469, file: !468, line: 26, baseType: !417, size: 64, align: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !469, file: !468, line: 39, baseType: !19, size: 64, align: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64, align: 64)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTupleObject", file: !476, line: 33, baseType: !477)
!476 = !DIFile(filename: "Include/tupleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!477 = !DICompositeType(tag: DW_TAG_structure_type, file: !476, line: 25, size: 256, align: 64, elements: !478)
!478 = !{!479, !480}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !477, file: !476, line: 26, baseType: !31, size: 192, align: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ob_item", scope: !477, file: !476, line: 27, baseType: !437, size: 64, align: 64, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !483, line: 10, baseType: !484)
!483 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !483, line: 16, size: 448, align: 64, elements: !485)
!485 = !{!486, !487, !488, !489, !490, !491}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !484, file: !483, line: 17, baseType: !14, size: 128, align: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !484, file: !483, line: 23, baseType: !13, size: 64, align: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !484, file: !483, line: 26, baseType: !13, size: 64, align: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !484, file: !483, line: 31, baseType: !226, size: 64, align: 64, offset: 256)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !484, file: !483, line: 38, baseType: !481, size: 64, align: 64, offset: 320)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !484, file: !483, line: 39, baseType: !481, size: 64, align: 64, offset: 384)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64, align: 64)
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef", file: !494, line: 57, baseType: !495)
!494 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !494, line: 47, size: 832, align: 64, elements: !496)
!496 = !{!497, !508, !509, !510, !511, !514, !515, !516, !517}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !495, file: !494, line: 48, baseType: !498, size: 320, align: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !494, line: 38, baseType: !499)
!499 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !494, line: 33, size: 320, align: 64, elements: !500)
!500 = !{!501, !502, !506, !507}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !499, file: !494, line: 34, baseType: !14, size: 128, align: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !499, file: !494, line: 35, baseType: !503, size: 64, align: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64, align: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!13}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !499, file: !494, line: 36, baseType: !19, size: 64, align: 64, offset: 192)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !499, file: !494, line: 37, baseType: !13, size: 64, align: 64, offset: 256)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !495, file: !494, line: 49, baseType: !37, size: 64, align: 64, offset: 320)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !495, file: !494, line: 50, baseType: !37, size: 64, align: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !495, file: !494, line: 51, baseType: !19, size: 64, align: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !495, file: !494, line: 52, baseType: !512, size: 64, align: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64, align: 64)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !289, line: 47, baseType: !288)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !495, file: !494, line: 53, baseType: !150, size: 64, align: 64, offset: 576)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !495, file: !494, line: 54, baseType: !267, size: 64, align: 64, offset: 640)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !495, file: !494, line: 55, baseType: !150, size: 64, align: 64, offset: 704)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !495, file: !494, line: 56, baseType: !337, size: 64, align: 64, offset: 768)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64, align: 64)
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !520, line: 351, baseType: !521)
!520 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!521 = !DICompositeType(tag: DW_TAG_structure_type, file: !520, line: 217, size: 384, align: 64, elements: !522)
!522 = !{!523, !524, !525, !526, !534}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !521, file: !520, line: 291, baseType: !14, size: 128, align: 64)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !521, file: !520, line: 292, baseType: !19, size: 64, align: 64, offset: 128)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !521, file: !520, line: 293, baseType: !226, size: 64, align: 64, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !521, file: !520, line: 349, baseType: !527, size: 32, align: 32, offset: 256)
!527 = !DICompositeType(tag: DW_TAG_structure_type, scope: !521, file: !520, line: 294, size: 32, align: 32, elements: !528)
!528 = !{!529, !530, !531, !532, !533}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !527, file: !520, line: 303, baseType: !349, size: 2, align: 32)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !527, file: !520, line: 331, baseType: !349, size: 3, align: 32, offset: 2)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !527, file: !520, line: 336, baseType: !349, size: 1, align: 32, offset: 5)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !527, file: !520, line: 340, baseType: !349, size: 1, align: 32, offset: 6)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !527, file: !520, line: 345, baseType: !349, size: 1, align: 32, offset: 7)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !521, file: !520, line: 350, baseType: !535, size: 64, align: 64, offset: 320)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64, align: 64)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !103, line: 90, baseType: !52)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64, align: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "_inittab", file: !539, line: 99, size: 128, align: 64, elements: !540)
!539 = !DIFile(filename: "Include/import.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!540 = !{!541, !542}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !538, file: !539, line: 100, baseType: !37, size: 64, align: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "initfunc", scope: !538, file: !539, line: 101, baseType: !503, size: 64, align: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64, align: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !15, line: 422, baseType: !28)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64, align: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTracebackObject", file: !547, line: 20, baseType: !548)
!547 = !DIFile(filename: "Include/traceback.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "_traceback", file: !547, line: 14, size: 320, align: 64, elements: !549)
!549 = !{!550, !551, !553, !554, !555}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !548, file: !547, line: 15, baseType: !14, size: 128, align: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tb_next", scope: !548, file: !547, line: 16, baseType: !552, size: 64, align: 64, offset: 128)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64, align: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "tb_frame", scope: !548, file: !547, line: 17, baseType: !380, size: 64, align: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "tb_lasti", scope: !548, file: !547, line: 18, baseType: !52, size: 32, align: 32, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tb_lineno", scope: !548, file: !547, line: 19, baseType: !52, size: 32, align: 32, offset: 288)
!556 = !{!557, !562, !573, !587, !593, !598, !603, !611, !627, !683, !692, !696, !719, !729, !751, !760, !771, !778, !784, !791, !824, !840, !848, !878, !887, !894, !897, !1024, !1037, !1045, !1070, !1079, !1087, !1097, !1106, !1111, !1114, !1119, !1123, !1133, !1150, !1156, !1183, !1189, !1211, !1215, !1218, !1222, !1225, !1229, !1232, !1238, !1242, !1247, !1253, !1257, !1262, !1268, !1276, !1290, !1296, !1304, !1310, !1314, !1319, !1325, !1330, !1338, !1356, !1363, !1370, !1379}
!557 = !DISubprogram(name: "_PyImport_Init", scope: !1, file: !1, line: 50, type: !558, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyImport_Init, variables: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{null}
!560 = !{!561}
!561 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !557, file: !1, line: 52, type: !360)
!562 = !DISubprogram(name: "_PyImportHooks_Init", scope: !1, file: !1, line: 62, type: !558, isLocal: false, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyImportHooks_Init, variables: !563)
!563 = !{!564, !565, !566, !567, !569, !571}
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !562, file: !1, line: 64, type: !13)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_hooks", scope: !562, file: !1, line: 64, type: !13)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !562, file: !1, line: 65, type: !52)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !568, file: !1, line: 72, type: !13)
!568 = distinct !DILexicalBlock(scope: !562, file: !1, line: 72, column: 5)
!569 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !570, file: !1, line: 79, type: !13)
!570 = distinct !DILexicalBlock(scope: !562, file: !1, line: 79, column: 5)
!571 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !572, file: !1, line: 92, type: !13)
!572 = distinct !DILexicalBlock(scope: !562, file: !1, line: 92, column: 5)
!573 = !DISubprogram(name: "_PyImportZip_Init", scope: !1, file: !1, line: 96, type: !558, isLocal: false, isDefinition: true, scopeLine: 97, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyImportZip_Init, variables: !574)
!574 = !{!575, !576, !577, !578, !581, !583}
!575 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_hooks", scope: !573, file: !1, line: 98, type: !13)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zimpimport", scope: !573, file: !1, line: 98, type: !13)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !573, file: !1, line: 99, type: !52)
!578 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zipimporter", scope: !579, file: !1, line: 118, type: !13)
!579 = distinct !DILexicalBlock(scope: !580, file: !1, line: 116, column: 10)
!580 = distinct !DILexicalBlock(scope: !573, file: !1, line: 111, column: 9)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !582, file: !1, line: 120, type: !13)
!582 = distinct !DILexicalBlock(scope: !579, file: !1, line: 120, column: 9)
!583 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !584, file: !1, line: 130, type: !13)
!584 = distinct !DILexicalBlock(scope: !585, file: !1, line: 130, column: 13)
!585 = distinct !DILexicalBlock(scope: !586, file: !1, line: 127, column: 14)
!586 = distinct !DILexicalBlock(scope: !579, file: !1, line: 121, column: 13)
!587 = !DISubprogram(name: "_PyImport_AcquireLock", scope: !1, file: !1, line: 160, type: !558, isLocal: false, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyImport_AcquireLock, variables: !588)
!588 = !{!589, !590}
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "me", scope: !587, file: !1, line: 162, type: !25)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !591, file: !1, line: 176, type: !351)
!591 = distinct !DILexicalBlock(scope: !592, file: !1, line: 175, column: 5)
!592 = distinct !DILexicalBlock(scope: !587, file: !1, line: 174, column: 9)
!593 = !DISubprogram(name: "_PyImport_ReleaseLock", scope: !1, file: !1, line: 186, type: !594, isLocal: false, isDefinition: true, scopeLine: 187, flags: DIFlagPrototyped, isOptimized: true, function: i32 ()* @_PyImport_ReleaseLock, variables: !596)
!594 = !DISubroutineType(types: !595)
!595 = !{!52}
!596 = !{!597}
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "me", scope: !593, file: !1, line: 188, type: !25)
!598 = !DISubprogram(name: "_PyImport_ReInitLock", scope: !1, file: !1, line: 208, type: !558, isLocal: false, isDefinition: true, scopeLine: 209, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyImport_ReInitLock, variables: !599)
!599 = !{!600}
!600 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "me", scope: !601, file: !1, line: 214, type: !25)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 212, column: 32)
!602 = distinct !DILexicalBlock(scope: !598, file: !1, line: 212, column: 9)
!603 = !DISubprogram(name: "_PyImport_Fini", scope: !1, file: !1, line: 354, type: !558, isLocal: false, isDefinition: true, scopeLine: 355, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @_PyImport_Fini, variables: !604)
!604 = !{!605, !607}
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !606, file: !1, line: 356, type: !13)
!606 = distinct !DILexicalBlock(scope: !603, file: !1, line: 356, column: 5)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !608, file: !1, line: 356, type: !13)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 356, column: 5)
!609 = distinct !DILexicalBlock(scope: !610, file: !1, line: 356, column: 5)
!610 = distinct !DILexicalBlock(scope: !606, file: !1, line: 356, column: 5)
!611 = !DISubprogram(name: "PyImport_GetModuleDict", scope: !1, file: !1, line: 368, type: !504, isLocal: false, isDefinition: true, scopeLine: 369, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyImport_GetModuleDict, variables: !612)
!612 = !{!613, !614, !621, !622, !625}
!613 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !611, file: !1, line: 370, type: !360)
!614 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !615, file: !1, line: 370, type: !616)
!615 = distinct !DILexicalBlock(scope: !611, file: !1, line: 370, column: 34)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64, align: 64)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !4, line: 33, baseType: !618)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !4, line: 31, size: 64, align: 64, elements: !619)
!619 = !{!620}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !618, file: !4, line: 32, baseType: !12, size: 64, align: 64)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !615, file: !1, line: 370, type: !12)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !615, file: !1, line: 370, type: !623)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !12)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !615, file: !1, line: 370, type: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !4, line: 29, baseType: !3)
!627 = !DISubprogram(name: "PyImport_Cleanup", scope: !1, file: !1, line: 398, type: !558, isLocal: false, isDefinition: true, scopeLine: 399, flags: DIFlagPrototyped, isOptimized: true, function: void ()* @PyImport_Cleanup, variables: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !636, !637, !638, !639, !640, !641, !643, !649, !652, !654, !657, !659, !662, !664, !667, !670, !671, !675, !676, !677, !679, !681}
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pos", scope: !627, file: !1, line: 400, type: !19)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !627, file: !1, line: 401, type: !13)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !627, file: !1, line: 401, type: !13)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !627, file: !1, line: 401, type: !13)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !627, file: !1, line: 402, type: !360)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !635, file: !1, line: 402, type: !616)
!635 = distinct !DILexicalBlock(scope: !627, file: !1, line: 402, column: 34)
!636 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !635, file: !1, line: 402, type: !12)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !635, file: !1, line: 402, type: !623)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !635, file: !1, line: 402, type: !626)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modules", scope: !627, file: !1, line: 403, type: !13)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "weaklist", scope: !627, file: !1, line: 404, type: !13)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !627, file: !1, line: 405, type: !642)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !644, file: !1, line: 464, type: !13)
!644 = distinct !DILexicalBlock(scope: !645, file: !1, line: 464, column: 13)
!645 = distinct !DILexicalBlock(scope: !646, file: !1, line: 464, column: 13)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 461, column: 36)
!647 = distinct !DILexicalBlock(scope: !648, file: !1, line: 461, column: 13)
!648 = distinct !DILexicalBlock(scope: !627, file: !1, line: 460, column: 54)
!649 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !650, file: !1, line: 464, type: !13)
!650 = distinct !DILexicalBlock(scope: !651, file: !1, line: 464, column: 13)
!651 = distinct !DILexicalBlock(scope: !644, file: !1, line: 464, column: 13)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !653, file: !1, line: 464, type: !13)
!653 = distinct !DILexicalBlock(scope: !650, file: !1, line: 464, column: 13)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !655, file: !1, line: 464, type: !13)
!655 = distinct !DILexicalBlock(scope: !656, file: !1, line: 464, column: 13)
!656 = distinct !DILexicalBlock(scope: !653, file: !1, line: 464, column: 13)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !658, file: !1, line: 464, type: !13)
!658 = distinct !DILexicalBlock(scope: !644, file: !1, line: 464, column: 13)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !660, file: !1, line: 464, type: !13)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 464, column: 13)
!661 = distinct !DILexicalBlock(scope: !658, file: !1, line: 464, column: 13)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !663, file: !1, line: 479, type: !13)
!663 = distinct !DILexicalBlock(scope: !627, file: !1, line: 479, column: 5)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !665, file: !1, line: 479, type: !13)
!665 = distinct !DILexicalBlock(scope: !666, file: !1, line: 479, column: 5)
!666 = distinct !DILexicalBlock(scope: !663, file: !1, line: 479, column: 5)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !668, file: !1, line: 500, type: !19)
!668 = distinct !DILexicalBlock(scope: !669, file: !1, line: 499, column: 27)
!669 = distinct !DILexicalBlock(scope: !627, file: !1, line: 499, column: 9)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !668, file: !1, line: 500, type: !19)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tup", scope: !672, file: !1, line: 503, type: !13)
!672 = distinct !DILexicalBlock(scope: !673, file: !1, line: 502, column: 33)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 502, column: 9)
!674 = distinct !DILexicalBlock(scope: !668, file: !1, line: 502, column: 9)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !672, file: !1, line: 504, type: !13)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !672, file: !1, line: 505, type: !13)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !678, file: !1, line: 516, type: !13)
!678 = distinct !DILexicalBlock(scope: !672, file: !1, line: 516, column: 13)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !680, file: !1, line: 518, type: !13)
!680 = distinct !DILexicalBlock(scope: !668, file: !1, line: 518, column: 9)
!681 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !682, file: !1, line: 533, type: !13)
!682 = distinct !DILexicalBlock(scope: !627, file: !1, line: 533, column: 5)
!683 = !DISubprogram(name: "PyImport_GetMagicNumber", scope: !1, file: !1, line: 545, type: !684, isLocal: false, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, function: i64 ()* @PyImport_GetMagicNumber, variables: !686)
!684 = !DISubroutineType(types: !685)
!685 = !{!25}
!686 = !{!687, !688, !689, !690}
!687 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !683, file: !1, line: 547, type: !25)
!688 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !683, file: !1, line: 548, type: !360)
!689 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pyc_magic", scope: !683, file: !1, line: 549, type: !13)
!690 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !691, file: !1, line: 554, type: !13)
!691 = distinct !DILexicalBlock(scope: !683, file: !1, line: 554, column: 5)
!692 = !DISubprogram(name: "PyImport_GetMagicTag", scope: !1, file: !1, line: 562, type: !693, isLocal: false, isDefinition: true, scopeLine: 563, flags: DIFlagPrototyped, isOptimized: true, function: i8* ()* @PyImport_GetMagicTag, variables: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{!37}
!695 = !{}
!696 = !DISubprogram(name: "_PyImport_FixupExtensionObject", scope: !1, file: !1, line: 585, type: !219, isLocal: false, isDefinition: true, scopeLine: 587, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, %struct._object*, %struct._object*)* @_PyImport_FixupExtensionObject, variables: !697)
!697 = !{!698, !699, !700, !701, !702, !703, !704, !706, !707, !713, !717}
!698 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !696, file: !1, line: 585, type: !13)
!699 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !696, file: !1, line: 585, type: !13)
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 3, scope: !696, file: !1, line: 586, type: !13)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modules", scope: !696, file: !1, line: 588, type: !13)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !696, file: !1, line: 588, type: !13)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !696, file: !1, line: 588, type: !13)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "def", scope: !696, file: !1, line: 589, type: !705)
!705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64, align: 64)
!706 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !696, file: !1, line: 590, type: !52)
!707 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !708, file: !1, line: 617, type: !13)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 617, column: 13)
!709 = distinct !DILexicalBlock(scope: !710, file: !1, line: 613, column: 33)
!710 = distinct !DILexicalBlock(scope: !711, file: !1, line: 613, column: 13)
!711 = distinct !DILexicalBlock(scope: !712, file: !1, line: 612, column: 28)
!712 = distinct !DILexicalBlock(scope: !696, file: !1, line: 612, column: 9)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !714, file: !1, line: 617, type: !13)
!714 = distinct !DILexicalBlock(scope: !715, file: !1, line: 617, column: 13)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 617, column: 13)
!716 = distinct !DILexicalBlock(scope: !708, file: !1, line: 617, column: 13)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !718, file: !1, line: 630, type: !13)
!718 = distinct !DILexicalBlock(scope: !696, file: !1, line: 630, column: 5)
!719 = !DISubprogram(name: "_PyImport_FixupBuiltin", scope: !1, file: !1, line: 637, type: !720, isLocal: false, isDefinition: true, scopeLine: 638, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i8*)* @_PyImport_FixupBuiltin, variables: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{!52, !13, !37}
!722 = !{!723, !724, !725, !726, !727}
!723 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mod", arg: 1, scope: !719, file: !1, line: 637, type: !13)
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !719, file: !1, line: 637, type: !37)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !719, file: !1, line: 639, type: !52)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !719, file: !1, line: 640, type: !13)
!727 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !728, file: !1, line: 645, type: !13)
!728 = distinct !DILexicalBlock(scope: !719, file: !1, line: 645, column: 5)
!729 = !DISubprogram(name: "_PyImport_FindExtensionObject", scope: !1, file: !1, line: 650, type: !134, isLocal: false, isDefinition: true, scopeLine: 651, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyImport_FindExtensionObject, variables: !730)
!730 = !{!731, !732, !733, !734, !735, !736, !737, !739, !745, !747}
!731 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !729, file: !1, line: 650, type: !13)
!732 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "filename", arg: 2, scope: !729, file: !1, line: 650, type: !13)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !729, file: !1, line: 652, type: !13)
!734 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mdict", scope: !729, file: !1, line: 652, type: !13)
!735 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !729, file: !1, line: 652, type: !13)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "def", scope: !729, file: !1, line: 653, type: !492)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !738, file: !1, line: 660, type: !13)
!738 = distinct !DILexicalBlock(scope: !729, file: !1, line: 660, column: 5)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !740, file: !1, line: 683, type: !13)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 683, column: 13)
!741 = distinct !DILexicalBlock(scope: !742, file: !1, line: 682, column: 72)
!742 = distinct !DILexicalBlock(scope: !743, file: !1, line: 682, column: 13)
!743 = distinct !DILexicalBlock(scope: !744, file: !1, line: 676, column: 10)
!744 = distinct !DILexicalBlock(scope: !729, file: !1, line: 663, column: 9)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !746, file: !1, line: 686, type: !13)
!746 = distinct !DILexicalBlock(scope: !743, file: !1, line: 686, column: 9)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !748, file: !1, line: 690, type: !13)
!748 = distinct !DILexicalBlock(scope: !749, file: !1, line: 690, column: 9)
!749 = distinct !DILexicalBlock(scope: !750, file: !1, line: 688, column: 43)
!750 = distinct !DILexicalBlock(scope: !729, file: !1, line: 688, column: 9)
!751 = !DISubprogram(name: "_PyImport_FindBuiltin", scope: !1, file: !1, line: 701, type: !752, isLocal: false, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @_PyImport_FindBuiltin, variables: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{!13, !37}
!754 = !{!755, !756, !757, !758}
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !751, file: !1, line: 701, type: !37)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !751, file: !1, line: 703, type: !13)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !751, file: !1, line: 703, type: !13)
!758 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !759, file: !1, line: 708, type: !13)
!759 = distinct !DILexicalBlock(scope: !751, file: !1, line: 708, column: 5)
!760 = !DISubprogram(name: "PyImport_AddModuleObject", scope: !1, file: !1, line: 719, type: !124, isLocal: false, isDefinition: true, scopeLine: 720, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyImport_AddModuleObject, variables: !761)
!761 = !{!762, !763, !764, !765, !769}
!762 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !760, file: !1, line: 719, type: !13)
!763 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modules", scope: !760, file: !1, line: 721, type: !13)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !760, file: !1, line: 722, type: !13)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !766, file: !1, line: 731, type: !13)
!766 = distinct !DILexicalBlock(scope: !767, file: !1, line: 731, column: 9)
!767 = distinct !DILexicalBlock(scope: !768, file: !1, line: 730, column: 48)
!768 = distinct !DILexicalBlock(scope: !760, file: !1, line: 730, column: 9)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !770, file: !1, line: 734, type: !13)
!770 = distinct !DILexicalBlock(scope: !760, file: !1, line: 734, column: 5)
!771 = !DISubprogram(name: "PyImport_AddModule", scope: !1, file: !1, line: 740, type: !752, isLocal: false, isDefinition: true, scopeLine: 741, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyImport_AddModule, variables: !772)
!772 = !{!773, !774, !775, !776}
!773 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !771, file: !1, line: 740, type: !37)
!774 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !771, file: !1, line: 742, type: !13)
!775 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "module", scope: !771, file: !1, line: 742, type: !13)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !777, file: !1, line: 747, type: !13)
!777 = distinct !DILexicalBlock(scope: !771, file: !1, line: 747, column: 5)
!778 = !DISubprogram(name: "PyImport_ExecCodeModule", scope: !1, file: !1, line: 776, type: !779, isLocal: false, isDefinition: true, scopeLine: 777, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*)* @PyImport_ExecCodeModule, variables: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{!13, !37, !13}
!781 = !{!782, !783}
!782 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !778, file: !1, line: 776, type: !37)
!783 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "co", arg: 2, scope: !778, file: !1, line: 776, type: !13)
!784 = !DISubprogram(name: "PyImport_ExecCodeModuleEx", scope: !1, file: !1, line: 783, type: !785, isLocal: false, isDefinition: true, scopeLine: 784, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i8*)* @PyImport_ExecCodeModuleEx, variables: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!13, !37, !13, !37}
!787 = !{!788, !789, !790}
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !784, file: !1, line: 783, type: !37)
!789 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "co", arg: 2, scope: !784, file: !1, line: 783, type: !13)
!790 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 3, scope: !784, file: !1, line: 783, type: !37)
!791 = !DISubprogram(name: "PyImport_ExecCodeModuleWithPathnames", scope: !1, file: !1, line: 790, type: !792, isLocal: false, isDefinition: true, scopeLine: 793, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, i8*, i8*)* @PyImport_ExecCodeModuleWithPathnames, variables: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!13, !37, !13, !37, !37}
!794 = !{!795, !796, !797, !798, !799, !800, !801, !802, !803, !807, !809, !810, !811, !812, !814, !816, !819, !821}
!795 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !791, file: !1, line: 790, type: !37)
!796 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "co", arg: 2, scope: !791, file: !1, line: 790, type: !13)
!797 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 3, scope: !791, file: !1, line: 791, type: !37)
!798 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cpathname", arg: 4, scope: !791, file: !1, line: 792, type: !37)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !791, file: !1, line: 794, type: !13)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !791, file: !1, line: 795, type: !13)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathobj", scope: !791, file: !1, line: 795, type: !13)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cpathobj", scope: !791, file: !1, line: 795, type: !13)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !804, file: !1, line: 815, type: !360)
!804 = distinct !DILexicalBlock(scope: !805, file: !1, line: 814, column: 32)
!805 = distinct !DILexicalBlock(scope: !806, file: !1, line: 814, column: 14)
!806 = distinct !DILexicalBlock(scope: !791, file: !1, line: 809, column: 9)
!807 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !808, file: !1, line: 815, type: !616)
!808 = distinct !DILexicalBlock(scope: !804, file: !1, line: 815, column: 38)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !808, file: !1, line: 815, type: !12)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !808, file: !1, line: 815, type: !623)
!811 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !808, file: !1, line: 815, type: !626)
!812 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !813, file: !1, line: 834, type: !13)
!813 = distinct !DILexicalBlock(scope: !791, file: !1, line: 834, column: 5)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !815, file: !1, line: 835, type: !13)
!815 = distinct !DILexicalBlock(scope: !791, file: !1, line: 835, column: 5)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !817, file: !1, line: 835, type: !13)
!817 = distinct !DILexicalBlock(scope: !818, file: !1, line: 835, column: 5)
!818 = distinct !DILexicalBlock(scope: !815, file: !1, line: 835, column: 5)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !820, file: !1, line: 836, type: !13)
!820 = distinct !DILexicalBlock(scope: !791, file: !1, line: 836, column: 5)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !822, file: !1, line: 836, type: !13)
!822 = distinct !DILexicalBlock(scope: !823, file: !1, line: 836, column: 5)
!823 = distinct !DILexicalBlock(scope: !820, file: !1, line: 836, column: 5)
!824 = !DISubprogram(name: "PyImport_ExecCodeModuleObject", scope: !1, file: !1, line: 888, type: !825, isLocal: false, isDefinition: true, scopeLine: 890, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*, %struct._object*)* @PyImport_ExecCodeModuleObject, variables: !827)
!825 = !DISubroutineType(types: !826)
!826 = !{!13, !13, !13, !13, !13}
!827 = !{!828, !829, !830, !831, !832, !833, !834, !835, !837, !838, !839}
!828 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !824, file: !1, line: 888, type: !13)
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "co", arg: 2, scope: !824, file: !1, line: 888, type: !13)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 3, scope: !824, file: !1, line: 888, type: !13)
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "cpathname", arg: 4, scope: !824, file: !1, line: 889, type: !13)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !824, file: !1, line: 891, type: !13)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !824, file: !1, line: 891, type: !13)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !824, file: !1, line: 892, type: !360)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !836, file: !1, line: 892, type: !616)
!836 = distinct !DILexicalBlock(scope: !824, file: !1, line: 892, column: 34)
!837 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !836, file: !1, line: 892, type: !12)
!838 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !836, file: !1, line: 892, type: !623)
!839 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !836, file: !1, line: 892, type: !626)
!840 = !DISubprogram(name: "PyImport_GetImporter", scope: !1, file: !1, line: 1089, type: !124, isLocal: false, isDefinition: true, scopeLine: 1089, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyImport_GetImporter, variables: !841)
!841 = !{!842, !843, !844, !845, !846}
!842 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 1, scope: !840, file: !1, line: 1089, type: !13)
!843 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "importer", scope: !840, file: !1, line: 1090, type: !13)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_importer_cache", scope: !840, file: !1, line: 1090, type: !13)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_hooks", scope: !840, file: !1, line: 1090, type: !13)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !847, file: !1, line: 1098, type: !13)
!847 = distinct !DILexicalBlock(scope: !840, file: !1, line: 1098, column: 5)
!848 = !DISubprogram(name: "PyImport_ImportFrozenModuleObject", scope: !1, file: !1, line: 1220, type: !152, isLocal: false, isDefinition: true, scopeLine: 1221, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*)* @PyImport_ImportFrozenModuleObject, variables: !849)
!849 = !{!850, !851, !861, !862, !863, !864, !865, !866, !869, !870, !872, !874, !876}
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !848, file: !1, line: 1220, type: !13)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !848, file: !1, line: 1222, type: !852)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64, align: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frozen", file: !539, line: 115, size: 192, align: 64, elements: !855)
!855 = !{!856, !857, !860}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !854, file: !539, line: 116, baseType: !37, size: 64, align: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !854, file: !539, line: 117, baseType: !858, size: 64, align: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64, align: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !406)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !854, file: !539, line: 118, baseType: !52, size: 32, align: 32, offset: 128)
!861 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "co", scope: !848, file: !1, line: 1223, type: !13)
!862 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !848, file: !1, line: 1223, type: !13)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !848, file: !1, line: 1223, type: !13)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispackage", scope: !848, file: !1, line: 1224, type: !52)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !848, file: !1, line: 1225, type: !52)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !867, file: !1, line: 1252, type: !13)
!867 = distinct !DILexicalBlock(scope: !868, file: !1, line: 1250, column: 20)
!868 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1250, column: 9)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !867, file: !1, line: 1253, type: !52)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !871, file: !1, line: 1263, type: !13)
!871 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1263, column: 9)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !873, file: !1, line: 1274, type: !13)
!873 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1274, column: 5)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !875, file: !1, line: 1275, type: !13)
!875 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1275, column: 5)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !877, file: !1, line: 1278, type: !13)
!877 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1278, column: 5)
!878 = !DISubprogram(name: "PyImport_ImportFrozenModule", scope: !1, file: !1, line: 1283, type: !879, isLocal: false, isDefinition: true, scopeLine: 1284, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*)* @PyImport_ImportFrozenModule, variables: !881)
!879 = !DISubroutineType(types: !880)
!880 = !{!52, !37}
!881 = !{!882, !883, !884, !885}
!882 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !878, file: !1, line: 1283, type: !37)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !878, file: !1, line: 1285, type: !13)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !878, file: !1, line: 1286, type: !52)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !886, file: !1, line: 1291, type: !13)
!886 = distinct !DILexicalBlock(scope: !878, file: !1, line: 1291, column: 5)
!887 = !DISubprogram(name: "PyImport_ImportModule", scope: !1, file: !1, line: 1300, type: !752, isLocal: false, isDefinition: true, scopeLine: 1301, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyImport_ImportModule, variables: !888)
!888 = !{!889, !890, !891, !892}
!889 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !887, file: !1, line: 1300, type: !37)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pname", scope: !887, file: !1, line: 1302, type: !13)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !887, file: !1, line: 1303, type: !13)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !893, file: !1, line: 1309, type: !13)
!893 = distinct !DILexicalBlock(scope: !887, file: !1, line: 1309, column: 5)
!894 = !DISubprogram(name: "PyImport_ImportModuleNoBlock", scope: !1, file: !1, line: 1323, type: !752, isLocal: false, isDefinition: true, scopeLine: 1324, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*)* @PyImport_ImportModuleNoBlock, variables: !895)
!895 = !{!896}
!896 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !894, file: !1, line: 1323, type: !37)
!897 = !DISubprogram(name: "PyImport_ImportModuleLevelObject", scope: !1, file: !1, line: 1392, type: !898, isLocal: false, isDefinition: true, scopeLine: 1395, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, %struct._object*, %struct._object*, i32)* @PyImport_ImportModuleLevelObject, variables: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!13, !13, !13, !13, !13, !52}
!900 = !{!901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !916, !917, !918, !919, !927, !928, !930, !932, !935, !936, !937, !940, !941, !943, !945, !948, !952, !955, !956, !957, !961, !965, !969, !974, !975, !976, !980, !982, !986, !988, !989, !990, !992, !994, !996, !999, !1001, !1004, !1006, !1009, !1011, !1014, !1016, !1019, !1021}
!901 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !897, file: !1, line: 1392, type: !13)
!902 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "given_globals", arg: 2, scope: !897, file: !1, line: 1392, type: !13)
!903 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "locals", arg: 3, scope: !897, file: !1, line: 1393, type: !13)
!904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "given_fromlist", arg: 4, scope: !897, file: !1, line: 1393, type: !13)
!905 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 5, scope: !897, file: !1, line: 1394, type: !52)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abs_name", scope: !897, file: !1, line: 1406, type: !13)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins_import", scope: !897, file: !1, line: 1407, type: !13)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "final_mod", scope: !897, file: !1, line: 1408, type: !13)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !897, file: !1, line: 1409, type: !13)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "package", scope: !897, file: !1, line: 1410, type: !13)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "globals", scope: !897, file: !1, line: 1411, type: !13)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fromlist", scope: !897, file: !1, line: 1412, type: !13)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "interp", scope: !897, file: !1, line: 1413, type: !360)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !915, file: !1, line: 1413, type: !616)
!915 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1413, column: 34)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !915, file: !1, line: 1413, type: !12)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !915, file: !1, line: 1413, type: !623)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !915, file: !1, line: 1413, type: !626)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !920, file: !1, line: 1485, type: !13)
!920 = distinct !DILexicalBlock(scope: !921, file: !1, line: 1484, column: 69)
!921 = distinct !DILexicalBlock(scope: !922, file: !1, line: 1484, column: 17)
!922 = distinct !DILexicalBlock(scope: !923, file: !1, line: 1473, column: 14)
!923 = distinct !DILexicalBlock(scope: !924, file: !1, line: 1466, column: 13)
!924 = distinct !DILexicalBlock(scope: !925, file: !1, line: 1464, column: 25)
!925 = distinct !DILexicalBlock(scope: !926, file: !1, line: 1464, column: 14)
!926 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1460, column: 9)
!927 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "borrowed_dot", scope: !920, file: !1, line: 1486, type: !13)
!928 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !929, file: !1, line: 1491, type: !13)
!929 = distinct !DILexicalBlock(scope: !920, file: !1, line: 1491, column: 17)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !931, file: !1, line: 1497, type: !13)
!931 = distinct !DILexicalBlock(scope: !920, file: !1, line: 1497, column: 17)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "last_dot", scope: !933, file: !1, line: 1518, type: !19)
!933 = distinct !DILexicalBlock(scope: !934, file: !1, line: 1517, column: 20)
!934 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1517, column: 9)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base", scope: !933, file: !1, line: 1519, type: !13)
!936 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "level_up", scope: !933, file: !1, line: 1520, type: !52)
!937 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "borrowed_dot", scope: !938, file: !1, line: 1540, type: !13)
!938 = distinct !DILexicalBlock(scope: !939, file: !1, line: 1539, column: 45)
!939 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1539, column: 13)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "seq", scope: !938, file: !1, line: 1540, type: !13)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !942, file: !1, line: 1544, type: !13)
!942 = distinct !DILexicalBlock(scope: !938, file: !1, line: 1544, column: 13)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !944, file: !1, line: 1550, type: !13)
!944 = distinct !DILexicalBlock(scope: !938, file: !1, line: 1550, column: 13)
!945 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "msg", scope: !946, file: !1, line: 1582, type: !13)
!946 = distinct !DILexicalBlock(scope: !947, file: !1, line: 1581, column: 25)
!947 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1581, column: 9)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !949, file: !1, line: 1586, type: !13)
!949 = distinct !DILexicalBlock(scope: !950, file: !1, line: 1586, column: 13)
!950 = distinct !DILexicalBlock(scope: !951, file: !1, line: 1584, column: 26)
!951 = distinct !DILexicalBlock(scope: !946, file: !1, line: 1584, column: 13)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !953, file: !1, line: 1592, type: !13)
!953 = distinct !DILexicalBlock(scope: !954, file: !1, line: 1591, column: 27)
!954 = distinct !DILexicalBlock(scope: !947, file: !1, line: 1591, column: 14)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "spec", scope: !953, file: !1, line: 1593, type: !13)
!956 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "initializing", scope: !953, file: !1, line: 1594, type: !52)
!957 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !958, file: !1, line: 1605, type: !13)
!958 = distinct !DILexicalBlock(scope: !959, file: !1, line: 1605, column: 13)
!959 = distinct !DILexicalBlock(scope: !960, file: !1, line: 1603, column: 27)
!960 = distinct !DILexicalBlock(scope: !953, file: !1, line: 1603, column: 13)
!961 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !962, file: !1, line: 1611, type: !13)
!962 = distinct !DILexicalBlock(scope: !963, file: !1, line: 1611, column: 13)
!963 = distinct !DILexicalBlock(scope: !964, file: !1, line: 1609, column: 14)
!964 = distinct !DILexicalBlock(scope: !953, file: !1, line: 1607, column: 13)
!965 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !966, file: !1, line: 1622, type: !13)
!966 = distinct !DILexicalBlock(scope: !967, file: !1, line: 1622, column: 13)
!967 = distinct !DILexicalBlock(scope: !968, file: !1, line: 1615, column: 31)
!968 = distinct !DILexicalBlock(scope: !953, file: !1, line: 1615, column: 13)
!969 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "front", scope: !970, file: !1, line: 1646, type: !13)
!970 = distinct !DILexicalBlock(scope: !971, file: !1, line: 1645, column: 59)
!971 = distinct !DILexicalBlock(scope: !972, file: !1, line: 1645, column: 13)
!972 = distinct !DILexicalBlock(scope: !973, file: !1, line: 1644, column: 33)
!973 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1644, column: 9)
!974 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "partition", scope: !970, file: !1, line: 1647, type: !13)
!975 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "borrowed_dot", scope: !970, file: !1, line: 1648, type: !13)
!976 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !977, file: !1, line: 1661, type: !13)
!977 = distinct !DILexicalBlock(scope: !978, file: !1, line: 1661, column: 17)
!978 = distinct !DILexicalBlock(scope: !979, file: !1, line: 1659, column: 76)
!979 = distinct !DILexicalBlock(scope: !970, file: !1, line: 1659, column: 17)
!980 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !981, file: !1, line: 1669, type: !13)
!981 = distinct !DILexicalBlock(scope: !970, file: !1, line: 1669, column: 13)
!982 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !983, file: !1, line: 1673, type: !13)
!983 = distinct !DILexicalBlock(scope: !984, file: !1, line: 1673, column: 17)
!984 = distinct !DILexicalBlock(scope: !985, file: !1, line: 1671, column: 29)
!985 = distinct !DILexicalBlock(scope: !970, file: !1, line: 1671, column: 17)
!986 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cut_off", scope: !987, file: !1, line: 1676, type: !19)
!987 = distinct !DILexicalBlock(scope: !985, file: !1, line: 1675, column: 18)
!988 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "abs_name_len", scope: !987, file: !1, line: 1678, type: !19)
!989 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "to_return", scope: !987, file: !1, line: 1679, type: !13)
!990 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !991, file: !1, line: 1681, type: !13)
!991 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1681, column: 17)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !993, file: !1, line: 1695, type: !13)
!993 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1695, column: 17)
!994 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !995, file: !1, line: 1718, type: !13)
!995 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1718, column: 5)
!996 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !997, file: !1, line: 1718, type: !13)
!997 = distinct !DILexicalBlock(scope: !998, file: !1, line: 1718, column: 5)
!998 = distinct !DILexicalBlock(scope: !995, file: !1, line: 1718, column: 5)
!999 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1000, file: !1, line: 1719, type: !13)
!1000 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1719, column: 5)
!1001 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1002, file: !1, line: 1719, type: !13)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 1719, column: 5)
!1003 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 1719, column: 5)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1005, file: !1, line: 1720, type: !13)
!1005 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1720, column: 5)
!1006 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1007, file: !1, line: 1720, type: !13)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !1, line: 1720, column: 5)
!1008 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 1720, column: 5)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1010, file: !1, line: 1721, type: !13)
!1010 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1721, column: 5)
!1011 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1012, file: !1, line: 1721, type: !13)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 1721, column: 5)
!1013 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 1721, column: 5)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1015, file: !1, line: 1722, type: !13)
!1015 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1722, column: 5)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1017, file: !1, line: 1722, type: !13)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !1, line: 1722, column: 5)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 1722, column: 5)
!1019 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1020, file: !1, line: 1723, type: !13)
!1020 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1723, column: 5)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1022, file: !1, line: 1723, type: !13)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 1723, column: 5)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !1, line: 1723, column: 5)
!1024 = !DISubprogram(name: "PyImport_ImportModuleLevel", scope: !1, file: !1, line: 1730, type: !1025, isLocal: false, isDefinition: true, scopeLine: 1732, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (i8*, %struct._object*, %struct._object*, %struct._object*, i32)* @PyImport_ImportModuleLevel, variables: !1027)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!13, !37, !13, !13, !13, !52}
!1027 = !{!1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1028 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1024, file: !1, line: 1730, type: !37)
!1029 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "globals", arg: 2, scope: !1024, file: !1, line: 1730, type: !13)
!1030 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "locals", arg: 3, scope: !1024, file: !1, line: 1730, type: !13)
!1031 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fromlist", arg: 4, scope: !1024, file: !1, line: 1731, type: !13)
!1032 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "level", arg: 5, scope: !1024, file: !1, line: 1731, type: !52)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !1024, file: !1, line: 1733, type: !13)
!1034 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !1024, file: !1, line: 1733, type: !13)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1036, file: !1, line: 1739, type: !13)
!1036 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 1739, column: 5)
!1037 = !DISubprogram(name: "PyImport_ReloadModule", scope: !1, file: !1, line: 1748, type: !124, isLocal: false, isDefinition: true, scopeLine: 1749, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyImport_ReloadModule, variables: !1038)
!1038 = !{!1039, !1040, !1041, !1042, !1043}
!1039 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "m", arg: 1, scope: !1037, file: !1, line: 1748, type: !13)
!1040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "reloaded_module", scope: !1037, file: !1, line: 1751, type: !13)
!1041 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modules", scope: !1037, file: !1, line: 1752, type: !13)
!1042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "imp", scope: !1037, file: !1, line: 1753, type: !13)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1044, file: !1, line: 1765, type: !13)
!1044 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 1765, column: 5)
!1045 = !DISubprogram(name: "PyImport_Import", scope: !1, file: !1, line: 1780, type: !124, isLocal: false, isDefinition: true, scopeLine: 1781, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @PyImport_Import, variables: !1046)
!1046 = !{!1047, !1048, !1049, !1050, !1051, !1052, !1053, !1055, !1057, !1060, !1062, !1065, !1067}
!1047 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module_name", arg: 1, scope: !1045, file: !1, line: 1780, type: !13)
!1048 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "globals", scope: !1045, file: !1, line: 1785, type: !13)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "import", scope: !1045, file: !1, line: 1786, type: !13)
!1050 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "builtins", scope: !1045, file: !1, line: 1787, type: !13)
!1051 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modules", scope: !1045, file: !1, line: 1788, type: !13)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !1045, file: !1, line: 1789, type: !13)
!1053 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1054, file: !1, line: 1841, type: !13)
!1054 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1841, column: 5)
!1055 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1056, file: !1, line: 1849, type: !13)
!1056 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1849, column: 5)
!1057 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1058, file: !1, line: 1849, type: !13)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !1, line: 1849, column: 5)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !1, line: 1849, column: 5)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1061, file: !1, line: 1850, type: !13)
!1061 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1850, column: 5)
!1062 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1063, file: !1, line: 1850, type: !13)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 1850, column: 5)
!1064 = distinct !DILexicalBlock(scope: !1061, file: !1, line: 1850, column: 5)
!1065 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1066, file: !1, line: 1851, type: !13)
!1066 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1851, column: 5)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1068, file: !1, line: 1851, type: !13)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 1851, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !1, line: 1851, column: 5)
!1070 = !DISubprogram(name: "PyInit_imp", scope: !1, file: !1, line: 2314, type: !504, isLocal: false, isDefinition: true, scopeLine: 2315, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_imp, variables: !1071)
!1071 = !{!1072, !1073, !1074, !1076}
!1072 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !1070, file: !1, line: 2316, type: !13)
!1073 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !1070, file: !1, line: 2316, type: !13)
!1074 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1075, file: !1, line: 2327, type: !13)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 2327, column: 5)
!1076 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1077, file: !1, line: 2327, type: !13)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !1, line: 2327, column: 5)
!1078 = distinct !DILexicalBlock(scope: !1075, file: !1, line: 2327, column: 5)
!1079 = !DISubprogram(name: "PyImport_ExtendInittab", scope: !1, file: !1, line: 2340, type: !1080, isLocal: false, isDefinition: true, scopeLine: 2341, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._inittab*)* @PyImport_ExtendInittab, variables: !1082)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!52, !537}
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newtab", arg: 1, scope: !1079, file: !1, line: 2340, type: !537)
!1084 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1079, file: !1, line: 2343, type: !537)
!1085 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1079, file: !1, line: 2344, type: !52)
!1086 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !1079, file: !1, line: 2344, type: !52)
!1087 = !DISubprogram(name: "PyImport_AppendInittab", scope: !1, file: !1, line: 2372, type: !1088, isLocal: false, isDefinition: true, scopeLine: 2373, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, %struct._object* ()*)* @PyImport_AppendInittab, variables: !1090)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{!52, !37, !503}
!1090 = !{!1091, !1092, !1093}
!1091 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1087, file: !1, line: 2372, type: !37)
!1092 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "initfunc", arg: 2, scope: !1087, file: !1, line: 2372, type: !503)
!1093 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "newtab", scope: !1087, file: !1, line: 2374, type: !1094)
!1094 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 256, align: 64, elements: !1095)
!1095 = !{!1096}
!1096 = !DISubrange(count: 2)
!1097 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !4, file: !4, line: 59, type: !1098, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !1103)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{null, !1100, !626}
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64, align: 64)
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1103 = !{!1104, !1105}
!1104 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !1097, file: !4, line: 59, type: !1100)
!1105 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !1097, file: !4, line: 59, type: !626)
!1106 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !4, file: !4, line: 51, type: !1107, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !1109)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !626}
!1109 = !{!1110}
!1110 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !1106, file: !4, line: 51, type: !626)
!1111 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !4, file: !4, line: 44, type: !1107, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !1112)
!1112 = !{!1113}
!1113 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !1111, file: !4, line: 44, type: !626)
!1114 = !DISubprogram(name: "module_dict_for_exec", scope: !1, file: !1, line: 841, type: !124, isLocal: true, isDefinition: true, scopeLine: 842, flags: DIFlagPrototyped, isOptimized: true, variables: !1115)
!1115 = !{!1116, !1117, !1118}
!1116 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1114, file: !1, line: 841, type: !13)
!1117 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !1114, file: !1, line: 843, type: !13)
!1118 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !1114, file: !1, line: 843, type: !13)
!1119 = !DISubprogram(name: "remove_module", scope: !1, file: !1, line: 754, type: !45, isLocal: true, isDefinition: true, scopeLine: 755, flags: DIFlagPrototyped, isOptimized: true, variables: !1120)
!1120 = !{!1121, !1122}
!1121 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1119, file: !1, line: 754, type: !13)
!1122 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modules", scope: !1119, file: !1, line: 756, type: !13)
!1123 = !DISubprogram(name: "exec_code_in_module", scope: !1, file: !1, line: 863, type: !143, isLocal: true, isDefinition: true, scopeLine: 864, flags: DIFlagPrototyped, isOptimized: true, variables: !1124)
!1124 = !{!1125, !1126, !1127, !1128, !1129, !1130, !1131}
!1125 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1123, file: !1, line: 863, type: !13)
!1126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module_dict", arg: 2, scope: !1123, file: !1, line: 863, type: !13)
!1127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code_object", arg: 3, scope: !1123, file: !1, line: 863, type: !13)
!1128 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modules", scope: !1123, file: !1, line: 865, type: !13)
!1129 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "v", scope: !1123, file: !1, line: 866, type: !13)
!1130 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !1123, file: !1, line: 866, type: !13)
!1131 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1132, file: !1, line: 873, type: !13)
!1132 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 873, column: 5)
!1133 = !DISubprogram(name: "get_path_importer", scope: !1, file: !1, line: 1041, type: !143, isLocal: true, isDefinition: true, scopeLine: 1043, flags: DIFlagPrototyped, isOptimized: true, variables: !1134)
!1134 = !{!1135, !1136, !1137, !1138, !1139, !1140, !1141, !1145, !1148}
!1135 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path_importer_cache", arg: 1, scope: !1133, file: !1, line: 1041, type: !13)
!1136 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path_hooks", arg: 2, scope: !1133, file: !1, line: 1041, type: !13)
!1137 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p", arg: 3, scope: !1133, file: !1, line: 1042, type: !13)
!1138 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "importer", scope: !1133, file: !1, line: 1044, type: !13)
!1139 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "j", scope: !1133, file: !1, line: 1045, type: !19)
!1140 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nhooks", scope: !1133, file: !1, line: 1045, type: !19)
!1141 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "hook", scope: !1142, file: !1, line: 1064, type: !13)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !1, line: 1063, column: 34)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 1063, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 1063, column: 5)
!1145 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1146, file: !1, line: 1080, type: !52)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !1, line: 1079, column: 27)
!1147 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 1079, column: 9)
!1148 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1149, file: !1, line: 1081, type: !13)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 1081, column: 9)
!1150 = !DISubprogram(name: "find_frozen", scope: !1, file: !1, line: 1152, type: !1151, isLocal: true, isDefinition: true, scopeLine: 1153, flags: DIFlagPrototyped, isOptimized: true, variables: !1153)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!852, !13}
!1153 = !{!1154, !1155}
!1154 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1150, file: !1, line: 1152, type: !13)
!1155 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1150, file: !1, line: 1154, type: !852)
!1156 = !DISubprogram(name: "remove_importlib_frames", scope: !1, file: !1, line: 1332, type: !558, isLocal: true, isDefinition: true, scopeLine: 1333, flags: DIFlagPrototyped, isOptimized: true, variables: !1157)
!1157 = !{!1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1170, !1171, !1174, !1175, !1176, !1179, !1181}
!1158 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "importlib_filename", scope: !1156, file: !1, line: 1334, type: !37)
!1159 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "remove_frames", scope: !1156, file: !1, line: 1335, type: !37)
!1160 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "always_trim", scope: !1156, file: !1, line: 1336, type: !52)
!1161 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "in_importlib", scope: !1156, file: !1, line: 1337, type: !52)
!1162 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exception", scope: !1156, file: !1, line: 1338, type: !13)
!1163 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !1156, file: !1, line: 1338, type: !13)
!1164 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "base_tb", scope: !1156, file: !1, line: 1338, type: !13)
!1165 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !1156, file: !1, line: 1338, type: !13)
!1166 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "prev_link", scope: !1156, file: !1, line: 1339, type: !417)
!1167 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "outer_link", scope: !1156, file: !1, line: 1339, type: !417)
!1168 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "traceback", scope: !1169, file: !1, line: 1355, type: !545)
!1169 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 1354, column: 24)
!1170 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "next", scope: !1169, file: !1, line: 1356, type: !13)
!1171 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "frame", scope: !1169, file: !1, line: 1357, type: !1172)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64, align: 64)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyFrameObject", file: !382, line: 53, baseType: !381)
!1174 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !1169, file: !1, line: 1358, type: !387)
!1175 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "now_in_importlib", scope: !1169, file: !1, line: 1359, type: !52)
!1176 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1177, file: !1, line: 1375, type: !13)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !1, line: 1374, column: 69)
!1178 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 1371, column: 13)
!1179 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1180, file: !1, line: 1377, type: !13)
!1180 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 1377, column: 13)
!1181 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1182, file: !1, line: 1378, type: !13)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 1378, column: 13)
!1183 = !DISubprogram(name: "_imp_extension_suffixes", scope: !1, file: !1, line: 1875, type: !1184, isLocal: true, isDefinition: true, scopeLine: 1876, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_extension_suffixes, variables: !1186)
!1184 = !DISubroutineType(types: !1185)
!1185 = !{!13, !492, !13}
!1186 = !{!1187, !1188}
!1187 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1183, file: !1, line: 1875, type: !492)
!1188 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_unused_ignored", arg: 2, scope: !1183, file: !1, line: 1875, type: !13)
!1189 = !DISubprogram(name: "_imp_extension_suffixes_impl", scope: !1, file: !1, line: 1881, type: !1190, isLocal: true, isDefinition: true, scopeLine: 1883, flags: DIFlagPrototyped, isOptimized: true, variables: !1192)
!1190 = !DISubroutineType(types: !1191)
!1191 = !{!13, !492}
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1199, !1203, !1207, !1209}
!1193 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1189, file: !1, line: 1881, type: !492)
!1194 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "list", scope: !1189, file: !1, line: 1884, type: !13)
!1195 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "suffix", scope: !1189, file: !1, line: 1885, type: !37)
!1196 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "index", scope: !1189, file: !1, line: 1886, type: !349)
!1197 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !1198, file: !1, line: 1893, type: !13)
!1198 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 1892, column: 56)
!1199 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1200, file: !1, line: 1895, type: !13)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !1, line: 1895, column: 13)
!1201 = distinct !DILexicalBlock(scope: !1202, file: !1, line: 1894, column: 27)
!1202 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 1894, column: 13)
!1203 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1204, file: !1, line: 1899, type: !13)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 1899, column: 13)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 1898, column: 44)
!1206 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 1898, column: 13)
!1207 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1208, file: !1, line: 1900, type: !13)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 1900, column: 13)
!1209 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1210, file: !1, line: 1903, type: !13)
!1210 = distinct !DILexicalBlock(scope: !1198, file: !1, line: 1903, column: 9)
!1211 = !DISubprogram(name: "_imp_lock_held", scope: !1, file: !1, line: 253, type: !1184, isLocal: true, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_lock_held, variables: !1212)
!1212 = !{!1213, !1214}
!1213 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1211, file: !1, line: 253, type: !492)
!1214 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_unused_ignored", arg: 2, scope: !1211, file: !1, line: 253, type: !13)
!1215 = !DISubprogram(name: "_imp_lock_held_impl", scope: !1, file: !1, line: 259, type: !1190, isLocal: true, isDefinition: true, scopeLine: 261, flags: DIFlagPrototyped, isOptimized: true, variables: !1216)
!1216 = !{!1217}
!1217 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1215, file: !1, line: 259, type: !492)
!1218 = !DISubprogram(name: "_imp_acquire_lock", scope: !1, file: !1, line: 294, type: !1184, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_acquire_lock, variables: !1219)
!1219 = !{!1220, !1221}
!1220 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1218, file: !1, line: 294, type: !492)
!1221 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_unused_ignored", arg: 2, scope: !1218, file: !1, line: 294, type: !13)
!1222 = !DISubprogram(name: "_imp_acquire_lock_impl", scope: !1, file: !1, line: 300, type: !1190, isLocal: true, isDefinition: true, scopeLine: 302, flags: DIFlagPrototyped, isOptimized: true, variables: !1223)
!1223 = !{!1224}
!1224 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1222, file: !1, line: 300, type: !492)
!1225 = !DISubprogram(name: "_imp_release_lock", scope: !1, file: !1, line: 333, type: !1184, isLocal: true, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_release_lock, variables: !1226)
!1226 = !{!1227, !1228}
!1227 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1225, file: !1, line: 333, type: !492)
!1228 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "_unused_ignored", arg: 2, scope: !1225, file: !1, line: 333, type: !13)
!1229 = !DISubprogram(name: "_imp_release_lock_impl", scope: !1, file: !1, line: 339, type: !1190, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, variables: !1230)
!1230 = !{!1231}
!1231 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1229, file: !1, line: 339, type: !492)
!1232 = !DISubprogram(name: "_imp_get_frozen_object", scope: !1, file: !1, line: 2044, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2045, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_get_frozen_object, variables: !1233)
!1233 = !{!1234, !1235, !1236, !1237}
!1234 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1232, file: !1, line: 2044, type: !492)
!1235 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1232, file: !1, line: 2044, type: !13)
!1236 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1232, file: !1, line: 2046, type: !13)
!1237 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1232, file: !1, line: 2047, type: !13)
!1238 = !DISubprogram(name: "_imp_get_frozen_object_impl", scope: !1, file: !1, line: 2060, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2062, flags: DIFlagPrototyped, isOptimized: true, variables: !1239)
!1239 = !{!1240, !1241}
!1240 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1238, file: !1, line: 2060, type: !492)
!1241 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !1238, file: !1, line: 2060, type: !13)
!1242 = !DISubprogram(name: "get_frozen_object", scope: !1, file: !1, line: 1169, type: !124, isLocal: true, isDefinition: true, scopeLine: 1170, flags: DIFlagPrototyped, isOptimized: true, variables: !1243)
!1243 = !{!1244, !1245, !1246}
!1244 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1242, file: !1, line: 1169, type: !13)
!1245 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1242, file: !1, line: 1171, type: !852)
!1246 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !1242, file: !1, line: 1172, type: !52)
!1247 = !DISubprogram(name: "_imp_is_frozen_package", scope: !1, file: !1, line: 2088, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2089, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_is_frozen_package, variables: !1248)
!1248 = !{!1249, !1250, !1251, !1252}
!1249 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1247, file: !1, line: 2088, type: !492)
!1250 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1247, file: !1, line: 2088, type: !13)
!1251 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1247, file: !1, line: 2090, type: !13)
!1252 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1247, file: !1, line: 2091, type: !13)
!1253 = !DISubprogram(name: "_imp_is_frozen_package_impl", scope: !1, file: !1, line: 2104, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2106, flags: DIFlagPrototyped, isOptimized: true, variables: !1254)
!1254 = !{!1255, !1256}
!1255 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1253, file: !1, line: 2104, type: !492)
!1256 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !1253, file: !1, line: 2104, type: !13)
!1257 = !DISubprogram(name: "is_frozen_package", scope: !1, file: !1, line: 1193, type: !124, isLocal: true, isDefinition: true, scopeLine: 1194, flags: DIFlagPrototyped, isOptimized: true, variables: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1257, file: !1, line: 1193, type: !13)
!1260 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1257, file: !1, line: 1195, type: !852)
!1261 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !1257, file: !1, line: 1196, type: !52)
!1262 = !DISubprogram(name: "_imp_init_builtin", scope: !1, file: !1, line: 1932, type: !1184, isLocal: true, isDefinition: true, scopeLine: 1933, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_init_builtin, variables: !1263)
!1263 = !{!1264, !1265, !1266, !1267}
!1264 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1262, file: !1, line: 1932, type: !492)
!1265 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1262, file: !1, line: 1932, type: !13)
!1266 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1262, file: !1, line: 1934, type: !13)
!1267 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1262, file: !1, line: 1935, type: !13)
!1268 = !DISubprogram(name: "_imp_init_builtin_impl", scope: !1, file: !1, line: 1948, type: !1184, isLocal: true, isDefinition: true, scopeLine: 1950, flags: DIFlagPrototyped, isOptimized: true, variables: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1268, file: !1, line: 1948, type: !492)
!1271 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !1268, file: !1, line: 1948, type: !13)
!1272 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !1268, file: !1, line: 1951, type: !52)
!1273 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !1268, file: !1, line: 1952, type: !13)
!1274 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1275, file: !1, line: 1962, type: !13)
!1275 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 1962, column: 5)
!1276 = !DISubprogram(name: "init_builtin", scope: !1, file: !1, line: 1110, type: !152, isLocal: true, isDefinition: true, scopeLine: 1111, flags: DIFlagPrototyped, isOptimized: true, variables: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1285, !1286}
!1278 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1276, file: !1, line: 1110, type: !13)
!1279 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1276, file: !1, line: 1112, type: !537)
!1280 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !1276, file: !1, line: 1113, type: !13)
!1281 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !1282, file: !1, line: 1122, type: !13)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !1, line: 1121, column: 54)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 1121, column: 5)
!1284 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 1121, column: 5)
!1285 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "def", scope: !1282, file: !1, line: 1123, type: !492)
!1286 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1287, file: !1, line: 1141, type: !13)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 1141, column: 13)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 1124, column: 67)
!1289 = distinct !DILexicalBlock(scope: !1282, file: !1, line: 1124, column: 13)
!1290 = !DISubprogram(name: "_imp_init_frozen", scope: !1, file: !1, line: 1988, type: !1184, isLocal: true, isDefinition: true, scopeLine: 1989, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_init_frozen, variables: !1291)
!1291 = !{!1292, !1293, !1294, !1295}
!1292 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1290, file: !1, line: 1988, type: !492)
!1293 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1290, file: !1, line: 1988, type: !13)
!1294 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1290, file: !1, line: 1990, type: !13)
!1295 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1290, file: !1, line: 1991, type: !13)
!1296 = !DISubprogram(name: "_imp_init_frozen_impl", scope: !1, file: !1, line: 2004, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2006, flags: DIFlagPrototyped, isOptimized: true, variables: !1297)
!1297 = !{!1298, !1299, !1300, !1301, !1302}
!1298 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1296, file: !1, line: 2004, type: !492)
!1299 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !1296, file: !1, line: 2004, type: !13)
!1300 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ret", scope: !1296, file: !1, line: 2007, type: !52)
!1301 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !1296, file: !1, line: 2008, type: !13)
!1302 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !1303, file: !1, line: 2018, type: !13)
!1303 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 2018, column: 5)
!1304 = !DISubprogram(name: "_imp_is_builtin", scope: !1, file: !1, line: 2132, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2133, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_is_builtin, variables: !1305)
!1305 = !{!1306, !1307, !1308, !1309}
!1306 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1304, file: !1, line: 2132, type: !492)
!1307 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1304, file: !1, line: 2132, type: !13)
!1308 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1304, file: !1, line: 2134, type: !13)
!1309 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1304, file: !1, line: 2135, type: !13)
!1310 = !DISubprogram(name: "_imp_is_builtin_impl", scope: !1, file: !1, line: 2148, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2150, flags: DIFlagPrototyped, isOptimized: true, variables: !1311)
!1311 = !{!1312, !1313}
!1312 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1310, file: !1, line: 2148, type: !492)
!1313 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !1310, file: !1, line: 2148, type: !13)
!1314 = !DISubprogram(name: "is_builtin", scope: !1, file: !1, line: 1016, type: !152, isLocal: true, isDefinition: true, scopeLine: 1017, flags: DIFlagPrototyped, isOptimized: true, variables: !1315)
!1315 = !{!1316, !1317, !1318}
!1316 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 1, scope: !1314, file: !1, line: 1016, type: !13)
!1317 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1314, file: !1, line: 1018, type: !52)
!1318 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "cmp", scope: !1314, file: !1, line: 1018, type: !52)
!1319 = !DISubprogram(name: "_imp_is_frozen", scope: !1, file: !1, line: 2176, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2177, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_is_frozen, variables: !1320)
!1320 = !{!1321, !1322, !1323, !1324}
!1321 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1319, file: !1, line: 2176, type: !492)
!1322 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1319, file: !1, line: 2176, type: !13)
!1323 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1319, file: !1, line: 2178, type: !13)
!1324 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1319, file: !1, line: 2179, type: !13)
!1325 = !DISubprogram(name: "_imp_is_frozen_impl", scope: !1, file: !1, line: 2192, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2194, flags: DIFlagPrototyped, isOptimized: true, variables: !1326)
!1326 = !{!1327, !1328, !1329}
!1327 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1325, file: !1, line: 2192, type: !492)
!1328 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !1325, file: !1, line: 2192, type: !13)
!1329 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1325, file: !1, line: 2195, type: !852)
!1330 = !DISubprogram(name: "_imp_load_dynamic", scope: !1, file: !1, line: 2227, type: !1184, isLocal: true, isDefinition: true, scopeLine: 2228, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp_load_dynamic, variables: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337}
!1332 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1330, file: !1, line: 2227, type: !492)
!1333 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1330, file: !1, line: 2227, type: !13)
!1334 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1330, file: !1, line: 2229, type: !13)
!1335 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1330, file: !1, line: 2230, type: !13)
!1336 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !1330, file: !1, line: 2231, type: !13)
!1337 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !1330, file: !1, line: 2232, type: !13)
!1338 = !DISubprogram(name: "_imp_load_dynamic_impl", scope: !1, file: !1, line: 2245, type: !1339, isLocal: true, isDefinition: true, scopeLine: 2247, flags: DIFlagPrototyped, isOptimized: true, variables: !1341)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!13, !492, !13, !13, !13}
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1354}
!1342 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1338, file: !1, line: 2245, type: !492)
!1343 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !1338, file: !1, line: 2245, type: !13)
!1344 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 3, scope: !1338, file: !1, line: 2245, type: !13)
!1345 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "file", arg: 4, scope: !1338, file: !1, line: 2245, type: !13)
!1346 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !1338, file: !1, line: 2248, type: !13)
!1347 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !1338, file: !1, line: 2249, type: !53)
!1348 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1349, file: !1, line: 2254, type: !13)
!1349 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 2254, column: 13)
!1350 = distinct !DILexicalBlock(scope: !1351, file: !1, line: 2253, column: 25)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !1, line: 2253, column: 13)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !1, line: 2251, column: 23)
!1353 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 2251, column: 9)
!1354 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1355, file: !1, line: 2263, type: !13)
!1355 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 2263, column: 5)
!1356 = !DISubprogram(name: "_imp__fix_co_filename", scope: !1, file: !1, line: 982, type: !1184, isLocal: true, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.PyModuleDef*, %struct._object*)* @_imp__fix_co_filename, variables: !1357)
!1357 = !{!1358, !1359, !1360, !1361, !1362}
!1358 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1356, file: !1, line: 982, type: !492)
!1359 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !1356, file: !1, line: 982, type: !13)
!1360 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "return_value", scope: !1356, file: !1, line: 984, type: !13)
!1361 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !1356, file: !1, line: 985, type: !387)
!1362 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !1356, file: !1, line: 986, type: !13)
!1363 = !DISubprogram(name: "_imp__fix_co_filename_impl", scope: !1, file: !1, line: 999, type: !1364, isLocal: true, isDefinition: true, scopeLine: 1002, flags: DIFlagPrototyped, isOptimized: true, variables: !1366)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!13, !492, !387, !13}
!1366 = !{!1367, !1368, !1369}
!1367 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "module", arg: 1, scope: !1363, file: !1, line: 999, type: !492)
!1368 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "code", arg: 2, scope: !1363, file: !1, line: 999, type: !387)
!1369 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 3, scope: !1363, file: !1, line: 999, type: !13)
!1370 = !DISubprogram(name: "update_compiled_module", scope: !1, file: !1, line: 938, type: !1371, isLocal: true, isDefinition: true, scopeLine: 939, flags: DIFlagPrototyped, isOptimized: true, variables: !1373)
!1371 = !DISubroutineType(types: !1372)
!1372 = !{null, !387, !13}
!1373 = !{!1374, !1375, !1376, !1377}
!1374 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "co", arg: 1, scope: !1370, file: !1, line: 938, type: !387)
!1375 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newname", arg: 2, scope: !1370, file: !1, line: 938, type: !13)
!1376 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "oldname", scope: !1370, file: !1, line: 940, type: !13)
!1377 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1378, file: !1, line: 948, type: !13)
!1378 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 948, column: 5)
!1379 = !DISubprogram(name: "update_code_filenames", scope: !1, file: !1, line: 914, type: !1380, isLocal: true, isDefinition: true, scopeLine: 915, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.PyCodeObject*, %struct._object*, %struct._object*)* @update_code_filenames, variables: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{null, !387, !13, !13}
!1382 = !{!1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390}
!1383 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "co", arg: 1, scope: !1379, file: !1, line: 914, type: !387)
!1384 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "oldname", arg: 2, scope: !1379, file: !1, line: 914, type: !13)
!1385 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "newname", arg: 3, scope: !1379, file: !1, line: 914, type: !13)
!1386 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "constants", scope: !1379, file: !1, line: 916, type: !13)
!1387 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !1379, file: !1, line: 916, type: !13)
!1388 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1379, file: !1, line: 917, type: !19)
!1389 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "n", scope: !1379, file: !1, line: 917, type: !19)
!1390 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1391, file: !1, line: 925, type: !13)
!1391 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 925, column: 5)
!1392 = !{!1393, !1394, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1423, !1424, !1425, !1426, !1430, !1434, !1435, !1439, !1443, !1447, !1451, !1455, !1459, !1463, !1467, !1471, !1475, !1479, !1480, !1484}
!1393 = !DIGlobalVariable(name: "PyImport_Inittab", scope: !0, file: !1, line: 30, type: !537, isLocal: false, isDefinition: true, variable: %struct._inittab** @PyImport_Inittab)
!1394 = !DIGlobalVariable(name: "PyId_zipimporter", scope: !573, file: !1, line: 117, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @_PyImportZip_Init.PyId_zipimporter)
!1395 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !15, line: 144, baseType: !1396)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !15, line: 140, size: 192, align: 64, elements: !1397)
!1397 = !{!1398, !1400, !1401}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1396, file: !15, line: 141, baseType: !1399, size: 64, align: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64, align: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1396, file: !15, line: 142, baseType: !37, size: 64, align: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1396, file: !15, line: 143, baseType: !13, size: 64, align: 64, offset: 128)
!1402 = !DIGlobalVariable(name: "PyId__get_sourcefile", scope: !791, file: !1, line: 816, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ExecCodeModuleWithPathnames.PyId__get_sourcefile)
!1403 = !DIGlobalVariable(name: "PyId__fix_up_module", scope: !824, file: !1, line: 893, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ExecCodeModuleObject.PyId__fix_up_module)
!1404 = !DIGlobalVariable(name: "PyId___import__", scope: !897, file: !1, line: 1396, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___import__)
!1405 = !DIGlobalVariable(name: "PyId___spec__", scope: !897, file: !1, line: 1397, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___spec__)
!1406 = !DIGlobalVariable(name: "PyId__initializing", scope: !897, file: !1, line: 1398, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__initializing)
!1407 = !DIGlobalVariable(name: "PyId___package__", scope: !897, file: !1, line: 1399, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___package__)
!1408 = !DIGlobalVariable(name: "PyId___path__", scope: !897, file: !1, line: 1400, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___path__)
!1409 = !DIGlobalVariable(name: "PyId___name__", scope: !897, file: !1, line: 1401, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId___name__)
!1410 = !DIGlobalVariable(name: "PyId__find_and_load", scope: !897, file: !1, line: 1402, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__find_and_load)
!1411 = !DIGlobalVariable(name: "PyId__handle_fromlist", scope: !897, file: !1, line: 1403, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__handle_fromlist)
!1412 = !DIGlobalVariable(name: "PyId__lock_unlock_module", scope: !897, file: !1, line: 1404, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.PyId__lock_unlock_module)
!1413 = !DIGlobalVariable(name: "single_dot", scope: !897, file: !1, line: 1405, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ImportModuleLevelObject.single_dot)
!1414 = !DIGlobalVariable(name: "PyId_reload", scope: !1037, file: !1, line: 1750, type: !1395, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyImport_ReloadModule.PyId_reload)
!1415 = !DIGlobalVariable(name: "silly_list", scope: !1045, file: !1, line: 1782, type: !13, isLocal: true, isDefinition: true, variable: %struct._object** @PyImport_Import.silly_list)
!1416 = !DIGlobalVariable(name: "builtins_str", scope: !1045, file: !1, line: 1783, type: !13, isLocal: true, isDefinition: true, variable: %struct._object** @PyImport_Import.builtins_str)
!1417 = !DIGlobalVariable(name: "import_str", scope: !1045, file: !1, line: 1784, type: !13, isLocal: true, isDefinition: true, variable: %struct._object** @PyImport_Import.import_str)
!1418 = !DIGlobalVariable(name: "our_copy", scope: !1079, file: !1, line: 2342, type: !537, isLocal: true, isDefinition: true, variable: %struct._inittab** @PyImport_ExtendInittab.our_copy)
!1419 = !DIGlobalVariable(name: "initstr", scope: !0, file: !1, line: 32, type: !13, isLocal: true, isDefinition: true, variable: %struct._object** @initstr)
!1420 = !DIGlobalVariable(name: "import_lock", scope: !0, file: !1, line: 155, type: !1421, isLocal: true, isDefinition: true, variable: i8** @import_lock)
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !1422, line: 5, baseType: !12)
!1422 = !DIFile(filename: "Include/pythread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1423 = !DIGlobalVariable(name: "import_lock_thread", scope: !0, file: !1, line: 156, type: !25, isLocal: true, isDefinition: true, variable: i64* @import_lock_thread)
!1424 = !DIGlobalVariable(name: "import_lock_level", scope: !0, file: !1, line: 157, type: !52, isLocal: true, isDefinition: true, variable: i32* @import_lock_level)
!1425 = !DIGlobalVariable(name: "extensions", scope: !0, file: !1, line: 25, type: !13, isLocal: true, isDefinition: true, variable: %struct._object** @extensions)
!1426 = !DIGlobalVariable(name: "sys_deletes", scope: !0, file: !1, line: 378, type: !1427, isLocal: true, isDefinition: true, variable: [14 x i8*]* @sys_deletes)
!1427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 896, align: 64, elements: !1428)
!1428 = !{!1429}
!1429 = !DISubrange(count: 14)
!1430 = !DIGlobalVariable(name: "sys_files", scope: !0, file: !1, line: 388, type: !1431, isLocal: true, isDefinition: true)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 448, align: 64, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 7)
!1434 = !DIGlobalVariable(name: "impmodule", scope: !0, file: !1, line: 2301, type: !495, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @impmodule)
!1435 = !DIGlobalVariable(name: "doc_imp", scope: !0, file: !1, line: 2281, type: !1436, isLocal: true, isDefinition: true, variable: [74 x i8]* @doc_imp)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 592, align: 8, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 74)
!1439 = !DIGlobalVariable(name: "imp_methods", scope: !0, file: !1, line: 2284, type: !1440, isLocal: true, isDefinition: true, variable: [13 x %struct.PyMethodDef]* @imp_methods)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !513, size: 3328, align: 64, elements: !1441)
!1441 = !{!1442}
!1442 = !DISubrange(count: 13)
!1443 = !DIGlobalVariable(name: "_imp_extension_suffixes__doc__", scope: !0, file: !1, line: 1862, type: !1444, isLocal: true, isDefinition: true, variable: [105 x i8]* @_imp_extension_suffixes__doc__)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 840, align: 8, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 105)
!1447 = !DIGlobalVariable(name: "_imp_lock_held__doc__", scope: !0, file: !1, line: 238, type: !1448, isLocal: true, isDefinition: true, variable: [133 x i8]* @_imp_lock_held__doc__)
!1448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1064, align: 8, elements: !1449)
!1449 = !{!1450}
!1450 = !DISubrange(count: 133)
!1451 = !DIGlobalVariable(name: "_imp_acquire_lock__doc__", scope: !0, file: !1, line: 278, type: !1452, isLocal: true, isDefinition: true, variable: [240 x i8]* @_imp_acquire_lock__doc__)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1920, align: 8, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 240)
!1455 = !DIGlobalVariable(name: "_imp_release_lock__doc__", scope: !0, file: !1, line: 318, type: !1456, isLocal: true, isDefinition: true, variable: [127 x i8]* @_imp_release_lock__doc__)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1016, align: 8, elements: !1457)
!1457 = !{!1458}
!1458 = !DISubrange(count: 127)
!1459 = !DIGlobalVariable(name: "_imp_get_frozen_object__doc__", scope: !0, file: !1, line: 2031, type: !1460, isLocal: true, isDefinition: true, variable: [82 x i8]* @_imp_get_frozen_object__doc__)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 656, align: 8, elements: !1461)
!1461 = !{!1462}
!1462 = !DISubrange(count: 82)
!1463 = !DIGlobalVariable(name: "_imp_is_frozen_package__doc__", scope: !0, file: !1, line: 2075, type: !1464, isLocal: true, isDefinition: true, variable: [96 x i8]* @_imp_is_frozen_package__doc__)
!1464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 768, align: 8, elements: !1465)
!1465 = !{!1466}
!1466 = !DISubrange(count: 96)
!1467 = !DIGlobalVariable(name: "_imp_init_builtin__doc__", scope: !0, file: !1, line: 1919, type: !1468, isLocal: true, isDefinition: true, variable: [66 x i8]* @_imp_init_builtin__doc__)
!1468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 528, align: 8, elements: !1469)
!1469 = !{!1470}
!1470 = !DISubrange(count: 66)
!1471 = !DIGlobalVariable(name: "_imp_init_frozen__doc__", scope: !0, file: !1, line: 1975, type: !1472, isLocal: true, isDefinition: true, variable: [63 x i8]* @_imp_init_frozen__doc__)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 504, align: 8, elements: !1473)
!1473 = !{!1474}
!1474 = !DISubrange(count: 63)
!1475 = !DIGlobalVariable(name: "_imp_is_builtin__doc__", scope: !0, file: !1, line: 2119, type: !1476, isLocal: true, isDefinition: true, variable: [99 x i8]* @_imp_is_builtin__doc__)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 792, align: 8, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 99)
!1479 = !DIGlobalVariable(name: "_imp_is_frozen__doc__", scope: !0, file: !1, line: 2163, type: !1464, isLocal: true, isDefinition: true, variable: [96 x i8]* @_imp_is_frozen__doc__)
!1480 = !DIGlobalVariable(name: "_imp_load_dynamic__doc__", scope: !0, file: !1, line: 2214, type: !1481, isLocal: true, isDefinition: true, variable: [79 x i8]* @_imp_load_dynamic__doc__)
!1481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 632, align: 8, elements: !1482)
!1482 = !{!1483}
!1483 = !DISubrange(count: 79)
!1484 = !DIGlobalVariable(name: "_imp__fix_co_filename__doc__", scope: !0, file: !1, line: 964, type: !1485, isLocal: true, isDefinition: true, variable: [170 x i8]* @_imp__fix_co_filename__doc__)
!1485 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 1360, align: 8, elements: !1486)
!1486 = !{!1487}
!1487 = !DISubrange(count: 170)
!1488 = !{i32 2, !"Dwarf Version", i32 4}
!1489 = !{i32 2, !"Debug Info Version", i32 3}
!1490 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1491 = !DILocation(line: 52, column: 34, scope: !557)
!1492 = !DILocation(line: 52, column: 55, scope: !557)
!1493 = !{!1494, !1495, i64 16}
!1494 = !{!"_ts", !1495, i64 0, !1495, i64 8, !1495, i64 16, !1495, i64 24, !1498, i64 32, !1496, i64 36, !1496, i64 37, !1498, i64 40, !1498, i64 44, !1495, i64 48, !1495, i64 56, !1495, i64 64, !1495, i64 72, !1495, i64 80, !1495, i64 88, !1495, i64 96, !1495, i64 104, !1495, i64 112, !1495, i64 120, !1495, i64 128, !1498, i64 136, !1495, i64 144, !1499, i64 152, !1498, i64 160, !1495, i64 168, !1495, i64 176, !1495, i64 184}
!1495 = !{!"any pointer", !1496, i64 0}
!1496 = !{!"omnipotent char", !1497, i64 0}
!1497 = !{!"Simple C/C++ TBAA"}
!1498 = !{!"int", !1496, i64 0}
!1499 = !{!"long", !1496, i64 0}
!1500 = !DIExpression()
!1501 = !DILocation(line: 52, column: 25, scope: !557)
!1502 = !DILocation(line: 53, column: 15, scope: !557)
!1503 = !DILocation(line: 53, column: 13, scope: !557)
!1504 = !{!1495, !1495, i64 0}
!1505 = !DILocation(line: 54, column: 17, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !557, file: !1, line: 54, column: 9)
!1507 = !DILocation(line: 54, column: 9, scope: !557)
!1508 = !DILocation(line: 55, column: 9, scope: !1506)
!1509 = !DILocation(line: 56, column: 49, scope: !557)
!1510 = !{!1511, !1495, i64 40}
!1511 = !{!"_is", !1495, i64 0, !1495, i64 8, !1495, i64 16, !1495, i64 24, !1495, i64 32, !1495, i64 40, !1495, i64 48, !1495, i64 56, !1495, i64 64, !1495, i64 72, !1498, i64 80, !1498, i64 84, !1498, i64 88, !1495, i64 96}
!1512 = !DILocation(line: 56, column: 29, scope: !557)
!1513 = !DILocation(line: 56, column: 13, scope: !557)
!1514 = !DILocation(line: 56, column: 27, scope: !557)
!1515 = !{!1511, !1495, i64 96}
!1516 = !DILocation(line: 57, column: 31, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !557, file: !1, line: 57, column: 9)
!1518 = !DILocation(line: 57, column: 9, scope: !557)
!1519 = !DILocation(line: 58, column: 9, scope: !1517)
!1520 = !DILocation(line: 59, column: 1, scope: !557)
!1521 = !DILocation(line: 64, column: 19, scope: !562)
!1522 = !DILocation(line: 65, column: 9, scope: !562)
!1523 = !DILocation(line: 68, column: 9, scope: !562)
!1524 = !DILocation(line: 64, column: 15, scope: !562)
!1525 = !DILocation(line: 69, column: 11, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !562, file: !1, line: 69, column: 9)
!1527 = !DILocation(line: 69, column: 9, scope: !562)
!1528 = !DILocation(line: 71, column: 11, scope: !562)
!1529 = !DILocation(line: 72, column: 5, scope: !1530)
!1530 = !DILexicalBlockFile(scope: !568, file: !1, discriminator: 1)
!1531 = !DILocation(line: 72, column: 5, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !568, file: !1, line: 72, column: 5)
!1533 = !{!1534, !1499, i64 0}
!1534 = !{!"_object", !1499, i64 0, !1495, i64 8}
!1535 = !DILocation(line: 72, column: 5, scope: !568)
!1536 = !DILocation(line: 72, column: 5, scope: !1537)
!1537 = !DILexicalBlockFile(scope: !1532, file: !1, discriminator: 3)
!1538 = !{!1534, !1495, i64 8}
!1539 = !{!1540, !1495, i64 48}
!1540 = !{!"_typeobject", !1541, i64 0, !1495, i64 24, !1499, i64 32, !1499, i64 40, !1495, i64 48, !1495, i64 56, !1495, i64 64, !1495, i64 72, !1495, i64 80, !1495, i64 88, !1495, i64 96, !1495, i64 104, !1495, i64 112, !1495, i64 120, !1495, i64 128, !1495, i64 136, !1495, i64 144, !1495, i64 152, !1495, i64 160, !1499, i64 168, !1495, i64 176, !1495, i64 184, !1495, i64 192, !1495, i64 200, !1499, i64 208, !1495, i64 216, !1495, i64 224, !1495, i64 232, !1495, i64 240, !1495, i64 248, !1495, i64 256, !1495, i64 264, !1495, i64 272, !1495, i64 280, !1499, i64 288, !1495, i64 296, !1495, i64 304, !1495, i64 312, !1495, i64 320, !1495, i64 328, !1495, i64 336, !1495, i64 344, !1495, i64 352, !1495, i64 360, !1495, i64 368, !1495, i64 376, !1498, i64 384, !1495, i64 392}
!1541 = !{!"", !1534, i64 0, !1499, i64 16}
!1542 = !DILocation(line: 73, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !562, file: !1, line: 73, column: 9)
!1544 = !DILocation(line: 73, column: 9, scope: !562)
!1545 = !DILocation(line: 75, column: 9, scope: !562)
!1546 = !DILocation(line: 76, column: 11, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !562, file: !1, line: 76, column: 9)
!1548 = !DILocation(line: 76, column: 9, scope: !562)
!1549 = !DILocation(line: 78, column: 11, scope: !562)
!1550 = !DILocation(line: 79, column: 5, scope: !1551)
!1551 = !DILexicalBlockFile(scope: !570, file: !1, discriminator: 1)
!1552 = !DILocation(line: 79, column: 5, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !570, file: !1, line: 79, column: 5)
!1554 = !DILocation(line: 79, column: 5, scope: !570)
!1555 = !DILocation(line: 79, column: 5, scope: !1556)
!1556 = !DILexicalBlockFile(scope: !1553, file: !1, discriminator: 3)
!1557 = !DILocation(line: 80, column: 9, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !562, file: !1, line: 80, column: 9)
!1559 = !DILocation(line: 80, column: 9, scope: !562)
!1560 = !DILocation(line: 82, column: 18, scope: !562)
!1561 = !DILocation(line: 83, column: 20, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !562, file: !1, line: 83, column: 9)
!1563 = !DILocation(line: 83, column: 9, scope: !562)
!1564 = !DILocation(line: 85, column: 11, scope: !562)
!1565 = !DILocation(line: 86, column: 9, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !562, file: !1, line: 86, column: 9)
!1567 = !DILocation(line: 86, column: 9, scope: !562)
!1568 = !DILocation(line: 88, column: 5, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 86, column: 14)
!1570 = !DILocation(line: 89, column: 5, scope: !1569)
!1571 = !DILocation(line: 92, column: 5, scope: !1572)
!1572 = !DILexicalBlockFile(scope: !572, file: !1, discriminator: 1)
!1573 = !DILocation(line: 92, column: 5, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !572, file: !1, line: 92, column: 5)
!1575 = !DILocation(line: 92, column: 5, scope: !572)
!1576 = !DILocation(line: 92, column: 5, scope: !1577)
!1577 = !DILexicalBlockFile(scope: !1574, file: !1, discriminator: 3)
!1578 = !DILocation(line: 93, column: 1, scope: !562)
!1579 = !DILocation(line: 99, column: 9, scope: !573)
!1580 = !DILocation(line: 101, column: 18, scope: !573)
!1581 = !DILocation(line: 98, column: 15, scope: !573)
!1582 = !DILocation(line: 102, column: 20, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !573, file: !1, line: 102, column: 9)
!1584 = !DILocation(line: 102, column: 9, scope: !573)
!1585 = !DILocation(line: 103, column: 25, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1583, file: !1, line: 102, column: 29)
!1587 = !DILocation(line: 103, column: 9, scope: !1586)
!1588 = !DILocation(line: 104, column: 9, scope: !1586)
!1589 = !DILocation(line: 107, column: 9, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !573, file: !1, line: 107, column: 9)
!1591 = !{!1498, !1498, i64 0}
!1592 = !DILocation(line: 107, column: 9, scope: !573)
!1593 = !DILocation(line: 108, column: 9, scope: !1590)
!1594 = !DILocation(line: 1300, column: 35, scope: !887, inlinedAt: !1595)
!1595 = distinct !DILocation(line: 110, column: 18, scope: !573)
!1596 = !DILocation(line: 1305, column: 13, scope: !887, inlinedAt: !1595)
!1597 = !DILocation(line: 1302, column: 15, scope: !887, inlinedAt: !1595)
!1598 = !DILocation(line: 1306, column: 15, scope: !1599, inlinedAt: !1595)
!1599 = distinct !DILexicalBlock(scope: !887, file: !1, line: 1306, column: 9)
!1600 = !DILocation(line: 1306, column: 9, scope: !887, inlinedAt: !1595)
!1601 = !DILocation(line: 1308, column: 14, scope: !887, inlinedAt: !1595)
!1602 = !DILocation(line: 1303, column: 15, scope: !887, inlinedAt: !1595)
!1603 = !DILocation(line: 1309, column: 5, scope: !1604, inlinedAt: !1595)
!1604 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 1)
!1605 = !DILocation(line: 1309, column: 5, scope: !1606, inlinedAt: !1595)
!1606 = distinct !DILexicalBlock(scope: !893, file: !1, line: 1309, column: 5)
!1607 = !DILocation(line: 1309, column: 5, scope: !893, inlinedAt: !1595)
!1608 = !DILocation(line: 1309, column: 5, scope: !1609, inlinedAt: !1595)
!1609 = !DILexicalBlockFile(scope: !1606, file: !1, discriminator: 3)
!1610 = !DILocation(line: 110, column: 18, scope: !573)
!1611 = !DILocation(line: 98, column: 28, scope: !573)
!1612 = !DILocation(line: 111, column: 20, scope: !580)
!1613 = !DILocation(line: 111, column: 9, scope: !573)
!1614 = !DILocation(line: 112, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !580, file: !1, line: 111, column: 29)
!1616 = !DILocation(line: 113, column: 13, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 113, column: 13)
!1618 = !DILocation(line: 113, column: 13, scope: !1615)
!1619 = !DILocation(line: 114, column: 13, scope: !1617)
!1620 = !DILocation(line: 118, column: 33, scope: !579)
!1621 = !DILocation(line: 118, column: 19, scope: !579)
!1622 = !DILocation(line: 120, column: 9, scope: !1623)
!1623 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!1624 = !DILocation(line: 120, column: 9, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !582, file: !1, line: 120, column: 9)
!1626 = !DILocation(line: 120, column: 9, scope: !582)
!1627 = !DILocation(line: 120, column: 9, scope: !1628)
!1628 = !DILexicalBlockFile(scope: !1625, file: !1, discriminator: 3)
!1629 = !DILocation(line: 121, column: 25, scope: !586)
!1630 = !DILocation(line: 121, column: 13, scope: !579)
!1631 = !DILocation(line: 122, column: 13, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !586, file: !1, line: 121, column: 34)
!1633 = !DILocation(line: 123, column: 17, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1632, file: !1, line: 123, column: 17)
!1635 = !DILocation(line: 123, column: 17, scope: !1632)
!1636 = !DILocation(line: 124, column: 17, scope: !1634)
!1637 = !DILocation(line: 129, column: 19, scope: !585)
!1638 = !DILocation(line: 130, column: 13, scope: !1639)
!1639 = !DILexicalBlockFile(scope: !584, file: !1, discriminator: 1)
!1640 = !DILocation(line: 130, column: 13, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !584, file: !1, line: 130, column: 13)
!1642 = !DILocation(line: 130, column: 13, scope: !584)
!1643 = !DILocation(line: 130, column: 13, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1641, file: !1, discriminator: 3)
!1645 = !DILocation(line: 131, column: 21, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !585, file: !1, line: 131, column: 17)
!1647 = !DILocation(line: 131, column: 17, scope: !585)
!1648 = !DILocation(line: 134, column: 17, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !585, file: !1, line: 134, column: 17)
!1650 = !DILocation(line: 134, column: 17, scope: !585)
!1651 = !DILocation(line: 135, column: 17, scope: !1649)
!1652 = !DILocation(line: 143, column: 5, scope: !573)
!1653 = !DILocation(line: 144, column: 5, scope: !573)
!1654 = !DILocation(line: 145, column: 1, scope: !573)
!1655 = !DILocation(line: 1300, column: 35, scope: !887)
!1656 = !DILocation(line: 1305, column: 13, scope: !887)
!1657 = !DILocation(line: 1302, column: 15, scope: !887)
!1658 = !DILocation(line: 1306, column: 15, scope: !1599)
!1659 = !DILocation(line: 1306, column: 9, scope: !887)
!1660 = !DILocation(line: 1308, column: 14, scope: !887)
!1661 = !DILocation(line: 1303, column: 15, scope: !887)
!1662 = !DILocation(line: 1309, column: 5, scope: !1604)
!1663 = !DILocation(line: 1309, column: 5, scope: !1606)
!1664 = !DILocation(line: 1309, column: 5, scope: !893)
!1665 = !DILocation(line: 1309, column: 5, scope: !1609)
!1666 = !DILocation(line: 1311, column: 1, scope: !887)
!1667 = !DILocation(line: 162, column: 15, scope: !587)
!1668 = !DILocation(line: 162, column: 10, scope: !587)
!1669 = !DILocation(line: 163, column: 12, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !587, file: !1, line: 163, column: 9)
!1671 = !DILocation(line: 163, column: 9, scope: !587)
!1672 = !DILocation(line: 165, column: 9, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !587, file: !1, line: 165, column: 9)
!1674 = !DILocation(line: 165, column: 21, scope: !1673)
!1675 = !DILocation(line: 165, column: 9, scope: !587)
!1676 = !DILocation(line: 166, column: 23, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 165, column: 30)
!1678 = !DILocation(line: 166, column: 21, scope: !1677)
!1679 = !DILocation(line: 167, column: 25, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !1, line: 167, column: 13)
!1681 = !DILocation(line: 167, column: 13, scope: !1677)
!1682 = !DILocation(line: 174, column: 60, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !592, file: !1, discriminator: 1)
!1684 = !DILocation(line: 170, column: 9, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !587, file: !1, line: 170, column: 9)
!1686 = !{!1499, !1499, i64 0}
!1687 = !DILocation(line: 170, column: 28, scope: !1685)
!1688 = !DILocation(line: 170, column: 9, scope: !587)
!1689 = !DILocation(line: 171, column: 26, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !1, line: 170, column: 35)
!1691 = !DILocation(line: 172, column: 9, scope: !1690)
!1692 = !DILocation(line: 174, column: 28, scope: !592)
!1693 = !DILocation(line: 174, column: 34, scope: !592)
!1694 = !DILocation(line: 174, column: 38, scope: !592)
!1695 = !DILocation(line: 174, column: 9, scope: !587)
!1696 = !DILocation(line: 176, column: 33, scope: !591)
!1697 = !DILocation(line: 176, column: 24, scope: !591)
!1698 = !DILocation(line: 177, column: 31, scope: !591)
!1699 = !DILocation(line: 177, column: 9, scope: !591)
!1700 = !DILocation(line: 178, column: 9, scope: !591)
!1701 = !DILocation(line: 179, column: 5, scope: !591)
!1702 = !DILocation(line: 181, column: 24, scope: !587)
!1703 = !DILocation(line: 182, column: 23, scope: !587)
!1704 = !DILocation(line: 183, column: 1, scope: !587)
!1705 = !DILocation(line: 188, column: 15, scope: !593)
!1706 = !DILocation(line: 188, column: 10, scope: !593)
!1707 = !DILocation(line: 189, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !593, file: !1, line: 189, column: 9)
!1709 = !DILocation(line: 197, column: 31, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1711, file: !1, line: 195, column: 33)
!1711 = distinct !DILexicalBlock(scope: !593, file: !1, line: 195, column: 9)
!1712 = !DILocation(line: 189, column: 33, scope: !1708)
!1713 = !DILocation(line: 189, column: 18, scope: !1708)
!1714 = !DILocation(line: 191, column: 9, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !593, file: !1, line: 191, column: 9)
!1716 = !DILocation(line: 191, column: 28, scope: !1715)
!1717 = !DILocation(line: 191, column: 9, scope: !593)
!1718 = !DILocation(line: 193, column: 22, scope: !593)
!1719 = !DILocation(line: 195, column: 27, scope: !1711)
!1720 = !DILocation(line: 195, column: 9, scope: !593)
!1721 = !DILocation(line: 196, column: 28, scope: !1710)
!1722 = !DILocation(line: 197, column: 9, scope: !1710)
!1723 = !DILocation(line: 198, column: 5, scope: !1710)
!1724 = !DILocation(line: 200, column: 1, scope: !593)
!1725 = !DILocation(line: 210, column: 9, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !598, file: !1, line: 210, column: 9)
!1727 = !DILocation(line: 210, column: 21, scope: !1726)
!1728 = !DILocation(line: 210, column: 9, scope: !598)
!1729 = !DILocation(line: 211, column: 23, scope: !1726)
!1730 = !DILocation(line: 211, column: 21, scope: !1726)
!1731 = !DILocation(line: 211, column: 9, scope: !1726)
!1732 = !DILocation(line: 212, column: 9, scope: !602)
!1733 = !DILocation(line: 212, column: 27, scope: !602)
!1734 = !DILocation(line: 212, column: 9, scope: !598)
!1735 = !DILocation(line: 214, column: 19, scope: !601)
!1736 = !DILocation(line: 214, column: 14, scope: !601)
!1737 = !DILocation(line: 219, column: 31, scope: !601)
!1738 = !DILocation(line: 219, column: 9, scope: !601)
!1739 = !DILocation(line: 220, column: 28, scope: !601)
!1740 = !DILocation(line: 221, column: 26, scope: !601)
!1741 = !DILocation(line: 222, column: 5, scope: !601)
!1742 = !DILocation(line: 223, column: 28, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !602, file: !1, line: 222, column: 12)
!1744 = !DILocation(line: 226, column: 1, scope: !598)
!1745 = !DILocation(line: 356, column: 5, scope: !1746)
!1746 = !DILexicalBlockFile(scope: !606, file: !1, discriminator: 1)
!1747 = !DILocation(line: 356, column: 5, scope: !610)
!1748 = !DILocation(line: 356, column: 5, scope: !606)
!1749 = !DILocation(line: 356, column: 5, scope: !1750)
!1750 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 2)
!1751 = !DILocation(line: 356, column: 5, scope: !1752)
!1752 = !DILexicalBlockFile(scope: !608, file: !1, discriminator: 4)
!1753 = !DILocation(line: 356, column: 5, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !608, file: !1, line: 356, column: 5)
!1755 = !DILocation(line: 356, column: 5, scope: !608)
!1756 = !DILocation(line: 356, column: 5, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !1754, file: !1, discriminator: 6)
!1758 = !DILocation(line: 358, column: 9, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !603, file: !1, line: 358, column: 9)
!1760 = !DILocation(line: 358, column: 21, scope: !1759)
!1761 = !DILocation(line: 358, column: 9, scope: !603)
!1762 = !DILocation(line: 359, column: 9, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1759, file: !1, line: 358, column: 30)
!1764 = !DILocation(line: 360, column: 21, scope: !1763)
!1765 = !DILocation(line: 361, column: 5, scope: !1763)
!1766 = !DILocation(line: 363, column: 1, scope: !603)
!1767 = !DILocation(line: 370, column: 34, scope: !615)
!1768 = !DILocation(line: 370, column: 34, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1770, file: !1, discriminator: 6)
!1770 = !DILexicalBlockFile(scope: !615, file: !1, discriminator: 5)
!1771 = !DILocation(line: 370, column: 55, scope: !611)
!1772 = !DILocation(line: 370, column: 25, scope: !611)
!1773 = !DILocation(line: 371, column: 17, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !611, file: !1, line: 371, column: 9)
!1775 = !{!1511, !1495, i64 16}
!1776 = !DILocation(line: 371, column: 25, scope: !1774)
!1777 = !DILocation(line: 371, column: 9, scope: !611)
!1778 = !DILocation(line: 372, column: 9, scope: !1774)
!1779 = !DILocation(line: 373, column: 5, scope: !611)
!1780 = !DILocation(line: 400, column: 5, scope: !627)
!1781 = !DILocation(line: 401, column: 5, scope: !627)
!1782 = !DILocation(line: 402, column: 34, scope: !635)
!1783 = !DILocation(line: 402, column: 34, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1785, file: !1, discriminator: 6)
!1785 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 5)
!1786 = !DILocation(line: 402, column: 55, scope: !627)
!1787 = !DILocation(line: 402, column: 25, scope: !627)
!1788 = !DILocation(line: 403, column: 33, scope: !627)
!1789 = !DILocation(line: 403, column: 15, scope: !627)
!1790 = !DILocation(line: 404, column: 15, scope: !627)
!1791 = !DILocation(line: 407, column: 17, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !627, file: !1, line: 407, column: 9)
!1793 = !DILocation(line: 407, column: 9, scope: !627)
!1794 = !DILocation(line: 418, column: 9, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !627, file: !1, line: 418, column: 9)
!1796 = !DILocation(line: 418, column: 9, scope: !627)
!1797 = !DILocation(line: 419, column: 9, scope: !1795)
!1798 = !DILocation(line: 420, column: 34, scope: !627)
!1799 = !DILocation(line: 420, column: 5, scope: !627)
!1800 = !DILocation(line: 405, column: 12, scope: !627)
!1801 = !DILocation(line: 425, column: 38, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1803, file: !1, line: 422, column: 44)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1, line: 422, column: 5)
!1804 = distinct !DILexicalBlock(scope: !627, file: !1, line: 422, column: 5)
!1805 = !DILocation(line: 422, column: 5, scope: !1804)
!1806 = !DILocation(line: 428, column: 13, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 428, column: 13)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 427, column: 43)
!1809 = distinct !DILexicalBlock(scope: !1810, file: !1, line: 427, column: 5)
!1810 = distinct !DILexicalBlock(scope: !627, file: !1, line: 427, column: 5)
!1811 = !DILocation(line: 428, column: 13, scope: !1808)
!1812 = !DILocation(line: 423, column: 13, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1802, file: !1, line: 423, column: 13)
!1814 = !DILocation(line: 423, column: 13, scope: !1802)
!1815 = !DILocation(line: 424, column: 13, scope: !1813)
!1816 = !{!1511, !1495, i64 32}
!1817 = !DILocation(line: 425, column: 47, scope: !1802)
!1818 = !DILocation(line: 425, column: 9, scope: !1802)
!1819 = !DILocation(line: 422, column: 40, scope: !1803)
!1820 = !DILocation(line: 422, column: 27, scope: !1803)
!1821 = !DILocation(line: 422, column: 30, scope: !1803)
!1822 = !DILocation(line: 429, column: 13, scope: !1807)
!1823 = !DILocation(line: 430, column: 46, scope: !1808)
!1824 = !DILocation(line: 430, column: 17, scope: !1808)
!1825 = !DILocation(line: 431, column: 19, scope: !1826)
!1826 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 431, column: 13)
!1827 = !DILocation(line: 431, column: 13, scope: !1808)
!1828 = !DILocation(line: 401, column: 21, scope: !627)
!1829 = !DILocation(line: 432, column: 19, scope: !1826)
!1830 = !DILocation(line: 433, column: 38, scope: !1808)
!1831 = !DILocation(line: 433, column: 9, scope: !1808)
!1832 = !DILocation(line: 442, column: 9, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !627, file: !1, line: 441, column: 9)
!1834 = !DILocation(line: 400, column: 16, scope: !627)
!1835 = !DILocation(line: 459, column: 9, scope: !627)
!1836 = !DILocation(line: 401, column: 15, scope: !627)
!1837 = !DILocation(line: 460, column: 12, scope: !627)
!1838 = !DILocation(line: 460, column: 5, scope: !627)
!1839 = !DILocation(line: 464, column: 13, scope: !646)
!1840 = !DILocation(line: 461, column: 13, scope: !647)
!1841 = !DILocation(line: 461, column: 13, scope: !1842)
!1842 = !DILexicalBlockFile(scope: !647, file: !1, discriminator: 1)
!1843 = !DILocation(line: 461, column: 13, scope: !648)
!1844 = !DILocation(line: 462, column: 17, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !646, file: !1, line: 462, column: 17)
!1846 = !DILocation(line: 462, column: 32, scope: !1845)
!1847 = !DILocation(line: 462, column: 35, scope: !1848)
!1848 = !DILexicalBlockFile(scope: !1845, file: !1, discriminator: 1)
!1849 = !{!1540, !1499, i64 168}
!1850 = !DILocation(line: 462, column: 17, scope: !646)
!1851 = !DILocation(line: 463, column: 71, scope: !1845)
!1852 = !DILocation(line: 463, column: 17, scope: !1845)
!1853 = !DILocation(line: 465, column: 37, scope: !646)
!1854 = !DILocation(line: 465, column: 13, scope: !646)
!1855 = !DILocation(line: 466, column: 9, scope: !646)
!1856 = !DILocation(line: 464, column: 13, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !644, file: !1, discriminator: 1)
!1858 = !DILocation(line: 464, column: 13, scope: !651)
!1859 = !DILocation(line: 464, column: 13, scope: !1860)
!1860 = !DILexicalBlockFile(scope: !651, file: !1, discriminator: 2)
!1861 = !DILocation(line: 464, column: 13, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !650, file: !1, discriminator: 4)
!1863 = !DILocation(line: 464, column: 13, scope: !1864)
!1864 = !DILexicalBlockFile(scope: !653, file: !1, discriminator: 6)
!1865 = !DILocation(line: 464, column: 13, scope: !656)
!1866 = !DILocation(line: 464, column: 13, scope: !653)
!1867 = !DILocation(line: 464, column: 13, scope: !1868)
!1868 = !DILexicalBlockFile(scope: !655, file: !1, discriminator: 9)
!1869 = !DILocation(line: 464, column: 13, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !655, file: !1, line: 464, column: 13)
!1871 = !DILocation(line: 464, column: 13, scope: !655)
!1872 = !DILocation(line: 464, column: 13, scope: !1873)
!1873 = !DILexicalBlockFile(scope: !1870, file: !1, discriminator: 11)
!1874 = !DILocation(line: 464, column: 13, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !658, file: !1, discriminator: 19)
!1876 = !DILocation(line: 464, column: 13, scope: !658)
!1877 = !DILocation(line: 464, column: 13, scope: !1878)
!1878 = !DILexicalBlockFile(scope: !660, file: !1, discriminator: 22)
!1879 = !DILocation(line: 464, column: 13, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !660, file: !1, line: 464, column: 13)
!1881 = !DILocation(line: 464, column: 13, scope: !660)
!1882 = !DILocation(line: 464, column: 13, scope: !1883)
!1883 = !DILexicalBlockFile(scope: !1880, file: !1, discriminator: 24)
!1884 = !DILocation(line: 464, column: 13, scope: !1885)
!1885 = !DILexicalBlockFile(scope: !1886, file: !1, discriminator: 30)
!1886 = distinct !DILexicalBlock(scope: !644, file: !1, line: 464, column: 13)
!1887 = !DILocation(line: 464, column: 13, scope: !644)
!1888 = !DILocation(line: 464, column: 13, scope: !1889)
!1889 = !DILexicalBlockFile(scope: !1886, file: !1, discriminator: 31)
!1890 = !DILocation(line: 470, column: 5, scope: !627)
!1891 = !DILocation(line: 473, column: 32, scope: !627)
!1892 = !DILocation(line: 473, column: 12, scope: !627)
!1893 = !DILocation(line: 401, column: 29, scope: !627)
!1894 = !DILocation(line: 474, column: 14, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !627, file: !1, line: 474, column: 9)
!1896 = !DILocation(line: 474, column: 9, scope: !627)
!1897 = !DILocation(line: 475, column: 9, scope: !1895)
!1898 = !DILocation(line: 476, column: 26, scope: !627)
!1899 = !DILocation(line: 476, column: 5, scope: !627)
!1900 = !DILocation(line: 477, column: 31, scope: !1901)
!1901 = distinct !DILexicalBlock(scope: !627, file: !1, line: 477, column: 9)
!1902 = !DILocation(line: 477, column: 49, scope: !1901)
!1903 = !DILocation(line: 477, column: 9, scope: !1901)
!1904 = !DILocation(line: 477, column: 9, scope: !627)
!1905 = !DILocation(line: 478, column: 9, scope: !1901)
!1906 = !DILocation(line: 479, column: 5, scope: !1907)
!1907 = !DILexicalBlockFile(scope: !663, file: !1, discriminator: 1)
!1908 = !DILocation(line: 479, column: 5, scope: !663)
!1909 = !DILocation(line: 479, column: 5, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !665, file: !1, discriminator: 4)
!1911 = !DILocation(line: 479, column: 5, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !665, file: !1, line: 479, column: 5)
!1913 = !DILocation(line: 479, column: 5, scope: !665)
!1914 = !DILocation(line: 479, column: 5, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1912, file: !1, discriminator: 6)
!1916 = !DILocation(line: 481, column: 5, scope: !627)
!1917 = !DILocation(line: 483, column: 5, scope: !627)
!1918 = !DILocation(line: 486, column: 5, scope: !627)
!1919 = !DILocation(line: 499, column: 9, scope: !627)
!1920 = !DILocation(line: 501, column: 13, scope: !668)
!1921 = !{!1541, !1499, i64 16}
!1922 = !DILocation(line: 500, column: 23, scope: !668)
!1923 = !DILocation(line: 500, column: 20, scope: !668)
!1924 = !DILocation(line: 502, column: 23, scope: !673)
!1925 = !DILocation(line: 502, column: 9, scope: !674)
!1926 = !DILocation(line: 503, column: 29, scope: !672)
!1927 = !{!1928, !1495, i64 24}
!1928 = !{!"", !1541, i64 0, !1495, i64 24, !1499, i64 32}
!1929 = !DILocation(line: 504, column: 30, scope: !672)
!1930 = !DILocation(line: 504, column: 23, scope: !672)
!1931 = !DILocation(line: 505, column: 29, scope: !672)
!1932 = !{!1933, !1495, i64 16}
!1933 = !{!"_PyWeakReference", !1534, i64 0, !1495, i64 16, !1495, i64 24, !1499, i64 32, !1495, i64 40, !1495, i64 48}
!1934 = !DILocation(line: 506, column: 21, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !672, file: !1, line: 506, column: 17)
!1936 = !DILocation(line: 506, column: 17, scope: !672)
!1937 = !DILocation(line: 509, column: 20, scope: !672)
!1938 = !DILocation(line: 510, column: 33, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !672, file: !1, line: 510, column: 17)
!1940 = !DILocation(line: 510, column: 22, scope: !1939)
!1941 = !DILocation(line: 510, column: 42, scope: !1939)
!1942 = !DILocation(line: 510, column: 61, scope: !1939)
!1943 = !DILocation(line: 510, column: 50, scope: !1939)
!1944 = !DILocation(line: 510, column: 17, scope: !672)
!1945 = !DILocation(line: 512, column: 13, scope: !672)
!1946 = !DILocation(line: 513, column: 17, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !672, file: !1, line: 513, column: 17)
!1948 = !DILocation(line: 513, column: 32, scope: !1947)
!1949 = !DILocation(line: 513, column: 35, scope: !1950)
!1950 = !DILexicalBlockFile(scope: !1947, file: !1, discriminator: 1)
!1951 = !DILocation(line: 513, column: 17, scope: !672)
!1952 = !DILocation(line: 514, column: 17, scope: !1947)
!1953 = !DILocation(line: 515, column: 13, scope: !672)
!1954 = !DILocation(line: 516, column: 13, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !678, file: !1, line: 516, column: 13)
!1956 = !DILocation(line: 516, column: 13, scope: !678)
!1957 = !DILocation(line: 516, column: 13, scope: !1958)
!1958 = !DILexicalBlockFile(scope: !1955, file: !1, discriminator: 3)
!1959 = !DILocation(line: 502, column: 29, scope: !673)
!1960 = !DILocation(line: 518, column: 9, scope: !1961)
!1961 = !DILexicalBlockFile(scope: !680, file: !1, discriminator: 1)
!1962 = !DILocation(line: 518, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !680, file: !1, line: 518, column: 9)
!1964 = !DILocation(line: 518, column: 9, scope: !680)
!1965 = !DILocation(line: 518, column: 9, scope: !1966)
!1966 = !DILexicalBlockFile(scope: !1963, file: !1, discriminator: 3)
!1967 = !DILocation(line: 522, column: 9, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !627, file: !1, line: 522, column: 9)
!1969 = !DILocation(line: 522, column: 9, scope: !627)
!1970 = !DILocation(line: 523, column: 9, scope: !1968)
!1971 = !DILocation(line: 524, column: 33, scope: !627)
!1972 = !DILocation(line: 524, column: 5, scope: !627)
!1973 = !DILocation(line: 525, column: 9, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !627, file: !1, line: 525, column: 9)
!1975 = !DILocation(line: 525, column: 9, scope: !627)
!1976 = !DILocation(line: 526, column: 9, scope: !1974)
!1977 = !DILocation(line: 527, column: 33, scope: !627)
!1978 = !DILocation(line: 527, column: 5, scope: !627)
!1979 = !DILocation(line: 532, column: 21, scope: !627)
!1980 = !DILocation(line: 533, column: 5, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !682, file: !1, discriminator: 1)
!1982 = !DILocation(line: 533, column: 5, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !682, file: !1, line: 533, column: 5)
!1984 = !DILocation(line: 533, column: 5, scope: !682)
!1985 = !DILocation(line: 533, column: 5, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !1983, file: !1, discriminator: 3)
!1987 = !DILocation(line: 536, column: 5, scope: !627)
!1988 = !DILocation(line: 539, column: 1, scope: !627)
!1989 = !DILocation(line: 539, column: 1, scope: !1990)
!1990 = !DILexicalBlockFile(scope: !627, file: !1, discriminator: 1)
!1991 = !DILocation(line: 440, column: 16, scope: !627)
!1992 = !DILocation(line: 441, column: 18, scope: !1833)
!1993 = !DILocation(line: 441, column: 9, scope: !627)
!1994 = !DILocation(line: 548, column: 34, scope: !683)
!1995 = !DILocation(line: 548, column: 55, scope: !683)
!1996 = !DILocation(line: 548, column: 25, scope: !683)
!1997 = !DILocation(line: 549, column: 58, scope: !683)
!1998 = !{!1511, !1495, i64 48}
!1999 = !DILocation(line: 549, column: 27, scope: !683)
!2000 = !DILocation(line: 549, column: 15, scope: !683)
!2001 = !DILocation(line: 551, column: 19, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !683, file: !1, line: 551, column: 9)
!2003 = !DILocation(line: 551, column: 9, scope: !683)
!2004 = !DILocation(line: 553, column: 11, scope: !683)
!2005 = !DILocation(line: 547, column: 10, scope: !683)
!2006 = !DILocation(line: 554, column: 5, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !691, file: !1, discriminator: 1)
!2008 = !DILocation(line: 554, column: 5, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !691, file: !1, line: 554, column: 5)
!2010 = !DILocation(line: 554, column: 5, scope: !691)
!2011 = !DILocation(line: 554, column: 5, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !2009, file: !1, discriminator: 3)
!2013 = !DILocation(line: 556, column: 1, scope: !683)
!2014 = !DILocation(line: 564, column: 12, scope: !692)
!2015 = !DILocation(line: 564, column: 5, scope: !692)
!2016 = !DILocation(line: 585, column: 42, scope: !696)
!2017 = !DILocation(line: 585, column: 57, scope: !696)
!2018 = !DILocation(line: 586, column: 42, scope: !696)
!2019 = !DILocation(line: 591, column: 9, scope: !2020)
!2020 = distinct !DILexicalBlock(scope: !696, file: !1, line: 591, column: 9)
!2021 = !DILocation(line: 591, column: 20, scope: !2020)
!2022 = !DILocation(line: 591, column: 9, scope: !696)
!2023 = !DILocation(line: 592, column: 22, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2020, file: !1, line: 591, column: 29)
!2025 = !DILocation(line: 592, column: 20, scope: !2024)
!2026 = !DILocation(line: 593, column: 24, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2024, file: !1, line: 593, column: 13)
!2028 = !DILocation(line: 593, column: 13, scope: !2024)
!2029 = !DILocation(line: 596, column: 13, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !696, file: !1, line: 596, column: 9)
!2031 = !DILocation(line: 596, column: 21, scope: !2030)
!2032 = !DILocation(line: 596, column: 25, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2030, file: !1, discriminator: 1)
!2034 = !DILocation(line: 596, column: 25, scope: !2035)
!2035 = !DILexicalBlockFile(scope: !2030, file: !1, discriminator: 2)
!2036 = !DILocation(line: 596, column: 9, scope: !696)
!2037 = !DILocation(line: 597, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2030, file: !1, line: 596, column: 46)
!2039 = !DILocation(line: 598, column: 9, scope: !2038)
!2040 = !DILocation(line: 600, column: 11, scope: !696)
!2041 = !DILocation(line: 589, column: 25, scope: !696)
!2042 = !DILocation(line: 601, column: 10, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !696, file: !1, line: 601, column: 9)
!2044 = !DILocation(line: 601, column: 9, scope: !696)
!2045 = !DILocation(line: 602, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 601, column: 15)
!2047 = !DILocation(line: 603, column: 9, scope: !2046)
!2048 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2049)
!2049 = distinct !DILocation(line: 605, column: 15, scope: !696)
!2050 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2049)
!2051 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2049)
!2052 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2049)
!2053 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2049)
!2054 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2049)
!2055 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2049)
!2056 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2049)
!2057 = !DILocation(line: 588, column: 15, scope: !696)
!2058 = !DILocation(line: 606, column: 9, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !696, file: !1, line: 606, column: 9)
!2060 = !DILocation(line: 606, column: 44, scope: !2059)
!2061 = !DILocation(line: 606, column: 9, scope: !696)
!2062 = !DILocation(line: 608, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !696, file: !1, line: 608, column: 9)
!2064 = !DILocation(line: 608, column: 38, scope: !2063)
!2065 = !DILocation(line: 608, column: 9, scope: !696)
!2066 = !DILocation(line: 609, column: 9, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !1, line: 608, column: 43)
!2068 = !DILocation(line: 610, column: 9, scope: !2067)
!2069 = !DILocation(line: 612, column: 14, scope: !712)
!2070 = !{!2071, !1499, i64 56}
!2071 = !{!"PyModuleDef", !2072, i64 0, !1495, i64 40, !1495, i64 48, !1499, i64 56, !1495, i64 64, !1495, i64 72, !1495, i64 80, !1495, i64 88, !1495, i64 96}
!2072 = !{!"PyModuleDef_Base", !1534, i64 0, !1495, i64 16, !1499, i64 24, !1495, i64 32}
!2073 = !DILocation(line: 612, column: 21, scope: !712)
!2074 = !DILocation(line: 612, column: 9, scope: !696)
!2075 = !DILocation(line: 613, column: 25, scope: !710)
!2076 = !{!2071, !1495, i64 32}
!2077 = !DILocation(line: 613, column: 13, scope: !710)
!2078 = !DILocation(line: 613, column: 13, scope: !711)
!2079 = !DILocation(line: 617, column: 13, scope: !2080)
!2080 = !DILexicalBlockFile(scope: !708, file: !1, discriminator: 1)
!2081 = !DILocation(line: 617, column: 13, scope: !2082)
!2082 = !DILexicalBlockFile(scope: !715, file: !1, discriminator: 2)
!2083 = !DILocation(line: 617, column: 13, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !714, file: !1, discriminator: 4)
!2085 = !DILocation(line: 617, column: 13, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !714, file: !1, line: 617, column: 13)
!2087 = !DILocation(line: 617, column: 13, scope: !714)
!2088 = !DILocation(line: 617, column: 13, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !2086, file: !1, discriminator: 6)
!2090 = !DILocation(line: 619, column: 16, scope: !711)
!2091 = !DILocation(line: 588, column: 25, scope: !696)
!2092 = !DILocation(line: 620, column: 18, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !711, file: !1, line: 620, column: 13)
!2094 = !DILocation(line: 620, column: 13, scope: !711)
!2095 = !DILocation(line: 622, column: 30, scope: !711)
!2096 = !DILocation(line: 622, column: 28, scope: !711)
!2097 = !DILocation(line: 623, column: 32, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !711, file: !1, line: 623, column: 13)
!2099 = !DILocation(line: 623, column: 13, scope: !711)
!2100 = !DILocation(line: 626, column: 11, scope: !696)
!2101 = !DILocation(line: 588, column: 32, scope: !696)
!2102 = !DILocation(line: 627, column: 13, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !696, file: !1, line: 627, column: 9)
!2104 = !DILocation(line: 627, column: 9, scope: !696)
!2105 = !DILocation(line: 629, column: 26, scope: !696)
!2106 = !DILocation(line: 629, column: 43, scope: !696)
!2107 = !DILocation(line: 629, column: 11, scope: !696)
!2108 = !DILocation(line: 590, column: 9, scope: !696)
!2109 = !DILocation(line: 630, column: 5, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !718, file: !1, discriminator: 1)
!2111 = !DILocation(line: 630, column: 5, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !718, file: !1, line: 630, column: 5)
!2113 = !DILocation(line: 630, column: 5, scope: !718)
!2114 = !DILocation(line: 630, column: 5, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2112, file: !1, discriminator: 3)
!2116 = !DILocation(line: 632, column: 9, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !696, file: !1, line: 631, column: 9)
!2118 = !DILocation(line: 634, column: 1, scope: !696)
!2119 = !DILocation(line: 637, column: 34, scope: !719)
!2120 = !DILocation(line: 637, column: 51, scope: !719)
!2121 = !DILocation(line: 641, column: 15, scope: !719)
!2122 = !DILocation(line: 640, column: 15, scope: !719)
!2123 = !DILocation(line: 642, column: 17, scope: !2124)
!2124 = distinct !DILexicalBlock(scope: !719, file: !1, line: 642, column: 9)
!2125 = !DILocation(line: 642, column: 9, scope: !719)
!2126 = !DILocation(line: 644, column: 11, scope: !719)
!2127 = !DILocation(line: 639, column: 9, scope: !719)
!2128 = !DILocation(line: 645, column: 5, scope: !2129)
!2129 = !DILexicalBlockFile(scope: !728, file: !1, discriminator: 1)
!2130 = !DILocation(line: 645, column: 5, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !728, file: !1, line: 645, column: 5)
!2132 = !DILocation(line: 645, column: 5, scope: !728)
!2133 = !DILocation(line: 645, column: 5, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2131, file: !1, discriminator: 3)
!2135 = !DILocation(line: 647, column: 1, scope: !719)
!2136 = !DILocation(line: 650, column: 41, scope: !729)
!2137 = !DILocation(line: 650, column: 57, scope: !729)
!2138 = !DILocation(line: 654, column: 9, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !729, file: !1, line: 654, column: 9)
!2140 = !DILocation(line: 654, column: 20, scope: !2139)
!2141 = !DILocation(line: 654, column: 9, scope: !729)
!2142 = !DILocation(line: 656, column: 11, scope: !729)
!2143 = !DILocation(line: 652, column: 29, scope: !729)
!2144 = !DILocation(line: 657, column: 13, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !729, file: !1, line: 657, column: 9)
!2146 = !DILocation(line: 657, column: 9, scope: !729)
!2147 = !DILocation(line: 659, column: 41, scope: !729)
!2148 = !DILocation(line: 659, column: 26, scope: !729)
!2149 = !DILocation(line: 659, column: 11, scope: !729)
!2150 = !DILocation(line: 653, column: 18, scope: !729)
!2151 = !DILocation(line: 660, column: 5, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !738, file: !1, discriminator: 1)
!2153 = !DILocation(line: 660, column: 5, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !738, file: !1, line: 660, column: 5)
!2155 = !DILocation(line: 660, column: 5, scope: !738)
!2156 = !DILocation(line: 660, column: 5, scope: !2157)
!2157 = !DILexicalBlockFile(scope: !2154, file: !1, discriminator: 3)
!2158 = !DILocation(line: 661, column: 13, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !729, file: !1, line: 661, column: 9)
!2160 = !DILocation(line: 661, column: 9, scope: !729)
!2161 = !DILocation(line: 663, column: 14, scope: !744)
!2162 = !DILocation(line: 663, column: 21, scope: !744)
!2163 = !DILocation(line: 663, column: 9, scope: !729)
!2164 = !DILocation(line: 665, column: 25, scope: !2165)
!2165 = distinct !DILexicalBlock(scope: !2166, file: !1, line: 665, column: 13)
!2166 = distinct !DILexicalBlock(scope: !744, file: !1, line: 663, column: 28)
!2167 = !DILocation(line: 665, column: 32, scope: !2165)
!2168 = !DILocation(line: 665, column: 13, scope: !2166)
!2169 = !DILocation(line: 667, column: 15, scope: !2166)
!2170 = !DILocation(line: 652, column: 15, scope: !729)
!2171 = !DILocation(line: 668, column: 17, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2166, file: !1, line: 668, column: 13)
!2173 = !DILocation(line: 668, column: 13, scope: !2166)
!2174 = !DILocation(line: 670, column: 17, scope: !2166)
!2175 = !DILocation(line: 652, column: 21, scope: !729)
!2176 = !DILocation(line: 671, column: 19, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2166, file: !1, line: 671, column: 13)
!2178 = !DILocation(line: 671, column: 13, scope: !2166)
!2179 = !DILocation(line: 673, column: 46, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2166, file: !1, line: 673, column: 13)
!2181 = !DILocation(line: 673, column: 13, scope: !2180)
!2182 = !DILocation(line: 673, column: 13, scope: !2166)
!2183 = !DILocation(line: 677, column: 25, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !743, file: !1, line: 677, column: 13)
!2185 = !{!2071, !1495, i64 16}
!2186 = !DILocation(line: 677, column: 32, scope: !2184)
!2187 = !DILocation(line: 677, column: 13, scope: !743)
!2188 = !DILocation(line: 679, column: 15, scope: !743)
!2189 = !DILocation(line: 680, column: 17, scope: !2190)
!2190 = distinct !DILexicalBlock(scope: !743, file: !1, line: 680, column: 13)
!2191 = !DILocation(line: 680, column: 13, scope: !743)
!2192 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 682, column: 28, scope: !742)
!2194 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2193)
!2195 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2193)
!2196 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2193)
!2197 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2193)
!2198 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2193)
!2199 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2193)
!2200 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2193)
!2201 = !DILocation(line: 682, column: 13, scope: !742)
!2202 = !DILocation(line: 682, column: 65, scope: !742)
!2203 = !DILocation(line: 683, column: 13, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !740, file: !1, line: 683, column: 13)
!2205 = !DILocation(line: 682, column: 13, scope: !743)
!2206 = !DILocation(line: 683, column: 13, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !740, file: !1, discriminator: 1)
!2208 = !DILocation(line: 683, column: 13, scope: !740)
!2209 = !DILocation(line: 683, column: 13, scope: !2210)
!2210 = !DILexicalBlockFile(scope: !2204, file: !1, discriminator: 3)
!2211 = !DILocation(line: 686, column: 9, scope: !2212)
!2212 = !DILexicalBlockFile(scope: !746, file: !1, discriminator: 1)
!2213 = !DILocation(line: 686, column: 9, scope: !746)
!2214 = !DILocation(line: 686, column: 9, scope: !2215)
!2215 = !DILexicalBlockFile(scope: !2216, file: !1, discriminator: 3)
!2216 = distinct !DILexicalBlock(scope: !746, file: !1, line: 686, column: 9)
!2217 = !DILocation(line: 688, column: 9, scope: !750)
!2218 = !DILocation(line: 688, column: 38, scope: !750)
!2219 = !DILocation(line: 688, column: 9, scope: !729)
!2220 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 689, column: 24, scope: !749)
!2222 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2221)
!2223 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2221)
!2224 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2221)
!2225 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2221)
!2226 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2221)
!2227 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2221)
!2228 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2221)
!2229 = !DILocation(line: 689, column: 9, scope: !749)
!2230 = !DILocation(line: 690, column: 9, scope: !2231)
!2231 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 1)
!2232 = !DILocation(line: 690, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !748, file: !1, line: 690, column: 9)
!2234 = !DILocation(line: 690, column: 9, scope: !748)
!2235 = !DILocation(line: 690, column: 9, scope: !2236)
!2236 = !DILexicalBlockFile(scope: !2233, file: !1, discriminator: 3)
!2237 = !DILocation(line: 693, column: 9, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !729, file: !1, line: 693, column: 9)
!2239 = !DILocation(line: 693, column: 9, scope: !729)
!2240 = !DILocation(line: 694, column: 9, scope: !2238)
!2241 = !DILocation(line: 698, column: 1, scope: !729)
!2242 = !DILocation(line: 719, column: 36, scope: !760)
!2243 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2244)
!2244 = distinct !DILocation(line: 721, column: 25, scope: !760)
!2245 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2244)
!2246 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2244)
!2247 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2244)
!2248 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2244)
!2249 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2244)
!2250 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2244)
!2251 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2244)
!2252 = !DILocation(line: 721, column: 15, scope: !760)
!2253 = !DILocation(line: 724, column: 14, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !760, file: !1, line: 724, column: 9)
!2255 = !DILocation(line: 722, column: 15, scope: !760)
!2256 = !DILocation(line: 724, column: 45, scope: !2254)
!2257 = !DILocation(line: 724, column: 53, scope: !2254)
!2258 = !DILocation(line: 725, column: 9, scope: !2254)
!2259 = !DILocation(line: 725, column: 9, scope: !2260)
!2260 = !DILexicalBlockFile(scope: !2254, file: !1, discriminator: 1)
!2261 = !DILocation(line: 724, column: 9, scope: !760)
!2262 = !DILocation(line: 727, column: 9, scope: !760)
!2263 = !DILocation(line: 728, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !760, file: !1, line: 728, column: 9)
!2265 = !DILocation(line: 728, column: 9, scope: !760)
!2266 = !DILocation(line: 730, column: 9, scope: !768)
!2267 = !DILocation(line: 730, column: 42, scope: !768)
!2268 = !DILocation(line: 734, column: 5, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !770, file: !1, line: 734, column: 5)
!2270 = !DILocation(line: 730, column: 9, scope: !760)
!2271 = !DILocation(line: 731, column: 9, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !766, file: !1, discriminator: 1)
!2273 = !DILocation(line: 731, column: 9, scope: !766)
!2274 = !DILocation(line: 731, column: 9, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !2276, file: !1, discriminator: 3)
!2276 = distinct !DILexicalBlock(scope: !766, file: !1, line: 731, column: 9)
!2277 = !DILocation(line: 734, column: 5, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !770, file: !1, discriminator: 1)
!2279 = !DILocation(line: 734, column: 5, scope: !770)
!2280 = !DILocation(line: 734, column: 5, scope: !2281)
!2281 = !DILexicalBlockFile(scope: !2269, file: !1, discriminator: 3)
!2282 = !DILocation(line: 737, column: 1, scope: !760)
!2283 = !DILocation(line: 701, column: 35, scope: !751)
!2284 = !DILocation(line: 704, column: 15, scope: !751)
!2285 = !DILocation(line: 703, column: 21, scope: !751)
!2286 = !DILocation(line: 705, column: 17, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !751, file: !1, line: 705, column: 9)
!2288 = !DILocation(line: 705, column: 9, scope: !751)
!2289 = !DILocation(line: 707, column: 11, scope: !751)
!2290 = !DILocation(line: 703, column: 15, scope: !751)
!2291 = !DILocation(line: 708, column: 5, scope: !2292)
!2292 = !DILexicalBlockFile(scope: !759, file: !1, discriminator: 1)
!2293 = !DILocation(line: 708, column: 5, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !759, file: !1, line: 708, column: 5)
!2295 = !DILocation(line: 708, column: 5, scope: !759)
!2296 = !DILocation(line: 708, column: 5, scope: !2297)
!2297 = !DILexicalBlockFile(scope: !2294, file: !1, discriminator: 3)
!2298 = !DILocation(line: 710, column: 1, scope: !751)
!2299 = !DILocation(line: 740, column: 32, scope: !771)
!2300 = !DILocation(line: 743, column: 15, scope: !771)
!2301 = !DILocation(line: 742, column: 15, scope: !771)
!2302 = !DILocation(line: 744, column: 17, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !771, file: !1, line: 744, column: 9)
!2304 = !DILocation(line: 744, column: 9, scope: !771)
!2305 = !DILocation(line: 746, column: 14, scope: !771)
!2306 = !DILocation(line: 742, column: 25, scope: !771)
!2307 = !DILocation(line: 747, column: 5, scope: !2308)
!2308 = !DILexicalBlockFile(scope: !777, file: !1, discriminator: 1)
!2309 = !DILocation(line: 747, column: 5, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !777, file: !1, line: 747, column: 5)
!2311 = !DILocation(line: 747, column: 5, scope: !777)
!2312 = !DILocation(line: 747, column: 5, scope: !2313)
!2313 = !DILexicalBlockFile(scope: !2310, file: !1, discriminator: 3)
!2314 = !DILocation(line: 749, column: 1, scope: !771)
!2315 = !DILocation(line: 776, column: 37, scope: !778)
!2316 = !DILocation(line: 776, column: 53, scope: !778)
!2317 = !DILocation(line: 778, column: 12, scope: !778)
!2318 = !DILocation(line: 778, column: 5, scope: !778)
!2319 = !DILocation(line: 790, column: 50, scope: !791)
!2320 = !DILocation(line: 790, column: 66, scope: !791)
!2321 = !DILocation(line: 791, column: 50, scope: !791)
!2322 = !DILocation(line: 792, column: 50, scope: !791)
!2323 = !DILocation(line: 794, column: 15, scope: !791)
!2324 = !DILocation(line: 795, column: 25, scope: !791)
!2325 = !DILocation(line: 795, column: 42, scope: !791)
!2326 = !DILocation(line: 797, column: 15, scope: !791)
!2327 = !DILocation(line: 795, column: 15, scope: !791)
!2328 = !DILocation(line: 798, column: 17, scope: !2329)
!2329 = distinct !DILexicalBlock(scope: !791, file: !1, line: 798, column: 9)
!2330 = !DILocation(line: 798, column: 9, scope: !791)
!2331 = !DILocation(line: 801, column: 19, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !791, file: !1, line: 801, column: 9)
!2333 = !DILocation(line: 801, column: 9, scope: !791)
!2334 = !DILocation(line: 802, column: 20, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2332, file: !1, line: 801, column: 28)
!2336 = !DILocation(line: 803, column: 22, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2335, file: !1, line: 803, column: 13)
!2338 = !DILocation(line: 803, column: 13, scope: !2335)
!2339 = !DILocation(line: 809, column: 18, scope: !806)
!2340 = !DILocation(line: 809, column: 9, scope: !791)
!2341 = !DILocation(line: 810, column: 19, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !806, file: !1, line: 809, column: 27)
!2343 = !DILocation(line: 811, column: 21, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2342, file: !1, line: 811, column: 13)
!2345 = !DILocation(line: 811, column: 13, scope: !2342)
!2346 = !DILocation(line: 814, column: 23, scope: !805)
!2347 = !DILocation(line: 814, column: 14, scope: !806)
!2348 = !DILocation(line: 815, column: 38, scope: !808)
!2349 = !DILocation(line: 815, column: 38, scope: !2350)
!2350 = !DILexicalBlockFile(scope: !2351, file: !1, discriminator: 6)
!2351 = !DILexicalBlockFile(scope: !808, file: !1, discriminator: 5)
!2352 = !DILocation(line: 815, column: 59, scope: !804)
!2353 = !DILocation(line: 815, column: 29, scope: !804)
!2354 = !DILocation(line: 818, column: 20, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !804, file: !1, line: 818, column: 13)
!2356 = !DILocation(line: 818, column: 13, scope: !804)
!2357 = !DILocation(line: 819, column: 13, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2355, file: !1, line: 818, column: 29)
!2359 = !DILocation(line: 823, column: 57, scope: !804)
!2360 = !DILocation(line: 823, column: 19, scope: !804)
!2361 = !DILocation(line: 826, column: 21, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !804, file: !1, line: 826, column: 13)
!2363 = !DILocation(line: 826, column: 13, scope: !804)
!2364 = !DILocation(line: 827, column: 13, scope: !2362)
!2365 = !DILocation(line: 832, column: 9, scope: !791)
!2366 = !DILocation(line: 832, column: 5, scope: !791)
!2367 = !DILocation(line: 834, column: 5, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !813, file: !1, discriminator: 1)
!2369 = !DILocation(line: 834, column: 5, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !813, file: !1, line: 834, column: 5)
!2371 = !DILocation(line: 834, column: 5, scope: !813)
!2372 = !DILocation(line: 834, column: 5, scope: !2373)
!2373 = !DILexicalBlockFile(scope: !2370, file: !1, discriminator: 3)
!2374 = !DILocation(line: 835, column: 5, scope: !2375)
!2375 = !DILexicalBlockFile(scope: !815, file: !1, discriminator: 1)
!2376 = !DILocation(line: 835, column: 5, scope: !818)
!2377 = !DILocation(line: 835, column: 5, scope: !815)
!2378 = !DILocation(line: 835, column: 5, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !817, file: !1, discriminator: 4)
!2380 = !DILocation(line: 835, column: 5, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !817, file: !1, line: 835, column: 5)
!2382 = !DILocation(line: 835, column: 5, scope: !817)
!2383 = !DILocation(line: 835, column: 5, scope: !2384)
!2384 = !DILexicalBlockFile(scope: !2381, file: !1, discriminator: 6)
!2385 = !DILocation(line: 836, column: 5, scope: !2386)
!2386 = !DILexicalBlockFile(scope: !820, file: !1, discriminator: 1)
!2387 = !DILocation(line: 836, column: 5, scope: !823)
!2388 = !DILocation(line: 836, column: 5, scope: !820)
!2389 = !DILocation(line: 836, column: 5, scope: !2390)
!2390 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 4)
!2391 = !DILocation(line: 836, column: 5, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !822, file: !1, line: 836, column: 5)
!2393 = !DILocation(line: 836, column: 5, scope: !822)
!2394 = !DILocation(line: 836, column: 5, scope: !2395)
!2395 = !DILexicalBlockFile(scope: !2392, file: !1, discriminator: 6)
!2396 = !DILocation(line: 838, column: 1, scope: !791)
!2397 = !DILocation(line: 783, column: 39, scope: !784)
!2398 = !DILocation(line: 783, column: 55, scope: !784)
!2399 = !DILocation(line: 783, column: 71, scope: !784)
!2400 = !DILocation(line: 785, column: 12, scope: !784)
!2401 = !DILocation(line: 785, column: 5, scope: !784)
!2402 = !DILocation(line: 888, column: 41, scope: !824)
!2403 = !DILocation(line: 888, column: 57, scope: !824)
!2404 = !DILocation(line: 888, column: 71, scope: !824)
!2405 = !DILocation(line: 889, column: 41, scope: !824)
!2406 = !DILocation(line: 892, column: 34, scope: !836)
!2407 = !DILocation(line: 892, column: 34, scope: !2408)
!2408 = !DILexicalBlockFile(scope: !2409, file: !1, discriminator: 6)
!2409 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 5)
!2410 = !DILocation(line: 892, column: 55, scope: !824)
!2411 = !DILocation(line: 892, column: 25, scope: !824)
!2412 = !DILocation(line: 841, column: 32, scope: !1114, inlinedAt: !2413)
!2413 = distinct !DILocation(line: 895, column: 9, scope: !824)
!2414 = !DILocation(line: 843, column: 19, scope: !1114, inlinedAt: !2413)
!2415 = !DILocation(line: 845, column: 9, scope: !1114, inlinedAt: !2413)
!2416 = !DILocation(line: 843, column: 15, scope: !1114, inlinedAt: !2413)
!2417 = !DILocation(line: 846, column: 11, scope: !2418, inlinedAt: !2413)
!2418 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 846, column: 9)
!2419 = !DILocation(line: 846, column: 9, scope: !1114, inlinedAt: !2413)
!2420 = !DILocation(line: 850, column: 9, scope: !1114, inlinedAt: !2413)
!2421 = !DILocation(line: 851, column: 9, scope: !2422, inlinedAt: !2413)
!2422 = distinct !DILexicalBlock(scope: !1114, file: !1, line: 851, column: 9)
!2423 = !DILocation(line: 851, column: 49, scope: !2422, inlinedAt: !2413)
!2424 = !DILocation(line: 851, column: 9, scope: !1114, inlinedAt: !2413)
!2425 = !DILocation(line: 853, column: 34, scope: !2426, inlinedAt: !2413)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !1, line: 852, column: 13)
!2427 = distinct !DILexicalBlock(scope: !2422, file: !1, line: 851, column: 58)
!2428 = !DILocation(line: 852, column: 13, scope: !2426, inlinedAt: !2413)
!2429 = !DILocation(line: 853, column: 56, scope: !2426, inlinedAt: !2413)
!2430 = !DILocation(line: 852, column: 13, scope: !2427, inlinedAt: !2413)
!2431 = !DILocation(line: 754, column: 25, scope: !1119, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 854, column: 13, scope: !2433, inlinedAt: !2413)
!2433 = distinct !DILexicalBlock(scope: !2426, file: !1, line: 853, column: 62)
!2434 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 756, column: 25, scope: !1119, inlinedAt: !2432)
!2436 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2435)
!2437 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2435)
!2438 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2435)
!2439 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2435)
!2440 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2435)
!2441 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2435)
!2442 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2435)
!2443 = !DILocation(line: 756, column: 15, scope: !1119, inlinedAt: !2432)
!2444 = !DILocation(line: 757, column: 9, scope: !2445, inlinedAt: !2432)
!2445 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 757, column: 9)
!2446 = !DILocation(line: 757, column: 39, scope: !2445, inlinedAt: !2432)
!2447 = !DILocation(line: 757, column: 9, scope: !1119, inlinedAt: !2432)
!2448 = !DILocation(line: 759, column: 9, scope: !2449, inlinedAt: !2432)
!2449 = distinct !DILexicalBlock(scope: !1119, file: !1, line: 759, column: 9)
!2450 = !DILocation(line: 759, column: 39, scope: !2449, inlinedAt: !2432)
!2451 = !DILocation(line: 759, column: 9, scope: !1119, inlinedAt: !2432)
!2452 = !DILocation(line: 760, column: 9, scope: !2449, inlinedAt: !2432)
!2453 = !DILocation(line: 891, column: 15, scope: !824)
!2454 = !DILocation(line: 896, column: 11, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !824, file: !1, line: 896, column: 9)
!2456 = !DILocation(line: 896, column: 9, scope: !824)
!2457 = !DILocation(line: 900, column: 18, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !824, file: !1, line: 900, column: 9)
!2459 = !DILocation(line: 900, column: 9, scope: !824)
!2460 = !DILocation(line: 901, column: 42, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2458, file: !1, line: 900, column: 27)
!2462 = !{!2463, !1495, i64 96}
!2463 = !{!"", !1534, i64 0, !1498, i64 16, !1498, i64 20, !1498, i64 24, !1498, i64 28, !1498, i64 32, !1495, i64 40, !1495, i64 48, !1495, i64 56, !1495, i64 64, !1495, i64 72, !1495, i64 80, !1495, i64 88, !1495, i64 96, !1495, i64 104, !1498, i64 112, !1495, i64 120, !1495, i64 128, !1495, i64 136}
!2464 = !DILocation(line: 902, column: 5, scope: !2461)
!2465 = !DILocation(line: 903, column: 49, scope: !824)
!2466 = !DILocation(line: 903, column: 11, scope: !824)
!2467 = !DILocation(line: 891, column: 19, scope: !824)
!2468 = !DILocation(line: 906, column: 13, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !824, file: !1, line: 906, column: 9)
!2470 = !DILocation(line: 906, column: 9, scope: !824)
!2471 = !DILocation(line: 863, column: 31, scope: !1123, inlinedAt: !2472)
!2472 = distinct !DILocation(line: 907, column: 15, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2469, file: !1, line: 906, column: 22)
!2474 = !DILocation(line: 863, column: 47, scope: !1123, inlinedAt: !2472)
!2475 = !DILocation(line: 863, column: 70, scope: !1123, inlinedAt: !2472)
!2476 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2477)
!2477 = distinct !DILocation(line: 865, column: 25, scope: !1123, inlinedAt: !2472)
!2478 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2477)
!2479 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2477)
!2480 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2477)
!2481 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2477)
!2482 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2477)
!2483 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2477)
!2484 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2477)
!2485 = !DILocation(line: 865, column: 15, scope: !1123, inlinedAt: !2472)
!2486 = !DILocation(line: 868, column: 9, scope: !1123, inlinedAt: !2472)
!2487 = !DILocation(line: 866, column: 15, scope: !1123, inlinedAt: !2472)
!2488 = !DILocation(line: 869, column: 11, scope: !2489, inlinedAt: !2472)
!2489 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 869, column: 9)
!2490 = !DILocation(line: 869, column: 9, scope: !1123, inlinedAt: !2472)
!2491 = !DILocation(line: 754, column: 25, scope: !1119, inlinedAt: !2492)
!2492 = distinct !DILocation(line: 870, column: 9, scope: !2493, inlinedAt: !2472)
!2493 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 869, column: 20)
!2494 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2495)
!2495 = distinct !DILocation(line: 756, column: 25, scope: !1119, inlinedAt: !2492)
!2496 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2495)
!2497 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2495)
!2498 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2495)
!2499 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2495)
!2500 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2495)
!2501 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2495)
!2502 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2495)
!2503 = !DILocation(line: 756, column: 15, scope: !1119, inlinedAt: !2492)
!2504 = !DILocation(line: 757, column: 9, scope: !2445, inlinedAt: !2492)
!2505 = !DILocation(line: 757, column: 39, scope: !2445, inlinedAt: !2492)
!2506 = !DILocation(line: 757, column: 9, scope: !1119, inlinedAt: !2492)
!2507 = !DILocation(line: 759, column: 9, scope: !2449, inlinedAt: !2492)
!2508 = !DILocation(line: 759, column: 39, scope: !2449, inlinedAt: !2492)
!2509 = !DILocation(line: 759, column: 9, scope: !1119, inlinedAt: !2492)
!2510 = !DILocation(line: 760, column: 9, scope: !2449, inlinedAt: !2492)
!2511 = !DILocation(line: 873, column: 5, scope: !2512, inlinedAt: !2472)
!2512 = !DILexicalBlockFile(scope: !1132, file: !1, discriminator: 1)
!2513 = !DILocation(line: 873, column: 5, scope: !2514, inlinedAt: !2472)
!2514 = distinct !DILexicalBlock(scope: !1132, file: !1, line: 873, column: 5)
!2515 = !DILocation(line: 873, column: 5, scope: !1132, inlinedAt: !2472)
!2516 = !DILocation(line: 873, column: 5, scope: !2517, inlinedAt: !2472)
!2517 = !DILexicalBlockFile(scope: !2514, file: !1, discriminator: 3)
!2518 = !DILocation(line: 907, column: 15, scope: !2473)
!2519 = !DILocation(line: 875, column: 14, scope: !2520, inlinedAt: !2472)
!2520 = distinct !DILexicalBlock(scope: !1123, file: !1, line: 875, column: 9)
!2521 = !DILocation(line: 866, column: 19, scope: !1123, inlinedAt: !2472)
!2522 = !DILocation(line: 875, column: 45, scope: !2520, inlinedAt: !2472)
!2523 = !DILocation(line: 875, column: 9, scope: !1123, inlinedAt: !2472)
!2524 = !DILocation(line: 876, column: 22, scope: !2525, inlinedAt: !2472)
!2525 = distinct !DILexicalBlock(scope: !2520, file: !1, line: 875, column: 54)
!2526 = !DILocation(line: 876, column: 9, scope: !2525, inlinedAt: !2472)
!2527 = !DILocation(line: 879, column: 9, scope: !2525, inlinedAt: !2472)
!2528 = !DILocation(line: 882, column: 5, scope: !1123, inlinedAt: !2472)
!2529 = !DILocation(line: 884, column: 5, scope: !1123, inlinedAt: !2472)
!2530 = !DILocation(line: 910, column: 1, scope: !824)
!2531 = !DILocation(line: 1089, column: 32, scope: !840)
!2532 = !DILocation(line: 1090, column: 15, scope: !840)
!2533 = !DILocation(line: 1090, column: 31, scope: !840)
!2534 = !DILocation(line: 1090, column: 58, scope: !840)
!2535 = !DILocation(line: 1092, column: 27, scope: !840)
!2536 = !DILocation(line: 1093, column: 18, scope: !840)
!2537 = !DILocation(line: 1094, column: 29, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !840, file: !1, line: 1094, column: 9)
!2539 = !DILocation(line: 1094, column: 51, scope: !2538)
!2540 = !DILocation(line: 1094, column: 37, scope: !2538)
!2541 = !DILocation(line: 1041, column: 29, scope: !1133, inlinedAt: !2542)
!2542 = distinct !DILocation(line: 1095, column: 20, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2538, file: !1, line: 1094, column: 60)
!2544 = !DILocation(line: 1041, column: 60, scope: !1133, inlinedAt: !2542)
!2545 = !DILocation(line: 1042, column: 29, scope: !1133, inlinedAt: !2542)
!2546 = !DILocation(line: 1051, column: 14, scope: !1133, inlinedAt: !2542)
!2547 = !DILocation(line: 1045, column: 19, scope: !1133, inlinedAt: !2542)
!2548 = !DILocation(line: 1052, column: 16, scope: !2549, inlinedAt: !2542)
!2549 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 1052, column: 9)
!2550 = !DILocation(line: 1052, column: 9, scope: !1133, inlinedAt: !2542)
!2551 = !DILocation(line: 1055, column: 16, scope: !1133, inlinedAt: !2542)
!2552 = !DILocation(line: 1044, column: 15, scope: !1133, inlinedAt: !2542)
!2553 = !DILocation(line: 1056, column: 18, scope: !2554, inlinedAt: !2542)
!2554 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 1056, column: 9)
!2555 = !DILocation(line: 1056, column: 9, scope: !1133, inlinedAt: !2542)
!2556 = !DILocation(line: 1060, column: 9, scope: !2557, inlinedAt: !2542)
!2557 = distinct !DILexicalBlock(scope: !1133, file: !1, line: 1060, column: 9)
!2558 = !DILocation(line: 1060, column: 57, scope: !2557, inlinedAt: !2542)
!2559 = !DILocation(line: 1060, column: 9, scope: !1133, inlinedAt: !2542)
!2560 = !DILocation(line: 1063, column: 19, scope: !1143, inlinedAt: !2542)
!2561 = !DILocation(line: 1063, column: 5, scope: !1144, inlinedAt: !2542)
!2562 = !DILocation(line: 1064, column: 26, scope: !1142, inlinedAt: !2542)
!2563 = !DILocation(line: 1095, column: 20, scope: !2543)
!2564 = !DILocation(line: 1064, column: 19, scope: !1142, inlinedAt: !2542)
!2565 = !DILocation(line: 1065, column: 18, scope: !2566, inlinedAt: !2542)
!2566 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 1065, column: 13)
!2567 = !DILocation(line: 1065, column: 13, scope: !1142, inlinedAt: !2542)
!2568 = !DILocation(line: 1067, column: 20, scope: !1142, inlinedAt: !2542)
!2569 = !DILocation(line: 1068, column: 22, scope: !2570, inlinedAt: !2542)
!2570 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 1068, column: 13)
!2571 = !DILocation(line: 1068, column: 13, scope: !1142, inlinedAt: !2542)
!2572 = !DILocation(line: 1071, column: 37, scope: !2573, inlinedAt: !2542)
!2573 = distinct !DILexicalBlock(scope: !1142, file: !1, line: 1071, column: 13)
!2574 = !DILocation(line: 1071, column: 14, scope: !2573, inlinedAt: !2542)
!2575 = !DILocation(line: 1071, column: 13, scope: !1142, inlinedAt: !2542)
!2576 = !DILocation(line: 1074, column: 9, scope: !1142, inlinedAt: !2542)
!2577 = !DILocation(line: 1063, column: 30, scope: !1143, inlinedAt: !2542)
!2578 = !DILocation(line: 1045, column: 16, scope: !1133, inlinedAt: !2542)
!2579 = !DILocation(line: 1080, column: 19, scope: !1146, inlinedAt: !2542)
!2580 = !DILocation(line: 1080, column: 13, scope: !1146, inlinedAt: !2542)
!2581 = !DILocation(line: 1081, column: 9, scope: !2582, inlinedAt: !2542)
!2582 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 1081, column: 9)
!2583 = !DILocation(line: 1081, column: 9, scope: !1149, inlinedAt: !2542)
!2584 = !DILocation(line: 1081, column: 9, scope: !2585, inlinedAt: !2542)
!2585 = !DILexicalBlockFile(scope: !2582, file: !1, discriminator: 3)
!2586 = !DILocation(line: 1082, column: 17, scope: !2587, inlinedAt: !2542)
!2587 = distinct !DILexicalBlock(scope: !1146, file: !1, line: 1082, column: 13)
!2588 = !DILocation(line: 1098, column: 5, scope: !2589)
!2589 = !DILexicalBlockFile(scope: !2590, file: !1, discriminator: 2)
!2590 = distinct !DILexicalBlock(scope: !847, file: !1, line: 1098, column: 5)
!2591 = !DILocation(line: 1099, column: 5, scope: !840)
!2592 = !DILocation(line: 1220, column: 45, scope: !848)
!2593 = !DILocation(line: 1152, column: 23, scope: !1150, inlinedAt: !2594)
!2594 = distinct !DILocation(line: 1227, column: 9, scope: !848)
!2595 = !DILocation(line: 1156, column: 14, scope: !2596, inlinedAt: !2594)
!2596 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 1156, column: 9)
!2597 = !DILocation(line: 1156, column: 9, scope: !1150, inlinedAt: !2594)
!2598 = !DILocation(line: 1159, column: 14, scope: !2599, inlinedAt: !2594)
!2599 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 1159, column: 5)
!2600 = !DILocation(line: 1154, column: 27, scope: !1150, inlinedAt: !2594)
!2601 = !DILocation(line: 1160, column: 16, scope: !2602, inlinedAt: !2594)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !1, line: 1160, column: 13)
!2603 = distinct !DILexicalBlock(scope: !2604, file: !1, line: 1159, column: 45)
!2604 = distinct !DILexicalBlock(scope: !2599, file: !1, line: 1159, column: 5)
!2605 = !{!2606, !1495, i64 0}
!2606 = !{!"_frozen", !1495, i64 0, !1495, i64 8, !1498, i64 16}
!2607 = !DILocation(line: 1160, column: 21, scope: !2602, inlinedAt: !2594)
!2608 = !DILocation(line: 1160, column: 13, scope: !2603, inlinedAt: !2594)
!2609 = !DILocation(line: 1162, column: 13, scope: !2610, inlinedAt: !2594)
!2610 = distinct !DILexicalBlock(scope: !2603, file: !1, line: 1162, column: 13)
!2611 = !DILocation(line: 1227, column: 9, scope: !848)
!2612 = !DILocation(line: 1162, column: 61, scope: !2610, inlinedAt: !2594)
!2613 = !DILocation(line: 1162, column: 13, scope: !2603, inlinedAt: !2594)
!2614 = !DILocation(line: 1159, column: 41, scope: !2604, inlinedAt: !2594)
!2615 = !DILocation(line: 1222, column: 27, scope: !848)
!2616 = !DILocation(line: 1229, column: 11, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1229, column: 9)
!2618 = !DILocation(line: 1229, column: 9, scope: !848)
!2619 = !DILocation(line: 1231, column: 12, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1231, column: 9)
!2621 = !{!2606, !1495, i64 8}
!2622 = !DILocation(line: 1231, column: 17, scope: !2620)
!2623 = !DILocation(line: 1231, column: 9, scope: !848)
!2624 = !DILocation(line: 1232, column: 22, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2620, file: !1, line: 1231, column: 26)
!2626 = !DILocation(line: 1232, column: 9, scope: !2625)
!2627 = !DILocation(line: 1235, column: 9, scope: !2625)
!2628 = !DILocation(line: 1237, column: 15, scope: !848)
!2629 = !{!2606, !1498, i64 16}
!2630 = !DILocation(line: 1225, column: 9, scope: !848)
!2631 = !DILocation(line: 1238, column: 23, scope: !848)
!2632 = !DILocation(line: 1240, column: 16, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1239, column: 9)
!2634 = !DILocation(line: 1239, column: 9, scope: !848)
!2635 = !DILocation(line: 1241, column: 64, scope: !848)
!2636 = !DILocation(line: 1241, column: 10, scope: !848)
!2637 = !DILocation(line: 1223, column: 15, scope: !848)
!2638 = !DILocation(line: 1242, column: 12, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1242, column: 9)
!2640 = !DILocation(line: 1242, column: 9, scope: !848)
!2641 = !DILocation(line: 1244, column: 10, scope: !2642)
!2642 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1244, column: 9)
!2643 = !DILocation(line: 1244, column: 9, scope: !848)
!2644 = !DILocation(line: 1245, column: 22, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2642, file: !1, line: 1244, column: 28)
!2646 = !DILocation(line: 1245, column: 9, scope: !2645)
!2647 = !DILocation(line: 1248, column: 9, scope: !2645)
!2648 = !DILocation(line: 1250, column: 9, scope: !848)
!2649 = !DILocation(line: 1254, column: 13, scope: !867)
!2650 = !DILocation(line: 1223, column: 20, scope: !848)
!2651 = !DILocation(line: 1255, column: 15, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1255, column: 13)
!2653 = !DILocation(line: 1255, column: 13, scope: !867)
!2654 = !DILocation(line: 1257, column: 13, scope: !867)
!2655 = !DILocation(line: 1223, column: 24, scope: !848)
!2656 = !DILocation(line: 1258, column: 13, scope: !867)
!2657 = !DILocation(line: 1252, column: 19, scope: !867)
!2658 = !DILocation(line: 1259, column: 15, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1259, column: 13)
!2660 = !DILocation(line: 1259, column: 13, scope: !867)
!2661 = !DILocation(line: 1262, column: 15, scope: !867)
!2662 = !DILocation(line: 1253, column: 13, scope: !867)
!2663 = !DILocation(line: 1263, column: 9, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !871, file: !1, discriminator: 1)
!2665 = !DILocation(line: 1263, column: 9, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !871, file: !1, line: 1263, column: 9)
!2667 = !DILocation(line: 1263, column: 9, scope: !871)
!2668 = !DILocation(line: 1263, column: 9, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2666, file: !1, discriminator: 3)
!2670 = !DILocation(line: 1264, column: 17, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1264, column: 13)
!2672 = !DILocation(line: 841, column: 32, scope: !1114, inlinedAt: !2673)
!2673 = distinct !DILocation(line: 1267, column: 9, scope: !848)
!2674 = !DILocation(line: 843, column: 19, scope: !1114, inlinedAt: !2673)
!2675 = !DILocation(line: 845, column: 9, scope: !1114, inlinedAt: !2673)
!2676 = !DILocation(line: 843, column: 15, scope: !1114, inlinedAt: !2673)
!2677 = !DILocation(line: 846, column: 11, scope: !2418, inlinedAt: !2673)
!2678 = !DILocation(line: 846, column: 9, scope: !1114, inlinedAt: !2673)
!2679 = !DILocation(line: 850, column: 9, scope: !1114, inlinedAt: !2673)
!2680 = !DILocation(line: 851, column: 9, scope: !2422, inlinedAt: !2673)
!2681 = !DILocation(line: 851, column: 49, scope: !2422, inlinedAt: !2673)
!2682 = !DILocation(line: 851, column: 9, scope: !1114, inlinedAt: !2673)
!2683 = !DILocation(line: 853, column: 34, scope: !2426, inlinedAt: !2673)
!2684 = !DILocation(line: 852, column: 13, scope: !2426, inlinedAt: !2673)
!2685 = !DILocation(line: 853, column: 56, scope: !2426, inlinedAt: !2673)
!2686 = !DILocation(line: 852, column: 13, scope: !2427, inlinedAt: !2673)
!2687 = !DILocation(line: 754, column: 25, scope: !1119, inlinedAt: !2688)
!2688 = distinct !DILocation(line: 854, column: 13, scope: !2433, inlinedAt: !2673)
!2689 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 756, column: 25, scope: !1119, inlinedAt: !2688)
!2691 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2690)
!2692 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2690)
!2693 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2690)
!2694 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2690)
!2695 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2690)
!2696 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2690)
!2697 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2690)
!2698 = !DILocation(line: 756, column: 15, scope: !1119, inlinedAt: !2688)
!2699 = !DILocation(line: 757, column: 9, scope: !2445, inlinedAt: !2688)
!2700 = !DILocation(line: 757, column: 39, scope: !2445, inlinedAt: !2688)
!2701 = !DILocation(line: 757, column: 9, scope: !1119, inlinedAt: !2688)
!2702 = !DILocation(line: 759, column: 9, scope: !2449, inlinedAt: !2688)
!2703 = !DILocation(line: 759, column: 39, scope: !2449, inlinedAt: !2688)
!2704 = !DILocation(line: 759, column: 9, scope: !1119, inlinedAt: !2688)
!2705 = !DILocation(line: 760, column: 9, scope: !2449, inlinedAt: !2688)
!2706 = !DILocation(line: 1268, column: 11, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !848, file: !1, line: 1268, column: 9)
!2708 = !DILocation(line: 1268, column: 9, scope: !848)
!2709 = !DILocation(line: 863, column: 31, scope: !1123, inlinedAt: !2710)
!2710 = distinct !DILocation(line: 1271, column: 9, scope: !848)
!2711 = !DILocation(line: 863, column: 47, scope: !1123, inlinedAt: !2710)
!2712 = !DILocation(line: 863, column: 70, scope: !1123, inlinedAt: !2710)
!2713 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 865, column: 25, scope: !1123, inlinedAt: !2710)
!2715 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2714)
!2716 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2714)
!2717 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2714)
!2718 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2714)
!2719 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2714)
!2720 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2714)
!2721 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2714)
!2722 = !DILocation(line: 865, column: 15, scope: !1123, inlinedAt: !2710)
!2723 = !DILocation(line: 868, column: 9, scope: !1123, inlinedAt: !2710)
!2724 = !DILocation(line: 866, column: 15, scope: !1123, inlinedAt: !2710)
!2725 = !DILocation(line: 869, column: 11, scope: !2489, inlinedAt: !2710)
!2726 = !DILocation(line: 869, column: 9, scope: !1123, inlinedAt: !2710)
!2727 = !DILocation(line: 754, column: 25, scope: !1119, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 870, column: 9, scope: !2493, inlinedAt: !2710)
!2729 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 756, column: 25, scope: !1119, inlinedAt: !2728)
!2731 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2730)
!2732 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2730)
!2733 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2730)
!2734 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2730)
!2735 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2730)
!2736 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2730)
!2737 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2730)
!2738 = !DILocation(line: 756, column: 15, scope: !1119, inlinedAt: !2728)
!2739 = !DILocation(line: 757, column: 9, scope: !2445, inlinedAt: !2728)
!2740 = !DILocation(line: 757, column: 39, scope: !2445, inlinedAt: !2728)
!2741 = !DILocation(line: 757, column: 9, scope: !1119, inlinedAt: !2728)
!2742 = !DILocation(line: 759, column: 9, scope: !2449, inlinedAt: !2728)
!2743 = !DILocation(line: 759, column: 39, scope: !2449, inlinedAt: !2728)
!2744 = !DILocation(line: 759, column: 9, scope: !1119, inlinedAt: !2728)
!2745 = !DILocation(line: 760, column: 9, scope: !2449, inlinedAt: !2728)
!2746 = !DILocation(line: 873, column: 5, scope: !2512, inlinedAt: !2710)
!2747 = !DILocation(line: 873, column: 5, scope: !2514, inlinedAt: !2710)
!2748 = !DILocation(line: 873, column: 5, scope: !1132, inlinedAt: !2710)
!2749 = !DILocation(line: 873, column: 5, scope: !2517, inlinedAt: !2710)
!2750 = !DILocation(line: 1271, column: 9, scope: !848)
!2751 = !DILocation(line: 875, column: 14, scope: !2520, inlinedAt: !2710)
!2752 = !DILocation(line: 866, column: 19, scope: !1123, inlinedAt: !2710)
!2753 = !DILocation(line: 875, column: 45, scope: !2520, inlinedAt: !2710)
!2754 = !DILocation(line: 875, column: 9, scope: !1123, inlinedAt: !2710)
!2755 = !DILocation(line: 876, column: 22, scope: !2525, inlinedAt: !2710)
!2756 = !DILocation(line: 876, column: 9, scope: !2525, inlinedAt: !2710)
!2757 = !DILocation(line: 879, column: 9, scope: !2525, inlinedAt: !2710)
!2758 = !DILocation(line: 882, column: 5, scope: !1123, inlinedAt: !2710)
!2759 = !DILocation(line: 1274, column: 5, scope: !2760)
!2760 = !DILexicalBlockFile(scope: !873, file: !1, discriminator: 1)
!2761 = !DILocation(line: 1274, column: 5, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !873, file: !1, line: 1274, column: 5)
!2763 = !DILocation(line: 1274, column: 5, scope: !873)
!2764 = !DILocation(line: 1274, column: 5, scope: !2765)
!2765 = !DILexicalBlockFile(scope: !2762, file: !1, discriminator: 3)
!2766 = !DILocation(line: 1275, column: 5, scope: !2767)
!2767 = !DILexicalBlockFile(scope: !875, file: !1, discriminator: 1)
!2768 = !DILocation(line: 1275, column: 5, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !875, file: !1, line: 1275, column: 5)
!2770 = !DILocation(line: 1275, column: 5, scope: !875)
!2771 = !DILocation(line: 1275, column: 5, scope: !2772)
!2772 = !DILexicalBlockFile(scope: !2769, file: !1, discriminator: 3)
!2773 = !DILocation(line: 1278, column: 5, scope: !2774)
!2774 = !DILexicalBlockFile(scope: !877, file: !1, discriminator: 1)
!2775 = !DILocation(line: 1278, column: 5, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !877, file: !1, line: 1278, column: 5)
!2777 = !DILocation(line: 1278, column: 5, scope: !877)
!2778 = !DILocation(line: 1278, column: 5, scope: !2779)
!2779 = !DILexicalBlockFile(scope: !2776, file: !1, discriminator: 3)
!2780 = !DILocation(line: 1280, column: 1, scope: !848)
!2781 = !DILocation(line: 1283, column: 41, scope: !878)
!2782 = !DILocation(line: 1287, column: 15, scope: !878)
!2783 = !DILocation(line: 1285, column: 15, scope: !878)
!2784 = !DILocation(line: 1288, column: 17, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !878, file: !1, line: 1288, column: 9)
!2786 = !DILocation(line: 1288, column: 9, scope: !878)
!2787 = !DILocation(line: 1290, column: 11, scope: !878)
!2788 = !DILocation(line: 1286, column: 9, scope: !878)
!2789 = !DILocation(line: 1291, column: 5, scope: !2790)
!2790 = !DILexicalBlockFile(scope: !886, file: !1, discriminator: 1)
!2791 = !DILocation(line: 1291, column: 5, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !886, file: !1, line: 1291, column: 5)
!2793 = !DILocation(line: 1291, column: 5, scope: !886)
!2794 = !DILocation(line: 1291, column: 5, scope: !2795)
!2795 = !DILexicalBlockFile(scope: !2792, file: !1, discriminator: 3)
!2796 = !DILocation(line: 1293, column: 1, scope: !878)
!2797 = !DILocation(line: 1780, column: 27, scope: !1045)
!2798 = !DILocation(line: 1785, column: 15, scope: !1045)
!2799 = !DILocation(line: 1786, column: 15, scope: !1045)
!2800 = !DILocation(line: 1787, column: 15, scope: !1045)
!2801 = !DILocation(line: 1788, column: 15, scope: !1045)
!2802 = !DILocation(line: 1789, column: 15, scope: !1045)
!2803 = !DILocation(line: 1792, column: 9, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1792, column: 9)
!2805 = !DILocation(line: 1792, column: 20, scope: !2804)
!2806 = !DILocation(line: 1792, column: 9, scope: !1045)
!2807 = !DILocation(line: 1793, column: 22, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2804, file: !1, line: 1792, column: 29)
!2809 = !DILocation(line: 1793, column: 20, scope: !2808)
!2810 = !DILocation(line: 1794, column: 24, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 1794, column: 13)
!2812 = !DILocation(line: 1794, column: 13, scope: !2808)
!2813 = !DILocation(line: 1796, column: 24, scope: !2808)
!2814 = !DILocation(line: 1796, column: 22, scope: !2808)
!2815 = !DILocation(line: 1797, column: 26, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 1797, column: 13)
!2817 = !DILocation(line: 1797, column: 13, scope: !2808)
!2818 = !DILocation(line: 1799, column: 22, scope: !2808)
!2819 = !DILocation(line: 1799, column: 20, scope: !2808)
!2820 = !DILocation(line: 1800, column: 24, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 1800, column: 13)
!2822 = !DILocation(line: 1800, column: 13, scope: !2808)
!2823 = !DILocation(line: 1805, column: 15, scope: !1045)
!2824 = !DILocation(line: 1806, column: 17, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1806, column: 9)
!2826 = !DILocation(line: 1806, column: 9, scope: !1045)
!2827 = !DILocation(line: 1807, column: 9, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 1806, column: 26)
!2829 = !DILocation(line: 1808, column: 46, scope: !2828)
!2830 = !DILocation(line: 1808, column: 20, scope: !2828)
!2831 = !DILocation(line: 1809, column: 22, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2828, file: !1, line: 1809, column: 13)
!2833 = !DILocation(line: 1809, column: 13, scope: !2828)
!2834 = !DILocation(line: 1730, column: 40, scope: !1024, inlinedAt: !2835)
!2835 = distinct !DILocation(line: 1814, column: 20, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2825, file: !1, line: 1812, column: 10)
!2837 = !DILocation(line: 1730, column: 56, scope: !1024, inlinedAt: !2835)
!2838 = !DILocation(line: 1730, column: 75, scope: !1024, inlinedAt: !2835)
!2839 = !DILocation(line: 1731, column: 38, scope: !1024, inlinedAt: !2835)
!2840 = !DILocation(line: 1731, column: 52, scope: !1024, inlinedAt: !2835)
!2841 = !DILocation(line: 1734, column: 15, scope: !1024, inlinedAt: !2835)
!2842 = !DILocation(line: 1733, column: 15, scope: !1024, inlinedAt: !2835)
!2843 = !DILocation(line: 1735, column: 17, scope: !2844, inlinedAt: !2835)
!2844 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 1735, column: 9)
!2845 = !DILocation(line: 1735, column: 9, scope: !1024, inlinedAt: !2835)
!2846 = !DILocation(line: 1737, column: 11, scope: !1024, inlinedAt: !2835)
!2847 = !DILocation(line: 1733, column: 25, scope: !1024, inlinedAt: !2835)
!2848 = !DILocation(line: 1739, column: 5, scope: !2849, inlinedAt: !2835)
!2849 = !DILexicalBlockFile(scope: !1036, file: !1, discriminator: 1)
!2850 = !DILocation(line: 1739, column: 5, scope: !2851, inlinedAt: !2835)
!2851 = distinct !DILexicalBlock(scope: !1036, file: !1, line: 1739, column: 5)
!2852 = !DILocation(line: 1739, column: 5, scope: !1036, inlinedAt: !2835)
!2853 = !DILocation(line: 1739, column: 5, scope: !2854, inlinedAt: !2835)
!2854 = !DILexicalBlockFile(scope: !2851, file: !1, discriminator: 3)
!2855 = !DILocation(line: 1814, column: 20, scope: !2836)
!2856 = !DILocation(line: 1816, column: 22, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2836, file: !1, line: 1816, column: 13)
!2858 = !DILocation(line: 1816, column: 13, scope: !2836)
!2859 = !DILocation(line: 1818, column: 41, scope: !2836)
!2860 = !DILocation(line: 1818, column: 19, scope: !2836)
!2861 = !DILocation(line: 1819, column: 21, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2836, file: !1, line: 1819, column: 13)
!2863 = !DILocation(line: 1819, column: 13, scope: !2836)
!2864 = !DILocation(line: 1824, column: 9, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1824, column: 9)
!2866 = !DILocation(line: 1825, column: 45, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2865, file: !1, line: 1824, column: 33)
!2868 = !DILocation(line: 1824, column: 9, scope: !1045)
!2869 = !DILocation(line: 1825, column: 18, scope: !2867)
!2870 = !DILocation(line: 1826, column: 20, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2867, file: !1, line: 1826, column: 13)
!2872 = !DILocation(line: 1826, column: 13, scope: !2867)
!2873 = !DILocation(line: 1827, column: 29, scope: !2871)
!2874 = !DILocation(line: 1827, column: 45, scope: !2871)
!2875 = !DILocation(line: 1827, column: 13, scope: !2871)
!2876 = !DILocation(line: 1831, column: 9, scope: !1045)
!2877 = !DILocation(line: 1830, column: 18, scope: !2865)
!2878 = !DILocation(line: 1831, column: 16, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1831, column: 9)
!2880 = !DILocation(line: 1838, column: 40, scope: !1045)
!2881 = !DILocation(line: 1837, column: 9, scope: !1045)
!2882 = !DILocation(line: 1839, column: 11, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1839, column: 9)
!2884 = !DILocation(line: 1839, column: 9, scope: !1045)
!2885 = !DILocation(line: 1841, column: 5, scope: !2886)
!2886 = !DILexicalBlockFile(scope: !1054, file: !1, discriminator: 1)
!2887 = !DILocation(line: 1841, column: 5, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !1054, file: !1, line: 1841, column: 5)
!2889 = !DILocation(line: 1841, column: 5, scope: !1054)
!2890 = !DILocation(line: 1841, column: 5, scope: !2891)
!2891 = !DILexicalBlockFile(scope: !2888, file: !1, discriminator: 3)
!2892 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !2893)
!2893 = distinct !DILocation(line: 1843, column: 15, scope: !1045)
!2894 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !2893)
!2895 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !2893)
!2896 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !2893)
!2897 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !2893)
!2898 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !2893)
!2899 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !2893)
!2900 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !2893)
!2901 = !DILocation(line: 1844, column: 9, scope: !1045)
!2902 = !DILocation(line: 1845, column: 11, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !1045, file: !1, line: 1845, column: 9)
!2904 = !DILocation(line: 1845, column: 9, scope: !1045)
!2905 = !DILocation(line: 1846, column: 9, scope: !2903)
!2906 = !DILocation(line: 1849, column: 5, scope: !2907)
!2907 = !DILexicalBlockFile(scope: !1056, file: !1, discriminator: 1)
!2908 = !DILocation(line: 1849, column: 5, scope: !1059)
!2909 = !DILocation(line: 1849, column: 5, scope: !1056)
!2910 = !DILocation(line: 1849, column: 5, scope: !2911)
!2911 = !DILexicalBlockFile(scope: !1058, file: !1, discriminator: 4)
!2912 = !DILocation(line: 1849, column: 5, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !1058, file: !1, line: 1849, column: 5)
!2914 = !DILocation(line: 1849, column: 5, scope: !1058)
!2915 = !DILocation(line: 1849, column: 5, scope: !2916)
!2916 = !DILexicalBlockFile(scope: !2913, file: !1, discriminator: 6)
!2917 = !DILocation(line: 1850, column: 5, scope: !2918)
!2918 = !DILexicalBlockFile(scope: !1061, file: !1, discriminator: 1)
!2919 = !DILocation(line: 1850, column: 5, scope: !1064)
!2920 = !DILocation(line: 1850, column: 5, scope: !1061)
!2921 = !DILocation(line: 1850, column: 5, scope: !2922)
!2922 = !DILexicalBlockFile(scope: !1063, file: !1, discriminator: 4)
!2923 = !DILocation(line: 1850, column: 5, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 1850, column: 5)
!2925 = !DILocation(line: 1850, column: 5, scope: !1063)
!2926 = !DILocation(line: 1850, column: 5, scope: !2927)
!2927 = !DILexicalBlockFile(scope: !2924, file: !1, discriminator: 6)
!2928 = !DILocation(line: 1851, column: 5, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !1066, file: !1, discriminator: 1)
!2930 = !DILocation(line: 1851, column: 5, scope: !1069)
!2931 = !DILocation(line: 1851, column: 5, scope: !1066)
!2932 = !DILocation(line: 1851, column: 5, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !1068, file: !1, discriminator: 4)
!2934 = !DILocation(line: 1851, column: 5, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !1068, file: !1, line: 1851, column: 5)
!2936 = !DILocation(line: 1851, column: 5, scope: !1068)
!2937 = !DILocation(line: 1851, column: 5, scope: !2938)
!2938 = !DILexicalBlockFile(scope: !2935, file: !1, discriminator: 6)
!2939 = !DILocation(line: 1854, column: 1, scope: !1045)
!2940 = !DILocation(line: 1323, column: 42, scope: !894)
!2941 = !DILocation(line: 1300, column: 35, scope: !887, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 1325, column: 12, scope: !894)
!2943 = !DILocation(line: 1305, column: 13, scope: !887, inlinedAt: !2942)
!2944 = !DILocation(line: 1302, column: 15, scope: !887, inlinedAt: !2942)
!2945 = !DILocation(line: 1306, column: 15, scope: !1599, inlinedAt: !2942)
!2946 = !DILocation(line: 1306, column: 9, scope: !887, inlinedAt: !2942)
!2947 = !DILocation(line: 1308, column: 14, scope: !887, inlinedAt: !2942)
!2948 = !DILocation(line: 1303, column: 15, scope: !887, inlinedAt: !2942)
!2949 = !DILocation(line: 1309, column: 5, scope: !1604, inlinedAt: !2942)
!2950 = !DILocation(line: 1309, column: 5, scope: !1606, inlinedAt: !2942)
!2951 = !DILocation(line: 1309, column: 5, scope: !893, inlinedAt: !2942)
!2952 = !DILocation(line: 1309, column: 5, scope: !1609, inlinedAt: !2942)
!2953 = !DILocation(line: 1325, column: 12, scope: !894)
!2954 = !DILocation(line: 1325, column: 5, scope: !894)
!2955 = !DILocation(line: 1392, column: 44, scope: !897)
!2956 = !DILocation(line: 1392, column: 60, scope: !897)
!2957 = !DILocation(line: 1393, column: 44, scope: !897)
!2958 = !DILocation(line: 1393, column: 62, scope: !897)
!2959 = !DILocation(line: 1394, column: 38, scope: !897)
!2960 = !DILocation(line: 1406, column: 15, scope: !897)
!2961 = !DILocation(line: 1407, column: 15, scope: !897)
!2962 = !DILocation(line: 1408, column: 15, scope: !897)
!2963 = !DILocation(line: 1409, column: 15, scope: !897)
!2964 = !DILocation(line: 1410, column: 15, scope: !897)
!2965 = !DILocation(line: 1411, column: 15, scope: !897)
!2966 = !DILocation(line: 1412, column: 15, scope: !897)
!2967 = !DILocation(line: 1413, column: 34, scope: !915)
!2968 = !DILocation(line: 1413, column: 34, scope: !2969)
!2969 = !DILexicalBlockFile(scope: !2970, file: !1, discriminator: 6)
!2970 = !DILexicalBlockFile(scope: !915, file: !1, discriminator: 5)
!2971 = !DILocation(line: 1413, column: 55, scope: !897)
!2972 = !DILocation(line: 1413, column: 25, scope: !897)
!2973 = !DILocation(line: 1418, column: 23, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1418, column: 9)
!2975 = !DILocation(line: 1418, column: 9, scope: !897)
!2976 = !DILocation(line: 1419, column: 19, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 1418, column: 32)
!2978 = !DILocation(line: 1420, column: 21, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2977, file: !1, line: 1420, column: 13)
!2980 = !DILocation(line: 1420, column: 13, scope: !2977)
!2981 = !DILocation(line: 1427, column: 19, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !1, line: 1427, column: 13)
!2983 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 1424, column: 10)
!2984 = !DILocation(line: 1427, column: 23, scope: !2982)
!2985 = !DILocation(line: 1427, column: 27, scope: !2986)
!2986 = !DILexicalBlockFile(scope: !2982, file: !1, discriminator: 1)
!2987 = !DILocation(line: 1427, column: 13, scope: !2983)
!2988 = !DILocation(line: 1428, column: 29, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2982, file: !1, line: 1427, column: 56)
!2990 = !DILocation(line: 1428, column: 13, scope: !2989)
!2991 = !DILocation(line: 1429, column: 13, scope: !2989)
!2992 = !DILocation(line: 1432, column: 9, scope: !2983)
!2993 = !DILocation(line: 1435, column: 24, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1435, column: 9)
!2995 = !DILocation(line: 1435, column: 9, scope: !897)
!2996 = !DILocation(line: 1436, column: 20, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2994, file: !1, line: 1435, column: 33)
!2998 = !DILocation(line: 1437, column: 22, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2997, file: !1, line: 1437, column: 13)
!3000 = !DILocation(line: 1437, column: 13, scope: !2997)
!3001 = !DILocation(line: 1443, column: 9, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !2994, file: !1, line: 1441, column: 10)
!3003 = !DILocation(line: 1445, column: 14, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1445, column: 9)
!3005 = !DILocation(line: 1445, column: 9, scope: !897)
!3006 = !DILocation(line: 1446, column: 25, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3004, file: !1, line: 1445, column: 23)
!3008 = !DILocation(line: 1446, column: 9, scope: !3007)
!3009 = !DILocation(line: 1447, column: 9, scope: !3007)
!3010 = !DILocation(line: 1453, column: 10, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1453, column: 9)
!3012 = !DILocation(line: 1453, column: 9, scope: !897)
!3013 = !DILocation(line: 1454, column: 25, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !1, line: 1453, column: 33)
!3015 = !DILocation(line: 1454, column: 9, scope: !3014)
!3016 = !DILocation(line: 1455, column: 9, scope: !3014)
!3017 = !DILocation(line: 1457, column: 14, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3011, file: !1, line: 1457, column: 14)
!3019 = !DILocation(line: 1457, column: 14, scope: !3020)
!3020 = !DILexicalBlockFile(scope: !3018, file: !1, discriminator: 2)
!3021 = !DILocation(line: 1457, column: 36, scope: !3022)
!3022 = !DILexicalBlockFile(scope: !3023, file: !1, discriminator: 4)
!3023 = !DILexicalBlockFile(scope: !3018, file: !1, discriminator: 3)
!3024 = !DILocation(line: 1457, column: 14, scope: !3011)
!3025 = !DILocation(line: 1460, column: 15, scope: !926)
!3026 = !DILocation(line: 1460, column: 9, scope: !897)
!3027 = !DILocation(line: 1461, column: 25, scope: !3028)
!3028 = distinct !DILexicalBlock(scope: !926, file: !1, line: 1460, column: 20)
!3029 = !DILocation(line: 1461, column: 9, scope: !3028)
!3030 = !DILocation(line: 1462, column: 9, scope: !3028)
!3031 = !DILocation(line: 1464, column: 20, scope: !925)
!3032 = !DILocation(line: 1464, column: 14, scope: !926)
!3033 = !DILocation(line: 1465, column: 19, scope: !924)
!3034 = !DILocation(line: 1466, column: 21, scope: !923)
!3035 = !DILocation(line: 1466, column: 40, scope: !923)
!3036 = !DILocation(line: 1466, column: 29, scope: !923)
!3037 = !DILocation(line: 1467, column: 13, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !923, file: !1, line: 1466, column: 52)
!3039 = !DILocation(line: 1468, column: 18, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3038, file: !1, line: 1468, column: 17)
!3041 = !DILocation(line: 1468, column: 17, scope: !3038)
!3042 = !DILocation(line: 1469, column: 33, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3040, file: !1, line: 1468, column: 44)
!3044 = !DILocation(line: 1469, column: 17, scope: !3043)
!3045 = !DILocation(line: 1470, column: 17, scope: !3043)
!3046 = !DILocation(line: 1474, column: 23, scope: !922)
!3047 = !DILocation(line: 1475, column: 25, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !922, file: !1, line: 1475, column: 17)
!3049 = !DILocation(line: 1475, column: 17, scope: !922)
!3050 = !DILocation(line: 1476, column: 33, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3048, file: !1, line: 1475, column: 34)
!3052 = !DILocation(line: 1476, column: 17, scope: !3051)
!3053 = !DILocation(line: 1477, column: 17, scope: !3051)
!3054 = !DILocation(line: 1479, column: 23, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3048, file: !1, line: 1479, column: 22)
!3056 = !DILocation(line: 1479, column: 22, scope: !3048)
!3057 = !DILocation(line: 1480, column: 33, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !1, line: 1479, column: 49)
!3059 = !DILocation(line: 1480, column: 17, scope: !3058)
!3060 = !DILocation(line: 1481, column: 13, scope: !3058)
!3061 = !DILocation(line: 1482, column: 13, scope: !922)
!3062 = !DILocation(line: 1484, column: 17, scope: !921)
!3063 = !DILocation(line: 1484, column: 60, scope: !921)
!3064 = !DILocation(line: 1484, column: 17, scope: !922)
!3065 = !DILocation(line: 1485, column: 27, scope: !920)
!3066 = !DILocation(line: 1486, column: 42, scope: !920)
!3067 = !DILocation(line: 1486, column: 27, scope: !920)
!3068 = !DILocation(line: 1487, column: 34, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !920, file: !1, line: 1487, column: 21)
!3070 = !DILocation(line: 1487, column: 21, scope: !920)
!3071 = !DILocation(line: 1490, column: 29, scope: !920)
!3072 = !DILocation(line: 1491, column: 17, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !929, file: !1, discriminator: 1)
!3074 = !DILocation(line: 1491, column: 17, scope: !3075)
!3075 = distinct !DILexicalBlock(scope: !929, file: !1, line: 1491, column: 17)
!3076 = !DILocation(line: 1491, column: 17, scope: !929)
!3077 = !DILocation(line: 1491, column: 17, scope: !3078)
!3078 = !DILexicalBlockFile(scope: !3075, file: !1, discriminator: 3)
!3079 = !DILocation(line: 1492, column: 31, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !920, file: !1, line: 1492, column: 21)
!3081 = !DILocation(line: 1492, column: 21, scope: !920)
!3082 = !DILocation(line: 1495, column: 27, scope: !920)
!3083 = !DILocation(line: 1496, column: 17, scope: !920)
!3084 = !DILocation(line: 1497, column: 17, scope: !3085)
!3085 = !DILexicalBlockFile(scope: !931, file: !1, discriminator: 1)
!3086 = !DILocation(line: 1497, column: 17, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !931, file: !1, line: 1497, column: 17)
!3088 = !DILocation(line: 1497, column: 17, scope: !931)
!3089 = !DILocation(line: 1497, column: 17, scope: !3090)
!3090 = !DILexicalBlockFile(scope: !3087, file: !1, discriminator: 3)
!3091 = !DILocation(line: 1501, column: 36, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !924, file: !1, line: 1501, column: 13)
!3093 = !DILocation(line: 1501, column: 13, scope: !3092)
!3094 = !DILocation(line: 1501, column: 54, scope: !3092)
!3095 = !DILocation(line: 1501, column: 13, scope: !924)
!3096 = !DILocation(line: 1502, column: 26, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3092, file: !1, line: 1501, column: 63)
!3098 = !DILocation(line: 1502, column: 13, scope: !3097)
!3099 = !DILocation(line: 1505, column: 13, scope: !3097)
!3100 = !DILocation(line: 1509, column: 13, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !1, line: 1509, column: 13)
!3102 = distinct !DILexicalBlock(scope: !925, file: !1, line: 1508, column: 10)
!3103 = !{!3104, !1499, i64 16}
!3104 = !{!"", !1534, i64 0, !1499, i64 16, !1499, i64 24, !3105, i64 32, !1495, i64 40}
!3105 = !{!"", !1498, i64 0, !1498, i64 0, !1498, i64 0, !1498, i64 0, !1498, i64 0, !1498, i64 1}
!3106 = !DILocation(line: 1509, column: 40, scope: !3101)
!3107 = !DILocation(line: 1509, column: 13, scope: !3102)
!3108 = !DILocation(line: 1510, column: 29, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3101, file: !1, line: 1509, column: 46)
!3110 = !DILocation(line: 1510, column: 13, scope: !3109)
!3111 = !DILocation(line: 1511, column: 13, scope: !3109)
!3112 = !DILocation(line: 1518, column: 31, scope: !933)
!3113 = !DILocation(line: 1518, column: 20, scope: !933)
!3114 = !DILocation(line: 1519, column: 19, scope: !933)
!3115 = !DILocation(line: 1520, column: 13, scope: !933)
!3116 = !DILocation(line: 1522, column: 37, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !1, line: 1522, column: 9)
!3118 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1522, column: 9)
!3119 = !DILocation(line: 1522, column: 9, scope: !3118)
!3120 = !DILocation(line: 1523, column: 24, scope: !3121)
!3121 = distinct !DILexicalBlock(scope: !3117, file: !1, line: 1522, column: 61)
!3122 = !DILocation(line: 1524, column: 17, scope: !3121)
!3123 = !DILocation(line: 1528, column: 33, scope: !3124)
!3124 = distinct !DILexicalBlock(scope: !3125, file: !1, line: 1527, column: 38)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !1, line: 1527, column: 22)
!3126 = distinct !DILexicalBlock(scope: !3121, file: !1, line: 1524, column: 17)
!3127 = !DILocation(line: 1528, column: 17, scope: !3124)
!3128 = !DILocation(line: 1531, column: 17, scope: !3124)
!3129 = !DILocation(line: 1522, column: 55, scope: !3117)
!3130 = !DILocation(line: 1535, column: 16, scope: !933)
!3131 = !DILocation(line: 1536, column: 18, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !933, file: !1, line: 1536, column: 13)
!3133 = !DILocation(line: 1536, column: 13, scope: !933)
!3134 = !DILocation(line: 1539, column: 13, scope: !939)
!3135 = !DILocation(line: 1539, column: 40, scope: !939)
!3136 = !DILocation(line: 1539, column: 13, scope: !933)
!3137 = !DILocation(line: 1540, column: 38, scope: !938)
!3138 = !DILocation(line: 1542, column: 28, scope: !938)
!3139 = !DILocation(line: 1540, column: 23, scope: !938)
!3140 = !DILocation(line: 1543, column: 19, scope: !938)
!3141 = !DILocation(line: 1544, column: 13, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !942, file: !1, discriminator: 1)
!3143 = !DILocation(line: 1544, column: 13, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !942, file: !1, line: 1544, column: 13)
!3145 = !DILocation(line: 1544, column: 13, scope: !942)
!3146 = !DILocation(line: 1544, column: 13, scope: !3147)
!3147 = !DILexicalBlockFile(scope: !3144, file: !1, discriminator: 3)
!3148 = !DILocation(line: 1545, column: 30, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !938, file: !1, line: 1545, column: 17)
!3150 = !DILocation(line: 1545, column: 45, scope: !3149)
!3151 = !DILocation(line: 1545, column: 38, scope: !3149)
!3152 = !DILocation(line: 1549, column: 24, scope: !938)
!3153 = !DILocation(line: 1550, column: 13, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !944, file: !1, discriminator: 1)
!3155 = !DILocation(line: 1550, column: 13, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !944, file: !1, line: 1550, column: 13)
!3157 = !DILocation(line: 1550, column: 13, scope: !944)
!3158 = !DILocation(line: 1550, column: 13, scope: !3159)
!3159 = !DILexicalBlockFile(scope: !3156, file: !1, discriminator: 3)
!3160 = !DILocation(line: 1551, column: 26, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !938, file: !1, line: 1551, column: 17)
!3162 = !DILocation(line: 1514, column: 9, scope: !3102)
!3163 = !DILocation(line: 1561, column: 9, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !934, file: !1, line: 1559, column: 10)
!3165 = !DILocation(line: 1565, column: 5, scope: !897)
!3166 = !DILocation(line: 1568, column: 9, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1568, column: 9)
!3168 = !DILocation(line: 1568, column: 9, scope: !897)
!3169 = !DILocation(line: 1569, column: 27, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3167, file: !1, line: 1568, column: 32)
!3171 = !DILocation(line: 1571, column: 25, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1571, column: 9)
!3173 = !DILocation(line: 1571, column: 9, scope: !897)
!3174 = !DILocation(line: 1572, column: 53, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3172, file: !1, line: 1571, column: 34)
!3176 = !DILocation(line: 1572, column: 27, scope: !3175)
!3177 = !DILocation(line: 1573, column: 29, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3175, file: !1, line: 1573, column: 13)
!3179 = !DILocation(line: 1573, column: 13, scope: !3175)
!3180 = !DILocation(line: 1574, column: 29, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !1, line: 1573, column: 38)
!3182 = !DILocation(line: 1574, column: 13, scope: !3181)
!3183 = !DILocation(line: 1575, column: 13, scope: !3181)
!3184 = !DILocation(line: 1578, column: 5, scope: !897)
!3185 = !DILocation(line: 1580, column: 34, scope: !897)
!3186 = !DILocation(line: 1580, column: 11, scope: !897)
!3187 = !DILocation(line: 1581, column: 13, scope: !947)
!3188 = !DILocation(line: 1581, column: 9, scope: !897)
!3189 = !DILocation(line: 1582, column: 25, scope: !946)
!3190 = !DILocation(line: 1582, column: 19, scope: !946)
!3191 = !DILocation(line: 1584, column: 17, scope: !951)
!3192 = !DILocation(line: 1584, column: 13, scope: !946)
!3193 = !DILocation(line: 1585, column: 13, scope: !950)
!3194 = !DILocation(line: 1586, column: 13, scope: !3195)
!3195 = !DILexicalBlockFile(scope: !949, file: !1, discriminator: 1)
!3196 = !DILocation(line: 1586, column: 13, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !949, file: !1, line: 1586, column: 13)
!3198 = !DILocation(line: 1586, column: 13, scope: !949)
!3199 = !DILocation(line: 1586, column: 13, scope: !3200)
!3200 = !DILexicalBlockFile(scope: !3197, file: !1, discriminator: 3)
!3201 = !DILocation(line: 1591, column: 18, scope: !954)
!3202 = !DILocation(line: 1591, column: 14, scope: !947)
!3203 = !DILocation(line: 1592, column: 19, scope: !953)
!3204 = !DILocation(line: 1594, column: 13, scope: !953)
!3205 = !DILocation(line: 1596, column: 9, scope: !953)
!3206 = !DILocation(line: 1602, column: 16, scope: !953)
!3207 = !DILocation(line: 1593, column: 19, scope: !953)
!3208 = !DILocation(line: 1603, column: 18, scope: !960)
!3209 = !DILocation(line: 1603, column: 13, scope: !953)
!3210 = !DILocation(line: 1604, column: 21, scope: !959)
!3211 = !DILocation(line: 1605, column: 13, scope: !3212)
!3212 = !DILexicalBlockFile(scope: !958, file: !1, discriminator: 1)
!3213 = !DILocation(line: 1605, column: 13, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !958, file: !1, line: 1605, column: 13)
!3215 = !DILocation(line: 1605, column: 13, scope: !958)
!3216 = !DILocation(line: 1605, column: 13, scope: !3217)
!3217 = !DILexicalBlockFile(scope: !3214, file: !1, discriminator: 3)
!3218 = !DILocation(line: 1607, column: 19, scope: !964)
!3219 = !DILocation(line: 1607, column: 13, scope: !953)
!3220 = !DILocation(line: 1608, column: 13, scope: !964)
!3221 = !DILocation(line: 1610, column: 28, scope: !963)
!3222 = !DILocation(line: 1611, column: 13, scope: !3223)
!3223 = !DILexicalBlockFile(scope: !962, file: !1, discriminator: 1)
!3224 = !DILocation(line: 1611, column: 13, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !962, file: !1, line: 1611, column: 13)
!3226 = !DILocation(line: 1611, column: 13, scope: !962)
!3227 = !DILocation(line: 1611, column: 13, scope: !3228)
!3228 = !DILexicalBlockFile(scope: !3225, file: !1, discriminator: 3)
!3229 = !DILocation(line: 1612, column: 30, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !963, file: !1, line: 1612, column: 17)
!3231 = !DILocation(line: 1612, column: 17, scope: !963)
!3232 = !DILocation(line: 1613, column: 17, scope: !3230)
!3233 = !DILocation(line: 1615, column: 26, scope: !968)
!3234 = !DILocation(line: 1615, column: 13, scope: !953)
!3235 = !DILocation(line: 1617, column: 59, scope: !967)
!3236 = !DILocation(line: 1617, column: 21, scope: !967)
!3237 = !DILocation(line: 1620, column: 23, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !967, file: !1, line: 1620, column: 17)
!3239 = !DILocation(line: 1620, column: 17, scope: !967)
!3240 = !DILocation(line: 1622, column: 13, scope: !3241)
!3241 = !DILexicalBlockFile(scope: !966, file: !1, discriminator: 1)
!3242 = !DILocation(line: 1622, column: 13, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !966, file: !1, line: 1622, column: 13)
!3244 = !DILocation(line: 1622, column: 13, scope: !966)
!3245 = !DILocation(line: 1622, column: 13, scope: !3246)
!3246 = !DILexicalBlockFile(scope: !3243, file: !1, discriminator: 3)
!3247 = !DILocation(line: 188, column: 15, scope: !593, inlinedAt: !3248)
!3248 = distinct !DILocation(line: 1626, column: 17, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !1, line: 1626, column: 17)
!3250 = distinct !DILexicalBlock(scope: !968, file: !1, line: 1624, column: 14)
!3251 = !DILocation(line: 188, column: 10, scope: !593, inlinedAt: !3248)
!3252 = !DILocation(line: 189, column: 12, scope: !1708, inlinedAt: !3248)
!3253 = !DILocation(line: 197, column: 31, scope: !1710, inlinedAt: !3248)
!3254 = !DILocation(line: 189, column: 33, scope: !1708, inlinedAt: !3248)
!3255 = !DILocation(line: 189, column: 18, scope: !1708, inlinedAt: !3248)
!3256 = !DILocation(line: 191, column: 9, scope: !1715, inlinedAt: !3248)
!3257 = !DILocation(line: 191, column: 28, scope: !1715, inlinedAt: !3248)
!3258 = !DILocation(line: 191, column: 9, scope: !593, inlinedAt: !3248)
!3259 = !DILocation(line: 193, column: 22, scope: !593, inlinedAt: !3248)
!3260 = !DILocation(line: 195, column: 27, scope: !1711, inlinedAt: !3248)
!3261 = !DILocation(line: 195, column: 9, scope: !593, inlinedAt: !3248)
!3262 = !DILocation(line: 196, column: 28, scope: !1710, inlinedAt: !3248)
!3263 = !DILocation(line: 197, column: 9, scope: !1710, inlinedAt: !3248)
!3264 = !DILocation(line: 198, column: 5, scope: !1710, inlinedAt: !3248)
!3265 = !DILocation(line: 1627, column: 33, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3249, file: !1, line: 1626, column: 46)
!3267 = !DILocation(line: 1627, column: 17, scope: !3266)
!3268 = !DILocation(line: 1628, column: 17, scope: !3266)
!3269 = !DILocation(line: 1635, column: 53, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !954, file: !1, line: 1633, column: 10)
!3271 = !DILocation(line: 1635, column: 15, scope: !3270)
!3272 = !DILocation(line: 1638, column: 17, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !1, line: 1638, column: 13)
!3274 = !DILocation(line: 1638, column: 13, scope: !3270)
!3275 = !DILocation(line: 1644, column: 9, scope: !973)
!3276 = !DILocation(line: 1644, column: 9, scope: !897)
!3277 = !DILocation(line: 1645, column: 19, scope: !971)
!3278 = !DILocation(line: 1645, column: 24, scope: !971)
!3279 = !DILocation(line: 1645, column: 27, scope: !3280)
!3280 = !DILexicalBlockFile(scope: !971, file: !1, discriminator: 1)
!3281 = !DILocation(line: 1645, column: 54, scope: !971)
!3282 = !DILocation(line: 1645, column: 13, scope: !972)
!3283 = !DILocation(line: 1646, column: 23, scope: !970)
!3284 = !DILocation(line: 1647, column: 23, scope: !970)
!3285 = !DILocation(line: 1648, column: 38, scope: !970)
!3286 = !DILocation(line: 1648, column: 23, scope: !970)
!3287 = !DILocation(line: 1650, column: 30, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !970, file: !1, line: 1650, column: 17)
!3289 = !DILocation(line: 1650, column: 17, scope: !970)
!3290 = !DILocation(line: 1654, column: 25, scope: !970)
!3291 = !DILocation(line: 1655, column: 27, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !970, file: !1, line: 1655, column: 17)
!3293 = !DILocation(line: 1655, column: 17, scope: !970)
!3294 = !DILocation(line: 1659, column: 17, scope: !979)
!3295 = !DILocation(line: 1659, column: 70, scope: !979)
!3296 = !DILocation(line: 1659, column: 17, scope: !970)
!3297 = !DILocation(line: 1661, column: 17, scope: !3298)
!3298 = !DILexicalBlockFile(scope: !977, file: !1, discriminator: 1)
!3299 = !DILocation(line: 1661, column: 17, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !977, file: !1, line: 1661, column: 17)
!3301 = !DILocation(line: 1661, column: 17, scope: !977)
!3302 = !DILocation(line: 1661, column: 17, scope: !3303)
!3303 = !DILexicalBlockFile(scope: !3300, file: !1, discriminator: 3)
!3304 = !DILocation(line: 1663, column: 17, scope: !978)
!3305 = !DILocation(line: 1664, column: 17, scope: !978)
!3306 = !DILocation(line: 1667, column: 21, scope: !970)
!3307 = !DILocation(line: 1668, column: 13, scope: !970)
!3308 = !DILocation(line: 1669, column: 13, scope: !3309)
!3309 = !DILexicalBlockFile(scope: !981, file: !1, discriminator: 1)
!3310 = !DILocation(line: 1669, column: 13, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !981, file: !1, line: 1669, column: 13)
!3312 = !DILocation(line: 1669, column: 13, scope: !981)
!3313 = !DILocation(line: 1669, column: 13, scope: !3314)
!3314 = !DILexicalBlockFile(scope: !3311, file: !1, discriminator: 3)
!3315 = !DILocation(line: 1671, column: 17, scope: !970)
!3316 = !DILocation(line: 1672, column: 29, scope: !984)
!3317 = !DILocation(line: 1673, column: 17, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !983, file: !1, discriminator: 1)
!3319 = !DILocation(line: 1673, column: 17, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !983, file: !1, line: 1673, column: 17)
!3321 = !DILocation(line: 1673, column: 17, scope: !983)
!3322 = !DILocation(line: 1673, column: 17, scope: !3323)
!3323 = !DILexicalBlockFile(scope: !3320, file: !1, discriminator: 3)
!3324 = !DILocation(line: 1676, column: 38, scope: !987)
!3325 = !DILocation(line: 1677, column: 41, scope: !987)
!3326 = !DILocation(line: 1678, column: 43, scope: !987)
!3327 = !DILocation(line: 1678, column: 28, scope: !987)
!3328 = !DILocation(line: 1680, column: 70, scope: !987)
!3329 = !DILocation(line: 1679, column: 39, scope: !987)
!3330 = !DILocation(line: 1679, column: 27, scope: !987)
!3331 = !DILocation(line: 1681, column: 17, scope: !3332)
!3332 = !DILexicalBlockFile(scope: !991, file: !1, discriminator: 1)
!3333 = !DILocation(line: 1681, column: 17, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !991, file: !1, line: 1681, column: 17)
!3335 = !DILocation(line: 1681, column: 17, scope: !991)
!3336 = !DILocation(line: 1681, column: 17, scope: !3337)
!3337 = !DILexicalBlockFile(scope: !3334, file: !1, discriminator: 3)
!3338 = !DILocation(line: 1682, column: 31, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1682, column: 21)
!3340 = !DILocation(line: 1682, column: 21, scope: !987)
!3341 = !DILocation(line: 1686, column: 52, scope: !987)
!3342 = !DILocation(line: 1686, column: 29, scope: !987)
!3343 = !DILocation(line: 1687, column: 31, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !987, file: !1, line: 1687, column: 21)
!3345 = !DILocation(line: 1687, column: 21, scope: !987)
!3346 = !DILocation(line: 1688, column: 34, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 1687, column: 40)
!3348 = !DILocation(line: 1688, column: 21, scope: !3347)
!3349 = !DILocation(line: 1691, column: 17, scope: !3347)
!3350 = !DILocation(line: 1693, column: 21, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3344, file: !1, line: 1692, column: 22)
!3352 = !DILocation(line: 1695, column: 17, scope: !3353)
!3353 = !DILexicalBlockFile(scope: !993, file: !1, discriminator: 1)
!3354 = !DILocation(line: 1695, column: 17, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !993, file: !1, line: 1695, column: 17)
!3356 = !DILocation(line: 1695, column: 17, scope: !993)
!3357 = !DILocation(line: 1695, column: 17, scope: !3358)
!3358 = !DILexicalBlockFile(scope: !3355, file: !1, discriminator: 3)
!3359 = !DILocation(line: 1700, column: 13, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !971, file: !1, line: 1698, column: 14)
!3361 = !DILocation(line: 1704, column: 59, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !973, file: !1, line: 1703, column: 10)
!3363 = !DILocation(line: 1704, column: 21, scope: !3362)
!3364 = !DILocation(line: 188, column: 15, scope: !593, inlinedAt: !3365)
!3365 = distinct !DILocation(line: 1713, column: 9, scope: !3366)
!3366 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1713, column: 9)
!3367 = !DILocation(line: 188, column: 10, scope: !593, inlinedAt: !3365)
!3368 = !DILocation(line: 189, column: 12, scope: !1708, inlinedAt: !3365)
!3369 = !DILocation(line: 197, column: 31, scope: !1710, inlinedAt: !3365)
!3370 = !DILocation(line: 189, column: 33, scope: !1708, inlinedAt: !3365)
!3371 = !DILocation(line: 189, column: 18, scope: !1708, inlinedAt: !3365)
!3372 = !DILocation(line: 191, column: 9, scope: !1715, inlinedAt: !3365)
!3373 = !DILocation(line: 191, column: 28, scope: !1715, inlinedAt: !3365)
!3374 = !DILocation(line: 191, column: 9, scope: !593, inlinedAt: !3365)
!3375 = !DILocation(line: 193, column: 22, scope: !593, inlinedAt: !3365)
!3376 = !DILocation(line: 195, column: 27, scope: !1711, inlinedAt: !3365)
!3377 = !DILocation(line: 195, column: 9, scope: !593, inlinedAt: !3365)
!3378 = !DILocation(line: 196, column: 28, scope: !1710, inlinedAt: !3365)
!3379 = !DILocation(line: 197, column: 9, scope: !1710, inlinedAt: !3365)
!3380 = !DILocation(line: 198, column: 5, scope: !1710, inlinedAt: !3365)
!3381 = !DILocation(line: 1714, column: 25, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3366, file: !1, line: 1713, column: 38)
!3383 = !DILocation(line: 1714, column: 9, scope: !3382)
!3384 = !DILocation(line: 1715, column: 5, scope: !3382)
!3385 = !DILocation(line: 1718, column: 5, scope: !3386)
!3386 = !DILexicalBlockFile(scope: !995, file: !1, discriminator: 1)
!3387 = !DILocation(line: 1718, column: 5, scope: !998)
!3388 = !DILocation(line: 1718, column: 5, scope: !995)
!3389 = !DILocation(line: 1718, column: 5, scope: !3390)
!3390 = !DILexicalBlockFile(scope: !997, file: !1, discriminator: 4)
!3391 = !DILocation(line: 1718, column: 5, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !997, file: !1, line: 1718, column: 5)
!3393 = !DILocation(line: 1718, column: 5, scope: !997)
!3394 = !DILocation(line: 1718, column: 5, scope: !3395)
!3395 = !DILexicalBlockFile(scope: !3392, file: !1, discriminator: 6)
!3396 = !DILocation(line: 1719, column: 5, scope: !3397)
!3397 = !DILexicalBlockFile(scope: !1000, file: !1, discriminator: 1)
!3398 = !DILocation(line: 1719, column: 5, scope: !1003)
!3399 = !DILocation(line: 1719, column: 5, scope: !1000)
!3400 = !DILocation(line: 1719, column: 5, scope: !3401)
!3401 = !DILexicalBlockFile(scope: !1002, file: !1, discriminator: 4)
!3402 = !DILocation(line: 1719, column: 5, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !1002, file: !1, line: 1719, column: 5)
!3404 = !DILocation(line: 1719, column: 5, scope: !1002)
!3405 = !DILocation(line: 1719, column: 5, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !3403, file: !1, discriminator: 6)
!3407 = !DILocation(line: 1720, column: 5, scope: !3408)
!3408 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 1)
!3409 = !DILocation(line: 1720, column: 5, scope: !1008)
!3410 = !DILocation(line: 1720, column: 5, scope: !1005)
!3411 = !DILocation(line: 1720, column: 5, scope: !3412)
!3412 = !DILexicalBlockFile(scope: !1007, file: !1, discriminator: 4)
!3413 = !DILocation(line: 1720, column: 5, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 1720, column: 5)
!3415 = !DILocation(line: 1720, column: 5, scope: !1007)
!3416 = !DILocation(line: 1720, column: 5, scope: !3417)
!3417 = !DILexicalBlockFile(scope: !3414, file: !1, discriminator: 6)
!3418 = !DILocation(line: 1721, column: 5, scope: !3419)
!3419 = !DILexicalBlockFile(scope: !1010, file: !1, discriminator: 1)
!3420 = !DILocation(line: 1721, column: 5, scope: !1013)
!3421 = !DILocation(line: 1721, column: 5, scope: !1010)
!3422 = !DILocation(line: 1721, column: 5, scope: !3423)
!3423 = !DILexicalBlockFile(scope: !1012, file: !1, discriminator: 4)
!3424 = !DILocation(line: 1721, column: 5, scope: !3425)
!3425 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 1721, column: 5)
!3426 = !DILocation(line: 1721, column: 5, scope: !1012)
!3427 = !DILocation(line: 1721, column: 5, scope: !3428)
!3428 = !DILexicalBlockFile(scope: !3425, file: !1, discriminator: 6)
!3429 = !DILocation(line: 1722, column: 5, scope: !3430)
!3430 = !DILexicalBlockFile(scope: !1015, file: !1, discriminator: 1)
!3431 = !DILocation(line: 1722, column: 5, scope: !1018)
!3432 = !DILocation(line: 1722, column: 5, scope: !1015)
!3433 = !DILocation(line: 1722, column: 5, scope: !3434)
!3434 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 4)
!3435 = !DILocation(line: 1722, column: 5, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 1722, column: 5)
!3437 = !DILocation(line: 1722, column: 5, scope: !1017)
!3438 = !DILocation(line: 1722, column: 5, scope: !3439)
!3439 = !DILexicalBlockFile(scope: !3436, file: !1, discriminator: 6)
!3440 = !DILocation(line: 1723, column: 5, scope: !3441)
!3441 = !DILexicalBlockFile(scope: !1020, file: !1, discriminator: 1)
!3442 = !DILocation(line: 1723, column: 5, scope: !1023)
!3443 = !DILocation(line: 1723, column: 5, scope: !1020)
!3444 = !DILocation(line: 1723, column: 5, scope: !3445)
!3445 = !DILexicalBlockFile(scope: !1022, file: !1, discriminator: 4)
!3446 = !DILocation(line: 1723, column: 5, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 1723, column: 5)
!3448 = !DILocation(line: 1723, column: 5, scope: !1022)
!3449 = !DILocation(line: 1723, column: 5, scope: !3450)
!3450 = !DILexicalBlockFile(scope: !3447, file: !1, discriminator: 6)
!3451 = !DILocation(line: 1724, column: 19, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !897, file: !1, line: 1724, column: 9)
!3453 = !DILocation(line: 1724, column: 9, scope: !897)
!3454 = !DILocation(line: 1334, column: 17, scope: !1156, inlinedAt: !3455)
!3455 = distinct !DILocation(line: 1725, column: 9, scope: !3452)
!3456 = !DILocation(line: 1335, column: 17, scope: !1156, inlinedAt: !3455)
!3457 = !DILocation(line: 1336, column: 9, scope: !1156, inlinedAt: !3455)
!3458 = !DILocation(line: 1337, column: 9, scope: !1156, inlinedAt: !3455)
!3459 = !DILocation(line: 1338, column: 5, scope: !1156, inlinedAt: !3455)
!3460 = !DILocation(line: 1339, column: 29, scope: !1156, inlinedAt: !3455)
!3461 = !DILocation(line: 1338, column: 15, scope: !1156, inlinedAt: !3455)
!3462 = !DILocation(line: 1338, column: 27, scope: !1156, inlinedAt: !3455)
!3463 = !DILocation(line: 1338, column: 35, scope: !1156, inlinedAt: !3455)
!3464 = !DILocation(line: 1345, column: 5, scope: !1156, inlinedAt: !3455)
!3465 = !DILocation(line: 1346, column: 10, scope: !3466, inlinedAt: !3455)
!3466 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 1346, column: 9)
!3467 = !DILocation(line: 1725, column: 9, scope: !3452)
!3468 = !DILocation(line: 1346, column: 23, scope: !3469, inlinedAt: !3455)
!3469 = !DILexicalBlockFile(scope: !3466, file: !1, discriminator: 1)
!3470 = !DILocation(line: 1346, column: 20, scope: !3466, inlinedAt: !3455)
!3471 = !DILocation(line: 1348, column: 26, scope: !3472, inlinedAt: !3455)
!3472 = distinct !DILexicalBlock(scope: !1156, file: !1, line: 1348, column: 9)
!3473 = !DILocation(line: 1349, column: 43, scope: !3472, inlinedAt: !3455)
!3474 = !DILocation(line: 1348, column: 9, scope: !3472, inlinedAt: !3455)
!3475 = !DILocation(line: 1339, column: 16, scope: !1156, inlinedAt: !3455)
!3476 = !DILocation(line: 1353, column: 10, scope: !1156, inlinedAt: !3455)
!3477 = !DILocation(line: 1338, column: 45, scope: !1156, inlinedAt: !3455)
!3478 = !DILocation(line: 1354, column: 15, scope: !1156, inlinedAt: !3455)
!3479 = !DILocation(line: 1354, column: 5, scope: !1156, inlinedAt: !3455)
!3480 = !DILocation(line: 1372, column: 26, scope: !1178, inlinedAt: !3455)
!3481 = !DILocation(line: 1356, column: 50, scope: !1169, inlinedAt: !3455)
!3482 = !{!3483, !1495, i64 16}
!3483 = !{!"_traceback", !1534, i64 0, !1495, i64 16, !1495, i64 24, !1498, i64 32, !1498, i64 36}
!3484 = !DILocation(line: 1356, column: 19, scope: !1169, inlinedAt: !3455)
!3485 = !DILocation(line: 1357, column: 43, scope: !1169, inlinedAt: !3455)
!3486 = !{!3483, !1495, i64 24}
!3487 = !DILocation(line: 1357, column: 24, scope: !1169, inlinedAt: !3455)
!3488 = !DILocation(line: 1358, column: 37, scope: !1169, inlinedAt: !3455)
!3489 = !{!3490, !1495, i64 32}
!3490 = !{!"_frame", !1541, i64 0, !1495, i64 24, !1495, i64 32, !1495, i64 40, !1495, i64 48, !1495, i64 56, !1495, i64 64, !1495, i64 72, !1495, i64 80, !1495, i64 88, !1495, i64 96, !1495, i64 104, !1495, i64 112, !1498, i64 120, !1498, i64 124, !1498, i64 128, !1496, i64 132, !1496, i64 136, !1496, i64 376}
!3491 = !DILocation(line: 1358, column: 23, scope: !1169, inlinedAt: !3455)
!3492 = !DILocation(line: 1363, column: 39, scope: !1169, inlinedAt: !3455)
!3493 = !DILocation(line: 1362, column: 29, scope: !1169, inlinedAt: !3455)
!3494 = !DILocation(line: 1364, column: 53, scope: !1169, inlinedAt: !3455)
!3495 = !DILocation(line: 1359, column: 13, scope: !1169, inlinedAt: !3455)
!3496 = !DILocation(line: 1365, column: 13, scope: !3497, inlinedAt: !3455)
!3497 = distinct !DILexicalBlock(scope: !1169, file: !1, line: 1365, column: 13)
!3498 = !DILocation(line: 1365, column: 34, scope: !3499, inlinedAt: !3455)
!3499 = !DILexicalBlockFile(scope: !3497, file: !1, discriminator: 1)
!3500 = !DILocation(line: 1365, column: 30, scope: !3497, inlinedAt: !3455)
!3501 = !DILocation(line: 1371, column: 26, scope: !1178, inlinedAt: !3455)
!3502 = !DILocation(line: 1373, column: 53, scope: !1178, inlinedAt: !3455)
!3503 = !{!2463, !1495, i64 104}
!3504 = !DILocation(line: 1373, column: 14, scope: !1178, inlinedAt: !3455)
!3505 = !DILocation(line: 1374, column: 62, scope: !1178, inlinedAt: !3455)
!3506 = !DILocation(line: 1371, column: 13, scope: !1169, inlinedAt: !3455)
!3507 = !DILocation(line: 1375, column: 29, scope: !1177, inlinedAt: !3455)
!3508 = !DILocation(line: 1375, column: 23, scope: !1177, inlinedAt: !3455)
!3509 = !DILocation(line: 1376, column: 25, scope: !1177, inlinedAt: !3455)
!3510 = !DILocation(line: 1377, column: 13, scope: !3511, inlinedAt: !3455)
!3511 = !DILexicalBlockFile(scope: !1180, file: !1, discriminator: 1)
!3512 = !DILocation(line: 1377, column: 13, scope: !3513, inlinedAt: !3455)
!3513 = distinct !DILexicalBlock(scope: !1180, file: !1, line: 1377, column: 13)
!3514 = !DILocation(line: 1377, column: 13, scope: !1180, inlinedAt: !3455)
!3515 = !DILocation(line: 1377, column: 13, scope: !3516, inlinedAt: !3455)
!3516 = !DILexicalBlockFile(scope: !3513, file: !1, discriminator: 2)
!3517 = !DILocation(line: 1378, column: 13, scope: !3518, inlinedAt: !3455)
!3518 = !DILexicalBlockFile(scope: !1182, file: !1, discriminator: 1)
!3519 = !DILocation(line: 1378, column: 13, scope: !3520, inlinedAt: !3455)
!3520 = distinct !DILexicalBlock(scope: !1182, file: !1, line: 1378, column: 13)
!3521 = !DILocation(line: 1378, column: 13, scope: !1182, inlinedAt: !3455)
!3522 = !DILocation(line: 1378, column: 13, scope: !3523, inlinedAt: !3455)
!3523 = !DILexicalBlockFile(scope: !3520, file: !1, discriminator: 3)
!3524 = !DILocation(line: 1387, column: 19, scope: !1156, inlinedAt: !3455)
!3525 = !DILocation(line: 1387, column: 30, scope: !1156, inlinedAt: !3455)
!3526 = !DILocation(line: 1387, column: 37, scope: !1156, inlinedAt: !3455)
!3527 = !DILocation(line: 1387, column: 5, scope: !1156, inlinedAt: !3455)
!3528 = !DILocation(line: 1388, column: 1, scope: !1156, inlinedAt: !3455)
!3529 = !DILocation(line: 1727, column: 1, scope: !897)
!3530 = !DILocation(line: 1730, column: 40, scope: !1024)
!3531 = !DILocation(line: 1730, column: 56, scope: !1024)
!3532 = !DILocation(line: 1730, column: 75, scope: !1024)
!3533 = !DILocation(line: 1731, column: 38, scope: !1024)
!3534 = !DILocation(line: 1731, column: 52, scope: !1024)
!3535 = !DILocation(line: 1734, column: 15, scope: !1024)
!3536 = !DILocation(line: 1733, column: 15, scope: !1024)
!3537 = !DILocation(line: 1735, column: 17, scope: !2844)
!3538 = !DILocation(line: 1735, column: 9, scope: !1024)
!3539 = !DILocation(line: 1737, column: 11, scope: !1024)
!3540 = !DILocation(line: 1733, column: 25, scope: !1024)
!3541 = !DILocation(line: 1739, column: 5, scope: !2849)
!3542 = !DILocation(line: 1739, column: 5, scope: !2851)
!3543 = !DILocation(line: 1739, column: 5, scope: !1036)
!3544 = !DILocation(line: 1739, column: 5, scope: !2854)
!3545 = !DILocation(line: 1741, column: 1, scope: !1024)
!3546 = !DILocation(line: 1748, column: 33, scope: !1037)
!3547 = !DILocation(line: 1751, column: 15, scope: !1037)
!3548 = !DILocation(line: 370, column: 34, scope: !615, inlinedAt: !3549)
!3549 = distinct !DILocation(line: 1752, column: 25, scope: !1037)
!3550 = !DILocation(line: 370, column: 34, scope: !1769, inlinedAt: !3549)
!3551 = !DILocation(line: 370, column: 55, scope: !611, inlinedAt: !3549)
!3552 = !DILocation(line: 370, column: 25, scope: !611, inlinedAt: !3549)
!3553 = !DILocation(line: 371, column: 17, scope: !1774, inlinedAt: !3549)
!3554 = !DILocation(line: 371, column: 25, scope: !1774, inlinedAt: !3549)
!3555 = !DILocation(line: 371, column: 9, scope: !611, inlinedAt: !3549)
!3556 = !DILocation(line: 372, column: 9, scope: !1774, inlinedAt: !3549)
!3557 = !DILocation(line: 1752, column: 15, scope: !1037)
!3558 = !DILocation(line: 1753, column: 21, scope: !1037)
!3559 = !DILocation(line: 1753, column: 15, scope: !1037)
!3560 = !DILocation(line: 1754, column: 13, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !1037, file: !1, line: 1754, column: 9)
!3562 = !DILocation(line: 1754, column: 9, scope: !1037)
!3563 = !DILocation(line: 1300, column: 35, scope: !887, inlinedAt: !3564)
!3564 = distinct !DILocation(line: 1755, column: 15, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3561, file: !1, line: 1754, column: 22)
!3566 = !DILocation(line: 1305, column: 13, scope: !887, inlinedAt: !3564)
!3567 = !DILocation(line: 1302, column: 15, scope: !887, inlinedAt: !3564)
!3568 = !DILocation(line: 1306, column: 15, scope: !1599, inlinedAt: !3564)
!3569 = !DILocation(line: 1306, column: 9, scope: !887, inlinedAt: !3564)
!3570 = !DILocation(line: 1308, column: 14, scope: !887, inlinedAt: !3564)
!3571 = !DILocation(line: 1303, column: 15, scope: !887, inlinedAt: !3564)
!3572 = !DILocation(line: 1309, column: 5, scope: !1604, inlinedAt: !3564)
!3573 = !DILocation(line: 1309, column: 5, scope: !1606, inlinedAt: !3564)
!3574 = !DILocation(line: 1309, column: 5, scope: !893, inlinedAt: !3564)
!3575 = !DILocation(line: 1309, column: 5, scope: !1609, inlinedAt: !3564)
!3576 = !DILocation(line: 1755, column: 15, scope: !3565)
!3577 = !DILocation(line: 1756, column: 17, scope: !3578)
!3578 = distinct !DILexicalBlock(scope: !3565, file: !1, line: 1756, column: 13)
!3579 = !DILocation(line: 1756, column: 13, scope: !3565)
!3580 = !DILocation(line: 1761, column: 9, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3561, file: !1, line: 1760, column: 10)
!3582 = !DILocation(line: 1764, column: 23, scope: !1037)
!3583 = !DILocation(line: 1765, column: 5, scope: !3584)
!3584 = !DILexicalBlockFile(scope: !1044, file: !1, discriminator: 1)
!3585 = !DILocation(line: 1765, column: 5, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !1044, file: !1, line: 1765, column: 5)
!3587 = !DILocation(line: 1765, column: 5, scope: !1044)
!3588 = !DILocation(line: 1765, column: 5, scope: !3589)
!3589 = !DILexicalBlockFile(scope: !3586, file: !1, discriminator: 3)
!3590 = !DILocation(line: 1767, column: 1, scope: !1037)
!3591 = !DILocation(line: 2318, column: 9, scope: !1070)
!3592 = !DILocation(line: 2316, column: 15, scope: !1070)
!3593 = !DILocation(line: 2319, column: 9, scope: !1070)
!3594 = !DILocation(line: 2321, column: 9, scope: !1070)
!3595 = !DILocation(line: 2316, column: 19, scope: !1070)
!3596 = !DILocation(line: 2322, column: 11, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 2322, column: 9)
!3598 = !DILocation(line: 2322, column: 9, scope: !1070)
!3599 = !DILocation(line: 2327, column: 5, scope: !3600)
!3600 = !DILexicalBlockFile(scope: !1075, file: !1, discriminator: 1)
!3601 = !DILocation(line: 2327, column: 5, scope: !3602)
!3602 = !DILexicalBlockFile(scope: !1077, file: !1, discriminator: 4)
!3603 = !DILocation(line: 2327, column: 5, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !1077, file: !1, line: 2327, column: 5)
!3605 = !DILocation(line: 2327, column: 5, scope: !1077)
!3606 = !DILocation(line: 2327, column: 5, scope: !3607)
!3607 = !DILexicalBlockFile(scope: !3604, file: !1, discriminator: 6)
!3608 = !DILocation(line: 2329, column: 1, scope: !1070)
!3609 = !DILocation(line: 2340, column: 41, scope: !1079)
!3610 = !DILocation(line: 2344, column: 12, scope: !1079)
!3611 = !DILocation(line: 2347, column: 10, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 2347, column: 5)
!3613 = !DILocation(line: 2347, column: 17, scope: !3614)
!3614 = distinct !DILexicalBlock(scope: !3612, file: !1, line: 2347, column: 5)
!3615 = !DILocation(line: 2347, column: 27, scope: !3614)
!3616 = !{!3617, !1495, i64 0}
!3617 = !{!"_inittab", !1495, i64 0, !1495, i64 8}
!3618 = !DILocation(line: 2347, column: 32, scope: !3614)
!3619 = !DILocation(line: 2347, column: 42, scope: !3620)
!3620 = !DILexicalBlockFile(scope: !3614, file: !1, discriminator: 3)
!3621 = !DILocation(line: 2347, column: 5, scope: !3612)
!3622 = !DILocation(line: 2349, column: 11, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 2349, column: 9)
!3624 = !DILocation(line: 2349, column: 9, scope: !1079)
!3625 = !DILocation(line: 2351, column: 17, scope: !3626)
!3626 = distinct !DILexicalBlock(scope: !3627, file: !1, line: 2351, column: 5)
!3627 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 2351, column: 5)
!3628 = !DILocation(line: 2351, column: 37, scope: !3626)
!3629 = !DILocation(line: 2351, column: 42, scope: !3626)
!3630 = !DILocation(line: 2351, column: 52, scope: !3631)
!3631 = !DILexicalBlockFile(scope: !3626, file: !1, discriminator: 3)
!3632 = !DILocation(line: 2344, column: 9, scope: !1079)
!3633 = !DILocation(line: 2351, column: 5, scope: !3627)
!3634 = !DILocation(line: 2356, column: 5, scope: !1079)
!3635 = !DILocation(line: 2355, column: 9, scope: !1079)
!3636 = !DILocation(line: 2356, column: 5, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !1079, file: !1, discriminator: 2)
!3638 = !DILocation(line: 2343, column: 22, scope: !1079)
!3639 = !DILocation(line: 2357, column: 11, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 2357, column: 9)
!3641 = !DILocation(line: 2357, column: 9, scope: !1079)
!3642 = !DILocation(line: 2361, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !1079, file: !1, line: 2361, column: 9)
!3644 = !DILocation(line: 2361, column: 21, scope: !3643)
!3645 = !DILocation(line: 2361, column: 18, scope: !3643)
!3646 = !DILocation(line: 2361, column: 9, scope: !1079)
!3647 = !DILocation(line: 2362, column: 9, scope: !3643)
!3648 = !DILocation(line: 2362, column: 37, scope: !3643)
!3649 = !DILocation(line: 2362, column: 43, scope: !3643)
!3650 = !DILocation(line: 2363, column: 33, scope: !1079)
!3651 = !DILocation(line: 2363, column: 22, scope: !1079)
!3652 = !DILocation(line: 2364, column: 13, scope: !1079)
!3653 = !DILocation(line: 2364, column: 5, scope: !1079)
!3654 = !DILocation(line: 2364, column: 25, scope: !1079)
!3655 = !DILocation(line: 2364, column: 31, scope: !1079)
!3656 = !DILocation(line: 2366, column: 5, scope: !1079)
!3657 = !DILocation(line: 2367, column: 1, scope: !1079)
!3658 = !DILocation(line: 2372, column: 36, scope: !1087)
!3659 = !DILocation(line: 2372, column: 54, scope: !1087)
!3660 = !DILocation(line: 2374, column: 5, scope: !1087)
!3661 = !DILocation(line: 2374, column: 21, scope: !1087)
!3662 = !DILocation(line: 2376, column: 5, scope: !1087)
!3663 = !DILocation(line: 2378, column: 15, scope: !1087)
!3664 = !DILocation(line: 2378, column: 20, scope: !1087)
!3665 = !DILocation(line: 2379, column: 15, scope: !1087)
!3666 = !DILocation(line: 2379, column: 24, scope: !1087)
!3667 = !{!3617, !1495, i64 8}
!3668 = !DILocation(line: 2344, column: 12, scope: !1079, inlinedAt: !3669)
!3669 = distinct !DILocation(line: 2381, column: 12, scope: !1087)
!3670 = !DILocation(line: 2347, column: 32, scope: !3614, inlinedAt: !3669)
!3671 = !DILocation(line: 2347, column: 5, scope: !3612, inlinedAt: !3669)
!3672 = !DILocation(line: 2347, column: 17, scope: !3614, inlinedAt: !3669)
!3673 = !DILocation(line: 2347, column: 27, scope: !3614, inlinedAt: !3669)
!3674 = !DILocation(line: 2347, column: 42, scope: !3620, inlinedAt: !3669)
!3675 = !DILocation(line: 2349, column: 11, scope: !3623, inlinedAt: !3669)
!3676 = !DILocation(line: 2349, column: 9, scope: !1079, inlinedAt: !3669)
!3677 = !DILocation(line: 2351, column: 17, scope: !3626, inlinedAt: !3669)
!3678 = !DILocation(line: 2381, column: 12, scope: !1087)
!3679 = !DILocation(line: 2351, column: 37, scope: !3626, inlinedAt: !3669)
!3680 = !DILocation(line: 2351, column: 42, scope: !3626, inlinedAt: !3669)
!3681 = !DILocation(line: 2351, column: 52, scope: !3631, inlinedAt: !3669)
!3682 = !DILocation(line: 2344, column: 9, scope: !1079, inlinedAt: !3669)
!3683 = !DILocation(line: 2351, column: 5, scope: !3627, inlinedAt: !3669)
!3684 = !DILocation(line: 2356, column: 5, scope: !1079, inlinedAt: !3669)
!3685 = !DILocation(line: 2355, column: 9, scope: !1079, inlinedAt: !3669)
!3686 = !DILocation(line: 2356, column: 5, scope: !3637, inlinedAt: !3669)
!3687 = !DILocation(line: 2343, column: 22, scope: !1079, inlinedAt: !3669)
!3688 = !DILocation(line: 2357, column: 11, scope: !3640, inlinedAt: !3669)
!3689 = !DILocation(line: 2357, column: 9, scope: !1079, inlinedAt: !3669)
!3690 = !DILocation(line: 2361, column: 9, scope: !3643, inlinedAt: !3669)
!3691 = !DILocation(line: 2361, column: 21, scope: !3643, inlinedAt: !3669)
!3692 = !DILocation(line: 2361, column: 18, scope: !3643, inlinedAt: !3669)
!3693 = !DILocation(line: 2361, column: 9, scope: !1079, inlinedAt: !3669)
!3694 = !DILocation(line: 2362, column: 9, scope: !3643, inlinedAt: !3669)
!3695 = !DILocation(line: 2362, column: 37, scope: !3643, inlinedAt: !3669)
!3696 = !DILocation(line: 2362, column: 43, scope: !3643, inlinedAt: !3669)
!3697 = !DILocation(line: 2363, column: 33, scope: !1079, inlinedAt: !3669)
!3698 = !DILocation(line: 2363, column: 22, scope: !1079, inlinedAt: !3669)
!3699 = !DILocation(line: 2364, column: 13, scope: !1079, inlinedAt: !3669)
!3700 = !DILocation(line: 2364, column: 5, scope: !1079, inlinedAt: !3669)
!3701 = !DILocation(line: 2364, column: 25, scope: !1079, inlinedAt: !3669)
!3702 = !DILocation(line: 2364, column: 31, scope: !1079, inlinedAt: !3669)
!3703 = !DILocation(line: 2366, column: 5, scope: !1079, inlinedAt: !3669)
!3704 = !DILocation(line: 2382, column: 1, scope: !1087)
!3705 = !DILocation(line: 2381, column: 5, scope: !1087)
!3706 = !DILocation(line: 1875, column: 38, scope: !1183)
!3707 = !DILocation(line: 1875, column: 56, scope: !1183)
!3708 = !DILocation(line: 1881, column: 43, scope: !1189, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 1877, column: 12, scope: !1183)
!3710 = !DILocation(line: 1886, column: 18, scope: !1189, inlinedAt: !3709)
!3711 = !DILocation(line: 1888, column: 12, scope: !1189, inlinedAt: !3709)
!3712 = !DILocation(line: 1884, column: 15, scope: !1189, inlinedAt: !3709)
!3713 = !DILocation(line: 1889, column: 14, scope: !3714, inlinedAt: !3709)
!3714 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 1889, column: 9)
!3715 = !DILocation(line: 1889, column: 9, scope: !1189, inlinedAt: !3709)
!3716 = !DILocation(line: 1892, column: 22, scope: !1189, inlinedAt: !3709)
!3717 = !DILocation(line: 1885, column: 17, scope: !1189, inlinedAt: !3709)
!3718 = !DILocation(line: 1892, column: 5, scope: !1189, inlinedAt: !3709)
!3719 = !DILocation(line: 1893, column: 26, scope: !1198, inlinedAt: !3709)
!3720 = !DILocation(line: 1877, column: 12, scope: !1183)
!3721 = !DILocation(line: 1893, column: 19, scope: !1198, inlinedAt: !3709)
!3722 = !DILocation(line: 1894, column: 18, scope: !1202, inlinedAt: !3709)
!3723 = !DILocation(line: 1894, column: 13, scope: !1198, inlinedAt: !3709)
!3724 = !DILocation(line: 1895, column: 13, scope: !3725, inlinedAt: !3709)
!3725 = !DILexicalBlockFile(scope: !1200, file: !1, discriminator: 1)
!3726 = !DILocation(line: 1895, column: 13, scope: !3727, inlinedAt: !3709)
!3727 = distinct !DILexicalBlock(scope: !1200, file: !1, line: 1895, column: 13)
!3728 = !DILocation(line: 1895, column: 13, scope: !1200, inlinedAt: !3709)
!3729 = !DILocation(line: 1895, column: 13, scope: !3730, inlinedAt: !3709)
!3730 = !DILexicalBlockFile(scope: !3727, file: !1, discriminator: 3)
!3731 = !DILocation(line: 1898, column: 13, scope: !1206, inlinedAt: !3709)
!3732 = !DILocation(line: 1898, column: 39, scope: !1206, inlinedAt: !3709)
!3733 = !DILocation(line: 1898, column: 13, scope: !1198, inlinedAt: !3709)
!3734 = !DILocation(line: 1899, column: 13, scope: !3735, inlinedAt: !3709)
!3735 = !DILexicalBlockFile(scope: !1204, file: !1, discriminator: 1)
!3736 = !DILocation(line: 1899, column: 13, scope: !3737, inlinedAt: !3709)
!3737 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 1899, column: 13)
!3738 = !DILocation(line: 1899, column: 13, scope: !1204, inlinedAt: !3709)
!3739 = !DILocation(line: 1899, column: 13, scope: !3740, inlinedAt: !3709)
!3740 = !DILexicalBlockFile(scope: !3737, file: !1, discriminator: 3)
!3741 = !DILocation(line: 1900, column: 13, scope: !3742, inlinedAt: !3709)
!3742 = !DILexicalBlockFile(scope: !1208, file: !1, discriminator: 1)
!3743 = !DILocation(line: 1900, column: 13, scope: !3744, inlinedAt: !3709)
!3744 = distinct !DILexicalBlock(scope: !1208, file: !1, line: 1900, column: 13)
!3745 = !DILocation(line: 1900, column: 13, scope: !1208, inlinedAt: !3709)
!3746 = !DILocation(line: 1900, column: 13, scope: !3747, inlinedAt: !3709)
!3747 = !DILexicalBlockFile(scope: !3744, file: !1, discriminator: 3)
!3748 = !DILocation(line: 1903, column: 9, scope: !3749, inlinedAt: !3709)
!3749 = !DILexicalBlockFile(scope: !1210, file: !1, discriminator: 1)
!3750 = !DILocation(line: 1903, column: 9, scope: !3751, inlinedAt: !3709)
!3751 = distinct !DILexicalBlock(scope: !1210, file: !1, line: 1903, column: 9)
!3752 = !DILocation(line: 1903, column: 9, scope: !1210, inlinedAt: !3709)
!3753 = !DILocation(line: 1903, column: 9, scope: !3754, inlinedAt: !3709)
!3754 = !DILexicalBlockFile(scope: !3751, file: !1, discriminator: 3)
!3755 = !DILocation(line: 1904, column: 15, scope: !1198, inlinedAt: !3709)
!3756 = !DILocation(line: 1877, column: 5, scope: !1183)
!3757 = !DILocation(line: 253, column: 29, scope: !1211)
!3758 = !DILocation(line: 253, column: 47, scope: !1211)
!3759 = !DILocation(line: 259, column: 34, scope: !1215, inlinedAt: !3760)
!3760 = distinct !DILocation(line: 255, column: 12, scope: !1211)
!3761 = !DILocation(line: 263, column: 28, scope: !1215, inlinedAt: !3760)
!3762 = !DILocation(line: 263, column: 47, scope: !1215, inlinedAt: !3760)
!3763 = !DILocation(line: 263, column: 12, scope: !1215, inlinedAt: !3760)
!3764 = !DILocation(line: 255, column: 5, scope: !1211)
!3765 = !DILocation(line: 294, column: 32, scope: !1218)
!3766 = !DILocation(line: 294, column: 50, scope: !1218)
!3767 = !DILocation(line: 300, column: 37, scope: !1222, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 296, column: 12, scope: !1218)
!3769 = !DILocation(line: 304, column: 5, scope: !1222, inlinedAt: !3768)
!3770 = !DILocation(line: 306, column: 5, scope: !1222, inlinedAt: !3768)
!3771 = !DILocation(line: 296, column: 5, scope: !1218)
!3772 = !DILocation(line: 333, column: 32, scope: !1225)
!3773 = !DILocation(line: 333, column: 50, scope: !1225)
!3774 = !DILocation(line: 339, column: 37, scope: !1229, inlinedAt: !3775)
!3775 = distinct !DILocation(line: 335, column: 12, scope: !1225)
!3776 = !DILocation(line: 188, column: 15, scope: !593, inlinedAt: !3777)
!3777 = distinct !DILocation(line: 343, column: 9, scope: !3778, inlinedAt: !3775)
!3778 = distinct !DILexicalBlock(scope: !1229, file: !1, line: 343, column: 9)
!3779 = !DILocation(line: 188, column: 10, scope: !593, inlinedAt: !3777)
!3780 = !DILocation(line: 189, column: 12, scope: !1708, inlinedAt: !3777)
!3781 = !DILocation(line: 197, column: 31, scope: !1710, inlinedAt: !3777)
!3782 = !DILocation(line: 189, column: 33, scope: !1708, inlinedAt: !3777)
!3783 = !DILocation(line: 189, column: 18, scope: !1708, inlinedAt: !3777)
!3784 = !DILocation(line: 191, column: 9, scope: !1715, inlinedAt: !3777)
!3785 = !DILocation(line: 191, column: 28, scope: !1715, inlinedAt: !3777)
!3786 = !DILocation(line: 191, column: 9, scope: !593, inlinedAt: !3777)
!3787 = !DILocation(line: 193, column: 22, scope: !593, inlinedAt: !3777)
!3788 = !DILocation(line: 195, column: 27, scope: !1711, inlinedAt: !3777)
!3789 = !DILocation(line: 195, column: 9, scope: !593, inlinedAt: !3777)
!3790 = !DILocation(line: 196, column: 28, scope: !1710, inlinedAt: !3777)
!3791 = !DILocation(line: 197, column: 9, scope: !1710, inlinedAt: !3777)
!3792 = !DILocation(line: 198, column: 5, scope: !1710, inlinedAt: !3777)
!3793 = !DILocation(line: 344, column: 25, scope: !3794, inlinedAt: !3775)
!3794 = distinct !DILexicalBlock(scope: !3778, file: !1, line: 343, column: 38)
!3795 = !DILocation(line: 344, column: 9, scope: !3794, inlinedAt: !3775)
!3796 = !DILocation(line: 346, column: 9, scope: !3794, inlinedAt: !3775)
!3797 = !DILocation(line: 349, column: 5, scope: !1229, inlinedAt: !3775)
!3798 = !DILocation(line: 350, column: 5, scope: !1229, inlinedAt: !3775)
!3799 = !DILocation(line: 335, column: 12, scope: !1225)
!3800 = !DILocation(line: 335, column: 5, scope: !1225)
!3801 = !DILocation(line: 2044, column: 37, scope: !1232)
!3802 = !DILocation(line: 2044, column: 55, scope: !1232)
!3803 = !DILocation(line: 2046, column: 15, scope: !1232)
!3804 = !DILocation(line: 2047, column: 5, scope: !1232)
!3805 = !DILocation(line: 2047, column: 15, scope: !1232)
!3806 = !DILocation(line: 2049, column: 10, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !1232, file: !1, line: 2049, column: 9)
!3808 = !DILocation(line: 2049, column: 9, scope: !1232)
!3809 = !DILocation(line: 2053, column: 56, scope: !1232)
!3810 = !DILocation(line: 2060, column: 42, scope: !1238, inlinedAt: !3811)
!3811 = distinct !DILocation(line: 2053, column: 20, scope: !1232)
!3812 = !DILocation(line: 1169, column: 29, scope: !1242, inlinedAt: !3813)
!3813 = distinct !DILocation(line: 2063, column: 12, scope: !1238, inlinedAt: !3811)
!3814 = !DILocation(line: 1152, column: 23, scope: !1150, inlinedAt: !3815)
!3815 = distinct !DILocation(line: 1171, column: 31, scope: !1242, inlinedAt: !3813)
!3816 = !DILocation(line: 1156, column: 14, scope: !2596, inlinedAt: !3815)
!3817 = !DILocation(line: 1156, column: 9, scope: !1150, inlinedAt: !3815)
!3818 = !DILocation(line: 1159, column: 14, scope: !2599, inlinedAt: !3815)
!3819 = !DILocation(line: 1154, column: 27, scope: !1150, inlinedAt: !3815)
!3820 = !DILocation(line: 1160, column: 16, scope: !2602, inlinedAt: !3815)
!3821 = !DILocation(line: 1160, column: 21, scope: !2602, inlinedAt: !3815)
!3822 = !DILocation(line: 1160, column: 13, scope: !2603, inlinedAt: !3815)
!3823 = !DILocation(line: 1162, column: 13, scope: !2610, inlinedAt: !3815)
!3824 = !DILocation(line: 1171, column: 31, scope: !1242, inlinedAt: !3813)
!3825 = !DILocation(line: 1162, column: 61, scope: !2610, inlinedAt: !3815)
!3826 = !DILocation(line: 1162, column: 13, scope: !2603, inlinedAt: !3815)
!3827 = !DILocation(line: 1159, column: 41, scope: !2604, inlinedAt: !3815)
!3828 = !DILocation(line: 1171, column: 27, scope: !1242, inlinedAt: !3813)
!3829 = !DILocation(line: 1174, column: 11, scope: !3830, inlinedAt: !3813)
!3830 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 1174, column: 9)
!3831 = !DILocation(line: 1174, column: 9, scope: !1242, inlinedAt: !3813)
!3832 = !DILocation(line: 1175, column: 22, scope: !3833, inlinedAt: !3813)
!3833 = distinct !DILexicalBlock(scope: !3830, file: !1, line: 1174, column: 20)
!3834 = !DILocation(line: 1175, column: 9, scope: !3833, inlinedAt: !3813)
!3835 = !DILocation(line: 1178, column: 9, scope: !3833, inlinedAt: !3813)
!3836 = !DILocation(line: 1180, column: 12, scope: !3837, inlinedAt: !3813)
!3837 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 1180, column: 9)
!3838 = !DILocation(line: 1180, column: 17, scope: !3837, inlinedAt: !3813)
!3839 = !DILocation(line: 1180, column: 9, scope: !1242, inlinedAt: !3813)
!3840 = !DILocation(line: 1181, column: 22, scope: !3841, inlinedAt: !3813)
!3841 = distinct !DILexicalBlock(scope: !3837, file: !1, line: 1180, column: 26)
!3842 = !DILocation(line: 1181, column: 9, scope: !3841, inlinedAt: !3813)
!3843 = !DILocation(line: 1184, column: 9, scope: !3841, inlinedAt: !3813)
!3844 = !DILocation(line: 1186, column: 15, scope: !1242, inlinedAt: !3813)
!3845 = !DILocation(line: 1172, column: 9, scope: !1242, inlinedAt: !3813)
!3846 = !DILocation(line: 1187, column: 14, scope: !3847, inlinedAt: !3813)
!3847 = distinct !DILexicalBlock(scope: !1242, file: !1, line: 1187, column: 9)
!3848 = !DILocation(line: 1188, column: 16, scope: !3847, inlinedAt: !3813)
!3849 = !DILocation(line: 1187, column: 9, scope: !1242, inlinedAt: !3813)
!3850 = !DILocation(line: 1189, column: 66, scope: !1242, inlinedAt: !3813)
!3851 = !DILocation(line: 1189, column: 12, scope: !1242, inlinedAt: !3813)
!3852 = !DILocation(line: 1189, column: 5, scope: !1242, inlinedAt: !3813)
!3853 = !DILocation(line: 2057, column: 1, scope: !1232)
!3854 = !DILocation(line: 2056, column: 5, scope: !1232)
!3855 = !DILocation(line: 2088, column: 37, scope: !1247)
!3856 = !DILocation(line: 2088, column: 55, scope: !1247)
!3857 = !DILocation(line: 2090, column: 15, scope: !1247)
!3858 = !DILocation(line: 2091, column: 5, scope: !1247)
!3859 = !DILocation(line: 2091, column: 15, scope: !1247)
!3860 = !DILocation(line: 2093, column: 10, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !1247, file: !1, line: 2093, column: 9)
!3862 = !DILocation(line: 2093, column: 9, scope: !1247)
!3863 = !DILocation(line: 2097, column: 56, scope: !1247)
!3864 = !DILocation(line: 2104, column: 42, scope: !1253, inlinedAt: !3865)
!3865 = distinct !DILocation(line: 2097, column: 20, scope: !1247)
!3866 = !DILocation(line: 1193, column: 29, scope: !1257, inlinedAt: !3867)
!3867 = distinct !DILocation(line: 2107, column: 12, scope: !1253, inlinedAt: !3865)
!3868 = !DILocation(line: 1152, column: 23, scope: !1150, inlinedAt: !3869)
!3869 = distinct !DILocation(line: 1195, column: 31, scope: !1257, inlinedAt: !3867)
!3870 = !DILocation(line: 1156, column: 14, scope: !2596, inlinedAt: !3869)
!3871 = !DILocation(line: 1156, column: 9, scope: !1150, inlinedAt: !3869)
!3872 = !DILocation(line: 1159, column: 14, scope: !2599, inlinedAt: !3869)
!3873 = !DILocation(line: 1154, column: 27, scope: !1150, inlinedAt: !3869)
!3874 = !DILocation(line: 1160, column: 16, scope: !2602, inlinedAt: !3869)
!3875 = !DILocation(line: 1160, column: 21, scope: !2602, inlinedAt: !3869)
!3876 = !DILocation(line: 1160, column: 13, scope: !2603, inlinedAt: !3869)
!3877 = !DILocation(line: 1162, column: 13, scope: !2610, inlinedAt: !3869)
!3878 = !DILocation(line: 1195, column: 31, scope: !1257, inlinedAt: !3867)
!3879 = !DILocation(line: 1162, column: 61, scope: !2610, inlinedAt: !3869)
!3880 = !DILocation(line: 1162, column: 13, scope: !2603, inlinedAt: !3869)
!3881 = !DILocation(line: 1159, column: 41, scope: !2604, inlinedAt: !3869)
!3882 = !DILocation(line: 1195, column: 27, scope: !1257, inlinedAt: !3867)
!3883 = !DILocation(line: 1198, column: 11, scope: !3884, inlinedAt: !3867)
!3884 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 1198, column: 9)
!3885 = !DILocation(line: 1198, column: 9, scope: !1257, inlinedAt: !3867)
!3886 = !DILocation(line: 1199, column: 22, scope: !3887, inlinedAt: !3867)
!3887 = distinct !DILexicalBlock(scope: !3884, file: !1, line: 1198, column: 20)
!3888 = !DILocation(line: 1199, column: 9, scope: !3887, inlinedAt: !3867)
!3889 = !DILocation(line: 1202, column: 9, scope: !3887, inlinedAt: !3867)
!3890 = !DILocation(line: 1205, column: 15, scope: !1257, inlinedAt: !3867)
!3891 = !DILocation(line: 1196, column: 9, scope: !1257, inlinedAt: !3867)
!3892 = !DILocation(line: 1207, column: 14, scope: !3893, inlinedAt: !3867)
!3893 = distinct !DILexicalBlock(scope: !1257, file: !1, line: 1207, column: 9)
!3894 = !DILocation(line: 1207, column: 9, scope: !1257, inlinedAt: !3867)
!3895 = !DILocation(line: 1208, column: 9, scope: !3893, inlinedAt: !3867)
!3896 = !DILocation(line: 1210, column: 9, scope: !3893, inlinedAt: !3867)
!3897 = !DILocation(line: 2101, column: 1, scope: !1247)
!3898 = !DILocation(line: 2100, column: 5, scope: !1247)
!3899 = !DILocation(line: 1932, column: 32, scope: !1262)
!3900 = !DILocation(line: 1932, column: 50, scope: !1262)
!3901 = !DILocation(line: 1934, column: 15, scope: !1262)
!3902 = !DILocation(line: 1935, column: 5, scope: !1262)
!3903 = !DILocation(line: 1935, column: 15, scope: !1262)
!3904 = !DILocation(line: 1937, column: 10, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !1262, file: !1, line: 1937, column: 9)
!3906 = !DILocation(line: 1937, column: 9, scope: !1262)
!3907 = !DILocation(line: 1941, column: 51, scope: !1262)
!3908 = !DILocation(line: 1948, column: 37, scope: !1268, inlinedAt: !3909)
!3909 = distinct !DILocation(line: 1941, column: 20, scope: !1262)
!3910 = !DILocation(line: 1110, column: 24, scope: !1276, inlinedAt: !3911)
!3911 = distinct !DILocation(line: 1954, column: 11, scope: !1268, inlinedAt: !3909)
!3912 = !DILocation(line: 1115, column: 11, scope: !1276, inlinedAt: !3911)
!3913 = !DILocation(line: 1113, column: 15, scope: !1276, inlinedAt: !3911)
!3914 = !DILocation(line: 1116, column: 9, scope: !3915, inlinedAt: !3911)
!3915 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 1116, column: 9)
!3916 = !DILocation(line: 1116, column: 9, scope: !1276, inlinedAt: !3911)
!3917 = !DILocation(line: 1118, column: 13, scope: !3918, inlinedAt: !3911)
!3918 = distinct !DILexicalBlock(scope: !1276, file: !1, line: 1118, column: 9)
!3919 = !DILocation(line: 1118, column: 9, scope: !1276, inlinedAt: !3911)
!3920 = !DILocation(line: 1121, column: 14, scope: !1284, inlinedAt: !3911)
!3921 = !DILocation(line: 1112, column: 22, scope: !1276, inlinedAt: !3911)
!3922 = !DILocation(line: 1121, column: 35, scope: !1283, inlinedAt: !3911)
!3923 = !DILocation(line: 1121, column: 40, scope: !1283, inlinedAt: !3911)
!3924 = !DILocation(line: 1121, column: 5, scope: !1284, inlinedAt: !3911)
!3925 = !DILocation(line: 1124, column: 13, scope: !1289, inlinedAt: !3911)
!3926 = !DILocation(line: 1954, column: 11, scope: !1268, inlinedAt: !3909)
!3927 = !DILocation(line: 1124, column: 61, scope: !1289, inlinedAt: !3911)
!3928 = !DILocation(line: 1124, column: 13, scope: !1282, inlinedAt: !3911)
!3929 = !DILocation(line: 1125, column: 20, scope: !3930, inlinedAt: !3911)
!3930 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 1125, column: 17)
!3931 = !DILocation(line: 1125, column: 29, scope: !3930, inlinedAt: !3911)
!3932 = !DILocation(line: 1125, column: 17, scope: !1288, inlinedAt: !3911)
!3933 = !DILocation(line: 1126, column: 30, scope: !3934, inlinedAt: !3911)
!3934 = distinct !DILexicalBlock(scope: !3930, file: !1, line: 1125, column: 38)
!3935 = !DILocation(line: 1126, column: 17, scope: !3934, inlinedAt: !3911)
!3936 = !DILocation(line: 1129, column: 17, scope: !3934, inlinedAt: !3911)
!3937 = !DILocation(line: 1131, column: 19, scope: !1288, inlinedAt: !3911)
!3938 = !DILocation(line: 1122, column: 19, scope: !1282, inlinedAt: !3911)
!3939 = !DILocation(line: 1132, column: 21, scope: !3940, inlinedAt: !3911)
!3940 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 1132, column: 17)
!3941 = !DILocation(line: 1132, column: 17, scope: !1288, inlinedAt: !3911)
!3942 = !DILocation(line: 1135, column: 19, scope: !1288, inlinedAt: !3911)
!3943 = !DILocation(line: 1123, column: 22, scope: !1282, inlinedAt: !3911)
!3944 = !DILocation(line: 1136, column: 37, scope: !1288, inlinedAt: !3911)
!3945 = !DILocation(line: 1136, column: 25, scope: !1288, inlinedAt: !3911)
!3946 = !DILocation(line: 1136, column: 32, scope: !1288, inlinedAt: !3911)
!3947 = !DILocation(line: 1137, column: 17, scope: !3948, inlinedAt: !3911)
!3948 = distinct !DILexicalBlock(scope: !1288, file: !1, line: 1137, column: 17)
!3949 = !DILocation(line: 1137, column: 65, scope: !3948, inlinedAt: !3911)
!3950 = !DILocation(line: 1137, column: 17, scope: !1288, inlinedAt: !3911)
!3951 = !DILocation(line: 1141, column: 13, scope: !3952, inlinedAt: !3911)
!3952 = !DILexicalBlockFile(scope: !1287, file: !1, discriminator: 1)
!3953 = !DILocation(line: 1141, column: 13, scope: !3954, inlinedAt: !3911)
!3954 = distinct !DILexicalBlock(scope: !1287, file: !1, line: 1141, column: 13)
!3955 = !DILocation(line: 1141, column: 13, scope: !1287, inlinedAt: !3911)
!3956 = !DILocation(line: 1141, column: 13, scope: !3957, inlinedAt: !3911)
!3957 = !DILexicalBlockFile(scope: !3954, file: !1, discriminator: 3)
!3958 = !DILocation(line: 1121, column: 50, scope: !1283, inlinedAt: !3911)
!3959 = !DILocation(line: 1958, column: 9, scope: !3960, inlinedAt: !3909)
!3960 = distinct !DILexicalBlock(scope: !3961, file: !1, line: 1957, column: 19)
!3961 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 1957, column: 9)
!3962 = !DILocation(line: 1959, column: 9, scope: !3960, inlinedAt: !3909)
!3963 = !DILocation(line: 1961, column: 9, scope: !1268, inlinedAt: !3909)
!3964 = !DILocation(line: 1952, column: 15, scope: !1268, inlinedAt: !3909)
!3965 = !DILocation(line: 1962, column: 5, scope: !3966, inlinedAt: !3909)
!3966 = !DILexicalBlockFile(scope: !1275, file: !1, discriminator: 1)
!3967 = !DILocation(line: 1962, column: 5, scope: !3968, inlinedAt: !3909)
!3968 = distinct !DILexicalBlock(scope: !1275, file: !1, line: 1962, column: 5)
!3969 = !DILocation(line: 1962, column: 5, scope: !1275, inlinedAt: !3909)
!3970 = !DILocation(line: 1962, column: 5, scope: !3971, inlinedAt: !3909)
!3971 = !DILexicalBlockFile(scope: !3968, file: !1, discriminator: 2)
!3972 = !DILocation(line: 1945, column: 1, scope: !1262)
!3973 = !DILocation(line: 1944, column: 5, scope: !1262)
!3974 = !DILocation(line: 1988, column: 31, scope: !1290)
!3975 = !DILocation(line: 1988, column: 49, scope: !1290)
!3976 = !DILocation(line: 1990, column: 15, scope: !1290)
!3977 = !DILocation(line: 1991, column: 5, scope: !1290)
!3978 = !DILocation(line: 1991, column: 15, scope: !1290)
!3979 = !DILocation(line: 1993, column: 10, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !1290, file: !1, line: 1993, column: 9)
!3981 = !DILocation(line: 1993, column: 9, scope: !1290)
!3982 = !DILocation(line: 1997, column: 50, scope: !1290)
!3983 = !DILocation(line: 2004, column: 36, scope: !1296, inlinedAt: !3984)
!3984 = distinct !DILocation(line: 1997, column: 20, scope: !1290)
!3985 = !DILocation(line: 2010, column: 11, scope: !1296, inlinedAt: !3984)
!3986 = !DILocation(line: 2007, column: 9, scope: !1296, inlinedAt: !3984)
!3987 = !DILocation(line: 2011, column: 13, scope: !3988, inlinedAt: !3984)
!3988 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 2011, column: 9)
!3989 = !DILocation(line: 2011, column: 9, scope: !1296, inlinedAt: !3984)
!3990 = !DILocation(line: 2013, column: 13, scope: !3991, inlinedAt: !3984)
!3991 = distinct !DILexicalBlock(scope: !1296, file: !1, line: 2013, column: 9)
!3992 = !DILocation(line: 2013, column: 9, scope: !1296, inlinedAt: !3984)
!3993 = !DILocation(line: 2014, column: 9, scope: !3994, inlinedAt: !3984)
!3994 = distinct !DILexicalBlock(scope: !3991, file: !1, line: 2013, column: 19)
!3995 = !DILocation(line: 2015, column: 9, scope: !3994, inlinedAt: !3984)
!3996 = !DILocation(line: 2017, column: 9, scope: !1296, inlinedAt: !3984)
!3997 = !DILocation(line: 2008, column: 15, scope: !1296, inlinedAt: !3984)
!3998 = !DILocation(line: 2018, column: 5, scope: !3999, inlinedAt: !3984)
!3999 = !DILexicalBlockFile(scope: !1303, file: !1, discriminator: 1)
!4000 = !DILocation(line: 2018, column: 5, scope: !4001, inlinedAt: !3984)
!4001 = distinct !DILexicalBlock(scope: !1303, file: !1, line: 2018, column: 5)
!4002 = !DILocation(line: 2018, column: 5, scope: !1303, inlinedAt: !3984)
!4003 = !DILocation(line: 2018, column: 5, scope: !4004, inlinedAt: !3984)
!4004 = !DILexicalBlockFile(scope: !4001, file: !1, discriminator: 2)
!4005 = !DILocation(line: 2001, column: 1, scope: !1290)
!4006 = !DILocation(line: 2000, column: 5, scope: !1290)
!4007 = !DILocation(line: 2132, column: 30, scope: !1304)
!4008 = !DILocation(line: 2132, column: 48, scope: !1304)
!4009 = !DILocation(line: 2134, column: 15, scope: !1304)
!4010 = !DILocation(line: 2135, column: 5, scope: !1304)
!4011 = !DILocation(line: 2135, column: 15, scope: !1304)
!4012 = !DILocation(line: 2137, column: 10, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !1304, file: !1, line: 2137, column: 9)
!4014 = !DILocation(line: 2137, column: 9, scope: !1304)
!4015 = !DILocation(line: 2141, column: 49, scope: !1304)
!4016 = !DILocation(line: 2148, column: 35, scope: !1310, inlinedAt: !4017)
!4017 = distinct !DILocation(line: 2141, column: 20, scope: !1304)
!4018 = !DILocation(line: 1016, column: 22, scope: !1314, inlinedAt: !4019)
!4019 = distinct !DILocation(line: 2151, column: 28, scope: !1310, inlinedAt: !4017)
!4020 = !DILocation(line: 1018, column: 9, scope: !1314, inlinedAt: !4019)
!4021 = !DILocation(line: 1019, column: 17, scope: !4022, inlinedAt: !4019)
!4022 = distinct !DILexicalBlock(scope: !4023, file: !1, line: 1019, column: 5)
!4023 = distinct !DILexicalBlock(scope: !1314, file: !1, line: 1019, column: 5)
!4024 = !DILocation(line: 1019, column: 37, scope: !4022, inlinedAt: !4019)
!4025 = !DILocation(line: 1019, column: 42, scope: !4022, inlinedAt: !4019)
!4026 = !DILocation(line: 1019, column: 5, scope: !4023, inlinedAt: !4019)
!4027 = !DILocation(line: 1020, column: 15, scope: !4028, inlinedAt: !4019)
!4028 = distinct !DILexicalBlock(scope: !4022, file: !1, line: 1019, column: 56)
!4029 = !DILocation(line: 2151, column: 28, scope: !1310, inlinedAt: !4017)
!4030 = !DILocation(line: 1018, column: 12, scope: !1314, inlinedAt: !4019)
!4031 = !DILocation(line: 1021, column: 17, scope: !4032, inlinedAt: !4019)
!4032 = distinct !DILexicalBlock(scope: !4028, file: !1, line: 1021, column: 13)
!4033 = !DILocation(line: 1019, column: 52, scope: !4022, inlinedAt: !4019)
!4034 = !DILocation(line: 1021, column: 13, scope: !4028, inlinedAt: !4019)
!4035 = !DILocation(line: 1022, column: 17, scope: !4036, inlinedAt: !4019)
!4036 = distinct !DILexicalBlock(scope: !4037, file: !1, line: 1022, column: 17)
!4037 = distinct !DILexicalBlock(scope: !4032, file: !1, line: 1021, column: 23)
!4038 = !DILocation(line: 1022, column: 37, scope: !4036, inlinedAt: !4019)
!4039 = !DILocation(line: 1022, column: 46, scope: !4036, inlinedAt: !4019)
!4040 = !DILocation(line: 1023, column: 17, scope: !4036, inlinedAt: !4019)
!4041 = !DILocation(line: 2151, column: 12, scope: !1310, inlinedAt: !4017)
!4042 = !DILocation(line: 2141, column: 20, scope: !1304)
!4043 = !DILocation(line: 2141, column: 5, scope: !1304)
!4044 = !DILocation(line: 2145, column: 1, scope: !1304)
!4045 = !DILocation(line: 2144, column: 5, scope: !1304)
!4046 = !DILocation(line: 2176, column: 29, scope: !1319)
!4047 = !DILocation(line: 2176, column: 47, scope: !1319)
!4048 = !DILocation(line: 2178, column: 15, scope: !1319)
!4049 = !DILocation(line: 2179, column: 5, scope: !1319)
!4050 = !DILocation(line: 2179, column: 15, scope: !1319)
!4051 = !DILocation(line: 2181, column: 10, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !1319, file: !1, line: 2181, column: 9)
!4053 = !DILocation(line: 2181, column: 9, scope: !1319)
!4054 = !DILocation(line: 2185, column: 48, scope: !1319)
!4055 = !DILocation(line: 2192, column: 34, scope: !1325, inlinedAt: !4056)
!4056 = distinct !DILocation(line: 2185, column: 20, scope: !1319)
!4057 = !DILocation(line: 1152, column: 23, scope: !1150, inlinedAt: !4058)
!4058 = distinct !DILocation(line: 2197, column: 9, scope: !1325, inlinedAt: !4056)
!4059 = !DILocation(line: 1156, column: 14, scope: !2596, inlinedAt: !4058)
!4060 = !DILocation(line: 1156, column: 9, scope: !1150, inlinedAt: !4058)
!4061 = !DILocation(line: 1159, column: 14, scope: !2599, inlinedAt: !4058)
!4062 = !DILocation(line: 1154, column: 27, scope: !1150, inlinedAt: !4058)
!4063 = !DILocation(line: 1160, column: 16, scope: !2602, inlinedAt: !4058)
!4064 = !DILocation(line: 1160, column: 21, scope: !2602, inlinedAt: !4058)
!4065 = !DILocation(line: 1160, column: 13, scope: !2603, inlinedAt: !4058)
!4066 = !DILocation(line: 1162, column: 13, scope: !2610, inlinedAt: !4058)
!4067 = !DILocation(line: 2197, column: 9, scope: !1325, inlinedAt: !4056)
!4068 = !DILocation(line: 1162, column: 61, scope: !2610, inlinedAt: !4058)
!4069 = !DILocation(line: 1162, column: 13, scope: !2603, inlinedAt: !4058)
!4070 = !DILocation(line: 1159, column: 41, scope: !2604, inlinedAt: !4058)
!4071 = !DILocation(line: 2195, column: 27, scope: !1325, inlinedAt: !4056)
!4072 = !DILocation(line: 2198, column: 38, scope: !1325, inlinedAt: !4056)
!4073 = !DILocation(line: 2198, column: 36, scope: !1325, inlinedAt: !4056)
!4074 = !DILocation(line: 2198, column: 55, scope: !1325, inlinedAt: !4056)
!4075 = !DILocation(line: 2198, column: 12, scope: !1325, inlinedAt: !4056)
!4076 = !DILocation(line: 2185, column: 20, scope: !1319)
!4077 = !DILocation(line: 2185, column: 5, scope: !1319)
!4078 = !DILocation(line: 2189, column: 1, scope: !1319)
!4079 = !DILocation(line: 2188, column: 5, scope: !1319)
!4080 = !DILocation(line: 2227, column: 32, scope: !1330)
!4081 = !DILocation(line: 2227, column: 50, scope: !1330)
!4082 = !DILocation(line: 2229, column: 15, scope: !1330)
!4083 = !DILocation(line: 2230, column: 5, scope: !1330)
!4084 = !DILocation(line: 2231, column: 5, scope: !1330)
!4085 = !DILocation(line: 2232, column: 5, scope: !1330)
!4086 = !DILocation(line: 2232, column: 15, scope: !1330)
!4087 = !DILocation(line: 2230, column: 15, scope: !1330)
!4088 = !DILocation(line: 2231, column: 15, scope: !1330)
!4089 = !DILocation(line: 2234, column: 10, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !1330, file: !1, line: 2234, column: 9)
!4091 = !DILocation(line: 2234, column: 9, scope: !1330)
!4092 = !DILocation(line: 2238, column: 51, scope: !1330)
!4093 = !DILocation(line: 2238, column: 57, scope: !1330)
!4094 = !DILocation(line: 2238, column: 63, scope: !1330)
!4095 = !DILocation(line: 2245, column: 37, scope: !1338, inlinedAt: !4096)
!4096 = distinct !DILocation(line: 2238, column: 20, scope: !1330)
!4097 = !DILocation(line: 2251, column: 14, scope: !1353, inlinedAt: !4096)
!4098 = !DILocation(line: 2251, column: 9, scope: !1338, inlinedAt: !4096)
!4099 = !DILocation(line: 2252, column: 14, scope: !1352, inlinedAt: !4096)
!4100 = !DILocation(line: 2249, column: 11, scope: !1338, inlinedAt: !4096)
!4101 = !DILocation(line: 2253, column: 16, scope: !1351, inlinedAt: !4096)
!4102 = !DILocation(line: 2253, column: 13, scope: !1352, inlinedAt: !4096)
!4103 = !DILocation(line: 2254, column: 13, scope: !4104, inlinedAt: !4096)
!4104 = distinct !DILexicalBlock(scope: !1349, file: !1, line: 2254, column: 13)
!4105 = !DILocation(line: 2254, column: 13, scope: !1349, inlinedAt: !4096)
!4106 = !DILocation(line: 2254, column: 13, scope: !4107, inlinedAt: !4096)
!4107 = !DILexicalBlockFile(scope: !4104, file: !1, discriminator: 3)
!4108 = !DILocation(line: 2238, column: 20, scope: !1330)
!4109 = !DILocation(line: 2255, column: 18, scope: !4110, inlinedAt: !4096)
!4110 = distinct !DILexicalBlock(scope: !1350, file: !1, line: 2255, column: 17)
!4111 = !DILocation(line: 2255, column: 17, scope: !1350, inlinedAt: !4096)
!4112 = !DILocation(line: 2256, column: 36, scope: !4110, inlinedAt: !4096)
!4113 = !DILocation(line: 2256, column: 17, scope: !4110, inlinedAt: !4096)
!4114 = !DILocation(line: 2262, column: 11, scope: !1338, inlinedAt: !4096)
!4115 = !DILocation(line: 2248, column: 15, scope: !1338, inlinedAt: !4096)
!4116 = !DILocation(line: 2263, column: 5, scope: !4117, inlinedAt: !4096)
!4117 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 2263, column: 5)
!4118 = !DILocation(line: 2263, column: 5, scope: !1355, inlinedAt: !4096)
!4119 = !DILocation(line: 2263, column: 5, scope: !4120, inlinedAt: !4096)
!4120 = !DILexicalBlockFile(scope: !4117, file: !1, discriminator: 3)
!4121 = !DILocation(line: 2264, column: 9, scope: !4122, inlinedAt: !4096)
!4122 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 2264, column: 9)
!4123 = !DILocation(line: 2264, column: 9, scope: !1338, inlinedAt: !4096)
!4124 = !DILocation(line: 2265, column: 9, scope: !4122, inlinedAt: !4096)
!4125 = !DILocation(line: 2242, column: 1, scope: !1330)
!4126 = !DILocation(line: 2241, column: 5, scope: !1330)
!4127 = !DILocation(line: 982, column: 36, scope: !1356)
!4128 = !DILocation(line: 982, column: 54, scope: !1356)
!4129 = !DILocation(line: 984, column: 15, scope: !1356)
!4130 = !DILocation(line: 985, column: 5, scope: !1356)
!4131 = !DILocation(line: 986, column: 5, scope: !1356)
!4132 = !DILocation(line: 985, column: 19, scope: !1356)
!4133 = !DILocation(line: 986, column: 15, scope: !1356)
!4134 = !DILocation(line: 988, column: 10, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !1356, file: !1, line: 988, column: 9)
!4136 = !DILocation(line: 988, column: 9, scope: !1356)
!4137 = !DILocation(line: 992, column: 55, scope: !1356)
!4138 = !DILocation(line: 992, column: 61, scope: !1356)
!4139 = !DILocation(line: 999, column: 41, scope: !1363, inlinedAt: !4140)
!4140 = distinct !DILocation(line: 992, column: 20, scope: !1356)
!4141 = !DILocation(line: 938, column: 38, scope: !1370, inlinedAt: !4142)
!4142 = distinct !DILocation(line: 1003, column: 5, scope: !1363, inlinedAt: !4140)
!4143 = !DILocation(line: 938, column: 52, scope: !1370, inlinedAt: !4142)
!4144 = !DILocation(line: 942, column: 31, scope: !4145, inlinedAt: !4142)
!4145 = distinct !DILexicalBlock(scope: !1370, file: !1, line: 942, column: 9)
!4146 = !DILocation(line: 942, column: 9, scope: !4145, inlinedAt: !4142)
!4147 = !DILocation(line: 942, column: 53, scope: !4145, inlinedAt: !4142)
!4148 = !DILocation(line: 942, column: 9, scope: !1370, inlinedAt: !4142)
!4149 = !DILocation(line: 945, column: 19, scope: !1370, inlinedAt: !4142)
!4150 = !DILocation(line: 940, column: 15, scope: !1370, inlinedAt: !4142)
!4151 = !DILocation(line: 946, column: 5, scope: !1370, inlinedAt: !4142)
!4152 = !DILocation(line: 947, column: 5, scope: !1370, inlinedAt: !4142)
!4153 = !DILocation(line: 948, column: 5, scope: !4154, inlinedAt: !4142)
!4154 = !DILexicalBlockFile(scope: !1378, file: !1, discriminator: 1)
!4155 = !DILocation(line: 948, column: 5, scope: !4156, inlinedAt: !4142)
!4156 = distinct !DILexicalBlock(scope: !1378, file: !1, line: 948, column: 5)
!4157 = !DILocation(line: 948, column: 5, scope: !1378, inlinedAt: !4142)
!4158 = !DILocation(line: 948, column: 5, scope: !4159, inlinedAt: !4142)
!4159 = !DILexicalBlockFile(scope: !4156, file: !1, discriminator: 3)
!4160 = !DILocation(line: 1003, column: 5, scope: !1363, inlinedAt: !4140)
!4161 = !DILocation(line: 1005, column: 5, scope: !1363, inlinedAt: !4140)
!4162 = !DILocation(line: 992, column: 5, scope: !1356)
!4163 = !DILocation(line: 996, column: 1, scope: !1356)
!4164 = !DILocation(line: 995, column: 5, scope: !1356)
!4165 = !DILocation(line: 914, column: 37, scope: !1379)
!4166 = !DILocation(line: 914, column: 51, scope: !1379)
!4167 = !DILocation(line: 914, column: 70, scope: !1379)
!4168 = !DILocation(line: 919, column: 31, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 919, column: 9)
!4170 = !DILocation(line: 919, column: 9, scope: !4169)
!4171 = !DILocation(line: 919, column: 9, scope: !1379)
!4172 = !DILocation(line: 922, column: 15, scope: !1379)
!4173 = !DILocation(line: 916, column: 27, scope: !1379)
!4174 = !DILocation(line: 923, column: 21, scope: !1379)
!4175 = !DILocation(line: 924, column: 5, scope: !1379)
!4176 = !DILocation(line: 925, column: 5, scope: !4177)
!4177 = !DILexicalBlockFile(scope: !1391, file: !1, discriminator: 1)
!4178 = !DILocation(line: 925, column: 5, scope: !4179)
!4179 = distinct !DILexicalBlock(scope: !1391, file: !1, line: 925, column: 5)
!4180 = !DILocation(line: 925, column: 5, scope: !1391)
!4181 = !DILocation(line: 925, column: 5, scope: !4182)
!4182 = !DILexicalBlockFile(scope: !4179, file: !1, discriminator: 3)
!4183 = !DILocation(line: 927, column: 21, scope: !1379)
!4184 = !{!2463, !1495, i64 48}
!4185 = !DILocation(line: 916, column: 15, scope: !1379)
!4186 = !DILocation(line: 928, column: 9, scope: !1379)
!4187 = !DILocation(line: 917, column: 19, scope: !1379)
!4188 = !DILocation(line: 917, column: 16, scope: !1379)
!4189 = !DILocation(line: 929, column: 19, scope: !4190)
!4190 = distinct !DILexicalBlock(scope: !4191, file: !1, line: 929, column: 5)
!4191 = distinct !DILexicalBlock(scope: !1379, file: !1, line: 929, column: 5)
!4192 = !DILocation(line: 929, column: 5, scope: !4191)
!4193 = !DILocation(line: 930, column: 15, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4190, file: !1, line: 929, column: 29)
!4195 = !DILocation(line: 931, column: 13, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4194, file: !1, line: 931, column: 13)
!4197 = !DILocation(line: 931, column: 13, scope: !4194)
!4198 = !DILocation(line: 932, column: 35, scope: !4196)
!4199 = !DILocation(line: 932, column: 13, scope: !4196)
!4200 = !DILocation(line: 929, column: 25, scope: !4190)
!4201 = !DILocation(line: 935, column: 1, scope: !1379)
