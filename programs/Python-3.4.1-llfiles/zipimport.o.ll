; ModuleID = 'zipimport.o.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._object = type { i64, %struct._typeobject* }
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
%struct.st_zip_searchorder = type { [14 x i8], i32 }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._Py_atomic_address = type { i8* }
%struct._zipimporter = type { %struct._object, %struct._object*, %struct._object*, %struct._object* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._frame = type opaque
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.PyCompilerFlags = type { i32 }

@ZipImporter_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct._zipimporter*)* @zipimporter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._zipimporter*)* @zipimporter_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([475 x i8], [475 x i8]* @zipimporter_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @zipimporter_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([9 x %struct.PyMethodDef], [9 x %struct.PyMethodDef]* @zipimporter_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @zipimporter_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._zipimporter*, %struct._object*, %struct._object*)* @zipimporter_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@zip_searchorder = internal global [7 x %struct.st_zip_searchorder] [%struct.st_zip_searchorder { [14 x i8] c"/__init__.pyc\00", i32 3 }, %struct.st_zip_searchorder { [14 x i8] c"/__init__.pyo\00", i32 3 }, %struct.st_zip_searchorder { [14 x i8] c"/__init__.py\00\00", i32 2 }, %struct.st_zip_searchorder { [14 x i8] c".pyc\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.st_zip_searchorder { [14 x i8] c".pyo\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.st_zip_searchorder { [14 x i8] c".py\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.st_zip_searchorder zeroinitializer], align 16
@Py_OptimizeFlag = external global i32, align 4
@zipimportmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([592 x i8], [592 x i8]* @zipimport_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* null, i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [25 x i8] c"zipimport.ZipImportError\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@ZipImportError = internal unnamed_addr global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ZipImportError\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"zipimporter\00", align 1
@zip_directory_cache = internal unnamed_addr global %struct._object* null, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"_zip_directory_cache\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"zipimport.zipimporter\00", align 1
@zipimporter_doc = internal global [475 x i8] c"zipimporter(archivepath) -> zipimporter object\0A\0ACreate a new zipimporter instance. 'archivepath' must be a path to\0Aa zipfile, or to a specific path inside a zipfile. For example, it can be\0A'/tmp/myimport.zip', or '/tmp/myimport.zip/mydirectory', if mydirectory is a\0Avalid directory inside the archive.\0A\0A'ZipImportError is raised if 'archivepath' doesn't point to a valid Zip\0Aarchive.\0A\0AThe 'archive' attribute of zipimporter objects contains the name of the\0Azipfile targeted.\00", align 16
@zipimporter_methods = internal global [9 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_find_module, i32 1, i8* getelementptr inbounds ([347 x i8], [347 x i8]* @doc_find_module, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_find_loader, i32 1, i8* getelementptr inbounds ([440 x i8], [440 x i8]* @doc_find_loader, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_load_module, i32 1, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @doc_load_module, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_data, i32 1, i8* getelementptr inbounds ([130 x i8], [130 x i8]* @doc_get_data, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_code, i32 1, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @doc_get_code, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_source, i32 1, i8* getelementptr inbounds ([221 x i8], [221 x i8]* @doc_get_source, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_filename, i32 1, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @doc_get_filename, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @zipimporter_is_package, i32 1, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @doc_is_package, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@zipimporter_members = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.55, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@.str.5 = private unnamed_addr constant [27 x i8] c"<zipimporter object \22???\22>\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"<zipimporter object \22%U%c%U\22>\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"<zipimporter object \22%U\22>\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"find_module\00", align 1
@doc_find_module = internal global [347 x i8] c"find_module(fullname, path=None) -> self or None.\0A\0ASearch for a module specified by 'fullname'. 'fullname' must be the\0Afully qualified (dotted) module name. It returns the zipimporter\0Ainstance itself if the module was found, or None if it wasn't.\0AThe optional 'path' argument is ignored -- it's there for compatibility\0Awith the importer protocol.\00", align 16
@.str.9 = private unnamed_addr constant [12 x i8] c"find_loader\00", align 1
@doc_find_loader = internal global [440 x i8] c"find_loader(fullname, path=None) -> self, str or None.\0A\0ASearch for a module specified by 'fullname'. 'fullname' must be the\0Afully qualified (dotted) module name. It returns the zipimporter\0Ainstance itself if the module was found, a string containing the\0Afull path name if it's possibly a portion of a namespace package,\0Aor None otherwise. The optional 'path' argument is ignored -- it's\0A there for compatibility with the importer protocol.\00", align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"load_module\00", align 1
@doc_load_module = internal global [213 x i8] c"load_module(fullname) -> module.\0A\0ALoad the module specified by 'fullname'. 'fullname' must be the\0Afully qualified (dotted) module name. It returns the imported\0Amodule, or raises ZipImportError if it wasn't found.\00", align 16
@.str.11 = private unnamed_addr constant [9 x i8] c"get_data\00", align 1
@doc_get_data = internal global [130 x i8] c"get_data(pathname) -> string with file data.\0A\0AReturn the data associated with 'pathname'. Raise IOError if\0Athe file wasn't found.\00", align 16
@.str.12 = private unnamed_addr constant [9 x i8] c"get_code\00", align 1
@doc_get_code = internal global [139 x i8] c"get_code(fullname) -> code object.\0A\0AReturn the code object for the specified module. Raise ZipImportError\0Aif the module couldn't be found.\00", align 16
@.str.13 = private unnamed_addr constant [11 x i8] c"get_source\00", align 1
@doc_get_source = internal global [221 x i8] c"get_source(fullname) -> source string.\0A\0AReturn the source code for the specified module. Raise ZipImportError\0Aif the module couldn't be found, return None if the archive does\0Acontain the module, but has no source for it.\00", align 16
@.str.14 = private unnamed_addr constant [13 x i8] c"get_filename\00", align 1
@doc_get_filename = internal global [90 x i8] c"get_filename(fullname) -> filename string.\0A\0AReturn the filename for the specified module.\00", align 16
@.str.15 = private unnamed_addr constant [11 x i8] c"is_package\00", align 1
@doc_is_package = internal global [147 x i8] c"is_package(fullname) -> bool.\0A\0AReturn True if the module specified by fullname is a package.\0ARaise ZipImportError if the module couldn't be found.\00", align 16
@.str.16 = private unnamed_addr constant [28 x i8] c"U|O:zipimporter.find_module\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.17 = private unnamed_addr constant [9 x i8] c"%U%c%U%U\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"%U%s\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"%U%U%c\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"O[]\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"O[O]\00", align 1
@.str.22 = private unnamed_addr constant [26 x i8] c"U:zipimporter.load_module\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"__loader__\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"[N]\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"__path__\00", align 1
@Py_VerboseFlag = external global i32, align 4
@.str.26 = private unnamed_addr constant [32 x i8] c"import %U # loaded from Zip %U\0A\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"# trying %U%c%U\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"can't find module %R\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"Olllllll\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@PyExc_IOError = external global %struct._object*, align 8
@.str.31 = private unnamed_addr constant [32 x i8] c"zipimport: can not open file %U\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"can't read Zip file: %R\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"bad local file header in %U\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"zipimport: can't read data\00", align 1
@.str.35 = private unnamed_addr constant [42 x i8] c"can't decompress data; zlib not available\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"Oi\00", align 1
@get_decompress_func.importing_zlib = internal unnamed_addr global i1 false
@get_decompress_func.PyId_decompress = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0), %struct._object* null }, align 8
@.str.37 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.38 = private unnamed_addr constant [5 x i8] c"zlib\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"# zipimport: zlib %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.41 = private unnamed_addr constant [12 x i8] c"UNAVAILABLE\00", align 1
@.str.42 = private unnamed_addr constant [13 x i8] c"bad pyc data\00", align 1
@.str.43 = private unnamed_addr constant [20 x i8] c"# %R has bad magic\0A\00", align 1
@.str.44 = private unnamed_addr constant [20 x i8] c"# %R has bad mtime\0A\00", align 1
@PyCode_Type = external global %struct._typeobject, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.45 = private unnamed_addr constant [40 x i8] c"compiled module %R is not a code object\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"\0A\00\00", align 1
@PyExc_MemoryError = external global %struct._object*, align 8
@.str.47 = private unnamed_addr constant [47 x i8] c"zipimport: no memory to allocate source buffer\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"U:zipimporter.get_data\00", align 1
@.str.49 = private unnamed_addr constant [23 x i8] c"U:zipimporter.get_code\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"U:zipimporter.get_source\00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"%U%c__init__.py\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"%U.py\00", align 1
@.str.53 = private unnamed_addr constant [27 x i8] c"U:zipimporter.get_filename\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"U:zipimporter.is_package\00", align 1
@.str.55 = private unnamed_addr constant [8 x i8] c"archive\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"_files\00", align 1
@.str.58 = private unnamed_addr constant [14 x i8] c"zipimporter()\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"O&:zipimporter\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"archive path is empty\00", align 1
@.str.61 = private unnamed_addr constant [15 x i8] c"not a Zip file\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"%U%c\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"can't open Zip file: %R\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"not a Zip file: %R\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.66 = private unnamed_addr constant [6 x i8] c"ascii\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"cp437\00", align 1
@PyExc_NotImplementedError = external global %struct._object*, align 8
@.str.68 = private unnamed_addr constant [86 x i8] c"bootstrap issue: python%i%i.zip contains non-ASCII filenames without the unicode flag\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"%U%c%U\00", align 1
@.str.70 = private unnamed_addr constant [9 x i8] c"Nhllnhhl\00", align 1
@.str.71 = private unnamed_addr constant [36 x i8] c"# zipimport: found %ld names in %R\0A\00", align 1
@.str.72 = private unnamed_addr constant [10 x i8] c"zipimport\00", align 1
@zipimport_doc = internal global [592 x i8] c"zipimport provides support for importing Python modules from Zip archives.\0A\0AThis module exports three objects:\0A- zipimporter: a class; its constructor takes a path to a Zip archive.\0A- ZipImportError: exception raised by zipimporter objects. It's a\0A  subclass of ImportError, so it can be caught as ImportError, too.\0A- _zip_directory_cache: a dict, mapping archive paths to zip directory\0A  info dicts, as used in zipimporter._files.\0A\0AIt is usually not needed to use the zipimport module explicitly; it is\0Aused by the builtin import mechanism for sys.path items that are paths\0Ato Zip archives.\00", align 16

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_zipimport() #0 {
entry:
  %tmp = alloca %struct.st_zip_searchorder, align 4
  %call = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @ZipImporter_Type) #1, !dbg !1220
  %cmp = icmp slt i32 %call, 0, !dbg !1222
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1223

if.end:                                           ; preds = %entry
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 0, i32 0, i64 0), align 16, !dbg !1224, !tbaa !1225
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 1, i32 0, i64 0), align 4, !dbg !1228, !tbaa !1225
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 2, i32 0, i64 0), align 8, !dbg !1229, !tbaa !1225
  %0 = load i32, i32* @Py_OptimizeFlag, align 4, !dbg !1230, !tbaa !1231
  %tobool = icmp eq i32 %0, 0, !dbg !1230
  br i1 %tobool, label %if.end.2, label %if.then.1, !dbg !1233

if.then.1:                                        ; preds = %if.end
  %tmp.0.tmp.0..sroa_idx = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %tmp, i64 0, i32 0, i64 0, !dbg !1234
  call void @llvm.lifetime.start(i64 20, i8* %tmp.0.tmp.0..sroa_idx), !dbg !1234
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp.0.tmp.0..sroa_idx, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 0, i32 0, i64 0), i64 20, i32 4, i1 false), !dbg !1235, !tbaa.struct !1236
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 0, i32 0, i64 0), i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 1, i32 0, i64 0), i64 20, i32 4, i1 false), !dbg !1237, !tbaa.struct !1236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 1, i32 0, i64 0), i8* %tmp.0.tmp.0..sroa_idx, i64 20, i32 4, i1 false), !dbg !1238, !tbaa.struct !1236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %tmp.0.tmp.0..sroa_idx, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 3, i32 0, i64 0), i64 20, i32 4, i1 false), !dbg !1239, !tbaa.struct !1236
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 3, i32 0, i64 0), i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 4, i32 0, i64 0), i64 20, i32 4, i1 false), !dbg !1240, !tbaa.struct !1236
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 4, i32 0, i64 0), i8* %tmp.0.tmp.0..sroa_idx, i64 20, i32 4, i1 false), !dbg !1241, !tbaa.struct !1236
  call void @llvm.lifetime.end(i64 20, i8* %tmp.0.tmp.0..sroa_idx), !dbg !1242
  br label %if.end.2, !dbg !1243

if.end.2:                                         ; preds = %if.end, %if.then.1
  %call3 = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @zipimportmodule, i32 1013) #1, !dbg !1244
  tail call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !512, metadata !1245), !dbg !1246
  %cmp4 = icmp eq %struct._object* %call3, null, !dbg !1247
  br i1 %cmp4, label %cleanup, label %if.end.6, !dbg !1249

if.end.6:                                         ; preds = %if.end.2
  %1 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !1250, !tbaa !1251
  %call7 = tail call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct._object* %1, %struct._object* null) #1, !dbg !1253
  store %struct._object* %call7, %struct._object** @ZipImportError, align 8, !dbg !1255, !tbaa !1251
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !1256
  br i1 %cmp8, label %cleanup, label %if.end.10, !dbg !1258

if.end.10:                                        ; preds = %if.end.6
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 0, !dbg !1259
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1259, !tbaa !1260
  %inc = add i64 %2, 1, !dbg !1259
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1259, !tbaa !1260
  %call11 = tail call i32 @PyModule_AddObject(%struct._object* %call3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct._object* %call7) #1, !dbg !1263
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1264
  br i1 %cmp12, label %cleanup, label %if.end.14, !dbg !1265

if.end.14:                                        ; preds = %if.end.10
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1266, !tbaa !1260
  %inc15 = add i64 %3, 1, !dbg !1266
  store i64 %inc15, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1266, !tbaa !1260
  %call16 = tail call i32 @PyModule_AddObject(%struct._object* %call3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i64 0, i32 0, i32 0)) #1, !dbg !1267
  %cmp17 = icmp slt i32 %call16, 0, !dbg !1269
  br i1 %cmp17, label %cleanup, label %if.end.19, !dbg !1270

if.end.19:                                        ; preds = %if.end.14
  %call20 = tail call %struct._object* @PyDict_New() #1, !dbg !1271
  store %struct._object* %call20, %struct._object** @zip_directory_cache, align 8, !dbg !1273, !tbaa !1251
  %cmp21 = icmp eq %struct._object* %call20, null, !dbg !1274
  br i1 %cmp21, label %cleanup, label %if.end.23, !dbg !1276

if.end.23:                                        ; preds = %if.end.19
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %call20, i64 0, i32 0, !dbg !1277
  %4 = load i64, i64* %ob_refcnt24, align 8, !dbg !1277, !tbaa !1260
  %inc25 = add i64 %4, 1, !dbg !1277
  store i64 %inc25, i64* %ob_refcnt24, align 8, !dbg !1277, !tbaa !1260
  %call26 = tail call i32 @PyModule_AddObject(%struct._object* %call3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), %struct._object* %call20) #1, !dbg !1278
  %cmp27 = icmp slt i32 %call26, 0, !dbg !1279
  %.call3 = select i1 %cmp27, %struct._object* null, %struct._object* %call3, !dbg !1280
  br label %cleanup, !dbg !1280

cleanup:                                          ; preds = %if.end.23, %if.end.19, %if.end.14, %if.end.10, %if.end.6, %if.end.2, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %if.end.2 ], [ null, %if.end.6 ], [ null, %if.end.10 ], [ null, %if.end.14 ], [ null, %if.end.19 ], [ %.call3, %if.end.23 ]
  ret %struct._object* %retval.0, !dbg !1281
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyDict_New() #3

; Function Attrs: nounwind uwtable
define internal void @zipimporter_dealloc(%struct._zipimporter* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !527, metadata !1245), !dbg !1282
  %0 = bitcast %struct._zipimporter* %self to i8*, !dbg !1283
  tail call void @PyObject_GC_UnTrack(i8* %0) #1, !dbg !1284
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 1, !dbg !1285
  %1 = load %struct._object*, %struct._object** %archive, align 8, !dbg !1285, !tbaa !1287
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !528, metadata !1245), !dbg !1285
  %cmp = icmp eq %struct._object* %1, null, !dbg !1289
  br i1 %cmp, label %if.end.4, label %do.body.1, !dbg !1290

do.body.1:                                        ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %1, i64 0, metadata !530, metadata !1245), !dbg !1291
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1293
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1293, !tbaa !1260
  %dec = add i64 %2, -1, !dbg !1293
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1293, !tbaa !1260
  %cmp2 = icmp eq i64 %dec, 0, !dbg !1293
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !1295

if.else:                                          ; preds = %do.body.1
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1296
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1296, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !1296
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1296, !tbaa !1299
  tail call void %4(%struct._object* %1) #1, !dbg !1296
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %do.body.1, %entry
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 2, !dbg !1302
  %5 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !1302, !tbaa !1304
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !533, metadata !1245), !dbg !1302
  %cmp9 = icmp eq %struct._object* %5, null, !dbg !1305
  br i1 %cmp9, label %if.end.23, label %do.body.11, !dbg !1306

do.body.11:                                       ; preds = %if.end.4
  tail call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !535, metadata !1245), !dbg !1307
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1309
  %6 = load i64, i64* %ob_refcnt13, align 8, !dbg !1309, !tbaa !1260
  %dec14 = add i64 %6, -1, !dbg !1309
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !1309, !tbaa !1260
  %cmp15 = icmp eq i64 %dec14, 0, !dbg !1309
  br i1 %cmp15, label %if.else.17, label %if.end.23, !dbg !1311

if.else.17:                                       ; preds = %do.body.11
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1312
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1312, !tbaa !1298
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1312
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !1312, !tbaa !1299
  tail call void %8(%struct._object* %5) #1, !dbg !1312
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.17, %do.body.11, %if.end.4
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 3, !dbg !1314
  %9 = load %struct._object*, %struct._object** %files, align 8, !dbg !1314, !tbaa !1316
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !538, metadata !1245), !dbg !1314
  %cmp28 = icmp eq %struct._object* %9, null, !dbg !1317
  br i1 %cmp28, label %if.end.42, label %do.body.30, !dbg !1318

do.body.30:                                       ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !540, metadata !1245), !dbg !1319
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1321
  %10 = load i64, i64* %ob_refcnt32, align 8, !dbg !1321, !tbaa !1260
  %dec33 = add i64 %10, -1, !dbg !1321
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1321, !tbaa !1260
  %cmp34 = icmp eq i64 %dec33, 0, !dbg !1321
  br i1 %cmp34, label %if.else.36, label %if.end.42, !dbg !1323

if.else.36:                                       ; preds = %do.body.30
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1324
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1324, !tbaa !1298
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1324
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !1324, !tbaa !1299
  tail call void %12(%struct._object* %9) #1, !dbg !1324
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.36, %do.body.30, %if.end.23
  %ob_type45 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 0, i32 1, !dbg !1326
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1326, !tbaa !1298
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 38, !dbg !1327
  %14 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1327, !tbaa !1328
  tail call void %14(i8* %0) #1, !dbg !1326
  ret void, !dbg !1329
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_repr(%struct._zipimporter* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !547, metadata !1245), !dbg !1330
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 1, !dbg !1331
  %0 = load %struct._object*, %struct._object** %archive, align 8, !dbg !1333, !tbaa !1287
  %cmp = icmp eq %struct._object* %0, null, !dbg !1335
  br i1 %cmp, label %if.then, label %if.else, !dbg !1336

if.then:                                          ; preds = %entry
  %call = tail call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #1, !dbg !1337
  br label %return, !dbg !1338

if.else:                                          ; preds = %entry
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 2, !dbg !1339
  %1 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !1339, !tbaa !1304
  %cmp1 = icmp eq %struct._object* %1, null, !dbg !1340
  br i1 %cmp1, label %if.else.8, label %land.lhs.true, !dbg !1341

land.lhs.true:                                    ; preds = %if.else
  %2 = getelementptr inbounds %struct._object, %struct._object* %1, i64 1, i32 0, !dbg !1342
  %3 = load i64, i64* %2, align 8, !dbg !1342, !tbaa !1344
  %cmp3 = icmp eq i64 %3, 0, !dbg !1347
  br i1 %cmp3, label %if.else.8, label %if.then.4, !dbg !1348

if.then.4:                                        ; preds = %land.lhs.true
  %call7 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %struct._object* %0, i32 47, %struct._object* %1) #1, !dbg !1349
  br label %return, !dbg !1350

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %call10 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), %struct._object* %0) #1, !dbg !1351
  br label %return, !dbg !1352

return:                                           ; preds = %if.else.8, %if.then.4, %if.then
  %retval.0 = phi %struct._object* [ %call, %if.then ], [ %call7, %if.then.4 ], [ %call10, %if.else.8 ]
  ret %struct._object* %retval.0, !dbg !1353
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @zipimporter_traverse(%struct._object* nocapture readonly %obj, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !550, metadata !1245), !dbg !1354
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !551, metadata !1245), !dbg !1355
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !552, metadata !1245), !dbg !1356
  %files = getelementptr inbounds %struct._object, %struct._object* %obj, i64 2, !dbg !1357
  %0 = bitcast %struct._object* %files to %struct._object**, !dbg !1357
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1357, !tbaa !1316
  %tobool = icmp eq %struct._object* %1, null, !dbg !1357
  br i1 %tobool, label %do.end, label %if.then, !dbg !1359

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1360
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !554, metadata !1245), !dbg !1360
  %tobool2 = icmp eq i32 %call, 0, !dbg !1362
  br i1 %tobool2, label %do.end, label %cleanup.5

do.end:                                           ; preds = %entry, %if.then
  br label %cleanup.5, !dbg !1364

cleanup.5:                                        ; preds = %if.then, %do.end
  %retval.1 = phi i32 [ 0, %do.end ], [ %call, %if.then ]
  ret i32 %retval.1, !dbg !1365
}

; Function Attrs: nounwind uwtable
define internal i32 @zipimporter_init(%struct._zipimporter* nocapture %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %name.i = alloca [4101 x i8], align 16
  %dummy.i = alloca [8 x i8], align 1
  %endof_central_dir.i = alloca [22 x i8], align 16
  %path = alloca %struct._object*, align 8
  %statbuf = alloca %struct.stat, align 8
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !945, metadata !1245), !dbg !1366
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !946, metadata !1245), !dbg !1367
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !947, metadata !1245), !dbg !1368
  %0 = bitcast %struct._object** %path to i8*, !dbg !1369
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1369
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !951, metadata !1245), !dbg !1370
  %call = tail call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i64 0, i64 0), %struct._object* %kwds) #1, !dbg !1371
  %tobool = icmp eq i32 %call, 0, !dbg !1371
  tail call void @llvm.dbg.declare(metadata [4101 x i8]* %name.i, metadata !1044, metadata !1245), !dbg !1373
  tail call void @llvm.dbg.declare(metadata [8 x i8]* %dummy.i, metadata !1048, metadata !1245), !dbg !1377
  tail call void @llvm.dbg.declare(metadata [22 x i8]* %endof_central_dir.i, metadata !1054, metadata !1245), !dbg !1378
  br i1 %tobool, label %cleanup.275, label %if.end, !dbg !1379

if.end:                                           ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %call4 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0), i32 (%struct._object*, i8*)* nonnull @PyUnicode_FSDecoder, %struct._object** nonnull %path) #1, !dbg !1381
  %tobool5 = icmp eq i32 %call4, 0, !dbg !1381
  br i1 %tobool5, label %cleanup.275, label %if.end.7, !dbg !1383

if.end.7:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %1 = load %struct._object*, %struct._object** %path, align 8, !dbg !1384, !tbaa !1251
  %state = getelementptr inbounds %struct._object, %struct._object* %1, i64 2, !dbg !1384
  %2 = bitcast %struct._object* %state to i32*, !dbg !1384
  %bf.load = load i32, i32* %2, align 4, !dbg !1384
  %bf.clear = and i32 %bf.load, 128, !dbg !1384
  %tobool8 = icmp eq i32 %bf.clear, 0, !dbg !1384
  br i1 %tobool8, label %cond.end, label %if.end.11, !dbg !1384

cond.end:                                         ; preds = %if.end.7
  %call9 = call i32 @_PyUnicode_Ready(%struct._object* %1) #1, !dbg !1386
  %cmp = icmp eq i32 %call9, -1, !dbg !1388
  br i1 %cmp, label %cleanup.275, label %cond.end.if.end.11_crit_edge, !dbg !1391

cond.end.if.end.11_crit_edge:                     ; preds = %cond.end
  %.pre = load %struct._object*, %struct._object** %path, align 8, !dbg !1392, !tbaa !1251
  br label %if.end.11, !dbg !1391

if.end.11:                                        ; preds = %cond.end.if.end.11_crit_edge, %if.end.7
  %3 = phi %struct._object* [ %.pre, %cond.end.if.end.11_crit_edge ], [ %1, %if.end.7 ], !dbg !1392
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %4 = getelementptr inbounds %struct._object, %struct._object* %3, i64 1, i32 0, !dbg !1392
  %5 = load i64, i64* %4, align 8, !dbg !1392, !tbaa !1344
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !952, metadata !1245), !dbg !1393
  %cmp12 = icmp eq i64 %5, 0, !dbg !1394
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1396

if.then.13:                                       ; preds = %if.end.11
  %6 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1397, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0)) #1, !dbg !1399
  br label %do.body.239, !dbg !1400

if.end.14:                                        ; preds = %if.end.11
  call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !951, metadata !1245), !dbg !1370
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1401
  %7 = load i64, i64* %ob_refcnt, align 8, !dbg !1401, !tbaa !1260
  %inc = add i64 %7, 1, !dbg !1401
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1401, !tbaa !1260
  call void @llvm.dbg.value(metadata i64 %5, i64 0, metadata !953, metadata !1245), !dbg !1402
  %8 = bitcast %struct.stat* %statbuf to i8*, !dbg !1403
  br label %for.cond, !dbg !1404

for.cond:                                         ; preds = %cleanup, %if.end.14
  %flen.0 = phi i64 [ %5, %if.end.14 ], [ %call60, %cleanup ]
  %filename.0 = phi %struct._object* [ %3, %if.end.14 ], [ %call64, %cleanup ]
  call void @llvm.lifetime.start(i64 144, i8* %8) #1, !dbg !1403
  call void @llvm.dbg.value(metadata %struct.stat* %statbuf, i64 0, metadata !954, metadata !1245), !dbg !1405
  %call17 = call i32 @_Py_stat(%struct._object* %filename.0, %struct.stat* nonnull %statbuf) #1, !dbg !1406
  call void @llvm.dbg.value(metadata i32 %call17, i64 0, metadata !992, metadata !1245), !dbg !1407
  switch i32 %call17, label %if.then.43 [
    i32 -2, label %cleanup.thread349
    i32 0, label %if.then.22
  ], !dbg !1408

cleanup.thread349:                                ; preds = %for.cond
  %filename.0.lcssa = phi %struct._object* [ %filename.0, %for.cond ]
  call void @llvm.lifetime.end(i64 144, i8* %8) #1, !dbg !1409
  br label %do.body.239

if.then.22:                                       ; preds = %for.cond
  %filename.0.lcssa432 = phi %struct._object* [ %filename.0, %for.cond ]
  %flen.0.lcssa429 = phi i64 [ %flen.0, %for.cond ]
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i64 0, i32 3, !dbg !1411
  %9 = load i32, i32* %st_mode, align 8, !dbg !1411, !tbaa !1412
  %and = and i32 %9, 61440, !dbg !1411
  %cmp23 = icmp eq i32 %and, 32768, !dbg !1411
  call void @llvm.dbg.value(metadata %struct._object* %filename.0, i64 0, metadata !993, metadata !1245), !dbg !1415
  br i1 %cmp23, label %if.end.71, label %if.then.27, !dbg !1417

if.then.27:                                       ; preds = %if.then.22
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !951, metadata !1245), !dbg !1370
  call void @llvm.dbg.value(metadata %struct._object* %filename.0, i64 0, metadata !998, metadata !1245), !dbg !1418
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %filename.0.lcssa432, i64 0, i32 0, !dbg !1420
  %10 = load i64, i64* %ob_refcnt30, align 8, !dbg !1420, !tbaa !1260
  %dec = add i64 %10, -1, !dbg !1420
  store i64 %dec, i64* %ob_refcnt30, align 8, !dbg !1420, !tbaa !1260
  %cmp31 = icmp eq i64 %dec, 0, !dbg !1420
  br i1 %cmp31, label %if.else, label %if.then.70, !dbg !1422

if.else:                                          ; preds = %if.then.27
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %filename.0.lcssa432, i64 0, i32 1, !dbg !1423
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1423, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !1423
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1423, !tbaa !1299
  call void %12(%struct._object* %filename.0.lcssa432) #1, !dbg !1423
  br label %if.then.70

if.then.43:                                       ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct._object* %filename.0, i64 0, metadata !1002, metadata !1245), !dbg !1425
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !951, metadata !1245), !dbg !1370
  call void @llvm.dbg.value(metadata %struct._object* %filename.0, i64 0, metadata !1004, metadata !1245), !dbg !1427
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %filename.0, i64 0, i32 0, !dbg !1429
  %13 = load i64, i64* %ob_refcnt47, align 8, !dbg !1429, !tbaa !1260
  %dec48 = add i64 %13, -1, !dbg !1429
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1429, !tbaa !1260
  %cmp49 = icmp eq i64 %dec48, 0, !dbg !1429
  br i1 %cmp49, label %if.else.51, label %if.end.57, !dbg !1431

if.else.51:                                       ; preds = %if.then.43
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %filename.0, i64 0, i32 1, !dbg !1432
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !1432, !tbaa !1298
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1432
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !1432, !tbaa !1299
  call void %15(%struct._object* %filename.0) #1, !dbg !1432
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.51, %if.then.43
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %16 = load %struct._object*, %struct._object** %path, align 8, !dbg !1434, !tbaa !1251
  %call60 = call i64 @PyUnicode_FindChar(%struct._object* %16, i32 47, i64 0, i64 %flen.0, i32 -1) #1, !dbg !1435
  call void @llvm.dbg.value(metadata i64 %call60, i64 0, metadata !953, metadata !1245), !dbg !1402
  %cmp61 = icmp eq i64 %call60, -1, !dbg !1436
  br i1 %cmp61, label %if.then.70.loopexit, label %cleanup, !dbg !1438

cleanup:                                          ; preds = %if.end.57
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %17 = load %struct._object*, %struct._object** %path, align 8, !dbg !1439, !tbaa !1251
  %call64 = call %struct._object* @PyUnicode_Substring(%struct._object* %17, i64 0, i64 %call60) #1, !dbg !1440
  call void @llvm.dbg.value(metadata %struct._object* %call64, i64 0, metadata !951, metadata !1245), !dbg !1370
  %cmp65 = icmp eq %struct._object* %call64, null, !dbg !1441
  call void @llvm.lifetime.end(i64 144, i8* %8) #1, !dbg !1409
  br i1 %cmp65, label %do.body.239.loopexit, label %for.cond

if.then.70.loopexit:                              ; preds = %if.end.57
  br label %if.then.70, !dbg !1409

if.then.70:                                       ; preds = %if.then.70.loopexit, %if.else, %if.then.27
  call void @llvm.lifetime.end(i64 144, i8* %8) #1, !dbg !1409
  %18 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1443, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i64 0, i64 0)) #1, !dbg !1446
  br label %do.body.239, !dbg !1447

if.end.71:                                        ; preds = %if.then.22
  call void @llvm.lifetime.end(i64 144, i8* %8) #1, !dbg !1409
  %state72 = getelementptr inbounds %struct._object, %struct._object* %filename.0.lcssa432, i64 2, !dbg !1448
  %19 = bitcast %struct._object* %state72 to i32*, !dbg !1448
  %bf.load73 = load i32, i32* %19, align 4, !dbg !1448
  %bf.clear75 = and i32 %bf.load73, 128, !dbg !1448
  %tobool76 = icmp eq i32 %bf.clear75, 0, !dbg !1448
  br i1 %tobool76, label %cond.end.80, label %if.end.84, !dbg !1448

cond.end.80:                                      ; preds = %if.end.71
  %call79 = call i32 @_PyUnicode_Ready(%struct._object* %filename.0.lcssa432) #1, !dbg !1450
  %cmp82 = icmp slt i32 %call79, 0, !dbg !1452
  br i1 %cmp82, label %do.body.239, label %if.end.84, !dbg !1455

if.end.84:                                        ; preds = %if.end.71, %cond.end.80
  %20 = load %struct._object*, %struct._object** @zip_directory_cache, align 8, !dbg !1456, !tbaa !1251
  %call85 = call %struct._object* @PyDict_GetItem(%struct._object* %20, %struct._object* %filename.0.lcssa432) #1, !dbg !1457
  call void @llvm.dbg.value(metadata %struct._object* %call85, i64 0, metadata !949, metadata !1245), !dbg !1458
  %cmp86 = icmp eq %struct._object* %call85, null, !dbg !1459
  br i1 %cmp86, label %if.then.87, label %if.else.96, !dbg !1460

if.then.87:                                       ; preds = %if.end.84
  call void @llvm.dbg.value(metadata %struct._object* %call64, i64 0, metadata !1025, metadata !1245) #1, !dbg !1461
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1026, metadata !1245) #1, !dbg !1462
  %21 = getelementptr inbounds [4101 x i8], [4101 x i8]* %name.i, i64 0, i64 0, !dbg !1463
  call void @llvm.lifetime.start(i64 4101, i8* %21) #1, !dbg !1463
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %dummy.i, i64 0, i64 0, !dbg !1464
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !1464
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1052, metadata !1245) #1, !dbg !1465
  %23 = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir.i, i64 0, i64 0, !dbg !1466
  call void @llvm.lifetime.start(i64 22, i8* %23) #1, !dbg !1466
  %call.i = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %filename.0.lcssa432, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)) #1, !dbg !1467
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call.i, i64 0, metadata !1027, metadata !1245) #1, !dbg !1468
  %cmp.i = icmp eq %struct._IO_FILE* %call.i, null, !dbg !1469
  br i1 %cmp.i, label %if.then.i, label %if.end.4.i, !dbg !1471

if.then.i:                                        ; preds = %if.then.87
  %call1.i = call %struct._object* @PyErr_Occurred() #1, !dbg !1472
  %tobool.i = icmp eq %struct._object* %call1.i, null, !dbg !1472
  br i1 %tobool.i, label %if.then.2.i, label %read_directory.exit, !dbg !1475

if.then.2.i:                                      ; preds = %if.then.i
  %24 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1476, !tbaa !1251
  %call3.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i64 0, i64 0), %struct._object* %filename.0.lcssa432) #1, !dbg !1477
  br label %read_directory.exit, !dbg !1477

if.end.4.i:                                       ; preds = %if.then.87
  %call5.i = call i32 @fseek(%struct._IO_FILE* %call.i, i64 -22, i32 2) #1, !dbg !1478
  %cmp6.i = icmp eq i32 %call5.i, -1, !dbg !1480
  br i1 %cmp6.i, label %if.then.7.i, label %if.end.10.i, !dbg !1481

if.then.7.i:                                      ; preds = %if.end.4.i
  %call8.i = call i32 @fclose(%struct._IO_FILE* %call.i) #1, !dbg !1482
  %25 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1484, !tbaa !1251
  %call9.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), %struct._object* %filename.0.lcssa432) #1, !dbg !1485
  br label %read_directory.exit, !dbg !1486

if.end.10.i:                                      ; preds = %if.end.4.i
  %call11.i = call i64 @ftell(%struct._IO_FILE* %call.i) #1, !dbg !1487
  call void @llvm.dbg.value(metadata i64 %call11.i, i64 0, metadata !1039, metadata !1245) #1, !dbg !1488
  %call12.i = call i64 @fread(i8* %23, i64 1, i64 22, %struct._IO_FILE* %call.i) #1, !dbg !1489
  %cmp13.i = icmp eq i64 %call12.i, 22, !dbg !1491
  br i1 %cmp13.i, label %if.end.17.i, label %if.then.14.i, !dbg !1492

if.then.14.i:                                     ; preds = %if.end.10.i
  %call15.i = call i32 @fclose(%struct._IO_FILE* %call.i) #1, !dbg !1493
  %26 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1495, !tbaa !1251
  %call16.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), %struct._object* %filename.0.lcssa432) #1, !dbg !1496
  br label %read_directory.exit, !dbg !1497

if.end.17.i:                                      ; preds = %if.end.10.i
  call void @llvm.dbg.value(metadata i8* %23, i64 0, metadata !843, metadata !1245) #1, !dbg !1498
  %27 = bitcast [22 x i8]* %endof_central_dir.i to i32*, !dbg !1501
  %28 = load i32, i32* %27, align 16, !dbg !1501
  %29 = zext i32 %28 to i64, !dbg !1501
  %or.i.i = and i64 %29, 65535, !dbg !1502
  call void @llvm.dbg.value(metadata i64 %or.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !1503
  %30 = lshr i32 %28, 16, !dbg !1504
  %31 = zext i32 %30 to i64, !dbg !1504
  %conv4.i.i = shl nuw nsw i64 %31, 16, !dbg !1505
  %shl5.i.i = and i64 %conv4.i.i, 16711680, !dbg !1505
  %32 = lshr i32 %28, 24, !dbg !1506
  %33 = zext i32 %32 to i64, !dbg !1506
  %shl9.i.i = shl nuw nsw i64 %33, 24, !dbg !1507
  %and.i.i = and i64 %shl9.i.i, 2147483648, !dbg !1508
  %sub.i.i = sub nsw i64 0, %and.i.i, !dbg !1509
  %or6.i.i = or i64 %shl9.i.i, %or.i.i, !dbg !1510
  %or10.i.i = or i64 %or6.i.i, %shl5.i.i, !dbg !1511
  %or11.i.i = or i64 %or10.i.i, %sub.i.i, !dbg !1512
  call void @llvm.dbg.value(metadata i64 %or11.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !1503
  %cmp20.i = icmp eq i64 %or11.i.i, 101010256, !dbg !1513
  br i1 %cmp20.i, label %if.end.24.i, label %if.then.21.i, !dbg !1514

if.then.21.i:                                     ; preds = %if.end.17.i
  %call22.i = call i32 @fclose(%struct._IO_FILE* %call.i) #1, !dbg !1515
  %34 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1517, !tbaa !1251
  %call23.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %34, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i64 0, i64 0), %struct._object* %filename.0.lcssa432) #1, !dbg !1518
  br label %read_directory.exit, !dbg !1519

if.end.24.i:                                      ; preds = %if.end.17.i
  %add.ptr.i = getelementptr [22 x i8], [22 x i8]* %endof_central_dir.i, i64 0, i64 12, !dbg !1520
  call void @llvm.dbg.value(metadata i8* %add.ptr.i, i64 0, metadata !843, metadata !1245) #1, !dbg !1521
  %35 = bitcast i8* %add.ptr.i to i32*, !dbg !1523
  %36 = load i32, i32* %35, align 4, !dbg !1523
  %37 = zext i32 %36 to i64, !dbg !1523
  %or.i.446.i = and i64 %37, 65535, !dbg !1524
  call void @llvm.dbg.value(metadata i64 %or.i.446.i, i64 0, metadata !844, metadata !1245) #1, !dbg !1525
  %38 = lshr i32 %36, 16, !dbg !1526
  %39 = zext i32 %38 to i64, !dbg !1526
  %conv4.i.448.i = shl nuw nsw i64 %39, 16, !dbg !1527
  %shl5.i.449.i = and i64 %conv4.i.448.i, 16711680, !dbg !1527
  %40 = lshr i32 %36, 24, !dbg !1528
  %41 = zext i32 %40 to i64, !dbg !1528
  %shl9.i.453.i = shl nuw nsw i64 %41, 24, !dbg !1529
  %and.i.455.i = and i64 %shl9.i.453.i, 2147483648, !dbg !1530
  %sub.i.456.i = sub nsw i64 0, %and.i.455.i, !dbg !1531
  %or6.i.450.i = or i64 %shl9.i.453.i, %or.i.446.i, !dbg !1532
  %or10.i.454.i = or i64 %or6.i.450.i, %shl5.i.449.i, !dbg !1533
  %or11.i.457.i = or i64 %or10.i.454.i, %sub.i.456.i, !dbg !1534
  call void @llvm.dbg.value(metadata i64 %or11.i.457.i, i64 0, metadata !844, metadata !1245) #1, !dbg !1525
  call void @llvm.dbg.value(metadata i64 %or11.i.457.i, i64 0, metadata !1037, metadata !1245) #1, !dbg !1535
  %add.ptr28.i = getelementptr [22 x i8], [22 x i8]* %endof_central_dir.i, i64 0, i64 16, !dbg !1536
  call void @llvm.dbg.value(metadata i8* %add.ptr28.i, i64 0, metadata !843, metadata !1245) #1, !dbg !1537
  %42 = bitcast i8* %add.ptr28.i to i32*, !dbg !1539
  %43 = load i32, i32* %42, align 16, !dbg !1539
  %44 = zext i32 %43 to i64, !dbg !1539
  %or.i.462.i = and i64 %44, 65535, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %or.i.462.i, i64 0, metadata !844, metadata !1245) #1, !dbg !1541
  %45 = lshr i32 %43, 16, !dbg !1542
  %46 = zext i32 %45 to i64, !dbg !1542
  %conv4.i.464.i = shl nuw nsw i64 %46, 16, !dbg !1543
  %shl5.i.465.i = and i64 %conv4.i.464.i, 16711680, !dbg !1543
  %47 = lshr i32 %43, 24, !dbg !1544
  %48 = zext i32 %47 to i64, !dbg !1544
  %shl9.i.469.i = shl nuw nsw i64 %48, 24, !dbg !1545
  %and.i.471.i = and i64 %shl9.i.469.i, 2147483648, !dbg !1546
  %sub.i.472.i = sub nsw i64 0, %and.i.471.i, !dbg !1547
  %or6.i.466.i = or i64 %shl9.i.469.i, %or.i.462.i, !dbg !1548
  %or10.i.470.i = or i64 %or6.i.466.i, %shl5.i.465.i, !dbg !1549
  %or11.i.473.i = or i64 %or10.i.470.i, %sub.i.472.i, !dbg !1550
  call void @llvm.dbg.value(metadata i64 %or11.i.473.i, i64 0, metadata !844, metadata !1245) #1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %or11.i.473.i, i64 0, metadata !1040, metadata !1245) #1, !dbg !1551
  %sub.i = sub i64 %call11.i, %or11.i.473.i, !dbg !1552
  %sub30.i = sub i64 %sub.i, %or11.i.457.i, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %sub30.i, i64 0, metadata !1058, metadata !1245) #1, !dbg !1554
  %call31.i = call %struct._object* @PyDict_New() #1, !dbg !1555
  call void @llvm.dbg.value(metadata %struct._object* %call31.i, i64 0, metadata !1026, metadata !1245) #1, !dbg !1462
  %cmp32.i = icmp eq %struct._object* %call31.i, null, !dbg !1556
  br i1 %cmp32.i, label %if.end.261.thread.i, label %if.end.34.i, !dbg !1558

if.end.261.thread.i:                              ; preds = %if.end.24.i
  %call240.480.i = call i32 @fclose(%struct._IO_FILE* %call.i) #1, !dbg !1559
  call void @llvm.dbg.value(metadata %struct._object* %call31.i, i64 0, metadata !1100, metadata !1245) #1, !dbg !1560
  call void @llvm.dbg.value(metadata %struct._object* %nameobj.4.i, i64 0, metadata !1105, metadata !1245) #1, !dbg !1562
  br label %read_directory.exit, !dbg !1564

if.end.34.i:                                      ; preds = %if.end.24.i
  %add.i = add i64 %sub30.i, %or11.i.473.i, !dbg !1565
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1042, metadata !1245) #1, !dbg !1566
  %call35.i = call i32 @fseek(%struct._IO_FILE* %call.i, i64 %add.i, i32 0) #1, !dbg !1567
  %cmp36.i = icmp eq i32 %call35.i, -1, !dbg !1569
  br i1 %cmp36.i, label %do.body.199.i, label %for.cond.i.preheader, !dbg !1570

for.cond.i.preheader:                             ; preds = %if.end.34.i
  br label %for.cond.i, !dbg !1571

for.cond.i:                                       ; preds = %for.cond.i.preheader, %cleanup.i
  %count.0.i = phi i64 [ %inc186.count.0.i, %cleanup.i ], [ 0, %for.cond.i.preheader ], !dbg !1572
  %call39.i = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1571
  call void @llvm.dbg.value(metadata i64 %call39.i, i64 0, metadata !1041, metadata !1245) #1, !dbg !1573
  switch i64 %call39.i, label %for.end.188.i.loopexit [
    i64 -1, label %land.lhs.true.i
    i64 33639248, label %if.end.47.i
  ], !dbg !1574

land.lhs.true.i:                                  ; preds = %for.cond.i
  %count.0.i.lcssa423 = phi i64 [ %count.0.i, %for.cond.i ]
  %call41.i = call %struct._object* @PyErr_Occurred() #1, !dbg !1576
  %tobool42.i = icmp eq %struct._object* %call41.i, null, !dbg !1576
  br i1 %tobool42.i, label %for.end.188.i, label %do.body.247.i, !dbg !1578

if.end.47.i:                                      ; preds = %for.cond.i
  %call49.i = call i64 @fread(i8* %22, i64 1, i64 4, %struct._IO_FILE* %call.i) #1, !dbg !1579
  %cmp50.i = icmp eq i64 %call49.i, 4, !dbg !1581
  br i1 %cmp50.i, label %if.end.52.i, label %do.body.199.i.loopexit410, !dbg !1582

if.end.52.i:                                      ; preds = %if.end.47.i
  %call53.i = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1583
  %call54.i = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1584
  %call56.i = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1585
  %call58.i = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1586
  %call60.i = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1587
  call void @llvm.dbg.value(metadata i64 %call60.i, i64 0, metadata !1034, metadata !1245) #1, !dbg !1588
  %call61.i = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1589
  call void @llvm.dbg.value(metadata i64 %call61.i, i64 0, metadata !1035, metadata !1245) #1, !dbg !1590
  %call62.i = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1591
  call void @llvm.dbg.value(metadata i64 %call62.i, i64 0, metadata !1036, metadata !1245) #1, !dbg !1592
  %call63.i = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1593
  %conv64.i = zext i32 %call63.i to i64, !dbg !1593
  %sext.i = shl i32 %call63.i, 16, !dbg !1594
  %conv65.i = ashr exact i32 %sext.i, 16, !dbg !1594
  %call66.i = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1595
  %add67.i = add i32 %conv65.i, %call66.i, !dbg !1596
  %call68.i = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1597
  %add69.i = add i32 %add67.i, %call68.i, !dbg !1598
  %conv70.i = sext i32 %add69.i to i64, !dbg !1594
  call void @llvm.dbg.value(metadata i64 %conv70.i, i64 0, metadata !1037, metadata !1245) #1, !dbg !1535
  %call72.i = call i64 @fread(i8* %22, i64 1, i64 8, %struct._IO_FILE* %call.i) #1, !dbg !1599
  %cmp73.i = icmp eq i64 %call72.i, 8, !dbg !1601
  br i1 %cmp73.i, label %if.end.76.i, label %do.body.199.i.loopexit410, !dbg !1602

if.end.76.i:                                      ; preds = %if.end.52.i
  %call77.i = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %call.i) #1, !dbg !1603
  %add78.i = add i64 %call77.i, %sub30.i, !dbg !1604
  call void @llvm.dbg.value(metadata i64 %add78.i, i64 0, metadata !1038, metadata !1245) #1, !dbg !1605
  %call79.i = call %struct._object* @PyErr_Occurred() #1, !dbg !1606
  %tobool80.i = icmp eq %struct._object* %call79.i, null, !dbg !1606
  br i1 %tobool80.i, label %if.end.82.i, label %do.body.247.i.loopexit, !dbg !1608

if.end.82.i:                                      ; preds = %if.end.76.i
  %cmp84.i = icmp sgt i32 %sext.i, 268435456, !dbg !1609
  call void @llvm.dbg.value(metadata i16 4096, i64 0, metadata !1033, metadata !1245) #1, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %21, i64 0, metadata !1053, metadata !1245) #1, !dbg !1612
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !1043, metadata !1245) #1, !dbg !1613
  %conv64.op.i = shl i64 %conv64.i, 48, !dbg !1614
  %conv64.op.op.i = ashr exact i64 %conv64.op.i, 48, !dbg !1614
  %conv90.i = select i1 %cmp84.i, i64 4096, i64 %conv64.op.op.i, !dbg !1614
  %cmp91.490.i = icmp sgt i64 %conv90.i, 0, !dbg !1617
  br i1 %cmp91.490.i, label %for.body.lr.ph.i, label %for.end.i, !dbg !1618

for.body.lr.ph.i:                                 ; preds = %if.end.82.i
  %lftr.limit.i = getelementptr [4101 x i8], [4101 x i8]* %name.i, i64 0, i64 %conv90.i, !dbg !1618
  br label %for.body.i, !dbg !1618

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %p.0491.i = phi i8* [ %21, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i ], !dbg !1572
  %call93.i = call i32 @_IO_getc(%struct._IO_FILE* %call.i) #1, !dbg !1619
  %conv94.i = trunc i32 %call93.i to i8, !dbg !1621
  %sext439.mask.i = and i32 %call93.i, 255, !dbg !1622
  %cmp96.i = icmp eq i32 %sext439.mask.i, 47, !dbg !1622
  %.conv94.i = select i1 %cmp96.i, i8 47, i8 %conv94.i, !dbg !1624
  store i8 %.conv94.i, i8* %p.0491.i, align 1, !dbg !1625, !tbaa !1225
  %incdec.ptr.i = getelementptr i8, i8* %p.0491.i, i64 1, !dbg !1626
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.i, i64 0, metadata !1053, metadata !1245) #1, !dbg !1612
  %exitcond.i = icmp eq i8* %incdec.ptr.i, %lftr.limit.i, !dbg !1618
  br i1 %exitcond.i, label %for.end.i.loopexit, label %for.body.i, !dbg !1618

for.end.i.loopexit:                               ; preds = %for.body.i
  br label %for.end.i, !dbg !1627

for.end.i:                                        ; preds = %for.end.i.loopexit, %if.end.82.i
  %i.0.lcssa.i = phi i64 [ 0, %if.end.82.i ], [ %conv90.i, %for.end.i.loopexit ], !dbg !1572
  %p.0.lcssa.i = phi i8* [ %21, %if.end.82.i ], [ %lftr.limit.i, %for.end.i.loopexit ], !dbg !1572
  store i8 0, i8* %p.0.lcssa.i, align 1, !dbg !1627, !tbaa !1225
  %cmp101.495.i = icmp slt i64 %i.0.lcssa.i, %conv70.i, !dbg !1628
  br i1 %cmp101.495.i, label %for.body.103.i.preheader, label %for.end.111.i, !dbg !1631

for.body.103.i.preheader:                         ; preds = %for.end.i
  br label %for.body.103.i, !dbg !1632

for.cond.100.i:                                   ; preds = %for.body.103.i
  %cmp101.i = icmp slt i64 %inc110.i, %conv70.i, !dbg !1628
  br i1 %cmp101.i, label %for.body.103.i, label %for.end.111.i.loopexit, !dbg !1631

for.body.103.i:                                   ; preds = %for.body.103.i.preheader, %for.cond.100.i
  %i.1496.i = phi i64 [ %inc110.i, %for.cond.100.i ], [ %i.0.lcssa.i, %for.body.103.i.preheader ], !dbg !1572
  %call104.i = call i32 @_IO_getc(%struct._IO_FILE* %call.i) #1, !dbg !1632
  %cmp105.i = icmp eq i32 %call104.i, -1, !dbg !1634
  %inc110.i = add nsw i64 %i.1496.i, 1, !dbg !1635
  call void @llvm.dbg.value(metadata i64 %inc110.i, i64 0, metadata !1043, metadata !1245) #1, !dbg !1613
  br i1 %cmp105.i, label %do.body.199.i.loopexit, label %for.cond.100.i, !dbg !1636

for.end.111.i.loopexit:                           ; preds = %for.cond.100.i
  br label %for.end.111.i, !dbg !1637

for.end.111.i:                                    ; preds = %for.end.111.i.loopexit, %for.end.i
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1061, metadata !1245) #1, !dbg !1637
  %and.i = and i32 %call53.i, 2048, !dbg !1638
  %tobool113.i = icmp eq i32 %and.i, 0, !dbg !1638
  br i1 %tobool113.i, label %if.else.i, label %if.end.122.i, !dbg !1639

if.else.i:                                        ; preds = %for.end.111.i
  call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !1067, metadata !1245) #1, !dbg !1640
  call void @llvm.dbg.value(metadata !1641, i64 0, metadata !1077, metadata !1245) #1, !dbg !1640
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !1080, metadata !1245) #1, !dbg !1640
  %49 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1642, !tbaa !1251
  call void @llvm.dbg.value(metadata i8* %49, i64 0, metadata !1076, metadata !1245) #1, !dbg !1640
  %interp.i = getelementptr inbounds i8, i8* %49, i64 16, !dbg !1645
  %50 = bitcast i8* %interp.i to %struct._is**, !dbg !1645
  %51 = load %struct._is*, %struct._is** %50, align 8, !dbg !1645, !tbaa !1646
  %codecs_initialized.i = getelementptr inbounds %struct._is, %struct._is* %51, i64 0, i32 10, !dbg !1648
  %52 = load i32, i32* %codecs_initialized.i, align 4, !dbg !1648, !tbaa !1649
  %tobool118.i = icmp eq i32 %52, 0, !dbg !1651
  call void @llvm.dbg.value(metadata !1641, i64 0, metadata !1060, metadata !1245) #1, !dbg !1652
  %..i = zext i1 %tobool118.i to i32, !dbg !1653
  %.440.i = select i1 %tobool118.i, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i64 0, i64 0), !dbg !1653
  br label %if.end.122.i, !dbg !1653

if.end.122.i:                                     ; preds = %if.else.i, %for.end.111.i
  %bootstrap.0.i = phi i32 [ 0, %for.end.111.i ], [ %..i, %if.else.i ], !dbg !1572
  %charset.0.i = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i64 0, i64 0), %for.end.111.i ], [ %.440.i, %if.else.i ], !dbg !1572
  %call125.i = call %struct._object* @PyUnicode_Decode(i8* %21, i64 %conv90.i, i8* %charset.0.i, i8* null) #1, !dbg !1654
  call void @llvm.dbg.value(metadata %struct._object* %call125.i, i64 0, metadata !1052, metadata !1245) #1, !dbg !1465
  %cmp126.i = icmp eq %struct._object* %call125.i, null, !dbg !1655
  br i1 %cmp126.i, label %if.then.128.i, label %if.end.133.i, !dbg !1657

if.then.128.i:                                    ; preds = %if.end.122.i
  %bootstrap.0.i.lcssa = phi i32 [ %bootstrap.0.i, %if.end.122.i ]
  %tobool129.i = icmp eq i32 %bootstrap.0.i.lcssa, 0, !dbg !1658
  br i1 %tobool129.i, label %do.body.247.i, label %if.then.130.i, !dbg !1661

if.then.130.i:                                    ; preds = %if.then.128.i
  %53 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8, !dbg !1662, !tbaa !1251
  %call131.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %53, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.68, i64 0, i64 0), i32 3, i32 4) #1, !dbg !1663
  br label %do.body.247.i, !dbg !1663

if.end.133.i:                                     ; preds = %if.end.122.i
  %state.i = getelementptr inbounds %struct._object, %struct._object* %call125.i, i64 2, !dbg !1664
  %54 = bitcast %struct._object* %state.i to i32*, !dbg !1664
  %bf.load.i = load i32, i32* %54, align 4, !dbg !1664
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !1664
  %tobool134.i = icmp eq i32 %bf.clear.i, 0, !dbg !1664
  br i1 %tobool134.i, label %cond.end.i, label %if.end.139.i, !dbg !1664

cond.end.i:                                       ; preds = %if.end.133.i
  %call135.i = call i32 @_PyUnicode_Ready(%struct._object* %call125.i) #1, !dbg !1666
  %cmp136.i = icmp eq i32 %call135.i, -1, !dbg !1668
  br i1 %cmp136.i, label %do.body.247.i.loopexit, label %if.end.139.i, !dbg !1671

if.end.139.i:                                     ; preds = %cond.end.i, %if.end.133.i
  %call140.i = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i64 0, i64 0), %struct._object* %filename.0.lcssa432, i32 47, %struct._object* %call125.i) #1, !dbg !1672
  call void @llvm.dbg.value(metadata %struct._object* %call140.i, i64 0, metadata !1059, metadata !1245) #1, !dbg !1673
  %cmp141.i = icmp eq %struct._object* %call140.i, null, !dbg !1674
  br i1 %cmp141.i, label %do.body.247.i.loopexit, label %if.end.144.i, !dbg !1676

if.end.144.i:                                     ; preds = %if.end.139.i
  %sext436.i = shl i32 %call54.i, 16, !dbg !1677
  %conv145.i = ashr exact i32 %sext436.i, 16, !dbg !1677
  %sext437.i = shl i32 %call56.i, 16, !dbg !1678
  %conv146.i = ashr exact i32 %sext437.i, 16, !dbg !1678
  %sext438.i = shl i32 %call58.i, 16, !dbg !1679
  %conv147.i = ashr exact i32 %sext438.i, 16, !dbg !1679
  %call148.i = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i64 0, i64 0), %struct._object* %call140.i, i32 %conv145.i, i64 %call61.i, i64 %call62.i, i64 %add78.i, i32 %conv146.i, i32 %conv147.i, i64 %call60.i) #1, !dbg !1680
  call void @llvm.dbg.value(metadata %struct._object* %call148.i, i64 0, metadata !1062, metadata !1245) #1, !dbg !1681
  %cmp149.i = icmp eq %struct._object* %call148.i, null, !dbg !1682
  br i1 %cmp149.i, label %do.body.247.i.loopexit, label %if.then.157.i, !dbg !1684

if.then.157.i:                                    ; preds = %if.end.144.i
  %call153.i = call i32 @PyDict_SetItem(%struct._object* %call31.i, %struct._object* %call125.i, %struct._object* %call148.i) #1, !dbg !1685
  call void @llvm.dbg.value(metadata i32 %call153.i, i64 0, metadata !1066, metadata !1245) #1, !dbg !1686
  call void @llvm.dbg.value(metadata %struct._object* %call125.i, i64 0, metadata !1082, metadata !1245) #1, !dbg !1687
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1052, metadata !1245) #1, !dbg !1465
  call void @llvm.dbg.value(metadata %struct._object* %call125.i, i64 0, metadata !1084, metadata !1245) #1, !dbg !1689
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call125.i, i64 0, i32 0, !dbg !1691
  %55 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1691, !tbaa !1260
  %dec.i = add i64 %55, -1, !dbg !1691
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !1691, !tbaa !1260
  %cmp160.i = icmp eq i64 %dec.i, 0, !dbg !1691
  br i1 %cmp160.i, label %if.else.163.i, label %if.end.165.i, !dbg !1693

if.else.163.i:                                    ; preds = %if.then.157.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call125.i, i64 0, i32 1, !dbg !1694
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !1694, !tbaa !1298
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i64 0, i32 4, !dbg !1694
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !1694, !tbaa !1299
  call void %57(%struct._object* %call125.i) #1, !dbg !1694
  br label %if.end.165.i, !dbg !1572

if.end.165.i:                                     ; preds = %if.else.163.i, %if.then.157.i
  call void @llvm.dbg.value(metadata %struct._object* %call148.i, i64 0, metadata !1088, metadata !1245) #1, !dbg !1696
  %ob_refcnt171.i = getelementptr inbounds %struct._object, %struct._object* %call148.i, i64 0, i32 0, !dbg !1698
  %58 = load i64, i64* %ob_refcnt171.i, align 8, !dbg !1698, !tbaa !1260
  %dec172.i = add i64 %58, -1, !dbg !1698
  store i64 %dec172.i, i64* %ob_refcnt171.i, align 8, !dbg !1698, !tbaa !1260
  %cmp173.i = icmp eq i64 %dec172.i, 0, !dbg !1698
  br i1 %cmp173.i, label %if.else.176.i, label %cleanup.i, !dbg !1700

if.else.176.i:                                    ; preds = %if.end.165.i
  %ob_type177.i = getelementptr inbounds %struct._object, %struct._object* %call148.i, i64 0, i32 1, !dbg !1701
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type177.i, align 8, !dbg !1701, !tbaa !1298
  %tp_dealloc178.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i64 0, i32 4, !dbg !1701
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc178.i, align 8, !dbg !1701, !tbaa !1299
  call void %60(%struct._object* %call148.i) #1, !dbg !1701
  br label %cleanup.i, !dbg !1572

cleanup.i:                                        ; preds = %if.else.176.i, %if.end.165.i
  %cmp182.i = icmp eq i32 %call153.i, 0, !dbg !1703
  %inc186.i = zext i1 %cmp182.i to i64, !dbg !1705
  %inc186.count.0.i = add i64 %inc186.i, %count.0.i, !dbg !1705
  br i1 %cmp182.i, label %for.cond.i, label %do.body.247.i.loopexit, !dbg !1572

for.end.188.i.loopexit:                           ; preds = %for.cond.i
  %count.0.i.lcssa = phi i64 [ %count.0.i, %for.cond.i ]
  br label %for.end.188.i, !dbg !1706

for.end.188.i:                                    ; preds = %for.end.188.i.loopexit, %land.lhs.true.i
  %count.0.i428 = phi i64 [ %count.0.i.lcssa, %for.end.188.i.loopexit ], [ %count.0.i.lcssa423, %land.lhs.true.i ]
  %call189.i = call i32 @fclose(%struct._IO_FILE* %call.i) #1, !dbg !1706
  %61 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !1707, !tbaa !1231
  %tobool190.i = icmp eq i32 %61, 0, !dbg !1707
  br i1 %tobool190.i, label %read_directory.exit, label %if.then.191.i, !dbg !1709

if.then.191.i:                                    ; preds = %for.end.188.i
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i64 0, i64 0), i64 %count.0.i428, %struct._object* %filename.0.lcssa432) #1, !dbg !1710
  br label %read_directory.exit, !dbg !1710

do.body.199.i.loopexit:                           ; preds = %for.body.103.i
  br label %do.body.199.i, !dbg !1711

do.body.199.i.loopexit410:                        ; preds = %if.end.47.i, %if.end.52.i
  br label %do.body.199.i, !dbg !1711

do.body.199.i:                                    ; preds = %do.body.199.i.loopexit410, %do.body.199.i.loopexit, %if.end.34.i
  %call193.i = call i32 @fclose(%struct._IO_FILE* %call.i) #1, !dbg !1711
  call void @llvm.dbg.value(metadata %struct._object* %call31.i, i64 0, metadata !1090, metadata !1245) #1, !dbg !1712
  call void @llvm.dbg.value(metadata %struct._object* %call31.i, i64 0, metadata !1092, metadata !1245) #1, !dbg !1714
  %ob_refcnt202.i = getelementptr inbounds %struct._object, %struct._object* %call31.i, i64 0, i32 0, !dbg !1716
  %62 = load i64, i64* %ob_refcnt202.i, align 8, !dbg !1716, !tbaa !1260
  %dec203.i = add i64 %62, -1, !dbg !1716
  store i64 %dec203.i, i64* %ob_refcnt202.i, align 8, !dbg !1716, !tbaa !1260
  %cmp204.i = icmp eq i64 %dec203.i, 0, !dbg !1716
  br i1 %cmp204.i, label %if.else.207.i, label %if.end.236.i, !dbg !1718

if.else.207.i:                                    ; preds = %do.body.199.i
  %ob_type208.i = getelementptr inbounds %struct._object, %struct._object* %call31.i, i64 0, i32 1, !dbg !1719
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type208.i, align 8, !dbg !1719, !tbaa !1298
  %tp_dealloc209.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i64 0, i32 4, !dbg !1719
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc209.i, align 8, !dbg !1719, !tbaa !1299
  call void %64(%struct._object* %call31.i) #1, !dbg !1719
  br label %if.end.236.i, !dbg !1572

if.end.236.i:                                     ; preds = %if.else.207.i, %do.body.199.i
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !1095, metadata !1245) #1, !dbg !1721
  %65 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1723, !tbaa !1251
  %call239.i = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), %struct._object* %filename.0.lcssa432) #1, !dbg !1724
  br label %read_directory.exit, !dbg !1725

do.body.247.i.loopexit:                           ; preds = %if.end.76.i, %cond.end.i, %if.end.139.i, %if.end.144.i, %cleanup.i
  %nameobj.4.i.ph = phi %struct._object* [ null, %cleanup.i ], [ %call125.i, %if.end.144.i ], [ %call125.i, %if.end.139.i ], [ %call125.i, %cond.end.i ], [ null, %if.end.76.i ]
  br label %do.body.247.i, !dbg !1559

do.body.247.i:                                    ; preds = %do.body.247.i.loopexit, %if.then.130.i, %if.then.128.i, %land.lhs.true.i
  %nameobj.4.i = phi %struct._object* [ null, %if.then.130.i ], [ null, %if.then.128.i ], [ null, %land.lhs.true.i ], [ %nameobj.4.i.ph, %do.body.247.i.loopexit ], !dbg !1572
  %call240.i = call i32 @fclose(%struct._IO_FILE* %call.i) #1, !dbg !1559
  call void @llvm.dbg.value(metadata %struct._object* %call31.i, i64 0, metadata !1100, metadata !1245) #1, !dbg !1560
  call void @llvm.dbg.value(metadata %struct._object* %call31.i, i64 0, metadata !1102, metadata !1245) #1, !dbg !1726
  %ob_refcnt250.i = getelementptr inbounds %struct._object, %struct._object* %call31.i, i64 0, i32 0, !dbg !1728
  %66 = load i64, i64* %ob_refcnt250.i, align 8, !dbg !1728, !tbaa !1260
  %dec251.i = add i64 %66, -1, !dbg !1728
  store i64 %dec251.i, i64* %ob_refcnt250.i, align 8, !dbg !1728, !tbaa !1260
  %cmp252.i = icmp eq i64 %dec251.i, 0, !dbg !1728
  br i1 %cmp252.i, label %if.else.255.i, label %if.end.261.i, !dbg !1730

if.else.255.i:                                    ; preds = %do.body.247.i
  %ob_type256.i = getelementptr inbounds %struct._object, %struct._object* %call31.i, i64 0, i32 1, !dbg !1731
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type256.i, align 8, !dbg !1731, !tbaa !1298
  %tp_dealloc257.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i64 0, i32 4, !dbg !1731
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc257.i, align 8, !dbg !1731, !tbaa !1299
  call void %68(%struct._object* %call31.i) #1, !dbg !1731
  br label %if.end.261.i, !dbg !1572

if.end.261.i:                                     ; preds = %if.else.255.i, %do.body.247.i
  call void @llvm.dbg.value(metadata %struct._object* %nameobj.4.i, i64 0, metadata !1105, metadata !1245) #1, !dbg !1562
  %cmp267.i = icmp eq %struct._object* %nameobj.4.i, null, !dbg !1733
  br i1 %cmp267.i, label %read_directory.exit, label %do.body.270.i, !dbg !1564

do.body.270.i:                                    ; preds = %if.end.261.i
  call void @llvm.dbg.value(metadata %struct._object* %nameobj.4.i, i64 0, metadata !1107, metadata !1245) #1, !dbg !1734
  %ob_refcnt273.i = getelementptr inbounds %struct._object, %struct._object* %nameobj.4.i, i64 0, i32 0, !dbg !1736
  %69 = load i64, i64* %ob_refcnt273.i, align 8, !dbg !1736, !tbaa !1260
  %dec274.i = add i64 %69, -1, !dbg !1736
  store i64 %dec274.i, i64* %ob_refcnt273.i, align 8, !dbg !1736, !tbaa !1260
  %cmp275.i = icmp eq i64 %dec274.i, 0, !dbg !1736
  br i1 %cmp275.i, label %if.else.278.i, label %read_directory.exit, !dbg !1738

if.else.278.i:                                    ; preds = %do.body.270.i
  %ob_type279.i = getelementptr inbounds %struct._object, %struct._object* %nameobj.4.i, i64 0, i32 1, !dbg !1739
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type279.i, align 8, !dbg !1739, !tbaa !1298
  %tp_dealloc280.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i64 0, i32 4, !dbg !1739
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc280.i, align 8, !dbg !1739, !tbaa !1299
  call void %71(%struct._object* %nameobj.4.i) #1, !dbg !1739
  br label %read_directory.exit, !dbg !1572

read_directory.exit:                              ; preds = %if.then.i, %if.then.2.i, %if.then.7.i, %if.then.14.i, %if.then.21.i, %if.end.261.thread.i, %for.end.188.i, %if.then.191.i, %if.end.236.i, %if.end.261.i, %do.body.270.i, %if.else.278.i
  %retval.0.i = phi %struct._object* [ null, %if.then.7.i ], [ null, %if.then.14.i ], [ null, %if.then.21.i ], [ null, %if.end.236.i ], [ null, %if.then.i ], [ null, %if.then.2.i ], [ %call31.i, %for.end.188.i ], [ %call31.i, %if.then.191.i ], [ null, %if.else.278.i ], [ null, %do.body.270.i ], [ null, %if.end.261.i ], [ null, %if.end.261.thread.i ], !dbg !1572
  call void @llvm.lifetime.end(i64 22, i8* %23) #1, !dbg !1741
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1741
  call void @llvm.lifetime.end(i64 4101, i8* %21) #1, !dbg !1741
  call void @llvm.dbg.value(metadata %struct._object* %retval.0.i, i64 0, metadata !949, metadata !1245), !dbg !1458
  %cmp89 = icmp eq %struct._object* %retval.0.i, null, !dbg !1742
  br i1 %cmp89, label %do.body.239, label %if.end.91, !dbg !1744

if.end.91:                                        ; preds = %read_directory.exit
  %72 = load %struct._object*, %struct._object** @zip_directory_cache, align 8, !dbg !1745, !tbaa !1251
  %call92 = call i32 @PyDict_SetItem(%struct._object* %72, %struct._object* %filename.0.lcssa432, %struct._object* %retval.0.i) #1, !dbg !1747
  %cmp93 = icmp eq i32 %call92, 0, !dbg !1748
  br i1 %cmp93, label %if.end.99, label %do.body.239, !dbg !1749

if.else.96:                                       ; preds = %if.end.84
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %call85, i64 0, i32 0, !dbg !1750
  %73 = load i64, i64* %ob_refcnt97, align 8, !dbg !1750, !tbaa !1260
  %inc98 = add i64 %73, 1, !dbg !1750
  store i64 %inc98, i64* %ob_refcnt97, align 8, !dbg !1750, !tbaa !1260
  br label %if.end.99

if.end.99:                                        ; preds = %if.end.91, %if.else.96
  %files.0 = phi %struct._object* [ %retval.0.i, %if.end.91 ], [ %call85, %if.else.96 ]
  %files100 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 3, !dbg !1751
  store %struct._object* %files.0, %struct._object** %files100, align 8, !dbg !1752, !tbaa !1316
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 1, !dbg !1753
  store %struct._object* %filename.0.lcssa432, %struct._object** %archive, align 8, !dbg !1754, !tbaa !1287
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !951, metadata !1245), !dbg !1370
  %cmp101 = icmp eq i64 %flen.0.lcssa429, %5, !dbg !1755
  br i1 %cmp101, label %if.else.221, label %if.then.102, !dbg !1756

if.then.102:                                      ; preds = %if.end.99
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %74 = load %struct._object*, %struct._object** %path, align 8, !dbg !1757, !tbaa !1251
  %add = add i64 %flen.0.lcssa429, 1, !dbg !1758
  %75 = getelementptr inbounds %struct._object, %struct._object* %74, i64 1, i32 0, !dbg !1759
  %76 = load i64, i64* %75, align 8, !dbg !1759, !tbaa !1344
  %call104 = call %struct._object* @PyUnicode_Substring(%struct._object* %74, i64 %add, i64 %76) #1, !dbg !1760
  call void @llvm.dbg.value(metadata %struct._object* %call104, i64 0, metadata !950, metadata !1245), !dbg !1761
  %cmp105 = icmp eq %struct._object* %call104, null, !dbg !1762
  br i1 %cmp105, label %do.body.239, label %if.end.107, !dbg !1764

if.end.107:                                       ; preds = %if.then.102
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 2, !dbg !1765
  store %struct._object* %call104, %struct._object** %prefix, align 8, !dbg !1766, !tbaa !1304
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %77 = load %struct._object*, %struct._object** %path, align 8, !dbg !1767, !tbaa !1251
  %state108 = getelementptr inbounds %struct._object, %struct._object* %77, i64 2, !dbg !1767
  %78 = bitcast %struct._object* %state108 to i32*, !dbg !1767
  %bf.load109 = load i32, i32* %78, align 4, !dbg !1767
  %bf.lshr110 = lshr i32 %bf.load109, 2, !dbg !1767
  %bf.clear111 = and i32 %bf.lshr110, 7, !dbg !1767
  %cmp112 = icmp eq i32 %bf.clear111, 1, !dbg !1767
  br i1 %cmp112, label %cond.true.113, label %cond.false.133, !dbg !1767

cond.true.113:                                    ; preds = %if.end.107
  %sub = add i64 %5, -1, !dbg !1768
  %bf.clear117 = and i32 %bf.load109, 32, !dbg !1768
  %tobool118 = icmp eq i32 %bf.clear117, 0, !dbg !1768
  br i1 %tobool118, label %cond.false.130, label %cond.true.119, !dbg !1768

cond.true.119:                                    ; preds = %cond.true.113
  %bf.clear123 = and i32 %bf.load109, 64, !dbg !1770
  %tobool124 = icmp ne i32 %bf.clear123, 0, !dbg !1770
  %add.ptr = getelementptr %struct._object, %struct._object* %77, i64 3, !dbg !1772
  %79 = bitcast %struct._object* %add.ptr to i8*, !dbg !1772
  %add.ptr127 = getelementptr %struct._object, %struct._object* %77, i64 4, i32 1, !dbg !1774
  %80 = bitcast %struct._typeobject** %add.ptr127 to i8*, !dbg !1774
  %cond129 = select i1 %tobool124, i8* %79, i8* %80, !dbg !1770
  br label %cond.end.131, !dbg !1770

cond.false.130:                                   ; preds = %cond.true.113
  %data = getelementptr inbounds %struct._object, %struct._object* %77, i64 4, i32 1, !dbg !1776
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !1776
  %81 = load i8*, i8** %any, align 8, !dbg !1776, !tbaa !1251
  br label %cond.end.131, !dbg !1776

cond.end.131:                                     ; preds = %cond.true.119, %cond.false.130
  %cond132 = phi i8* [ %81, %cond.false.130 ], [ %cond129, %cond.true.119 ], !dbg !1767
  %arrayidx = getelementptr i8, i8* %cond132, i64 %sub, !dbg !1778
  %82 = load i8, i8* %arrayidx, align 1, !dbg !1778, !tbaa !1225
  %conv = zext i8 %82 to i32, !dbg !1778
  br label %cond.end.193, !dbg !1778

cond.false.133:                                   ; preds = %if.end.107
  %cmp138 = icmp eq i32 %bf.clear111, 2, !dbg !1781
  %sub141 = add i64 %5, -1, !dbg !1783
  %bf.clear145 = and i32 %bf.load109, 32, !dbg !1783
  %tobool146 = icmp ne i32 %bf.clear145, 0, !dbg !1783
  br i1 %cmp138, label %cond.true.140, label %cond.false.166, !dbg !1781

cond.true.140:                                    ; preds = %cond.false.133
  br i1 %tobool146, label %cond.true.147, label %cond.false.159, !dbg !1783

cond.true.147:                                    ; preds = %cond.true.140
  %bf.clear151 = and i32 %bf.load109, 64, !dbg !1785
  %tobool152 = icmp ne i32 %bf.clear151, 0, !dbg !1785
  %add.ptr154 = getelementptr %struct._object, %struct._object* %77, i64 3, !dbg !1787
  %83 = bitcast %struct._object* %add.ptr154 to i8*, !dbg !1787
  %add.ptr156 = getelementptr %struct._object, %struct._object* %77, i64 4, i32 1, !dbg !1789
  %84 = bitcast %struct._typeobject** %add.ptr156 to i8*, !dbg !1789
  %cond158 = select i1 %tobool152, i8* %83, i8* %84, !dbg !1785
  br label %cond.end.162, !dbg !1785

cond.false.159:                                   ; preds = %cond.true.140
  %data160 = getelementptr inbounds %struct._object, %struct._object* %77, i64 4, i32 1, !dbg !1791
  %any161 = bitcast %struct._typeobject** %data160 to i8**, !dbg !1791
  %85 = load i8*, i8** %any161, align 8, !dbg !1791, !tbaa !1251
  br label %cond.end.162, !dbg !1791

cond.end.162:                                     ; preds = %cond.true.147, %cond.false.159
  %cond163 = phi i8* [ %85, %cond.false.159 ], [ %cond158, %cond.true.147 ], !dbg !1767
  %86 = bitcast i8* %cond163 to i16*, !dbg !1793
  %arrayidx164 = getelementptr i16, i16* %86, i64 %sub141, !dbg !1793
  %87 = load i16, i16* %arrayidx164, align 2, !dbg !1793, !tbaa !1796
  %conv165 = zext i16 %87 to i32, !dbg !1793
  br label %cond.end.193, !dbg !1793

cond.false.166:                                   ; preds = %cond.false.133
  br i1 %tobool146, label %cond.true.173, label %cond.false.185, !dbg !1798

cond.true.173:                                    ; preds = %cond.false.166
  %bf.clear177 = and i32 %bf.load109, 64, !dbg !1800
  %tobool178 = icmp ne i32 %bf.clear177, 0, !dbg !1800
  %add.ptr180 = getelementptr %struct._object, %struct._object* %77, i64 3, !dbg !1802
  %88 = bitcast %struct._object* %add.ptr180 to i8*, !dbg !1802
  %add.ptr182 = getelementptr %struct._object, %struct._object* %77, i64 4, i32 1, !dbg !1804
  %89 = bitcast %struct._typeobject** %add.ptr182 to i8*, !dbg !1804
  %cond184 = select i1 %tobool178, i8* %88, i8* %89, !dbg !1800
  br label %cond.end.188, !dbg !1800

cond.false.185:                                   ; preds = %cond.false.166
  %data186 = getelementptr inbounds %struct._object, %struct._object* %77, i64 4, i32 1, !dbg !1806
  %any187 = bitcast %struct._typeobject** %data186 to i8**, !dbg !1806
  %90 = load i8*, i8** %any187, align 8, !dbg !1806, !tbaa !1251
  br label %cond.end.188, !dbg !1806

cond.end.188:                                     ; preds = %cond.true.173, %cond.false.185
  %cond189 = phi i8* [ %90, %cond.false.185 ], [ %cond184, %cond.true.173 ], !dbg !1767
  %91 = bitcast i8* %cond189 to i32*, !dbg !1808
  %arrayidx190 = getelementptr i32, i32* %91, i64 %sub141, !dbg !1808
  %92 = load i32, i32* %arrayidx190, align 4, !dbg !1808, !tbaa !1231
  br label %cond.end.193, !dbg !1808

cond.end.193:                                     ; preds = %cond.end.162, %cond.end.188, %cond.end.131
  %cond194 = phi i32 [ %conv, %cond.end.131 ], [ %conv165, %cond.end.162 ], [ %92, %cond.end.188 ], !dbg !1767
  %cmp195 = icmp eq i32 %cond194, 47, !dbg !1811
  br i1 %cmp195, label %do.body.225, label %if.then.197, !dbg !1814

if.then.197:                                      ; preds = %cond.end.193
  %call199 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i64 0, i64 0), %struct._object* %call104, i32 47) #1, !dbg !1815
  call void @llvm.dbg.value(metadata %struct._object* %call199, i64 0, metadata !950, metadata !1245), !dbg !1761
  %cmp200 = icmp eq %struct._object* %call199, null, !dbg !1816
  br i1 %cmp200, label %do.body.239, label %do.body.204, !dbg !1818

do.body.204:                                      ; preds = %if.then.197
  %93 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !1819, !tbaa !1304
  call void @llvm.dbg.value(metadata %struct._object* %93, i64 0, metadata !1008, metadata !1245), !dbg !1819
  %ob_refcnt208 = getelementptr inbounds %struct._object, %struct._object* %93, i64 0, i32 0, !dbg !1821
  %94 = load i64, i64* %ob_refcnt208, align 8, !dbg !1821, !tbaa !1260
  %dec209 = add i64 %94, -1, !dbg !1821
  store i64 %dec209, i64* %ob_refcnt208, align 8, !dbg !1821, !tbaa !1260
  %cmp210 = icmp eq i64 %dec209, 0, !dbg !1821
  br i1 %cmp210, label %if.else.213, label %if.end.216, !dbg !1823

if.else.213:                                      ; preds = %do.body.204
  %ob_type214 = getelementptr inbounds %struct._object, %struct._object* %93, i64 0, i32 1, !dbg !1824
  %95 = load %struct._typeobject*, %struct._typeobject** %ob_type214, align 8, !dbg !1824, !tbaa !1298
  %tp_dealloc215 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %95, i64 0, i32 4, !dbg !1824
  %96 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc215, align 8, !dbg !1824, !tbaa !1299
  call void %96(%struct._object* %93) #1, !dbg !1824
  br label %if.end.216

if.end.216:                                       ; preds = %do.body.204, %if.else.213
  store %struct._object* %call199, %struct._object** %prefix, align 8, !dbg !1826, !tbaa !1304
  br label %do.body.225, !dbg !1827

if.else.221:                                      ; preds = %if.end.99
  %call222 = call %struct._object* @PyUnicode_New(i64 0, i32 0) #1, !dbg !1828
  %prefix223 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 2, !dbg !1829
  store %struct._object* %call222, %struct._object** %prefix223, align 8, !dbg !1830, !tbaa !1304
  br label %do.body.225

do.body.225:                                      ; preds = %cond.end.193, %if.else.221, %if.end.216
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %97 = load %struct._object*, %struct._object** %path, align 8, !dbg !1831, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %97, i64 0, metadata !1014, metadata !1245), !dbg !1831
  %ob_refcnt228 = getelementptr inbounds %struct._object, %struct._object* %97, i64 0, i32 0, !dbg !1833
  %98 = load i64, i64* %ob_refcnt228, align 8, !dbg !1833, !tbaa !1260
  %dec229 = add i64 %98, -1, !dbg !1833
  store i64 %dec229, i64* %ob_refcnt228, align 8, !dbg !1833, !tbaa !1260
  %cmp230 = icmp eq i64 %dec229, 0, !dbg !1833
  br i1 %cmp230, label %if.else.233, label %cleanup.275, !dbg !1835

if.else.233:                                      ; preds = %do.body.225
  %ob_type234 = getelementptr inbounds %struct._object, %struct._object* %97, i64 0, i32 1, !dbg !1836
  %99 = load %struct._typeobject*, %struct._typeobject** %ob_type234, align 8, !dbg !1836, !tbaa !1298
  %tp_dealloc235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %99, i64 0, i32 4, !dbg !1836
  %100 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8, !dbg !1836, !tbaa !1299
  call void %100(%struct._object* %97) #1, !dbg !1836
  br label %cleanup.275

do.body.239.loopexit:                             ; preds = %cleanup
  br label %do.body.239, !dbg !1380

do.body.239:                                      ; preds = %do.body.239.loopexit, %cleanup.thread349, %if.end.91, %if.then.13, %if.then.70, %cond.end.80, %read_directory.exit, %if.then.102, %if.then.197
  %filename.5 = phi %struct._object* [ null, %if.then.13 ], [ null, %if.then.70 ], [ %filename.0.lcssa432, %cond.end.80 ], [ %filename.0.lcssa432, %read_directory.exit ], [ %filename.0.lcssa432, %if.end.91 ], [ null, %if.then.102 ], [ null, %if.then.197 ], [ %filename.0.lcssa, %cleanup.thread349 ], [ null, %do.body.239.loopexit ]
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !948, metadata !1245), !dbg !1380
  %101 = load %struct._object*, %struct._object** %path, align 8, !dbg !1838, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %101, i64 0, metadata !1016, metadata !1245), !dbg !1838
  %ob_refcnt242 = getelementptr inbounds %struct._object, %struct._object* %101, i64 0, i32 0, !dbg !1840
  %102 = load i64, i64* %ob_refcnt242, align 8, !dbg !1840, !tbaa !1260
  %dec243 = add i64 %102, -1, !dbg !1840
  store i64 %dec243, i64* %ob_refcnt242, align 8, !dbg !1840, !tbaa !1260
  %cmp244 = icmp eq i64 %dec243, 0, !dbg !1840
  br i1 %cmp244, label %if.else.247, label %if.end.250, !dbg !1842

if.else.247:                                      ; preds = %do.body.239
  %ob_type248 = getelementptr inbounds %struct._object, %struct._object* %101, i64 0, i32 1, !dbg !1843
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type248, align 8, !dbg !1843, !tbaa !1298
  %tp_dealloc249 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i64 0, i32 4, !dbg !1843
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc249, align 8, !dbg !1843, !tbaa !1299
  call void %104(%struct._object* %101) #1, !dbg !1843
  br label %if.end.250

if.end.250:                                       ; preds = %do.body.239, %if.else.247
  call void @llvm.dbg.value(metadata %struct._object* %filename.5, i64 0, metadata !1018, metadata !1245), !dbg !1845
  %cmp255 = icmp eq %struct._object* %filename.5, null, !dbg !1847
  br i1 %cmp255, label %cleanup.275, label %do.body.258, !dbg !1848

do.body.258:                                      ; preds = %if.end.250
  call void @llvm.dbg.value(metadata %struct._object* %filename.5, i64 0, metadata !1020, metadata !1245), !dbg !1849
  %ob_refcnt261 = getelementptr inbounds %struct._object, %struct._object* %filename.5, i64 0, i32 0, !dbg !1851
  %105 = load i64, i64* %ob_refcnt261, align 8, !dbg !1851, !tbaa !1260
  %dec262 = add i64 %105, -1, !dbg !1851
  store i64 %dec262, i64* %ob_refcnt261, align 8, !dbg !1851, !tbaa !1260
  %cmp263 = icmp eq i64 %dec262, 0, !dbg !1851
  br i1 %cmp263, label %if.else.266, label %cleanup.275, !dbg !1853

if.else.266:                                      ; preds = %do.body.258
  %ob_type267 = getelementptr inbounds %struct._object, %struct._object* %filename.5, i64 0, i32 1, !dbg !1854
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type267, align 8, !dbg !1854, !tbaa !1298
  %tp_dealloc268 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i64 0, i32 4, !dbg !1854
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc268, align 8, !dbg !1854, !tbaa !1299
  call void %107(%struct._object* %filename.5) #1, !dbg !1854
  br label %cleanup.275

cleanup.275:                                      ; preds = %if.end.250, %do.body.258, %if.else.266, %if.else.233, %do.body.225, %cond.end, %if.end, %entry
  %retval.0 = phi i32 [ -1, %entry ], [ -1, %if.end ], [ -1, %cond.end ], [ 0, %do.body.225 ], [ 0, %if.else.233 ], [ -1, %if.else.266 ], [ -1, %do.body.258 ], [ -1, %if.end.250 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1856
  ret i32 %retval.0, !dbg !1856
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #3

declare void @PyObject_GC_Del(i8*) #3

declare void @PyObject_GC_UnTrack(i8*) #3

declare %struct._object* @PyUnicode_FromString(i8*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_find_module(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %path = alloca %struct._object*, align 8
  %fullname = alloca %struct._object*, align 8
  %namespace_portion = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !560, metadata !1245), !dbg !1857
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !561, metadata !1245), !dbg !1858
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %3, i64 0, metadata !562, metadata !1245), !dbg !1859
  %0 = bitcast %struct._object** %path to i8*, !dbg !1860
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1860
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !563, metadata !1245), !dbg !1861
  store %struct._object* null, %struct._object** %path, align 8, !dbg !1861, !tbaa !1251
  %1 = bitcast %struct._object** %fullname to i8*, !dbg !1862
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1862
  %2 = bitcast %struct._object** %namespace_portion to i8*, !dbg !1863
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1863
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !565, metadata !1245), !dbg !1864
  store %struct._object* null, %struct._object** %namespace_portion, align 8, !dbg !1864, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !566, metadata !1245), !dbg !1865
  tail call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !563, metadata !1245), !dbg !1861
  tail call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !564, metadata !1245), !dbg !1866
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), %struct._object** nonnull %fullname, %struct._object** nonnull %path) #1, !dbg !1867
  %tobool = icmp eq i32 %call, 0, !dbg !1867
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1869

if.end:                                           ; preds = %entry
  %3 = bitcast %struct._object* %obj to %struct._zipimporter*, !dbg !1870
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !564, metadata !1245), !dbg !1866
  %4 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !1871, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object** %namespace_portion, i64 0, metadata !565, metadata !1245), !dbg !1864
  %call1 = call fastcc i32 @find_loader(%struct._zipimporter* %3, %struct._object* %4, %struct._object** nonnull %namespace_portion), !dbg !1872
  switch i32 %call1, label %sw.epilog [
    i32 0, label %cleanup
    i32 3, label %do.body
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.6
  ], !dbg !1873

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %namespace_portion, i64 0, metadata !565, metadata !1245), !dbg !1864
  %5 = load %struct._object*, %struct._object** %namespace_portion, align 8, !dbg !1874, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !567, metadata !1245), !dbg !1874
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1876
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1876, !tbaa !1260
  %dec = add i64 %6, -1, !dbg !1876
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1876, !tbaa !1260
  %cmp = icmp eq i64 %dec, 0, !dbg !1876
  br i1 %cmp, label %if.else, label %sw.bb.5, !dbg !1878

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1879
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1879, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1879
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1879, !tbaa !1299
  call void %8(%struct._object* %5) #1, !dbg !1879
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %if.else, %do.body, %if.end
  call void @llvm.dbg.value(metadata %struct._object* @_Py_NoneStruct, i64 0, metadata !566, metadata !1245), !dbg !1865
  br label %sw.epilog, !dbg !1881

sw.bb.6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !566, metadata !1245), !dbg !1865
  br label %sw.epilog, !dbg !1882

sw.epilog:                                        ; preds = %if.end, %sw.bb.6, %sw.bb.5
  %result.0 = phi %struct._object* [ null, %if.end ], [ %obj, %sw.bb.6 ], [ @_Py_NoneStruct, %sw.bb.5 ]
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %result.0, i64 0, i32 0, !dbg !1883
  %9 = load i64, i64* %ob_refcnt7, align 8, !dbg !1883, !tbaa !1260
  %inc = add i64 %9, 1, !dbg !1883
  store i64 %inc, i64* %ob_refcnt7, align 8, !dbg !1883, !tbaa !1260
  br label %cleanup, !dbg !1884

cleanup:                                          ; preds = %if.end, %entry, %sw.epilog
  %retval.0 = phi %struct._object* [ %result.0, %sw.epilog ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1885
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1885
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1885
  ret %struct._object* %retval.0, !dbg !1885
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_find_loader(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %path = alloca %struct._object*, align 8
  %fullname = alloca %struct._object*, align 8
  %namespace_portion = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !638, metadata !1245), !dbg !1886
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !639, metadata !1245), !dbg !1887
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %3, i64 0, metadata !640, metadata !1245), !dbg !1888
  %0 = bitcast %struct._object** %path to i8*, !dbg !1889
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1889
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !641, metadata !1245), !dbg !1890
  store %struct._object* null, %struct._object** %path, align 8, !dbg !1890, !tbaa !1251
  %1 = bitcast %struct._object** %fullname to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1891
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !643, metadata !1245), !dbg !1892
  %2 = bitcast %struct._object** %namespace_portion to i8*, !dbg !1893
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1893
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !644, metadata !1245), !dbg !1894
  store %struct._object* null, %struct._object** %namespace_portion, align 8, !dbg !1894, !tbaa !1251
  tail call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !641, metadata !1245), !dbg !1890
  tail call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !642, metadata !1245), !dbg !1895
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0), %struct._object** nonnull %fullname, %struct._object** nonnull %path) #1, !dbg !1896
  %tobool = icmp eq i32 %call, 0, !dbg !1896
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1898

if.end:                                           ; preds = %entry
  %3 = bitcast %struct._object* %obj to %struct._zipimporter*, !dbg !1899
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !642, metadata !1245), !dbg !1895
  %4 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !1900, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object** %namespace_portion, i64 0, metadata !644, metadata !1245), !dbg !1894
  %call1 = call fastcc i32 @find_loader(%struct._zipimporter* %3, %struct._object* %4, %struct._object** nonnull %namespace_portion), !dbg !1901
  switch i32 %call1, label %cleanup [
    i32 3, label %sw.bb.6
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
  ], !dbg !1902

sw.bb.2:                                          ; preds = %if.end
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct._object* nonnull @_Py_NoneStruct) #1, !dbg !1903
  call void @llvm.dbg.value(metadata %struct._object* %call3, i64 0, metadata !643, metadata !1245), !dbg !1892
  br label %cleanup, !dbg !1904

sw.bb.4:                                          ; preds = %if.end
  %call5 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), %struct._object* %obj) #1, !dbg !1905
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !643, metadata !1245), !dbg !1892
  br label %cleanup, !dbg !1906

sw.bb.6:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %namespace_portion, i64 0, metadata !644, metadata !1245), !dbg !1894
  %5 = load %struct._object*, %struct._object** %namespace_portion, align 8, !dbg !1907, !tbaa !1251
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), %struct._object* nonnull @_Py_NoneStruct, %struct._object* %5) #1, !dbg !1908
  call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !643, metadata !1245), !dbg !1892
  call void @llvm.dbg.value(metadata %struct._object** %namespace_portion, i64 0, metadata !644, metadata !1245), !dbg !1894
  call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !645, metadata !1245), !dbg !1909
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !1911
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1911, !tbaa !1260
  %dec = add i64 %6, -1, !dbg !1911
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1911, !tbaa !1260
  %cmp = icmp eq i64 %dec, 0, !dbg !1911
  br i1 %cmp, label %if.else, label %cleanup, !dbg !1913

if.else:                                          ; preds = %sw.bb.6
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1914
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1914, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1914
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1914, !tbaa !1299
  call void %8(%struct._object* %5) #1, !dbg !1914
  br label %cleanup

cleanup:                                          ; preds = %sw.bb.2, %sw.bb.4, %if.end, %if.else, %sw.bb.6, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ %call7, %sw.bb.6 ], [ %call7, %if.else ], [ null, %if.end ], [ %call5, %sw.bb.4 ], [ %call3, %sw.bb.2 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1916
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1916
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1916
  ret %struct._object* %retval.0, !dbg !1916
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_load_module(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %fullname = alloca %struct._object*, align 8
  %modpath = alloca %struct._object*, align 8
  %ispackage = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !650, metadata !1245), !dbg !1917
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !651, metadata !1245), !dbg !1918
  %0 = bitcast %struct._object* %obj to %struct._zipimporter*, !dbg !1919
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %0, i64 0, metadata !652, metadata !1245), !dbg !1920
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !653, metadata !1245), !dbg !1921
  %1 = bitcast %struct._object** %fullname to i8*, !dbg !1922
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1922
  %2 = bitcast %struct._object** %modpath to i8*, !dbg !1923
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1923
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !657, metadata !1245), !dbg !1924
  store %struct._object* null, %struct._object** %modpath, align 8, !dbg !1924, !tbaa !1251
  %3 = bitcast i32* %ispackage to i8*, !dbg !1925
  call void @llvm.lifetime.start(i64 4, i8* %3) #1, !dbg !1925
  tail call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !656, metadata !1245), !dbg !1926
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i64 0, i64 0), %struct._object** nonnull %fullname) #1, !dbg !1927
  %tobool = icmp eq i32 %call, 0, !dbg !1927
  br i1 %tobool, label %cleanup.129, label %if.end, !dbg !1929

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !656, metadata !1245), !dbg !1926
  %4 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !1930, !tbaa !1251
  %state = getelementptr inbounds %struct._object, %struct._object* %4, i64 2, !dbg !1930
  %5 = bitcast %struct._object* %state to i32*, !dbg !1930
  %bf.load = load i32, i32* %5, align 4, !dbg !1930
  %bf.clear = and i32 %bf.load, 128, !dbg !1930
  %tobool1 = icmp eq i32 %bf.clear, 0, !dbg !1930
  br i1 %tobool1, label %cond.end, label %if.end.4, !dbg !1930

cond.end:                                         ; preds = %if.end
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %4) #1, !dbg !1932
  %cmp = icmp eq i32 %call2, -1, !dbg !1934
  br i1 %cmp, label %cleanup.129, label %cond.end.if.end.4_crit_edge, !dbg !1937

cond.end.if.end.4_crit_edge:                      ; preds = %cond.end
  %.pre = load %struct._object*, %struct._object** %fullname, align 8, !dbg !1938, !tbaa !1251
  br label %if.end.4, !dbg !1937

if.end.4:                                         ; preds = %cond.end.if.end.4_crit_edge, %if.end
  %6 = phi %struct._object* [ %.pre, %cond.end.if.end.4_crit_edge ], [ %4, %if.end ], !dbg !1938
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !656, metadata !1245), !dbg !1926
  call void @llvm.dbg.value(metadata %struct._object** %modpath, i64 0, metadata !657, metadata !1245), !dbg !1924
  call void @llvm.dbg.value(metadata i32* %ispackage, i64 0, metadata !658, metadata !1245), !dbg !1939
  %call5 = call fastcc %struct._object* @get_module_code(%struct._zipimporter* %0, %struct._object* %6, i32* nonnull %ispackage, %struct._object** nonnull %modpath), !dbg !1940
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !653, metadata !1245), !dbg !1921
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1941
  br i1 %cmp6, label %if.end.107, label %if.end.8, !dbg !1943

if.end.8:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !656, metadata !1245), !dbg !1926
  %7 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !1944, !tbaa !1251
  %call9 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %7) #1, !dbg !1945
  call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !654, metadata !1245), !dbg !1946
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !1947
  br i1 %cmp10, label %do.body.95, label %if.end.12, !dbg !1949

if.end.12:                                        ; preds = %if.end.8
  %call13 = call %struct._object* @PyModule_GetDict(%struct._object* %call9) #1, !dbg !1950
  call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !655, metadata !1245), !dbg !1951
  %call14 = call i32 @PyDict_SetItemString(%struct._object* %call13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), %struct._object* %obj) #1, !dbg !1952
  %cmp15 = icmp eq i32 %call14, 0, !dbg !1954
  br i1 %cmp15, label %if.end.17, label %do.body.95, !dbg !1955

if.end.17:                                        ; preds = %if.end.12
  call void @llvm.dbg.value(metadata i32* %ispackage, i64 0, metadata !658, metadata !1245), !dbg !1939
  %8 = load i32, i32* %ispackage, align 4, !dbg !1956, !tbaa !1231
  %tobool18 = icmp eq i32 %8, 0, !dbg !1956
  br i1 %tobool18, label %if.then.58, label %if.then.19, !dbg !1957

if.then.19:                                       ; preds = %if.end.17
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !656, metadata !1245), !dbg !1926
  %9 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !1958, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %9, i64 0, metadata !614, metadata !1245) #1, !dbg !1959
  %state.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 2, !dbg !1961
  %10 = bitcast %struct._object* %state.i to i32*, !dbg !1961
  %bf.load.i = load i32, i32* %10, align 4, !dbg !1961
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !1961
  %tobool.i = icmp eq i32 %bf.clear.i, 0, !dbg !1961
  br i1 %tobool.i, label %cond.false.i, label %if.end.i, !dbg !1961

cond.false.i:                                     ; preds = %if.then.19
  %call.i = call i32 @_PyUnicode_Ready(%struct._object* %9) #1, !dbg !1963
  %phitmp.i = icmp slt i32 %call.i, 0, !dbg !1963
  br i1 %phitmp.i, label %do.body.95, label %if.end.i, !dbg !1965

if.end.i:                                         ; preds = %cond.false.i, %if.then.19
  %11 = getelementptr inbounds %struct._object, %struct._object* %9, i64 1, i32 0, !dbg !1966
  %12 = load i64, i64* %11, align 8, !dbg !1966, !tbaa !1344
  call void @llvm.dbg.value(metadata i64 %12, i64 0, metadata !615, metadata !1245) #1, !dbg !1967
  %call1.i = call i64 @PyUnicode_FindChar(%struct._object* %9, i32 46, i64 0, i64 %12, i32 -1) #1, !dbg !1968
  call void @llvm.dbg.value(metadata i64 %call1.i, i64 0, metadata !616, metadata !1245) #1, !dbg !1969
  %cmp2.i = icmp eq i64 %call1.i, -1, !dbg !1970
  br i1 %cmp2.i, label %get_subname.exit.thread185, label %get_subname.exit, !dbg !1972

get_subname.exit.thread185:                       ; preds = %if.end.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 0, !dbg !1973
  %13 = load i64, i64* %ob_refcnt.i, align 8, !dbg !1973, !tbaa !1260
  %inc.i = add i64 %13, 1, !dbg !1973
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !1973, !tbaa !1260
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !663, metadata !1245), !dbg !1975
  br label %if.end.23, !dbg !1976

get_subname.exit:                                 ; preds = %if.end.i
  %add.i = add i64 %call1.i, 1, !dbg !1977
  %call4.i = call %struct._object* @PyUnicode_Substring(%struct._object* %9, i64 %add.i, i64 %12) #1, !dbg !1978
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !663, metadata !1245), !dbg !1975
  %cmp21 = icmp eq %struct._object* %call4.i, null, !dbg !1979
  br i1 %cmp21, label %do.body.95, label %if.end.23, !dbg !1976

if.end.23:                                        ; preds = %get_subname.exit.thread185, %get_subname.exit
  %retval.0.i187 = phi %struct._object* [ %9, %get_subname.exit.thread185 ], [ %call4.i, %get_subname.exit ]
  %archive = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, !dbg !1981
  %14 = bitcast %struct._object* %archive to %struct._object**, !dbg !1981
  %15 = load %struct._object*, %struct._object** %14, align 8, !dbg !1981, !tbaa !1287
  %prefix = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, i32 1, !dbg !1982
  %16 = bitcast %struct._typeobject** %prefix to %struct._object**, !dbg !1982
  %17 = load %struct._object*, %struct._object** %16, align 8, !dbg !1982, !tbaa !1304
  %call24 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %struct._object* %15, i32 47, %struct._object* %17, %struct._object* %retval.0.i187) #1, !dbg !1983
  call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !662, metadata !1245), !dbg !1984
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !665, metadata !1245), !dbg !1985
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %retval.0.i187, i64 0, i32 0, !dbg !1987
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !1987, !tbaa !1260
  %dec = add i64 %18, -1, !dbg !1987
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1987, !tbaa !1260
  %cmp25 = icmp eq i64 %dec, 0, !dbg !1987
  br i1 %cmp25, label %if.else, label %if.end.27, !dbg !1989

if.else:                                          ; preds = %if.end.23
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %retval.0.i187, i64 0, i32 1, !dbg !1990
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1990, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1990
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1990, !tbaa !1299
  call void %20(%struct._object* %retval.0.i187) #1, !dbg !1990
  br label %if.end.27

if.end.27:                                        ; preds = %if.end.23, %if.else
  %cmp28 = icmp eq %struct._object* %call24, null, !dbg !1992
  br i1 %cmp28, label %do.body.95, label %if.end.30, !dbg !1994

if.end.30:                                        ; preds = %if.end.27
  %call31 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), %struct._object* %call24) #1, !dbg !1995
  call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !659, metadata !1245), !dbg !1996
  %cmp32 = icmp eq %struct._object* %call31, null, !dbg !1997
  br i1 %cmp32, label %do.body.95, label %if.end.34, !dbg !1999

if.end.34:                                        ; preds = %if.end.30
  %call35 = call i32 @PyDict_SetItemString(%struct._object* %call13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), %struct._object* %call31) #1, !dbg !2000
  call void @llvm.dbg.value(metadata i32 %call35, i64 0, metadata !664, metadata !1245), !dbg !2001
  call void @llvm.dbg.value(metadata %struct._object* %call31, i64 0, metadata !667, metadata !1245), !dbg !2002
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %call31, i64 0, i32 0, !dbg !2004
  %21 = load i64, i64* %ob_refcnt38, align 8, !dbg !2004, !tbaa !1260
  %dec39 = add i64 %21, -1, !dbg !2004
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !2004, !tbaa !1260
  %cmp40 = icmp eq i64 %dec39, 0, !dbg !2004
  br i1 %cmp40, label %if.else.42, label %cleanup, !dbg !2006

if.else.42:                                       ; preds = %if.end.34
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %call31, i64 0, i32 1, !dbg !2007
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !2007, !tbaa !1298
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i64 0, i32 4, !dbg !2007
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !2007, !tbaa !1299
  call void %23(%struct._object* %call31) #1, !dbg !2007
  br label %cleanup

cleanup:                                          ; preds = %if.else.42, %if.end.34
  %cmp48 = icmp eq i32 %call35, 0, !dbg !2009
  br i1 %cmp48, label %if.then.58, label %do.body.95

if.then.58:                                       ; preds = %cleanup, %if.end.17
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !656, metadata !1245), !dbg !1926
  %24 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2011, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object** %modpath, i64 0, metadata !657, metadata !1245), !dbg !1924
  %25 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2012, !tbaa !1251
  %call55 = call %struct._object* @PyImport_ExecCodeModuleObject(%struct._object* %24, %struct._object* %call5, %struct._object* %25, %struct._object* null) #1, !dbg !2013
  call void @llvm.dbg.value(metadata %struct._object* %call55, i64 0, metadata !654, metadata !1245), !dbg !1946
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !669, metadata !1245), !dbg !2014
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !653, metadata !1245), !dbg !1921
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !671, metadata !1245), !dbg !2016
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !2018
  %26 = load i64, i64* %ob_refcnt61, align 8, !dbg !2018, !tbaa !1260
  %dec62 = add i64 %26, -1, !dbg !2018
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !2018, !tbaa !1260
  %cmp63 = icmp eq i64 %dec62, 0, !dbg !2018
  br i1 %cmp63, label %if.else.65, label %if.end.71, !dbg !2020

if.else.65:                                       ; preds = %if.then.58
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !2021
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !2021, !tbaa !1298
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !2021
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8, !dbg !2021, !tbaa !1299
  call void %28(%struct._object* %call5) #1, !dbg !2021
  br label %if.end.71

if.end.71:                                        ; preds = %if.else.65, %if.then.58
  %cmp74 = icmp eq %struct._object* %call55, null, !dbg !2023
  br i1 %cmp74, label %if.end.107, label %if.end.76, !dbg !2025

if.end.76:                                        ; preds = %if.end.71
  %29 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2026, !tbaa !1231
  %tobool77 = icmp eq i32 %29, 0, !dbg !2026
  br i1 %tobool77, label %do.body.80, label %if.then.78, !dbg !2028

if.then.78:                                       ; preds = %if.end.76
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !656, metadata !1245), !dbg !1926
  %30 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2029, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object** %modpath, i64 0, metadata !657, metadata !1245), !dbg !1924
  %31 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2030, !tbaa !1251
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0), %struct._object* %30, %struct._object* %31) #1, !dbg !2031
  br label %do.body.80, !dbg !2031

do.body.80:                                       ; preds = %if.end.76, %if.then.78
  call void @llvm.dbg.value(metadata %struct._object** %modpath, i64 0, metadata !657, metadata !1245), !dbg !1924
  %32 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2032, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %32, i64 0, metadata !675, metadata !1245), !dbg !2032
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 0, !dbg !2034
  %33 = load i64, i64* %ob_refcnt82, align 8, !dbg !2034, !tbaa !1260
  %dec83 = add i64 %33, -1, !dbg !2034
  store i64 %dec83, i64* %ob_refcnt82, align 8, !dbg !2034, !tbaa !1260
  %cmp84 = icmp eq i64 %dec83, 0, !dbg !2034
  br i1 %cmp84, label %if.else.86, label %cleanup.129, !dbg !2036

if.else.86:                                       ; preds = %do.body.80
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 1, !dbg !2037
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8, !dbg !2037, !tbaa !1298
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !2037
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8, !dbg !2037, !tbaa !1299
  call void %35(%struct._object* %32) #1, !dbg !2037
  br label %cleanup.129

do.body.95:                                       ; preds = %if.end.27, %if.end.30, %cleanup, %cond.false.i, %get_subname.exit, %if.end.12, %if.end.8
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !679, metadata !1245), !dbg !2039
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !2041
  %36 = load i64, i64* %ob_refcnt97, align 8, !dbg !2041, !tbaa !1260
  %dec98 = add i64 %36, -1, !dbg !2041
  store i64 %dec98, i64* %ob_refcnt97, align 8, !dbg !2041, !tbaa !1260
  %cmp99 = icmp eq i64 %dec98, 0, !dbg !2041
  br i1 %cmp99, label %if.else.101, label %if.end.107, !dbg !2043

if.else.101:                                      ; preds = %do.body.95
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !2044
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8, !dbg !2044, !tbaa !1298
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i64 0, i32 4, !dbg !2044
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8, !dbg !2044, !tbaa !1299
  call void %38(%struct._object* %call5) #1, !dbg !2044
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.71, %if.end.4, %if.else.101, %do.body.95
  call void @llvm.dbg.value(metadata %struct._object** %modpath, i64 0, metadata !657, metadata !1245), !dbg !1924
  %39 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2046, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !682, metadata !1245), !dbg !2046
  %cmp112 = icmp eq %struct._object* %39, null, !dbg !2048
  br i1 %cmp112, label %cleanup.129, label %do.body.114, !dbg !2049

do.body.114:                                      ; preds = %if.end.107
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !684, metadata !1245), !dbg !2050
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 0, !dbg !2052
  %40 = load i64, i64* %ob_refcnt116, align 8, !dbg !2052, !tbaa !1260
  %dec117 = add i64 %40, -1, !dbg !2052
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !2052, !tbaa !1260
  %cmp118 = icmp eq i64 %dec117, 0, !dbg !2052
  br i1 %cmp118, label %if.else.120, label %cleanup.129, !dbg !2054

if.else.120:                                      ; preds = %do.body.114
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 1, !dbg !2055
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !2055, !tbaa !1298
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !2055
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !2055, !tbaa !1299
  call void %42(%struct._object* %39) #1, !dbg !2055
  br label %cleanup.129

cleanup.129:                                      ; preds = %if.end.107, %do.body.114, %if.else.120, %if.else.86, %do.body.80, %cond.end, %entry
  %retval.0 = phi %struct._object* [ null, %entry ], [ null, %cond.end ], [ %call55, %do.body.80 ], [ %call55, %if.else.86 ], [ null, %if.else.120 ], [ null, %do.body.114 ], [ null, %if.end.107 ]
  call void @llvm.lifetime.end(i64 4, i8* %3) #1, !dbg !2057
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !2057
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !2057
  ret %struct._object* %retval.0, !dbg !2057
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_data(%struct._object* nocapture readonly %obj, %struct._object* %args) #0 {
entry:
  %path = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !877, metadata !1245), !dbg !2058
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !878, metadata !1245), !dbg !2059
  %0 = bitcast %struct._object** %path to i8*, !dbg !2060
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2060
  tail call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i64 0, i64 0), %struct._object** nonnull %path) #1, !dbg !2062
  %tobool = icmp eq i32 %call, 0, !dbg !2062
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2064

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %1 = load %struct._object*, %struct._object** %path, align 8, !dbg !2065, !tbaa !1251
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !2065
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2065, !tbaa !1260
  %inc = add i64 %2, 1, !dbg !2065
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2065, !tbaa !1260
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %state = getelementptr inbounds %struct._object, %struct._object* %1, i64 2, !dbg !2066
  %3 = bitcast %struct._object* %state to i32*, !dbg !2066
  %bf.load = load i32, i32* %3, align 4, !dbg !2066
  %bf.clear = and i32 %bf.load, 128, !dbg !2066
  %tobool1 = icmp eq i32 %bf.clear, 0, !dbg !2066
  br i1 %tobool1, label %cond.end, label %if.end.4, !dbg !2066

cond.end:                                         ; preds = %if.end
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %1) #1, !dbg !2068
  %cmp = icmp eq i32 %call2, -1, !dbg !2070
  br i1 %cmp, label %do.body.142, label %cond.end.if.end.4_crit_edge, !dbg !2073

cond.end.if.end.4_crit_edge:                      ; preds = %cond.end
  %.pre = load %struct._object*, %struct._object** %path, align 8, !dbg !2074, !tbaa !1251
  br label %if.end.4, !dbg !2073

if.end.4:                                         ; preds = %cond.end.if.end.4_crit_edge, %if.end
  %4 = phi %struct._object* [ %.pre, %cond.end.if.end.4_crit_edge ], [ %1, %if.end ], !dbg !2074
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %5 = getelementptr inbounds %struct._object, %struct._object* %4, i64 1, i32 0, !dbg !2074
  %6 = load i64, i64* %5, align 8, !dbg !2074, !tbaa !1344
  call void @llvm.dbg.value(metadata i64 %6, i64 0, metadata !884, metadata !1245), !dbg !2075
  %archive = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, !dbg !2076
  %7 = bitcast %struct._object* %archive to %struct._object**, !dbg !2076
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !2076, !tbaa !1287
  %9 = getelementptr inbounds %struct._object, %struct._object* %8, i64 1, i32 0, !dbg !2076
  %10 = load i64, i64* %9, align 8, !dbg !2076, !tbaa !1344
  call void @llvm.dbg.value(metadata i64 %10, i64 0, metadata !885, metadata !1245), !dbg !2077
  call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !883, metadata !1245), !dbg !2078
  %call7 = call i64 @PyUnicode_Tailmatch(%struct._object* %4, %struct._object* %8, i64 0, i64 %10, i32 -1) #1, !dbg !2079
  %tobool8 = icmp eq i64 %call7, 0, !dbg !2079
  %.pre191 = load %struct._object*, %struct._object** %path, align 8, !dbg !2081, !tbaa !1251
  br i1 %tobool8, label %if.end.97, label %land.lhs.true, !dbg !2082

land.lhs.true:                                    ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %state9 = getelementptr inbounds %struct._object, %struct._object* %.pre191, i64 2, !dbg !2083
  %11 = bitcast %struct._object* %state9 to i32*, !dbg !2083
  %bf.load10 = load i32, i32* %11, align 4, !dbg !2083
  %bf.lshr11 = lshr i32 %bf.load10, 2, !dbg !2083
  %bf.clear12 = and i32 %bf.lshr11, 7, !dbg !2083
  %cmp13 = icmp eq i32 %bf.clear12, 1, !dbg !2083
  br i1 %cmp13, label %cond.true.14, label %cond.false.34, !dbg !2083

cond.true.14:                                     ; preds = %land.lhs.true
  %bf.clear18 = and i32 %bf.load10, 32, !dbg !2085
  %tobool19 = icmp eq i32 %bf.clear18, 0, !dbg !2085
  br i1 %tobool19, label %cond.false.31, label %cond.true.20, !dbg !2085

cond.true.20:                                     ; preds = %cond.true.14
  %bf.clear24 = and i32 %bf.load10, 64, !dbg !2087
  %tobool25 = icmp ne i32 %bf.clear24, 0, !dbg !2087
  %add.ptr = getelementptr %struct._object, %struct._object* %.pre191, i64 3, !dbg !2089
  %12 = bitcast %struct._object* %add.ptr to i8*, !dbg !2089
  %add.ptr28 = getelementptr %struct._object, %struct._object* %.pre191, i64 4, i32 1, !dbg !2091
  %13 = bitcast %struct._typeobject** %add.ptr28 to i8*, !dbg !2091
  %cond30 = select i1 %tobool25, i8* %12, i8* %13, !dbg !2087
  br label %cond.end.32, !dbg !2087

cond.false.31:                                    ; preds = %cond.true.14
  %data = getelementptr inbounds %struct._object, %struct._object* %.pre191, i64 4, i32 1, !dbg !2093
  %any = bitcast %struct._typeobject** %data to i8**, !dbg !2093
  %14 = load i8*, i8** %any, align 8, !dbg !2093, !tbaa !1251
  br label %cond.end.32, !dbg !2093

cond.end.32:                                      ; preds = %cond.true.20, %cond.false.31
  %cond33 = phi i8* [ %14, %cond.false.31 ], [ %cond30, %cond.true.20 ], !dbg !2095
  %arrayidx = getelementptr i8, i8* %cond33, i64 %10, !dbg !2096
  %15 = load i8, i8* %arrayidx, align 1, !dbg !2096, !tbaa !1225
  %conv = zext i8 %15 to i32, !dbg !2096
  br label %cond.end.92, !dbg !2096

cond.false.34:                                    ; preds = %land.lhs.true
  %cmp39 = icmp eq i32 %bf.clear12, 2, !dbg !2099
  %bf.clear45 = and i32 %bf.load10, 32, !dbg !2101
  %tobool46 = icmp ne i32 %bf.clear45, 0, !dbg !2101
  br i1 %cmp39, label %cond.true.41, label %cond.false.66, !dbg !2099

cond.true.41:                                     ; preds = %cond.false.34
  br i1 %tobool46, label %cond.true.47, label %cond.false.59, !dbg !2101

cond.true.47:                                     ; preds = %cond.true.41
  %bf.clear51 = and i32 %bf.load10, 64, !dbg !2103
  %tobool52 = icmp ne i32 %bf.clear51, 0, !dbg !2103
  %add.ptr54 = getelementptr %struct._object, %struct._object* %.pre191, i64 3, !dbg !2105
  %16 = bitcast %struct._object* %add.ptr54 to i8*, !dbg !2105
  %add.ptr56 = getelementptr %struct._object, %struct._object* %.pre191, i64 4, i32 1, !dbg !2107
  %17 = bitcast %struct._typeobject** %add.ptr56 to i8*, !dbg !2107
  %cond58 = select i1 %tobool52, i8* %16, i8* %17, !dbg !2103
  br label %cond.end.62, !dbg !2103

cond.false.59:                                    ; preds = %cond.true.41
  %data60 = getelementptr inbounds %struct._object, %struct._object* %.pre191, i64 4, i32 1, !dbg !2109
  %any61 = bitcast %struct._typeobject** %data60 to i8**, !dbg !2109
  %18 = load i8*, i8** %any61, align 8, !dbg !2109, !tbaa !1251
  br label %cond.end.62, !dbg !2109

cond.end.62:                                      ; preds = %cond.true.47, %cond.false.59
  %cond63 = phi i8* [ %18, %cond.false.59 ], [ %cond58, %cond.true.47 ], !dbg !2095
  %19 = bitcast i8* %cond63 to i16*, !dbg !2111
  %arrayidx64 = getelementptr i16, i16* %19, i64 %10, !dbg !2111
  %20 = load i16, i16* %arrayidx64, align 2, !dbg !2111, !tbaa !1796
  %conv65 = zext i16 %20 to i32, !dbg !2111
  br label %cond.end.92, !dbg !2111

cond.false.66:                                    ; preds = %cond.false.34
  br i1 %tobool46, label %cond.true.72, label %cond.false.84, !dbg !2114

cond.true.72:                                     ; preds = %cond.false.66
  %bf.clear76 = and i32 %bf.load10, 64, !dbg !2116
  %tobool77 = icmp ne i32 %bf.clear76, 0, !dbg !2116
  %add.ptr79 = getelementptr %struct._object, %struct._object* %.pre191, i64 3, !dbg !2118
  %21 = bitcast %struct._object* %add.ptr79 to i8*, !dbg !2118
  %add.ptr81 = getelementptr %struct._object, %struct._object* %.pre191, i64 4, i32 1, !dbg !2120
  %22 = bitcast %struct._typeobject** %add.ptr81 to i8*, !dbg !2120
  %cond83 = select i1 %tobool77, i8* %21, i8* %22, !dbg !2116
  br label %cond.end.87, !dbg !2116

cond.false.84:                                    ; preds = %cond.false.66
  %data85 = getelementptr inbounds %struct._object, %struct._object* %.pre191, i64 4, i32 1, !dbg !2122
  %any86 = bitcast %struct._typeobject** %data85 to i8**, !dbg !2122
  %23 = load i8*, i8** %any86, align 8, !dbg !2122, !tbaa !1251
  br label %cond.end.87, !dbg !2122

cond.end.87:                                      ; preds = %cond.true.72, %cond.false.84
  %cond88 = phi i8* [ %23, %cond.false.84 ], [ %cond83, %cond.true.72 ], !dbg !2095
  %24 = bitcast i8* %cond88 to i32*, !dbg !2124
  %arrayidx89 = getelementptr i32, i32* %24, i64 %10, !dbg !2124
  %25 = load i32, i32* %arrayidx89, align 4, !dbg !2124, !tbaa !1231
  br label %cond.end.92, !dbg !2124

cond.end.92:                                      ; preds = %cond.end.62, %cond.end.87, %cond.end.32
  %cond93 = phi i32 [ %conv, %cond.end.32 ], [ %conv65, %cond.end.62 ], [ %25, %cond.end.87 ], !dbg !2095
  %cmp94 = icmp eq i32 %cond93, 47, !dbg !2127
  %add = add i64 %10, 1, !dbg !2130
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !883, metadata !1245), !dbg !2078
  %add. = select i1 %cmp94, i64 %add, i64 0, !dbg !2132
  br label %if.end.97, !dbg !2132

if.end.97:                                        ; preds = %if.end.4, %cond.end.92
  %path_start.0 = phi i64 [ %add., %cond.end.92 ], [ 0, %if.end.4 ]
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %call98 = call %struct._object* @PyUnicode_Substring(%struct._object* %.pre191, i64 %path_start.0, i64 %6) #1, !dbg !2133
  call void @llvm.dbg.value(metadata %struct._object* %call98, i64 0, metadata !881, metadata !1245), !dbg !2134
  %cmp99 = icmp eq %struct._object* %call98, null, !dbg !2135
  br i1 %cmp99, label %do.body.142, label %if.end.102, !dbg !2137

if.end.102:                                       ; preds = %if.end.97
  %files = getelementptr inbounds %struct._object, %struct._object* %obj, i64 2, !dbg !2138
  %26 = bitcast %struct._object* %files to %struct._object**, !dbg !2138
  %27 = load %struct._object*, %struct._object** %26, align 8, !dbg !2138, !tbaa !1316
  %call103 = call %struct._object* @PyDict_GetItem(%struct._object* %27, %struct._object* %call98) #1, !dbg !2139
  call void @llvm.dbg.value(metadata %struct._object* %call103, i64 0, metadata !882, metadata !1245), !dbg !2140
  %cmp104 = icmp eq %struct._object* %call103, null, !dbg !2141
  br i1 %cmp104, label %if.then.106, label %do.body.114, !dbg !2142

if.then.106:                                      ; preds = %if.end.102
  %28 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2143, !tbaa !1251
  %call107 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %28, %struct._object* %call98) #1, !dbg !2144
  call void @llvm.dbg.value(metadata %struct._object* %call98, i64 0, metadata !886, metadata !1245), !dbg !2145
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %call98, i64 0, i32 0, !dbg !2147
  %29 = load i64, i64* %ob_refcnt108, align 8, !dbg !2147, !tbaa !1260
  %dec = add i64 %29, -1, !dbg !2147
  store i64 %dec, i64* %ob_refcnt108, align 8, !dbg !2147, !tbaa !1260
  %cmp109 = icmp eq i64 %dec, 0, !dbg !2147
  br i1 %cmp109, label %if.else, label %do.body.142, !dbg !2149

if.else:                                          ; preds = %if.then.106
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call98, i64 0, i32 1, !dbg !2150
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2150, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i64 0, i32 4, !dbg !2150
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2150, !tbaa !1299
  call void %31(%struct._object* %call98) #1, !dbg !2150
  br label %do.body.142

do.body.114:                                      ; preds = %if.end.102
  call void @llvm.dbg.value(metadata %struct._object* %call98, i64 0, metadata !890, metadata !1245), !dbg !2152
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %call98, i64 0, i32 0, !dbg !2154
  %32 = load i64, i64* %ob_refcnt116, align 8, !dbg !2154, !tbaa !1260
  %dec117 = add i64 %32, -1, !dbg !2154
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !2154, !tbaa !1260
  %cmp118 = icmp eq i64 %dec117, 0, !dbg !2154
  br i1 %cmp118, label %if.else.121, label %if.end.124, !dbg !2156

if.else.121:                                      ; preds = %do.body.114
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %call98, i64 0, i32 1, !dbg !2157
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8, !dbg !2157, !tbaa !1298
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i64 0, i32 4, !dbg !2157
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8, !dbg !2157, !tbaa !1299
  call void %34(%struct._object* %call98) #1, !dbg !2157
  br label %if.end.124

if.end.124:                                       ; preds = %do.body.114, %if.else.121
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %35 = load %struct._object*, %struct._object** %path, align 8, !dbg !2159, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !892, metadata !1245), !dbg !2159
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 0, !dbg !2161
  %36 = load i64, i64* %ob_refcnt129, align 8, !dbg !2161, !tbaa !1260
  %dec130 = add i64 %36, -1, !dbg !2161
  store i64 %dec130, i64* %ob_refcnt129, align 8, !dbg !2161, !tbaa !1260
  %cmp131 = icmp eq i64 %dec130, 0, !dbg !2161
  br i1 %cmp131, label %if.else.134, label %if.end.137, !dbg !2163

if.else.134:                                      ; preds = %if.end.124
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 1, !dbg !2164
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8, !dbg !2164, !tbaa !1298
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i64 0, i32 4, !dbg !2164
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8, !dbg !2164, !tbaa !1299
  call void %38(%struct._object* %35) #1, !dbg !2164
  br label %if.end.137

if.end.137:                                       ; preds = %if.end.124, %if.else.134
  %39 = load %struct._object*, %struct._object** %7, align 8, !dbg !2166, !tbaa !1287
  %call141 = call fastcc %struct._object* @get_data(%struct._object* %39, %struct._object* %call103), !dbg !2167
  br label %cleanup, !dbg !2168

do.body.142:                                      ; preds = %if.else, %if.then.106, %cond.end, %if.end.97
  call void @llvm.dbg.value(metadata %struct._object** %path, i64 0, metadata !880, metadata !1245), !dbg !2061
  %40 = load %struct._object*, %struct._object** %path, align 8, !dbg !2169, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %40, i64 0, metadata !894, metadata !1245), !dbg !2169
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 0, !dbg !2171
  %41 = load i64, i64* %ob_refcnt144, align 8, !dbg !2171, !tbaa !1260
  %dec145 = add i64 %41, -1, !dbg !2171
  store i64 %dec145, i64* %ob_refcnt144, align 8, !dbg !2171, !tbaa !1260
  %cmp146 = icmp eq i64 %dec145, 0, !dbg !2171
  br i1 %cmp146, label %if.else.149, label %cleanup, !dbg !2173

if.else.149:                                      ; preds = %do.body.142
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %40, i64 0, i32 1, !dbg !2174
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8, !dbg !2174, !tbaa !1298
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !2174
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8, !dbg !2174, !tbaa !1299
  call void %43(%struct._object* %40) #1, !dbg !2174
  br label %cleanup

cleanup:                                          ; preds = %if.else.149, %do.body.142, %entry, %if.end.137
  %retval.0 = phi %struct._object* [ %call141, %if.end.137 ], [ null, %entry ], [ null, %do.body.142 ], [ null, %if.else.149 ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2176
  ret %struct._object* %retval.0, !dbg !2176
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_code(%struct._object* nocapture readonly %obj, %struct._object* %args) #0 {
entry:
  %fullname = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !898, metadata !1245), !dbg !2177
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !899, metadata !1245), !dbg !2178
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %1, i64 0, metadata !900, metadata !1245), !dbg !2179
  %0 = bitcast %struct._object** %fullname to i8*, !dbg !2180
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2180
  tail call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !901, metadata !1245), !dbg !2181
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i64 0, i64 0), %struct._object** nonnull %fullname) #1, !dbg !2182
  %tobool = icmp eq i32 %call, 0, !dbg !2182
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2184

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._object* %obj to %struct._zipimporter*, !dbg !2185
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !901, metadata !1245), !dbg !2181
  %2 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2186, !tbaa !1251
  %call1 = call fastcc %struct._object* @get_module_code(%struct._zipimporter* %1, %struct._object* %2, i32* null, %struct._object** null), !dbg !2187
  br label %cleanup, !dbg !2188

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct._object* [ %call1, %if.end ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2189
  ret %struct._object* %retval.0, !dbg !2189
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_source(%struct._object* nocapture readonly %obj, %struct._object* %args) #0 {
entry:
  %fullname = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !904, metadata !1245), !dbg !2190
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !905, metadata !1245), !dbg !2191
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %1, i64 0, metadata !906, metadata !1245), !dbg !2192
  %0 = bitcast %struct._object** %fullname to i8*, !dbg !2193
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2193
  tail call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !908, metadata !1245), !dbg !2194
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i64 0, i64 0), %struct._object** nonnull %fullname) #1, !dbg !2195
  %tobool = icmp eq i32 %call, 0, !dbg !2195
  br i1 %tobool, label %cleanup.74, label %if.end, !dbg !2197

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._object* %obj to %struct._zipimporter*, !dbg !2198
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !908, metadata !1245), !dbg !2194
  %2 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2199, !tbaa !1251
  %call1 = call fastcc i32 @get_module_info(%struct._zipimporter* %1, %struct._object* %2), !dbg !2200
  call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !912, metadata !1245), !dbg !2201
  switch i32 %call1, label %if.end.7 [
    i32 0, label %cleanup.74
    i32 1, label %if.then.5
  ], !dbg !2202

if.then.5:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2203, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !908, metadata !1245), !dbg !2194
  %4 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2206, !tbaa !1251
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), %struct._object* %4) #1, !dbg !2207
  br label %cleanup.74, !dbg !2208

if.end.7:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !908, metadata !1245), !dbg !2194
  %5 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2209, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object* %5, i64 0, metadata !614, metadata !1245) #1, !dbg !2210
  %state.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 2, !dbg !2212
  %6 = bitcast %struct._object* %state.i to i32*, !dbg !2212
  %bf.load.i = load i32, i32* %6, align 4, !dbg !2212
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !2212
  %tobool.i = icmp eq i32 %bf.clear.i, 0, !dbg !2212
  br i1 %tobool.i, label %cond.false.i, label %if.end.i, !dbg !2212

cond.false.i:                                     ; preds = %if.end.7
  %call.i = call i32 @_PyUnicode_Ready(%struct._object* %5) #1, !dbg !2213
  %phitmp.i = icmp slt i32 %call.i, 0, !dbg !2213
  br i1 %phitmp.i, label %cleanup.74, label %if.end.i, !dbg !2214

if.end.i:                                         ; preds = %cond.false.i, %if.end.7
  %7 = getelementptr inbounds %struct._object, %struct._object* %5, i64 1, i32 0, !dbg !2215
  %8 = load i64, i64* %7, align 8, !dbg !2215, !tbaa !1344
  call void @llvm.dbg.value(metadata i64 %8, i64 0, metadata !615, metadata !1245) #1, !dbg !2216
  %call1.i = call i64 @PyUnicode_FindChar(%struct._object* %5, i32 46, i64 0, i64 %8, i32 -1) #1, !dbg !2217
  call void @llvm.dbg.value(metadata i64 %call1.i, i64 0, metadata !616, metadata !1245) #1, !dbg !2218
  %cmp2.i = icmp eq i64 %call1.i, -1, !dbg !2219
  br i1 %cmp2.i, label %get_subname.exit.thread117, label %get_subname.exit, !dbg !2220

get_subname.exit.thread117:                       ; preds = %if.end.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 0, !dbg !2221
  %9 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2221, !tbaa !1260
  %inc.i = add i64 %9, 1, !dbg !2221
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2221, !tbaa !1260
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !909, metadata !1245), !dbg !2222
  br label %if.end.11, !dbg !2223

get_subname.exit:                                 ; preds = %if.end.i
  %add.i = add i64 %call1.i, 1, !dbg !2224
  %call4.i = call %struct._object* @PyUnicode_Substring(%struct._object* %5, i64 %add.i, i64 %8) #1, !dbg !2225
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !909, metadata !1245), !dbg !2222
  %cmp9 = icmp eq %struct._object* %call4.i, null, !dbg !2226
  br i1 %cmp9, label %cleanup.74, label %if.end.11, !dbg !2223

if.end.11:                                        ; preds = %get_subname.exit.thread117, %get_subname.exit
  %retval.0.i119 = phi %struct._object* [ %5, %get_subname.exit.thread117 ], [ %call4.i, %get_subname.exit ]
  %prefix = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, i32 1, !dbg !2228
  %10 = bitcast %struct._typeobject** %prefix to %struct._object**, !dbg !2228
  %11 = load %struct._object*, %struct._object** %10, align 8, !dbg !2228, !tbaa !1304
  %call12 = call fastcc %struct._object* @make_filename(%struct._object* %11, %struct._object* %retval.0.i119), !dbg !2229
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !910, metadata !1245), !dbg !2230
  call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !913, metadata !1245), !dbg !2231
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %retval.0.i119, i64 0, i32 0, !dbg !2233
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !2233, !tbaa !1260
  %dec = add i64 %12, -1, !dbg !2233
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2233, !tbaa !1260
  %cmp13 = icmp eq i64 %dec, 0, !dbg !2233
  br i1 %cmp13, label %if.else, label %if.end.15, !dbg !2235

if.else:                                          ; preds = %if.end.11
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %retval.0.i119, i64 0, i32 1, !dbg !2236
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2236, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !2236
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2236, !tbaa !1299
  call void %14(%struct._object* %retval.0.i119) #1, !dbg !2236
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.11, %if.else
  %cmp16 = icmp eq %struct._object* %call12, null, !dbg !2238
  br i1 %cmp16, label %cleanup.74, label %if.end.18, !dbg !2240

if.end.18:                                        ; preds = %if.end.15
  %cmp19 = icmp eq i32 %call1, 3, !dbg !2241
  br i1 %cmp19, label %if.then.20, label %if.else.22, !dbg !2243

if.then.20:                                       ; preds = %if.end.18
  %call21 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), %struct._object* %call12, i32 47) #1, !dbg !2244
  call void @llvm.dbg.value(metadata %struct._object* %call21, i64 0, metadata !911, metadata !1245), !dbg !2245
  br label %do.body.25, !dbg !2246

if.else.22:                                       ; preds = %if.end.18
  %call23 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i64 0, i64 0), %struct._object* %call12) #1, !dbg !2247
  call void @llvm.dbg.value(metadata %struct._object* %call23, i64 0, metadata !911, metadata !1245), !dbg !2245
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.20, %if.else.22
  %fullpath.0 = phi %struct._object* [ %call21, %if.then.20 ], [ %call23, %if.else.22 ]
  call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !915, metadata !1245), !dbg !2248
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !2250
  %15 = load i64, i64* %ob_refcnt27, align 8, !dbg !2250, !tbaa !1260
  %dec28 = add i64 %15, -1, !dbg !2250
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !2250, !tbaa !1260
  %cmp29 = icmp eq i64 %dec28, 0, !dbg !2250
  br i1 %cmp29, label %if.else.31, label %if.end.34, !dbg !2252

if.else.31:                                       ; preds = %do.body.25
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 1, !dbg !2253
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !2253, !tbaa !1298
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !2253
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !2253, !tbaa !1299
  call void %17(%struct._object* %call12) #1, !dbg !2253
  br label %if.end.34

if.end.34:                                        ; preds = %do.body.25, %if.else.31
  %cmp37 = icmp eq %struct._object* %fullpath.0, null, !dbg !2255
  br i1 %cmp37, label %cleanup.74, label %if.end.39, !dbg !2257

if.end.39:                                        ; preds = %if.end.34
  %files = getelementptr inbounds %struct._object, %struct._object* %obj, i64 2, !dbg !2258
  %18 = bitcast %struct._object* %files to %struct._object**, !dbg !2258
  %19 = load %struct._object*, %struct._object** %18, align 8, !dbg !2258, !tbaa !1316
  %call40 = call %struct._object* @PyDict_GetItem(%struct._object* %19, %struct._object* %fullpath.0) #1, !dbg !2259
  call void @llvm.dbg.value(metadata %struct._object* %call40, i64 0, metadata !907, metadata !1245), !dbg !2260
  call void @llvm.dbg.value(metadata %struct._object* %fullpath.0, i64 0, metadata !917, metadata !1245), !dbg !2261
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %fullpath.0, i64 0, i32 0, !dbg !2263
  %20 = load i64, i64* %ob_refcnt43, align 8, !dbg !2263, !tbaa !1260
  %dec44 = add i64 %20, -1, !dbg !2263
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2263, !tbaa !1260
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !2263
  br i1 %cmp45, label %if.else.47, label %if.end.50, !dbg !2265

if.else.47:                                       ; preds = %if.end.39
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %fullpath.0, i64 0, i32 1, !dbg !2266
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2266, !tbaa !1298
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i64 0, i32 4, !dbg !2266
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2266, !tbaa !1299
  call void %22(%struct._object* %fullpath.0) #1, !dbg !2266
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.39, %if.else.47
  %cmp53 = icmp eq %struct._object* %call40, null, !dbg !2268
  br i1 %cmp53, label %if.end.73, label %if.then.54, !dbg !2269

if.then.54:                                       ; preds = %if.end.50
  %archive = getelementptr inbounds %struct._object, %struct._object* %obj, i64 1, !dbg !2270
  %23 = bitcast %struct._object* %archive to %struct._object**, !dbg !2270
  %24 = load %struct._object*, %struct._object** %23, align 8, !dbg !2270, !tbaa !1287
  %call55 = call fastcc %struct._object* @get_data(%struct._object* %24, %struct._object* %call40), !dbg !2271
  call void @llvm.dbg.value(metadata %struct._object* %call55, i64 0, metadata !922, metadata !1245), !dbg !2272
  %cmp56 = icmp eq %struct._object* %call55, null, !dbg !2273
  br i1 %cmp56, label %cleanup.74, label %if.end.58, !dbg !2275

if.end.58:                                        ; preds = %if.then.54
  %ob_sval = getelementptr inbounds %struct._object, %struct._object* %call55, i64 2, !dbg !2276
  %arraydecay = bitcast %struct._object* %ob_sval to i8*, !dbg !2276
  %25 = getelementptr inbounds %struct._object, %struct._object* %call55, i64 1, i32 0, !dbg !2277
  %26 = load i64, i64* %25, align 8, !dbg !2277, !tbaa !2278
  %call59 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %arraydecay, i64 %26) #1, !dbg !2279
  call void @llvm.dbg.value(metadata %struct._object* %call59, i64 0, metadata !919, metadata !1245), !dbg !2280
  call void @llvm.dbg.value(metadata %struct._object* %call55, i64 0, metadata !923, metadata !1245), !dbg !2281
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %call55, i64 0, i32 0, !dbg !2283
  %27 = load i64, i64* %ob_refcnt62, align 8, !dbg !2283, !tbaa !1260
  %dec63 = add i64 %27, -1, !dbg !2283
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !2283, !tbaa !1260
  %cmp64 = icmp eq i64 %dec63, 0, !dbg !2283
  br i1 %cmp64, label %if.else.66, label %cleanup.74, !dbg !2285

if.else.66:                                       ; preds = %if.end.58
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %call55, i64 0, i32 1, !dbg !2286
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !2286, !tbaa !1298
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i64 0, i32 4, !dbg !2286
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !2286, !tbaa !1299
  call void %29(%struct._object* %call55) #1, !dbg !2286
  br label %cleanup.74

if.end.73:                                        ; preds = %if.end.50
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2288, !tbaa !1260
  %inc = add i64 %30, 1, !dbg !2288
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2288, !tbaa !1260
  br label %cleanup.74, !dbg !2289

cleanup.74:                                       ; preds = %cond.false.i, %if.then.54, %if.end.58, %if.else.66, %if.end.34, %if.end.15, %get_subname.exit, %if.end, %entry, %if.end.73, %if.then.5
  %retval.1 = phi %struct._object* [ null, %if.then.5 ], [ @_Py_NoneStruct, %if.end.73 ], [ null, %entry ], [ null, %if.end ], [ null, %get_subname.exit ], [ null, %if.end.15 ], [ null, %if.end.34 ], [ null, %if.then.54 ], [ %call59, %if.end.58 ], [ %call59, %if.else.66 ], [ null, %cond.false.i ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2290
  ret %struct._object* %retval.1, !dbg !2290
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_filename(%struct._object* nocapture readonly %obj, %struct._object* %args) #0 {
entry:
  %fullname = alloca %struct._object*, align 8
  %modpath = alloca %struct._object*, align 8
  %ispackage = alloca i32, align 4
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !927, metadata !1245), !dbg !2291
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !928, metadata !1245), !dbg !2292
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %3, i64 0, metadata !929, metadata !1245), !dbg !2293
  %0 = bitcast %struct._object** %fullname to i8*, !dbg !2294
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2294
  %1 = bitcast %struct._object** %modpath to i8*, !dbg !2294
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2294
  %2 = bitcast i32* %ispackage to i8*, !dbg !2295
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2295
  tail call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !930, metadata !1245), !dbg !2296
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i64 0, i64 0), %struct._object** nonnull %fullname) #1, !dbg !2297
  %tobool = icmp eq i32 %call, 0, !dbg !2297
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2299

if.end:                                           ; preds = %entry
  %3 = bitcast %struct._object* %obj to %struct._zipimporter*, !dbg !2300
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !930, metadata !1245), !dbg !2296
  %4 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2301, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object** %modpath, i64 0, metadata !932, metadata !1245), !dbg !2302
  call void @llvm.dbg.value(metadata i32* %ispackage, i64 0, metadata !933, metadata !1245), !dbg !2303
  %call1 = call fastcc %struct._object* @get_module_code(%struct._zipimporter* %3, %struct._object* %4, i32* nonnull %ispackage, %struct._object** nonnull %modpath), !dbg !2304
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !931, metadata !1245), !dbg !2305
  %cmp = icmp eq %struct._object* %call1, null, !dbg !2306
  br i1 %cmp, label %cleanup, label %do.body, !dbg !2308

do.body:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !934, metadata !1245), !dbg !2309
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2311
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2311, !tbaa !1260
  %dec = add i64 %5, -1, !dbg !2311
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2311, !tbaa !1260
  %cmp4 = icmp eq i64 %dec, 0, !dbg !2311
  br i1 %cmp4, label %if.else, label %if.end.6, !dbg !2313

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2314
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2314, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2314
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2314, !tbaa !1299
  call void %7(%struct._object* %call1) #1, !dbg !2314
  br label %if.end.6

if.end.6:                                         ; preds = %do.body, %if.else
  call void @llvm.dbg.value(metadata %struct._object** %modpath, i64 0, metadata !932, metadata !1245), !dbg !2302
  %8 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2316, !tbaa !1251
  br label %cleanup, !dbg !2317

cleanup:                                          ; preds = %if.end, %entry, %if.end.6
  %retval.0 = phi %struct._object* [ %8, %if.end.6 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 4, i8* %2) #1, !dbg !2318
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !2318
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2318
  ret %struct._object* %retval.0, !dbg !2318
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_is_package(%struct._object* nocapture readonly %obj, %struct._object* %args) #0 {
entry:
  %fullname = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %obj, i64 0, metadata !938, metadata !1245), !dbg !2319
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !939, metadata !1245), !dbg !2320
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %1, i64 0, metadata !940, metadata !1245), !dbg !2321
  %0 = bitcast %struct._object** %fullname to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2322
  tail call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !941, metadata !1245), !dbg !2323
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i64 0, i64 0), %struct._object** nonnull %fullname) #1, !dbg !2324
  %tobool = icmp eq i32 %call, 0, !dbg !2324
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2326

if.end:                                           ; preds = %entry
  %1 = bitcast %struct._object* %obj to %struct._zipimporter*, !dbg !2327
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !941, metadata !1245), !dbg !2323
  %2 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2328, !tbaa !1251
  %call1 = call fastcc i32 @get_module_info(%struct._zipimporter* %1, %struct._object* %2), !dbg !2329
  call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !942, metadata !1245), !dbg !2330
  switch i32 %call1, label %if.end.7 [
    i32 0, label %cleanup
    i32 1, label %if.then.5
  ], !dbg !2331

if.then.5:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2332, !tbaa !1251
  call void @llvm.dbg.value(metadata %struct._object** %fullname, i64 0, metadata !941, metadata !1245), !dbg !2323
  %4 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2335, !tbaa !1251
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), %struct._object* %4) #1, !dbg !2336
  br label %cleanup, !dbg !2337

if.end.7:                                         ; preds = %if.end
  %cmp8 = icmp eq i32 %call1, 3, !dbg !2338
  %conv9 = zext i1 %cmp8 to i64, !dbg !2339
  %call10 = call %struct._object* @PyBool_FromLong(i64 %conv9) #1, !dbg !2340
  br label %cleanup, !dbg !2341

cleanup:                                          ; preds = %if.end, %entry, %if.end.7, %if.then.5
  %retval.0 = phi %struct._object* [ null, %if.then.5 ], [ %call10, %if.end.7 ], [ null, %entry ], [ null, %if.end ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2342
  ret %struct._object* %retval.0, !dbg !2342
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @find_loader(%struct._zipimporter* nocapture readonly %self, %struct._object* %fullname, %struct._object** nocapture %namespace_portion) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !576, metadata !1245), !dbg !2343
  tail call void @llvm.dbg.value(metadata %struct._object* %fullname, i64 0, metadata !577, metadata !1245), !dbg !2344
  tail call void @llvm.dbg.value(metadata %struct._object** %namespace_portion, i64 0, metadata !578, metadata !1245), !dbg !2345
  store %struct._object* null, %struct._object** %namespace_portion, align 8, !dbg !2346, !tbaa !1251
  %call = tail call fastcc i32 @get_module_info(%struct._zipimporter* %self, %struct._object* %fullname), !dbg !2347
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !579, metadata !1245), !dbg !2348
  switch i32 %call, label %if.end.14 [
    i32 0, label %cleanup.15
    i32 1, label %if.then.2
  ], !dbg !2349

if.then.2:                                        ; preds = %entry
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 2, !dbg !2350
  %0 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !2350, !tbaa !1304
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !629, metadata !1245) #1, !dbg !2351
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !630, metadata !1245) #1, !dbg !2353
  tail call void @llvm.dbg.value(metadata %struct._object* %fullname, i64 0, metadata !631, metadata !1245) #1, !dbg !2354
  %call.i = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), %struct._object* %0, %struct._object* %fullname, i32 47) #1, !dbg !2355
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !632, metadata !1245) #1, !dbg !2356
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2357
  br i1 %cmp.i, label %cleanup.15, label %if.end.i, !dbg !2359

if.end.i:                                         ; preds = %if.then.2
  %files.i = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 3, !dbg !2360
  %1 = load %struct._object*, %struct._object** %files.i, align 8, !dbg !2360, !tbaa !1316
  %call1.i = tail call i32 @PyDict_Contains(%struct._object* %1, %struct._object* %call.i) #1, !dbg !2361
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !633, metadata !1245) #1, !dbg !2362
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !634, metadata !1245) #1, !dbg !2363
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2365
  %2 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2365, !tbaa !1260
  %dec.i = add i64 %2, -1, !dbg !2365
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2365, !tbaa !1260
  %cmp2.i = icmp eq i64 %dec.i, 0, !dbg !2365
  br i1 %cmp2.i, label %if.else.i, label %check_is_directory.exit, !dbg !2367

if.else.i:                                        ; preds = %if.end.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2368
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2368, !tbaa !1298
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i64 0, i32 4, !dbg !2368
  %4 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2368, !tbaa !1299
  tail call void %4(%struct._object* %call.i) #1, !dbg !2368
  br label %check_is_directory.exit, !dbg !2370

check_is_directory.exit:                          ; preds = %if.end.i, %if.else.i
  tail call void @llvm.dbg.value(metadata i32 %call1.i, i64 0, metadata !580, metadata !1245), !dbg !2371
  %cmp4 = icmp slt i32 %call1.i, 0, !dbg !2372
  br i1 %cmp4, label %cleanup.15, label %if.end.6, !dbg !2374

if.end.6:                                         ; preds = %check_is_directory.exit
  %tobool = icmp eq i32 %call1.i, 0, !dbg !2375
  br i1 %tobool, label %cleanup.15, label %if.then.7, !dbg !2377

if.then.7:                                        ; preds = %if.end.6
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 1, !dbg !2378
  %5 = load %struct._object*, %struct._object** %archive, align 8, !dbg !2378, !tbaa !1287
  %6 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !2380, !tbaa !1304
  %call9 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i64 0, i64 0), %struct._object* %5, i32 47, %struct._object* %6, %struct._object* %fullname) #1, !dbg !2381
  store %struct._object* %call9, %struct._object** %namespace_portion, align 8, !dbg !2382, !tbaa !1251
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !2383
  %. = select i1 %cmp10, i32 0, i32 3, !dbg !2385
  br label %cleanup.15, !dbg !2385

if.end.14:                                        ; preds = %entry
  br label %cleanup.15, !dbg !2386

cleanup.15:                                       ; preds = %if.then.2, %check_is_directory.exit, %if.then.7, %if.end.6, %entry, %if.end.14
  %retval.1 = phi i32 [ 2, %if.end.14 ], [ 0, %entry ], [ -1, %check_is_directory.exit ], [ %., %if.then.7 ], [ 1, %if.end.6 ], [ -1, %if.then.2 ]
  ret i32 %retval.1, !dbg !2387
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_module_info(%struct._zipimporter* nocapture readonly %self, %struct._object* %fullname) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !587, metadata !1245), !dbg !2388
  tail call void @llvm.dbg.value(metadata %struct._object* %fullname, i64 0, metadata !588, metadata !1245), !dbg !2389
  tail call void @llvm.dbg.value(metadata %struct._object* %fullname, i64 0, metadata !614, metadata !1245) #1, !dbg !2390
  %state.i = getelementptr inbounds %struct._object, %struct._object* %fullname, i64 2, !dbg !2392
  %0 = bitcast %struct._object* %state.i to i32*, !dbg !2392
  %bf.load.i = load i32, i32* %0, align 4, !dbg !2392
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !2392
  %tobool.i = icmp eq i32 %bf.clear.i, 0, !dbg !2392
  br i1 %tobool.i, label %cond.false.i, label %if.end.i, !dbg !2392

cond.false.i:                                     ; preds = %entry
  %call.i = tail call i32 @_PyUnicode_Ready(%struct._object* %fullname) #1, !dbg !2393
  %phitmp.i = icmp slt i32 %call.i, 0, !dbg !2393
  br i1 %phitmp.i, label %cleanup, label %if.end.i, !dbg !2394

if.end.i:                                         ; preds = %cond.false.i, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %fullname, i64 1, i32 0, !dbg !2395
  %2 = load i64, i64* %1, align 8, !dbg !2395, !tbaa !1344
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !615, metadata !1245) #1, !dbg !2396
  %call1.i = tail call i64 @PyUnicode_FindChar(%struct._object* %fullname, i32 46, i64 0, i64 %2, i32 -1) #1, !dbg !2397
  tail call void @llvm.dbg.value(metadata i64 %call1.i, i64 0, metadata !616, metadata !1245) #1, !dbg !2398
  %cmp2.i = icmp eq i64 %call1.i, -1, !dbg !2399
  br i1 %cmp2.i, label %get_subname.exit.thread106, label %get_subname.exit, !dbg !2400

get_subname.exit.thread106:                       ; preds = %if.end.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %fullname, i64 0, i32 0, !dbg !2401
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2401, !tbaa !1260
  %inc.i = add i64 %3, 1, !dbg !2401
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2401, !tbaa !1260
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !589, metadata !1245), !dbg !2402
  br label %if.end, !dbg !2403

get_subname.exit:                                 ; preds = %if.end.i
  %add.i = add i64 %call1.i, 1, !dbg !2404
  %call4.i = tail call %struct._object* @PyUnicode_Substring(%struct._object* %fullname, i64 %add.i, i64 %2) #1, !dbg !2405
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !589, metadata !1245), !dbg !2402
  %cmp = icmp eq %struct._object* %call4.i, null, !dbg !2406
  br i1 %cmp, label %cleanup, label %if.end, !dbg !2403

if.end:                                           ; preds = %get_subname.exit.thread106, %get_subname.exit
  %retval.0.i108 = phi %struct._object* [ %fullname, %get_subname.exit.thread106 ], [ %call4.i, %get_subname.exit ]
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 2, !dbg !2408
  %4 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !2408, !tbaa !1304
  %call1 = tail call fastcc %struct._object* @make_filename(%struct._object* %4, %struct._object* %retval.0.i108), !dbg !2409
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !590, metadata !1245), !dbg !2410
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !595, metadata !1245), !dbg !2411
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %retval.0.i108, i64 0, i32 0, !dbg !2413
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2413, !tbaa !1260
  %dec = add i64 %5, -1, !dbg !2413
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2413, !tbaa !1260
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2413
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !2415

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %retval.0.i108, i64 0, i32 1, !dbg !2416
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2416, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2416
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2416, !tbaa !1299
  tail call void %7(%struct._object* %retval.0.i108) #1, !dbg !2416
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.else
  %cmp5 = icmp eq %struct._object* %call1, null, !dbg !2418
  br i1 %cmp5, label %cleanup, label %for.cond.preheader, !dbg !2420

for.cond.preheader:                               ; preds = %if.end.4
  %8 = load i8, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 0, i32 0, i64 0), align 16, !dbg !2421, !tbaa !1225
  %tobool.111 = icmp eq i8 %8, 0, !dbg !2422
  br i1 %tobool.111, label %do.body.57, label %for.body.lr.ph, !dbg !2422

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 3, !dbg !2423
  br label %for.body, !dbg !2422

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %arraydecay113 = phi i8* [ getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 0, i32 0, i64 0), %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  %call10 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct._object* %call1, i8* %arraydecay113) #1, !dbg !2424
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !591, metadata !1245), !dbg !2425
  %cmp11 = icmp eq %struct._object* %call10, null, !dbg !2426
  br i1 %cmp11, label %do.body.13, label %if.end.25, !dbg !2427

do.body.13:                                       ; preds = %for.body
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !597, metadata !1245), !dbg !2428
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2430
  %9 = load i64, i64* %ob_refcnt15, align 8, !dbg !2430, !tbaa !1260
  %dec16 = add i64 %9, -1, !dbg !2430
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2430, !tbaa !1260
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !2430
  br i1 %cmp17, label %if.else.19, label %cleanup, !dbg !2432

if.else.19:                                       ; preds = %do.body.13
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2433
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !2433, !tbaa !1298
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2433
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2433, !tbaa !1299
  tail call void %11(%struct._object* %call1) #1, !dbg !2433
  br label %cleanup

if.end.25:                                        ; preds = %for.body
  %12 = load %struct._object*, %struct._object** %files, align 8, !dbg !2423, !tbaa !1316
  %call26 = tail call %struct._object* @PyDict_GetItem(%struct._object* %12, %struct._object* %call10) #1, !dbg !2435
  tail call void @llvm.dbg.value(metadata %struct._object* %call26, i64 0, metadata !592, metadata !1245), !dbg !2436
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !604, metadata !1245), !dbg !2437
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !2439
  %13 = load i64, i64* %ob_refcnt29, align 8, !dbg !2439, !tbaa !1260
  %dec30 = add i64 %13, -1, !dbg !2439
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !2439, !tbaa !1260
  %cmp31 = icmp eq i64 %dec30, 0, !dbg !2439
  br i1 %cmp31, label %if.else.33, label %if.end.36, !dbg !2441

if.else.33:                                       ; preds = %if.end.25
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !2442
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !2442, !tbaa !1298
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !2442
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !2442, !tbaa !1299
  tail call void %15(%struct._object* %call10) #1, !dbg !2442
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.25, %if.else.33
  %cmp39 = icmp eq %struct._object* %call26, null, !dbg !2444
  br i1 %cmp39, label %for.inc, label %do.body.41, !dbg !2445

do.body.41:                                       ; preds = %if.end.36
  %arraydecay113.lcssa122 = phi i8* [ %arraydecay113, %if.end.36 ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !606, metadata !1245), !dbg !2446
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2448
  %16 = load i64, i64* %ob_refcnt43, align 8, !dbg !2448, !tbaa !1260
  %dec44 = add i64 %16, -1, !dbg !2448
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2448, !tbaa !1260
  %cmp45 = icmp eq i64 %dec44, 0, !dbg !2448
  br i1 %cmp45, label %if.else.47, label %if.end.50, !dbg !2450

if.else.47:                                       ; preds = %do.body.41
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2451
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2451, !tbaa !1298
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !2451
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2451, !tbaa !1299
  tail call void %18(%struct._object* %call1) #1, !dbg !2451
  br label %if.end.50

if.end.50:                                        ; preds = %do.body.41, %if.else.47
  %type = getelementptr inbounds i8, i8* %arraydecay113.lcssa122, i64 16, !dbg !2453
  %19 = bitcast i8* %type to i32*, !dbg !2453
  %20 = load i32, i32* %19, align 4, !dbg !2453, !tbaa !2455
  %and = lshr i32 %20, 1, !dbg !2457
  %21 = and i32 %and, 1, !dbg !2457
  %22 = or i32 %21, 2, !dbg !2457
  br label %cleanup, !dbg !2457

for.inc:                                          ; preds = %if.end.36
  %incdec.ptr = getelementptr i8, i8* %arraydecay113, i64 20, !dbg !2458
  %23 = load i8, i8* %incdec.ptr, align 1, !dbg !2421, !tbaa !1225
  %tobool = icmp eq i8 %23, 0, !dbg !2422
  br i1 %tobool, label %do.body.57.loopexit, label %for.body, !dbg !2422

do.body.57.loopexit:                              ; preds = %for.inc
  br label %do.body.57, !dbg !2459

do.body.57:                                       ; preds = %do.body.57.loopexit, %for.cond.preheader
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !610, metadata !1245), !dbg !2459
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2461
  %24 = load i64, i64* %ob_refcnt59, align 8, !dbg !2461, !tbaa !1260
  %dec60 = add i64 %24, -1, !dbg !2461
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !2461, !tbaa !1260
  %cmp61 = icmp eq i64 %dec60, 0, !dbg !2461
  br i1 %cmp61, label %if.else.63, label %cleanup, !dbg !2463

if.else.63:                                       ; preds = %do.body.57
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2464
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !2464, !tbaa !1298
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i64 0, i32 4, !dbg !2464
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !2464, !tbaa !1299
  tail call void %26(%struct._object* %call1) #1, !dbg !2464
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i, %if.else.63, %do.body.57, %if.end.50, %if.else.19, %do.body.13, %if.end.4, %get_subname.exit
  %retval.0 = phi i32 [ 0, %get_subname.exit ], [ 0, %if.end.4 ], [ 0, %do.body.13 ], [ 0, %if.else.19 ], [ %22, %if.end.50 ], [ 1, %do.body.57 ], [ 1, %if.else.63 ], [ 0, %cond.false.i ]
  ret i32 %retval.0, !dbg !2466
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @make_filename(%struct._object* %prefix, %struct._object* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %prefix, i64 0, metadata !619, metadata !1245), !dbg !2467
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !620, metadata !1245), !dbg !2468
  %0 = getelementptr inbounds %struct._object, %struct._object* %prefix, i64 1, i32 0, !dbg !2469
  %1 = load i64, i64* %0, align 8, !dbg !2469, !tbaa !1344
  %2 = getelementptr inbounds %struct._object, %struct._object* %name, i64 1, i32 0, !dbg !2470
  %3 = load i64, i64* %2, align 8, !dbg !2470, !tbaa !1344
  %add = add i64 %1, 1, !dbg !2471
  %add2 = add i64 %add, %3, !dbg !2472
  tail call void @llvm.dbg.value(metadata i64 %add2, i64 0, metadata !624, metadata !1245), !dbg !2473
  %mul = shl i64 %add2, 2, !dbg !2474
  %call = tail call i8* @PyMem_Malloc(i64 %mul) #1, !dbg !2475
  %4 = bitcast i8* %call to i32*, !dbg !2475
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !623, metadata !1245), !dbg !2476
  tail call void @llvm.dbg.value(metadata i32* %4, i64 0, metadata !622, metadata !1245), !dbg !2477
  %cmp = icmp eq i8* %call, null, !dbg !2478
  br i1 %cmp, label %if.then, label %if.end, !dbg !2480

if.then:                                          ; preds = %entry
  %call3 = tail call %struct._object* @PyErr_NoMemory() #1, !dbg !2481
  br label %cleanup, !dbg !2483

if.end:                                           ; preds = %entry
  %call4 = tail call i32* @PyUnicode_AsUCS4(%struct._object* %prefix, i32* %4, i64 %add2, i32 0) #1, !dbg !2484
  %tobool = icmp eq i32* %call4, null, !dbg !2484
  br i1 %tobool, label %if.then.5, label %if.end.6, !dbg !2486

if.then.5:                                        ; preds = %if.end
  tail call void @PyMem_Free(i8* %call) #1, !dbg !2487
  br label %cleanup, !dbg !2489

if.end.6:                                         ; preds = %if.end
  %5 = load i64, i64* %0, align 8, !dbg !2490, !tbaa !1344
  %add.ptr = getelementptr i32, i32* %4, i64 %5, !dbg !2491
  tail call void @llvm.dbg.value(metadata i32* %add.ptr, i64 0, metadata !622, metadata !1245), !dbg !2477
  %sub = sub i64 %add2, %5, !dbg !2492
  tail call void @llvm.dbg.value(metadata i64 %sub, i64 0, metadata !624, metadata !1245), !dbg !2473
  %call9 = tail call i32* @PyUnicode_AsUCS4(%struct._object* %name, i32* %add.ptr, i64 %sub, i32 1) #1, !dbg !2493
  %tobool10 = icmp eq i32* %call9, null, !dbg !2493
  br i1 %tobool10, label %if.then.11, label %for.cond.preheader, !dbg !2495

for.cond.preheader:                               ; preds = %if.end.6
  br label %for.cond, !dbg !2496

if.then.11:                                       ; preds = %if.end.6
  tail call void @PyMem_Free(i8* %call) #1, !dbg !2499
  br label %cleanup, !dbg !2501

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %p.0 = phi i32* [ %incdec.ptr, %for.inc ], [ %add.ptr, %for.cond.preheader ]
  %6 = load i32, i32* %p.0, align 4, !dbg !2496, !tbaa !1231
  switch i32 %6, label %for.inc [
    i32 0, label %for.end
    i32 46, label %if.then.15
  ], !dbg !2502

if.then.15:                                       ; preds = %for.cond
  store i32 47, i32* %p.0, align 4, !dbg !2503, !tbaa !1231
  br label %for.inc, !dbg !2506

for.inc:                                          ; preds = %for.cond, %if.then.15
  %incdec.ptr = getelementptr i32, i32* %p.0, i64 1, !dbg !2507
  tail call void @llvm.dbg.value(metadata i32* %incdec.ptr, i64 0, metadata !622, metadata !1245), !dbg !2477
  br label %for.cond, !dbg !2508

for.end:                                          ; preds = %for.cond
  %p.0.lcssa = phi i32* [ %p.0, %for.cond ]
  %sub.ptr.lhs.cast = ptrtoint i32* %p.0.lcssa to i64, !dbg !2509
  %sub.ptr.rhs.cast = ptrtoint i8* %call to i64, !dbg !2509
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2509
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2, !dbg !2509
  %call17 = tail call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %call, i64 %sub.ptr.div) #1, !dbg !2510
  tail call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !621, metadata !1245), !dbg !2511
  tail call void @PyMem_Free(i8* %call) #1, !dbg !2512
  br label %cleanup, !dbg !2513

cleanup:                                          ; preds = %for.end, %if.then.11, %if.then.5, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call17, %for.end ], [ null, %if.then.11 ], [ null, %if.then.5 ]
  ret %struct._object* %retval.0, !dbg !2514
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare i32 @_PyUnicode_Ready(%struct._object*) #3

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #3

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #3

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare i32* @PyUnicode_AsUCS4(%struct._object*, i32*, i64, i32) #3

declare void @PyMem_Free(i8*) #3

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #3

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @get_module_code(%struct._zipimporter* nocapture readonly %self, %struct._object* %fullname, i32* %p_ispackage, %struct._object** %p_modpath) #0 {
entry:
  %stm.i.i = alloca %struct.tm, align 16
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !692, metadata !1245), !dbg !2515
  tail call void @llvm.dbg.value(metadata %struct._object* %fullname, i64 0, metadata !693, metadata !1245), !dbg !2516
  tail call void @llvm.dbg.value(metadata i32* %p_ispackage, i64 0, metadata !694, metadata !1245), !dbg !2517
  tail call void @llvm.dbg.value(metadata %struct._object** %p_modpath, i64 0, metadata !695, metadata !1245), !dbg !2518
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !696, metadata !1245), !dbg !2519
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !700, metadata !1245), !dbg !2520
  tail call void @llvm.dbg.value(metadata %struct._object* %fullname, i64 0, metadata !614, metadata !1245) #1, !dbg !2521
  %state.i = getelementptr inbounds %struct._object, %struct._object* %fullname, i64 2, !dbg !2523
  %0 = bitcast %struct._object* %state.i to i32*, !dbg !2523
  %bf.load.i = load i32, i32* %0, align 4, !dbg !2523
  %bf.clear.i = and i32 %bf.load.i, 128, !dbg !2523
  %tobool.i = icmp eq i32 %bf.clear.i, 0, !dbg !2523
  br i1 %tobool.i, label %cond.false.i, label %if.end.i, !dbg !2523

cond.false.i:                                     ; preds = %entry
  %call.i = tail call i32 @_PyUnicode_Ready(%struct._object* %fullname) #1, !dbg !2524
  %phitmp.i = icmp slt i32 %call.i, 0, !dbg !2524
  br i1 %phitmp.i, label %cleanup.129, label %if.end.i, !dbg !2525

if.end.i:                                         ; preds = %cond.false.i, %entry
  %1 = getelementptr inbounds %struct._object, %struct._object* %fullname, i64 1, i32 0, !dbg !2526
  %2 = load i64, i64* %1, align 8, !dbg !2526, !tbaa !1344
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !615, metadata !1245) #1, !dbg !2527
  %call1.i = tail call i64 @PyUnicode_FindChar(%struct._object* %fullname, i32 46, i64 0, i64 %2, i32 -1) #1, !dbg !2528
  tail call void @llvm.dbg.value(metadata i64 %call1.i, i64 0, metadata !616, metadata !1245) #1, !dbg !2529
  %cmp2.i = icmp eq i64 %call1.i, -1, !dbg !2530
  br i1 %cmp2.i, label %get_subname.exit.thread222, label %get_subname.exit, !dbg !2531

get_subname.exit.thread222:                       ; preds = %if.end.i
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %fullname, i64 0, i32 0, !dbg !2532
  %3 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2532, !tbaa !1260
  %inc.i = add i64 %3, 1, !dbg !2532
  store i64 %inc.i, i64* %ob_refcnt.i, align 8, !dbg !2532, !tbaa !1260
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !698, metadata !1245), !dbg !2533
  br label %if.end, !dbg !2534

get_subname.exit:                                 ; preds = %if.end.i
  %add.i = add i64 %call1.i, 1, !dbg !2535
  %call4.i = tail call %struct._object* @PyUnicode_Substring(%struct._object* %fullname, i64 %add.i, i64 %2) #1, !dbg !2536
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !698, metadata !1245), !dbg !2533
  %cmp = icmp eq %struct._object* %call4.i, null, !dbg !2537
  br i1 %cmp, label %cleanup.129, label %if.end, !dbg !2534

if.end:                                           ; preds = %get_subname.exit.thread222, %get_subname.exit
  %retval.0.i224 = phi %struct._object* [ %fullname, %get_subname.exit.thread222 ], [ %call4.i, %get_subname.exit ]
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 2, !dbg !2539
  %4 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !2539, !tbaa !1304
  %call1 = tail call fastcc %struct._object* @make_filename(%struct._object* %4, %struct._object* %retval.0.i224), !dbg !2540
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !699, metadata !1245), !dbg !2541
  tail call void @llvm.dbg.value(metadata %struct._object* %call4.i, i64 0, metadata !702, metadata !1245), !dbg !2542
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %retval.0.i224, i64 0, i32 0, !dbg !2544
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2544, !tbaa !1260
  %dec = add i64 %5, -1, !dbg !2544
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2544, !tbaa !1260
  %cmp2 = icmp eq i64 %dec, 0, !dbg !2544
  br i1 %cmp2, label %if.else, label %if.end.4, !dbg !2546

if.else:                                          ; preds = %if.end
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %retval.0.i224, i64 0, i32 1, !dbg !2547
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2547, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !2547
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2547, !tbaa !1299
  tail call void %7(%struct._object* %retval.0.i224) #1, !dbg !2547
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %if.else
  %cmp5 = icmp eq %struct._object* %call1, null, !dbg !2549
  br i1 %cmp5, label %cleanup.129, label %for.cond.preheader, !dbg !2551

for.cond.preheader:                               ; preds = %if.end.4
  %8 = load i8, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 0, i32 0, i64 0), align 16, !dbg !2552, !tbaa !1225
  %tobool.237 = icmp eq i8 %8, 0, !dbg !2553
  br i1 %tobool.237, label %for.end, label %for.body.lr.ph, !dbg !2553

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 1, !dbg !2554
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %self, i64 0, i32 3, !dbg !2556
  %cmp49 = icmp eq i32* %p_ispackage, null, !dbg !2557
  %9 = bitcast %struct.tm* %stm.i.i to i8*, !dbg !2559
  %tm_mon.i.i = getelementptr inbounds %struct.tm, %struct.tm* %stm.i.i, i64 0, i32 4, !dbg !2564
  %tm_year.i.i = getelementptr inbounds %struct.tm, %struct.tm* %stm.i.i, i64 0, i32 5, !dbg !2565
  %tm_isdst.i.i = getelementptr inbounds %struct.tm, %struct.tm* %stm.i.i, i64 0, i32 8, !dbg !2566
  %10 = bitcast %struct.tm* %stm.i.i to <4 x i32>*, !dbg !2567
  br label %for.body, !dbg !2553

for.body:                                         ; preds = %for.body.lr.ph, %for.inc
  %arraydecay239 = phi i8* [ getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i64 0, i64 0, i32 0, i64 0), %for.body.lr.ph ], [ %incdec.ptr, %for.inc ]
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !696, metadata !1245), !dbg !2519
  %call10 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i64 0, i64 0), %struct._object* %call1, i8* %arraydecay239) #1, !dbg !2568
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !700, metadata !1245), !dbg !2520
  %cmp11 = icmp eq %struct._object* %call10, null, !dbg !2569
  br i1 %cmp11, label %do.body.99.loopexit, label %if.end.13, !dbg !2571

if.end.13:                                        ; preds = %for.body
  %11 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2572, !tbaa !1231
  %cmp14 = icmp sgt i32 %11, 1, !dbg !2573
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !2574

if.then.15:                                       ; preds = %if.end.13
  %12 = load %struct._object*, %struct._object** %archive, align 8, !dbg !2554, !tbaa !1287
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i64 0, i64 0), %struct._object* %12, i32 47, %struct._object* %call10) #1, !dbg !2575
  br label %if.end.16, !dbg !2575

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %13 = load %struct._object*, %struct._object** %files, align 8, !dbg !2556, !tbaa !1316
  %call17 = tail call %struct._object* @PyDict_GetItem(%struct._object* %13, %struct._object* %call10) #1, !dbg !2576
  tail call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !697, metadata !1245), !dbg !2577
  %cmp18 = icmp eq %struct._object* %call17, null, !dbg !2578
  br i1 %cmp18, label %if.then.81, label %if.then.19, !dbg !2579

if.then.19:                                       ; preds = %if.end.16
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !704, metadata !1245), !dbg !2580
  %type = getelementptr inbounds i8, i8* %arraydecay239, i64 16, !dbg !2581
  %14 = bitcast i8* %type to i32*, !dbg !2581
  %15 = load i32, i32* %14, align 4, !dbg !2581, !tbaa !2455
  %and = and i32 %15, 2, !dbg !2582
  tail call void @llvm.dbg.value(metadata i32 %and, i64 0, metadata !710, metadata !1245), !dbg !2583
  %and21 = and i32 %15, 1, !dbg !2584
  tail call void @llvm.dbg.value(metadata i32 %and21, i64 0, metadata !711, metadata !1245), !dbg !2585
  %tobool22 = icmp eq i32 %and21, 0, !dbg !2586
  br i1 %tobool22, label %if.then.33, label %if.then.23, !dbg !2587

if.then.23:                                       ; preds = %if.then.19
  tail call void @llvm.dbg.value(metadata %struct._zipimporter* %self, i64 0, metadata !739, metadata !1245) #1, !dbg !2588
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !740, metadata !1245) #1, !dbg !2589
  %state.i.198 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 2, !dbg !2590
  %16 = bitcast %struct._object* %state.i.198 to i32*, !dbg !2590
  %bf.load.i.199 = load i32, i32* %16, align 4, !dbg !2590
  %bf.clear.i.200 = and i32 %bf.load.i.199, 128, !dbg !2590
  %tobool.i.201 = icmp eq i32 %bf.clear.i.200, 0, !dbg !2590
  br i1 %tobool.i.201, label %cond.false.i.204, label %if.end.i.205, !dbg !2590

cond.false.i.204:                                 ; preds = %if.then.23
  %call.i.202 = tail call i32 @_PyUnicode_Ready(%struct._object* %call10) #1, !dbg !2592
  %phitmp.i.203 = icmp eq i32 %call.i.202, -1, !dbg !2592
  br i1 %phitmp.i.203, label %land.lhs.true, label %cond.false.if.end_crit_edge.i, !dbg !2594

cond.false.if.end_crit_edge.i:                    ; preds = %cond.false.i.204
  %bf.load2.pre.i = load i32, i32* %16, align 4, !dbg !2595
  br label %if.end.i.205, !dbg !2594

if.end.i.205:                                     ; preds = %cond.false.if.end_crit_edge.i, %if.then.23
  %bf.load2.i = phi i32 [ %bf.load2.pre.i, %cond.false.if.end_crit_edge.i ], [ %bf.load.i.199, %if.then.23 ], !dbg !2595
  %bf.lshr3.i = lshr i32 %bf.load2.i, 2, !dbg !2595
  %bf.clear4.i = and i32 %bf.lshr3.i, 7, !dbg !2595
  %bf.clear8.i = and i32 %bf.load2.i, 32, !dbg !2596
  %tobool9.i = icmp eq i32 %bf.clear8.i, 0, !dbg !2596
  br i1 %tobool9.i, label %cond.false.21.i, label %cond.true.10.i, !dbg !2596

cond.true.10.i:                                   ; preds = %if.end.i.205
  %bf.clear14.i = and i32 %bf.load2.i, 64, !dbg !2597
  %tobool15.i = icmp ne i32 %bf.clear14.i, 0, !dbg !2597
  %add.ptr.i = getelementptr %struct._object, %struct._object* %call10, i64 3, !dbg !2599
  %17 = bitcast %struct._object* %add.ptr.i to i8*, !dbg !2599
  %add.ptr18.i = getelementptr %struct._object, %struct._object* %call10, i64 4, i32 1, !dbg !2601
  %18 = bitcast %struct._typeobject** %add.ptr18.i to i8*, !dbg !2601
  %cond20.i = select i1 %tobool15.i, i8* %17, i8* %18, !dbg !2597
  br label %cond.end.22.i, !dbg !2597

cond.false.21.i:                                  ; preds = %if.end.i.205
  %data.i = getelementptr inbounds %struct._object, %struct._object* %call10, i64 4, i32 1, !dbg !2603
  %any.i = bitcast %struct._typeobject** %data.i to i8**, !dbg !2603
  %19 = load i8*, i8** %any.i, align 8, !dbg !2603, !tbaa !1251
  br label %cond.end.22.i, !dbg !2603

cond.end.22.i:                                    ; preds = %cond.false.21.i, %cond.true.10.i
  %cond23.i = phi i8* [ %19, %cond.false.21.i ], [ %cond20.i, %cond.true.10.i ], !dbg !2596
  %20 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 1, i32 0, !dbg !2605
  %21 = load i64, i64* %20, align 8, !dbg !2605, !tbaa !1344
  %sub.i = add i64 %21, -1, !dbg !2606
  %call24.i = tail call %struct._object* @PyUnicode_FromKindAndData(i32 %bf.clear4.i, i8* %cond23.i, i64 %sub.i) #1, !dbg !2607
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !742, metadata !1245) #1, !dbg !2608
  %cmp25.i = icmp eq %struct._object* %call24.i, null, !dbg !2609
  br i1 %cmp25.i, label %land.lhs.true, label %if.end.27.i, !dbg !2611

if.end.27.i:                                      ; preds = %cond.end.22.i
  %22 = load %struct._object*, %struct._object** %files, align 8, !dbg !2612, !tbaa !1316
  %call28.i = tail call %struct._object* @PyDict_GetItem(%struct._object* %22, %struct._object* %call24.i) #1, !dbg !2613
  tail call void @llvm.dbg.value(metadata %struct._object* %call28.i, i64 0, metadata !741, metadata !1245) #1, !dbg !2614
  tail call void @llvm.dbg.value(metadata %struct._object* %call24.i, i64 0, metadata !744, metadata !1245) #1, !dbg !2615
  %ob_refcnt.i.206 = getelementptr inbounds %struct._object, %struct._object* %call24.i, i64 0, i32 0, !dbg !2617
  %23 = load i64, i64* %ob_refcnt.i.206, align 8, !dbg !2617, !tbaa !1260
  %dec.i = add i64 %23, -1, !dbg !2617
  store i64 %dec.i, i64* %ob_refcnt.i.206, align 8, !dbg !2617, !tbaa !1260
  %cmp29.i = icmp eq i64 %dec.i, 0, !dbg !2617
  br i1 %cmp29.i, label %if.else.i.207, label %if.end.31.i, !dbg !2619

if.else.i.207:                                    ; preds = %if.end.27.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call24.i, i64 0, i32 1, !dbg !2620
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2620, !tbaa !1298
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i64 0, i32 4, !dbg !2620
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2620, !tbaa !1299
  tail call void %25(%struct._object* %call24.i) #1, !dbg !2620
  br label %if.end.31.i, !dbg !2622

if.end.31.i:                                      ; preds = %if.else.i.207, %if.end.27.i
  %cmp32.i = icmp eq %struct._object* %call28.i, null, !dbg !2623
  br i1 %cmp32.i, label %if.then.33, label %land.lhs.true.i, !dbg !2624

land.lhs.true.i:                                  ; preds = %if.end.31.i
  %ob_type33.i = getelementptr inbounds %struct._object, %struct._object* %call28.i, i64 0, i32 1, !dbg !2625
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type33.i, align 8, !dbg !2625, !tbaa !1298
  %tp_flags.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i64 0, i32 19, !dbg !2625
  %27 = load i64, i64* %tp_flags.i, align 8, !dbg !2625, !tbaa !2627
  %and.i = and i64 %27, 67108864, !dbg !2625
  %cmp34.i = icmp eq i64 %and.i, 0, !dbg !2625
  br i1 %cmp34.i, label %if.then.33, label %land.lhs.true.35.i, !dbg !2628

land.lhs.true.35.i:                               ; preds = %land.lhs.true.i
  %call36.i = tail call i64 @PyTuple_Size(%struct._object* %call28.i) #1, !dbg !2629
  %cmp37.i = icmp eq i64 %call36.i, 8, !dbg !2630
  br i1 %cmp37.i, label %get_mtime_of_source.exit, label %if.then.33, !dbg !2631

get_mtime_of_source.exit:                         ; preds = %land.lhs.true.35.i
  %call39.i = tail call %struct._object* @PyTuple_GetItem(%struct._object* %call28.i, i64 5) #1, !dbg !2632
  %call40.i = tail call i64 @PyLong_AsLong(%struct._object* %call39.i) #1, !dbg !2633
  %conv.i = trunc i64 %call40.i to i32, !dbg !2633
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !746, metadata !1245) #1, !dbg !2634
  %call41.i = tail call %struct._object* @PyTuple_GetItem(%struct._object* %call28.i, i64 6) #1, !dbg !2635
  %call42.i = tail call i64 @PyLong_AsLong(%struct._object* %call41.i) #1, !dbg !2636
  %conv43.i = trunc i64 %call42.i to i32, !dbg !2636
  tail call void @llvm.dbg.value(metadata i32 %conv43.i, i64 0, metadata !749, metadata !1245) #1, !dbg !2637
  tail call void @llvm.dbg.value(metadata i32 %conv.i, i64 0, metadata !754, metadata !1245) #1, !dbg !2638
  tail call void @llvm.dbg.value(metadata i32 %conv43.i, i64 0, metadata !755, metadata !1245) #1, !dbg !2639
  call void @llvm.lifetime.start(i64 56, i8* %9) #1, !dbg !2559
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 56, i32 16, i1 false) #1, !dbg !2640
  %and.i.i = shl i32 %conv.i, 1, !dbg !2641
  %shr.13.i.i = lshr i32 %conv.i, 5, !dbg !2642
  %shr2.14.i.i = lshr i32 %conv.i, 11, !dbg !2643
  %28 = insertelement <4 x i32> undef, i32 %and.i.i, i32 0, !dbg !2641
  %29 = insertelement <4 x i32> %28, i32 %shr.13.i.i, i32 1, !dbg !2641
  %30 = insertelement <4 x i32> %29, i32 %shr2.14.i.i, i32 2, !dbg !2641
  %31 = insertelement <4 x i32> %30, i32 %conv43.i, i32 3, !dbg !2641
  %32 = and <4 x i32> %31, <i32 62, i32 63, i32 31, i32 31>, !dbg !2641
  store <4 x i32> %32, <4 x i32>* %10, align 16, !dbg !2567, !tbaa !1231
  %shr5.15.i.i = lshr i32 %conv43.i, 5, !dbg !2644
  %and6.i.i = and i32 %shr5.15.i.i, 15, !dbg !2645
  %sub.i.i = add nsw i32 %and6.i.i, -1, !dbg !2646
  store i32 %sub.i.i, i32* %tm_mon.i.i, align 16, !dbg !2647, !tbaa !2648
  %shr7.16.i.i = lshr i32 %conv43.i, 9, !dbg !2650
  %and8.i.i = and i32 %shr7.16.i.i, 127, !dbg !2651
  %add.i.i = add nuw nsw i32 %and8.i.i, 80, !dbg !2652
  store i32 %add.i.i, i32* %tm_year.i.i, align 4, !dbg !2653, !tbaa !2654
  store i32 -1, i32* %tm_isdst.i.i, align 16, !dbg !2655, !tbaa !2656
  tail call void @llvm.dbg.value(metadata %struct.tm* %stm.i.i, i64 0, metadata !756, metadata !1245) #1, !dbg !2657
  %call.i.i = call i64 @mktime(%struct.tm* nonnull %stm.i.i) #1, !dbg !2658
  call void @llvm.lifetime.end(i64 56, i8* %9) #1, !dbg !2659
  tail call void @llvm.dbg.value(metadata i64 %call.i.i, i64 0, metadata !743, metadata !1245) #1, !dbg !2660
  tail call void @llvm.dbg.value(metadata i64 %call.i.i, i64 0, metadata !704, metadata !1245), !dbg !2580
  %cmp25 = icmp eq i64 %call.i.i, -1, !dbg !2661
  br i1 %cmp25, label %land.lhs.true, label %if.then.33, !dbg !2663

land.lhs.true:                                    ; preds = %cond.end.22.i, %cond.false.i.204, %get_mtime_of_source.exit
  %call26 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !2664
  %tobool27 = icmp eq %struct._object* %call26, null, !dbg !2664
  br i1 %tobool27, label %if.then.33, label %do.body.99.loopexit, !dbg !2666

if.then.33:                                       ; preds = %land.lhs.true.35.i, %if.end.31.i, %land.lhs.true.i, %get_mtime_of_source.exit, %if.then.19, %land.lhs.true
  %mtime.0 = phi i64 [ -1, %land.lhs.true ], [ %call.i.i, %get_mtime_of_source.exit ], [ 0, %if.then.19 ], [ 0, %land.lhs.true.i ], [ 0, %if.end.31.i ], [ 0, %land.lhs.true.35.i ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !712, metadata !1245), !dbg !2667
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !700, metadata !1245), !dbg !2520
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !714, metadata !1245), !dbg !2669
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !2671
  %33 = load i64, i64* %ob_refcnt36, align 8, !dbg !2671, !tbaa !1260
  %dec37 = add i64 %33, -1, !dbg !2671
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !2671, !tbaa !1260
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !2671
  br i1 %cmp38, label %if.else.40, label %if.end.46, !dbg !2673

if.else.40:                                       ; preds = %if.then.33
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !2674
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2674, !tbaa !1298
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !2674
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2674, !tbaa !1299
  tail call void %35(%struct._object* %call10) #1, !dbg !2674
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.40, %if.then.33
  br i1 %cmp49, label %if.end.51, label %if.then.50, !dbg !2676

if.then.50:                                       ; preds = %if.end.46
  store i32 %and, i32* %p_ispackage, align 4, !dbg !2677, !tbaa !1231
  br label %if.end.51, !dbg !2678

if.end.51:                                        ; preds = %if.end.46, %if.then.50
  %self.idx.val = load %struct._object*, %struct._object** %archive, align 8, !tbaa !1287
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !775, metadata !1245) #1, !dbg !2679
  %call.i.209 = tail call fastcc %struct._object* @get_data(%struct._object* %self.idx.val, %struct._object* %call17) #1, !dbg !2681
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.209, i64 0, metadata !779, metadata !1245) #1, !dbg !2682
  %cmp.i = icmp eq %struct._object* %call.i.209, null, !dbg !2683
  br i1 %cmp.i, label %do.body.99.loopexit, label %if.end.i.212, !dbg !2685

if.end.i.212:                                     ; preds = %if.end.51
  %call1.i.210 = tail call %struct._object* @PyTuple_GetItem(%struct._object* %call17, i64 0) #1, !dbg !2686
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.210, i64 0, metadata !780, metadata !1245) #1, !dbg !2687
  br i1 %tobool22, label %if.else.i.215, label %if.then.2.i, !dbg !2688

if.then.2.i:                                      ; preds = %if.end.i.212
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.210, i64 0, metadata !829, metadata !1245) #1, !dbg !2689
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.209, i64 0, metadata !830, metadata !1245) #1, !dbg !2692
  %call.i.i.213 = tail call i8* @PyBytes_AsString(%struct._object* %call.i.209) #1, !dbg !2693
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.213, i64 0, metadata !833, metadata !1245) #1, !dbg !2694
  %call1.i.i = tail call i64 @PyBytes_Size(%struct._object* %call.i.209) #1, !dbg !2695
  tail call void @llvm.dbg.value(metadata i64 %call1.i.i, i64 0, metadata !834, metadata !1245) #1, !dbg !2696
  %cmp.i.i = icmp slt i64 %call1.i.i, 10, !dbg !2697
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !2699

if.then.i.i:                                      ; preds = %if.then.2.i
  %36 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2700, !tbaa !1251
  tail call void @PyErr_SetString(%struct._object* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i64 0, i64 0)) #1, !dbg !2702
  br label %do.body.i, !dbg !2703

if.end.i.i:                                       ; preds = %if.then.2.i
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.213, i64 0, metadata !843, metadata !1245) #1, !dbg !2704
  %37 = load i8, i8* %call.i.i.213, align 1, !dbg !2707, !tbaa !1225
  %conv.i.i.i = zext i8 %37 to i64, !dbg !2707
  tail call void @llvm.dbg.value(metadata i64 %conv.i.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2708
  %arrayidx1.i.i.i = getelementptr i8, i8* %call.i.i.213, i64 1, !dbg !2709
  %38 = load i8, i8* %arrayidx1.i.i.i, align 1, !dbg !2709, !tbaa !1225
  %conv2.i.i.i = zext i8 %38 to i64, !dbg !2710
  %shl.i.i.i = shl nuw nsw i64 %conv2.i.i.i, 8, !dbg !2711
  %or.i.i.i = or i64 %shl.i.i.i, %conv.i.i.i, !dbg !2712
  tail call void @llvm.dbg.value(metadata i64 %or.i.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2708
  %arrayidx3.i.i.i = getelementptr i8, i8* %call.i.i.213, i64 2, !dbg !2713
  %39 = load i8, i8* %arrayidx3.i.i.i, align 1, !dbg !2713, !tbaa !1225
  %conv4.i.i.i = zext i8 %39 to i64, !dbg !2714
  %shl5.i.i.i = shl nuw nsw i64 %conv4.i.i.i, 16, !dbg !2715
  %or6.i.i.i = or i64 %or.i.i.i, %shl5.i.i.i, !dbg !2716
  tail call void @llvm.dbg.value(metadata i64 %or6.i.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2708
  %arrayidx7.i.i.i = getelementptr i8, i8* %call.i.i.213, i64 3, !dbg !2717
  %40 = load i8, i8* %arrayidx7.i.i.i, align 1, !dbg !2717, !tbaa !1225
  %conv8.i.i.i = zext i8 %40 to i64, !dbg !2718
  %shl9.i.i.i = shl nuw nsw i64 %conv8.i.i.i, 24, !dbg !2719
  %or10.i.i.i = or i64 %or6.i.i.i, %shl9.i.i.i, !dbg !2720
  tail call void @llvm.dbg.value(metadata i64 %or10.i.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2708
  %and.i.i.i = and i64 %shl9.i.i.i, 2147483648, !dbg !2721
  %sub.i.i.i = sub nsw i64 0, %and.i.i.i, !dbg !2722
  %or11.i.i.i = or i64 %or10.i.i.i, %sub.i.i.i, !dbg !2723
  tail call void @llvm.dbg.value(metadata i64 %or11.i.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2708
  %call3.i.i = tail call i64 @PyImport_GetMagicNumber() #1, !dbg !2724
  %cmp4.i.i = icmp eq i64 %or11.i.i.i, %call3.i.i, !dbg !2725
  br i1 %cmp4.i.i, label %if.end.8.i.i, label %if.then.5.i.i, !dbg !2726

if.then.5.i.i:                                    ; preds = %if.end.i.i
  %41 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2727, !tbaa !1231
  %tobool.i.i = icmp eq i32 %41, 0, !dbg !2727
  br i1 %tobool.i.i, label %if.end.7.i.i, label %if.then.6.i.i, !dbg !2730

if.then.6.i.i:                                    ; preds = %if.then.5.i.i
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i64 0, i64 0), %struct._object* %call1.i.210) #1, !dbg !2731
  br label %if.end.7.i.i, !dbg !2731

if.end.7.i.i:                                     ; preds = %if.then.6.i.i, %if.then.5.i.i
  %42 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2732, !tbaa !1260
  %inc.i.i = add i64 %42, 1, !dbg !2732
  store i64 %inc.i.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2732, !tbaa !1260
  br label %do.body.i, !dbg !2733

if.end.8.i.i:                                     ; preds = %if.end.i.i
  %cmp9.i.i = icmp eq i64 %mtime.0, 0, !dbg !2734
  br i1 %cmp9.i.i, label %if.end.18.i.i, label %land.lhs.true.i.i, !dbg !2736

land.lhs.true.i.i:                                ; preds = %if.end.8.i.i
  %add.ptr.i.i = getelementptr i8, i8* %call.i.i.213, i64 4, !dbg !2737
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i.i, i64 0, metadata !843, metadata !1245) #1, !dbg !2738
  %43 = load i8, i8* %add.ptr.i.i, align 1, !dbg !2740, !tbaa !1225
  %conv.i.50.i.i = zext i8 %43 to i64, !dbg !2740
  tail call void @llvm.dbg.value(metadata i64 %conv.i.50.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2741
  %arrayidx1.i.51.i.i = getelementptr i8, i8* %call.i.i.213, i64 5, !dbg !2742
  %44 = load i8, i8* %arrayidx1.i.51.i.i, align 1, !dbg !2742, !tbaa !1225
  %conv2.i.52.i.i = zext i8 %44 to i64, !dbg !2743
  %shl.i.53.i.i = shl nuw nsw i64 %conv2.i.52.i.i, 8, !dbg !2744
  %or.i.54.i.i = or i64 %shl.i.53.i.i, %conv.i.50.i.i, !dbg !2745
  tail call void @llvm.dbg.value(metadata i64 %or.i.54.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2741
  %arrayidx3.i.55.i.i = getelementptr i8, i8* %call.i.i.213, i64 6, !dbg !2746
  %45 = load i8, i8* %arrayidx3.i.55.i.i, align 1, !dbg !2746, !tbaa !1225
  %conv4.i.56.i.i = zext i8 %45 to i64, !dbg !2747
  %shl5.i.57.i.i = shl nuw nsw i64 %conv4.i.56.i.i, 16, !dbg !2748
  %or6.i.58.i.i = or i64 %or.i.54.i.i, %shl5.i.57.i.i, !dbg !2749
  tail call void @llvm.dbg.value(metadata i64 %or6.i.58.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2741
  %arrayidx7.i.59.i.i = getelementptr i8, i8* %call.i.i.213, i64 7, !dbg !2750
  %46 = load i8, i8* %arrayidx7.i.59.i.i, align 1, !dbg !2750, !tbaa !1225
  %conv8.i.60.i.i = zext i8 %46 to i64, !dbg !2751
  %shl9.i.61.i.i = shl nuw nsw i64 %conv8.i.60.i.i, 24, !dbg !2752
  %or10.i.62.i.i = or i64 %or6.i.58.i.i, %shl9.i.61.i.i, !dbg !2753
  tail call void @llvm.dbg.value(metadata i64 %or10.i.62.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2741
  %and.i.63.i.i = and i64 %shl9.i.61.i.i, 2147483648, !dbg !2754
  %sub.i.64.i.i = sub nsw i64 0, %and.i.63.i.i, !dbg !2755
  %or11.i.65.i.i = or i64 %or10.i.62.i.i, %sub.i.64.i.i, !dbg !2756
  tail call void @llvm.dbg.value(metadata i64 %or11.i.65.i.i, i64 0, metadata !844, metadata !1245) #1, !dbg !2741
  tail call void @llvm.dbg.value(metadata i64 %or11.i.65.i.i, i64 0, metadata !849, metadata !1245) #1, !dbg !2757
  %sub.i.66.i.i = sub i64 %or11.i.65.i.i, %mtime.0, !dbg !2759
  tail call void @llvm.dbg.value(metadata i64 %sub.i.66.i.i, i64 0, metadata !851, metadata !1245) #1, !dbg !2760
  %cmp.i.i.i = icmp slt i64 %sub.i.66.i.i, 0, !dbg !2761
  %sub1.i.i.i = sub i64 0, %sub.i.66.i.i, !dbg !2763
  tail call void @llvm.dbg.value(metadata i64 %sub1.i.i.i, i64 0, metadata !851, metadata !1245) #1, !dbg !2760
  %sub1.sub.i.i.i = select i1 %cmp.i.i.i, i64 %sub1.i.i.i, i64 %sub.i.66.i.i, !dbg !2764
  %cmp2.i.i.i = icmp slt i64 %sub1.sub.i.i.i, 2, !dbg !2765
  br i1 %cmp2.i.i.i, label %if.end.18.i.i, label %if.then.13.i.i, !dbg !2766

if.then.13.i.i:                                   ; preds = %land.lhs.true.i.i
  %47 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2767, !tbaa !1231
  %tobool14.i.i = icmp eq i32 %47, 0, !dbg !2767
  br i1 %tobool14.i.i, label %if.end.16.i.i, label %if.then.15.i.i, !dbg !2770

if.then.15.i.i:                                   ; preds = %if.then.13.i.i
  tail call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i64 0, i64 0), %struct._object* %call1.i.210) #1, !dbg !2771
  br label %if.end.16.i.i, !dbg !2771

if.end.16.i.i:                                    ; preds = %if.then.15.i.i, %if.then.13.i.i
  %48 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2772, !tbaa !1260
  %inc17.i.i = add i64 %48, 1, !dbg !2772
  store i64 %inc17.i.i, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2772, !tbaa !1260
  br label %do.body.i, !dbg !2773

if.end.18.i.i:                                    ; preds = %land.lhs.true.i.i, %if.end.8.i.i
  %add.ptr19.i.i = getelementptr i8, i8* %call.i.i.213, i64 12, !dbg !2774
  %sub.i.i.214 = add i64 %call1.i.i, -12, !dbg !2775
  %call20.i.i = tail call %struct._object* @PyMarshal_ReadObjectFromString(i8* %add.ptr19.i.i, i64 %sub.i.i.214) #1, !dbg !2776
  tail call void @llvm.dbg.value(metadata %struct._object* %call20.i.i, i64 0, metadata !832, metadata !1245) #1, !dbg !2777
  %cmp21.i.i = icmp eq %struct._object* %call20.i.i, null, !dbg !2778
  br i1 %cmp21.i.i, label %do.body.i, label %if.end.23.i.i, !dbg !2780

if.end.23.i.i:                                    ; preds = %if.end.18.i.i
  %ob_type.i.i = getelementptr inbounds %struct._object, %struct._object* %call20.i.i, i64 0, i32 1, !dbg !2781
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.i, align 8, !dbg !2782, !tbaa !1298
  %cmp24.i.i = icmp eq %struct._typeobject* %49, @PyCode_Type, !dbg !2781
  br i1 %cmp24.i.i, label %do.body.i, label %do.body.i.i, !dbg !2785

do.body.i.i:                                      ; preds = %if.end.23.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call20.i.i, i64 0, metadata !835, metadata !1245) #1, !dbg !2786
  %ob_refcnt.i.i = getelementptr inbounds %struct._object, %struct._object* %call20.i.i, i64 0, i32 0, !dbg !2788
  %50 = load i64, i64* %ob_refcnt.i.i, align 8, !dbg !2788, !tbaa !1260
  %dec.i.i = add i64 %50, -1, !dbg !2788
  store i64 %dec.i.i, i64* %ob_refcnt.i.i, align 8, !dbg !2788, !tbaa !1260
  %cmp26.i.i = icmp eq i64 %dec.i.i, 0, !dbg !2788
  br i1 %cmp26.i.i, label %if.else.i.i, label %if.end.29.i.i, !dbg !2789

if.else.i.i:                                      ; preds = %do.body.i.i
  %tp_dealloc.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i64 0, i32 4, !dbg !2782
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.i, align 8, !dbg !2782, !tbaa !1299
  tail call void %51(%struct._object* %call20.i.i) #1, !dbg !2782
  br label %if.end.29.i.i, !dbg !2790

if.end.29.i.i:                                    ; preds = %if.else.i.i, %do.body.i.i
  %52 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2791, !tbaa !1251
  %call30.i.i = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %52, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i64 0, i64 0), %struct._object* %call1.i.210) #1, !dbg !2792
  br label %do.body.i, !dbg !2793

if.else.i.215:                                    ; preds = %if.end.i.212
  tail call void @llvm.dbg.value(metadata %struct._object* %call1.i.210, i64 0, metadata !854, metadata !1245) #1, !dbg !2794
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.209, i64 0, metadata !855, metadata !1245) #1, !dbg !2796
  %call.i.1.i = tail call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %call1.i.210) #1, !dbg !2797
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1.i, i64 0, metadata !858, metadata !1245) #1, !dbg !2798
  %cmp.i.2.i = icmp eq %struct._object* %call.i.1.i, null, !dbg !2799
  br i1 %cmp.i.2.i, label %do.body.i, label %if.end.i.4.i, !dbg !2801

if.end.i.4.i:                                     ; preds = %if.else.i.215
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.209, i64 0, metadata !869, metadata !1245) #1, !dbg !2802
  tail call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !874, metadata !1245) #1, !dbg !2804
  %call.i.i.i = tail call i8* @PyBytes_AsString(%struct._object* %call.i.209) #1, !dbg !2805
  tail call void @llvm.dbg.value(metadata i8* %call.i.i.i, i64 0, metadata !872, metadata !1245) #1, !dbg !2806
  %cmp.i.i.3.i = icmp eq i8* %call.i.i.i, null, !dbg !2807
  br i1 %cmp.i.i.3.i, label %if.then.i.i.i, label %if.end.i.i.i, !dbg !2809

if.then.i.i.i:                                    ; preds = %if.end.i.4.i
  %call1.i.i.i = tail call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i64 0, i64 0), i64 2) #1, !dbg !2810
  br label %normalize_line_endings.exit.i.i, !dbg !2812

if.end.i.i.i:                                     ; preds = %if.end.i.4.i
  %call2.i.i.i = tail call i64 @PyBytes_Size(%struct._object* %call.i.209) #1, !dbg !2813
  %add.i.i.i = add i64 %call2.i.i.i, 2, !dbg !2814
  %call3.i.i.i = tail call i8* @PyMem_Malloc(i64 %add.i.i.i) #1, !dbg !2815
  tail call void @llvm.dbg.value(metadata i8* %call3.i.i.i, i64 0, metadata !870, metadata !1245) #1, !dbg !2816
  %cmp4.i.i.i = icmp eq i8* %call3.i.i.i, null, !dbg !2817
  br i1 %cmp4.i.i.i, label %normalize_line_endings.exit.thread.i.i, label %for.cond.i.i.i.preheader, !dbg !2819

for.cond.i.i.i.preheader:                         ; preds = %if.end.i.i.i
  br label %for.cond.i.i.i, !dbg !2820

normalize_line_endings.exit.thread.i.i:           ; preds = %if.end.i.i.i
  %53 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !2823, !tbaa !1251
  tail call void @PyErr_SetString(%struct._object* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.47, i64 0, i64 0)) #1, !dbg !2825
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.i.i, i64 0, metadata !857, metadata !1245) #1, !dbg !2826
  br label %do.body.i.8.i, !dbg !2827

for.cond.i.i.i:                                   ; preds = %for.cond.i.i.i.preheader, %if.end.20.i.i.i
  %q.0.i.i.i = phi i8* [ %q.1.i.i.i, %if.end.20.i.i.i ], [ %call3.i.i.i, %for.cond.i.i.i.preheader ], !dbg !2828
  %p.0.i.i.i = phi i8* [ %incdec.ptr21.i.i.i, %if.end.20.i.i.i ], [ %call.i.i.i, %for.cond.i.i.i.preheader ], !dbg !2828
  %len.0.i.i.i = phi i32 [ %inc.i.i.i, %if.end.20.i.i.i ], [ 0, %for.cond.i.i.i.preheader ], !dbg !2828
  %54 = load i8, i8* %p.0.i.i.i, align 1, !dbg !2820, !tbaa !1225
  switch i8 %54, label %if.else.i.i.i [
    i8 0, label %for.end.i.i.i
    i8 13, label %if.then.12.i.i.i
  ], !dbg !2829

if.then.12.i.i.i:                                 ; preds = %for.cond.i.i.i
  store i8 10, i8* %q.0.i.i.i, align 1, !dbg !2830, !tbaa !1225
  %add.ptr.i.i.i = getelementptr i8, i8* %p.0.i.i.i, i64 1, !dbg !2834
  %55 = load i8, i8* %add.ptr.i.i.i, align 1, !dbg !2836, !tbaa !1225
  %cmp14.i.i.i = icmp eq i8 %55, 10, !dbg !2837
  tail call void @llvm.dbg.value(metadata i8* %add.ptr.i.i.i, i64 0, metadata !872, metadata !1245) #1, !dbg !2806
  %incdec.ptr17.p.0.i.i.i = select i1 %cmp14.i.i.i, i8* %add.ptr.i.i.i, i8* %p.0.i.i.i, !dbg !2838
  br label %if.end.20.i.i.i, !dbg !2838

if.else.i.i.i:                                    ; preds = %for.cond.i.i.i
  store i8 %54, i8* %q.0.i.i.i, align 1, !dbg !2839, !tbaa !1225
  br label %if.end.20.i.i.i, !dbg !2828

if.end.20.i.i.i:                                  ; preds = %if.else.i.i.i, %if.then.12.i.i.i
  %p.1.i.i.i = phi i8* [ %p.0.i.i.i, %if.else.i.i.i ], [ %incdec.ptr17.p.0.i.i.i, %if.then.12.i.i.i ], !dbg !2828
  %q.1.i.i.i = getelementptr i8, i8* %q.0.i.i.i, i64 1, !dbg !2840
  %inc.i.i.i = add i32 %len.0.i.i.i, 1, !dbg !2841
  tail call void @llvm.dbg.value(metadata i32 %inc.i.i.i, i64 0, metadata !874, metadata !1245) #1, !dbg !2804
  %incdec.ptr21.i.i.i = getelementptr i8, i8* %p.1.i.i.i, i64 1, !dbg !2842
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr21.i.i.i, i64 0, metadata !872, metadata !1245) #1, !dbg !2806
  br label %for.cond.i.i.i, !dbg !2843

for.end.i.i.i:                                    ; preds = %for.cond.i.i.i
  %len.0.i.i.i.lcssa = phi i32 [ %len.0.i.i.i, %for.cond.i.i.i ]
  %q.0.i.i.i.lcssa = phi i8* [ %q.0.i.i.i, %for.cond.i.i.i ]
  %incdec.ptr22.i.i.i = getelementptr i8, i8* %q.0.i.i.i.lcssa, i64 1, !dbg !2844
  tail call void @llvm.dbg.value(metadata i8* %incdec.ptr22.i.i.i, i64 0, metadata !871, metadata !1245) #1, !dbg !2845
  store i8 10, i8* %q.0.i.i.i.lcssa, align 1, !dbg !2846, !tbaa !1225
  store i8 0, i8* %incdec.ptr22.i.i.i, align 1, !dbg !2847, !tbaa !1225
  %add23.i.i.i = add i32 %len.0.i.i.i.lcssa, 2, !dbg !2848
  %conv24.i.i.i = sext i32 %add23.i.i.i to i64, !dbg !2849
  %call25.i.i.i = tail call %struct._object* @PyBytes_FromStringAndSize(i8* %call3.i.i.i, i64 %conv24.i.i.i) #1, !dbg !2850
  tail call void @llvm.dbg.value(metadata %struct._object* %call25.i.i.i, i64 0, metadata !873, metadata !1245) #1, !dbg !2851
  tail call void @PyMem_Free(i8* %call3.i.i.i) #1, !dbg !2852
  br label %normalize_line_endings.exit.i.i, !dbg !2853

normalize_line_endings.exit.i.i:                  ; preds = %for.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi %struct._object* [ %call1.i.i.i, %if.then.i.i.i ], [ %call25.i.i.i, %for.end.i.i.i ], !dbg !2828
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.i.i, i64 0, metadata !857, metadata !1245) #1, !dbg !2826
  %cmp2.i.i = icmp eq %struct._object* %retval.0.i.i.i, null, !dbg !2854
  br i1 %cmp2.i.i, label %do.body.i.8.i, label %if.end.7.i.12.i, !dbg !2827

do.body.i.8.i:                                    ; preds = %normalize_line_endings.exit.i.i, %normalize_line_endings.exit.thread.i.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1.i, i64 0, metadata !859, metadata !1245) #1, !dbg !2855
  %ob_refcnt.i.5.i = getelementptr inbounds %struct._object, %struct._object* %call.i.1.i, i64 0, i32 0, !dbg !2857
  %56 = load i64, i64* %ob_refcnt.i.5.i, align 8, !dbg !2857, !tbaa !1260
  %dec.i.6.i = add i64 %56, -1, !dbg !2857
  store i64 %dec.i.6.i, i64* %ob_refcnt.i.5.i, align 8, !dbg !2857, !tbaa !1260
  %cmp4.i.7.i = icmp eq i64 %dec.i.6.i, 0, !dbg !2857
  br i1 %cmp4.i.7.i, label %if.else.i.11.i, label %do.body.i, !dbg !2859

if.else.i.11.i:                                   ; preds = %do.body.i.8.i
  %ob_type.i.9.i = getelementptr inbounds %struct._object, %struct._object* %call.i.1.i, i64 0, i32 1, !dbg !2860
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.9.i, align 8, !dbg !2860, !tbaa !1298
  %tp_dealloc.i.10.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i64 0, i32 4, !dbg !2860
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.10.i, align 8, !dbg !2860, !tbaa !1299
  tail call void %58(%struct._object* %call.i.1.i) #1, !dbg !2860
  br label %do.body.i, !dbg !2862

if.end.7.i.12.i:                                  ; preds = %normalize_line_endings.exit.i.i
  %call8.i.i = tail call i8* @PyBytes_AsString(%struct._object* %retval.0.i.i.i) #1, !dbg !2863
  %call9.i.i = tail call i8* @PyBytes_AsString(%struct._object* %call.i.1.i) #1, !dbg !2863
  %call10.i.i = tail call %struct._object* @Py_CompileStringExFlags(i8* %call8.i.i, i8* %call9.i.i, i32 257, %struct.PyCompilerFlags* null, i32 -1) #1, !dbg !2863
  tail call void @llvm.dbg.value(metadata %struct._object* %call10.i.i, i64 0, metadata !856, metadata !1245) #1, !dbg !2864
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.1.i, i64 0, metadata !863, metadata !1245) #1, !dbg !2865
  %ob_refcnt13.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.1.i, i64 0, i32 0, !dbg !2867
  %59 = load i64, i64* %ob_refcnt13.i.i, align 8, !dbg !2867, !tbaa !1260
  %dec14.i.i = add i64 %59, -1, !dbg !2867
  store i64 %dec14.i.i, i64* %ob_refcnt13.i.i, align 8, !dbg !2867, !tbaa !1260
  %cmp15.i.i = icmp eq i64 %dec14.i.i, 0, !dbg !2867
  br i1 %cmp15.i.i, label %if.else.17.i.i, label %if.end.20.i.i, !dbg !2869

if.else.17.i.i:                                   ; preds = %if.end.7.i.12.i
  %ob_type18.i.i = getelementptr inbounds %struct._object, %struct._object* %call.i.1.i, i64 0, i32 1, !dbg !2870
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type18.i.i, align 8, !dbg !2870, !tbaa !1298
  %tp_dealloc19.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i64 0, i32 4, !dbg !2870
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19.i.i, align 8, !dbg !2870, !tbaa !1299
  tail call void %61(%struct._object* %call.i.1.i) #1, !dbg !2870
  br label %if.end.20.i.i, !dbg !2862

if.end.20.i.i:                                    ; preds = %if.else.17.i.i, %if.end.7.i.12.i
  tail call void @llvm.dbg.value(metadata %struct._object* %retval.0.i.i.i, i64 0, metadata !865, metadata !1245) #1, !dbg !2872
  %ob_refcnt25.i.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.i.i, i64 0, i32 0, !dbg !2874
  %62 = load i64, i64* %ob_refcnt25.i.i, align 8, !dbg !2874, !tbaa !1260
  %dec26.i.i = add i64 %62, -1, !dbg !2874
  store i64 %dec26.i.i, i64* %ob_refcnt25.i.i, align 8, !dbg !2874, !tbaa !1260
  %cmp27.i.i = icmp eq i64 %dec26.i.i, 0, !dbg !2874
  br i1 %cmp27.i.i, label %if.else.29.i.i, label %do.body.i, !dbg !2876

if.else.29.i.i:                                   ; preds = %if.end.20.i.i
  %ob_type30.i.i = getelementptr inbounds %struct._object, %struct._object* %retval.0.i.i.i, i64 0, i32 1, !dbg !2877
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type30.i.i, align 8, !dbg !2877, !tbaa !1298
  %tp_dealloc31.i.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i64 0, i32 4, !dbg !2877
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31.i.i, align 8, !dbg !2877, !tbaa !1299
  tail call void %64(%struct._object* %retval.0.i.i.i) #1, !dbg !2877
  br label %do.body.i, !dbg !2862

do.body.i:                                        ; preds = %if.else.29.i.i, %if.end.20.i.i, %if.else.i.11.i, %do.body.i.8.i, %if.else.i.215, %if.end.29.i.i, %if.end.23.i.i, %if.end.18.i.i, %if.end.16.i.i, %if.end.7.i.i, %if.then.i.i
  %code.0.i = phi %struct._object* [ null, %if.then.i.i ], [ @_Py_NoneStruct, %if.end.7.i.i ], [ null, %if.end.29.i.i ], [ @_Py_NoneStruct, %if.end.16.i.i ], [ null, %if.end.18.i.i ], [ %call20.i.i, %if.end.23.i.i ], [ null, %if.else.i.215 ], [ null, %do.body.i.8.i ], [ null, %if.else.i.11.i ], [ %call10.i.i, %if.end.20.i.i ], [ %call10.i.i, %if.else.29.i.i ], !dbg !2879
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i.209, i64 0, metadata !782, metadata !1245) #1, !dbg !2880
  %ob_refcnt.i.216 = getelementptr inbounds %struct._object, %struct._object* %call.i.209, i64 0, i32 0, !dbg !2882
  %65 = load i64, i64* %ob_refcnt.i.216, align 8, !dbg !2882, !tbaa !1260
  %dec.i.217 = add i64 %65, -1, !dbg !2882
  store i64 %dec.i.217, i64* %ob_refcnt.i.216, align 8, !dbg !2882, !tbaa !1260
  %cmp6.i = icmp eq i64 %dec.i.217, 0, !dbg !2882
  br i1 %cmp6.i, label %if.else.8.i, label %get_code_from_data.exit, !dbg !2884

if.else.8.i:                                      ; preds = %do.body.i
  %ob_type.i.218 = getelementptr inbounds %struct._object, %struct._object* %call.i.209, i64 0, i32 1, !dbg !2885
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type.i.218, align 8, !dbg !2885, !tbaa !1298
  %tp_dealloc.i.219 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i64 0, i32 4, !dbg !2885
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i.219, align 8, !dbg !2885, !tbaa !1299
  tail call void %67(%struct._object* %call.i.209) #1, !dbg !2885
  br label %get_code_from_data.exit, !dbg !2879

get_code_from_data.exit:                          ; preds = %do.body.i, %if.else.8.i
  tail call void @llvm.dbg.value(metadata %struct._object* %code.0.i, i64 0, metadata !696, metadata !1245), !dbg !2519
  %cmp53 = icmp eq %struct._object* %code.0.i, @_Py_NoneStruct, !dbg !2887
  br i1 %cmp53, label %do.body.55, label %if.end.67, !dbg !2888

do.body.55:                                       ; preds = %get_code_from_data.exit
  tail call void @llvm.dbg.value(metadata %struct._object* %code.0.i, i64 0, metadata !718, metadata !1245), !dbg !2889
  %68 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2891, !tbaa !1260
  %dec58 = add i64 %68, -1, !dbg !2891
  store i64 %dec58, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2891, !tbaa !1260
  %cmp59 = icmp eq i64 %dec58, 0, !dbg !2891
  br i1 %cmp59, label %if.else.61, label %for.inc, !dbg !2893

if.else.61:                                       ; preds = %do.body.55
  %69 = load %struct._typeobject*, %struct._typeobject** getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 1), align 8, !dbg !2894, !tbaa !1298
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %69, i64 0, i32 4, !dbg !2894
  %70 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !2894, !tbaa !1299
  tail call void %70(%struct._object* nonnull @_Py_NoneStruct) #1, !dbg !2894
  br label %for.inc

if.end.67:                                        ; preds = %get_code_from_data.exit
  %code.0.i.lcssa = phi %struct._object* [ %code.0.i, %get_code_from_data.exit ]
  %call17.lcssa = phi %struct._object* [ %call17, %get_code_from_data.exit ]
  %cmp68 = icmp ne %struct._object* %code.0.i.lcssa, null, !dbg !2896
  %cmp70 = icmp ne %struct._object** %p_modpath, null, !dbg !2898
  %or.cond = and i1 %cmp70, %cmp68, !dbg !2899
  br i1 %or.cond, label %if.then.71, label %do.body.99, !dbg !2899

if.then.71:                                       ; preds = %if.end.67
  %call72 = tail call %struct._object* @PyTuple_GetItem(%struct._object* %call17.lcssa, i64 0) #1, !dbg !2900
  store %struct._object* %call72, %struct._object** %p_modpath, align 8, !dbg !2902, !tbaa !1251
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %call72, i64 0, i32 0, !dbg !2903
  %71 = load i64, i64* %ob_refcnt73, align 8, !dbg !2903, !tbaa !1260
  %inc = add i64 %71, 1, !dbg !2903
  store i64 %inc, i64* %ob_refcnt73, align 8, !dbg !2903, !tbaa !1260
  br label %do.body.99, !dbg !2904

if.then.81:                                       ; preds = %if.end.16
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !722, metadata !1245), !dbg !2905
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !700, metadata !1245), !dbg !2520
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !724, metadata !1245), !dbg !2907
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 0, !dbg !2909
  %72 = load i64, i64* %ob_refcnt84, align 8, !dbg !2909, !tbaa !1260
  %dec85 = add i64 %72, -1, !dbg !2909
  store i64 %dec85, i64* %ob_refcnt84, align 8, !dbg !2909, !tbaa !1260
  %cmp86 = icmp eq i64 %dec85, 0, !dbg !2909
  br i1 %cmp86, label %if.else.88, label %for.inc, !dbg !2911

if.else.88:                                       ; preds = %if.then.81
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %call10, i64 0, i32 1, !dbg !2912
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8, !dbg !2912, !tbaa !1298
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i64 0, i32 4, !dbg !2912
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8, !dbg !2912, !tbaa !1299
  tail call void %74(%struct._object* %call10) #1, !dbg !2912
  br label %for.inc

for.inc:                                          ; preds = %do.body.55, %if.else.61, %if.then.81, %if.else.88
  %code.2 = phi %struct._object* [ null, %if.else.88 ], [ null, %if.then.81 ], [ @_Py_NoneStruct, %do.body.55 ], [ @_Py_NoneStruct, %if.else.61 ]
  %incdec.ptr = getelementptr i8, i8* %arraydecay239, i64 20, !dbg !2914
  %75 = load i8, i8* %incdec.ptr, align 1, !dbg !2552, !tbaa !1225
  %tobool = icmp eq i8 %75, 0, !dbg !2553
  br i1 %tobool, label %for.end.loopexit, label %for.body, !dbg !2553

for.end.loopexit:                                 ; preds = %for.inc
  %code.2.lcssa = phi %struct._object* [ %code.2, %for.inc ]
  br label %for.end, !dbg !2915

for.end:                                          ; preds = %for.end.loopexit, %for.cond.preheader
  %code.0.lcssa = phi %struct._object* [ null, %for.cond.preheader ], [ %code.2.lcssa, %for.end.loopexit ]
  %76 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2915, !tbaa !1251
  %call98 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i64 0, i64 0), %struct._object* %fullname) #1, !dbg !2916
  br label %do.body.99, !dbg !2916

do.body.99.loopexit:                              ; preds = %for.body, %land.lhs.true, %if.end.51
  %fullpath.5.ph = phi %struct._object* [ null, %for.body ], [ %call10, %land.lhs.true ], [ null, %if.end.51 ]
  br label %do.body.99, !dbg !2917

do.body.99:                                       ; preds = %do.body.99.loopexit, %if.end.67, %if.then.71, %for.end
  %fullpath.5 = phi %struct._object* [ null, %for.end ], [ null, %if.end.67 ], [ null, %if.then.71 ], [ %fullpath.5.ph, %do.body.99.loopexit ]
  %code.3 = phi %struct._object* [ %code.0.lcssa, %for.end ], [ %code.0.i.lcssa, %if.end.67 ], [ %code.0.i.lcssa, %if.then.71 ], [ null, %do.body.99.loopexit ]
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !728, metadata !1245), !dbg !2917
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !2919
  %77 = load i64, i64* %ob_refcnt101, align 8, !dbg !2919, !tbaa !1260
  %dec102 = add i64 %77, -1, !dbg !2919
  store i64 %dec102, i64* %ob_refcnt101, align 8, !dbg !2919, !tbaa !1260
  %cmp103 = icmp eq i64 %dec102, 0, !dbg !2919
  br i1 %cmp103, label %if.else.105, label %if.end.108, !dbg !2921

if.else.105:                                      ; preds = %do.body.99
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !2922
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8, !dbg !2922, !tbaa !1298
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i64 0, i32 4, !dbg !2922
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8, !dbg !2922, !tbaa !1299
  tail call void %79(%struct._object* %call1) #1, !dbg !2922
  br label %if.end.108

if.end.108:                                       ; preds = %do.body.99, %if.else.105
  tail call void @llvm.dbg.value(metadata %struct._object* %fullpath.5, i64 0, metadata !730, metadata !1245), !dbg !2924
  %cmp112 = icmp eq %struct._object* %fullpath.5, null, !dbg !2926
  br i1 %cmp112, label %cleanup.129, label %do.body.114, !dbg !2927

do.body.114:                                      ; preds = %if.end.108
  tail call void @llvm.dbg.value(metadata %struct._object* %fullpath.5, i64 0, metadata !732, metadata !1245), !dbg !2928
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %fullpath.5, i64 0, i32 0, !dbg !2930
  %80 = load i64, i64* %ob_refcnt116, align 8, !dbg !2930, !tbaa !1260
  %dec117 = add i64 %80, -1, !dbg !2930
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !2930, !tbaa !1260
  %cmp118 = icmp eq i64 %dec117, 0, !dbg !2930
  br i1 %cmp118, label %if.else.120, label %cleanup.129, !dbg !2932

if.else.120:                                      ; preds = %do.body.114
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %fullpath.5, i64 0, i32 1, !dbg !2933
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !2933, !tbaa !1298
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i64 0, i32 4, !dbg !2933
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !2933, !tbaa !1299
  tail call void %82(%struct._object* %fullpath.5) #1, !dbg !2933
  br label %cleanup.129

cleanup.129:                                      ; preds = %cond.false.i, %if.end.108, %do.body.114, %if.else.120, %if.end.4, %get_subname.exit
  %retval.0 = phi %struct._object* [ null, %get_subname.exit ], [ null, %if.end.4 ], [ %code.3, %if.else.120 ], [ %code.3, %do.body.114 ], [ %code.3, %if.end.108 ], [ null, %cond.false.i ]
  ret %struct._object* %retval.0, !dbg !2935
}

declare %struct._object* @PyImport_AddModuleObject(%struct._object*) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyImport_ExecCodeModuleObject(%struct._object*, %struct._object*, %struct._object*, %struct._object*) #3

declare void @PySys_FormatStderr(i8*, ...) #3

declare %struct._object* @PyErr_Occurred() #3

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i64 @PyTuple_Size(%struct._object*) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm* nocapture) #4

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @get_data(%struct._object* %archive, %struct._object* %toc_entry) #0 {
entry:
  %datapath = alloca %struct._object*, align 8
  %compress = alloca i64, align 8
  %data_size = alloca i64, align 8
  %file_size = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %time = alloca i64, align 8
  %date = alloca i64, align 8
  %crc = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %archive, i64 0, metadata !786, metadata !1245), !dbg !2936
  tail call void @llvm.dbg.value(metadata %struct._object* %toc_entry, i64 0, metadata !787, metadata !1245), !dbg !2937
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !789, metadata !1245), !dbg !2938
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !794, metadata !1245), !dbg !2939
  %0 = bitcast %struct._object** %datapath to i8*, !dbg !2940
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2940
  %1 = bitcast i64* %compress to i8*, !dbg !2941
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2941
  %2 = bitcast i64* %data_size to i8*, !dbg !2941
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2941
  %3 = bitcast i64* %file_size to i8*, !dbg !2941
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2941
  %4 = bitcast i64* %file_offset to i8*, !dbg !2941
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2941
  %5 = bitcast i64* %time to i8*, !dbg !2942
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2942
  %6 = bitcast i64* %date to i8*, !dbg !2942
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2942
  %7 = bitcast i64* %crc to i8*, !dbg !2942
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2942
  tail call void @llvm.dbg.value(metadata %struct._object** %datapath, i64 0, metadata !796, metadata !1245), !dbg !2943
  tail call void @llvm.dbg.value(metadata i64* %compress, i64 0, metadata !797, metadata !1245), !dbg !2944
  tail call void @llvm.dbg.value(metadata i64* %data_size, i64 0, metadata !798, metadata !1245), !dbg !2945
  tail call void @llvm.dbg.value(metadata i64* %file_size, i64 0, metadata !799, metadata !1245), !dbg !2946
  tail call void @llvm.dbg.value(metadata i64* %file_offset, i64 0, metadata !800, metadata !1245), !dbg !2947
  tail call void @llvm.dbg.value(metadata i64* %time, i64 0, metadata !802, metadata !1245), !dbg !2948
  tail call void @llvm.dbg.value(metadata i64* %date, i64 0, metadata !803, metadata !1245), !dbg !2949
  tail call void @llvm.dbg.value(metadata i64* %crc, i64 0, metadata !804, metadata !1245), !dbg !2950
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %toc_entry, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), %struct._object** nonnull %datapath, i64* nonnull %compress, i64* nonnull %data_size, i64* nonnull %file_size, i64* nonnull %file_offset, i64* nonnull %time, i64* nonnull %date, i64* nonnull %crc) #1, !dbg !2951
  %tobool = icmp eq i32 %call, 0, !dbg !2951
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2953

if.end:                                           ; preds = %entry
  %call1 = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %archive, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0)) #1, !dbg !2954
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call1, i64 0, metadata !792, metadata !1245), !dbg !2955
  %tobool2 = icmp eq %struct._IO_FILE* %call1, null, !dbg !2956
  br i1 %tobool2, label %if.then.3, label %if.end.9, !dbg !2958

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred() #1, !dbg !2959
  %tobool5 = icmp eq %struct._object* %call4, null, !dbg !2959
  br i1 %tobool5, label %if.then.6, label %cleanup, !dbg !2962

if.then.6:                                        ; preds = %if.then.3
  %8 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2963, !tbaa !1251
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0), %struct._object* %archive) #1, !dbg !2964
  br label %cleanup, !dbg !2964

if.end.9:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64* %file_offset, i64 0, metadata !800, metadata !1245), !dbg !2947
  %9 = load i64, i64* %file_offset, align 8, !dbg !2965, !tbaa !2967
  %call10 = call i32 @fseek(%struct._IO_FILE* %call1, i64 %9, i32 0) #1, !dbg !2968
  %cmp = icmp eq i32 %call10, -1, !dbg !2969
  br i1 %cmp, label %if.then.11, label %if.end.14, !dbg !2970

if.then.11:                                       ; preds = %if.end.9
  %call12 = call i32 @fclose(%struct._IO_FILE* %call1) #1, !dbg !2971
  %10 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2973, !tbaa !1251
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), %struct._object* %archive) #1, !dbg !2974
  br label %cleanup, !dbg !2975

if.end.14:                                        ; preds = %if.end.9
  %call15 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %call1) #1, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %call15, i64 0, metadata !795, metadata !1245), !dbg !2977
  %cmp16 = icmp eq i64 %call15, 67324752, !dbg !2978
  br i1 %cmp16, label %if.end.24, label %if.then.17, !dbg !2980

if.then.17:                                       ; preds = %if.end.14
  %call18 = call %struct._object* @PyErr_Occurred() #1, !dbg !2981
  %tobool19 = icmp eq %struct._object* %call18, null, !dbg !2981
  br i1 %tobool19, label %if.then.20, label %if.end.22, !dbg !2984

if.then.20:                                       ; preds = %if.then.17
  %11 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2985, !tbaa !1251
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), %struct._object* %archive) #1, !dbg !2986
  br label %if.end.22, !dbg !2986

if.end.22:                                        ; preds = %if.then.17, %if.then.20
  %call23 = call i32 @fclose(%struct._IO_FILE* %call1) #1, !dbg !2987
  br label %cleanup, !dbg !2988

if.end.24:                                        ; preds = %if.end.14
  call void @llvm.dbg.value(metadata i64* %file_offset, i64 0, metadata !800, metadata !1245), !dbg !2947
  %12 = load i64, i64* %file_offset, align 8, !dbg !2989, !tbaa !2967
  %add = add i64 %12, 26, !dbg !2991
  %call25 = call i32 @fseek(%struct._IO_FILE* %call1, i64 %add, i32 0) #1, !dbg !2992
  %cmp26 = icmp eq i32 %call25, -1, !dbg !2993
  br i1 %cmp26, label %if.then.27, label %if.end.30, !dbg !2994

if.then.27:                                       ; preds = %if.end.24
  %call28 = call i32 @fclose(%struct._IO_FILE* %call1) #1, !dbg !2995
  %13 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2997, !tbaa !1251
  %call29 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), %struct._object* %archive) #1, !dbg !2998
  br label %cleanup, !dbg !2999

if.end.30:                                        ; preds = %if.end.24
  %call31 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call1) #1, !dbg !3000
  %call33 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %call1) #1, !dbg !3001
  call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !795, metadata !1245), !dbg !2977
  %call35 = call %struct._object* @PyErr_Occurred() #1, !dbg !3002
  %tobool36 = icmp eq %struct._object* %call35, null, !dbg !3002
  br i1 %tobool36, label %if.end.39, label %if.then.37, !dbg !3004

if.then.37:                                       ; preds = %if.end.30
  %call38 = call i32 @fclose(%struct._IO_FILE* %call1) #1, !dbg !3005
  br label %cleanup, !dbg !3007

if.end.39:                                        ; preds = %if.end.30
  %add32 = add i32 %call31, 30, !dbg !3008
  %add34 = add i32 %add32, %call33, !dbg !3009
  %conv = sext i32 %add34 to i64, !dbg !3010
  call void @llvm.dbg.value(metadata i64* %file_offset, i64 0, metadata !800, metadata !1245), !dbg !2947
  %14 = load i64, i64* %file_offset, align 8, !dbg !3011, !tbaa !2967
  %add40 = add i64 %14, %conv, !dbg !3011
  call void @llvm.dbg.value(metadata i64 %add40, i64 0, metadata !800, metadata !1245), !dbg !2947
  store i64 %add40, i64* %file_offset, align 8, !dbg !3011, !tbaa !2967
  call void @llvm.dbg.value(metadata i64* %compress, i64 0, metadata !797, metadata !1245), !dbg !2944
  %15 = load i64, i64* %compress, align 8, !dbg !3012, !tbaa !2967
  call void @llvm.dbg.value(metadata i64* %data_size, i64 0, metadata !798, metadata !1245), !dbg !2945
  %16 = load i64, i64* %data_size, align 8, !dbg !3013, !tbaa !2967
  %not.cmp41 = icmp ne i64 %15, 0, !dbg !3012
  %add43 = zext i1 %not.cmp41 to i64, !dbg !3012
  %cond = add i64 %add43, %16, !dbg !3012
  call void @llvm.dbg.value(metadata i64 %cond, i64 0, metadata !801, metadata !1245), !dbg !3015
  %cmp44 = icmp eq i64 %cond, 0, !dbg !3016
  %inc = zext i1 %cmp44 to i64, !dbg !3018
  %inc.cond = add i64 %inc, %cond, !dbg !3018
  %call48 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %inc.cond) #1, !dbg !3019
  call void @llvm.dbg.value(metadata %struct._object* %call48, i64 0, metadata !788, metadata !1245), !dbg !3020
  %cmp49 = icmp eq %struct._object* %call48, null, !dbg !3021
  br i1 %cmp49, label %if.then.51, label %if.end.53, !dbg !3023

if.then.51:                                       ; preds = %if.end.39
  %call52 = call i32 @fclose(%struct._IO_FILE* %call1) #1, !dbg !3024
  br label %cleanup, !dbg !3026

if.end.53:                                        ; preds = %if.end.39
  %call54 = call i8* @PyBytes_AsString(%struct._object* %call48) #1, !dbg !3027
  call void @llvm.dbg.value(metadata i8* %call54, i64 0, metadata !791, metadata !1245), !dbg !3028
  call void @llvm.dbg.value(metadata i64* %file_offset, i64 0, metadata !800, metadata !1245), !dbg !2947
  %17 = load i64, i64* %file_offset, align 8, !dbg !3029, !tbaa !2967
  %call55 = call i32 @fseek(%struct._IO_FILE* %call1, i64 %17, i32 0) #1, !dbg !3030
  call void @llvm.dbg.value(metadata i32 %call55, i64 0, metadata !793, metadata !1245), !dbg !3031
  %cmp56 = icmp eq i32 %call55, 0, !dbg !3032
  br i1 %cmp56, label %if.then.58, label %if.else, !dbg !3034

if.then.58:                                       ; preds = %if.end.53
  call void @llvm.dbg.value(metadata i64* %data_size, i64 0, metadata !798, metadata !1245), !dbg !2945
  %18 = load i64, i64* %data_size, align 8, !dbg !3035, !tbaa !2967
  %call59 = call i64 @fread(i8* %call54, i64 1, i64 %18, %struct._IO_FILE* %call1) #1, !dbg !3037
  call void @llvm.dbg.value(metadata i64 %call59, i64 0, metadata !794, metadata !1245), !dbg !2939
  %call63 = call i32 @fclose(%struct._IO_FILE* %call1) #1, !dbg !3038
  call void @llvm.dbg.value(metadata i64* %data_size, i64 0, metadata !798, metadata !1245), !dbg !2945
  %19 = load i64, i64* %data_size, align 8, !dbg !3039, !tbaa !2967
  %cmp65 = icmp eq i64 %call59, %19, !dbg !3040
  br i1 %cmp65, label %if.end.73, label %if.then.67, !dbg !3041

if.else:                                          ; preds = %if.end.53
  %call60 = call i32 @fclose(%struct._IO_FILE* %call1) #1, !dbg !3042
  %20 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !3044, !tbaa !1251
  %call61 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), %struct._object* %archive) #1, !dbg !3045
  br label %cleanup, !dbg !3046

if.then.67:                                       ; preds = %if.then.58
  %21 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !3047, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0)) #1, !dbg !3048
  call void @llvm.dbg.value(metadata %struct._object* %call48, i64 0, metadata !805, metadata !1245), !dbg !3049
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call48, i64 0, i32 0, !dbg !3051
  %22 = load i64, i64* %ob_refcnt, align 8, !dbg !3051, !tbaa !1260
  %dec = add i64 %22, -1, !dbg !3051
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3051, !tbaa !1260
  %cmp68 = icmp eq i64 %dec, 0, !dbg !3051
  br i1 %cmp68, label %if.else.71, label %cleanup, !dbg !3053

if.else.71:                                       ; preds = %if.then.67
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call48, i64 0, i32 1, !dbg !3054
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3054, !tbaa !1298
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !3054
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3054, !tbaa !1299
  call void %24(%struct._object* %call48) #1, !dbg !3054
  br label %cleanup

if.end.73:                                        ; preds = %if.then.58
  call void @llvm.dbg.value(metadata i64* %compress, i64 0, metadata !797, metadata !1245), !dbg !2944
  %25 = load i64, i64* %compress, align 8, !dbg !3056, !tbaa !2967
  %cmp74 = icmp eq i64 %25, 0, !dbg !3058
  br i1 %cmp74, label %if.end.78, label %if.then.76, !dbg !3059

if.then.76:                                       ; preds = %if.end.73
  %arrayidx = getelementptr i8, i8* %call54, i64 %call59, !dbg !3060
  store i8 90, i8* %arrayidx, align 1, !dbg !3062, !tbaa !1225
  call void @llvm.dbg.value(metadata i64* %data_size, i64 0, metadata !798, metadata !1245), !dbg !2945
  %26 = load i64, i64* %data_size, align 8, !dbg !3063, !tbaa !2967
  %inc77 = add i64 %26, 1, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %inc77, i64 0, metadata !798, metadata !1245), !dbg !2945
  store i64 %inc77, i64* %data_size, align 8, !dbg !3063, !tbaa !2967
  br label %if.end.78, !dbg !3064

if.end.78:                                        ; preds = %if.end.73, %if.then.76
  %27 = phi i64 [ %call59, %if.end.73 ], [ %inc77, %if.then.76 ], !dbg !3065
  call void @llvm.dbg.value(metadata i64* %data_size, i64 0, metadata !798, metadata !1245), !dbg !2945
  %arrayidx79 = getelementptr i8, i8* %call54, i64 %27, !dbg !3066
  store i8 0, i8* %arrayidx79, align 1, !dbg !3067, !tbaa !1225
  call void @llvm.dbg.value(metadata i64* %compress, i64 0, metadata !797, metadata !1245), !dbg !2944
  %28 = load i64, i64* %compress, align 8, !dbg !3068, !tbaa !2967
  %cmp80 = icmp eq i64 %28, 0, !dbg !3069
  br i1 %cmp80, label %if.then.82, label %if.end.97, !dbg !3070

if.then.82:                                       ; preds = %if.end.78
  call void @llvm.dbg.value(metadata i64* %data_size, i64 0, metadata !798, metadata !1245), !dbg !2945
  %29 = load i64, i64* %data_size, align 8, !dbg !3071, !tbaa !2967
  %call83 = call %struct._object* @PyBytes_FromStringAndSize(i8* %call54, i64 %29) #1, !dbg !3072
  call void @llvm.dbg.value(metadata %struct._object* %call83, i64 0, metadata !789, metadata !1245), !dbg !2938
  call void @llvm.dbg.value(metadata %struct._object* %call48, i64 0, metadata !809, metadata !1245), !dbg !3073
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %call48, i64 0, i32 0, !dbg !3075
  %30 = load i64, i64* %ob_refcnt86, align 8, !dbg !3075, !tbaa !1260
  %dec87 = add i64 %30, -1, !dbg !3075
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !3075, !tbaa !1260
  %cmp88 = icmp eq i64 %dec87, 0, !dbg !3075
  br i1 %cmp88, label %if.else.91, label %cleanup, !dbg !3077

if.else.91:                                       ; preds = %if.then.82
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %call48, i64 0, i32 1, !dbg !3078
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !3078, !tbaa !1298
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !3078
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !3078, !tbaa !1299
  call void %32(%struct._object* %call48) #1, !dbg !3078
  br label %cleanup

if.end.97:                                        ; preds = %if.end.78
  %.b.i = load i1, i1* @get_decompress_func.importing_zlib, align 1, !dbg !3080
  br i1 %.b.i, label %if.then.101, label %if.end.i, !dbg !3081

if.end.i:                                         ; preds = %if.end.97
  store i1 true, i1* @get_decompress_func.importing_zlib, align 1, !dbg !3080
  %call.i = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0)) #1, !dbg !3083
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !819, metadata !1245) #1, !dbg !3084
  store i1 false, i1* @get_decompress_func.importing_zlib, align 1, !dbg !3080
  %cmp1.i = icmp ne %struct._object* %call.i, null, !dbg !3085
  br i1 %cmp1.i, label %if.then.2.i, label %if.else.7.i, !dbg !3086

if.then.2.i:                                      ; preds = %if.end.i
  %call3.i = call %struct._object* @_PyObject_GetAttrId(%struct._object* %call.i, %struct._Py_Identifier* nonnull @get_decompress_func.PyId_decompress) #1, !dbg !3087
  call void @llvm.dbg.value(metadata %struct._object* %call3.i, i64 0, metadata !820, metadata !1245) #1, !dbg !3088
  call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !821, metadata !1245) #1, !dbg !3089
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !3091
  %33 = load i64, i64* %ob_refcnt.i, align 8, !dbg !3091, !tbaa !1260
  %dec.i = add i64 %33, -1, !dbg !3091
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !3091, !tbaa !1260
  %cmp4.i = icmp eq i64 %dec.i, 0, !dbg !3091
  br i1 %cmp4.i, label %if.else.i, label %if.end.8.i, !dbg !3093

if.else.i:                                        ; preds = %if.then.2.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !3094
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !3094, !tbaa !1298
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i64 0, i32 4, !dbg !3094
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !3094, !tbaa !1299
  call void %35(%struct._object* %call.i) #1, !dbg !3094
  br label %if.end.8.i, !dbg !3080

if.else.7.i:                                      ; preds = %if.end.i
  call void @PyErr_Clear() #1, !dbg !3096
  call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !820, metadata !1245) #1, !dbg !3088
  br label %if.end.8.i, !dbg !3080

if.end.8.i:                                       ; preds = %if.else.7.i, %if.else.i, %if.then.2.i
  %decompress.0.i = phi %struct._object* [ null, %if.else.7.i ], [ %call3.i, %if.then.2.i ], [ %call3.i, %if.else.i ], !dbg !3080
  %36 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !3098, !tbaa !1231
  %tobool.i = icmp eq i32 %36, 0, !dbg !3098
  br i1 %tobool.i, label %get_decompress_func.exit, label %if.then.9.i, !dbg !3100

if.then.9.i:                                      ; preds = %if.end.8.i
  %cond.i = select i1 %cmp1.i, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i64 0, i64 0), !dbg !3101
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0), i8* %cond.i) #1, !dbg !3102
  br label %get_decompress_func.exit, !dbg !3102

get_decompress_func.exit:                         ; preds = %if.end.8.i, %if.then.9.i
  call void @llvm.dbg.value(metadata %struct._object* %decompress.0.i, i64 0, metadata !790, metadata !1245), !dbg !3103
  %cmp99 = icmp eq %struct._object* %decompress.0.i, null, !dbg !3104
  br i1 %cmp99, label %if.then.101, label %if.end.102, !dbg !3106

if.then.101:                                      ; preds = %if.end.97, %get_decompress_func.exit
  %37 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !3107, !tbaa !1251
  call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i64 0, i64 0)) #1, !dbg !3109
  br label %do.body.117, !dbg !3110

if.end.102:                                       ; preds = %get_decompress_func.exit
  %call103 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %decompress.0.i, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i64 0, i64 0), %struct._object* %call48, i32 -15) #1, !dbg !3111
  call void @llvm.dbg.value(metadata %struct._object* %call103, i64 0, metadata !789, metadata !1245), !dbg !2938
  call void @llvm.dbg.value(metadata %struct._object* %decompress.0.i, i64 0, metadata !813, metadata !1245), !dbg !3112
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %decompress.0.i, i64 0, i32 0, !dbg !3114
  %38 = load i64, i64* %ob_refcnt106, align 8, !dbg !3114, !tbaa !1260
  %dec107 = add i64 %38, -1, !dbg !3114
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !3114, !tbaa !1260
  %cmp108 = icmp eq i64 %dec107, 0, !dbg !3114
  br i1 %cmp108, label %if.else.111, label %do.body.117, !dbg !3116

if.else.111:                                      ; preds = %if.end.102
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %decompress.0.i, i64 0, i32 1, !dbg !3117
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8, !dbg !3117, !tbaa !1298
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i64 0, i32 4, !dbg !3117
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8, !dbg !3117, !tbaa !1299
  call void %40(%struct._object* %decompress.0.i) #1, !dbg !3117
  br label %do.body.117

do.body.117:                                      ; preds = %if.else.111, %if.end.102, %if.then.101
  %data.0 = phi %struct._object* [ null, %if.then.101 ], [ %call103, %if.end.102 ], [ %call103, %if.else.111 ]
  call void @llvm.dbg.value(metadata %struct._object* %call48, i64 0, metadata !815, metadata !1245), !dbg !3119
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %call48, i64 0, i32 0, !dbg !3121
  %41 = load i64, i64* %ob_refcnt119, align 8, !dbg !3121, !tbaa !1260
  %dec120 = add i64 %41, -1, !dbg !3121
  store i64 %dec120, i64* %ob_refcnt119, align 8, !dbg !3121, !tbaa !1260
  %cmp121 = icmp eq i64 %dec120, 0, !dbg !3121
  br i1 %cmp121, label %if.else.124, label %cleanup, !dbg !3123

if.else.124:                                      ; preds = %do.body.117
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %call48, i64 0, i32 1, !dbg !3124
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8, !dbg !3124, !tbaa !1298
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i64 0, i32 4, !dbg !3124
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8, !dbg !3124, !tbaa !1299
  call void %43(%struct._object* %call48) #1, !dbg !3124
  br label %cleanup

cleanup:                                          ; preds = %if.else.124, %do.body.117, %if.else.91, %if.then.82, %if.else.71, %if.then.67, %if.then.6, %if.then.3, %entry, %if.else, %if.then.51, %if.then.37, %if.then.27, %if.end.22, %if.then.11
  %retval.0 = phi %struct._object* [ null, %if.then.11 ], [ null, %if.end.22 ], [ null, %if.then.27 ], [ null, %if.then.37 ], [ null, %if.then.51 ], [ null, %if.else ], [ null, %entry ], [ null, %if.then.3 ], [ null, %if.then.6 ], [ null, %if.then.67 ], [ null, %if.else.71 ], [ %call83, %if.then.82 ], [ %call83, %if.else.91 ], [ %data.0, %do.body.117 ], [ %data.0, %if.else.124 ]
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !3126
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !3126
  call void @llvm.lifetime.end(i64 8, i8* %5) #1, !dbg !3126
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !3126
  call void @llvm.lifetime.end(i64 8, i8* %3) #1, !dbg !3126
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !3126
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !3126
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !3126
  ret %struct._object* %retval.0, !dbg !3126
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #3

; Function Attrs: nounwind
declare i32 @fseek(%struct._IO_FILE* nocapture, i64, i32) #4

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) #4

declare i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE*) #3

declare i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE*) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

; Function Attrs: nounwind
declare i64 @fread(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) #4

declare void @PyErr_SetString(%struct._object*, i8*) #3

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare void @PyErr_Clear() #3

declare void @PySys_WriteStderr(i8*, ...) #3

declare i64 @PyBytes_Size(%struct._object*) #3

declare i64 @PyImport_GetMagicNumber() #3

declare %struct._object* @PyMarshal_ReadObjectFromString(i8*, i64) #3

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #3

declare %struct._object* @Py_CompileStringExFlags(i8*, i8*, i32, %struct.PyCompilerFlags*, i32) #3

declare i64 @PyUnicode_Tailmatch(%struct._object*, %struct._object*, i64, i64, i32) #3

declare %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object*, %struct._object*) #3

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #3

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #3

declare i32 @_Py_stat(%struct._object*, %struct.stat*) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyUnicode_New(i64, i32) #3

; Function Attrs: nounwind
declare i64 @ftell(%struct._IO_FILE* nocapture) #4

; Function Attrs: nounwind
declare i32 @_IO_getc(%struct._IO_FILE* nocapture) #4

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #3

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1217, !1218}
!llvm.ident = !{!1219}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !30, subprograms: !507, globals: !1127)
!1 = !DIFile(filename: "./Modules/zipimport.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !9, !15, !22}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 329, size: 32, align: 32, elements: !4)
!4 = !{!5, !6, !7, !8}
!5 = !DIEnumerator(name: "FL_ERROR", value: 0)
!6 = !DIEnumerator(name: "FL_NOT_FOUND", value: 1)
!7 = !DIEnumerator(name: "FL_MODULE_FOUND", value: 2)
!8 = !DIEnumerator(name: "FL_NS_FOUND", value: 3)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zi_module_info", file: !1, line: 262, size: 32, align: 32, elements: !10)
!10 = !{!11, !12, !13, !14}
!11 = !DIEnumerator(name: "MI_ERROR", value: 0)
!12 = !DIEnumerator(name: "MI_NOT_FOUND", value: 1)
!13 = !DIEnumerator(name: "MI_MODULE", value: 2)
!14 = !DIEnumerator(name: "MI_PACKAGE", value: 3)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !16, line: 451, size: 32, align: 32, elements: !17)
!16 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!19 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!20 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!21 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !23, line: 23, size: 32, align: 32, elements: !24)
!23 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!26 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!27 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!28 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!29 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!30 = !{!31, !32, !377, !395, !71, !403, !406, !414, !79, !433, !44, !432, !434, !436, !438, !440, !448, !104, !38, !58, !449}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !34, line: 109, baseType: !35)
!34 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!35 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !34, line: 105, size: 128, align: 64, elements: !36)
!36 = !{!37, !45}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !35, file: !34, line: 107, baseType: !38, size: 64, align: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !39, line: 177, baseType: !40)
!39 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !41, line: 102, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !43, line: 181, baseType: !44)
!43 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!44 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !35, file: !34, line: 108, baseType: !46, size: 64, align: 64, offset: 64)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64, align: 64)
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !34, line: 334, size: 3200, align: 64, elements: !48)
!48 = !{!49, !55, !59, !60, !61, !66, !129, !134, !139, !140, !145, !197, !228, !240, !246, !247, !248, !250, !252, !283, !284, !285, !294, !295, !300, !301, !303, !305, !315, !325, !343, !344, !345, !347, !349, !350, !352, !357, !362, !367, !368, !369, !370, !371, !372, !373, !374, !376}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !47, file: !34, line: 335, baseType: !50, size: 192, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !34, line: 114, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 111, size: 192, align: 64, elements: !52)
!52 = !{!53, !54}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !51, file: !34, line: 112, baseType: !33, size: 128, align: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !51, file: !34, line: 113, baseType: !38, size: 64, align: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !47, file: !34, line: 336, baseType: !56, size: 64, align: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !47, file: !34, line: 337, baseType: !38, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !47, file: !34, line: 337, baseType: !38, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !47, file: !34, line: 341, baseType: !62, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !34, line: 308, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64, align: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !32}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !47, file: !34, line: 342, baseType: !67, size: 64, align: 64, offset: 448)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !34, line: 314, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !32, !72, !71}
!71 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64, align: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 48, baseType: !74)
!74 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !75, line: 246, size: 1728, align: 64, elements: !76)
!75 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!76 = !{!77, !78, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !98, !99, !100, !101, !103, !105, !107, !111, !114, !116, !117, !118, !119, !120, !124, !125}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !74, file: !75, line: 247, baseType: !71, size: 32, align: 32)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !74, file: !75, line: 252, baseType: !79, size: 64, align: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !74, file: !75, line: 253, baseType: !79, size: 64, align: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !74, file: !75, line: 254, baseType: !79, size: 64, align: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !74, file: !75, line: 255, baseType: !79, size: 64, align: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !74, file: !75, line: 256, baseType: !79, size: 64, align: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !74, file: !75, line: 257, baseType: !79, size: 64, align: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !74, file: !75, line: 258, baseType: !79, size: 64, align: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !74, file: !75, line: 259, baseType: !79, size: 64, align: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !74, file: !75, line: 261, baseType: !79, size: 64, align: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !74, file: !75, line: 262, baseType: !79, size: 64, align: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !74, file: !75, line: 263, baseType: !79, size: 64, align: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !74, file: !75, line: 265, baseType: !91, size: 64, align: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64, align: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !75, line: 161, size: 192, align: 64, elements: !93)
!93 = !{!94, !95, !97}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !92, file: !75, line: 162, baseType: !91, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !92, file: !75, line: 163, baseType: !96, size: 64, align: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !92, file: !75, line: 167, baseType: !71, size: 32, align: 32, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !74, file: !75, line: 267, baseType: !96, size: 64, align: 64, offset: 832)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !74, file: !75, line: 269, baseType: !71, size: 32, align: 32, offset: 896)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !74, file: !75, line: 273, baseType: !71, size: 32, align: 32, offset: 928)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !74, file: !75, line: 275, baseType: !102, size: 64, align: 64, offset: 960)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !43, line: 140, baseType: !44)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !74, file: !75, line: 279, baseType: !104, size: 16, align: 16, offset: 1024)
!104 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !74, file: !75, line: 280, baseType: !106, size: 8, align: 8, offset: 1040)
!106 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !74, file: !75, line: 281, baseType: !108, size: 8, align: 8, offset: 1048)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 8, align: 8, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 1)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !74, file: !75, line: 285, baseType: !112, size: 64, align: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64, align: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !75, line: 155, baseType: null)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !74, file: !75, line: 294, baseType: !115, size: 64, align: 64, offset: 1152)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !43, line: 141, baseType: !44)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !74, file: !75, line: 303, baseType: !31, size: 64, align: 64, offset: 1216)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !74, file: !75, line: 304, baseType: !31, size: 64, align: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !74, file: !75, line: 305, baseType: !31, size: 64, align: 64, offset: 1344)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !74, file: !75, line: 306, baseType: !31, size: 64, align: 64, offset: 1408)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !74, file: !75, line: 307, baseType: !121, size: 64, align: 64, offset: 1472)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !122, line: 62, baseType: !123)
!122 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!123 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !74, file: !75, line: 309, baseType: !71, size: 32, align: 32, offset: 1536)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !74, file: !75, line: 311, baseType: !126, size: 160, align: 8, offset: 1568)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 160, align: 8, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 20)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !47, file: !34, line: 343, baseType: !130, size: 64, align: 64, offset: 512)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !34, line: 316, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64, align: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!32, !32, !79}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !47, file: !34, line: 344, baseType: !135, size: 64, align: 64, offset: 576)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !34, line: 318, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64, align: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{!71, !32, !79, !32}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !47, file: !34, line: 345, baseType: !31, size: 64, align: 64, offset: 640)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !47, file: !34, line: 346, baseType: !141, size: 64, align: 64, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !34, line: 320, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64, align: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!32, !32}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !47, file: !34, line: 350, baseType: !146, size: 64, align: 64, offset: 768)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64, align: 64)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !34, line: 278, baseType: !148)
!148 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 236, size: 2176, align: 64, elements: !149)
!149 = !{!150, !155, !156, !157, !158, !159, !164, !166, !167, !168, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !148, file: !34, line: 241, baseType: !151, size: 64, align: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !34, line: 166, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64, align: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!32, !32, !32}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !148, file: !34, line: 242, baseType: !151, size: 64, align: 64, offset: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !148, file: !34, line: 243, baseType: !151, size: 64, align: 64, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !148, file: !34, line: 244, baseType: !151, size: 64, align: 64, offset: 192)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !148, file: !34, line: 245, baseType: !151, size: 64, align: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !148, file: !34, line: 246, baseType: !160, size: 64, align: 64, offset: 320)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !34, line: 167, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64, align: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{!32, !32, !32, !32}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !148, file: !34, line: 247, baseType: !165, size: 64, align: 64, offset: 384)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !34, line: 165, baseType: !142)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !148, file: !34, line: 248, baseType: !165, size: 64, align: 64, offset: 448)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !148, file: !34, line: 249, baseType: !165, size: 64, align: 64, offset: 512)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !148, file: !34, line: 250, baseType: !169, size: 64, align: 64, offset: 576)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !34, line: 168, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64, align: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!71, !32}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !148, file: !34, line: 251, baseType: !165, size: 64, align: 64, offset: 640)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !148, file: !34, line: 252, baseType: !151, size: 64, align: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !148, file: !34, line: 253, baseType: !151, size: 64, align: 64, offset: 768)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !148, file: !34, line: 254, baseType: !151, size: 64, align: 64, offset: 832)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !148, file: !34, line: 255, baseType: !151, size: 64, align: 64, offset: 896)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !148, file: !34, line: 256, baseType: !151, size: 64, align: 64, offset: 960)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !148, file: !34, line: 257, baseType: !165, size: 64, align: 64, offset: 1024)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !148, file: !34, line: 258, baseType: !31, size: 64, align: 64, offset: 1088)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !148, file: !34, line: 259, baseType: !165, size: 64, align: 64, offset: 1152)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !148, file: !34, line: 261, baseType: !151, size: 64, align: 64, offset: 1216)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !148, file: !34, line: 262, baseType: !151, size: 64, align: 64, offset: 1280)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !148, file: !34, line: 263, baseType: !151, size: 64, align: 64, offset: 1344)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !148, file: !34, line: 264, baseType: !151, size: 64, align: 64, offset: 1408)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !148, file: !34, line: 265, baseType: !160, size: 64, align: 64, offset: 1472)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !148, file: !34, line: 266, baseType: !151, size: 64, align: 64, offset: 1536)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !148, file: !34, line: 267, baseType: !151, size: 64, align: 64, offset: 1600)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !148, file: !34, line: 268, baseType: !151, size: 64, align: 64, offset: 1664)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !148, file: !34, line: 269, baseType: !151, size: 64, align: 64, offset: 1728)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !148, file: !34, line: 270, baseType: !151, size: 64, align: 64, offset: 1792)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !148, file: !34, line: 272, baseType: !151, size: 64, align: 64, offset: 1856)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !148, file: !34, line: 273, baseType: !151, size: 64, align: 64, offset: 1920)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !148, file: !34, line: 274, baseType: !151, size: 64, align: 64, offset: 1984)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !148, file: !34, line: 275, baseType: !151, size: 64, align: 64, offset: 2048)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !148, file: !34, line: 277, baseType: !165, size: 64, align: 64, offset: 2112)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !47, file: !34, line: 351, baseType: !198, size: 64, align: 64, offset: 832)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64, align: 64)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !34, line: 292, baseType: !200)
!200 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 280, size: 640, align: 64, elements: !201)
!201 = !{!202, !207, !208, !213, !214, !215, !220, !221, !226, !227}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !200, file: !34, line: 281, baseType: !203, size: 64, align: 64)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !34, line: 169, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!38, !32}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !200, file: !34, line: 282, baseType: !151, size: 64, align: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !200, file: !34, line: 283, baseType: !209, size: 64, align: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !34, line: 170, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!32, !32, !38}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !200, file: !34, line: 284, baseType: !209, size: 64, align: 64, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !200, file: !34, line: 285, baseType: !31, size: 64, align: 64, offset: 256)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !200, file: !34, line: 286, baseType: !216, size: 64, align: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !34, line: 172, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64, align: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{!71, !32, !38, !32}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !200, file: !34, line: 287, baseType: !31, size: 64, align: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !200, file: !34, line: 288, baseType: !222, size: 64, align: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !34, line: 231, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64, align: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!71, !32, !32}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !200, file: !34, line: 290, baseType: !151, size: 64, align: 64, offset: 512)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !200, file: !34, line: 291, baseType: !209, size: 64, align: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !47, file: !34, line: 352, baseType: !229, size: 64, align: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !34, line: 298, baseType: !231)
!231 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 294, size: 192, align: 64, elements: !232)
!232 = !{!233, !234, !235}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !231, file: !34, line: 295, baseType: !203, size: 64, align: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !231, file: !34, line: 296, baseType: !151, size: 64, align: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !231, file: !34, line: 297, baseType: !236, size: 64, align: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !34, line: 174, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!71, !32, !32, !32}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !47, file: !34, line: 356, baseType: !241, size: 64, align: 64, offset: 960)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !34, line: 321, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64, align: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!245, !32}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !39, line: 186, baseType: !38)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !47, file: !34, line: 357, baseType: !160, size: 64, align: 64, offset: 1024)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !47, file: !34, line: 358, baseType: !141, size: 64, align: 64, offset: 1088)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !47, file: !34, line: 359, baseType: !249, size: 64, align: 64, offset: 1152)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !34, line: 317, baseType: !152)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !47, file: !34, line: 360, baseType: !251, size: 64, align: 64, offset: 1216)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !34, line: 319, baseType: !237)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !47, file: !34, line: 363, baseType: !253, size: 64, align: 64, offset: 1280)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !34, line: 304, baseType: !255)
!255 = !DICompositeType(tag: DW_TAG_structure_type, file: !34, line: 301, size: 128, align: 64, elements: !256)
!256 = !{!257, !278}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !255, file: !34, line: 302, baseType: !258, size: 64, align: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !34, line: 193, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64, align: 64)
!260 = !DISubroutineType(types: !261)
!261 = !{!71, !32, !262, !71}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, align: 64)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !34, line: 191, baseType: !264)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !34, line: 178, size: 640, align: 64, elements: !265)
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !275, !276, !277}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !264, file: !34, line: 179, baseType: !31, size: 64, align: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !264, file: !34, line: 180, baseType: !32, size: 64, align: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !264, file: !34, line: 181, baseType: !38, size: 64, align: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !264, file: !34, line: 182, baseType: !38, size: 64, align: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !264, file: !34, line: 184, baseType: !71, size: 32, align: 32, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !264, file: !34, line: 185, baseType: !71, size: 32, align: 32, offset: 288)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !264, file: !34, line: 186, baseType: !79, size: 64, align: 64, offset: 320)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !264, file: !34, line: 187, baseType: !274, size: 64, align: 64, offset: 384)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64, align: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !264, file: !34, line: 188, baseType: !274, size: 64, align: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !264, file: !34, line: 189, baseType: !274, size: 64, align: 64, offset: 512)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !264, file: !34, line: 190, baseType: !31, size: 64, align: 64, offset: 576)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !255, file: !34, line: 303, baseType: !279, size: 64, align: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !34, line: 194, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64, align: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{null, !32, !262}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !47, file: !34, line: 366, baseType: !123, size: 64, align: 64, offset: 1344)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !47, file: !34, line: 368, baseType: !56, size: 64, align: 64, offset: 1408)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !47, file: !34, line: 372, baseType: !286, size: 64, align: 64, offset: 1472)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !34, line: 233, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64, align: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!71, !32, !290, !31}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !34, line: 232, baseType: !291)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64, align: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!71, !32, !31}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !47, file: !34, line: 375, baseType: !169, size: 64, align: 64, offset: 1536)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !47, file: !34, line: 379, baseType: !296, size: 64, align: 64, offset: 1600)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !34, line: 322, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, align: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!32, !32, !32, !71}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !47, file: !34, line: 382, baseType: !38, size: 64, align: 64, offset: 1664)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !47, file: !34, line: 385, baseType: !302, size: 64, align: 64, offset: 1728)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !34, line: 323, baseType: !142)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !47, file: !34, line: 386, baseType: !304, size: 64, align: 64, offset: 1792)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !34, line: 324, baseType: !142)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !47, file: !34, line: 389, baseType: !306, size: 64, align: 64, offset: 1856)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64, align: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !308, line: 40, size: 256, align: 64, elements: !309)
!308 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!309 = !{!310, !311, !313, !314}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !307, file: !308, line: 41, baseType: !56, size: 64, align: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !307, file: !308, line: 42, baseType: !312, size: 64, align: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !308, line: 18, baseType: !152)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !307, file: !308, line: 43, baseType: !71, size: 32, align: 32, offset: 128)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !307, file: !308, line: 45, baseType: !56, size: 64, align: 64, offset: 192)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !47, file: !34, line: 390, baseType: !316, size: 64, align: 64, offset: 1920)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !318, line: 18, size: 320, align: 64, elements: !319)
!318 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!319 = !{!320, !321, !322, !323, !324}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !317, file: !318, line: 19, baseType: !79, size: 64, align: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !317, file: !318, line: 20, baseType: !71, size: 32, align: 32, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !317, file: !318, line: 21, baseType: !38, size: 64, align: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !317, file: !318, line: 22, baseType: !71, size: 32, align: 32, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !317, file: !318, line: 23, baseType: !79, size: 64, align: 64, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !47, file: !34, line: 391, baseType: !326, size: 64, align: 64, offset: 1984)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64, align: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !328, line: 11, size: 320, align: 64, elements: !329)
!328 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!329 = !{!330, !331, !336, !341, !342}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !328, line: 12, baseType: !79, size: 64, align: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !327, file: !328, line: 13, baseType: !332, size: 64, align: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !328, line: 8, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64, align: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!32, !32, !31}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !327, file: !328, line: 14, baseType: !337, size: 64, align: 64, offset: 128)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !328, line: 9, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64, align: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!71, !32, !32, !31}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !327, file: !328, line: 15, baseType: !79, size: 64, align: 64, offset: 192)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !327, file: !328, line: 16, baseType: !31, size: 64, align: 64, offset: 256)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !47, file: !34, line: 392, baseType: !46, size: 64, align: 64, offset: 2048)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !47, file: !34, line: 393, baseType: !32, size: 64, align: 64, offset: 2112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !47, file: !34, line: 394, baseType: !346, size: 64, align: 64, offset: 2176)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !34, line: 325, baseType: !161)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !47, file: !34, line: 395, baseType: !348, size: 64, align: 64, offset: 2240)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !34, line: 326, baseType: !237)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !47, file: !34, line: 396, baseType: !38, size: 64, align: 64, offset: 2304)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !47, file: !34, line: 397, baseType: !351, size: 64, align: 64, offset: 2368)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !34, line: 327, baseType: !237)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !47, file: !34, line: 398, baseType: !353, size: 64, align: 64, offset: 2432)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !34, line: 329, baseType: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64, align: 64)
!355 = !DISubroutineType(types: !356)
!356 = !{!32, !46, !38}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !47, file: !34, line: 399, baseType: !358, size: 64, align: 64, offset: 2496)
!358 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !34, line: 328, baseType: !359)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64, align: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!32, !46, !32, !32}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !47, file: !34, line: 400, baseType: !363, size: 64, align: 64, offset: 2560)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !34, line: 307, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DISubroutineType(types: !366)
!366 = !{null, !31}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !47, file: !34, line: 401, baseType: !169, size: 64, align: 64, offset: 2624)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !47, file: !34, line: 402, baseType: !32, size: 64, align: 64, offset: 2688)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !47, file: !34, line: 403, baseType: !32, size: 64, align: 64, offset: 2752)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !47, file: !34, line: 404, baseType: !32, size: 64, align: 64, offset: 2816)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !47, file: !34, line: 405, baseType: !32, size: 64, align: 64, offset: 2880)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !47, file: !34, line: 406, baseType: !32, size: 64, align: 64, offset: 2944)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !47, file: !34, line: 407, baseType: !62, size: 64, align: 64, offset: 3008)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !47, file: !34, line: 410, baseType: !375, size: 32, align: 32, offset: 3072)
!375 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !47, file: !34, line: 412, baseType: !62, size: 64, align: 64, offset: 3136)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64, align: 64)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !16, line: 351, baseType: !379)
!379 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 217, size: 384, align: 64, elements: !380)
!380 = !{!381, !382, !383, !384, !392}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !379, file: !16, line: 291, baseType: !33, size: 128, align: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !379, file: !16, line: 292, baseType: !38, size: 64, align: 64, offset: 128)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !379, file: !16, line: 293, baseType: !245, size: 64, align: 64, offset: 192)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !379, file: !16, line: 349, baseType: !385, size: 32, align: 32, offset: 256)
!385 = !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !16, line: 294, size: 32, align: 32, elements: !386)
!386 = !{!387, !388, !389, !390, !391}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !385, file: !16, line: 303, baseType: !375, size: 2, align: 32)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !385, file: !16, line: 331, baseType: !375, size: 3, align: 32, offset: 2)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !385, file: !16, line: 336, baseType: !375, size: 1, align: 32, offset: 5)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !385, file: !16, line: 340, baseType: !375, size: 1, align: 32, offset: 6)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !385, file: !16, line: 345, baseType: !375, size: 1, align: 32, offset: 7)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !379, file: !16, line: 350, baseType: !393, size: 64, align: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64, align: 64)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !122, line: 90, baseType: !71)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZipImporter", file: !1, line: 38, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_structure_type, name: "_zipimporter", file: !1, line: 40, size: 320, align: 64, elements: !398)
!398 = !{!399, !400, !401, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !397, file: !1, line: 41, baseType: !33, size: 128, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "archive", scope: !397, file: !1, line: 42, baseType: !32, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !397, file: !1, line: 44, baseType: !32, size: 64, align: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !397, file: !1, line: 46, baseType: !32, size: 64, align: 64, offset: 256)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !404, line: 75, baseType: !405)
!404 = !DIFile(filename: "/usr/include/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !43, line: 148, baseType: !44)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !16, line: 363, baseType: !408)
!408 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 356, size: 576, align: 64, elements: !409)
!409 = !{!410, !411, !412, !413}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !408, file: !16, line: 357, baseType: !378, size: 384, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !408, file: !16, line: 358, baseType: !38, size: 64, align: 64, offset: 384)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !408, file: !16, line: 360, baseType: !79, size: 64, align: 64, offset: 448)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !408, file: !16, line: 361, baseType: !38, size: 64, align: 64, offset: 512)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !16, line: 376, baseType: !416)
!416 = !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 368, size: 640, align: 64, elements: !417)
!417 = !{!418, !419}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !416, file: !16, line: 369, baseType: !407, size: 576, align: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !416, file: !16, line: 375, baseType: !420, size: 64, align: 64, offset: 576)
!420 = !DICompositeType(tag: DW_TAG_union_type, scope: !416, file: !16, line: 370, size: 64, align: 64, elements: !421)
!421 = !{!422, !423, !427, !430}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !420, file: !16, line: 371, baseType: !31, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !420, file: !16, line: 372, baseType: !424, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !16, line: 134, baseType: !426)
!426 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !420, file: !16, line: 373, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !16, line: 129, baseType: !104)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !420, file: !16, line: 374, baseType: !431, size: 64, align: 64)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !16, line: 121, baseType: !375)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64, align: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64, align: 64)
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !442, line: 41, baseType: !443)
!442 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!443 = !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 31, size: 320, align: 64, elements: !444)
!444 = !{!445, !446, !447}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !443, file: !442, line: 32, baseType: !50, size: 192, align: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !443, file: !442, line: 33, baseType: !245, size: 64, align: 64, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !443, file: !442, line: 34, baseType: !108, size: 8, align: 8, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !451, line: 139, baseType: !452)
!451 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !451, line: 69, size: 1536, align: 64, elements: !453)
!453 = !{!454, !456, !457, !477, !480, !481, !482, !483, !484, !485, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !452, file: !451, line: 72, baseType: !455, size: 64, align: 64)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !452, file: !451, line: 73, baseType: !455, size: 64, align: 64, offset: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !452, file: !451, line: 74, baseType: !458, size: 64, align: 64, offset: 128)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64, align: 64)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !451, line: 44, baseType: !460)
!460 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !451, line: 19, size: 832, align: 64, elements: !461)
!461 = !{!462, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !460, file: !451, line: 21, baseType: !463, size: 64, align: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !460, file: !451, line: 22, baseType: !455, size: 64, align: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !460, file: !451, line: 24, baseType: !32, size: 64, align: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !460, file: !451, line: 25, baseType: !32, size: 64, align: 64, offset: 192)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !460, file: !451, line: 26, baseType: !32, size: 64, align: 64, offset: 256)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !460, file: !451, line: 27, baseType: !32, size: 64, align: 64, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !460, file: !451, line: 28, baseType: !32, size: 64, align: 64, offset: 384)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !460, file: !451, line: 30, baseType: !32, size: 64, align: 64, offset: 448)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !460, file: !451, line: 31, baseType: !32, size: 64, align: 64, offset: 512)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !460, file: !451, line: 32, baseType: !32, size: 64, align: 64, offset: 576)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !460, file: !451, line: 33, baseType: !71, size: 32, align: 32, offset: 640)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !460, file: !451, line: 34, baseType: !71, size: 32, align: 32, offset: 672)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !460, file: !451, line: 37, baseType: !71, size: 32, align: 32, offset: 704)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !460, file: !451, line: 43, baseType: !32, size: 64, align: 64, offset: 768)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !452, file: !451, line: 76, baseType: !478, size: 64, align: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64, align: 64)
!479 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !451, line: 50, flags: DIFlagFwdDecl)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !452, file: !451, line: 77, baseType: !71, size: 32, align: 32, offset: 256)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !452, file: !451, line: 78, baseType: !58, size: 8, align: 8, offset: 288)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !452, file: !451, line: 80, baseType: !58, size: 8, align: 8, offset: 296)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !452, file: !451, line: 85, baseType: !71, size: 32, align: 32, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !452, file: !451, line: 86, baseType: !71, size: 32, align: 32, offset: 352)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !452, file: !451, line: 88, baseType: !486, size: 64, align: 64, offset: 384)
!486 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !451, line: 54, baseType: !487)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64, align: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!71, !32, !478, !71, !32}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !452, file: !451, line: 89, baseType: !486, size: 64, align: 64, offset: 448)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !452, file: !451, line: 90, baseType: !32, size: 64, align: 64, offset: 512)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !452, file: !451, line: 91, baseType: !32, size: 64, align: 64, offset: 576)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !452, file: !451, line: 93, baseType: !32, size: 64, align: 64, offset: 640)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !452, file: !451, line: 94, baseType: !32, size: 64, align: 64, offset: 704)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !452, file: !451, line: 95, baseType: !32, size: 64, align: 64, offset: 768)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !452, file: !451, line: 97, baseType: !32, size: 64, align: 64, offset: 832)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !452, file: !451, line: 98, baseType: !32, size: 64, align: 64, offset: 896)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !452, file: !451, line: 99, baseType: !32, size: 64, align: 64, offset: 960)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !452, file: !451, line: 101, baseType: !32, size: 64, align: 64, offset: 1024)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !452, file: !451, line: 103, baseType: !71, size: 32, align: 32, offset: 1088)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !452, file: !451, line: 105, baseType: !32, size: 64, align: 64, offset: 1152)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !452, file: !451, line: 106, baseType: !44, size: 64, align: 64, offset: 1216)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !452, file: !451, line: 108, baseType: !71, size: 32, align: 32, offset: 1280)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !452, file: !451, line: 109, baseType: !32, size: 64, align: 64, offset: 1344)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !452, file: !451, line: 134, baseType: !364, size: 64, align: 64, offset: 1408)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !452, file: !451, line: 135, baseType: !31, size: 64, align: 64, offset: 1472)
!507 = !{!508, !523, !543, !548, !558, !570, !583, !612, !617, !625, !636, !648, !687, !735, !750, !770, !784, !817, !825, !839, !845, !852, !867, !875, !896, !902, !925, !936, !943, !1023, !1110, !1119, !1124}
!508 = !DISubprogram(name: "PyInit_zipimport", scope: !1, file: !1, line: 1471, type: !509, isLocal: false, isDefinition: true, scopeLine: 1472, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_zipimport, variables: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!32}
!511 = !{!512, !513}
!512 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !508, file: !1, line: 1473, type: !32)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !514, file: !1, line: 1484, type: !516)
!514 = distinct !DILexicalBlock(scope: !515, file: !1, line: 1482, column: 26)
!515 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1482, column: 9)
!516 = !DICompositeType(tag: DW_TAG_structure_type, name: "st_zip_searchorder", file: !1, line: 12, size: 160, align: 32, elements: !517)
!517 = !{!518, !522}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !516, file: !1, line: 13, baseType: !519, size: 112, align: 8)
!519 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 112, align: 8, elements: !520)
!520 = !{!521}
!521 = !DISubrange(count: 14)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !516, file: !1, line: 14, baseType: !71, size: 32, align: 32, offset: 128)
!523 = !DISubprogram(name: "zipimporter_dealloc", scope: !1, file: !1, line: 185, type: !524, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._zipimporter*)* @zipimporter_dealloc, variables: !526)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !395}
!526 = !{!527, !528, !530, !533, !535, !538, !540}
!527 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !523, file: !1, line: 185, type: !395)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !529, file: !1, line: 188, type: !32)
!529 = distinct !DILexicalBlock(scope: !523, file: !1, line: 188, column: 5)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !531, file: !1, line: 188, type: !32)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 188, column: 5)
!532 = distinct !DILexicalBlock(scope: !529, file: !1, line: 188, column: 5)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !534, file: !1, line: 189, type: !32)
!534 = distinct !DILexicalBlock(scope: !523, file: !1, line: 189, column: 5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !1, line: 189, type: !32)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 189, column: 5)
!537 = distinct !DILexicalBlock(scope: !534, file: !1, line: 189, column: 5)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !539, file: !1, line: 190, type: !32)
!539 = distinct !DILexicalBlock(scope: !523, file: !1, line: 190, column: 5)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !541, file: !1, line: 190, type: !32)
!541 = distinct !DILexicalBlock(scope: !542, file: !1, line: 190, column: 5)
!542 = distinct !DILexicalBlock(scope: !539, file: !1, line: 190, column: 5)
!543 = !DISubprogram(name: "zipimporter_repr", scope: !1, file: !1, line: 195, type: !544, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._zipimporter*)* @zipimporter_repr, variables: !546)
!544 = !DISubroutineType(types: !545)
!545 = !{!32, !395}
!546 = !{!547}
!547 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !543, file: !1, line: 195, type: !395)
!548 = !DISubprogram(name: "zipimporter_traverse", scope: !1, file: !1, line: 177, type: !288, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @zipimporter_traverse, variables: !549)
!549 = !{!550, !551, !552, !553, !554}
!550 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !548, file: !1, line: 177, type: !32)
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !548, file: !1, line: 177, type: !290)
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !548, file: !1, line: 177, type: !31)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !548, file: !1, line: 179, type: !395)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !555, file: !1, line: 180, type: !71)
!555 = distinct !DILexicalBlock(scope: !556, file: !1, line: 180, column: 5)
!556 = distinct !DILexicalBlock(scope: !557, file: !1, line: 180, column: 5)
!557 = distinct !DILexicalBlock(scope: !548, file: !1, line: 180, column: 5)
!558 = !DISubprogram(name: "zipimporter_find_module", scope: !1, file: !1, line: 379, type: !153, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_find_module, variables: !559)
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !558, file: !1, line: 379, type: !32)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !558, file: !1, line: 379, type: !32)
!562 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !558, file: !1, line: 381, type: !395)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !558, file: !1, line: 382, type: !32)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !558, file: !1, line: 383, type: !32)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namespace_portion", scope: !558, file: !1, line: 384, type: !32)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !558, file: !1, line: 385, type: !32)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !568, file: !1, line: 395, type: !32)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 395, column: 9)
!569 = distinct !DILexicalBlock(scope: !558, file: !1, line: 390, column: 62)
!570 = !DISubprogram(name: "find_loader", scope: !1, file: !1, line: 343, type: !571, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._zipimporter*, %struct._object*, %struct._object**)* @find_loader, variables: !575)
!571 = !DISubroutineType(types: !572)
!572 = !{!573, !395, !32, !574}
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "find_loader_result", file: !1, line: 334, baseType: !3)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64, align: 64)
!575 = !{!576, !577, !578, !579, !580}
!576 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !570, file: !1, line: 343, type: !395)
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !570, file: !1, line: 343, type: !32)
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "namespace_portion", arg: 3, scope: !570, file: !1, line: 343, type: !574)
!579 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mi", scope: !570, file: !1, line: 345, type: !9)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_dir", scope: !581, file: !1, line: 355, type: !71)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 352, column: 29)
!582 = distinct !DILexicalBlock(scope: !570, file: !1, line: 352, column: 9)
!583 = !DISubprogram(name: "get_module_info", scope: !1, file: !1, line: 294, type: !584, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._zipimporter*, %struct._object*)* @get_module_info, variables: !586)
!584 = !DISubroutineType(types: !585)
!585 = !{!9, !395, !32}
!586 = !{!587, !588, !589, !590, !591, !592, !593, !595, !597, !604, !606, !610}
!587 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !583, file: !1, line: 294, type: !395)
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !583, file: !1, line: 294, type: !32)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !583, file: !1, line: 296, type: !32)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !583, file: !1, line: 297, type: !32)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !583, file: !1, line: 297, type: !32)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !583, file: !1, line: 297, type: !32)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zso", scope: !583, file: !1, line: 298, type: !594)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64, align: 64)
!595 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !596, file: !1, line: 305, type: !32)
!596 = distinct !DILexicalBlock(scope: !583, file: !1, line: 305, column: 5)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !598, file: !1, line: 312, type: !32)
!598 = distinct !DILexicalBlock(scope: !599, file: !1, line: 312, column: 13)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 311, column: 31)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 311, column: 13)
!601 = distinct !DILexicalBlock(scope: !602, file: !1, line: 309, column: 54)
!602 = distinct !DILexicalBlock(scope: !603, file: !1, line: 309, column: 5)
!603 = distinct !DILexicalBlock(scope: !583, file: !1, line: 309, column: 5)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !605, file: !1, line: 316, type: !32)
!605 = distinct !DILexicalBlock(scope: !601, file: !1, line: 316, column: 9)
!606 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !607, file: !1, line: 318, type: !32)
!607 = distinct !DILexicalBlock(scope: !608, file: !1, line: 318, column: 13)
!608 = distinct !DILexicalBlock(scope: !609, file: !1, line: 317, column: 27)
!609 = distinct !DILexicalBlock(scope: !601, file: !1, line: 317, column: 13)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !611, file: !1, line: 325, type: !32)
!611 = distinct !DILexicalBlock(scope: !583, file: !1, line: 325, column: 5)
!612 = !DISubprogram(name: "get_subname", scope: !1, file: !1, line: 209, type: !143, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, variables: !613)
!613 = !{!614, !615, !616}
!614 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 1, scope: !612, file: !1, line: 209, type: !32)
!615 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !612, file: !1, line: 211, type: !38)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !612, file: !1, line: 211, type: !38)
!617 = !DISubprogram(name: "make_filename", scope: !1, file: !1, line: 229, type: !153, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @make_filename, variables: !618)
!618 = !{!619, !620, !621, !622, !623, !624}
!619 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prefix", arg: 1, scope: !617, file: !1, line: 229, type: !32)
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !617, file: !1, line: 229, type: !32)
!621 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathobj", scope: !617, file: !1, line: 231, type: !32)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !617, file: !1, line: 232, type: !431)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !617, file: !1, line: 232, type: !431)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !617, file: !1, line: 233, type: !38)
!625 = !DISubprogram(name: "check_is_directory", scope: !1, file: !1, line: 275, type: !626, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, variables: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{!71, !395, !32, !32}
!628 = !{!629, !630, !631, !632, !633, !634}
!629 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !625, file: !1, line: 275, type: !395)
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prefix", arg: 2, scope: !625, file: !1, line: 275, type: !32)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 3, scope: !625, file: !1, line: 275, type: !32)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dirpath", scope: !625, file: !1, line: 277, type: !32)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !625, file: !1, line: 278, type: !71)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !635, file: !1, line: 288, type: !32)
!635 = distinct !DILexicalBlock(scope: !625, file: !1, line: 288, column: 5)
!636 = !DISubprogram(name: "zipimporter_find_loader", scope: !1, file: !1, line: 415, type: !153, isLocal: true, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_find_loader, variables: !637)
!637 = !{!638, !639, !640, !641, !642, !643, !644, !645}
!638 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !636, file: !1, line: 415, type: !32)
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !636, file: !1, line: 415, type: !32)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !636, file: !1, line: 417, type: !395)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !636, file: !1, line: 418, type: !32)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !636, file: !1, line: 419, type: !32)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !636, file: !1, line: 420, type: !32)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namespace_portion", scope: !636, file: !1, line: 421, type: !32)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !646, file: !1, line: 437, type: !32)
!646 = distinct !DILexicalBlock(scope: !647, file: !1, line: 437, column: 9)
!647 = distinct !DILexicalBlock(scope: !636, file: !1, line: 426, column: 62)
!648 = !DISubprogram(name: "zipimporter_load_module", scope: !1, file: !1, line: 445, type: !153, isLocal: true, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_load_module, variables: !649)
!649 = !{!650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !662, !663, !664, !665, !667, !669, !671, !675, !677, !679, !682, !684}
!650 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !648, file: !1, line: 445, type: !32)
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !648, file: !1, line: 445, type: !32)
!652 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !648, file: !1, line: 447, type: !395)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !648, file: !1, line: 448, type: !32)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !648, file: !1, line: 448, type: !32)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !648, file: !1, line: 448, type: !32)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !648, file: !1, line: 449, type: !32)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modpath", scope: !648, file: !1, line: 450, type: !32)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispackage", scope: !648, file: !1, line: 451, type: !71)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pkgpath", scope: !660, file: !1, line: 475, type: !32)
!660 = distinct !DILexicalBlock(scope: !661, file: !1, line: 472, column: 20)
!661 = distinct !DILexicalBlock(scope: !648, file: !1, line: 472, column: 9)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !660, file: !1, line: 475, type: !32)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !660, file: !1, line: 475, type: !32)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !660, file: !1, line: 476, type: !71)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !666, file: !1, line: 485, type: !32)
!666 = distinct !DILexicalBlock(scope: !660, file: !1, line: 485, column: 9)
!667 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !668, file: !1, line: 493, type: !32)
!668 = distinct !DILexicalBlock(scope: !660, file: !1, line: 493, column: 9)
!669 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !670, file: !1, line: 498, type: !32)
!670 = distinct !DILexicalBlock(scope: !648, file: !1, line: 498, column: 5)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !672, file: !1, line: 498, type: !32)
!672 = distinct !DILexicalBlock(scope: !673, file: !1, line: 498, column: 5)
!673 = distinct !DILexicalBlock(scope: !674, file: !1, line: 498, column: 5)
!674 = distinct !DILexicalBlock(scope: !670, file: !1, line: 498, column: 5)
!675 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !676, file: !1, line: 505, type: !32)
!676 = distinct !DILexicalBlock(scope: !648, file: !1, line: 505, column: 5)
!677 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !678, file: !1, line: 508, type: !32)
!678 = distinct !DILexicalBlock(scope: !648, file: !1, line: 508, column: 5)
!679 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !680, file: !1, line: 508, type: !32)
!680 = distinct !DILexicalBlock(scope: !681, file: !1, line: 508, column: 5)
!681 = distinct !DILexicalBlock(scope: !678, file: !1, line: 508, column: 5)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !683, file: !1, line: 509, type: !32)
!683 = distinct !DILexicalBlock(scope: !648, file: !1, line: 509, column: 5)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !685, file: !1, line: 509, type: !32)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 509, column: 5)
!686 = distinct !DILexicalBlock(scope: !683, file: !1, line: 509, column: 5)
!687 = !DISubprogram(name: "get_module_code", scope: !1, file: !1, line: 1375, type: !688, isLocal: true, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._zipimporter*, %struct._object*, i32*, %struct._object**)* @get_module_code, variables: !691)
!688 = !DISubroutineType(types: !689)
!689 = !{!32, !395, !32, !690, !574}
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64, align: 64)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !704, !710, !711, !712, !714, !718, !722, !724, !728, !730, !732}
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !687, file: !1, line: 1375, type: !395)
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !687, file: !1, line: 1375, type: !32)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_ispackage", arg: 3, scope: !687, file: !1, line: 1376, type: !690)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_modpath", arg: 4, scope: !687, file: !1, line: 1376, type: !574)
!696 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !687, file: !1, line: 1378, type: !32)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !687, file: !1, line: 1378, type: !32)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !687, file: !1, line: 1378, type: !32)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !687, file: !1, line: 1379, type: !32)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !687, file: !1, line: 1379, type: !32)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zso", scope: !687, file: !1, line: 1380, type: !594)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !703, file: !1, line: 1387, type: !32)
!703 = distinct !DILexicalBlock(scope: !687, file: !1, line: 1387, column: 5)
!704 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtime", scope: !705, file: !1, line: 1403, type: !403)
!705 = distinct !DILexicalBlock(scope: !706, file: !1, line: 1402, column: 32)
!706 = distinct !DILexicalBlock(scope: !707, file: !1, line: 1402, column: 13)
!707 = distinct !DILexicalBlock(scope: !708, file: !1, line: 1391, column: 54)
!708 = distinct !DILexicalBlock(scope: !709, file: !1, line: 1391, column: 5)
!709 = distinct !DILexicalBlock(scope: !687, file: !1, line: 1391, column: 5)
!710 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispackage", scope: !705, file: !1, line: 1404, type: !71)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isbytecode", scope: !705, file: !1, line: 1405, type: !71)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !713, file: !1, line: 1413, type: !32)
!713 = distinct !DILexicalBlock(scope: !705, file: !1, line: 1413, column: 13)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !715, file: !1, line: 1413, type: !32)
!715 = distinct !DILexicalBlock(scope: !716, file: !1, line: 1413, column: 13)
!716 = distinct !DILexicalBlock(scope: !717, file: !1, line: 1413, column: 13)
!717 = distinct !DILexicalBlock(scope: !713, file: !1, line: 1413, column: 13)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !719, file: !1, line: 1422, type: !32)
!719 = distinct !DILexicalBlock(scope: !720, file: !1, line: 1422, column: 17)
!720 = distinct !DILexicalBlock(scope: !721, file: !1, line: 1419, column: 34)
!721 = distinct !DILexicalBlock(scope: !705, file: !1, line: 1419, column: 17)
!722 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !723, file: !1, line: 1432, type: !32)
!723 = distinct !DILexicalBlock(scope: !706, file: !1, line: 1432, column: 13)
!724 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !725, file: !1, line: 1432, type: !32)
!725 = distinct !DILexicalBlock(scope: !726, file: !1, line: 1432, column: 13)
!726 = distinct !DILexicalBlock(scope: !727, file: !1, line: 1432, column: 13)
!727 = distinct !DILexicalBlock(scope: !723, file: !1, line: 1432, column: 13)
!728 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !729, file: !1, line: 1436, type: !32)
!729 = distinct !DILexicalBlock(scope: !687, file: !1, line: 1436, column: 5)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !731, file: !1, line: 1437, type: !32)
!731 = distinct !DILexicalBlock(scope: !687, file: !1, line: 1437, column: 5)
!732 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !733, file: !1, line: 1437, type: !32)
!733 = distinct !DILexicalBlock(scope: !734, file: !1, line: 1437, column: 5)
!734 = distinct !DILexicalBlock(scope: !731, file: !1, line: 1437, column: 5)
!735 = !DISubprogram(name: "get_mtime_of_source", scope: !1, file: !1, line: 1322, type: !736, isLocal: true, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: true, variables: !738)
!736 = !DISubroutineType(types: !737)
!737 = !{!403, !395, !32}
!738 = !{!739, !740, !741, !742, !743, !744, !746, !749}
!739 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !735, file: !1, line: 1322, type: !395)
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 2, scope: !735, file: !1, line: 1322, type: !32)
!741 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !735, file: !1, line: 1324, type: !32)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stripped", scope: !735, file: !1, line: 1324, type: !32)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtime", scope: !735, file: !1, line: 1325, type: !403)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !745, file: !1, line: 1337, type: !32)
!745 = distinct !DILexicalBlock(scope: !735, file: !1, line: 1337, column: 5)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !747, file: !1, line: 1342, type: !71)
!747 = distinct !DILexicalBlock(scope: !748, file: !1, line: 1339, column: 39)
!748 = distinct !DILexicalBlock(scope: !735, file: !1, line: 1338, column: 9)
!749 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "date", scope: !747, file: !1, line: 1342, type: !71)
!750 = !DISubprogram(name: "parse_dostime", scope: !1, file: !1, line: 1301, type: !751, isLocal: true, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, variables: !753)
!751 = !DISubroutineType(types: !752)
!752 = !{!403, !71, !71}
!753 = !{!754, !755, !756}
!754 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dostime", arg: 1, scope: !750, file: !1, line: 1301, type: !71)
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dosdate", arg: 2, scope: !750, file: !1, line: 1301, type: !71)
!756 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stm", scope: !750, file: !1, line: 1303, type: !757)
!757 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !404, line: 133, size: 448, align: 64, elements: !758)
!758 = !{!759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !769}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !757, file: !404, line: 135, baseType: !71, size: 32, align: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !757, file: !404, line: 136, baseType: !71, size: 32, align: 32, offset: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !757, file: !404, line: 137, baseType: !71, size: 32, align: 32, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !757, file: !404, line: 138, baseType: !71, size: 32, align: 32, offset: 96)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !757, file: !404, line: 139, baseType: !71, size: 32, align: 32, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !757, file: !404, line: 140, baseType: !71, size: 32, align: 32, offset: 160)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !757, file: !404, line: 141, baseType: !71, size: 32, align: 32, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !757, file: !404, line: 142, baseType: !71, size: 32, align: 32, offset: 224)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !757, file: !404, line: 143, baseType: !71, size: 32, align: 32, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !757, file: !404, line: 146, baseType: !44, size: 64, align: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !757, file: !404, line: 147, baseType: !56, size: 64, align: 64, offset: 384)
!770 = !DISubprogram(name: "get_code_from_data", scope: !1, file: !1, line: 1354, type: !771, isLocal: true, isDefinition: true, scopeLine: 1356, flags: DIFlagPrototyped, isOptimized: true, variables: !773)
!771 = !DISubroutineType(types: !772)
!772 = !{!32, !395, !71, !71, !403, !32}
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782}
!774 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !770, file: !1, line: 1354, type: !395)
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ispackage", arg: 2, scope: !770, file: !1, line: 1354, type: !71)
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isbytecode", arg: 3, scope: !770, file: !1, line: 1354, type: !71)
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtime", arg: 4, scope: !770, file: !1, line: 1355, type: !403)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "toc_entry", arg: 5, scope: !770, file: !1, line: 1355, type: !32)
!779 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !770, file: !1, line: 1357, type: !32)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modpath", scope: !770, file: !1, line: 1357, type: !32)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !770, file: !1, line: 1357, type: !32)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !783, file: !1, line: 1368, type: !32)
!783 = distinct !DILexicalBlock(scope: !770, file: !1, line: 1368, column: 5)
!784 = !DISubprogram(name: "get_data", scope: !1, file: !1, line: 1057, type: !153, isLocal: true, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_data, variables: !785)
!785 = !{!786, !787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !809, !813, !815}
!786 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "archive", arg: 1, scope: !784, file: !1, line: 1057, type: !32)
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "toc_entry", arg: 2, scope: !784, file: !1, line: 1057, type: !32)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "raw_data", scope: !784, file: !1, line: 1059, type: !32)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !784, file: !1, line: 1059, type: !32)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decompress", scope: !784, file: !1, line: 1059, type: !32)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !784, file: !1, line: 1060, type: !79)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !784, file: !1, line: 1061, type: !72)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !784, file: !1, line: 1062, type: !71)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_read", scope: !784, file: !1, line: 1063, type: !38)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !784, file: !1, line: 1064, type: !44)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "datapath", scope: !784, file: !1, line: 1065, type: !32)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compress", scope: !784, file: !1, line: 1066, type: !44)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data_size", scope: !784, file: !1, line: 1066, type: !44)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_size", scope: !784, file: !1, line: 1066, type: !44)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_offset", scope: !784, file: !1, line: 1066, type: !44)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_size", scope: !784, file: !1, line: 1066, type: !44)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !784, file: !1, line: 1067, type: !44)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "date", scope: !784, file: !1, line: 1067, type: !44)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crc", scope: !784, file: !1, line: 1067, type: !44)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !806, file: !1, line: 1137, type: !32)
!806 = distinct !DILexicalBlock(scope: !807, file: !1, line: 1137, column: 9)
!807 = distinct !DILexicalBlock(scope: !808, file: !1, line: 1134, column: 41)
!808 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1134, column: 9)
!809 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !810, file: !1, line: 1149, type: !32)
!810 = distinct !DILexicalBlock(scope: !811, file: !1, line: 1149, column: 9)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 1147, column: 24)
!812 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1147, column: 9)
!813 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !814, file: !1, line: 1162, type: !32)
!814 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1162, column: 5)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !816, file: !1, line: 1164, type: !32)
!816 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1164, column: 5)
!817 = !DISubprogram(name: "get_decompress_func", scope: !1, file: !1, line: 1025, type: !509, isLocal: true, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: true, variables: !818)
!818 = !{!819, !820, !821}
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zlib", scope: !817, file: !1, line: 1028, type: !32)
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decompress", scope: !817, file: !1, line: 1029, type: !32)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !822, file: !1, line: 1042, type: !32)
!822 = distinct !DILexicalBlock(scope: !823, file: !1, line: 1042, column: 9)
!823 = distinct !DILexicalBlock(scope: !824, file: !1, line: 1039, column: 23)
!824 = distinct !DILexicalBlock(scope: !817, file: !1, line: 1039, column: 9)
!825 = !DISubprogram(name: "unmarshal_code", scope: !1, file: !1, line: 1187, type: !826, isLocal: true, isDefinition: true, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: true, variables: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!32, !32, !32, !403}
!828 = !{!829, !830, !831, !832, !833, !834, !835}
!829 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !825, file: !1, line: 1187, type: !32)
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !825, file: !1, line: 1187, type: !32)
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtime", arg: 3, scope: !825, file: !1, line: 1187, type: !403)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !825, file: !1, line: 1189, type: !32)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !825, file: !1, line: 1190, type: !79)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !825, file: !1, line: 1191, type: !38)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !836, file: !1, line: 1222, type: !32)
!836 = distinct !DILexicalBlock(scope: !837, file: !1, line: 1222, column: 9)
!837 = distinct !DILexicalBlock(scope: !838, file: !1, line: 1221, column: 30)
!838 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1221, column: 9)
!839 = !DISubprogram(name: "get_long", scope: !1, file: !1, line: 821, type: !840, isLocal: true, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, variables: !842)
!840 = !DISubroutineType(types: !841)
!841 = !{!44, !433}
!842 = !{!843, !844}
!843 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !839, file: !1, line: 821, type: !433)
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !839, file: !1, line: 822, type: !44)
!845 = !DISubprogram(name: "eq_mtime", scope: !1, file: !1, line: 1172, type: !846, isLocal: true, isDefinition: true, scopeLine: 1173, flags: DIFlagPrototyped, isOptimized: true, variables: !848)
!846 = !DISubroutineType(types: !847)
!847 = !{!71, !403, !403}
!848 = !{!849, !850, !851}
!849 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t1", arg: 1, scope: !845, file: !1, line: 1172, type: !403)
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t2", arg: 2, scope: !845, file: !1, line: 1172, type: !403)
!851 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !845, file: !1, line: 1174, type: !403)
!852 = !DISubprogram(name: "compile_source", scope: !1, file: !1, line: 1276, type: !153, isLocal: true, isDefinition: true, scopeLine: 1277, flags: DIFlagPrototyped, isOptimized: true, variables: !853)
!853 = !{!854, !855, !856, !857, !858, !859, !863, !865}
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !852, file: !1, line: 1276, type: !32)
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "source", arg: 2, scope: !852, file: !1, line: 1276, type: !32)
!856 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !852, file: !1, line: 1278, type: !32)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixed_source", scope: !852, file: !1, line: 1278, type: !32)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathbytes", scope: !852, file: !1, line: 1278, type: !32)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !860, file: !1, line: 1286, type: !32)
!860 = distinct !DILexicalBlock(scope: !861, file: !1, line: 1286, column: 9)
!861 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1285, column: 31)
!862 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1285, column: 9)
!863 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !864, file: !1, line: 1293, type: !32)
!864 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1293, column: 5)
!865 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !866, file: !1, line: 1294, type: !32)
!866 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1294, column: 5)
!867 = !DISubprogram(name: "normalize_line_endings", scope: !1, file: !1, line: 1236, type: !143, isLocal: true, isDefinition: true, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true, variables: !868)
!868 = !{!869, !870, !871, !872, !873, !874}
!869 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "source", arg: 1, scope: !867, file: !1, line: 1236, type: !32)
!870 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !867, file: !1, line: 1238, type: !79)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !867, file: !1, line: 1238, type: !79)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !867, file: !1, line: 1238, type: !79)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixed_source", scope: !867, file: !1, line: 1239, type: !32)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !867, file: !1, line: 1240, type: !71)
!875 = !DISubprogram(name: "zipimporter_get_data", scope: !1, file: !1, line: 559, type: !153, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_data, variables: !876)
!876 = !{!877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !890, !892, !894}
!877 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !875, file: !1, line: 559, type: !32)
!878 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !875, file: !1, line: 559, type: !32)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !875, file: !1, line: 561, type: !395)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !875, file: !1, line: 562, type: !32)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !875, file: !1, line: 562, type: !32)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !875, file: !1, line: 563, type: !32)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_start", scope: !875, file: !1, line: 564, type: !38)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_len", scope: !875, file: !1, line: 564, type: !38)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !875, file: !1, line: 564, type: !38)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !887, file: !1, line: 594, type: !32)
!887 = distinct !DILexicalBlock(scope: !888, file: !1, line: 594, column: 9)
!888 = distinct !DILexicalBlock(scope: !889, file: !1, line: 592, column: 28)
!889 = distinct !DILexicalBlock(scope: !875, file: !1, line: 592, column: 9)
!890 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !891, file: !1, line: 597, type: !32)
!891 = distinct !DILexicalBlock(scope: !875, file: !1, line: 597, column: 5)
!892 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !893, file: !1, line: 598, type: !32)
!893 = distinct !DILexicalBlock(scope: !875, file: !1, line: 598, column: 5)
!894 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !895, file: !1, line: 601, type: !32)
!895 = distinct !DILexicalBlock(scope: !875, file: !1, line: 601, column: 5)
!896 = !DISubprogram(name: "zipimporter_get_code", scope: !1, file: !1, line: 606, type: !153, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_code, variables: !897)
!897 = !{!898, !899, !900, !901}
!898 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !896, file: !1, line: 606, type: !32)
!899 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !896, file: !1, line: 606, type: !32)
!900 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !896, file: !1, line: 608, type: !395)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !896, file: !1, line: 609, type: !32)
!902 = !DISubprogram(name: "zipimporter_get_source", scope: !1, file: !1, line: 618, type: !153, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_source, variables: !903)
!903 = !{!904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !915, !917, !919, !922, !923}
!904 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !902, file: !1, line: 618, type: !32)
!905 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !902, file: !1, line: 618, type: !32)
!906 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !902, file: !1, line: 620, type: !395)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !902, file: !1, line: 621, type: !32)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !902, file: !1, line: 622, type: !32)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !902, file: !1, line: 622, type: !32)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !902, file: !1, line: 622, type: !32)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !902, file: !1, line: 622, type: !32)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mi", scope: !902, file: !1, line: 623, type: !9)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !914, file: !1, line: 641, type: !32)
!914 = distinct !DILexicalBlock(scope: !902, file: !1, line: 641, column: 5)
!915 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !916, file: !1, line: 649, type: !32)
!916 = distinct !DILexicalBlock(scope: !902, file: !1, line: 649, column: 5)
!917 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !918, file: !1, line: 654, type: !32)
!918 = distinct !DILexicalBlock(scope: !902, file: !1, line: 654, column: 5)
!919 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !920, file: !1, line: 656, type: !32)
!920 = distinct !DILexicalBlock(scope: !921, file: !1, line: 655, column: 28)
!921 = distinct !DILexicalBlock(scope: !902, file: !1, line: 655, column: 9)
!922 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !920, file: !1, line: 656, type: !32)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !924, file: !1, line: 662, type: !32)
!924 = distinct !DILexicalBlock(scope: !920, file: !1, line: 662, column: 9)
!925 = !DISubprogram(name: "zipimporter_get_filename", scope: !1, file: !1, line: 515, type: !153, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_filename, variables: !926)
!926 = !{!927, !928, !929, !930, !931, !932, !933, !934}
!927 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !925, file: !1, line: 515, type: !32)
!928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !925, file: !1, line: 515, type: !32)
!929 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !925, file: !1, line: 517, type: !395)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !925, file: !1, line: 518, type: !32)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !925, file: !1, line: 518, type: !32)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modpath", scope: !925, file: !1, line: 518, type: !32)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispackage", scope: !925, file: !1, line: 519, type: !71)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !935, file: !1, line: 530, type: !32)
!935 = distinct !DILexicalBlock(scope: !925, file: !1, line: 530, column: 5)
!936 = !DISubprogram(name: "zipimporter_is_package", scope: !1, file: !1, line: 537, type: !153, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_is_package, variables: !937)
!937 = !{!938, !939, !940, !941, !942}
!938 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !936, file: !1, line: 537, type: !32)
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !936, file: !1, line: 537, type: !32)
!940 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !936, file: !1, line: 539, type: !395)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !936, file: !1, line: 540, type: !32)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mi", scope: !936, file: !1, line: 541, type: !9)
!943 = !DISubprogram(name: "zipimporter_init", scope: !1, file: !1, line: 68, type: !626, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._zipimporter*, %struct._object*, %struct._object*)* @zipimporter_init, variables: !944)
!944 = !{!945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !992, !993, !998, !1002, !1004, !1008, !1014, !1016, !1018, !1020}
!945 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !943, file: !1, line: 68, type: !395)
!946 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !943, file: !1, line: 68, type: !32)
!947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !943, file: !1, line: 68, type: !32)
!948 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !943, file: !1, line: 70, type: !32)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "files", scope: !943, file: !1, line: 70, type: !32)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !943, file: !1, line: 70, type: !32)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !943, file: !1, line: 71, type: !32)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !943, file: !1, line: 72, type: !38)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flen", scope: !943, file: !1, line: 72, type: !38)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statbuf", scope: !955, file: !1, line: 102, type: !958)
!955 = distinct !DILexicalBlock(scope: !956, file: !1, line: 101, column: 14)
!956 = distinct !DILexicalBlock(scope: !957, file: !1, line: 101, column: 5)
!957 = distinct !DILexicalBlock(scope: !943, file: !1, line: 101, column: 5)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !959, line: 46, size: 1152, align: 64, elements: !960)
!959 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!960 = !{!961, !963, !965, !967, !969, !971, !973, !974, !975, !976, !978, !980, !986, !987, !988}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !958, file: !959, line: 48, baseType: !962, size: 64, align: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !43, line: 133, baseType: !123)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !958, file: !959, line: 53, baseType: !964, size: 64, align: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !43, line: 136, baseType: !123)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !958, file: !959, line: 61, baseType: !966, size: 64, align: 64, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !43, line: 139, baseType: !123)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !958, file: !959, line: 62, baseType: !968, size: 32, align: 32, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !43, line: 138, baseType: !375)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !958, file: !959, line: 64, baseType: !970, size: 32, align: 32, offset: 224)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !43, line: 134, baseType: !375)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !958, file: !959, line: 65, baseType: !972, size: 32, align: 32, offset: 256)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !43, line: 135, baseType: !375)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !958, file: !959, line: 67, baseType: !71, size: 32, align: 32, offset: 288)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !958, file: !959, line: 69, baseType: !962, size: 64, align: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !958, file: !959, line: 74, baseType: !102, size: 64, align: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !958, file: !959, line: 78, baseType: !977, size: 64, align: 64, offset: 448)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !43, line: 162, baseType: !44)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !958, file: !959, line: 80, baseType: !979, size: 64, align: 64, offset: 512)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !43, line: 167, baseType: !44)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !958, file: !959, line: 91, baseType: !981, size: 128, align: 64, offset: 576)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !404, line: 120, size: 128, align: 64, elements: !982)
!982 = !{!983, !984}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !981, file: !404, line: 122, baseType: !405, size: 64, align: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !981, file: !404, line: 123, baseType: !985, size: 64, align: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !43, line: 184, baseType: !44)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !958, file: !959, line: 92, baseType: !981, size: 128, align: 64, offset: 704)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !958, file: !959, line: 93, baseType: !981, size: 128, align: 64, offset: 832)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !958, file: !959, line: 106, baseType: !989, size: 192, align: 64, offset: 960)
!989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !985, size: 192, align: 64, elements: !990)
!990 = !{!991}
!991 = !DISubrange(count: 3)
!992 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !955, file: !1, line: 103, type: !71)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !994, file: !1, line: 112, type: !32)
!994 = distinct !DILexicalBlock(scope: !995, file: !1, line: 112, column: 17)
!995 = distinct !DILexicalBlock(scope: !996, file: !1, line: 110, column: 17)
!996 = distinct !DILexicalBlock(scope: !997, file: !1, line: 108, column: 22)
!997 = distinct !DILexicalBlock(scope: !955, file: !1, line: 108, column: 13)
!998 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !999, file: !1, line: 112, type: !32)
!999 = distinct !DILexicalBlock(scope: !1000, file: !1, line: 112, column: 17)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !1, line: 112, column: 17)
!1001 = distinct !DILexicalBlock(scope: !994, file: !1, line: 112, column: 17)
!1002 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1003, file: !1, line: 115, type: !32)
!1003 = distinct !DILexicalBlock(scope: !955, file: !1, line: 115, column: 9)
!1004 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1005, file: !1, line: 115, type: !32)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !1, line: 115, column: 9)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !1, line: 115, column: 9)
!1007 = distinct !DILexicalBlock(scope: !1003, file: !1, line: 115, column: 9)
!1008 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1009, file: !1, line: 160, type: !32)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 160, column: 13)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !1, line: 155, column: 54)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 155, column: 13)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 149, column: 22)
!1013 = distinct !DILexicalBlock(scope: !943, file: !1, line: 149, column: 9)
!1014 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1015, file: !1, line: 166, type: !32)
!1015 = distinct !DILexicalBlock(scope: !943, file: !1, line: 166, column: 5)
!1016 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1017, file: !1, line: 170, type: !32)
!1017 = distinct !DILexicalBlock(scope: !943, file: !1, line: 170, column: 5)
!1018 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1019, file: !1, line: 171, type: !32)
!1019 = distinct !DILexicalBlock(scope: !943, file: !1, line: 171, column: 5)
!1020 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1021, file: !1, line: 171, type: !32)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !1, line: 171, column: 5)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !1, line: 171, column: 5)
!1023 = !DISubprogram(name: "read_directory", scope: !1, file: !1, line: 857, type: !143, isLocal: true, isDefinition: true, scopeLine: 858, flags: DIFlagPrototyped, isOptimized: true, variables: !1024)
!1024 = !{!1025, !1026, !1027, !1028, !1029, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1048, !1052, !1053, !1054, !1058, !1059, !1060, !1061, !1062, !1066, !1067, !1076, !1077, !1080, !1082, !1084, !1088, !1090, !1092, !1095, !1097, !1100, !1102, !1105, !1107}
!1025 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "archive", arg: 1, scope: !1023, file: !1, line: 857, type: !32)
!1026 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "files", scope: !1023, file: !1, line: 859, type: !32)
!1027 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !1023, file: !1, line: 860, type: !72)
!1028 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !1023, file: !1, line: 861, type: !104)
!1029 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compress", scope: !1023, file: !1, line: 862, type: !1030)
!1030 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1031 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !1023, file: !1, line: 862, type: !1030)
!1032 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "date", scope: !1023, file: !1, line: 862, type: !1030)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_size", scope: !1023, file: !1, line: 862, type: !1030)
!1034 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crc", scope: !1023, file: !1, line: 863, type: !44)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data_size", scope: !1023, file: !1, line: 863, type: !44)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_size", scope: !1023, file: !1, line: 863, type: !44)
!1037 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_size", scope: !1023, file: !1, line: 863, type: !44)
!1038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_offset", scope: !1023, file: !1, line: 864, type: !38)
!1039 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_position", scope: !1023, file: !1, line: 864, type: !38)
!1040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_offset", scope: !1023, file: !1, line: 864, type: !38)
!1041 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !1023, file: !1, line: 865, type: !44)
!1042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !1023, file: !1, line: 865, type: !44)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1023, file: !1, line: 866, type: !38)
!1044 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1023, file: !1, line: 867, type: !1045)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 32808, align: 8, elements: !1046)
!1046 = !{!1047}
!1047 = !DISubrange(count: 4101)
!1048 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !1023, file: !1, line: 868, type: !1049)
!1049 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 64, align: 8, elements: !1050)
!1050 = !{!1051}
!1051 = !DISubrange(count: 8)
!1052 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !1023, file: !1, line: 869, type: !32)
!1053 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1023, file: !1, line: 870, type: !79)
!1054 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endof_central_dir", scope: !1023, file: !1, line: 870, type: !1055)
!1055 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 176, align: 8, elements: !1056)
!1056 = !{!1057}
!1057 = !DISubrange(count: 22)
!1058 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc_offset", scope: !1023, file: !1, line: 871, type: !38)
!1059 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !1023, file: !1, line: 872, type: !32)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "charset", scope: !1023, file: !1, line: 873, type: !56)
!1061 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bootstrap", scope: !1023, file: !1, line: 874, type: !71)
!1062 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !1063, file: !1, line: 915, type: !32)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !1, line: 914, column: 14)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !1, line: 914, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 914, column: 5)
!1066 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1063, file: !1, line: 916, type: !71)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !1068, file: !1, line: 966, type: !1071)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !1, line: 966, column: 19)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !1, line: 966, column: 18)
!1070 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 964, column: 13)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64, align: 64)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !23, line: 33, baseType: !1073)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !23, line: 31, size: 64, align: 64, elements: !1074)
!1074 = !{!1075}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !1073, file: !23, line: 32, baseType: !31, size: 64, align: 64)
!1076 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1068, file: !1, line: 966, type: !31)
!1077 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !1068, file: !1, line: 966, type: !1078)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64, align: 64)
!1079 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !31)
!1080 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !1068, file: !1, line: 966, type: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !23, line: 29, baseType: !22)
!1082 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1083, file: !1, line: 997, type: !32)
!1083 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 997, column: 9)
!1084 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1085, file: !1, line: 997, type: !32)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !1, line: 997, column: 9)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !1, line: 997, column: 9)
!1087 = distinct !DILexicalBlock(scope: !1083, file: !1, line: 997, column: 9)
!1088 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1089, file: !1, line: 998, type: !32)
!1089 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 998, column: 9)
!1090 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1091, file: !1, line: 1010, type: !32)
!1091 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 1010, column: 5)
!1092 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1093, file: !1, line: 1010, type: !32)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !1, line: 1010, column: 5)
!1094 = distinct !DILexicalBlock(scope: !1091, file: !1, line: 1010, column: 5)
!1095 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1096, file: !1, line: 1011, type: !32)
!1096 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 1011, column: 5)
!1097 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1098, file: !1, line: 1011, type: !32)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !1, line: 1011, column: 5)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !1, line: 1011, column: 5)
!1100 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1101, file: !1, line: 1016, type: !32)
!1101 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 1016, column: 5)
!1102 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1103, file: !1, line: 1016, type: !32)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !1, line: 1016, column: 5)
!1104 = distinct !DILexicalBlock(scope: !1101, file: !1, line: 1016, column: 5)
!1105 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1106, file: !1, line: 1017, type: !32)
!1106 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 1017, column: 5)
!1107 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1108, file: !1, line: 1017, type: !32)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !1, line: 1017, column: 5)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !1, line: 1017, column: 5)
!1110 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !23, file: !23, line: 59, type: !1111, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !1116)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{null, !1113, !1081}
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64, align: 64)
!1114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1116 = !{!1117, !1118}
!1117 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !1110, file: !23, line: 59, type: !1113)
!1118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !1110, file: !23, line: 59, type: !1081)
!1119 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !23, file: !23, line: 51, type: !1120, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !1122)
!1120 = !DISubroutineType(types: !1121)
!1121 = !{null, !1081}
!1122 = !{!1123}
!1123 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !1119, file: !23, line: 51, type: !1081)
!1124 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !23, file: !23, line: 44, type: !1120, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !1125)
!1125 = !{!1126}
!1126 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !1124, file: !23, line: 44, type: !1081)
!1127 = !{!1128, !1129, !1131, !1135, !1140, !1144, !1148, !1149, !1157, !1161, !1165, !1169, !1173, !1177, !1181, !1186, !1190, !1212, !1216}
!1128 = !DIGlobalVariable(name: "ZipImportError", scope: !0, file: !1, line: 49, type: !32, isLocal: true, isDefinition: true, variable: %struct._object** @ZipImportError)
!1129 = !DIGlobalVariable(name: "ZipImporter_Type", scope: !0, file: !1, line: 771, type: !1130, isLocal: true, isDefinition: true, variable: %struct._typeobject* @ZipImporter_Type)
!1130 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !34, line: 422, baseType: !47)
!1131 = !DIGlobalVariable(name: "zipimporter_doc", scope: !0, file: !1, line: 755, type: !1132, isLocal: true, isDefinition: true, variable: [475 x i8]* @zipimporter_doc)
!1132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 3800, align: 8, elements: !1133)
!1133 = !{!1134}
!1134 = !DISubrange(count: 475)
!1135 = !DIGlobalVariable(name: "zipimporter_methods", scope: !0, file: !1, line: 728, type: !1136, isLocal: true, isDefinition: true, variable: [9 x %struct.PyMethodDef]* @zipimporter_methods)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1137, size: 2304, align: 64, elements: !1138)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !308, line: 47, baseType: !307)
!1138 = !{!1139}
!1139 = !DISubrange(count: 9)
!1140 = !DIGlobalVariable(name: "doc_find_module", scope: !0, file: !1, line: 671, type: !1141, isLocal: true, isDefinition: true, variable: [347 x i8]* @doc_find_module)
!1141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 2776, align: 8, elements: !1142)
!1142 = !{!1143}
!1143 = !DISubrange(count: 347)
!1144 = !DIGlobalVariable(name: "doc_find_loader", scope: !0, file: !1, line: 680, type: !1145, isLocal: true, isDefinition: true, variable: [440 x i8]* @doc_find_loader)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 3520, align: 8, elements: !1146)
!1146 = !{!1147}
!1147 = !DISubrange(count: 440)
!1148 = !DIGlobalVariable(name: "importing_zlib", scope: !817, file: !1, line: 1027, type: !71, isLocal: true, isDefinition: true)
!1149 = !DIGlobalVariable(name: "PyId_decompress", scope: !817, file: !1, line: 1030, type: !1150, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @get_decompress_func.PyId_decompress)
!1150 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !34, line: 144, baseType: !1151)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !34, line: 140, size: 192, align: 64, elements: !1152)
!1152 = !{!1153, !1155, !1156}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1151, file: !34, line: 141, baseType: !1154, size: 64, align: 64)
!1154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1151, file: !34, line: 142, baseType: !56, size: 64, align: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1151, file: !34, line: 143, baseType: !32, size: 64, align: 64, offset: 128)
!1157 = !DIGlobalVariable(name: "doc_load_module", scope: !0, file: !1, line: 690, type: !1158, isLocal: true, isDefinition: true, variable: [213 x i8]* @doc_load_module)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1704, align: 8, elements: !1159)
!1159 = !{!1160}
!1160 = !DISubrange(count: 213)
!1161 = !DIGlobalVariable(name: "doc_get_data", scope: !0, file: !1, line: 697, type: !1162, isLocal: true, isDefinition: true, variable: [130 x i8]* @doc_get_data)
!1162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1040, align: 8, elements: !1163)
!1163 = !{!1164}
!1164 = !DISubrange(count: 130)
!1165 = !DIGlobalVariable(name: "doc_get_code", scope: !0, file: !1, line: 709, type: !1166, isLocal: true, isDefinition: true, variable: [139 x i8]* @doc_get_code)
!1166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1112, align: 8, elements: !1167)
!1167 = !{!1168}
!1168 = !DISubrange(count: 139)
!1169 = !DIGlobalVariable(name: "doc_get_source", scope: !0, file: !1, line: 715, type: !1170, isLocal: true, isDefinition: true, variable: [221 x i8]* @doc_get_source)
!1170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1768, align: 8, elements: !1171)
!1171 = !{!1172}
!1172 = !DISubrange(count: 221)
!1173 = !DIGlobalVariable(name: "doc_get_filename", scope: !0, file: !1, line: 723, type: !1174, isLocal: true, isDefinition: true, variable: [90 x i8]* @doc_get_filename)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 720, align: 8, elements: !1175)
!1175 = !{!1176}
!1176 = !DISubrange(count: 90)
!1177 = !DIGlobalVariable(name: "doc_is_package", scope: !0, file: !1, line: 703, type: !1178, isLocal: true, isDefinition: true, variable: [147 x i8]* @doc_is_package)
!1178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 1176, align: 8, elements: !1179)
!1179 = !{!1180}
!1180 = !DISubrange(count: 147)
!1181 = !DIGlobalVariable(name: "zipimporter_members", scope: !0, file: !1, line: 748, type: !1182, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @zipimporter_members)
!1182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1183, size: 1280, align: 64, elements: !1184)
!1183 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !318, line: 24, baseType: !317)
!1184 = !{!1185}
!1185 = !DISubrange(count: 4)
!1186 = !DIGlobalVariable(name: "zip_searchorder", scope: !0, file: !1, line: 26, type: !1187, isLocal: true, isDefinition: true, variable: [7 x %struct.st_zip_searchorder]* @zip_searchorder)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !516, size: 1120, align: 32, elements: !1188)
!1188 = !{!1189}
!1189 = !DISubrange(count: 7)
!1190 = !DIGlobalVariable(name: "zipimportmodule", scope: !0, file: !1, line: 1458, type: !1191, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @zipimportmodule)
!1191 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1192, line: 47, size: 832, align: 64, elements: !1193)
!1192 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!1193 = !{!1194, !1203, !1204, !1205, !1206, !1208, !1209, !1210, !1211}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1191, file: !1192, line: 48, baseType: !1195, size: 320, align: 64)
!1195 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1192, line: 38, baseType: !1196)
!1196 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1192, line: 33, size: 320, align: 64, elements: !1197)
!1197 = !{!1198, !1199, !1201, !1202}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1196, file: !1192, line: 34, baseType: !33, size: 128, align: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1196, file: !1192, line: 35, baseType: !1200, size: 64, align: 64, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1196, file: !1192, line: 36, baseType: !38, size: 64, align: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1196, file: !1192, line: 37, baseType: !32, size: 64, align: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1191, file: !1192, line: 49, baseType: !56, size: 64, align: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1191, file: !1192, line: 50, baseType: !56, size: 64, align: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1191, file: !1192, line: 51, baseType: !38, size: 64, align: 64, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1191, file: !1192, line: 52, baseType: !1207, size: 64, align: 64, offset: 512)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64, align: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1191, file: !1192, line: 53, baseType: !169, size: 64, align: 64, offset: 576)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1191, file: !1192, line: 54, baseType: !286, size: 64, align: 64, offset: 640)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1191, file: !1192, line: 55, baseType: !169, size: 64, align: 64, offset: 704)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1191, file: !1192, line: 56, baseType: !363, size: 64, align: 64, offset: 768)
!1212 = !DIGlobalVariable(name: "zipimport_doc", scope: !0, file: !1, line: 1444, type: !1213, isLocal: true, isDefinition: true, variable: [592 x i8]* @zipimport_doc)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 4736, align: 8, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 592)
!1216 = !DIGlobalVariable(name: "zip_directory_cache", scope: !0, file: !1, line: 51, type: !32, isLocal: true, isDefinition: true, variable: %struct._object** @zip_directory_cache)
!1217 = !{i32 2, !"Dwarf Version", i32 4}
!1218 = !{i32 2, !"Debug Info Version", i32 3}
!1219 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1220 = !DILocation(line: 1475, column: 9, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1475, column: 9)
!1222 = !DILocation(line: 1475, column: 41, scope: !1221)
!1223 = !DILocation(line: 1475, column: 9, scope: !508)
!1224 = !DILocation(line: 1479, column: 34, scope: !508)
!1225 = !{!1226, !1226, i64 0}
!1226 = !{!"omnipotent char", !1227, i64 0}
!1227 = !{!"Simple C/C++ TBAA"}
!1228 = !DILocation(line: 1480, column: 34, scope: !508)
!1229 = !DILocation(line: 1481, column: 34, scope: !508)
!1230 = !DILocation(line: 1482, column: 9, scope: !515)
!1231 = !{!1232, !1232, i64 0}
!1232 = !{!"int", !1226, i64 0}
!1233 = !DILocation(line: 1482, column: 9, scope: !508)
!1234 = !DILocation(line: 1484, column: 9, scope: !514)
!1235 = !DILocation(line: 1485, column: 15, scope: !514)
!1236 = !{i64 0, i64 14, !1225, i64 16, i64 4, !1231}
!1237 = !DILocation(line: 1486, column: 30, scope: !514)
!1238 = !DILocation(line: 1487, column: 30, scope: !514)
!1239 = !DILocation(line: 1488, column: 15, scope: !514)
!1240 = !DILocation(line: 1489, column: 30, scope: !514)
!1241 = !DILocation(line: 1490, column: 30, scope: !514)
!1242 = !DILocation(line: 1491, column: 5, scope: !515)
!1243 = !DILocation(line: 1491, column: 5, scope: !514)
!1244 = !DILocation(line: 1493, column: 11, scope: !508)
!1245 = !DIExpression()
!1246 = !DILocation(line: 1473, column: 15, scope: !508)
!1247 = !DILocation(line: 1494, column: 13, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1494, column: 9)
!1249 = !DILocation(line: 1494, column: 9, scope: !508)
!1250 = !DILocation(line: 1498, column: 41, scope: !508)
!1251 = !{!1252, !1252, i64 0}
!1252 = !{!"any pointer", !1226, i64 0}
!1253 = !DILocation(line: 1504, column: 28, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1503, column: 9)
!1255 = !DILocation(line: 1497, column: 20, scope: !508)
!1256 = !DILocation(line: 1499, column: 24, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1499, column: 9)
!1258 = !DILocation(line: 1499, column: 9, scope: !508)
!1259 = !DILocation(line: 1502, column: 5, scope: !508)
!1260 = !{!1261, !1262, i64 0}
!1261 = !{!"_object", !1262, i64 0, !1252, i64 8}
!1262 = !{!"long", !1226, i64 0}
!1263 = !DILocation(line: 1503, column: 9, scope: !1254)
!1264 = !DILocation(line: 1504, column: 44, scope: !1254)
!1265 = !DILocation(line: 1503, column: 9, scope: !508)
!1266 = !DILocation(line: 1507, column: 5, scope: !508)
!1267 = !DILocation(line: 1508, column: 9, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1508, column: 9)
!1269 = !DILocation(line: 1509, column: 59, scope: !1268)
!1270 = !DILocation(line: 1508, column: 9, scope: !508)
!1271 = !DILocation(line: 1517, column: 28, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1516, column: 9)
!1273 = !DILocation(line: 1512, column: 25, scope: !508)
!1274 = !DILocation(line: 1513, column: 29, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !508, file: !1, line: 1513, column: 9)
!1276 = !DILocation(line: 1513, column: 9, scope: !508)
!1277 = !DILocation(line: 1515, column: 5, scope: !508)
!1278 = !DILocation(line: 1516, column: 9, scope: !1272)
!1279 = !DILocation(line: 1517, column: 49, scope: !1272)
!1280 = !DILocation(line: 1518, column: 9, scope: !1272)
!1281 = !DILocation(line: 1520, column: 1, scope: !508)
!1282 = !DILocation(line: 185, column: 34, scope: !523)
!1283 = !DILocation(line: 187, column: 25, scope: !523)
!1284 = !DILocation(line: 187, column: 5, scope: !523)
!1285 = !DILocation(line: 188, column: 5, scope: !1286)
!1286 = !DILexicalBlockFile(scope: !529, file: !1, discriminator: 1)
!1287 = !{!1288, !1252, i64 16}
!1288 = !{!"_zipimporter", !1261, i64 0, !1252, i64 16, !1252, i64 24, !1252, i64 32}
!1289 = !DILocation(line: 188, column: 5, scope: !532)
!1290 = !DILocation(line: 188, column: 5, scope: !529)
!1291 = !DILocation(line: 188, column: 5, scope: !1292)
!1292 = !DILexicalBlockFile(scope: !531, file: !1, discriminator: 4)
!1293 = !DILocation(line: 188, column: 5, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !531, file: !1, line: 188, column: 5)
!1295 = !DILocation(line: 188, column: 5, scope: !531)
!1296 = !DILocation(line: 188, column: 5, scope: !1297)
!1297 = !DILexicalBlockFile(scope: !1294, file: !1, discriminator: 6)
!1298 = !{!1261, !1252, i64 8}
!1299 = !{!1300, !1252, i64 48}
!1300 = !{!"_typeobject", !1301, i64 0, !1252, i64 24, !1262, i64 32, !1262, i64 40, !1252, i64 48, !1252, i64 56, !1252, i64 64, !1252, i64 72, !1252, i64 80, !1252, i64 88, !1252, i64 96, !1252, i64 104, !1252, i64 112, !1252, i64 120, !1252, i64 128, !1252, i64 136, !1252, i64 144, !1252, i64 152, !1252, i64 160, !1262, i64 168, !1252, i64 176, !1252, i64 184, !1252, i64 192, !1252, i64 200, !1262, i64 208, !1252, i64 216, !1252, i64 224, !1252, i64 232, !1252, i64 240, !1252, i64 248, !1252, i64 256, !1252, i64 264, !1252, i64 272, !1252, i64 280, !1262, i64 288, !1252, i64 296, !1252, i64 304, !1252, i64 312, !1252, i64 320, !1252, i64 328, !1252, i64 336, !1252, i64 344, !1252, i64 352, !1252, i64 360, !1252, i64 368, !1252, i64 376, !1232, i64 384, !1252, i64 392}
!1301 = !{!"", !1261, i64 0, !1262, i64 16}
!1302 = !DILocation(line: 189, column: 5, scope: !1303)
!1303 = !DILexicalBlockFile(scope: !534, file: !1, discriminator: 1)
!1304 = !{!1288, !1252, i64 24}
!1305 = !DILocation(line: 189, column: 5, scope: !537)
!1306 = !DILocation(line: 189, column: 5, scope: !534)
!1307 = !DILocation(line: 189, column: 5, scope: !1308)
!1308 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 4)
!1309 = !DILocation(line: 189, column: 5, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !536, file: !1, line: 189, column: 5)
!1311 = !DILocation(line: 189, column: 5, scope: !536)
!1312 = !DILocation(line: 189, column: 5, scope: !1313)
!1313 = !DILexicalBlockFile(scope: !1310, file: !1, discriminator: 6)
!1314 = !DILocation(line: 190, column: 5, scope: !1315)
!1315 = !DILexicalBlockFile(scope: !539, file: !1, discriminator: 1)
!1316 = !{!1288, !1252, i64 32}
!1317 = !DILocation(line: 190, column: 5, scope: !542)
!1318 = !DILocation(line: 190, column: 5, scope: !539)
!1319 = !DILocation(line: 190, column: 5, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !541, file: !1, discriminator: 4)
!1321 = !DILocation(line: 190, column: 5, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !541, file: !1, line: 190, column: 5)
!1323 = !DILocation(line: 190, column: 5, scope: !541)
!1324 = !DILocation(line: 190, column: 5, scope: !1325)
!1325 = !DILexicalBlockFile(scope: !1322, file: !1, discriminator: 6)
!1326 = !DILocation(line: 191, column: 5, scope: !523)
!1327 = !DILocation(line: 191, column: 20, scope: !523)
!1328 = !{!1300, !1252, i64 320}
!1329 = !DILocation(line: 192, column: 1, scope: !523)
!1330 = !DILocation(line: 195, column: 31, scope: !543)
!1331 = !DILocation(line: 197, column: 15, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !543, file: !1, line: 197, column: 9)
!1333 = !DILocation(line: 204, column: 43, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1332, file: !1, line: 199, column: 14)
!1335 = !DILocation(line: 197, column: 23, scope: !1332)
!1336 = !DILocation(line: 197, column: 9, scope: !543)
!1337 = !DILocation(line: 198, column: 16, scope: !1332)
!1338 = !DILocation(line: 198, column: 9, scope: !1332)
!1339 = !DILocation(line: 199, column: 20, scope: !1334)
!1340 = !DILocation(line: 199, column: 27, scope: !1334)
!1341 = !DILocation(line: 199, column: 35, scope: !1334)
!1342 = !DILocation(line: 199, column: 38, scope: !1343)
!1343 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 1)
!1344 = !{!1345, !1262, i64 16}
!1345 = !{!"", !1261, i64 0, !1262, i64 16, !1262, i64 24, !1346, i64 32, !1252, i64 40}
!1346 = !{!"", !1232, i64 0, !1232, i64 0, !1232, i64 0, !1232, i64 0, !1232, i64 0, !1232, i64 1}
!1347 = !DILocation(line: 199, column: 73, scope: !1334)
!1348 = !DILocation(line: 199, column: 14, scope: !1332)
!1349 = !DILocation(line: 200, column: 16, scope: !1334)
!1350 = !DILocation(line: 200, column: 9, scope: !1334)
!1351 = !DILocation(line: 203, column: 16, scope: !1334)
!1352 = !DILocation(line: 203, column: 9, scope: !1334)
!1353 = !DILocation(line: 205, column: 1, scope: !543)
!1354 = !DILocation(line: 177, column: 32, scope: !548)
!1355 = !DILocation(line: 177, column: 47, scope: !548)
!1356 = !DILocation(line: 177, column: 60, scope: !548)
!1357 = !DILocation(line: 180, column: 5, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !556, file: !1, discriminator: 1)
!1359 = !DILocation(line: 180, column: 5, scope: !557)
!1360 = !DILocation(line: 180, column: 5, scope: !1361)
!1361 = !DILexicalBlockFile(scope: !555, file: !1, discriminator: 2)
!1362 = !DILocation(line: 180, column: 5, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !555, file: !1, line: 180, column: 5)
!1364 = !DILocation(line: 181, column: 5, scope: !548)
!1365 = !DILocation(line: 182, column: 1, scope: !548)
!1366 = !DILocation(line: 68, column: 31, scope: !943)
!1367 = !DILocation(line: 68, column: 47, scope: !943)
!1368 = !DILocation(line: 68, column: 63, scope: !943)
!1369 = !DILocation(line: 70, column: 5, scope: !943)
!1370 = !DILocation(line: 71, column: 15, scope: !943)
!1371 = !DILocation(line: 74, column: 10, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !943, file: !1, line: 74, column: 9)
!1373 = !DILocation(line: 867, column: 10, scope: !1023, inlinedAt: !1374)
!1374 = distinct !DILocation(line: 134, column: 17, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !1, line: 133, column: 24)
!1376 = distinct !DILexicalBlock(scope: !943, file: !1, line: 133, column: 9)
!1377 = !DILocation(line: 868, column: 10, scope: !1023, inlinedAt: !1374)
!1378 = !DILocation(line: 870, column: 14, scope: !1023, inlinedAt: !1374)
!1379 = !DILocation(line: 74, column: 9, scope: !943)
!1380 = !DILocation(line: 70, column: 15, scope: !943)
!1381 = !DILocation(line: 77, column: 10, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !943, file: !1, line: 77, column: 9)
!1383 = !DILocation(line: 77, column: 9, scope: !943)
!1384 = !DILocation(line: 81, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !943, file: !1, line: 81, column: 9)
!1386 = !DILocation(line: 81, column: 9, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !1385, file: !1, discriminator: 2)
!1388 = !DILocation(line: 81, column: 31, scope: !1389)
!1389 = !DILexicalBlockFile(scope: !1390, file: !1, discriminator: 4)
!1390 = !DILexicalBlockFile(scope: !1385, file: !1, discriminator: 3)
!1391 = !DILocation(line: 81, column: 9, scope: !943)
!1392 = !DILocation(line: 84, column: 11, scope: !943)
!1393 = !DILocation(line: 72, column: 16, scope: !943)
!1394 = !DILocation(line: 85, column: 13, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !943, file: !1, line: 85, column: 9)
!1396 = !DILocation(line: 85, column: 9, scope: !943)
!1397 = !DILocation(line: 86, column: 25, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1395, file: !1, line: 85, column: 19)
!1399 = !DILocation(line: 86, column: 9, scope: !1398)
!1400 = !DILocation(line: 87, column: 9, scope: !1398)
!1401 = !DILocation(line: 99, column: 5, scope: !943)
!1402 = !DILocation(line: 72, column: 21, scope: !943)
!1403 = !DILocation(line: 102, column: 9, scope: !955)
!1404 = !DILocation(line: 101, column: 5, scope: !943)
!1405 = !DILocation(line: 102, column: 21, scope: !955)
!1406 = !DILocation(line: 105, column: 14, scope: !955)
!1407 = !DILocation(line: 103, column: 13, scope: !955)
!1408 = !DILocation(line: 106, column: 13, scope: !955)
!1409 = !DILocation(line: 123, column: 5, scope: !1410)
!1410 = !DILexicalBlockFile(scope: !956, file: !1, discriminator: 1)
!1411 = !DILocation(line: 110, column: 18, scope: !995)
!1412 = !{!1413, !1232, i64 24}
!1413 = !{!"stat", !1262, i64 0, !1262, i64 8, !1262, i64 16, !1232, i64 24, !1232, i64 28, !1232, i64 32, !1232, i64 36, !1262, i64 40, !1262, i64 48, !1262, i64 56, !1262, i64 64, !1414, i64 72, !1414, i64 88, !1414, i64 104, !1226, i64 120}
!1414 = !{!"timespec", !1262, i64 0, !1262, i64 8}
!1415 = !DILocation(line: 112, column: 17, scope: !1416)
!1416 = !DILexicalBlockFile(scope: !994, file: !1, discriminator: 1)
!1417 = !DILocation(line: 110, column: 17, scope: !996)
!1418 = !DILocation(line: 112, column: 17, scope: !1419)
!1419 = !DILexicalBlockFile(scope: !999, file: !1, discriminator: 4)
!1420 = !DILocation(line: 112, column: 17, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !999, file: !1, line: 112, column: 17)
!1422 = !DILocation(line: 112, column: 17, scope: !999)
!1423 = !DILocation(line: 112, column: 17, scope: !1424)
!1424 = !DILexicalBlockFile(scope: !1421, file: !1, discriminator: 6)
!1425 = !DILocation(line: 115, column: 9, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !1003, file: !1, discriminator: 1)
!1427 = !DILocation(line: 115, column: 9, scope: !1428)
!1428 = !DILexicalBlockFile(scope: !1005, file: !1, discriminator: 4)
!1429 = !DILocation(line: 115, column: 9, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1005, file: !1, line: 115, column: 9)
!1431 = !DILocation(line: 115, column: 9, scope: !1005)
!1432 = !DILocation(line: 115, column: 9, scope: !1433)
!1433 = !DILexicalBlockFile(scope: !1430, file: !1, discriminator: 6)
!1434 = !DILocation(line: 117, column: 35, scope: !955)
!1435 = !DILocation(line: 117, column: 16, scope: !955)
!1436 = !DILocation(line: 118, column: 18, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !955, file: !1, line: 118, column: 13)
!1438 = !DILocation(line: 118, column: 13, scope: !955)
!1439 = !DILocation(line: 120, column: 40, scope: !955)
!1440 = !DILocation(line: 120, column: 20, scope: !955)
!1441 = !DILocation(line: 121, column: 22, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !955, file: !1, line: 121, column: 13)
!1443 = !DILocation(line: 125, column: 25, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !1, line: 124, column: 27)
!1445 = distinct !DILexicalBlock(scope: !943, file: !1, line: 124, column: 9)
!1446 = !DILocation(line: 125, column: 9, scope: !1444)
!1447 = !DILocation(line: 126, column: 9, scope: !1444)
!1448 = !DILocation(line: 129, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !943, file: !1, line: 129, column: 9)
!1450 = !DILocation(line: 129, column: 9, scope: !1451)
!1451 = !DILexicalBlockFile(scope: !1449, file: !1, discriminator: 2)
!1452 = !DILocation(line: 129, column: 35, scope: !1453)
!1453 = !DILexicalBlockFile(scope: !1454, file: !1, discriminator: 4)
!1454 = !DILexicalBlockFile(scope: !1449, file: !1, discriminator: 3)
!1455 = !DILocation(line: 129, column: 9, scope: !943)
!1456 = !DILocation(line: 132, column: 28, scope: !943)
!1457 = !DILocation(line: 132, column: 13, scope: !943)
!1458 = !DILocation(line: 70, column: 22, scope: !943)
!1459 = !DILocation(line: 133, column: 15, scope: !1376)
!1460 = !DILocation(line: 133, column: 9, scope: !943)
!1461 = !DILocation(line: 857, column: 26, scope: !1023, inlinedAt: !1374)
!1462 = !DILocation(line: 859, column: 15, scope: !1023, inlinedAt: !1374)
!1463 = !DILocation(line: 867, column: 5, scope: !1023, inlinedAt: !1374)
!1464 = !DILocation(line: 868, column: 5, scope: !1023, inlinedAt: !1374)
!1465 = !DILocation(line: 869, column: 15, scope: !1023, inlinedAt: !1374)
!1466 = !DILocation(line: 870, column: 5, scope: !1023, inlinedAt: !1374)
!1467 = !DILocation(line: 876, column: 10, scope: !1023, inlinedAt: !1374)
!1468 = !DILocation(line: 860, column: 11, scope: !1023, inlinedAt: !1374)
!1469 = !DILocation(line: 877, column: 12, scope: !1470, inlinedAt: !1374)
!1470 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 877, column: 9)
!1471 = !DILocation(line: 877, column: 9, scope: !1023, inlinedAt: !1374)
!1472 = !DILocation(line: 878, column: 14, scope: !1473, inlinedAt: !1374)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !1, line: 878, column: 13)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !1, line: 877, column: 21)
!1475 = !DILocation(line: 878, column: 13, scope: !1474, inlinedAt: !1374)
!1476 = !DILocation(line: 879, column: 26, scope: !1473, inlinedAt: !1374)
!1477 = !DILocation(line: 879, column: 13, scope: !1473, inlinedAt: !1374)
!1478 = !DILocation(line: 883, column: 9, scope: !1479, inlinedAt: !1374)
!1479 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 883, column: 9)
!1480 = !DILocation(line: 883, column: 34, scope: !1479, inlinedAt: !1374)
!1481 = !DILocation(line: 883, column: 9, scope: !1023, inlinedAt: !1374)
!1482 = !DILocation(line: 884, column: 9, scope: !1483, inlinedAt: !1374)
!1483 = distinct !DILexicalBlock(scope: !1479, file: !1, line: 883, column: 41)
!1484 = !DILocation(line: 885, column: 22, scope: !1483, inlinedAt: !1374)
!1485 = !DILocation(line: 885, column: 9, scope: !1483, inlinedAt: !1374)
!1486 = !DILocation(line: 886, column: 9, scope: !1483, inlinedAt: !1374)
!1487 = !DILocation(line: 888, column: 23, scope: !1023, inlinedAt: !1374)
!1488 = !DILocation(line: 864, column: 29, scope: !1023, inlinedAt: !1374)
!1489 = !DILocation(line: 889, column: 9, scope: !1490, inlinedAt: !1374)
!1490 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 889, column: 9)
!1491 = !DILocation(line: 889, column: 45, scope: !1490, inlinedAt: !1374)
!1492 = !DILocation(line: 889, column: 9, scope: !1023, inlinedAt: !1374)
!1493 = !DILocation(line: 890, column: 9, scope: !1494, inlinedAt: !1374)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !1, line: 889, column: 52)
!1495 = !DILocation(line: 891, column: 22, scope: !1494, inlinedAt: !1374)
!1496 = !DILocation(line: 891, column: 9, scope: !1494, inlinedAt: !1374)
!1497 = !DILocation(line: 892, column: 9, scope: !1494, inlinedAt: !1374)
!1498 = !DILocation(line: 821, column: 25, scope: !839, inlinedAt: !1499)
!1499 = distinct !DILocation(line: 894, column: 9, scope: !1500, inlinedAt: !1374)
!1500 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 894, column: 9)
!1501 = !DILocation(line: 823, column: 10, scope: !839, inlinedAt: !1499)
!1502 = !DILocation(line: 824, column: 7, scope: !839, inlinedAt: !1499)
!1503 = !DILocation(line: 822, column: 10, scope: !839, inlinedAt: !1499)
!1504 = !DILocation(line: 825, column: 16, scope: !839, inlinedAt: !1499)
!1505 = !DILocation(line: 825, column: 23, scope: !839, inlinedAt: !1499)
!1506 = !DILocation(line: 826, column: 16, scope: !839, inlinedAt: !1499)
!1507 = !DILocation(line: 826, column: 23, scope: !839, inlinedAt: !1499)
!1508 = !DILocation(line: 829, column: 14, scope: !839, inlinedAt: !1499)
!1509 = !DILocation(line: 829, column: 10, scope: !839, inlinedAt: !1499)
!1510 = !DILocation(line: 825, column: 7, scope: !839, inlinedAt: !1499)
!1511 = !DILocation(line: 826, column: 7, scope: !839, inlinedAt: !1499)
!1512 = !DILocation(line: 829, column: 7, scope: !839, inlinedAt: !1499)
!1513 = !DILocation(line: 894, column: 54, scope: !1500, inlinedAt: !1374)
!1514 = !DILocation(line: 894, column: 9, scope: !1023, inlinedAt: !1374)
!1515 = !DILocation(line: 896, column: 9, scope: !1516, inlinedAt: !1374)
!1516 = distinct !DILexicalBlock(scope: !1500, file: !1, line: 894, column: 69)
!1517 = !DILocation(line: 897, column: 22, scope: !1516, inlinedAt: !1374)
!1518 = !DILocation(line: 897, column: 9, scope: !1516, inlinedAt: !1374)
!1519 = !DILocation(line: 898, column: 9, scope: !1516, inlinedAt: !1374)
!1520 = !DILocation(line: 901, column: 63, scope: !1023, inlinedAt: !1374)
!1521 = !DILocation(line: 821, column: 25, scope: !839, inlinedAt: !1522)
!1522 = distinct !DILocation(line: 901, column: 19, scope: !1023, inlinedAt: !1374)
!1523 = !DILocation(line: 823, column: 10, scope: !839, inlinedAt: !1522)
!1524 = !DILocation(line: 824, column: 7, scope: !839, inlinedAt: !1522)
!1525 = !DILocation(line: 822, column: 10, scope: !839, inlinedAt: !1522)
!1526 = !DILocation(line: 825, column: 16, scope: !839, inlinedAt: !1522)
!1527 = !DILocation(line: 825, column: 23, scope: !839, inlinedAt: !1522)
!1528 = !DILocation(line: 826, column: 16, scope: !839, inlinedAt: !1522)
!1529 = !DILocation(line: 826, column: 23, scope: !839, inlinedAt: !1522)
!1530 = !DILocation(line: 829, column: 14, scope: !839, inlinedAt: !1522)
!1531 = !DILocation(line: 829, column: 10, scope: !839, inlinedAt: !1522)
!1532 = !DILocation(line: 825, column: 7, scope: !839, inlinedAt: !1522)
!1533 = !DILocation(line: 826, column: 7, scope: !839, inlinedAt: !1522)
!1534 = !DILocation(line: 829, column: 7, scope: !839, inlinedAt: !1522)
!1535 = !DILocation(line: 863, column: 37, scope: !1023, inlinedAt: !1374)
!1536 = !DILocation(line: 902, column: 65, scope: !1023, inlinedAt: !1374)
!1537 = !DILocation(line: 821, column: 25, scope: !839, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 902, column: 21, scope: !1023, inlinedAt: !1374)
!1539 = !DILocation(line: 823, column: 10, scope: !839, inlinedAt: !1538)
!1540 = !DILocation(line: 824, column: 7, scope: !839, inlinedAt: !1538)
!1541 = !DILocation(line: 822, column: 10, scope: !839, inlinedAt: !1538)
!1542 = !DILocation(line: 825, column: 16, scope: !839, inlinedAt: !1538)
!1543 = !DILocation(line: 825, column: 23, scope: !839, inlinedAt: !1538)
!1544 = !DILocation(line: 826, column: 16, scope: !839, inlinedAt: !1538)
!1545 = !DILocation(line: 826, column: 23, scope: !839, inlinedAt: !1538)
!1546 = !DILocation(line: 829, column: 14, scope: !839, inlinedAt: !1538)
!1547 = !DILocation(line: 829, column: 10, scope: !839, inlinedAt: !1538)
!1548 = !DILocation(line: 825, column: 7, scope: !839, inlinedAt: !1538)
!1549 = !DILocation(line: 826, column: 7, scope: !839, inlinedAt: !1538)
!1550 = !DILocation(line: 829, column: 7, scope: !839, inlinedAt: !1538)
!1551 = !DILocation(line: 864, column: 46, scope: !1023, inlinedAt: !1374)
!1552 = !DILocation(line: 903, column: 34, scope: !1023, inlinedAt: !1374)
!1553 = !DILocation(line: 903, column: 50, scope: !1023, inlinedAt: !1374)
!1554 = !DILocation(line: 871, column: 16, scope: !1023, inlinedAt: !1374)
!1555 = !DILocation(line: 906, column: 13, scope: !1023, inlinedAt: !1374)
!1556 = !DILocation(line: 907, column: 15, scope: !1557, inlinedAt: !1374)
!1557 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 907, column: 9)
!1558 = !DILocation(line: 907, column: 9, scope: !1023, inlinedAt: !1374)
!1559 = !DILocation(line: 1015, column: 5, scope: !1023, inlinedAt: !1374)
!1560 = !DILocation(line: 1016, column: 5, scope: !1561, inlinedAt: !1374)
!1561 = !DILexicalBlockFile(scope: !1101, file: !1, discriminator: 1)
!1562 = !DILocation(line: 1017, column: 5, scope: !1563, inlinedAt: !1374)
!1563 = !DILexicalBlockFile(scope: !1106, file: !1, discriminator: 1)
!1564 = !DILocation(line: 1017, column: 5, scope: !1106, inlinedAt: !1374)
!1565 = !DILocation(line: 904, column: 19, scope: !1023, inlinedAt: !1374)
!1566 = !DILocation(line: 865, column: 13, scope: !1023, inlinedAt: !1374)
!1567 = !DILocation(line: 912, column: 9, scope: !1568, inlinedAt: !1374)
!1568 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 912, column: 9)
!1569 = !DILocation(line: 912, column: 37, scope: !1568, inlinedAt: !1374)
!1570 = !DILocation(line: 912, column: 9, scope: !1023, inlinedAt: !1374)
!1571 = !DILocation(line: 919, column: 13, scope: !1063, inlinedAt: !1374)
!1572 = !DILocation(line: 134, column: 17, scope: !1375)
!1573 = !DILocation(line: 865, column: 10, scope: !1023, inlinedAt: !1374)
!1574 = !DILocation(line: 920, column: 21, scope: !1575, inlinedAt: !1374)
!1575 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 920, column: 13)
!1576 = !DILocation(line: 920, column: 24, scope: !1577, inlinedAt: !1374)
!1577 = !DILexicalBlockFile(scope: !1575, file: !1, discriminator: 1)
!1578 = !DILocation(line: 920, column: 13, scope: !1063, inlinedAt: !1374)
!1579 = !DILocation(line: 928, column: 13, scope: !1580, inlinedAt: !1374)
!1580 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 928, column: 13)
!1581 = !DILocation(line: 928, column: 36, scope: !1580, inlinedAt: !1374)
!1582 = !DILocation(line: 928, column: 13, scope: !1063, inlinedAt: !1374)
!1583 = !DILocation(line: 931, column: 33, scope: !1063, inlinedAt: !1374)
!1584 = !DILocation(line: 932, column: 20, scope: !1063, inlinedAt: !1374)
!1585 = !DILocation(line: 933, column: 16, scope: !1063, inlinedAt: !1374)
!1586 = !DILocation(line: 934, column: 16, scope: !1063, inlinedAt: !1374)
!1587 = !DILocation(line: 935, column: 15, scope: !1063, inlinedAt: !1374)
!1588 = !DILocation(line: 863, column: 10, scope: !1023, inlinedAt: !1374)
!1589 = !DILocation(line: 936, column: 21, scope: !1063, inlinedAt: !1374)
!1590 = !DILocation(line: 863, column: 15, scope: !1023, inlinedAt: !1374)
!1591 = !DILocation(line: 937, column: 21, scope: !1063, inlinedAt: !1374)
!1592 = !DILocation(line: 863, column: 26, scope: !1023, inlinedAt: !1374)
!1593 = !DILocation(line: 938, column: 21, scope: !1063, inlinedAt: !1374)
!1594 = !DILocation(line: 939, column: 23, scope: !1063, inlinedAt: !1374)
!1595 = !DILocation(line: 940, column: 12, scope: !1063, inlinedAt: !1374)
!1596 = !DILocation(line: 939, column: 33, scope: !1063, inlinedAt: !1374)
!1597 = !DILocation(line: 941, column: 12, scope: !1063, inlinedAt: !1374)
!1598 = !DILocation(line: 940, column: 44, scope: !1063, inlinedAt: !1374)
!1599 = !DILocation(line: 942, column: 13, scope: !1600, inlinedAt: !1374)
!1600 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 942, column: 13)
!1601 = !DILocation(line: 942, column: 36, scope: !1600, inlinedAt: !1374)
!1602 = !DILocation(line: 942, column: 13, scope: !1063, inlinedAt: !1374)
!1603 = !DILocation(line: 944, column: 23, scope: !1063, inlinedAt: !1374)
!1604 = !DILocation(line: 944, column: 54, scope: !1063, inlinedAt: !1374)
!1605 = !DILocation(line: 864, column: 16, scope: !1023, inlinedAt: !1374)
!1606 = !DILocation(line: 945, column: 13, scope: !1607, inlinedAt: !1374)
!1607 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 945, column: 13)
!1608 = !DILocation(line: 945, column: 13, scope: !1063, inlinedAt: !1374)
!1609 = !DILocation(line: 948, column: 23, scope: !1610, inlinedAt: !1374)
!1610 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 948, column: 13)
!1611 = !DILocation(line: 862, column: 33, scope: !1023, inlinedAt: !1374)
!1612 = !DILocation(line: 870, column: 11, scope: !1023, inlinedAt: !1374)
!1613 = !DILocation(line: 866, column: 16, scope: !1023, inlinedAt: !1374)
!1614 = !DILocation(line: 952, column: 25, scope: !1615, inlinedAt: !1374)
!1615 = distinct !DILexicalBlock(scope: !1616, file: !1, line: 952, column: 9)
!1616 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 952, column: 9)
!1617 = !DILocation(line: 952, column: 23, scope: !1615, inlinedAt: !1374)
!1618 = !DILocation(line: 952, column: 9, scope: !1616, inlinedAt: !1374)
!1619 = !DILocation(line: 953, column: 24, scope: !1620, inlinedAt: !1374)
!1620 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 952, column: 53)
!1621 = !DILocation(line: 953, column: 18, scope: !1620, inlinedAt: !1374)
!1622 = !DILocation(line: 954, column: 20, scope: !1623, inlinedAt: !1374)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 954, column: 17)
!1624 = !DILocation(line: 954, column: 17, scope: !1620, inlinedAt: !1374)
!1625 = !DILocation(line: 953, column: 16, scope: !1620, inlinedAt: !1374)
!1626 = !DILocation(line: 956, column: 14, scope: !1620, inlinedAt: !1374)
!1627 = !DILocation(line: 958, column: 12, scope: !1063, inlinedAt: !1374)
!1628 = !DILocation(line: 959, column: 18, scope: !1629, inlinedAt: !1374)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !1, line: 959, column: 9)
!1630 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 959, column: 9)
!1631 = !DILocation(line: 959, column: 9, scope: !1630, inlinedAt: !1374)
!1632 = !DILocation(line: 960, column: 16, scope: !1633, inlinedAt: !1374)
!1633 = distinct !DILexicalBlock(scope: !1629, file: !1, line: 960, column: 16)
!1634 = !DILocation(line: 960, column: 25, scope: !1633, inlinedAt: !1374)
!1635 = !DILocation(line: 959, column: 34, scope: !1629, inlinedAt: !1374)
!1636 = !DILocation(line: 960, column: 16, scope: !1629, inlinedAt: !1374)
!1637 = !DILocation(line: 874, column: 9, scope: !1023, inlinedAt: !1374)
!1638 = !DILocation(line: 964, column: 19, scope: !1070, inlinedAt: !1374)
!1639 = !DILocation(line: 964, column: 13, scope: !1063, inlinedAt: !1374)
!1640 = !DILocation(line: 966, column: 19, scope: !1068, inlinedAt: !1374)
!1641 = !{}
!1642 = !DILocation(line: 966, column: 19, scope: !1643, inlinedAt: !1374)
!1643 = !DILexicalBlockFile(scope: !1644, file: !1, discriminator: 6)
!1644 = !DILexicalBlockFile(scope: !1068, file: !1, discriminator: 5)
!1645 = !DILocation(line: 966, column: 40, scope: !1069, inlinedAt: !1374)
!1646 = !{!1647, !1252, i64 16}
!1647 = !{!"_ts", !1252, i64 0, !1252, i64 8, !1252, i64 16, !1252, i64 24, !1232, i64 32, !1226, i64 36, !1226, i64 37, !1232, i64 40, !1232, i64 44, !1252, i64 48, !1252, i64 56, !1252, i64 64, !1252, i64 72, !1252, i64 80, !1252, i64 88, !1252, i64 96, !1252, i64 104, !1252, i64 112, !1252, i64 120, !1252, i64 128, !1232, i64 136, !1252, i64 144, !1262, i64 152, !1232, i64 160, !1252, i64 168, !1252, i64 176, !1252, i64 184}
!1648 = !DILocation(line: 966, column: 48, scope: !1069, inlinedAt: !1374)
!1649 = !{!1650, !1232, i64 80}
!1650 = !{!"_is", !1252, i64 0, !1252, i64 8, !1252, i64 16, !1252, i64 24, !1252, i64 32, !1252, i64 40, !1252, i64 48, !1252, i64 56, !1252, i64 64, !1252, i64 72, !1232, i64 80, !1232, i64 84, !1232, i64 88, !1252, i64 96}
!1651 = !DILocation(line: 966, column: 19, scope: !1069, inlinedAt: !1374)
!1652 = !DILocation(line: 873, column: 17, scope: !1023, inlinedAt: !1374)
!1653 = !DILocation(line: 966, column: 18, scope: !1070, inlinedAt: !1374)
!1654 = !DILocation(line: 978, column: 19, scope: !1063, inlinedAt: !1374)
!1655 = !DILocation(line: 979, column: 21, scope: !1656, inlinedAt: !1374)
!1656 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 979, column: 13)
!1657 = !DILocation(line: 979, column: 13, scope: !1063, inlinedAt: !1374)
!1658 = !DILocation(line: 980, column: 17, scope: !1659, inlinedAt: !1374)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !1, line: 980, column: 17)
!1660 = distinct !DILexicalBlock(scope: !1656, file: !1, line: 979, column: 30)
!1661 = !DILocation(line: 980, column: 17, scope: !1660, inlinedAt: !1374)
!1662 = !DILocation(line: 981, column: 30, scope: !1659, inlinedAt: !1374)
!1663 = !DILocation(line: 981, column: 17, scope: !1659, inlinedAt: !1374)
!1664 = !DILocation(line: 987, column: 13, scope: !1665, inlinedAt: !1374)
!1665 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 987, column: 13)
!1666 = !DILocation(line: 987, column: 13, scope: !1667, inlinedAt: !1374)
!1667 = !DILexicalBlockFile(scope: !1665, file: !1, discriminator: 2)
!1668 = !DILocation(line: 987, column: 38, scope: !1669, inlinedAt: !1374)
!1669 = !DILexicalBlockFile(scope: !1670, file: !1, discriminator: 4)
!1670 = !DILexicalBlockFile(scope: !1665, file: !1, discriminator: 3)
!1671 = !DILocation(line: 987, column: 13, scope: !1063, inlinedAt: !1374)
!1672 = !DILocation(line: 989, column: 16, scope: !1063, inlinedAt: !1374)
!1673 = !DILocation(line: 872, column: 15, scope: !1023, inlinedAt: !1374)
!1674 = !DILocation(line: 990, column: 18, scope: !1675, inlinedAt: !1374)
!1675 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 990, column: 13)
!1676 = !DILocation(line: 990, column: 13, scope: !1063, inlinedAt: !1374)
!1677 = !DILocation(line: 992, column: 45, scope: !1063, inlinedAt: !1374)
!1678 = !DILocation(line: 993, column: 51, scope: !1063, inlinedAt: !1374)
!1679 = !DILocation(line: 993, column: 57, scope: !1063, inlinedAt: !1374)
!1680 = !DILocation(line: 992, column: 13, scope: !1063, inlinedAt: !1374)
!1681 = !DILocation(line: 915, column: 19, scope: !1063, inlinedAt: !1374)
!1682 = !DILocation(line: 994, column: 15, scope: !1683, inlinedAt: !1374)
!1683 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 994, column: 13)
!1684 = !DILocation(line: 994, column: 13, scope: !1063, inlinedAt: !1374)
!1685 = !DILocation(line: 996, column: 15, scope: !1063, inlinedAt: !1374)
!1686 = !DILocation(line: 916, column: 13, scope: !1063, inlinedAt: !1374)
!1687 = !DILocation(line: 997, column: 9, scope: !1688, inlinedAt: !1374)
!1688 = !DILexicalBlockFile(scope: !1083, file: !1, discriminator: 1)
!1689 = !DILocation(line: 997, column: 9, scope: !1690, inlinedAt: !1374)
!1690 = !DILexicalBlockFile(scope: !1085, file: !1, discriminator: 4)
!1691 = !DILocation(line: 997, column: 9, scope: !1692, inlinedAt: !1374)
!1692 = distinct !DILexicalBlock(scope: !1085, file: !1, line: 997, column: 9)
!1693 = !DILocation(line: 997, column: 9, scope: !1085, inlinedAt: !1374)
!1694 = !DILocation(line: 997, column: 9, scope: !1695, inlinedAt: !1374)
!1695 = !DILexicalBlockFile(scope: !1692, file: !1, discriminator: 6)
!1696 = !DILocation(line: 998, column: 9, scope: !1697, inlinedAt: !1374)
!1697 = !DILexicalBlockFile(scope: !1089, file: !1, discriminator: 1)
!1698 = !DILocation(line: 998, column: 9, scope: !1699, inlinedAt: !1374)
!1699 = distinct !DILexicalBlock(scope: !1089, file: !1, line: 998, column: 9)
!1700 = !DILocation(line: 998, column: 9, scope: !1089, inlinedAt: !1374)
!1701 = !DILocation(line: 998, column: 9, scope: !1702, inlinedAt: !1374)
!1702 = !DILexicalBlockFile(scope: !1699, file: !1, discriminator: 3)
!1703 = !DILocation(line: 999, column: 17, scope: !1704, inlinedAt: !1374)
!1704 = distinct !DILexicalBlock(scope: !1063, file: !1, line: 999, column: 13)
!1705 = !DILocation(line: 999, column: 13, scope: !1063, inlinedAt: !1374)
!1706 = !DILocation(line: 1003, column: 5, scope: !1023, inlinedAt: !1374)
!1707 = !DILocation(line: 1004, column: 9, scope: !1708, inlinedAt: !1374)
!1708 = distinct !DILexicalBlock(scope: !1023, file: !1, line: 1004, column: 9)
!1709 = !DILocation(line: 1004, column: 9, scope: !1023, inlinedAt: !1374)
!1710 = !DILocation(line: 1005, column: 9, scope: !1708, inlinedAt: !1374)
!1711 = !DILocation(line: 1009, column: 5, scope: !1023, inlinedAt: !1374)
!1712 = !DILocation(line: 1010, column: 5, scope: !1713, inlinedAt: !1374)
!1713 = !DILexicalBlockFile(scope: !1091, file: !1, discriminator: 1)
!1714 = !DILocation(line: 1010, column: 5, scope: !1715, inlinedAt: !1374)
!1715 = !DILexicalBlockFile(scope: !1093, file: !1, discriminator: 4)
!1716 = !DILocation(line: 1010, column: 5, scope: !1717, inlinedAt: !1374)
!1717 = distinct !DILexicalBlock(scope: !1093, file: !1, line: 1010, column: 5)
!1718 = !DILocation(line: 1010, column: 5, scope: !1093, inlinedAt: !1374)
!1719 = !DILocation(line: 1010, column: 5, scope: !1720, inlinedAt: !1374)
!1720 = !DILexicalBlockFile(scope: !1717, file: !1, discriminator: 6)
!1721 = !DILocation(line: 1011, column: 5, scope: !1722, inlinedAt: !1374)
!1722 = !DILexicalBlockFile(scope: !1096, file: !1, discriminator: 1)
!1723 = !DILocation(line: 1012, column: 18, scope: !1023, inlinedAt: !1374)
!1724 = !DILocation(line: 1012, column: 5, scope: !1023, inlinedAt: !1374)
!1725 = !DILocation(line: 1013, column: 5, scope: !1023, inlinedAt: !1374)
!1726 = !DILocation(line: 1016, column: 5, scope: !1727, inlinedAt: !1374)
!1727 = !DILexicalBlockFile(scope: !1103, file: !1, discriminator: 4)
!1728 = !DILocation(line: 1016, column: 5, scope: !1729, inlinedAt: !1374)
!1729 = distinct !DILexicalBlock(scope: !1103, file: !1, line: 1016, column: 5)
!1730 = !DILocation(line: 1016, column: 5, scope: !1103, inlinedAt: !1374)
!1731 = !DILocation(line: 1016, column: 5, scope: !1732, inlinedAt: !1374)
!1732 = !DILexicalBlockFile(scope: !1729, file: !1, discriminator: 6)
!1733 = !DILocation(line: 1017, column: 5, scope: !1109, inlinedAt: !1374)
!1734 = !DILocation(line: 1017, column: 5, scope: !1735, inlinedAt: !1374)
!1735 = !DILexicalBlockFile(scope: !1108, file: !1, discriminator: 4)
!1736 = !DILocation(line: 1017, column: 5, scope: !1737, inlinedAt: !1374)
!1737 = distinct !DILexicalBlock(scope: !1108, file: !1, line: 1017, column: 5)
!1738 = !DILocation(line: 1017, column: 5, scope: !1108, inlinedAt: !1374)
!1739 = !DILocation(line: 1017, column: 5, scope: !1740, inlinedAt: !1374)
!1740 = !DILexicalBlockFile(scope: !1737, file: !1, discriminator: 6)
!1741 = !DILocation(line: 1019, column: 1, scope: !1023, inlinedAt: !1374)
!1742 = !DILocation(line: 135, column: 19, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 135, column: 13)
!1744 = !DILocation(line: 135, column: 13, scope: !1375)
!1745 = !DILocation(line: 137, column: 28, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1375, file: !1, line: 137, column: 13)
!1747 = !DILocation(line: 137, column: 13, scope: !1746)
!1748 = !DILocation(line: 137, column: 66, scope: !1746)
!1749 = !DILocation(line: 137, column: 13, scope: !1375)
!1750 = !DILocation(line: 141, column: 9, scope: !1376)
!1751 = !DILocation(line: 142, column: 11, scope: !943)
!1752 = !DILocation(line: 142, column: 17, scope: !943)
!1753 = !DILocation(line: 145, column: 11, scope: !943)
!1754 = !DILocation(line: 145, column: 19, scope: !943)
!1755 = !DILocation(line: 149, column: 14, scope: !1013)
!1756 = !DILocation(line: 149, column: 9, scope: !943)
!1757 = !DILocation(line: 150, column: 35, scope: !1012)
!1758 = !DILocation(line: 150, column: 45, scope: !1012)
!1759 = !DILocation(line: 151, column: 35, scope: !1012)
!1760 = !DILocation(line: 157, column: 54, scope: !1010)
!1761 = !DILocation(line: 70, column: 30, scope: !943)
!1762 = !DILocation(line: 152, column: 17, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1012, file: !1, line: 152, column: 13)
!1764 = !DILocation(line: 152, column: 13, scope: !1012)
!1765 = !DILocation(line: 154, column: 15, scope: !1012)
!1766 = !DILocation(line: 154, column: 22, scope: !1012)
!1767 = !DILocation(line: 155, column: 13, scope: !1011)
!1768 = !DILocation(line: 155, column: 13, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 1)
!1770 = !DILocation(line: 155, column: 13, scope: !1771)
!1771 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 3)
!1772 = !DILocation(line: 155, column: 13, scope: !1773)
!1773 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 5)
!1774 = !DILocation(line: 155, column: 13, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 6)
!1776 = !DILocation(line: 155, column: 13, scope: !1777)
!1777 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 4)
!1778 = !DILocation(line: 155, column: 13, scope: !1779)
!1779 = !DILexicalBlockFile(scope: !1780, file: !1, discriminator: 10)
!1780 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 9)
!1781 = !DILocation(line: 155, column: 13, scope: !1782)
!1782 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 2)
!1783 = !DILocation(line: 155, column: 13, scope: !1784)
!1784 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 12)
!1785 = !DILocation(line: 155, column: 13, scope: !1786)
!1786 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 14)
!1787 = !DILocation(line: 155, column: 13, scope: !1788)
!1788 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 16)
!1789 = !DILocation(line: 155, column: 13, scope: !1790)
!1790 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 17)
!1791 = !DILocation(line: 155, column: 13, scope: !1792)
!1792 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 15)
!1793 = !DILocation(line: 155, column: 13, scope: !1794)
!1794 = !DILexicalBlockFile(scope: !1795, file: !1, discriminator: 21)
!1795 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 20)
!1796 = !{!1797, !1797, i64 0}
!1797 = !{!"short", !1226, i64 0}
!1798 = !DILocation(line: 155, column: 13, scope: !1799)
!1799 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 13)
!1800 = !DILocation(line: 155, column: 13, scope: !1801)
!1801 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 23)
!1802 = !DILocation(line: 155, column: 13, scope: !1803)
!1803 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 25)
!1804 = !DILocation(line: 155, column: 13, scope: !1805)
!1805 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 26)
!1806 = !DILocation(line: 155, column: 13, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 24)
!1808 = !DILocation(line: 155, column: 13, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1810, file: !1, discriminator: 30)
!1810 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 29)
!1811 = !DILocation(line: 155, column: 46, scope: !1812)
!1812 = !DILexicalBlockFile(scope: !1813, file: !1, discriminator: 32)
!1813 = !DILexicalBlockFile(scope: !1011, file: !1, discriminator: 11)
!1814 = !DILocation(line: 155, column: 13, scope: !1012)
!1815 = !DILocation(line: 157, column: 19, scope: !1010)
!1816 = !DILocation(line: 158, column: 21, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1010, file: !1, line: 158, column: 17)
!1818 = !DILocation(line: 158, column: 17, scope: !1010)
!1819 = !DILocation(line: 160, column: 13, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1009, file: !1, discriminator: 1)
!1821 = !DILocation(line: 160, column: 13, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1009, file: !1, line: 160, column: 13)
!1823 = !DILocation(line: 160, column: 13, scope: !1009)
!1824 = !DILocation(line: 160, column: 13, scope: !1825)
!1825 = !DILexicalBlockFile(scope: !1822, file: !1, discriminator: 3)
!1826 = !DILocation(line: 161, column: 26, scope: !1010)
!1827 = !DILocation(line: 162, column: 9, scope: !1010)
!1828 = !DILocation(line: 165, column: 24, scope: !1013)
!1829 = !DILocation(line: 165, column: 15, scope: !1013)
!1830 = !DILocation(line: 165, column: 22, scope: !1013)
!1831 = !DILocation(line: 166, column: 5, scope: !1832)
!1832 = !DILexicalBlockFile(scope: !1015, file: !1, discriminator: 1)
!1833 = !DILocation(line: 166, column: 5, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1015, file: !1, line: 166, column: 5)
!1835 = !DILocation(line: 166, column: 5, scope: !1015)
!1836 = !DILocation(line: 166, column: 5, scope: !1837)
!1837 = !DILexicalBlockFile(scope: !1834, file: !1, discriminator: 3)
!1838 = !DILocation(line: 170, column: 5, scope: !1839)
!1839 = !DILexicalBlockFile(scope: !1017, file: !1, discriminator: 1)
!1840 = !DILocation(line: 170, column: 5, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !1017, file: !1, line: 170, column: 5)
!1842 = !DILocation(line: 170, column: 5, scope: !1017)
!1843 = !DILocation(line: 170, column: 5, scope: !1844)
!1844 = !DILexicalBlockFile(scope: !1841, file: !1, discriminator: 3)
!1845 = !DILocation(line: 171, column: 5, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1019, file: !1, discriminator: 1)
!1847 = !DILocation(line: 171, column: 5, scope: !1022)
!1848 = !DILocation(line: 171, column: 5, scope: !1019)
!1849 = !DILocation(line: 171, column: 5, scope: !1850)
!1850 = !DILexicalBlockFile(scope: !1021, file: !1, discriminator: 4)
!1851 = !DILocation(line: 171, column: 5, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1021, file: !1, line: 171, column: 5)
!1853 = !DILocation(line: 171, column: 5, scope: !1021)
!1854 = !DILocation(line: 171, column: 5, scope: !1855)
!1855 = !DILexicalBlockFile(scope: !1852, file: !1, discriminator: 6)
!1856 = !DILocation(line: 173, column: 1, scope: !943)
!1857 = !DILocation(line: 379, column: 35, scope: !558)
!1858 = !DILocation(line: 379, column: 50, scope: !558)
!1859 = !DILocation(line: 381, column: 18, scope: !558)
!1860 = !DILocation(line: 382, column: 5, scope: !558)
!1861 = !DILocation(line: 382, column: 15, scope: !558)
!1862 = !DILocation(line: 383, column: 5, scope: !558)
!1863 = !DILocation(line: 384, column: 5, scope: !558)
!1864 = !DILocation(line: 384, column: 15, scope: !558)
!1865 = !DILocation(line: 385, column: 15, scope: !558)
!1866 = !DILocation(line: 383, column: 15, scope: !558)
!1867 = !DILocation(line: 387, column: 10, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !558, file: !1, line: 387, column: 9)
!1869 = !DILocation(line: 387, column: 9, scope: !558)
!1870 = !DILocation(line: 381, column: 25, scope: !558)
!1871 = !DILocation(line: 390, column: 31, scope: !558)
!1872 = !DILocation(line: 390, column: 13, scope: !558)
!1873 = !DILocation(line: 390, column: 5, scope: !558)
!1874 = !DILocation(line: 395, column: 9, scope: !1875)
!1875 = !DILexicalBlockFile(scope: !568, file: !1, discriminator: 1)
!1876 = !DILocation(line: 395, column: 9, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !568, file: !1, line: 395, column: 9)
!1878 = !DILocation(line: 395, column: 9, scope: !568)
!1879 = !DILocation(line: 395, column: 9, scope: !1880)
!1880 = !DILexicalBlockFile(scope: !1877, file: !1, discriminator: 3)
!1881 = !DILocation(line: 399, column: 9, scope: !569)
!1882 = !DILocation(line: 402, column: 9, scope: !569)
!1883 = !DILocation(line: 404, column: 5, scope: !558)
!1884 = !DILocation(line: 405, column: 5, scope: !558)
!1885 = !DILocation(line: 406, column: 1, scope: !558)
!1886 = !DILocation(line: 415, column: 35, scope: !636)
!1887 = !DILocation(line: 415, column: 50, scope: !636)
!1888 = !DILocation(line: 417, column: 18, scope: !636)
!1889 = !DILocation(line: 418, column: 5, scope: !636)
!1890 = !DILocation(line: 418, column: 15, scope: !636)
!1891 = !DILocation(line: 419, column: 5, scope: !636)
!1892 = !DILocation(line: 420, column: 15, scope: !636)
!1893 = !DILocation(line: 421, column: 5, scope: !636)
!1894 = !DILocation(line: 421, column: 15, scope: !636)
!1895 = !DILocation(line: 419, column: 15, scope: !636)
!1896 = !DILocation(line: 423, column: 10, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !636, file: !1, line: 423, column: 9)
!1898 = !DILocation(line: 423, column: 9, scope: !636)
!1899 = !DILocation(line: 417, column: 25, scope: !636)
!1900 = !DILocation(line: 426, column: 31, scope: !636)
!1901 = !DILocation(line: 426, column: 13, scope: !636)
!1902 = !DILocation(line: 426, column: 5, scope: !636)
!1903 = !DILocation(line: 430, column: 18, scope: !647)
!1904 = !DILocation(line: 431, column: 9, scope: !647)
!1905 = !DILocation(line: 433, column: 18, scope: !647)
!1906 = !DILocation(line: 434, column: 9, scope: !647)
!1907 = !DILocation(line: 436, column: 49, scope: !647)
!1908 = !DILocation(line: 436, column: 18, scope: !647)
!1909 = !DILocation(line: 437, column: 9, scope: !1910)
!1910 = !DILexicalBlockFile(scope: !646, file: !1, discriminator: 1)
!1911 = !DILocation(line: 437, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !646, file: !1, line: 437, column: 9)
!1913 = !DILocation(line: 437, column: 9, scope: !646)
!1914 = !DILocation(line: 437, column: 9, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1912, file: !1, discriminator: 3)
!1916 = !DILocation(line: 441, column: 1, scope: !636)
!1917 = !DILocation(line: 445, column: 35, scope: !648)
!1918 = !DILocation(line: 445, column: 50, scope: !648)
!1919 = !DILocation(line: 447, column: 25, scope: !648)
!1920 = !DILocation(line: 447, column: 18, scope: !648)
!1921 = !DILocation(line: 448, column: 15, scope: !648)
!1922 = !DILocation(line: 449, column: 5, scope: !648)
!1923 = !DILocation(line: 450, column: 5, scope: !648)
!1924 = !DILocation(line: 450, column: 15, scope: !648)
!1925 = !DILocation(line: 451, column: 5, scope: !648)
!1926 = !DILocation(line: 449, column: 15, scope: !648)
!1927 = !DILocation(line: 453, column: 10, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !648, file: !1, line: 453, column: 9)
!1929 = !DILocation(line: 453, column: 9, scope: !648)
!1930 = !DILocation(line: 456, column: 9, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !648, file: !1, line: 456, column: 9)
!1932 = !DILocation(line: 456, column: 9, scope: !1933)
!1933 = !DILexicalBlockFile(scope: !1931, file: !1, discriminator: 2)
!1934 = !DILocation(line: 456, column: 35, scope: !1935)
!1935 = !DILexicalBlockFile(scope: !1936, file: !1, discriminator: 4)
!1936 = !DILexicalBlockFile(scope: !1931, file: !1, discriminator: 3)
!1937 = !DILocation(line: 456, column: 9, scope: !648)
!1938 = !DILocation(line: 459, column: 34, scope: !648)
!1939 = !DILocation(line: 451, column: 9, scope: !648)
!1940 = !DILocation(line: 459, column: 12, scope: !648)
!1941 = !DILocation(line: 460, column: 14, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !648, file: !1, line: 460, column: 9)
!1943 = !DILocation(line: 460, column: 9, scope: !648)
!1944 = !DILocation(line: 463, column: 36, scope: !648)
!1945 = !DILocation(line: 463, column: 11, scope: !648)
!1946 = !DILocation(line: 448, column: 29, scope: !648)
!1947 = !DILocation(line: 464, column: 13, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !648, file: !1, line: 464, column: 9)
!1949 = !DILocation(line: 464, column: 9, scope: !648)
!1950 = !DILocation(line: 466, column: 12, scope: !648)
!1951 = !DILocation(line: 448, column: 35, scope: !648)
!1952 = !DILocation(line: 469, column: 9, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !648, file: !1, line: 469, column: 9)
!1954 = !DILocation(line: 469, column: 68, scope: !1953)
!1955 = !DILocation(line: 469, column: 9, scope: !648)
!1956 = !DILocation(line: 472, column: 9, scope: !661)
!1957 = !DILocation(line: 472, column: 9, scope: !648)
!1958 = !DILocation(line: 478, column: 31, scope: !660)
!1959 = !DILocation(line: 209, column: 23, scope: !612, inlinedAt: !1960)
!1960 = distinct !DILocation(line: 478, column: 19, scope: !660)
!1961 = !DILocation(line: 212, column: 9, scope: !1962, inlinedAt: !1960)
!1962 = distinct !DILexicalBlock(scope: !612, file: !1, line: 212, column: 9)
!1963 = !DILocation(line: 212, column: 9, scope: !1964, inlinedAt: !1960)
!1964 = !DILexicalBlockFile(scope: !1962, file: !1, discriminator: 2)
!1965 = !DILocation(line: 212, column: 9, scope: !612, inlinedAt: !1960)
!1966 = !DILocation(line: 214, column: 11, scope: !612, inlinedAt: !1960)
!1967 = !DILocation(line: 211, column: 16, scope: !612, inlinedAt: !1960)
!1968 = !DILocation(line: 215, column: 11, scope: !612, inlinedAt: !1960)
!1969 = !DILocation(line: 211, column: 21, scope: !612, inlinedAt: !1960)
!1970 = !DILocation(line: 216, column: 13, scope: !1971, inlinedAt: !1960)
!1971 = distinct !DILexicalBlock(scope: !612, file: !1, line: 216, column: 9)
!1972 = !DILocation(line: 216, column: 9, scope: !612, inlinedAt: !1960)
!1973 = !DILocation(line: 217, column: 9, scope: !1974, inlinedAt: !1960)
!1974 = distinct !DILexicalBlock(scope: !1971, file: !1, line: 216, column: 20)
!1975 = !DILocation(line: 475, column: 40, scope: !660)
!1976 = !DILocation(line: 479, column: 13, scope: !660)
!1977 = !DILocation(line: 220, column: 49, scope: !1971, inlinedAt: !1960)
!1978 = !DILocation(line: 220, column: 16, scope: !1971, inlinedAt: !1960)
!1979 = !DILocation(line: 479, column: 21, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !660, file: !1, line: 479, column: 13)
!1981 = !DILocation(line: 483, column: 39, scope: !660)
!1982 = !DILocation(line: 484, column: 39, scope: !660)
!1983 = !DILocation(line: 482, column: 20, scope: !660)
!1984 = !DILocation(line: 475, column: 29, scope: !660)
!1985 = !DILocation(line: 485, column: 9, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !666, file: !1, discriminator: 1)
!1987 = !DILocation(line: 485, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !666, file: !1, line: 485, column: 9)
!1989 = !DILocation(line: 485, column: 9, scope: !666)
!1990 = !DILocation(line: 485, column: 9, scope: !1991)
!1991 = !DILexicalBlockFile(scope: !1988, file: !1, discriminator: 3)
!1992 = !DILocation(line: 486, column: 22, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !660, file: !1, line: 486, column: 13)
!1994 = !DILocation(line: 486, column: 13, scope: !660)
!1995 = !DILocation(line: 489, column: 19, scope: !660)
!1996 = !DILocation(line: 475, column: 19, scope: !660)
!1997 = !DILocation(line: 490, column: 21, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !660, file: !1, line: 490, column: 13)
!1999 = !DILocation(line: 490, column: 13, scope: !660)
!2000 = !DILocation(line: 492, column: 15, scope: !660)
!2001 = !DILocation(line: 476, column: 13, scope: !660)
!2002 = !DILocation(line: 493, column: 9, scope: !2003)
!2003 = !DILexicalBlockFile(scope: !668, file: !1, discriminator: 1)
!2004 = !DILocation(line: 493, column: 9, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !668, file: !1, line: 493, column: 9)
!2006 = !DILocation(line: 493, column: 9, scope: !668)
!2007 = !DILocation(line: 493, column: 9, scope: !2008)
!2008 = !DILexicalBlockFile(scope: !2005, file: !1, discriminator: 3)
!2009 = !DILocation(line: 494, column: 17, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !660, file: !1, line: 494, column: 13)
!2011 = !DILocation(line: 497, column: 41, scope: !648)
!2012 = !DILocation(line: 497, column: 57, scope: !648)
!2013 = !DILocation(line: 497, column: 11, scope: !648)
!2014 = !DILocation(line: 498, column: 5, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !670, file: !1, discriminator: 1)
!2016 = !DILocation(line: 498, column: 5, scope: !2017)
!2017 = !DILexicalBlockFile(scope: !672, file: !1, discriminator: 4)
!2018 = !DILocation(line: 498, column: 5, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !672, file: !1, line: 498, column: 5)
!2020 = !DILocation(line: 498, column: 5, scope: !672)
!2021 = !DILocation(line: 498, column: 5, scope: !2022)
!2022 = !DILexicalBlockFile(scope: !2019, file: !1, discriminator: 6)
!2023 = !DILocation(line: 499, column: 13, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !648, file: !1, line: 499, column: 9)
!2025 = !DILocation(line: 499, column: 9, scope: !648)
!2026 = !DILocation(line: 502, column: 9, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !648, file: !1, line: 502, column: 9)
!2028 = !DILocation(line: 502, column: 9, scope: !648)
!2029 = !DILocation(line: 504, column: 28, scope: !2027)
!2030 = !DILocation(line: 504, column: 38, scope: !2027)
!2031 = !DILocation(line: 503, column: 9, scope: !2027)
!2032 = !DILocation(line: 505, column: 5, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !676, file: !1, discriminator: 1)
!2034 = !DILocation(line: 505, column: 5, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !676, file: !1, line: 505, column: 5)
!2036 = !DILocation(line: 505, column: 5, scope: !676)
!2037 = !DILocation(line: 505, column: 5, scope: !2038)
!2038 = !DILexicalBlockFile(scope: !2035, file: !1, discriminator: 3)
!2039 = !DILocation(line: 508, column: 5, scope: !2040)
!2040 = !DILexicalBlockFile(scope: !680, file: !1, discriminator: 4)
!2041 = !DILocation(line: 508, column: 5, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !680, file: !1, line: 508, column: 5)
!2043 = !DILocation(line: 508, column: 5, scope: !680)
!2044 = !DILocation(line: 508, column: 5, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !2042, file: !1, discriminator: 6)
!2046 = !DILocation(line: 509, column: 5, scope: !2047)
!2047 = !DILexicalBlockFile(scope: !683, file: !1, discriminator: 1)
!2048 = !DILocation(line: 509, column: 5, scope: !686)
!2049 = !DILocation(line: 509, column: 5, scope: !683)
!2050 = !DILocation(line: 509, column: 5, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !685, file: !1, discriminator: 4)
!2052 = !DILocation(line: 509, column: 5, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !685, file: !1, line: 509, column: 5)
!2054 = !DILocation(line: 509, column: 5, scope: !685)
!2055 = !DILocation(line: 509, column: 5, scope: !2056)
!2056 = !DILexicalBlockFile(scope: !2053, file: !1, discriminator: 6)
!2057 = !DILocation(line: 511, column: 1, scope: !648)
!2058 = !DILocation(line: 559, column: 32, scope: !875)
!2059 = !DILocation(line: 559, column: 47, scope: !875)
!2060 = !DILocation(line: 562, column: 5, scope: !875)
!2061 = !DILocation(line: 562, column: 15, scope: !875)
!2062 = !DILocation(line: 566, column: 10, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !875, file: !1, line: 566, column: 9)
!2064 = !DILocation(line: 566, column: 9, scope: !875)
!2065 = !DILocation(line: 574, column: 5, scope: !875)
!2066 = !DILocation(line: 576, column: 9, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !875, file: !1, line: 576, column: 9)
!2068 = !DILocation(line: 576, column: 9, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !2067, file: !1, discriminator: 2)
!2070 = !DILocation(line: 576, column: 31, scope: !2071)
!2071 = !DILexicalBlockFile(scope: !2072, file: !1, discriminator: 4)
!2072 = !DILexicalBlockFile(scope: !2067, file: !1, discriminator: 3)
!2073 = !DILocation(line: 576, column: 9, scope: !875)
!2074 = !DILocation(line: 579, column: 16, scope: !875)
!2075 = !DILocation(line: 564, column: 28, scope: !875)
!2076 = !DILocation(line: 581, column: 11, scope: !875)
!2077 = !DILocation(line: 564, column: 38, scope: !875)
!2078 = !DILocation(line: 564, column: 16, scope: !875)
!2079 = !DILocation(line: 583, column: 9, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !875, file: !1, line: 583, column: 9)
!2081 = !DILocation(line: 588, column: 31, scope: !875)
!2082 = !DILocation(line: 584, column: 9, scope: !2080)
!2083 = !DILocation(line: 584, column: 12, scope: !2084)
!2084 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 1)
!2085 = !DILocation(line: 584, column: 12, scope: !2086)
!2086 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 2)
!2087 = !DILocation(line: 584, column: 12, scope: !2088)
!2088 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 4)
!2089 = !DILocation(line: 584, column: 12, scope: !2090)
!2090 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 6)
!2091 = !DILocation(line: 584, column: 12, scope: !2092)
!2092 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 7)
!2093 = !DILocation(line: 584, column: 12, scope: !2094)
!2094 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 5)
!2095 = !DILocation(line: 584, column: 12, scope: !2080)
!2096 = !DILocation(line: 584, column: 12, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !2098, file: !1, discriminator: 11)
!2098 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 10)
!2099 = !DILocation(line: 584, column: 12, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 3)
!2101 = !DILocation(line: 584, column: 12, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 13)
!2103 = !DILocation(line: 584, column: 12, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 15)
!2105 = !DILocation(line: 584, column: 12, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 17)
!2107 = !DILocation(line: 584, column: 12, scope: !2108)
!2108 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 18)
!2109 = !DILocation(line: 584, column: 12, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 16)
!2111 = !DILocation(line: 584, column: 12, scope: !2112)
!2112 = !DILexicalBlockFile(scope: !2113, file: !1, discriminator: 22)
!2113 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 21)
!2114 = !DILocation(line: 584, column: 12, scope: !2115)
!2115 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 14)
!2116 = !DILocation(line: 584, column: 12, scope: !2117)
!2117 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 24)
!2118 = !DILocation(line: 584, column: 12, scope: !2119)
!2119 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 26)
!2120 = !DILocation(line: 584, column: 12, scope: !2121)
!2121 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 27)
!2122 = !DILocation(line: 584, column: 12, scope: !2123)
!2123 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 25)
!2124 = !DILocation(line: 584, column: 12, scope: !2125)
!2125 = !DILexicalBlockFile(scope: !2126, file: !1, discriminator: 31)
!2126 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 30)
!2127 = !DILocation(line: 584, column: 43, scope: !2128)
!2128 = !DILexicalBlockFile(scope: !2129, file: !1, discriminator: 33)
!2129 = !DILexicalBlockFile(scope: !2080, file: !1, discriminator: 12)
!2130 = !DILocation(line: 585, column: 26, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2080, file: !1, line: 584, column: 51)
!2132 = !DILocation(line: 583, column: 9, scope: !875)
!2133 = !DILocation(line: 588, column: 11, scope: !875)
!2134 = !DILocation(line: 562, column: 22, scope: !875)
!2135 = !DILocation(line: 589, column: 13, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !875, file: !1, line: 589, column: 9)
!2137 = !DILocation(line: 589, column: 9, scope: !875)
!2138 = !DILocation(line: 591, column: 38, scope: !875)
!2139 = !DILocation(line: 591, column: 17, scope: !875)
!2140 = !DILocation(line: 563, column: 15, scope: !875)
!2141 = !DILocation(line: 592, column: 19, scope: !889)
!2142 = !DILocation(line: 592, column: 9, scope: !875)
!2143 = !DILocation(line: 593, column: 46, scope: !888)
!2144 = !DILocation(line: 593, column: 9, scope: !888)
!2145 = !DILocation(line: 594, column: 9, scope: !2146)
!2146 = !DILexicalBlockFile(scope: !887, file: !1, discriminator: 1)
!2147 = !DILocation(line: 594, column: 9, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !887, file: !1, line: 594, column: 9)
!2149 = !DILocation(line: 594, column: 9, scope: !887)
!2150 = !DILocation(line: 594, column: 9, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !2148, file: !1, discriminator: 3)
!2152 = !DILocation(line: 597, column: 5, scope: !2153)
!2153 = !DILexicalBlockFile(scope: !891, file: !1, discriminator: 1)
!2154 = !DILocation(line: 597, column: 5, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !891, file: !1, line: 597, column: 5)
!2156 = !DILocation(line: 597, column: 5, scope: !891)
!2157 = !DILocation(line: 597, column: 5, scope: !2158)
!2158 = !DILexicalBlockFile(scope: !2155, file: !1, discriminator: 3)
!2159 = !DILocation(line: 598, column: 5, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !893, file: !1, discriminator: 1)
!2161 = !DILocation(line: 598, column: 5, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !893, file: !1, line: 598, column: 5)
!2163 = !DILocation(line: 598, column: 5, scope: !893)
!2164 = !DILocation(line: 598, column: 5, scope: !2165)
!2165 = !DILexicalBlockFile(scope: !2162, file: !1, discriminator: 3)
!2166 = !DILocation(line: 599, column: 27, scope: !875)
!2167 = !DILocation(line: 599, column: 12, scope: !875)
!2168 = !DILocation(line: 599, column: 5, scope: !875)
!2169 = !DILocation(line: 601, column: 5, scope: !2170)
!2170 = !DILexicalBlockFile(scope: !895, file: !1, discriminator: 1)
!2171 = !DILocation(line: 601, column: 5, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !895, file: !1, line: 601, column: 5)
!2173 = !DILocation(line: 601, column: 5, scope: !895)
!2174 = !DILocation(line: 601, column: 5, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2172, file: !1, discriminator: 3)
!2176 = !DILocation(line: 603, column: 1, scope: !875)
!2177 = !DILocation(line: 606, column: 32, scope: !896)
!2178 = !DILocation(line: 606, column: 47, scope: !896)
!2179 = !DILocation(line: 608, column: 18, scope: !896)
!2180 = !DILocation(line: 609, column: 5, scope: !896)
!2181 = !DILocation(line: 609, column: 15, scope: !896)
!2182 = !DILocation(line: 611, column: 10, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !896, file: !1, line: 611, column: 9)
!2184 = !DILocation(line: 611, column: 9, scope: !896)
!2185 = !DILocation(line: 608, column: 25, scope: !896)
!2186 = !DILocation(line: 614, column: 34, scope: !896)
!2187 = !DILocation(line: 614, column: 12, scope: !896)
!2188 = !DILocation(line: 614, column: 5, scope: !896)
!2189 = !DILocation(line: 615, column: 1, scope: !896)
!2190 = !DILocation(line: 618, column: 34, scope: !902)
!2191 = !DILocation(line: 618, column: 49, scope: !902)
!2192 = !DILocation(line: 620, column: 18, scope: !902)
!2193 = !DILocation(line: 622, column: 5, scope: !902)
!2194 = !DILocation(line: 622, column: 15, scope: !902)
!2195 = !DILocation(line: 625, column: 10, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !902, file: !1, line: 625, column: 9)
!2197 = !DILocation(line: 625, column: 9, scope: !902)
!2198 = !DILocation(line: 620, column: 25, scope: !902)
!2199 = !DILocation(line: 628, column: 32, scope: !902)
!2200 = !DILocation(line: 628, column: 10, scope: !902)
!2201 = !DILocation(line: 623, column: 25, scope: !902)
!2202 = !DILocation(line: 629, column: 9, scope: !902)
!2203 = !DILocation(line: 632, column: 22, scope: !2204)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !1, line: 631, column: 29)
!2205 = distinct !DILexicalBlock(scope: !902, file: !1, line: 631, column: 9)
!2206 = !DILocation(line: 632, column: 62, scope: !2204)
!2207 = !DILocation(line: 632, column: 9, scope: !2204)
!2208 = !DILocation(line: 633, column: 9, scope: !2204)
!2209 = !DILocation(line: 636, column: 27, scope: !902)
!2210 = !DILocation(line: 209, column: 23, scope: !612, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 636, column: 15, scope: !902)
!2212 = !DILocation(line: 212, column: 9, scope: !1962, inlinedAt: !2211)
!2213 = !DILocation(line: 212, column: 9, scope: !1964, inlinedAt: !2211)
!2214 = !DILocation(line: 212, column: 9, scope: !612, inlinedAt: !2211)
!2215 = !DILocation(line: 214, column: 11, scope: !612, inlinedAt: !2211)
!2216 = !DILocation(line: 211, column: 16, scope: !612, inlinedAt: !2211)
!2217 = !DILocation(line: 215, column: 11, scope: !612, inlinedAt: !2211)
!2218 = !DILocation(line: 211, column: 21, scope: !612, inlinedAt: !2211)
!2219 = !DILocation(line: 216, column: 13, scope: !1971, inlinedAt: !2211)
!2220 = !DILocation(line: 216, column: 9, scope: !612, inlinedAt: !2211)
!2221 = !DILocation(line: 217, column: 9, scope: !1974, inlinedAt: !2211)
!2222 = !DILocation(line: 622, column: 26, scope: !902)
!2223 = !DILocation(line: 637, column: 9, scope: !902)
!2224 = !DILocation(line: 220, column: 49, scope: !1971, inlinedAt: !2211)
!2225 = !DILocation(line: 220, column: 16, scope: !1971, inlinedAt: !2211)
!2226 = !DILocation(line: 637, column: 17, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !902, file: !1, line: 637, column: 9)
!2228 = !DILocation(line: 640, column: 32, scope: !902)
!2229 = !DILocation(line: 640, column: 12, scope: !902)
!2230 = !DILocation(line: 622, column: 36, scope: !902)
!2231 = !DILocation(line: 641, column: 5, scope: !2232)
!2232 = !DILexicalBlockFile(scope: !914, file: !1, discriminator: 1)
!2233 = !DILocation(line: 641, column: 5, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !914, file: !1, line: 641, column: 5)
!2235 = !DILocation(line: 641, column: 5, scope: !914)
!2236 = !DILocation(line: 641, column: 5, scope: !2237)
!2237 = !DILexicalBlockFile(scope: !2234, file: !1, discriminator: 3)
!2238 = !DILocation(line: 642, column: 14, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !902, file: !1, line: 642, column: 9)
!2240 = !DILocation(line: 642, column: 9, scope: !902)
!2241 = !DILocation(line: 645, column: 12, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !902, file: !1, line: 645, column: 9)
!2243 = !DILocation(line: 645, column: 9, scope: !902)
!2244 = !DILocation(line: 646, column: 20, scope: !2242)
!2245 = !DILocation(line: 622, column: 43, scope: !902)
!2246 = !DILocation(line: 646, column: 9, scope: !2242)
!2247 = !DILocation(line: 648, column: 20, scope: !2242)
!2248 = !DILocation(line: 649, column: 5, scope: !2249)
!2249 = !DILexicalBlockFile(scope: !916, file: !1, discriminator: 1)
!2250 = !DILocation(line: 649, column: 5, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !916, file: !1, line: 649, column: 5)
!2252 = !DILocation(line: 649, column: 5, scope: !916)
!2253 = !DILocation(line: 649, column: 5, scope: !2254)
!2254 = !DILexicalBlockFile(scope: !2251, file: !1, discriminator: 3)
!2255 = !DILocation(line: 650, column: 18, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !902, file: !1, line: 650, column: 9)
!2257 = !DILocation(line: 650, column: 9, scope: !902)
!2258 = !DILocation(line: 653, column: 38, scope: !902)
!2259 = !DILocation(line: 653, column: 17, scope: !902)
!2260 = !DILocation(line: 621, column: 15, scope: !902)
!2261 = !DILocation(line: 654, column: 5, scope: !2262)
!2262 = !DILexicalBlockFile(scope: !918, file: !1, discriminator: 1)
!2263 = !DILocation(line: 654, column: 5, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !918, file: !1, line: 654, column: 5)
!2265 = !DILocation(line: 654, column: 5, scope: !918)
!2266 = !DILocation(line: 654, column: 5, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !2264, file: !1, discriminator: 3)
!2268 = !DILocation(line: 655, column: 19, scope: !921)
!2269 = !DILocation(line: 655, column: 9, scope: !902)
!2270 = !DILocation(line: 657, column: 32, scope: !920)
!2271 = !DILocation(line: 657, column: 17, scope: !920)
!2272 = !DILocation(line: 656, column: 25, scope: !920)
!2273 = !DILocation(line: 658, column: 19, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !920, file: !1, line: 658, column: 13)
!2275 = !DILocation(line: 658, column: 13, scope: !920)
!2276 = !DILocation(line: 660, column: 43, scope: !920)
!2277 = !DILocation(line: 661, column: 43, scope: !920)
!2278 = !{!1301, !1262, i64 16}
!2279 = !DILocation(line: 660, column: 15, scope: !920)
!2280 = !DILocation(line: 656, column: 19, scope: !920)
!2281 = !DILocation(line: 662, column: 9, scope: !2282)
!2282 = !DILexicalBlockFile(scope: !924, file: !1, discriminator: 1)
!2283 = !DILocation(line: 662, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !924, file: !1, line: 662, column: 9)
!2285 = !DILocation(line: 662, column: 9, scope: !924)
!2286 = !DILocation(line: 662, column: 9, scope: !2287)
!2287 = !DILexicalBlockFile(scope: !2284, file: !1, discriminator: 3)
!2288 = !DILocation(line: 667, column: 5, scope: !902)
!2289 = !DILocation(line: 668, column: 5, scope: !902)
!2290 = !DILocation(line: 669, column: 1, scope: !902)
!2291 = !DILocation(line: 515, column: 36, scope: !925)
!2292 = !DILocation(line: 515, column: 51, scope: !925)
!2293 = !DILocation(line: 517, column: 18, scope: !925)
!2294 = !DILocation(line: 518, column: 5, scope: !925)
!2295 = !DILocation(line: 519, column: 5, scope: !925)
!2296 = !DILocation(line: 518, column: 15, scope: !925)
!2297 = !DILocation(line: 521, column: 10, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !925, file: !1, line: 521, column: 9)
!2299 = !DILocation(line: 521, column: 9, scope: !925)
!2300 = !DILocation(line: 517, column: 25, scope: !925)
!2301 = !DILocation(line: 527, column: 34, scope: !925)
!2302 = !DILocation(line: 518, column: 33, scope: !925)
!2303 = !DILocation(line: 519, column: 9, scope: !925)
!2304 = !DILocation(line: 527, column: 12, scope: !925)
!2305 = !DILocation(line: 518, column: 26, scope: !925)
!2306 = !DILocation(line: 528, column: 14, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !925, file: !1, line: 528, column: 9)
!2308 = !DILocation(line: 528, column: 9, scope: !925)
!2309 = !DILocation(line: 530, column: 5, scope: !2310)
!2310 = !DILexicalBlockFile(scope: !935, file: !1, discriminator: 1)
!2311 = !DILocation(line: 530, column: 5, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !935, file: !1, line: 530, column: 5)
!2313 = !DILocation(line: 530, column: 5, scope: !935)
!2314 = !DILocation(line: 530, column: 5, scope: !2315)
!2315 = !DILexicalBlockFile(scope: !2312, file: !1, discriminator: 3)
!2316 = !DILocation(line: 532, column: 12, scope: !925)
!2317 = !DILocation(line: 532, column: 5, scope: !925)
!2318 = !DILocation(line: 533, column: 1, scope: !925)
!2319 = !DILocation(line: 537, column: 34, scope: !936)
!2320 = !DILocation(line: 537, column: 49, scope: !936)
!2321 = !DILocation(line: 539, column: 18, scope: !936)
!2322 = !DILocation(line: 540, column: 5, scope: !936)
!2323 = !DILocation(line: 540, column: 15, scope: !936)
!2324 = !DILocation(line: 543, column: 10, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !936, file: !1, line: 543, column: 9)
!2326 = !DILocation(line: 543, column: 9, scope: !936)
!2327 = !DILocation(line: 539, column: 25, scope: !936)
!2328 = !DILocation(line: 547, column: 32, scope: !936)
!2329 = !DILocation(line: 547, column: 10, scope: !936)
!2330 = !DILocation(line: 541, column: 25, scope: !936)
!2331 = !DILocation(line: 548, column: 9, scope: !936)
!2332 = !DILocation(line: 551, column: 22, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !1, line: 550, column: 29)
!2334 = distinct !DILexicalBlock(scope: !936, file: !1, line: 550, column: 9)
!2335 = !DILocation(line: 551, column: 62, scope: !2333)
!2336 = !DILocation(line: 551, column: 9, scope: !2333)
!2337 = !DILocation(line: 552, column: 9, scope: !2333)
!2338 = !DILocation(line: 554, column: 31, scope: !936)
!2339 = !DILocation(line: 554, column: 28, scope: !936)
!2340 = !DILocation(line: 554, column: 12, scope: !936)
!2341 = !DILocation(line: 554, column: 5, scope: !936)
!2342 = !DILocation(line: 555, column: 1, scope: !936)
!2343 = !DILocation(line: 343, column: 26, scope: !570)
!2344 = !DILocation(line: 343, column: 42, scope: !570)
!2345 = !DILocation(line: 343, column: 63, scope: !570)
!2346 = !DILocation(line: 347, column: 24, scope: !570)
!2347 = !DILocation(line: 349, column: 10, scope: !570)
!2348 = !DILocation(line: 345, column: 25, scope: !570)
!2349 = !DILocation(line: 350, column: 9, scope: !570)
!2350 = !DILocation(line: 355, column: 53, scope: !581)
!2351 = !DILocation(line: 275, column: 33, scope: !625, inlinedAt: !2352)
!2352 = distinct !DILocation(line: 355, column: 22, scope: !581)
!2353 = !DILocation(line: 275, column: 49, scope: !625, inlinedAt: !2352)
!2354 = !DILocation(line: 275, column: 67, scope: !625, inlinedAt: !2352)
!2355 = !DILocation(line: 283, column: 15, scope: !625, inlinedAt: !2352)
!2356 = !DILocation(line: 277, column: 15, scope: !625, inlinedAt: !2352)
!2357 = !DILocation(line: 284, column: 17, scope: !2358, inlinedAt: !2352)
!2358 = distinct !DILexicalBlock(scope: !625, file: !1, line: 284, column: 9)
!2359 = !DILocation(line: 284, column: 9, scope: !625, inlinedAt: !2352)
!2360 = !DILocation(line: 287, column: 33, scope: !625, inlinedAt: !2352)
!2361 = !DILocation(line: 287, column: 11, scope: !625, inlinedAt: !2352)
!2362 = !DILocation(line: 278, column: 9, scope: !625, inlinedAt: !2352)
!2363 = !DILocation(line: 288, column: 5, scope: !2364, inlinedAt: !2352)
!2364 = !DILexicalBlockFile(scope: !635, file: !1, discriminator: 1)
!2365 = !DILocation(line: 288, column: 5, scope: !2366, inlinedAt: !2352)
!2366 = distinct !DILexicalBlock(scope: !635, file: !1, line: 288, column: 5)
!2367 = !DILocation(line: 288, column: 5, scope: !635, inlinedAt: !2352)
!2368 = !DILocation(line: 288, column: 5, scope: !2369, inlinedAt: !2352)
!2369 = !DILexicalBlockFile(scope: !2366, file: !1, discriminator: 3)
!2370 = !DILocation(line: 355, column: 22, scope: !581)
!2371 = !DILocation(line: 355, column: 13, scope: !581)
!2372 = !DILocation(line: 356, column: 20, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !581, file: !1, line: 356, column: 13)
!2374 = !DILocation(line: 356, column: 13, scope: !581)
!2375 = !DILocation(line: 358, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !581, file: !1, line: 358, column: 13)
!2377 = !DILocation(line: 358, column: 13, scope: !581)
!2378 = !DILocation(line: 363, column: 61, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !1, line: 358, column: 21)
!2380 = !DILocation(line: 364, column: 61, scope: !2379)
!2381 = !DILocation(line: 362, column: 34, scope: !2379)
!2382 = !DILocation(line: 362, column: 32, scope: !2379)
!2383 = !DILocation(line: 365, column: 36, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 365, column: 17)
!2385 = !DILocation(line: 366, column: 17, scope: !2384)
!2386 = !DILocation(line: 372, column: 5, scope: !570)
!2387 = !DILocation(line: 373, column: 1, scope: !570)
!2388 = !DILocation(line: 294, column: 30, scope: !583)
!2389 = !DILocation(line: 294, column: 46, scope: !583)
!2390 = !DILocation(line: 209, column: 23, scope: !612, inlinedAt: !2391)
!2391 = distinct !DILocation(line: 300, column: 15, scope: !583)
!2392 = !DILocation(line: 212, column: 9, scope: !1962, inlinedAt: !2391)
!2393 = !DILocation(line: 212, column: 9, scope: !1964, inlinedAt: !2391)
!2394 = !DILocation(line: 212, column: 9, scope: !612, inlinedAt: !2391)
!2395 = !DILocation(line: 214, column: 11, scope: !612, inlinedAt: !2391)
!2396 = !DILocation(line: 211, column: 16, scope: !612, inlinedAt: !2391)
!2397 = !DILocation(line: 215, column: 11, scope: !612, inlinedAt: !2391)
!2398 = !DILocation(line: 211, column: 21, scope: !612, inlinedAt: !2391)
!2399 = !DILocation(line: 216, column: 13, scope: !1971, inlinedAt: !2391)
!2400 = !DILocation(line: 216, column: 9, scope: !612, inlinedAt: !2391)
!2401 = !DILocation(line: 217, column: 9, scope: !1974, inlinedAt: !2391)
!2402 = !DILocation(line: 296, column: 15, scope: !583)
!2403 = !DILocation(line: 301, column: 9, scope: !583)
!2404 = !DILocation(line: 220, column: 49, scope: !1971, inlinedAt: !2391)
!2405 = !DILocation(line: 220, column: 16, scope: !1971, inlinedAt: !2391)
!2406 = !DILocation(line: 301, column: 17, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !583, file: !1, line: 301, column: 9)
!2408 = !DILocation(line: 304, column: 32, scope: !583)
!2409 = !DILocation(line: 304, column: 12, scope: !583)
!2410 = !DILocation(line: 297, column: 15, scope: !583)
!2411 = !DILocation(line: 305, column: 5, scope: !2412)
!2412 = !DILexicalBlockFile(scope: !596, file: !1, discriminator: 1)
!2413 = !DILocation(line: 305, column: 5, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !596, file: !1, line: 305, column: 5)
!2415 = !DILocation(line: 305, column: 5, scope: !596)
!2416 = !DILocation(line: 305, column: 5, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !2414, file: !1, discriminator: 3)
!2418 = !DILocation(line: 306, column: 14, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !583, file: !1, line: 306, column: 9)
!2420 = !DILocation(line: 306, column: 9, scope: !583)
!2421 = !DILocation(line: 309, column: 33, scope: !602)
!2422 = !DILocation(line: 309, column: 5, scope: !603)
!2423 = !DILocation(line: 315, column: 37, scope: !601)
!2424 = !DILocation(line: 310, column: 20, scope: !601)
!2425 = !DILocation(line: 297, column: 22, scope: !583)
!2426 = !DILocation(line: 311, column: 22, scope: !600)
!2427 = !DILocation(line: 311, column: 13, scope: !601)
!2428 = !DILocation(line: 312, column: 13, scope: !2429)
!2429 = !DILexicalBlockFile(scope: !598, file: !1, discriminator: 1)
!2430 = !DILocation(line: 312, column: 13, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !598, file: !1, line: 312, column: 13)
!2432 = !DILocation(line: 312, column: 13, scope: !598)
!2433 = !DILocation(line: 312, column: 13, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !2431, file: !1, discriminator: 3)
!2435 = !DILocation(line: 315, column: 16, scope: !601)
!2436 = !DILocation(line: 297, column: 33, scope: !583)
!2437 = !DILocation(line: 316, column: 9, scope: !2438)
!2438 = !DILexicalBlockFile(scope: !605, file: !1, discriminator: 1)
!2439 = !DILocation(line: 316, column: 9, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !605, file: !1, line: 316, column: 9)
!2441 = !DILocation(line: 316, column: 9, scope: !605)
!2442 = !DILocation(line: 316, column: 9, scope: !2443)
!2443 = !DILexicalBlockFile(scope: !2440, file: !1, discriminator: 3)
!2444 = !DILocation(line: 317, column: 18, scope: !609)
!2445 = !DILocation(line: 317, column: 13, scope: !601)
!2446 = !DILocation(line: 318, column: 13, scope: !2447)
!2447 = !DILexicalBlockFile(scope: !607, file: !1, discriminator: 1)
!2448 = !DILocation(line: 318, column: 13, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !607, file: !1, line: 318, column: 13)
!2450 = !DILocation(line: 318, column: 13, scope: !607)
!2451 = !DILocation(line: 318, column: 13, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !2449, file: !1, discriminator: 3)
!2453 = !DILocation(line: 319, column: 22, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !608, file: !1, line: 319, column: 17)
!2455 = !{!2456, !1232, i64 16}
!2456 = !{!"st_zip_searchorder", !1226, i64 0, !1232, i64 16}
!2457 = !DILocation(line: 322, column: 17, scope: !2454)
!2458 = !DILocation(line: 309, column: 50, scope: !602)
!2459 = !DILocation(line: 325, column: 5, scope: !2460)
!2460 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 1)
!2461 = !DILocation(line: 325, column: 5, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !611, file: !1, line: 325, column: 5)
!2463 = !DILocation(line: 325, column: 5, scope: !611)
!2464 = !DILocation(line: 325, column: 5, scope: !2465)
!2465 = !DILexicalBlockFile(scope: !2462, file: !1, discriminator: 3)
!2466 = !DILocation(line: 327, column: 1, scope: !583)
!2467 = !DILocation(line: 229, column: 25, scope: !617)
!2468 = !DILocation(line: 229, column: 43, scope: !617)
!2469 = !DILocation(line: 235, column: 11, scope: !617)
!2470 = !DILocation(line: 235, column: 42, scope: !617)
!2471 = !DILocation(line: 235, column: 40, scope: !617)
!2472 = !DILocation(line: 235, column: 69, scope: !617)
!2473 = !DILocation(line: 233, column: 16, scope: !617)
!2474 = !DILocation(line: 236, column: 44, scope: !617)
!2475 = !DILocation(line: 236, column: 15, scope: !617)
!2476 = !DILocation(line: 232, column: 18, scope: !617)
!2477 = !DILocation(line: 232, column: 14, scope: !617)
!2478 = !DILocation(line: 237, column: 13, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !617, file: !1, line: 237, column: 9)
!2480 = !DILocation(line: 237, column: 9, scope: !617)
!2481 = !DILocation(line: 238, column: 9, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2479, file: !1, line: 237, column: 22)
!2483 = !DILocation(line: 239, column: 9, scope: !2482)
!2484 = !DILocation(line: 242, column: 10, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !617, file: !1, line: 242, column: 9)
!2486 = !DILocation(line: 242, column: 9, scope: !617)
!2487 = !DILocation(line: 243, column: 9, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2485, file: !1, line: 242, column: 47)
!2489 = !DILocation(line: 244, column: 9, scope: !2488)
!2490 = !DILocation(line: 246, column: 10, scope: !617)
!2491 = !DILocation(line: 246, column: 7, scope: !617)
!2492 = !DILocation(line: 247, column: 9, scope: !617)
!2493 = !DILocation(line: 248, column: 10, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !617, file: !1, line: 248, column: 9)
!2495 = !DILocation(line: 248, column: 9, scope: !617)
!2496 = !DILocation(line: 252, column: 12, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !1, line: 252, column: 5)
!2498 = distinct !DILexicalBlock(scope: !617, file: !1, line: 252, column: 5)
!2499 = !DILocation(line: 249, column: 9, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2494, file: !1, line: 248, column: 45)
!2501 = !DILocation(line: 250, column: 9, scope: !2500)
!2502 = !DILocation(line: 252, column: 5, scope: !2498)
!2503 = !DILocation(line: 254, column: 16, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !1, line: 253, column: 13)
!2505 = distinct !DILexicalBlock(scope: !2497, file: !1, line: 252, column: 21)
!2506 = !DILocation(line: 254, column: 13, scope: !2504)
!2507 = !DILocation(line: 252, column: 17, scope: !2497)
!2508 = !DILocation(line: 252, column: 5, scope: !2497)
!2509 = !DILocation(line: 257, column: 47, scope: !617)
!2510 = !DILocation(line: 256, column: 15, scope: !617)
!2511 = !DILocation(line: 231, column: 15, scope: !617)
!2512 = !DILocation(line: 258, column: 5, scope: !617)
!2513 = !DILocation(line: 259, column: 5, scope: !617)
!2514 = !DILocation(line: 260, column: 1, scope: !617)
!2515 = !DILocation(line: 1375, column: 30, scope: !687)
!2516 = !DILocation(line: 1375, column: 46, scope: !687)
!2517 = !DILocation(line: 1376, column: 22, scope: !687)
!2518 = !DILocation(line: 1376, column: 46, scope: !687)
!2519 = !DILocation(line: 1378, column: 15, scope: !687)
!2520 = !DILocation(line: 1379, column: 22, scope: !687)
!2521 = !DILocation(line: 209, column: 23, scope: !612, inlinedAt: !2522)
!2522 = distinct !DILocation(line: 1382, column: 15, scope: !687)
!2523 = !DILocation(line: 212, column: 9, scope: !1962, inlinedAt: !2522)
!2524 = !DILocation(line: 212, column: 9, scope: !1964, inlinedAt: !2522)
!2525 = !DILocation(line: 212, column: 9, scope: !612, inlinedAt: !2522)
!2526 = !DILocation(line: 214, column: 11, scope: !612, inlinedAt: !2522)
!2527 = !DILocation(line: 211, column: 16, scope: !612, inlinedAt: !2522)
!2528 = !DILocation(line: 215, column: 11, scope: !612, inlinedAt: !2522)
!2529 = !DILocation(line: 211, column: 21, scope: !612, inlinedAt: !2522)
!2530 = !DILocation(line: 216, column: 13, scope: !1971, inlinedAt: !2522)
!2531 = !DILocation(line: 216, column: 9, scope: !612, inlinedAt: !2522)
!2532 = !DILocation(line: 217, column: 9, scope: !1974, inlinedAt: !2522)
!2533 = !DILocation(line: 1378, column: 41, scope: !687)
!2534 = !DILocation(line: 1383, column: 9, scope: !687)
!2535 = !DILocation(line: 220, column: 49, scope: !1971, inlinedAt: !2522)
!2536 = !DILocation(line: 220, column: 16, scope: !1971, inlinedAt: !2522)
!2537 = !DILocation(line: 1383, column: 17, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !687, file: !1, line: 1383, column: 9)
!2539 = !DILocation(line: 1386, column: 32, scope: !687)
!2540 = !DILocation(line: 1386, column: 12, scope: !687)
!2541 = !DILocation(line: 1379, column: 15, scope: !687)
!2542 = !DILocation(line: 1387, column: 5, scope: !2543)
!2543 = !DILexicalBlockFile(scope: !703, file: !1, discriminator: 1)
!2544 = !DILocation(line: 1387, column: 5, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !703, file: !1, line: 1387, column: 5)
!2546 = !DILocation(line: 1387, column: 5, scope: !703)
!2547 = !DILocation(line: 1387, column: 5, scope: !2548)
!2548 = !DILexicalBlockFile(scope: !2545, file: !1, discriminator: 3)
!2549 = !DILocation(line: 1388, column: 14, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !687, file: !1, line: 1388, column: 9)
!2551 = !DILocation(line: 1388, column: 9, scope: !687)
!2552 = !DILocation(line: 1391, column: 33, scope: !708)
!2553 = !DILocation(line: 1391, column: 5, scope: !709)
!2554 = !DILocation(line: 1400, column: 38, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !707, file: !1, line: 1398, column: 13)
!2556 = !DILocation(line: 1401, column: 42, scope: !707)
!2557 = !DILocation(line: 1414, column: 29, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !705, file: !1, line: 1414, column: 17)
!2559 = !DILocation(line: 1303, column: 5, scope: !750, inlinedAt: !2560)
!2560 = distinct !DILocation(line: 1345, column: 17, scope: !747, inlinedAt: !2561)
!2561 = distinct !DILocation(line: 1408, column: 25, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !1, line: 1407, column: 29)
!2563 = distinct !DILexicalBlock(scope: !705, file: !1, line: 1407, column: 17)
!2564 = !DILocation(line: 1311, column: 9, scope: !750, inlinedAt: !2560)
!2565 = !DILocation(line: 1312, column: 9, scope: !750, inlinedAt: !2560)
!2566 = !DILocation(line: 1313, column: 9, scope: !750, inlinedAt: !2560)
!2567 = !DILocation(line: 1307, column: 18, scope: !750, inlinedAt: !2560)
!2568 = !DILocation(line: 1394, column: 20, scope: !707)
!2569 = !DILocation(line: 1395, column: 22, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !707, file: !1, line: 1395, column: 13)
!2571 = !DILocation(line: 1395, column: 13, scope: !707)
!2572 = !DILocation(line: 1398, column: 13, scope: !2555)
!2573 = !DILocation(line: 1398, column: 28, scope: !2555)
!2574 = !DILocation(line: 1398, column: 13, scope: !707)
!2575 = !DILocation(line: 1399, column: 13, scope: !2555)
!2576 = !DILocation(line: 1401, column: 21, scope: !707)
!2577 = !DILocation(line: 1378, column: 29, scope: !687)
!2578 = !DILocation(line: 1402, column: 23, scope: !706)
!2579 = !DILocation(line: 1402, column: 13, scope: !707)
!2580 = !DILocation(line: 1403, column: 20, scope: !705)
!2581 = !DILocation(line: 1404, column: 34, scope: !705)
!2582 = !DILocation(line: 1404, column: 39, scope: !705)
!2583 = !DILocation(line: 1404, column: 17, scope: !705)
!2584 = !DILocation(line: 1405, column: 40, scope: !705)
!2585 = !DILocation(line: 1405, column: 17, scope: !705)
!2586 = !DILocation(line: 1407, column: 17, scope: !2563)
!2587 = !DILocation(line: 1407, column: 17, scope: !705)
!2588 = !DILocation(line: 1322, column: 34, scope: !735, inlinedAt: !2561)
!2589 = !DILocation(line: 1322, column: 50, scope: !735, inlinedAt: !2561)
!2590 = !DILocation(line: 1328, column: 9, scope: !2591, inlinedAt: !2561)
!2591 = distinct !DILexicalBlock(scope: !735, file: !1, line: 1328, column: 9)
!2592 = !DILocation(line: 1328, column: 9, scope: !2593, inlinedAt: !2561)
!2593 = !DILexicalBlockFile(scope: !2591, file: !1, discriminator: 2)
!2594 = !DILocation(line: 1328, column: 9, scope: !735, inlinedAt: !2561)
!2595 = !DILocation(line: 1330, column: 42, scope: !735, inlinedAt: !2561)
!2596 = !DILocation(line: 1331, column: 42, scope: !735, inlinedAt: !2561)
!2597 = !DILocation(line: 1331, column: 42, scope: !2598, inlinedAt: !2561)
!2598 = !DILexicalBlockFile(scope: !735, file: !1, discriminator: 1)
!2599 = !DILocation(line: 1331, column: 42, scope: !2600, inlinedAt: !2561)
!2600 = !DILexicalBlockFile(scope: !735, file: !1, discriminator: 3)
!2601 = !DILocation(line: 1331, column: 42, scope: !2602, inlinedAt: !2561)
!2602 = !DILexicalBlockFile(scope: !735, file: !1, discriminator: 4)
!2603 = !DILocation(line: 1331, column: 42, scope: !2604, inlinedAt: !2561)
!2604 = !DILexicalBlockFile(scope: !735, file: !1, discriminator: 2)
!2605 = !DILocation(line: 1332, column: 42, scope: !735, inlinedAt: !2561)
!2606 = !DILocation(line: 1332, column: 69, scope: !735, inlinedAt: !2561)
!2607 = !DILocation(line: 1330, column: 16, scope: !735, inlinedAt: !2561)
!2608 = !DILocation(line: 1324, column: 27, scope: !735, inlinedAt: !2561)
!2609 = !DILocation(line: 1333, column: 18, scope: !2610, inlinedAt: !2561)
!2610 = distinct !DILexicalBlock(scope: !735, file: !1, line: 1333, column: 9)
!2611 = !DILocation(line: 1333, column: 9, scope: !735, inlinedAt: !2561)
!2612 = !DILocation(line: 1336, column: 38, scope: !735, inlinedAt: !2561)
!2613 = !DILocation(line: 1336, column: 17, scope: !735, inlinedAt: !2561)
!2614 = !DILocation(line: 1324, column: 15, scope: !735, inlinedAt: !2561)
!2615 = !DILocation(line: 1337, column: 5, scope: !2616, inlinedAt: !2561)
!2616 = !DILexicalBlockFile(scope: !745, file: !1, discriminator: 1)
!2617 = !DILocation(line: 1337, column: 5, scope: !2618, inlinedAt: !2561)
!2618 = distinct !DILexicalBlock(scope: !745, file: !1, line: 1337, column: 5)
!2619 = !DILocation(line: 1337, column: 5, scope: !745, inlinedAt: !2561)
!2620 = !DILocation(line: 1337, column: 5, scope: !2621, inlinedAt: !2561)
!2621 = !DILexicalBlockFile(scope: !2618, file: !1, discriminator: 3)
!2622 = !DILocation(line: 1408, column: 25, scope: !2562)
!2623 = !DILocation(line: 1338, column: 19, scope: !748, inlinedAt: !2561)
!2624 = !DILocation(line: 1338, column: 27, scope: !748, inlinedAt: !2561)
!2625 = !DILocation(line: 1338, column: 30, scope: !2626, inlinedAt: !2561)
!2626 = !DILexicalBlockFile(scope: !748, file: !1, discriminator: 1)
!2627 = !{!1300, !1262, i64 168}
!2628 = !DILocation(line: 1338, column: 55, scope: !748, inlinedAt: !2561)
!2629 = !DILocation(line: 1339, column: 9, scope: !748, inlinedAt: !2561)
!2630 = !DILocation(line: 1339, column: 33, scope: !748, inlinedAt: !2561)
!2631 = !DILocation(line: 1338, column: 9, scope: !735, inlinedAt: !2561)
!2632 = !DILocation(line: 1343, column: 30, scope: !747, inlinedAt: !2561)
!2633 = !DILocation(line: 1343, column: 16, scope: !747, inlinedAt: !2561)
!2634 = !DILocation(line: 1342, column: 13, scope: !747, inlinedAt: !2561)
!2635 = !DILocation(line: 1344, column: 30, scope: !747, inlinedAt: !2561)
!2636 = !DILocation(line: 1344, column: 16, scope: !747, inlinedAt: !2561)
!2637 = !DILocation(line: 1342, column: 19, scope: !747, inlinedAt: !2561)
!2638 = !DILocation(line: 1301, column: 19, scope: !750, inlinedAt: !2560)
!2639 = !DILocation(line: 1301, column: 32, scope: !750, inlinedAt: !2560)
!2640 = !DILocation(line: 1305, column: 5, scope: !750, inlinedAt: !2560)
!2641 = !DILocation(line: 1307, column: 45, scope: !750, inlinedAt: !2560)
!2642 = !DILocation(line: 1308, column: 30, scope: !750, inlinedAt: !2560)
!2643 = !DILocation(line: 1309, column: 30, scope: !750, inlinedAt: !2560)
!2644 = !DILocation(line: 1311, column: 30, scope: !750, inlinedAt: !2560)
!2645 = !DILocation(line: 1311, column: 37, scope: !750, inlinedAt: !2560)
!2646 = !DILocation(line: 1311, column: 45, scope: !750, inlinedAt: !2560)
!2647 = !DILocation(line: 1311, column: 18, scope: !750, inlinedAt: !2560)
!2648 = !{!2649, !1232, i64 16}
!2649 = !{!"tm", !1232, i64 0, !1232, i64 4, !1232, i64 8, !1232, i64 12, !1232, i64 16, !1232, i64 20, !1232, i64 24, !1232, i64 28, !1232, i64 32, !1262, i64 40, !1252, i64 48}
!2650 = !DILocation(line: 1312, column: 30, scope: !750, inlinedAt: !2560)
!2651 = !DILocation(line: 1312, column: 37, scope: !750, inlinedAt: !2560)
!2652 = !DILocation(line: 1312, column: 45, scope: !750, inlinedAt: !2560)
!2653 = !DILocation(line: 1312, column: 18, scope: !750, inlinedAt: !2560)
!2654 = !{!2649, !1232, i64 20}
!2655 = !DILocation(line: 1313, column: 18, scope: !750, inlinedAt: !2560)
!2656 = !{!2649, !1232, i64 32}
!2657 = !DILocation(line: 1303, column: 15, scope: !750, inlinedAt: !2560)
!2658 = !DILocation(line: 1315, column: 12, scope: !750, inlinedAt: !2560)
!2659 = !DILocation(line: 1316, column: 1, scope: !750, inlinedAt: !2560)
!2660 = !DILocation(line: 1325, column: 12, scope: !735, inlinedAt: !2561)
!2661 = !DILocation(line: 1409, column: 27, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 1409, column: 21)
!2663 = !DILocation(line: 1409, column: 41, scope: !2662)
!2664 = !DILocation(line: 1409, column: 44, scope: !2665)
!2665 = !DILexicalBlockFile(scope: !2662, file: !1, discriminator: 1)
!2666 = !DILocation(line: 1409, column: 21, scope: !2562)
!2667 = !DILocation(line: 1413, column: 13, scope: !2668)
!2668 = !DILexicalBlockFile(scope: !713, file: !1, discriminator: 1)
!2669 = !DILocation(line: 1413, column: 13, scope: !2670)
!2670 = !DILexicalBlockFile(scope: !715, file: !1, discriminator: 4)
!2671 = !DILocation(line: 1413, column: 13, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !715, file: !1, line: 1413, column: 13)
!2673 = !DILocation(line: 1413, column: 13, scope: !715)
!2674 = !DILocation(line: 1413, column: 13, scope: !2675)
!2675 = !DILexicalBlockFile(scope: !2672, file: !1, discriminator: 6)
!2676 = !DILocation(line: 1414, column: 17, scope: !705)
!2677 = !DILocation(line: 1415, column: 30, scope: !2558)
!2678 = !DILocation(line: 1415, column: 17, scope: !2558)
!2679 = !DILocation(line: 1354, column: 43, scope: !770, inlinedAt: !2680)
!2680 = distinct !DILocation(line: 1416, column: 20, scope: !705)
!2681 = !DILocation(line: 1359, column: 12, scope: !770, inlinedAt: !2680)
!2682 = !DILocation(line: 1357, column: 15, scope: !770, inlinedAt: !2680)
!2683 = !DILocation(line: 1360, column: 14, scope: !2684, inlinedAt: !2680)
!2684 = distinct !DILexicalBlock(scope: !770, file: !1, line: 1360, column: 9)
!2685 = !DILocation(line: 1360, column: 9, scope: !770, inlinedAt: !2680)
!2686 = !DILocation(line: 1363, column: 15, scope: !770, inlinedAt: !2680)
!2687 = !DILocation(line: 1357, column: 22, scope: !770, inlinedAt: !2680)
!2688 = !DILocation(line: 1364, column: 9, scope: !770, inlinedAt: !2680)
!2689 = !DILocation(line: 1187, column: 26, scope: !825, inlinedAt: !2690)
!2690 = distinct !DILocation(line: 1365, column: 16, scope: !2691, inlinedAt: !2680)
!2691 = distinct !DILexicalBlock(scope: !770, file: !1, line: 1364, column: 9)
!2692 = !DILocation(line: 1187, column: 46, scope: !825, inlinedAt: !2690)
!2693 = !DILocation(line: 1190, column: 17, scope: !825, inlinedAt: !2690)
!2694 = !DILocation(line: 1190, column: 11, scope: !825, inlinedAt: !2690)
!2695 = !DILocation(line: 1191, column: 23, scope: !825, inlinedAt: !2690)
!2696 = !DILocation(line: 1191, column: 16, scope: !825, inlinedAt: !2690)
!2697 = !DILocation(line: 1193, column: 14, scope: !2698, inlinedAt: !2690)
!2698 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1193, column: 9)
!2699 = !DILocation(line: 1193, column: 9, scope: !825, inlinedAt: !2690)
!2700 = !DILocation(line: 1194, column: 25, scope: !2701, inlinedAt: !2690)
!2701 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 1193, column: 20)
!2702 = !DILocation(line: 1194, column: 9, scope: !2701, inlinedAt: !2690)
!2703 = !DILocation(line: 1196, column: 9, scope: !2701, inlinedAt: !2690)
!2704 = !DILocation(line: 821, column: 25, scope: !839, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1199, column: 9, scope: !2706, inlinedAt: !2690)
!2706 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1199, column: 9)
!2707 = !DILocation(line: 823, column: 10, scope: !839, inlinedAt: !2705)
!2708 = !DILocation(line: 822, column: 10, scope: !839, inlinedAt: !2705)
!2709 = !DILocation(line: 824, column: 16, scope: !839, inlinedAt: !2705)
!2710 = !DILocation(line: 824, column: 10, scope: !839, inlinedAt: !2705)
!2711 = !DILocation(line: 824, column: 23, scope: !839, inlinedAt: !2705)
!2712 = !DILocation(line: 824, column: 7, scope: !839, inlinedAt: !2705)
!2713 = !DILocation(line: 825, column: 16, scope: !839, inlinedAt: !2705)
!2714 = !DILocation(line: 825, column: 10, scope: !839, inlinedAt: !2705)
!2715 = !DILocation(line: 825, column: 23, scope: !839, inlinedAt: !2705)
!2716 = !DILocation(line: 825, column: 7, scope: !839, inlinedAt: !2705)
!2717 = !DILocation(line: 826, column: 16, scope: !839, inlinedAt: !2705)
!2718 = !DILocation(line: 826, column: 10, scope: !839, inlinedAt: !2705)
!2719 = !DILocation(line: 826, column: 23, scope: !839, inlinedAt: !2705)
!2720 = !DILocation(line: 826, column: 7, scope: !839, inlinedAt: !2705)
!2721 = !DILocation(line: 829, column: 14, scope: !839, inlinedAt: !2705)
!2722 = !DILocation(line: 829, column: 10, scope: !839, inlinedAt: !2705)
!2723 = !DILocation(line: 829, column: 7, scope: !839, inlinedAt: !2705)
!2724 = !DILocation(line: 1199, column: 43, scope: !2706, inlinedAt: !2690)
!2725 = !DILocation(line: 1199, column: 40, scope: !2706, inlinedAt: !2690)
!2726 = !DILocation(line: 1199, column: 9, scope: !825, inlinedAt: !2690)
!2727 = !DILocation(line: 1200, column: 13, scope: !2728, inlinedAt: !2690)
!2728 = distinct !DILexicalBlock(scope: !2729, file: !1, line: 1200, column: 13)
!2729 = distinct !DILexicalBlock(scope: !2706, file: !1, line: 1199, column: 70)
!2730 = !DILocation(line: 1200, column: 13, scope: !2729, inlinedAt: !2690)
!2731 = !DILocation(line: 1201, column: 13, scope: !2728, inlinedAt: !2690)
!2732 = !DILocation(line: 1203, column: 9, scope: !2729, inlinedAt: !2690)
!2733 = !DILocation(line: 1204, column: 9, scope: !2729, inlinedAt: !2690)
!2734 = !DILocation(line: 1207, column: 15, scope: !2735, inlinedAt: !2690)
!2735 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1207, column: 9)
!2736 = !DILocation(line: 1207, column: 20, scope: !2735, inlinedAt: !2690)
!2737 = !DILocation(line: 1207, column: 63, scope: !2735, inlinedAt: !2690)
!2738 = !DILocation(line: 821, column: 25, scope: !839, inlinedAt: !2739)
!2739 = distinct !DILocation(line: 1207, column: 33, scope: !2735, inlinedAt: !2690)
!2740 = !DILocation(line: 823, column: 10, scope: !839, inlinedAt: !2739)
!2741 = !DILocation(line: 822, column: 10, scope: !839, inlinedAt: !2739)
!2742 = !DILocation(line: 824, column: 16, scope: !839, inlinedAt: !2739)
!2743 = !DILocation(line: 824, column: 10, scope: !839, inlinedAt: !2739)
!2744 = !DILocation(line: 824, column: 23, scope: !839, inlinedAt: !2739)
!2745 = !DILocation(line: 824, column: 7, scope: !839, inlinedAt: !2739)
!2746 = !DILocation(line: 825, column: 16, scope: !839, inlinedAt: !2739)
!2747 = !DILocation(line: 825, column: 10, scope: !839, inlinedAt: !2739)
!2748 = !DILocation(line: 825, column: 23, scope: !839, inlinedAt: !2739)
!2749 = !DILocation(line: 825, column: 7, scope: !839, inlinedAt: !2739)
!2750 = !DILocation(line: 826, column: 16, scope: !839, inlinedAt: !2739)
!2751 = !DILocation(line: 826, column: 10, scope: !839, inlinedAt: !2739)
!2752 = !DILocation(line: 826, column: 23, scope: !839, inlinedAt: !2739)
!2753 = !DILocation(line: 826, column: 7, scope: !839, inlinedAt: !2739)
!2754 = !DILocation(line: 829, column: 14, scope: !839, inlinedAt: !2739)
!2755 = !DILocation(line: 829, column: 10, scope: !839, inlinedAt: !2739)
!2756 = !DILocation(line: 829, column: 7, scope: !839, inlinedAt: !2739)
!2757 = !DILocation(line: 1172, column: 17, scope: !845, inlinedAt: !2758)
!2758 = distinct !DILocation(line: 1207, column: 24, scope: !2735, inlinedAt: !2690)
!2759 = !DILocation(line: 1174, column: 19, scope: !845, inlinedAt: !2758)
!2760 = !DILocation(line: 1174, column: 12, scope: !845, inlinedAt: !2758)
!2761 = !DILocation(line: 1175, column: 11, scope: !2762, inlinedAt: !2758)
!2762 = distinct !DILexicalBlock(scope: !845, file: !1, line: 1175, column: 9)
!2763 = !DILocation(line: 1176, column: 13, scope: !2762, inlinedAt: !2758)
!2764 = !DILocation(line: 1175, column: 9, scope: !845, inlinedAt: !2758)
!2765 = !DILocation(line: 1178, column: 14, scope: !845, inlinedAt: !2758)
!2766 = !DILocation(line: 1207, column: 9, scope: !825, inlinedAt: !2690)
!2767 = !DILocation(line: 1209, column: 13, scope: !2768, inlinedAt: !2690)
!2768 = distinct !DILexicalBlock(scope: !2769, file: !1, line: 1209, column: 13)
!2769 = distinct !DILexicalBlock(scope: !2735, file: !1, line: 1208, column: 41)
!2770 = !DILocation(line: 1209, column: 13, scope: !2769, inlinedAt: !2690)
!2771 = !DILocation(line: 1210, column: 13, scope: !2768, inlinedAt: !2690)
!2772 = !DILocation(line: 1212, column: 9, scope: !2769, inlinedAt: !2690)
!2773 = !DILocation(line: 1213, column: 9, scope: !2769, inlinedAt: !2690)
!2774 = !DILocation(line: 1218, column: 47, scope: !825, inlinedAt: !2690)
!2775 = !DILocation(line: 1218, column: 58, scope: !825, inlinedAt: !2690)
!2776 = !DILocation(line: 1218, column: 12, scope: !825, inlinedAt: !2690)
!2777 = !DILocation(line: 1189, column: 15, scope: !825, inlinedAt: !2690)
!2778 = !DILocation(line: 1219, column: 14, scope: !2779, inlinedAt: !2690)
!2779 = distinct !DILexicalBlock(scope: !825, file: !1, line: 1219, column: 9)
!2780 = !DILocation(line: 1219, column: 9, scope: !825, inlinedAt: !2690)
!2781 = !DILocation(line: 1221, column: 10, scope: !838, inlinedAt: !2690)
!2782 = !DILocation(line: 1222, column: 9, scope: !2783, inlinedAt: !2690)
!2783 = !DILexicalBlockFile(scope: !2784, file: !1, discriminator: 3)
!2784 = distinct !DILexicalBlock(scope: !836, file: !1, line: 1222, column: 9)
!2785 = !DILocation(line: 1221, column: 9, scope: !825, inlinedAt: !2690)
!2786 = !DILocation(line: 1222, column: 9, scope: !2787, inlinedAt: !2690)
!2787 = !DILexicalBlockFile(scope: !836, file: !1, discriminator: 1)
!2788 = !DILocation(line: 1222, column: 9, scope: !2784, inlinedAt: !2690)
!2789 = !DILocation(line: 1222, column: 9, scope: !836, inlinedAt: !2690)
!2790 = !DILocation(line: 1365, column: 16, scope: !2691, inlinedAt: !2680)
!2791 = !DILocation(line: 1223, column: 22, scope: !837, inlinedAt: !2690)
!2792 = !DILocation(line: 1223, column: 9, scope: !837, inlinedAt: !2690)
!2793 = !DILocation(line: 1226, column: 9, scope: !837, inlinedAt: !2690)
!2794 = !DILocation(line: 1276, column: 26, scope: !852, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1367, column: 16, scope: !2691, inlinedAt: !2680)
!2796 = !DILocation(line: 1276, column: 46, scope: !852, inlinedAt: !2795)
!2797 = !DILocation(line: 1280, column: 17, scope: !852, inlinedAt: !2795)
!2798 = !DILocation(line: 1278, column: 37, scope: !852, inlinedAt: !2795)
!2799 = !DILocation(line: 1281, column: 19, scope: !2800, inlinedAt: !2795)
!2800 = distinct !DILexicalBlock(scope: !852, file: !1, line: 1281, column: 9)
!2801 = !DILocation(line: 1281, column: 9, scope: !852, inlinedAt: !2795)
!2802 = !DILocation(line: 1236, column: 34, scope: !867, inlinedAt: !2803)
!2803 = distinct !DILocation(line: 1284, column: 20, scope: !852, inlinedAt: !2795)
!2804 = !DILocation(line: 1240, column: 9, scope: !867, inlinedAt: !2803)
!2805 = !DILocation(line: 1242, column: 9, scope: !867, inlinedAt: !2803)
!2806 = !DILocation(line: 1238, column: 21, scope: !867, inlinedAt: !2803)
!2807 = !DILocation(line: 1243, column: 11, scope: !2808, inlinedAt: !2803)
!2808 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1243, column: 9)
!2809 = !DILocation(line: 1243, column: 9, scope: !867, inlinedAt: !2803)
!2810 = !DILocation(line: 1244, column: 16, scope: !2811, inlinedAt: !2803)
!2811 = distinct !DILexicalBlock(scope: !2808, file: !1, line: 1243, column: 20)
!2812 = !DILocation(line: 1244, column: 9, scope: !2811, inlinedAt: !2803)
!2813 = !DILocation(line: 1248, column: 32, scope: !867, inlinedAt: !2803)
!2814 = !DILocation(line: 1248, column: 53, scope: !867, inlinedAt: !2803)
!2815 = !DILocation(line: 1248, column: 19, scope: !867, inlinedAt: !2803)
!2816 = !DILocation(line: 1238, column: 11, scope: !867, inlinedAt: !2803)
!2817 = !DILocation(line: 1249, column: 13, scope: !2818, inlinedAt: !2803)
!2818 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1249, column: 9)
!2819 = !DILocation(line: 1249, column: 9, scope: !867, inlinedAt: !2803)
!2820 = !DILocation(line: 1256, column: 19, scope: !2821, inlinedAt: !2803)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !1, line: 1256, column: 5)
!2822 = distinct !DILexicalBlock(scope: !867, file: !1, line: 1256, column: 5)
!2823 = !DILocation(line: 1250, column: 25, scope: !2824, inlinedAt: !2803)
!2824 = distinct !DILexicalBlock(scope: !2818, file: !1, line: 1249, column: 22)
!2825 = !DILocation(line: 1250, column: 9, scope: !2824, inlinedAt: !2803)
!2826 = !DILocation(line: 1278, column: 22, scope: !852, inlinedAt: !2795)
!2827 = !DILocation(line: 1285, column: 9, scope: !852, inlinedAt: !2795)
!2828 = !DILocation(line: 1284, column: 20, scope: !852, inlinedAt: !2795)
!2829 = !DILocation(line: 1256, column: 5, scope: !2822, inlinedAt: !2803)
!2830 = !DILocation(line: 1258, column: 18, scope: !2831, inlinedAt: !2803)
!2831 = distinct !DILexicalBlock(scope: !2832, file: !1, line: 1257, column: 25)
!2832 = distinct !DILexicalBlock(scope: !2833, file: !1, line: 1257, column: 13)
!2833 = distinct !DILexicalBlock(scope: !2821, file: !1, line: 1256, column: 36)
!2834 = !DILocation(line: 1259, column: 21, scope: !2835, inlinedAt: !2803)
!2835 = distinct !DILexicalBlock(scope: !2831, file: !1, line: 1259, column: 17)
!2836 = !DILocation(line: 1259, column: 17, scope: !2835, inlinedAt: !2803)
!2837 = !DILocation(line: 1259, column: 26, scope: !2835, inlinedAt: !2803)
!2838 = !DILocation(line: 1259, column: 17, scope: !2831, inlinedAt: !2803)
!2839 = !DILocation(line: 1263, column: 18, scope: !2832, inlinedAt: !2803)
!2840 = !DILocation(line: 1263, column: 15, scope: !2832, inlinedAt: !2803)
!2841 = !DILocation(line: 1264, column: 12, scope: !2833, inlinedAt: !2803)
!2842 = !DILocation(line: 1256, column: 32, scope: !2821, inlinedAt: !2803)
!2843 = !DILocation(line: 1256, column: 5, scope: !2821, inlinedAt: !2803)
!2844 = !DILocation(line: 1266, column: 7, scope: !867, inlinedAt: !2803)
!2845 = !DILocation(line: 1238, column: 17, scope: !867, inlinedAt: !2803)
!2846 = !DILocation(line: 1266, column: 10, scope: !867, inlinedAt: !2803)
!2847 = !DILocation(line: 1267, column: 8, scope: !867, inlinedAt: !2803)
!2848 = !DILocation(line: 1268, column: 55, scope: !867, inlinedAt: !2803)
!2849 = !DILocation(line: 1268, column: 51, scope: !867, inlinedAt: !2803)
!2850 = !DILocation(line: 1268, column: 20, scope: !867, inlinedAt: !2803)
!2851 = !DILocation(line: 1239, column: 15, scope: !867, inlinedAt: !2803)
!2852 = !DILocation(line: 1269, column: 5, scope: !867, inlinedAt: !2803)
!2853 = !DILocation(line: 1270, column: 5, scope: !867, inlinedAt: !2803)
!2854 = !DILocation(line: 1285, column: 22, scope: !862, inlinedAt: !2795)
!2855 = !DILocation(line: 1286, column: 9, scope: !2856, inlinedAt: !2795)
!2856 = !DILexicalBlockFile(scope: !860, file: !1, discriminator: 1)
!2857 = !DILocation(line: 1286, column: 9, scope: !2858, inlinedAt: !2795)
!2858 = distinct !DILexicalBlock(scope: !860, file: !1, line: 1286, column: 9)
!2859 = !DILocation(line: 1286, column: 9, scope: !860, inlinedAt: !2795)
!2860 = !DILocation(line: 1286, column: 9, scope: !2861, inlinedAt: !2795)
!2861 = !DILexicalBlockFile(scope: !2858, file: !1, discriminator: 3)
!2862 = !DILocation(line: 1367, column: 16, scope: !2691, inlinedAt: !2680)
!2863 = !DILocation(line: 1290, column: 12, scope: !852, inlinedAt: !2795)
!2864 = !DILocation(line: 1278, column: 15, scope: !852, inlinedAt: !2795)
!2865 = !DILocation(line: 1293, column: 5, scope: !2866, inlinedAt: !2795)
!2866 = !DILexicalBlockFile(scope: !864, file: !1, discriminator: 1)
!2867 = !DILocation(line: 1293, column: 5, scope: !2868, inlinedAt: !2795)
!2868 = distinct !DILexicalBlock(scope: !864, file: !1, line: 1293, column: 5)
!2869 = !DILocation(line: 1293, column: 5, scope: !864, inlinedAt: !2795)
!2870 = !DILocation(line: 1293, column: 5, scope: !2871, inlinedAt: !2795)
!2871 = !DILexicalBlockFile(scope: !2868, file: !1, discriminator: 3)
!2872 = !DILocation(line: 1294, column: 5, scope: !2873, inlinedAt: !2795)
!2873 = !DILexicalBlockFile(scope: !866, file: !1, discriminator: 1)
!2874 = !DILocation(line: 1294, column: 5, scope: !2875, inlinedAt: !2795)
!2875 = distinct !DILexicalBlock(scope: !866, file: !1, line: 1294, column: 5)
!2876 = !DILocation(line: 1294, column: 5, scope: !866, inlinedAt: !2795)
!2877 = !DILocation(line: 1294, column: 5, scope: !2878, inlinedAt: !2795)
!2878 = !DILexicalBlockFile(scope: !2875, file: !1, discriminator: 3)
!2879 = !DILocation(line: 1416, column: 20, scope: !705)
!2880 = !DILocation(line: 1368, column: 5, scope: !2881, inlinedAt: !2680)
!2881 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 1)
!2882 = !DILocation(line: 1368, column: 5, scope: !2883, inlinedAt: !2680)
!2883 = distinct !DILexicalBlock(scope: !783, file: !1, line: 1368, column: 5)
!2884 = !DILocation(line: 1368, column: 5, scope: !783, inlinedAt: !2680)
!2885 = !DILocation(line: 1368, column: 5, scope: !2886, inlinedAt: !2680)
!2886 = !DILexicalBlockFile(scope: !2883, file: !1, discriminator: 3)
!2887 = !DILocation(line: 1419, column: 22, scope: !721)
!2888 = !DILocation(line: 1419, column: 17, scope: !705)
!2889 = !DILocation(line: 1422, column: 17, scope: !2890)
!2890 = !DILexicalBlockFile(scope: !719, file: !1, discriminator: 1)
!2891 = !DILocation(line: 1422, column: 17, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !719, file: !1, line: 1422, column: 17)
!2893 = !DILocation(line: 1422, column: 17, scope: !719)
!2894 = !DILocation(line: 1422, column: 17, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2892, file: !1, discriminator: 3)
!2896 = !DILocation(line: 1425, column: 22, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !705, file: !1, line: 1425, column: 17)
!2898 = !DILocation(line: 1425, column: 43, scope: !2897)
!2899 = !DILocation(line: 1425, column: 30, scope: !2897)
!2900 = !DILocation(line: 1426, column: 30, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2897, file: !1, line: 1425, column: 52)
!2902 = !DILocation(line: 1426, column: 28, scope: !2901)
!2903 = !DILocation(line: 1427, column: 17, scope: !2901)
!2904 = !DILocation(line: 1428, column: 13, scope: !2901)
!2905 = !DILocation(line: 1432, column: 13, scope: !2906)
!2906 = !DILexicalBlockFile(scope: !723, file: !1, discriminator: 1)
!2907 = !DILocation(line: 1432, column: 13, scope: !2908)
!2908 = !DILexicalBlockFile(scope: !725, file: !1, discriminator: 4)
!2909 = !DILocation(line: 1432, column: 13, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !725, file: !1, line: 1432, column: 13)
!2911 = !DILocation(line: 1432, column: 13, scope: !725)
!2912 = !DILocation(line: 1432, column: 13, scope: !2913)
!2913 = !DILexicalBlockFile(scope: !2910, file: !1, discriminator: 6)
!2914 = !DILocation(line: 1391, column: 50, scope: !708)
!2915 = !DILocation(line: 1434, column: 18, scope: !687)
!2916 = !DILocation(line: 1434, column: 5, scope: !687)
!2917 = !DILocation(line: 1436, column: 5, scope: !2918)
!2918 = !DILexicalBlockFile(scope: !729, file: !1, discriminator: 1)
!2919 = !DILocation(line: 1436, column: 5, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !729, file: !1, line: 1436, column: 5)
!2921 = !DILocation(line: 1436, column: 5, scope: !729)
!2922 = !DILocation(line: 1436, column: 5, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !2920, file: !1, discriminator: 3)
!2924 = !DILocation(line: 1437, column: 5, scope: !2925)
!2925 = !DILexicalBlockFile(scope: !731, file: !1, discriminator: 1)
!2926 = !DILocation(line: 1437, column: 5, scope: !734)
!2927 = !DILocation(line: 1437, column: 5, scope: !731)
!2928 = !DILocation(line: 1437, column: 5, scope: !2929)
!2929 = !DILexicalBlockFile(scope: !733, file: !1, discriminator: 4)
!2930 = !DILocation(line: 1437, column: 5, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !733, file: !1, line: 1437, column: 5)
!2932 = !DILocation(line: 1437, column: 5, scope: !733)
!2933 = !DILocation(line: 1437, column: 5, scope: !2934)
!2934 = !DILexicalBlockFile(scope: !2931, file: !1, discriminator: 6)
!2935 = !DILocation(line: 1439, column: 1, scope: !687)
!2936 = !DILocation(line: 1057, column: 20, scope: !784)
!2937 = !DILocation(line: 1057, column: 39, scope: !784)
!2938 = !DILocation(line: 1059, column: 26, scope: !784)
!2939 = !DILocation(line: 1063, column: 16, scope: !784)
!2940 = !DILocation(line: 1065, column: 5, scope: !784)
!2941 = !DILocation(line: 1066, column: 5, scope: !784)
!2942 = !DILocation(line: 1067, column: 5, scope: !784)
!2943 = !DILocation(line: 1065, column: 15, scope: !784)
!2944 = !DILocation(line: 1066, column: 10, scope: !784)
!2945 = !DILocation(line: 1066, column: 20, scope: !784)
!2946 = !DILocation(line: 1066, column: 31, scope: !784)
!2947 = !DILocation(line: 1066, column: 42, scope: !784)
!2948 = !DILocation(line: 1067, column: 10, scope: !784)
!2949 = !DILocation(line: 1067, column: 16, scope: !784)
!2950 = !DILocation(line: 1067, column: 22, scope: !784)
!2951 = !DILocation(line: 1069, column: 10, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1069, column: 9)
!2953 = !DILocation(line: 1069, column: 9, scope: !784)
!2954 = !DILocation(line: 1075, column: 10, scope: !784)
!2955 = !DILocation(line: 1061, column: 11, scope: !784)
!2956 = !DILocation(line: 1076, column: 10, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1076, column: 9)
!2958 = !DILocation(line: 1076, column: 9, scope: !784)
!2959 = !DILocation(line: 1077, column: 14, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !1, line: 1077, column: 13)
!2961 = distinct !DILexicalBlock(scope: !2957, file: !1, line: 1076, column: 14)
!2962 = !DILocation(line: 1077, column: 13, scope: !2961)
!2963 = !DILocation(line: 1078, column: 26, scope: !2960)
!2964 = !DILocation(line: 1078, column: 13, scope: !2960)
!2965 = !DILocation(line: 1084, column: 19, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1084, column: 9)
!2967 = !{!1262, !1262, i64 0}
!2968 = !DILocation(line: 1084, column: 9, scope: !2966)
!2969 = !DILocation(line: 1084, column: 35, scope: !2966)
!2970 = !DILocation(line: 1084, column: 9, scope: !784)
!2971 = !DILocation(line: 1085, column: 9, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2966, file: !1, line: 1084, column: 42)
!2973 = !DILocation(line: 1086, column: 22, scope: !2972)
!2974 = !DILocation(line: 1086, column: 9, scope: !2972)
!2975 = !DILocation(line: 1087, column: 9, scope: !2972)
!2976 = !DILocation(line: 1090, column: 9, scope: !784)
!2977 = !DILocation(line: 1064, column: 10, scope: !784)
!2978 = !DILocation(line: 1091, column: 11, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1091, column: 9)
!2980 = !DILocation(line: 1091, column: 9, scope: !784)
!2981 = !DILocation(line: 1093, column: 14, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !1, line: 1093, column: 13)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !1, line: 1091, column: 26)
!2984 = !DILocation(line: 1093, column: 13, scope: !2983)
!2985 = !DILocation(line: 1094, column: 26, scope: !2982)
!2986 = !DILocation(line: 1094, column: 13, scope: !2982)
!2987 = !DILocation(line: 1097, column: 9, scope: !2983)
!2988 = !DILocation(line: 1098, column: 9, scope: !2983)
!2989 = !DILocation(line: 1100, column: 19, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1100, column: 9)
!2991 = !DILocation(line: 1100, column: 31, scope: !2990)
!2992 = !DILocation(line: 1100, column: 9, scope: !2990)
!2993 = !DILocation(line: 1100, column: 40, scope: !2990)
!2994 = !DILocation(line: 1100, column: 9, scope: !784)
!2995 = !DILocation(line: 1101, column: 9, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2990, file: !1, line: 1100, column: 47)
!2997 = !DILocation(line: 1102, column: 22, scope: !2996)
!2998 = !DILocation(line: 1102, column: 9, scope: !2996)
!2999 = !DILocation(line: 1103, column: 9, scope: !2996)
!3000 = !DILocation(line: 1106, column: 14, scope: !784)
!3001 = !DILocation(line: 1107, column: 9, scope: !784)
!3002 = !DILocation(line: 1108, column: 9, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1108, column: 9)
!3004 = !DILocation(line: 1108, column: 9, scope: !784)
!3005 = !DILocation(line: 1109, column: 9, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3003, file: !1, line: 1108, column: 27)
!3007 = !DILocation(line: 1110, column: 9, scope: !3006)
!3008 = !DILocation(line: 1106, column: 12, scope: !784)
!3009 = !DILocation(line: 1106, column: 46, scope: !784)
!3010 = !DILocation(line: 1106, column: 9, scope: !784)
!3011 = !DILocation(line: 1112, column: 17, scope: !784)
!3012 = !DILocation(line: 1114, column: 18, scope: !784)
!3013 = !DILocation(line: 1114, column: 34, scope: !3014)
!3014 = !DILexicalBlockFile(scope: !784, file: !1, discriminator: 1)
!3015 = !DILocation(line: 1066, column: 55, scope: !784)
!3016 = !DILocation(line: 1115, column: 20, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1115, column: 9)
!3018 = !DILocation(line: 1115, column: 9, scope: !784)
!3019 = !DILocation(line: 1117, column: 16, scope: !784)
!3020 = !DILocation(line: 1059, column: 15, scope: !784)
!3021 = !DILocation(line: 1119, column: 18, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1119, column: 9)
!3023 = !DILocation(line: 1119, column: 9, scope: !784)
!3024 = !DILocation(line: 1120, column: 9, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3022, file: !1, line: 1119, column: 27)
!3026 = !DILocation(line: 1121, column: 9, scope: !3025)
!3027 = !DILocation(line: 1123, column: 11, scope: !784)
!3028 = !DILocation(line: 1060, column: 11, scope: !784)
!3029 = !DILocation(line: 1125, column: 21, scope: !784)
!3030 = !DILocation(line: 1125, column: 11, scope: !784)
!3031 = !DILocation(line: 1062, column: 9, scope: !784)
!3032 = !DILocation(line: 1126, column: 13, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1126, column: 9)
!3034 = !DILocation(line: 1126, column: 9, scope: !784)
!3035 = !DILocation(line: 1127, column: 36, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3033, file: !1, line: 1126, column: 19)
!3037 = !DILocation(line: 1127, column: 22, scope: !3036)
!3038 = !DILocation(line: 1133, column: 5, scope: !784)
!3039 = !DILocation(line: 1134, column: 30, scope: !808)
!3040 = !DILocation(line: 1134, column: 27, scope: !808)
!3041 = !DILocation(line: 1134, column: 9, scope: !784)
!3042 = !DILocation(line: 1129, column: 9, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3033, file: !1, line: 1128, column: 12)
!3044 = !DILocation(line: 1130, column: 22, scope: !3043)
!3045 = !DILocation(line: 1130, column: 9, scope: !3043)
!3046 = !DILocation(line: 1131, column: 9, scope: !3043)
!3047 = !DILocation(line: 1135, column: 25, scope: !807)
!3048 = !DILocation(line: 1135, column: 9, scope: !807)
!3049 = !DILocation(line: 1137, column: 9, scope: !3050)
!3050 = !DILexicalBlockFile(scope: !806, file: !1, discriminator: 1)
!3051 = !DILocation(line: 1137, column: 9, scope: !3052)
!3052 = distinct !DILexicalBlock(scope: !806, file: !1, line: 1137, column: 9)
!3053 = !DILocation(line: 1137, column: 9, scope: !806)
!3054 = !DILocation(line: 1137, column: 9, scope: !3055)
!3055 = !DILexicalBlockFile(scope: !3052, file: !1, discriminator: 3)
!3056 = !DILocation(line: 1141, column: 9, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1141, column: 9)
!3058 = !DILocation(line: 1141, column: 18, scope: !3057)
!3059 = !DILocation(line: 1141, column: 9, scope: !784)
!3060 = !DILocation(line: 1142, column: 9, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !1, line: 1141, column: 24)
!3062 = !DILocation(line: 1142, column: 24, scope: !3061)
!3063 = !DILocation(line: 1143, column: 18, scope: !3061)
!3064 = !DILocation(line: 1144, column: 5, scope: !3061)
!3065 = !DILocation(line: 1145, column: 9, scope: !784)
!3066 = !DILocation(line: 1145, column: 5, scope: !784)
!3067 = !DILocation(line: 1145, column: 20, scope: !784)
!3068 = !DILocation(line: 1147, column: 9, scope: !812)
!3069 = !DILocation(line: 1147, column: 18, scope: !812)
!3070 = !DILocation(line: 1147, column: 9, scope: !784)
!3071 = !DILocation(line: 1148, column: 47, scope: !811)
!3072 = !DILocation(line: 1148, column: 16, scope: !811)
!3073 = !DILocation(line: 1149, column: 9, scope: !3074)
!3074 = !DILexicalBlockFile(scope: !810, file: !1, discriminator: 1)
!3075 = !DILocation(line: 1149, column: 9, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !810, file: !1, line: 1149, column: 9)
!3077 = !DILocation(line: 1149, column: 9, scope: !810)
!3078 = !DILocation(line: 1149, column: 9, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !3076, file: !1, discriminator: 3)
!3080 = !DILocation(line: 1154, column: 18, scope: !784)
!3081 = !DILocation(line: 1032, column: 9, scope: !817, inlinedAt: !3082)
!3082 = distinct !DILocation(line: 1154, column: 18, scope: !784)
!3083 = !DILocation(line: 1037, column: 12, scope: !817, inlinedAt: !3082)
!3084 = !DILocation(line: 1028, column: 15, scope: !817, inlinedAt: !3082)
!3085 = !DILocation(line: 1039, column: 14, scope: !824, inlinedAt: !3082)
!3086 = !DILocation(line: 1039, column: 9, scope: !817, inlinedAt: !3082)
!3087 = !DILocation(line: 1040, column: 22, scope: !823, inlinedAt: !3082)
!3088 = !DILocation(line: 1029, column: 15, scope: !817, inlinedAt: !3082)
!3089 = !DILocation(line: 1042, column: 9, scope: !3090, inlinedAt: !3082)
!3090 = !DILexicalBlockFile(scope: !822, file: !1, discriminator: 1)
!3091 = !DILocation(line: 1042, column: 9, scope: !3092, inlinedAt: !3082)
!3092 = distinct !DILexicalBlock(scope: !822, file: !1, line: 1042, column: 9)
!3093 = !DILocation(line: 1042, column: 9, scope: !822, inlinedAt: !3082)
!3094 = !DILocation(line: 1042, column: 9, scope: !3095, inlinedAt: !3082)
!3095 = !DILexicalBlockFile(scope: !3092, file: !1, discriminator: 3)
!3096 = !DILocation(line: 1045, column: 9, scope: !3097, inlinedAt: !3082)
!3097 = distinct !DILexicalBlock(scope: !824, file: !1, line: 1044, column: 10)
!3098 = !DILocation(line: 1048, column: 9, scope: !3099, inlinedAt: !3082)
!3099 = distinct !DILexicalBlock(scope: !817, file: !1, line: 1048, column: 9)
!3100 = !DILocation(line: 1048, column: 9, scope: !817, inlinedAt: !3082)
!3101 = !DILocation(line: 1050, column: 13, scope: !3099, inlinedAt: !3082)
!3102 = !DILocation(line: 1049, column: 9, scope: !3099, inlinedAt: !3082)
!3103 = !DILocation(line: 1059, column: 40, scope: !784)
!3104 = !DILocation(line: 1155, column: 20, scope: !3105)
!3105 = distinct !DILexicalBlock(scope: !784, file: !1, line: 1155, column: 9)
!3106 = !DILocation(line: 1155, column: 9, scope: !784)
!3107 = !DILocation(line: 1156, column: 25, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3105, file: !1, line: 1155, column: 29)
!3109 = !DILocation(line: 1156, column: 9, scope: !3108)
!3110 = !DILocation(line: 1159, column: 9, scope: !3108)
!3111 = !DILocation(line: 1161, column: 12, scope: !784)
!3112 = !DILocation(line: 1162, column: 5, scope: !3113)
!3113 = !DILexicalBlockFile(scope: !814, file: !1, discriminator: 1)
!3114 = !DILocation(line: 1162, column: 5, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !814, file: !1, line: 1162, column: 5)
!3116 = !DILocation(line: 1162, column: 5, scope: !814)
!3117 = !DILocation(line: 1162, column: 5, scope: !3118)
!3118 = !DILexicalBlockFile(scope: !3115, file: !1, discriminator: 3)
!3119 = !DILocation(line: 1164, column: 5, scope: !3120)
!3120 = !DILexicalBlockFile(scope: !816, file: !1, discriminator: 1)
!3121 = !DILocation(line: 1164, column: 5, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !816, file: !1, line: 1164, column: 5)
!3123 = !DILocation(line: 1164, column: 5, scope: !816)
!3124 = !DILocation(line: 1164, column: 5, scope: !3125)
!3125 = !DILexicalBlockFile(scope: !3122, file: !1, discriminator: 3)
!3126 = !DILocation(line: 1166, column: 1, scope: !784)
