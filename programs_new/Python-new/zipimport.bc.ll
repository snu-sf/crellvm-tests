; ModuleID = 'irs-onlybc/zipimport.bc'
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
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.PyCompilerFlags = type { i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque

@ZipImporter_Type = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct._zipimporter*)* @zipimporter_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._zipimporter*)* @zipimporter_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([475 x i8], [475 x i8]* @zipimporter_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @zipimporter_traverse, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([9 x %struct.PyMethodDef], [9 x %struct.PyMethodDef]* @zipimporter_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @zipimporter_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct._zipimporter*, %struct._object*, %struct._object*)* @zipimporter_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, void (i8*)* @PyObject_GC_Del, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@zip_searchorder = internal global [7 x %struct.st_zip_searchorder] [%struct.st_zip_searchorder { [14 x i8] c"/__init__.pyc\00", i32 3 }, %struct.st_zip_searchorder { [14 x i8] c"/__init__.pyo\00", i32 3 }, %struct.st_zip_searchorder { [14 x i8] c"/__init__.py\00\00", i32 2 }, %struct.st_zip_searchorder { [14 x i8] c".pyc\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.st_zip_searchorder { [14 x i8] c".pyo\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.st_zip_searchorder { [14 x i8] c".py\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.st_zip_searchorder zeroinitializer], align 16
@Py_OptimizeFlag = external global i32, align 4
@zipimportmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([592 x i8], [592 x i8]* @zipimport_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* null, i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [25 x i8] c"zipimport.ZipImportError\00", align 1
@PyExc_ImportError = external global %struct._object*, align 8
@ZipImportError = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ZipImportError\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"zipimporter\00", align 1
@zip_directory_cache = internal global %struct._object* null, align 8
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
@get_decompress_func.importing_zlib = internal global i32 0, align 4
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
  %retval = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %tmp = alloca %struct.st_zip_searchorder, align 4
  %0 = bitcast %struct._object** %mod to i8*, !dbg !1221
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1221
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !513, metadata !1222), !dbg !1223
  %call = call i32 @PyType_Ready(%struct._typeobject* @ZipImporter_Type), !dbg !1224
  %cmp = icmp slt i32 %call, 0, !dbg !1226
  br i1 %cmp, label %if.then, label %if.end, !dbg !1227

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1228
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1228

if.end:                                           ; preds = %entry
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 0, i32 0, i64 0), align 1, !dbg !1229, !tbaa !1230
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 1, i32 0, i64 0), align 1, !dbg !1233, !tbaa !1230
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 2, i32 0, i64 0), align 1, !dbg !1234, !tbaa !1230
  %1 = load i32, i32* @Py_OptimizeFlag, align 4, !dbg !1235, !tbaa !1236
  %tobool = icmp ne i32 %1, 0, !dbg !1235
  br i1 %tobool, label %if.then.1, label %if.end.2, !dbg !1238

if.then.1:                                        ; preds = %if.end
  %2 = bitcast %struct.st_zip_searchorder* %tmp to i8*, !dbg !1239
  call void @llvm.lifetime.start(i64 20, i8* %2) #1, !dbg !1239
  call void @llvm.dbg.declare(metadata %struct.st_zip_searchorder* %tmp, metadata !514, metadata !1222), !dbg !1240
  %3 = bitcast %struct.st_zip_searchorder* %tmp to i8*, !dbg !1241
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0, i32 0, i32 0), i64 20, i32 4, i1 false), !dbg !1241, !tbaa.struct !1242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 1, i32 0, i32 0), i64 20, i32 4, i1 false), !dbg !1243, !tbaa.struct !1242
  %4 = bitcast %struct.st_zip_searchorder* %tmp to i8*, !dbg !1244
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 1, i32 0, i32 0), i8* %4, i64 20, i32 4, i1 false), !dbg !1244, !tbaa.struct !1242
  %5 = bitcast %struct.st_zip_searchorder* %tmp to i8*, !dbg !1245
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 3, i32 0, i32 0), i64 20, i32 4, i1 false), !dbg !1245, !tbaa.struct !1242
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 3, i32 0, i32 0), i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 4, i32 0, i32 0), i64 20, i32 4, i1 false), !dbg !1246, !tbaa.struct !1242
  %6 = bitcast %struct.st_zip_searchorder* %tmp to i8*, !dbg !1247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 4, i32 0, i32 0), i8* %6, i64 20, i32 4, i1 false), !dbg !1247, !tbaa.struct !1242
  %7 = bitcast %struct.st_zip_searchorder* %tmp to i8*, !dbg !1248
  call void @llvm.lifetime.end(i64 20, i8* %7) #1, !dbg !1248
  br label %if.end.2, !dbg !1249

if.end.2:                                         ; preds = %if.then.1, %if.end
  %call3 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @zipimportmodule, i32 1013), !dbg !1250
  store %struct._object* %call3, %struct._object** %mod, align 8, !dbg !1251, !tbaa !1252
  %8 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1254, !tbaa !1252
  %cmp4 = icmp eq %struct._object* %8, null, !dbg !1256
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !1257

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval, !dbg !1258
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1258

if.end.6:                                         ; preds = %if.end.2
  %9 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8, !dbg !1259, !tbaa !1252
  %call7 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), %struct._object* %9, %struct._object* null), !dbg !1260
  store %struct._object* %call7, %struct._object** @ZipImportError, align 8, !dbg !1261, !tbaa !1252
  %10 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1262, !tbaa !1252
  %cmp8 = icmp eq %struct._object* %10, null, !dbg !1264
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1265

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval, !dbg !1266
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1266

if.end.10:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1267, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !1268
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !1269, !tbaa !1270
  %inc = add i64 %12, 1, !dbg !1269
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1269, !tbaa !1270
  %13 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1273, !tbaa !1252
  %14 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1275, !tbaa !1252
  %call11 = call i32 @PyModule_AddObject(%struct._object* %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct._object* %14), !dbg !1276
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1277
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1278

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval, !dbg !1279
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1279

if.end.14:                                        ; preds = %if.end.10
  %15 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1280, !tbaa !1270
  %inc15 = add i64 %15, 1, !dbg !1280
  store i64 %inc15, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1280, !tbaa !1270
  %16 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1281, !tbaa !1252
  %call16 = call i32 @PyModule_AddObject(%struct._object* %16, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i32 0, i32 0, i32 0)), !dbg !1283
  %cmp17 = icmp slt i32 %call16, 0, !dbg !1284
  br i1 %cmp17, label %if.then.18, label %if.end.19, !dbg !1285

if.then.18:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval, !dbg !1286
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1286

if.end.19:                                        ; preds = %if.end.14
  %call20 = call %struct._object* @PyDict_New(), !dbg !1287
  store %struct._object* %call20, %struct._object** @zip_directory_cache, align 8, !dbg !1288, !tbaa !1252
  %17 = load %struct._object*, %struct._object** @zip_directory_cache, align 8, !dbg !1289, !tbaa !1252
  %cmp21 = icmp eq %struct._object* %17, null, !dbg !1291
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !1292

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval, !dbg !1293
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1293

if.end.23:                                        ; preds = %if.end.19
  %18 = load %struct._object*, %struct._object** @zip_directory_cache, align 8, !dbg !1294, !tbaa !1252
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1295
  %19 = load i64, i64* %ob_refcnt24, align 8, !dbg !1296, !tbaa !1270
  %inc25 = add i64 %19, 1, !dbg !1296
  store i64 %inc25, i64* %ob_refcnt24, align 8, !dbg !1296, !tbaa !1270
  %20 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1297, !tbaa !1252
  %21 = load %struct._object*, %struct._object** @zip_directory_cache, align 8, !dbg !1299, !tbaa !1252
  %call26 = call i32 @PyModule_AddObject(%struct._object* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %struct._object* %21), !dbg !1300
  %cmp27 = icmp slt i32 %call26, 0, !dbg !1301
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !1302

if.then.28:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval, !dbg !1303
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1303

if.end.29:                                        ; preds = %if.end.23
  %22 = load %struct._object*, %struct._object** %mod, align 8, !dbg !1304, !tbaa !1252
  store %struct._object* %22, %struct._object** %retval, !dbg !1305
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1305

cleanup:                                          ; preds = %if.end.29, %if.then.28, %if.then.22, %if.then.18, %if.then.13, %if.then.9, %if.then.5, %if.then
  %23 = bitcast %struct._object** %mod to i8*, !dbg !1306
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !1306
  %24 = load %struct._object*, %struct._object** %retval, !dbg !1306
  ret %struct._object* %24, !dbg !1306
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
  %self.addr = alloca %struct._zipimporter*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_xdecref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !528, metadata !1222), !dbg !1307
  %0 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1308, !tbaa !1252
  %1 = bitcast %struct._zipimporter* %0 to i8*, !dbg !1308
  call void @PyObject_GC_UnTrack(i8* %1), !dbg !1309
  br label %do.body, !dbg !1310

do.body:                                          ; preds = %entry
  %2 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1311
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1311
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !529, metadata !1222), !dbg !1313
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1314, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %3, i32 0, i32 1, !dbg !1315
  %4 = load %struct._object*, %struct._object** %archive, align 8, !dbg !1315, !tbaa !1316
  store %struct._object* %4, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1313, !tbaa !1252
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1318, !tbaa !1252
  %cmp = icmp ne %struct._object* %5, null, !dbg !1319
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !1320

if.then:                                          ; preds = %do.body
  br label %do.body.1, !dbg !1321

do.body.1:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1323
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1323
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !531, metadata !1222), !dbg !1325
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1326, !tbaa !1252
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1325, !tbaa !1252
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1327, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1329
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1330, !tbaa !1270
  %dec = add i64 %9, -1, !dbg !1330
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1330, !tbaa !1270
  %cmp2 = icmp ne i64 %dec, 0, !dbg !1331
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1332

if.then.3:                                        ; preds = %do.body.1
  br label %if.end, !dbg !1333

if.else:                                          ; preds = %do.body.1
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1335, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1337
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1337, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1339
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1339, !tbaa !1340
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1343, !tbaa !1252
  call void %12(%struct._object* %13), !dbg !1344
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1345
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1345
  br label %do.cond, !dbg !1347

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1348

do.end:                                           ; preds = %do.cond
  br label %if.end.4, !dbg !1350

if.end.4:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1352
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1352
  br label %do.end.6, !dbg !1355

do.end.6:                                         ; preds = %if.end.4
  br label %do.body.7, !dbg !1356

do.body.7:                                        ; preds = %do.end.6
  %16 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !1357
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !1357
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp8, metadata !534, metadata !1222), !dbg !1359
  %17 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1360, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %17, i32 0, i32 2, !dbg !1361
  %18 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !1361, !tbaa !1362
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1359, !tbaa !1252
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1363, !tbaa !1252
  %cmp9 = icmp ne %struct._object* %19, null, !dbg !1364
  br i1 %cmp9, label %if.then.10, label %if.end.23, !dbg !1365

if.then.10:                                       ; preds = %do.body.7
  br label %do.body.11, !dbg !1366

do.body.11:                                       ; preds = %if.then.10
  %20 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1368
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !1368
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !536, metadata !1222), !dbg !1370
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp8, align 8, !dbg !1371, !tbaa !1252
  store %struct._object* %21, %struct._object** %_py_decref_tmp12, align 8, !dbg !1370, !tbaa !1252
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1372, !tbaa !1252
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0, !dbg !1374
  %23 = load i64, i64* %ob_refcnt13, align 8, !dbg !1375, !tbaa !1270
  %dec14 = add i64 %23, -1, !dbg !1375
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !1375, !tbaa !1270
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !1376
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !1377

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !1378

if.else.17:                                       ; preds = %do.body.11
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1380, !tbaa !1252
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1, !dbg !1382
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !1382, !tbaa !1338
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4, !dbg !1383
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !1383, !tbaa !1340
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !1384, !tbaa !1252
  call void %26(%struct._object* %27), !dbg !1385
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %28 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !1386
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1386
  br label %do.cond.21, !dbg !1388

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !1389

do.end.22:                                        ; preds = %do.cond.21
  br label %if.end.23, !dbg !1391

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  %29 = bitcast %struct._object** %_py_xdecref_tmp8 to i8*, !dbg !1393
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !1393
  br label %do.end.25, !dbg !1394

do.end.25:                                        ; preds = %if.end.23
  br label %do.body.26, !dbg !1395

do.body.26:                                       ; preds = %do.end.25
  %30 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !1396
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !1396
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp27, metadata !539, metadata !1222), !dbg !1398
  %31 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1399, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %31, i32 0, i32 3, !dbg !1400
  %32 = load %struct._object*, %struct._object** %files, align 8, !dbg !1400, !tbaa !1401
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1398, !tbaa !1252
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1402, !tbaa !1252
  %cmp28 = icmp ne %struct._object* %33, null, !dbg !1403
  br i1 %cmp28, label %if.then.29, label %if.end.42, !dbg !1404

if.then.29:                                       ; preds = %do.body.26
  br label %do.body.30, !dbg !1405

do.body.30:                                       ; preds = %if.then.29
  %34 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !1407
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !1407
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp31, metadata !541, metadata !1222), !dbg !1409
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp27, align 8, !dbg !1410, !tbaa !1252
  store %struct._object* %35, %struct._object** %_py_decref_tmp31, align 8, !dbg !1409, !tbaa !1252
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1411, !tbaa !1252
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !1413
  %37 = load i64, i64* %ob_refcnt32, align 8, !dbg !1414, !tbaa !1270
  %dec33 = add i64 %37, -1, !dbg !1414
  store i64 %dec33, i64* %ob_refcnt32, align 8, !dbg !1414, !tbaa !1270
  %cmp34 = icmp ne i64 %dec33, 0, !dbg !1415
  br i1 %cmp34, label %if.then.35, label %if.else.36, !dbg !1416

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39, !dbg !1417

if.else.36:                                       ; preds = %do.body.30
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1419, !tbaa !1252
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !1421
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8, !dbg !1421, !tbaa !1338
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !1422
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8, !dbg !1422, !tbaa !1340
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8, !dbg !1423, !tbaa !1252
  call void %40(%struct._object* %41), !dbg !1424
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  %42 = bitcast %struct._object** %_py_decref_tmp31 to i8*, !dbg !1425
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !1425
  br label %do.cond.40, !dbg !1427

do.cond.40:                                       ; preds = %if.end.39
  br label %do.end.41, !dbg !1428

do.end.41:                                        ; preds = %do.cond.40
  br label %if.end.42, !dbg !1430

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  %43 = bitcast %struct._object** %_py_xdecref_tmp27 to i8*, !dbg !1432
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !1432
  br label %do.end.44, !dbg !1433

do.end.44:                                        ; preds = %if.end.42
  %44 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1434, !tbaa !1252
  %45 = bitcast %struct._zipimporter* %44 to %struct._object*, !dbg !1435
  %ob_type45 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1, !dbg !1436
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type45, align 8, !dbg !1436, !tbaa !1338
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 38, !dbg !1437
  %47 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1437, !tbaa !1438
  %48 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1439, !tbaa !1252
  %49 = bitcast %struct._zipimporter* %48 to %struct._object*, !dbg !1440
  %50 = bitcast %struct._object* %49 to i8*, !dbg !1440
  call void %47(i8* %50), !dbg !1441
  ret void, !dbg !1442
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_repr(%struct._zipimporter* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._zipimporter*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !548, metadata !1222), !dbg !1443
  %0 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1444, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %0, i32 0, i32 1, !dbg !1446
  %1 = load %struct._object*, %struct._object** %archive, align 8, !dbg !1446, !tbaa !1316
  %cmp = icmp eq %struct._object* %1, null, !dbg !1447
  br i1 %cmp, label %if.then, label %if.else, !dbg !1448

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0)), !dbg !1449
  store %struct._object* %call, %struct._object** %retval, !dbg !1450
  br label %return, !dbg !1450

if.else:                                          ; preds = %entry
  %2 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1451, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %2, i32 0, i32 2, !dbg !1453
  %3 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !1453, !tbaa !1362
  %cmp1 = icmp ne %struct._object* %3, null, !dbg !1454
  br i1 %cmp1, label %land.lhs.true, label %if.else.8, !dbg !1455

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1456, !tbaa !1252
  %prefix2 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %4, i32 0, i32 2, !dbg !1458
  %5 = load %struct._object*, %struct._object** %prefix2, align 8, !dbg !1458, !tbaa !1362
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*, !dbg !1459
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 1, !dbg !1460
  %7 = load i64, i64* %length, align 8, !dbg !1460, !tbaa !1461
  %cmp3 = icmp ne i64 %7, 0, !dbg !1464
  br i1 %cmp3, label %if.then.4, label %if.else.8, !dbg !1465

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1466, !tbaa !1252
  %archive5 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %8, i32 0, i32 1, !dbg !1467
  %9 = load %struct._object*, %struct._object** %archive5, align 8, !dbg !1467, !tbaa !1316
  %10 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1468, !tbaa !1252
  %prefix6 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %10, i32 0, i32 2, !dbg !1469
  %11 = load %struct._object*, %struct._object** %prefix6, align 8, !dbg !1469, !tbaa !1362
  %call7 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), %struct._object* %9, i32 47, %struct._object* %11), !dbg !1470
  store %struct._object* %call7, %struct._object** %retval, !dbg !1471
  br label %return, !dbg !1471

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1472, !tbaa !1252
  %archive9 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %12, i32 0, i32 1, !dbg !1473
  %13 = load %struct._object*, %struct._object** %archive9, align 8, !dbg !1473, !tbaa !1316
  %call10 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), %struct._object* %13), !dbg !1474
  store %struct._object* %call10, %struct._object** %retval, !dbg !1475
  br label %return, !dbg !1475

return:                                           ; preds = %if.else.8, %if.then.4, %if.then
  %14 = load %struct._object*, %struct._object** %retval, !dbg !1476
  ret %struct._object* %14, !dbg !1476
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i32 @zipimporter_traverse(%struct._object* %obj, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !551, metadata !1222), !dbg !1477
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !552, metadata !1222), !dbg !1478
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !553, metadata !1222), !dbg !1479
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !1480
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1480
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !554, metadata !1222), !dbg !1481
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !1482, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !1483
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !1481, !tbaa !1252
  br label %do.body, !dbg !1484

do.body:                                          ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !1485, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %3, i32 0, i32 3, !dbg !1487
  %4 = load %struct._object*, %struct._object** %files, align 8, !dbg !1487, !tbaa !1401
  %tobool = icmp ne %struct._object* %4, null, !dbg !1488
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1489

if.then:                                          ; preds = %do.body
  %5 = bitcast i32* %vret to i8*, !dbg !1490
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !1490
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !555, metadata !1222), !dbg !1492
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1493, !tbaa !1252
  %7 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !1494, !tbaa !1252
  %files1 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %7, i32 0, i32 3, !dbg !1495
  %8 = load %struct._object*, %struct._object** %files1, align 8, !dbg !1495, !tbaa !1401
  %9 = load i8*, i8** %arg.addr, align 8, !dbg !1496, !tbaa !1252
  %call = call i32 %6(%struct._object* %8, i8* %9), !dbg !1493
  store i32 %call, i32* %vret, align 4, !dbg !1492, !tbaa !1236
  %10 = load i32, i32* %vret, align 4, !dbg !1497, !tbaa !1236
  %tobool2 = icmp ne i32 %10, 0, !dbg !1497
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1499

if.then.3:                                        ; preds = %if.then
  %11 = load i32, i32* %vret, align 4, !dbg !1500, !tbaa !1236
  store i32 %11, i32* %retval, !dbg !1502
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1502

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1503
  br label %cleanup, !dbg !1503

cleanup:                                          ; preds = %if.end, %if.then.3
  %12 = bitcast i32* %vret to i8*, !dbg !1505
  call void @llvm.lifetime.end(i64 4, i8* %12) #1, !dbg !1505
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.5 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1508

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.cond, !dbg !1509

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !1512

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval, !dbg !1514
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.5, !dbg !1514

cleanup.5:                                        ; preds = %do.end, %cleanup
  %13 = bitcast %struct._zipimporter** %self to i8*, !dbg !1515
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !1515
  %14 = load i32, i32* %retval, !dbg !1515
  ret i32 %14, !dbg !1515
}

; Function Attrs: nounwind uwtable
define internal i32 @zipimporter_init(%struct._zipimporter* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._zipimporter*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %files = alloca %struct._object*, align 8
  %tmp = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %flen = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %statbuf = alloca %struct.stat, align 8
  %rv = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp206 = alloca %struct._object*, align 8
  %_py_decref_tmp227 = alloca %struct._object*, align 8
  %_py_decref_tmp241 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp260 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !946, metadata !1222), !dbg !1516
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !947, metadata !1222), !dbg !1517
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !948, metadata !1222), !dbg !1518
  %0 = bitcast %struct._object** %path to i8*, !dbg !1519
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1519
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !949, metadata !1222), !dbg !1520
  %1 = bitcast %struct._object** %files to i8*, !dbg !1519
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1519
  call void @llvm.dbg.declare(metadata %struct._object** %files, metadata !950, metadata !1222), !dbg !1521
  %2 = bitcast %struct._object** %tmp to i8*, !dbg !1519
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1519
  call void @llvm.dbg.declare(metadata %struct._object** %tmp, metadata !951, metadata !1222), !dbg !1522
  %3 = bitcast %struct._object** %filename to i8*, !dbg !1523
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1523
  call void @llvm.dbg.declare(metadata %struct._object** %filename, metadata !952, metadata !1222), !dbg !1524
  store %struct._object* null, %struct._object** %filename, align 8, !dbg !1524, !tbaa !1252
  %4 = bitcast i64* %len to i8*, !dbg !1525
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !1525
  call void @llvm.dbg.declare(metadata i64* %len, metadata !953, metadata !1222), !dbg !1526
  %5 = bitcast i64* %flen to i8*, !dbg !1525
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !1525
  call void @llvm.dbg.declare(metadata i64* %flen, metadata !954, metadata !1222), !dbg !1527
  %6 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !1528, !tbaa !1252
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), %struct._object* %6), !dbg !1530
  %tobool = icmp ne i32 %call, 0, !dbg !1530
  br i1 %tobool, label %if.end, label %if.then, !dbg !1531

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1532
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275, !dbg !1532

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1533, !tbaa !1252
  %call4 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %path), !dbg !1535
  %tobool5 = icmp ne i32 %call4, 0, !dbg !1535
  br i1 %tobool5, label %if.end.7, label %if.then.6, !dbg !1536

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval, !dbg !1537
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275, !dbg !1537

if.end.7:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %path, align 8, !dbg !1538, !tbaa !1252
  %9 = bitcast %struct._object* %8 to %struct.PyASCIIObject*, !dbg !1540
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %9, i32 0, i32 3, !dbg !1541
  %10 = bitcast %struct.anon* %state to i32*, !dbg !1542
  %bf.load = load i32, i32* %10, align 4, !dbg !1542
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !1542
  %bf.clear = and i32 %bf.lshr, 1, !dbg !1542
  %tobool8 = icmp ne i32 %bf.clear, 0, !dbg !1543
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !1543

cond.true:                                        ; preds = %if.end.7
  br label %cond.end, !dbg !1544

cond.false:                                       ; preds = %if.end.7
  %11 = load %struct._object*, %struct._object** %path, align 8, !dbg !1546, !tbaa !1252
  %call9 = call i32 @_PyUnicode_Ready(%struct._object* %11), !dbg !1548
  br label %cond.end, !dbg !1543

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ], !dbg !1543
  %cmp = icmp eq i32 %cond, -1, !dbg !1549
  br i1 %cmp, label %if.then.10, label %if.end.11, !dbg !1552

if.then.10:                                       ; preds = %cond.end
  store i32 -1, i32* %retval, !dbg !1553
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275, !dbg !1553

if.end.11:                                        ; preds = %cond.end
  %12 = load %struct._object*, %struct._object** %path, align 8, !dbg !1554, !tbaa !1252
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*, !dbg !1555
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i32 0, i32 1, !dbg !1556
  %14 = load i64, i64* %length, align 8, !dbg !1556, !tbaa !1461
  store i64 %14, i64* %len, align 8, !dbg !1557, !tbaa !1558
  %15 = load i64, i64* %len, align 8, !dbg !1559, !tbaa !1558
  %cmp12 = icmp eq i64 %15, 0, !dbg !1561
  br i1 %cmp12, label %if.then.13, label %if.end.14, !dbg !1562

if.then.13:                                       ; preds = %if.end.11
  %16 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1563, !tbaa !1252
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0)), !dbg !1565
  br label %error, !dbg !1566

if.end.14:                                        ; preds = %if.end.11
  %17 = load %struct._object*, %struct._object** %path, align 8, !dbg !1567, !tbaa !1252
  store %struct._object* %17, %struct._object** %filename, align 8, !dbg !1568, !tbaa !1252
  %18 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1569, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1570
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1571, !tbaa !1270
  %inc = add i64 %19, 1, !dbg !1571
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1571, !tbaa !1270
  %20 = load i64, i64* %len, align 8, !dbg !1572, !tbaa !1558
  store i64 %20, i64* %flen, align 8, !dbg !1573, !tbaa !1558
  br label %for.cond, !dbg !1574

for.cond:                                         ; preds = %cleanup.cont, %if.end.14
  %21 = bitcast %struct.stat* %statbuf to i8*, !dbg !1575
  call void @llvm.lifetime.start(i64 144, i8* %21) #1, !dbg !1575
  call void @llvm.dbg.declare(metadata %struct.stat* %statbuf, metadata !955, metadata !1222), !dbg !1576
  %22 = bitcast i32* %rv to i8*, !dbg !1577
  call void @llvm.lifetime.start(i64 4, i8* %22) #1, !dbg !1577
  call void @llvm.dbg.declare(metadata i32* %rv, metadata !993, metadata !1222), !dbg !1578
  %23 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1579, !tbaa !1252
  %call17 = call i32 @_Py_stat(%struct._object* %23, %struct.stat* %statbuf), !dbg !1580
  store i32 %call17, i32* %rv, align 4, !dbg !1581, !tbaa !1236
  %24 = load i32, i32* %rv, align 4, !dbg !1582, !tbaa !1236
  %cmp18 = icmp eq i32 %24, -2, !dbg !1584
  br i1 %cmp18, label %if.then.19, label %if.end.20, !dbg !1585

if.then.19:                                       ; preds = %for.cond
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1586

if.end.20:                                        ; preds = %for.cond
  %25 = load i32, i32* %rv, align 4, !dbg !1587, !tbaa !1236
  %cmp21 = icmp eq i32 %25, 0, !dbg !1588
  br i1 %cmp21, label %if.then.22, label %if.end.38, !dbg !1589

if.then.22:                                       ; preds = %if.end.20
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3, !dbg !1590
  %26 = load i32, i32* %st_mode, align 4, !dbg !1590, !tbaa !1591
  %and = and i32 %26, 61440, !dbg !1594
  %cmp23 = icmp eq i32 %and, 32768, !dbg !1595
  br i1 %cmp23, label %if.end.37, label %if.then.24, !dbg !1596

if.then.24:                                       ; preds = %if.then.22
  br label %do.body, !dbg !1597

do.body:                                          ; preds = %if.then.24
  %27 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1598
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !1598
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !994, metadata !1222), !dbg !1600
  %28 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1601, !tbaa !1252
  store %struct._object* %28, %struct._object** %_py_tmp, align 8, !dbg !1600, !tbaa !1252
  %29 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1602, !tbaa !1252
  %cmp26 = icmp ne %struct._object* %29, null, !dbg !1603
  br i1 %cmp26, label %if.then.27, label %if.end.34, !dbg !1604

if.then.27:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %filename, align 8, !dbg !1605, !tbaa !1252
  br label %do.body.28, !dbg !1607

do.body.28:                                       ; preds = %if.then.27
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1608
  call void @llvm.lifetime.start(i64 8, i8* %30) #1, !dbg !1608
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !999, metadata !1222), !dbg !1610
  %31 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1611, !tbaa !1252
  store %struct._object* %31, %struct._object** %_py_decref_tmp, align 8, !dbg !1610, !tbaa !1252
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1612, !tbaa !1252
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0, !dbg !1614
  %33 = load i64, i64* %ob_refcnt30, align 8, !dbg !1615, !tbaa !1270
  %dec = add i64 %33, -1, !dbg !1615
  store i64 %dec, i64* %ob_refcnt30, align 8, !dbg !1615, !tbaa !1270
  %cmp31 = icmp ne i64 %dec, 0, !dbg !1616
  br i1 %cmp31, label %if.then.32, label %if.else, !dbg !1617

if.then.32:                                       ; preds = %do.body.28
  br label %if.end.33, !dbg !1618

if.else:                                          ; preds = %do.body.28
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1620, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1, !dbg !1622
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1622, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4, !dbg !1623
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1623, !tbaa !1340
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1624, !tbaa !1252
  call void %36(%struct._object* %37), !dbg !1625
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1626
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !1626
  br label %do.cond, !dbg !1628

do.cond:                                          ; preds = %if.end.33
  br label %do.end, !dbg !1629

do.end:                                           ; preds = %do.cond
  br label %if.end.34, !dbg !1631

if.end.34:                                        ; preds = %do.end, %do.body
  %39 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1633
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !1633
  br label %do.cond.35, !dbg !1636

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !1637

do.end.36:                                        ; preds = %do.cond.35
  br label %if.end.37, !dbg !1639

if.end.37:                                        ; preds = %do.end.36, %if.then.22
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1641

if.end.38:                                        ; preds = %if.end.20
  br label %do.body.39, !dbg !1642

do.body.39:                                       ; preds = %if.end.38
  %40 = bitcast %struct._object** %_py_tmp41 to i8*, !dbg !1643
  call void @llvm.lifetime.start(i64 8, i8* %40) #1, !dbg !1643
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp41, metadata !1003, metadata !1222), !dbg !1645
  %41 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1646, !tbaa !1252
  store %struct._object* %41, %struct._object** %_py_tmp41, align 8, !dbg !1645, !tbaa !1252
  %42 = load %struct._object*, %struct._object** %_py_tmp41, align 8, !dbg !1647, !tbaa !1252
  %cmp42 = icmp ne %struct._object* %42, null, !dbg !1648
  br i1 %cmp42, label %if.then.43, label %if.end.57, !dbg !1649

if.then.43:                                       ; preds = %do.body.39
  store %struct._object* null, %struct._object** %filename, align 8, !dbg !1650, !tbaa !1252
  br label %do.body.44, !dbg !1652

do.body.44:                                       ; preds = %if.then.43
  %43 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1653
  call void @llvm.lifetime.start(i64 8, i8* %43) #1, !dbg !1653
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp46, metadata !1005, metadata !1222), !dbg !1655
  %44 = load %struct._object*, %struct._object** %_py_tmp41, align 8, !dbg !1656, !tbaa !1252
  store %struct._object* %44, %struct._object** %_py_decref_tmp46, align 8, !dbg !1655, !tbaa !1252
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1657, !tbaa !1252
  %ob_refcnt47 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !1659
  %46 = load i64, i64* %ob_refcnt47, align 8, !dbg !1660, !tbaa !1270
  %dec48 = add i64 %46, -1, !dbg !1660
  store i64 %dec48, i64* %ob_refcnt47, align 8, !dbg !1660, !tbaa !1270
  %cmp49 = icmp ne i64 %dec48, 0, !dbg !1661
  br i1 %cmp49, label %if.then.50, label %if.else.51, !dbg !1662

if.then.50:                                       ; preds = %do.body.44
  br label %if.end.54, !dbg !1663

if.else.51:                                       ; preds = %do.body.44
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1665, !tbaa !1252
  %ob_type52 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1667
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type52, align 8, !dbg !1667, !tbaa !1338
  %tp_dealloc53 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !1668
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc53, align 8, !dbg !1668, !tbaa !1340
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp46, align 8, !dbg !1669, !tbaa !1252
  call void %49(%struct._object* %50), !dbg !1670
  br label %if.end.54

if.end.54:                                        ; preds = %if.else.51, %if.then.50
  %51 = bitcast %struct._object** %_py_decref_tmp46 to i8*, !dbg !1671
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !1671
  br label %do.cond.55, !dbg !1673

do.cond.55:                                       ; preds = %if.end.54
  br label %do.end.56, !dbg !1674

do.end.56:                                        ; preds = %do.cond.55
  br label %if.end.57, !dbg !1676

if.end.57:                                        ; preds = %do.end.56, %do.body.39
  %52 = bitcast %struct._object** %_py_tmp41 to i8*, !dbg !1678
  call void @llvm.lifetime.end(i64 8, i8* %52) #1, !dbg !1678
  br label %do.cond.58, !dbg !1681

do.cond.58:                                       ; preds = %if.end.57
  br label %do.end.59, !dbg !1682

do.end.59:                                        ; preds = %do.cond.58
  %53 = load %struct._object*, %struct._object** %path, align 8, !dbg !1684, !tbaa !1252
  %54 = load i64, i64* %flen, align 8, !dbg !1685, !tbaa !1558
  %call60 = call i64 @PyUnicode_FindChar(%struct._object* %53, i32 47, i64 0, i64 %54, i32 -1), !dbg !1686
  store i64 %call60, i64* %flen, align 8, !dbg !1687, !tbaa !1558
  %55 = load i64, i64* %flen, align 8, !dbg !1688, !tbaa !1558
  %cmp61 = icmp eq i64 %55, -1, !dbg !1690
  br i1 %cmp61, label %if.then.62, label %if.end.63, !dbg !1691

if.then.62:                                       ; preds = %do.end.59
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1692

if.end.63:                                        ; preds = %do.end.59
  %56 = load %struct._object*, %struct._object** %path, align 8, !dbg !1693, !tbaa !1252
  %57 = load i64, i64* %flen, align 8, !dbg !1694, !tbaa !1558
  %call64 = call %struct._object* @PyUnicode_Substring(%struct._object* %56, i64 0, i64 %57), !dbg !1695
  store %struct._object* %call64, %struct._object** %filename, align 8, !dbg !1696, !tbaa !1252
  %58 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1697, !tbaa !1252
  %cmp65 = icmp eq %struct._object* %58, null, !dbg !1699
  br i1 %cmp65, label %if.then.66, label %if.end.67, !dbg !1700

if.then.66:                                       ; preds = %if.end.63
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1701

if.end.67:                                        ; preds = %if.end.63
  store i32 0, i32* %cleanup.dest.slot, !dbg !1702
  br label %cleanup, !dbg !1702

cleanup:                                          ; preds = %if.then.66, %if.then.19, %if.end.67, %if.then.62, %if.end.37
  %59 = bitcast i32* %rv to i8*, !dbg !1703
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !1703
  %60 = bitcast %struct.stat* %statbuf to i8*, !dbg !1703
  call void @llvm.lifetime.end(i64 144, i8* %60) #1, !dbg !1703
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.275 [
    i32 0, label %cleanup.cont
    i32 3, label %for.end
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !1705

for.end:                                          ; preds = %cleanup
  %61 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1706, !tbaa !1252
  %cmp69 = icmp eq %struct._object* %61, null, !dbg !1708
  br i1 %cmp69, label %if.then.70, label %if.end.71, !dbg !1709

if.then.70:                                       ; preds = %for.end
  %62 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !1710, !tbaa !1252
  call void @PyErr_SetString(%struct._object* %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0)), !dbg !1712
  br label %error, !dbg !1713

if.end.71:                                        ; preds = %for.end
  %63 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1714, !tbaa !1252
  %64 = bitcast %struct._object* %63 to %struct.PyASCIIObject*, !dbg !1716
  %state72 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %64, i32 0, i32 3, !dbg !1717
  %65 = bitcast %struct.anon* %state72 to i32*, !dbg !1718
  %bf.load73 = load i32, i32* %65, align 4, !dbg !1718
  %bf.lshr74 = lshr i32 %bf.load73, 7, !dbg !1718
  %bf.clear75 = and i32 %bf.lshr74, 1, !dbg !1718
  %tobool76 = icmp ne i32 %bf.clear75, 0, !dbg !1719
  br i1 %tobool76, label %cond.true.77, label %cond.false.78, !dbg !1719

cond.true.77:                                     ; preds = %if.end.71
  br label %cond.end.80, !dbg !1720

cond.false.78:                                    ; preds = %if.end.71
  %66 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1722, !tbaa !1252
  %call79 = call i32 @_PyUnicode_Ready(%struct._object* %66), !dbg !1724
  br label %cond.end.80, !dbg !1719

cond.end.80:                                      ; preds = %cond.false.78, %cond.true.77
  %cond81 = phi i32 [ 0, %cond.true.77 ], [ %call79, %cond.false.78 ], !dbg !1719
  %cmp82 = icmp slt i32 %cond81, 0, !dbg !1725
  br i1 %cmp82, label %if.then.83, label %if.end.84, !dbg !1728

if.then.83:                                       ; preds = %cond.end.80
  br label %error, !dbg !1729

if.end.84:                                        ; preds = %cond.end.80
  %67 = load %struct._object*, %struct._object** @zip_directory_cache, align 8, !dbg !1730, !tbaa !1252
  %68 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1731, !tbaa !1252
  %call85 = call %struct._object* @PyDict_GetItem(%struct._object* %67, %struct._object* %68), !dbg !1732
  store %struct._object* %call85, %struct._object** %files, align 8, !dbg !1733, !tbaa !1252
  %69 = load %struct._object*, %struct._object** %files, align 8, !dbg !1734, !tbaa !1252
  %cmp86 = icmp eq %struct._object* %69, null, !dbg !1736
  br i1 %cmp86, label %if.then.87, label %if.else.96, !dbg !1737

if.then.87:                                       ; preds = %if.end.84
  %70 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1738, !tbaa !1252
  %call88 = call %struct._object* @read_directory(%struct._object* %70), !dbg !1740
  store %struct._object* %call88, %struct._object** %files, align 8, !dbg !1741, !tbaa !1252
  %71 = load %struct._object*, %struct._object** %files, align 8, !dbg !1742, !tbaa !1252
  %cmp89 = icmp eq %struct._object* %71, null, !dbg !1744
  br i1 %cmp89, label %if.then.90, label %if.end.91, !dbg !1745

if.then.90:                                       ; preds = %if.then.87
  br label %error, !dbg !1746

if.end.91:                                        ; preds = %if.then.87
  %72 = load %struct._object*, %struct._object** @zip_directory_cache, align 8, !dbg !1747, !tbaa !1252
  %73 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1749, !tbaa !1252
  %74 = load %struct._object*, %struct._object** %files, align 8, !dbg !1750, !tbaa !1252
  %call92 = call i32 @PyDict_SetItem(%struct._object* %72, %struct._object* %73, %struct._object* %74), !dbg !1751
  %cmp93 = icmp ne i32 %call92, 0, !dbg !1752
  br i1 %cmp93, label %if.then.94, label %if.end.95, !dbg !1753

if.then.94:                                       ; preds = %if.end.91
  br label %error, !dbg !1754

if.end.95:                                        ; preds = %if.end.91
  br label %if.end.99, !dbg !1755

if.else.96:                                       ; preds = %if.end.84
  %75 = load %struct._object*, %struct._object** %files, align 8, !dbg !1756, !tbaa !1252
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0, !dbg !1757
  %76 = load i64, i64* %ob_refcnt97, align 8, !dbg !1758, !tbaa !1270
  %inc98 = add i64 %76, 1, !dbg !1758
  store i64 %inc98, i64* %ob_refcnt97, align 8, !dbg !1758, !tbaa !1270
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.end.95
  %77 = load %struct._object*, %struct._object** %files, align 8, !dbg !1759, !tbaa !1252
  %78 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1760, !tbaa !1252
  %files100 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %78, i32 0, i32 3, !dbg !1761
  store %struct._object* %77, %struct._object** %files100, align 8, !dbg !1762, !tbaa !1401
  %79 = load %struct._object*, %struct._object** %filename, align 8, !dbg !1763, !tbaa !1252
  %80 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1764, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %80, i32 0, i32 1, !dbg !1765
  store %struct._object* %79, %struct._object** %archive, align 8, !dbg !1766, !tbaa !1316
  store %struct._object* null, %struct._object** %filename, align 8, !dbg !1767, !tbaa !1252
  %81 = load i64, i64* %flen, align 8, !dbg !1768, !tbaa !1558
  %82 = load i64, i64* %len, align 8, !dbg !1769, !tbaa !1558
  %cmp101 = icmp ne i64 %81, %82, !dbg !1770
  br i1 %cmp101, label %if.then.102, label %if.else.221, !dbg !1771

if.then.102:                                      ; preds = %if.end.99
  %83 = load %struct._object*, %struct._object** %path, align 8, !dbg !1772, !tbaa !1252
  %84 = load i64, i64* %flen, align 8, !dbg !1773, !tbaa !1558
  %add = add i64 %84, 1, !dbg !1774
  %85 = load %struct._object*, %struct._object** %path, align 8, !dbg !1775, !tbaa !1252
  %86 = bitcast %struct._object* %85 to %struct.PyASCIIObject*, !dbg !1776
  %length103 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %86, i32 0, i32 1, !dbg !1777
  %87 = load i64, i64* %length103, align 8, !dbg !1777, !tbaa !1461
  %call104 = call %struct._object* @PyUnicode_Substring(%struct._object* %83, i64 %add, i64 %87), !dbg !1778
  store %struct._object* %call104, %struct._object** %tmp, align 8, !dbg !1779, !tbaa !1252
  %88 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1780, !tbaa !1252
  %cmp105 = icmp eq %struct._object* %88, null, !dbg !1782
  br i1 %cmp105, label %if.then.106, label %if.end.107, !dbg !1783

if.then.106:                                      ; preds = %if.then.102
  br label %error, !dbg !1784

if.end.107:                                       ; preds = %if.then.102
  %89 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1785, !tbaa !1252
  %90 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1786, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %90, i32 0, i32 2, !dbg !1787
  store %struct._object* %89, %struct._object** %prefix, align 8, !dbg !1788, !tbaa !1362
  %91 = load %struct._object*, %struct._object** %path, align 8, !dbg !1789, !tbaa !1252
  %92 = bitcast %struct._object* %91 to %struct.PyASCIIObject*, !dbg !1790
  %state108 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %92, i32 0, i32 3, !dbg !1791
  %93 = bitcast %struct.anon* %state108 to i32*, !dbg !1792
  %bf.load109 = load i32, i32* %93, align 4, !dbg !1792
  %bf.lshr110 = lshr i32 %bf.load109, 2, !dbg !1792
  %bf.clear111 = and i32 %bf.lshr110, 7, !dbg !1792
  %cmp112 = icmp eq i32 %bf.clear111, 1, !dbg !1793
  br i1 %cmp112, label %cond.true.113, label %cond.false.133, !dbg !1794

cond.true.113:                                    ; preds = %if.end.107
  %94 = load i64, i64* %len, align 8, !dbg !1795, !tbaa !1558
  %sub = sub i64 %94, 1, !dbg !1797
  %95 = load %struct._object*, %struct._object** %path, align 8, !dbg !1798, !tbaa !1252
  %96 = bitcast %struct._object* %95 to %struct.PyASCIIObject*, !dbg !1799
  %state114 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %96, i32 0, i32 3, !dbg !1800
  %97 = bitcast %struct.anon* %state114 to i32*, !dbg !1801
  %bf.load115 = load i32, i32* %97, align 4, !dbg !1801
  %bf.lshr116 = lshr i32 %bf.load115, 5, !dbg !1801
  %bf.clear117 = and i32 %bf.lshr116, 1, !dbg !1801
  %tobool118 = icmp ne i32 %bf.clear117, 0, !dbg !1802
  br i1 %tobool118, label %cond.true.119, label %cond.false.130, !dbg !1802

cond.true.119:                                    ; preds = %cond.true.113
  %98 = load %struct._object*, %struct._object** %path, align 8, !dbg !1803, !tbaa !1252
  %99 = bitcast %struct._object* %98 to %struct.PyASCIIObject*, !dbg !1805
  %state120 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %99, i32 0, i32 3, !dbg !1806
  %100 = bitcast %struct.anon* %state120 to i32*, !dbg !1807
  %bf.load121 = load i32, i32* %100, align 4, !dbg !1807
  %bf.lshr122 = lshr i32 %bf.load121, 6, !dbg !1807
  %bf.clear123 = and i32 %bf.lshr122, 1, !dbg !1807
  %tobool124 = icmp ne i32 %bf.clear123, 0, !dbg !1808
  br i1 %tobool124, label %cond.true.125, label %cond.false.126, !dbg !1808

cond.true.125:                                    ; preds = %cond.true.119
  %101 = load %struct._object*, %struct._object** %path, align 8, !dbg !1809, !tbaa !1252
  %102 = bitcast %struct._object* %101 to %struct.PyASCIIObject*, !dbg !1811
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %102, i64 1, !dbg !1812
  %103 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !1813
  br label %cond.end.128, !dbg !1808

cond.false.126:                                   ; preds = %cond.true.119
  %104 = load %struct._object*, %struct._object** %path, align 8, !dbg !1814, !tbaa !1252
  %105 = bitcast %struct._object* %104 to %struct.PyCompactUnicodeObject*, !dbg !1816
  %add.ptr127 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %105, i64 1, !dbg !1817
  %106 = bitcast %struct.PyCompactUnicodeObject* %add.ptr127 to i8*, !dbg !1818
  br label %cond.end.128, !dbg !1808

cond.end.128:                                     ; preds = %cond.false.126, %cond.true.125
  %cond129 = phi i8* [ %103, %cond.true.125 ], [ %106, %cond.false.126 ], !dbg !1808
  br label %cond.end.131, !dbg !1819

cond.false.130:                                   ; preds = %cond.true.113
  %107 = load %struct._object*, %struct._object** %path, align 8, !dbg !1822, !tbaa !1252
  %108 = bitcast %struct._object* %107 to %struct.PyUnicodeObject*, !dbg !1824
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %108, i32 0, i32 1, !dbg !1825
  %any = bitcast %union.anon* %data to i8**, !dbg !1826
  %109 = load i8*, i8** %any, align 8, !dbg !1826, !tbaa !1252
  br label %cond.end.131, !dbg !1802

cond.end.131:                                     ; preds = %cond.false.130, %cond.end.128
  %cond132 = phi i8* [ %cond129, %cond.end.128 ], [ %109, %cond.false.130 ], !dbg !1802
  %arrayidx = getelementptr i8, i8* %cond132, i64 %sub, !dbg !1827
  %110 = load i8, i8* %arrayidx, align 1, !dbg !1827, !tbaa !1230
  %conv = zext i8 %110 to i32, !dbg !1827
  br label %cond.end.193, !dbg !1794

cond.false.133:                                   ; preds = %if.end.107
  %111 = load %struct._object*, %struct._object** %path, align 8, !dbg !1830, !tbaa !1252
  %112 = bitcast %struct._object* %111 to %struct.PyASCIIObject*, !dbg !1832
  %state134 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %112, i32 0, i32 3, !dbg !1833
  %113 = bitcast %struct.anon* %state134 to i32*, !dbg !1834
  %bf.load135 = load i32, i32* %113, align 4, !dbg !1834
  %bf.lshr136 = lshr i32 %bf.load135, 2, !dbg !1834
  %bf.clear137 = and i32 %bf.lshr136, 7, !dbg !1834
  %cmp138 = icmp eq i32 %bf.clear137, 2, !dbg !1835
  br i1 %cmp138, label %cond.true.140, label %cond.false.166, !dbg !1836

cond.true.140:                                    ; preds = %cond.false.133
  %114 = load i64, i64* %len, align 8, !dbg !1837, !tbaa !1558
  %sub141 = sub i64 %114, 1, !dbg !1839
  %115 = load %struct._object*, %struct._object** %path, align 8, !dbg !1840, !tbaa !1252
  %116 = bitcast %struct._object* %115 to %struct.PyASCIIObject*, !dbg !1841
  %state142 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %116, i32 0, i32 3, !dbg !1842
  %117 = bitcast %struct.anon* %state142 to i32*, !dbg !1843
  %bf.load143 = load i32, i32* %117, align 4, !dbg !1843
  %bf.lshr144 = lshr i32 %bf.load143, 5, !dbg !1843
  %bf.clear145 = and i32 %bf.lshr144, 1, !dbg !1843
  %tobool146 = icmp ne i32 %bf.clear145, 0, !dbg !1844
  br i1 %tobool146, label %cond.true.147, label %cond.false.159, !dbg !1844

cond.true.147:                                    ; preds = %cond.true.140
  %118 = load %struct._object*, %struct._object** %path, align 8, !dbg !1845, !tbaa !1252
  %119 = bitcast %struct._object* %118 to %struct.PyASCIIObject*, !dbg !1847
  %state148 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %119, i32 0, i32 3, !dbg !1848
  %120 = bitcast %struct.anon* %state148 to i32*, !dbg !1849
  %bf.load149 = load i32, i32* %120, align 4, !dbg !1849
  %bf.lshr150 = lshr i32 %bf.load149, 6, !dbg !1849
  %bf.clear151 = and i32 %bf.lshr150, 1, !dbg !1849
  %tobool152 = icmp ne i32 %bf.clear151, 0, !dbg !1850
  br i1 %tobool152, label %cond.true.153, label %cond.false.155, !dbg !1850

cond.true.153:                                    ; preds = %cond.true.147
  %121 = load %struct._object*, %struct._object** %path, align 8, !dbg !1851, !tbaa !1252
  %122 = bitcast %struct._object* %121 to %struct.PyASCIIObject*, !dbg !1853
  %add.ptr154 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %122, i64 1, !dbg !1854
  %123 = bitcast %struct.PyASCIIObject* %add.ptr154 to i8*, !dbg !1855
  br label %cond.end.157, !dbg !1850

cond.false.155:                                   ; preds = %cond.true.147
  %124 = load %struct._object*, %struct._object** %path, align 8, !dbg !1856, !tbaa !1252
  %125 = bitcast %struct._object* %124 to %struct.PyCompactUnicodeObject*, !dbg !1858
  %add.ptr156 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %125, i64 1, !dbg !1859
  %126 = bitcast %struct.PyCompactUnicodeObject* %add.ptr156 to i8*, !dbg !1860
  br label %cond.end.157, !dbg !1850

cond.end.157:                                     ; preds = %cond.false.155, %cond.true.153
  %cond158 = phi i8* [ %123, %cond.true.153 ], [ %126, %cond.false.155 ], !dbg !1850
  br label %cond.end.162, !dbg !1861

cond.false.159:                                   ; preds = %cond.true.140
  %127 = load %struct._object*, %struct._object** %path, align 8, !dbg !1864, !tbaa !1252
  %128 = bitcast %struct._object* %127 to %struct.PyUnicodeObject*, !dbg !1866
  %data160 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %128, i32 0, i32 1, !dbg !1867
  %any161 = bitcast %union.anon* %data160 to i8**, !dbg !1868
  %129 = load i8*, i8** %any161, align 8, !dbg !1868, !tbaa !1252
  br label %cond.end.162, !dbg !1844

cond.end.162:                                     ; preds = %cond.false.159, %cond.end.157
  %cond163 = phi i8* [ %cond158, %cond.end.157 ], [ %129, %cond.false.159 ], !dbg !1844
  %130 = bitcast i8* %cond163 to i16*, !dbg !1869
  %arrayidx164 = getelementptr i16, i16* %130, i64 %sub141, !dbg !1872
  %131 = load i16, i16* %arrayidx164, align 2, !dbg !1872, !tbaa !1873
  %conv165 = zext i16 %131 to i32, !dbg !1872
  br label %cond.end.191, !dbg !1836

cond.false.166:                                   ; preds = %cond.false.133
  %132 = load i64, i64* %len, align 8, !dbg !1875, !tbaa !1558
  %sub167 = sub i64 %132, 1, !dbg !1877
  %133 = load %struct._object*, %struct._object** %path, align 8, !dbg !1878, !tbaa !1252
  %134 = bitcast %struct._object* %133 to %struct.PyASCIIObject*, !dbg !1879
  %state168 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %134, i32 0, i32 3, !dbg !1880
  %135 = bitcast %struct.anon* %state168 to i32*, !dbg !1881
  %bf.load169 = load i32, i32* %135, align 4, !dbg !1881
  %bf.lshr170 = lshr i32 %bf.load169, 5, !dbg !1881
  %bf.clear171 = and i32 %bf.lshr170, 1, !dbg !1881
  %tobool172 = icmp ne i32 %bf.clear171, 0, !dbg !1882
  br i1 %tobool172, label %cond.true.173, label %cond.false.185, !dbg !1882

cond.true.173:                                    ; preds = %cond.false.166
  %136 = load %struct._object*, %struct._object** %path, align 8, !dbg !1883, !tbaa !1252
  %137 = bitcast %struct._object* %136 to %struct.PyASCIIObject*, !dbg !1885
  %state174 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %137, i32 0, i32 3, !dbg !1886
  %138 = bitcast %struct.anon* %state174 to i32*, !dbg !1887
  %bf.load175 = load i32, i32* %138, align 4, !dbg !1887
  %bf.lshr176 = lshr i32 %bf.load175, 6, !dbg !1887
  %bf.clear177 = and i32 %bf.lshr176, 1, !dbg !1887
  %tobool178 = icmp ne i32 %bf.clear177, 0, !dbg !1888
  br i1 %tobool178, label %cond.true.179, label %cond.false.181, !dbg !1888

cond.true.179:                                    ; preds = %cond.true.173
  %139 = load %struct._object*, %struct._object** %path, align 8, !dbg !1889, !tbaa !1252
  %140 = bitcast %struct._object* %139 to %struct.PyASCIIObject*, !dbg !1891
  %add.ptr180 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %140, i64 1, !dbg !1892
  %141 = bitcast %struct.PyASCIIObject* %add.ptr180 to i8*, !dbg !1893
  br label %cond.end.183, !dbg !1888

cond.false.181:                                   ; preds = %cond.true.173
  %142 = load %struct._object*, %struct._object** %path, align 8, !dbg !1894, !tbaa !1252
  %143 = bitcast %struct._object* %142 to %struct.PyCompactUnicodeObject*, !dbg !1896
  %add.ptr182 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %143, i64 1, !dbg !1897
  %144 = bitcast %struct.PyCompactUnicodeObject* %add.ptr182 to i8*, !dbg !1898
  br label %cond.end.183, !dbg !1888

cond.end.183:                                     ; preds = %cond.false.181, %cond.true.179
  %cond184 = phi i8* [ %141, %cond.true.179 ], [ %144, %cond.false.181 ], !dbg !1888
  br label %cond.end.188, !dbg !1899

cond.false.185:                                   ; preds = %cond.false.166
  %145 = load %struct._object*, %struct._object** %path, align 8, !dbg !1902, !tbaa !1252
  %146 = bitcast %struct._object* %145 to %struct.PyUnicodeObject*, !dbg !1904
  %data186 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %146, i32 0, i32 1, !dbg !1905
  %any187 = bitcast %union.anon* %data186 to i8**, !dbg !1906
  %147 = load i8*, i8** %any187, align 8, !dbg !1906, !tbaa !1252
  br label %cond.end.188, !dbg !1882

cond.end.188:                                     ; preds = %cond.false.185, %cond.end.183
  %cond189 = phi i8* [ %cond184, %cond.end.183 ], [ %147, %cond.false.185 ], !dbg !1882
  %148 = bitcast i8* %cond189 to i32*, !dbg !1907
  %arrayidx190 = getelementptr i32, i32* %148, i64 %sub167, !dbg !1910
  %149 = load i32, i32* %arrayidx190, align 4, !dbg !1910, !tbaa !1236
  br label %cond.end.191, !dbg !1836

cond.end.191:                                     ; preds = %cond.end.188, %cond.end.162
  %cond192 = phi i32 [ %conv165, %cond.end.162 ], [ %149, %cond.end.188 ], !dbg !1836
  br label %cond.end.193, !dbg !1911

cond.end.193:                                     ; preds = %cond.end.191, %cond.end.131
  %cond194 = phi i32 [ %conv, %cond.end.131 ], [ %cond192, %cond.end.191 ], !dbg !1794
  %cmp195 = icmp ne i32 %cond194, 47, !dbg !1914
  br i1 %cmp195, label %if.then.197, label %if.end.220, !dbg !1917

if.then.197:                                      ; preds = %cond.end.193
  %150 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1918, !tbaa !1252
  %prefix198 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %150, i32 0, i32 2, !dbg !1919
  %151 = load %struct._object*, %struct._object** %prefix198, align 8, !dbg !1919, !tbaa !1362
  %call199 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), %struct._object* %151, i32 47), !dbg !1920
  store %struct._object* %call199, %struct._object** %tmp, align 8, !dbg !1921, !tbaa !1252
  %152 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1922, !tbaa !1252
  %cmp200 = icmp eq %struct._object* %152, null, !dbg !1924
  br i1 %cmp200, label %if.then.202, label %if.end.203, !dbg !1925

if.then.202:                                      ; preds = %if.then.197
  br label %error, !dbg !1926

if.end.203:                                       ; preds = %if.then.197
  br label %do.body.204, !dbg !1927

do.body.204:                                      ; preds = %if.end.203
  %153 = bitcast %struct._object** %_py_decref_tmp206 to i8*, !dbg !1928
  call void @llvm.lifetime.start(i64 8, i8* %153) #1, !dbg !1928
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp206, metadata !1009, metadata !1222), !dbg !1930
  %154 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1931, !tbaa !1252
  %prefix207 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %154, i32 0, i32 2, !dbg !1932
  %155 = load %struct._object*, %struct._object** %prefix207, align 8, !dbg !1932, !tbaa !1362
  store %struct._object* %155, %struct._object** %_py_decref_tmp206, align 8, !dbg !1930, !tbaa !1252
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8, !dbg !1933, !tbaa !1252
  %ob_refcnt208 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 0, !dbg !1935
  %157 = load i64, i64* %ob_refcnt208, align 8, !dbg !1936, !tbaa !1270
  %dec209 = add i64 %157, -1, !dbg !1936
  store i64 %dec209, i64* %ob_refcnt208, align 8, !dbg !1936, !tbaa !1270
  %cmp210 = icmp ne i64 %dec209, 0, !dbg !1937
  br i1 %cmp210, label %if.then.212, label %if.else.213, !dbg !1938

if.then.212:                                      ; preds = %do.body.204
  br label %if.end.216, !dbg !1939

if.else.213:                                      ; preds = %do.body.204
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8, !dbg !1941, !tbaa !1252
  %ob_type214 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 1, !dbg !1943
  %159 = load %struct._typeobject*, %struct._typeobject** %ob_type214, align 8, !dbg !1943, !tbaa !1338
  %tp_dealloc215 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %159, i32 0, i32 4, !dbg !1944
  %160 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc215, align 8, !dbg !1944, !tbaa !1340
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8, !dbg !1945, !tbaa !1252
  call void %160(%struct._object* %161), !dbg !1946
  br label %if.end.216

if.end.216:                                       ; preds = %if.else.213, %if.then.212
  %162 = bitcast %struct._object** %_py_decref_tmp206 to i8*, !dbg !1947
  call void @llvm.lifetime.end(i64 8, i8* %162) #1, !dbg !1947
  br label %do.cond.217, !dbg !1949

do.cond.217:                                      ; preds = %if.end.216
  br label %do.end.218, !dbg !1950

do.end.218:                                       ; preds = %do.cond.217
  %163 = load %struct._object*, %struct._object** %tmp, align 8, !dbg !1952, !tbaa !1252
  %164 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1953, !tbaa !1252
  %prefix219 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %164, i32 0, i32 2, !dbg !1954
  store %struct._object* %163, %struct._object** %prefix219, align 8, !dbg !1955, !tbaa !1362
  br label %if.end.220, !dbg !1956

if.end.220:                                       ; preds = %do.end.218, %cond.end.193
  br label %if.end.224, !dbg !1957

if.else.221:                                      ; preds = %if.end.99
  %call222 = call %struct._object* @PyUnicode_New(i64 0, i32 0), !dbg !1958
  %165 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !1959, !tbaa !1252
  %prefix223 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %165, i32 0, i32 2, !dbg !1960
  store %struct._object* %call222, %struct._object** %prefix223, align 8, !dbg !1961, !tbaa !1362
  br label %if.end.224

if.end.224:                                       ; preds = %if.else.221, %if.end.220
  br label %do.body.225, !dbg !1962

do.body.225:                                      ; preds = %if.end.224
  %166 = bitcast %struct._object** %_py_decref_tmp227 to i8*, !dbg !1963
  call void @llvm.lifetime.start(i64 8, i8* %166) #1, !dbg !1963
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp227, metadata !1015, metadata !1222), !dbg !1965
  %167 = load %struct._object*, %struct._object** %path, align 8, !dbg !1966, !tbaa !1252
  store %struct._object* %167, %struct._object** %_py_decref_tmp227, align 8, !dbg !1965, !tbaa !1252
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp227, align 8, !dbg !1967, !tbaa !1252
  %ob_refcnt228 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 0, !dbg !1969
  %169 = load i64, i64* %ob_refcnt228, align 8, !dbg !1970, !tbaa !1270
  %dec229 = add i64 %169, -1, !dbg !1970
  store i64 %dec229, i64* %ob_refcnt228, align 8, !dbg !1970, !tbaa !1270
  %cmp230 = icmp ne i64 %dec229, 0, !dbg !1971
  br i1 %cmp230, label %if.then.232, label %if.else.233, !dbg !1972

if.then.232:                                      ; preds = %do.body.225
  br label %if.end.236, !dbg !1973

if.else.233:                                      ; preds = %do.body.225
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp227, align 8, !dbg !1975, !tbaa !1252
  %ob_type234 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 1, !dbg !1977
  %171 = load %struct._typeobject*, %struct._typeobject** %ob_type234, align 8, !dbg !1977, !tbaa !1338
  %tp_dealloc235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %171, i32 0, i32 4, !dbg !1978
  %172 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8, !dbg !1978, !tbaa !1340
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp227, align 8, !dbg !1979, !tbaa !1252
  call void %172(%struct._object* %173), !dbg !1980
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.233, %if.then.232
  %174 = bitcast %struct._object** %_py_decref_tmp227 to i8*, !dbg !1981
  call void @llvm.lifetime.end(i64 8, i8* %174) #1, !dbg !1981
  br label %do.cond.237, !dbg !1983

do.cond.237:                                      ; preds = %if.end.236
  br label %do.end.238, !dbg !1984

do.end.238:                                       ; preds = %do.cond.237
  store i32 0, i32* %retval, !dbg !1986
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275, !dbg !1986

error:                                            ; preds = %cleanup, %if.then.202, %if.then.106, %if.then.94, %if.then.90, %if.then.83, %if.then.70, %if.then.13
  br label %do.body.239, !dbg !1987

do.body.239:                                      ; preds = %error
  %175 = bitcast %struct._object** %_py_decref_tmp241 to i8*, !dbg !1988
  call void @llvm.lifetime.start(i64 8, i8* %175) #1, !dbg !1988
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp241, metadata !1017, metadata !1222), !dbg !1990
  %176 = load %struct._object*, %struct._object** %path, align 8, !dbg !1991, !tbaa !1252
  store %struct._object* %176, %struct._object** %_py_decref_tmp241, align 8, !dbg !1990, !tbaa !1252
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8, !dbg !1992, !tbaa !1252
  %ob_refcnt242 = getelementptr inbounds %struct._object, %struct._object* %177, i32 0, i32 0, !dbg !1994
  %178 = load i64, i64* %ob_refcnt242, align 8, !dbg !1995, !tbaa !1270
  %dec243 = add i64 %178, -1, !dbg !1995
  store i64 %dec243, i64* %ob_refcnt242, align 8, !dbg !1995, !tbaa !1270
  %cmp244 = icmp ne i64 %dec243, 0, !dbg !1996
  br i1 %cmp244, label %if.then.246, label %if.else.247, !dbg !1997

if.then.246:                                      ; preds = %do.body.239
  br label %if.end.250, !dbg !1998

if.else.247:                                      ; preds = %do.body.239
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8, !dbg !2000, !tbaa !1252
  %ob_type248 = getelementptr inbounds %struct._object, %struct._object* %179, i32 0, i32 1, !dbg !2002
  %180 = load %struct._typeobject*, %struct._typeobject** %ob_type248, align 8, !dbg !2002, !tbaa !1338
  %tp_dealloc249 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %180, i32 0, i32 4, !dbg !2003
  %181 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc249, align 8, !dbg !2003, !tbaa !1340
  %182 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8, !dbg !2004, !tbaa !1252
  call void %181(%struct._object* %182), !dbg !2005
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.247, %if.then.246
  %183 = bitcast %struct._object** %_py_decref_tmp241 to i8*, !dbg !2006
  call void @llvm.lifetime.end(i64 8, i8* %183) #1, !dbg !2006
  br label %do.cond.251, !dbg !2007

do.cond.251:                                      ; preds = %if.end.250
  br label %do.end.252, !dbg !2008

do.end.252:                                       ; preds = %do.cond.251
  br label %do.body.253, !dbg !2010

do.body.253:                                      ; preds = %do.end.252
  %184 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2011
  call void @llvm.lifetime.start(i64 8, i8* %184) #1, !dbg !2011
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1019, metadata !1222), !dbg !2013
  %185 = load %struct._object*, %struct._object** %filename, align 8, !dbg !2014, !tbaa !1252
  store %struct._object* %185, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2013, !tbaa !1252
  %186 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2015, !tbaa !1252
  %cmp255 = icmp ne %struct._object* %186, null, !dbg !2016
  br i1 %cmp255, label %if.then.257, label %if.end.272, !dbg !2017

if.then.257:                                      ; preds = %do.body.253
  br label %do.body.258, !dbg !2018

do.body.258:                                      ; preds = %if.then.257
  %187 = bitcast %struct._object** %_py_decref_tmp260 to i8*, !dbg !2020
  call void @llvm.lifetime.start(i64 8, i8* %187) #1, !dbg !2020
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp260, metadata !1021, metadata !1222), !dbg !2022
  %188 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2023, !tbaa !1252
  store %struct._object* %188, %struct._object** %_py_decref_tmp260, align 8, !dbg !2022, !tbaa !1252
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8, !dbg !2024, !tbaa !1252
  %ob_refcnt261 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 0, !dbg !2026
  %190 = load i64, i64* %ob_refcnt261, align 8, !dbg !2027, !tbaa !1270
  %dec262 = add i64 %190, -1, !dbg !2027
  store i64 %dec262, i64* %ob_refcnt261, align 8, !dbg !2027, !tbaa !1270
  %cmp263 = icmp ne i64 %dec262, 0, !dbg !2028
  br i1 %cmp263, label %if.then.265, label %if.else.266, !dbg !2029

if.then.265:                                      ; preds = %do.body.258
  br label %if.end.269, !dbg !2030

if.else.266:                                      ; preds = %do.body.258
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8, !dbg !2032, !tbaa !1252
  %ob_type267 = getelementptr inbounds %struct._object, %struct._object* %191, i32 0, i32 1, !dbg !2034
  %192 = load %struct._typeobject*, %struct._typeobject** %ob_type267, align 8, !dbg !2034, !tbaa !1338
  %tp_dealloc268 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %192, i32 0, i32 4, !dbg !2035
  %193 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc268, align 8, !dbg !2035, !tbaa !1340
  %194 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8, !dbg !2036, !tbaa !1252
  call void %193(%struct._object* %194), !dbg !2037
  br label %if.end.269

if.end.269:                                       ; preds = %if.else.266, %if.then.265
  %195 = bitcast %struct._object** %_py_decref_tmp260 to i8*, !dbg !2038
  call void @llvm.lifetime.end(i64 8, i8* %195) #1, !dbg !2038
  br label %do.cond.270, !dbg !2040

do.cond.270:                                      ; preds = %if.end.269
  br label %do.end.271, !dbg !2041

do.end.271:                                       ; preds = %do.cond.270
  br label %if.end.272, !dbg !2043

if.end.272:                                       ; preds = %do.end.271, %do.body.253
  %196 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2045
  call void @llvm.lifetime.end(i64 8, i8* %196) #1, !dbg !2045
  br label %do.cond.273, !dbg !2048

do.cond.273:                                      ; preds = %if.end.272
  br label %do.end.274, !dbg !2049

do.end.274:                                       ; preds = %do.cond.273
  store i32 -1, i32* %retval, !dbg !2051
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.275, !dbg !2051

cleanup.275:                                      ; preds = %do.end.274, %do.end.238, %cleanup, %if.then.10, %if.then.6, %if.then
  %197 = bitcast i64* %flen to i8*, !dbg !2052
  call void @llvm.lifetime.end(i64 8, i8* %197) #1, !dbg !2052
  %198 = bitcast i64* %len to i8*, !dbg !2052
  call void @llvm.lifetime.end(i64 8, i8* %198) #1, !dbg !2052
  %199 = bitcast %struct._object** %filename to i8*, !dbg !2052
  call void @llvm.lifetime.end(i64 8, i8* %199) #1, !dbg !2052
  %200 = bitcast %struct._object** %tmp to i8*, !dbg !2052
  call void @llvm.lifetime.end(i64 8, i8* %200) #1, !dbg !2052
  %201 = bitcast %struct._object** %files to i8*, !dbg !2052
  call void @llvm.lifetime.end(i64 8, i8* %201) #1, !dbg !2052
  %202 = bitcast %struct._object** %path to i8*, !dbg !2052
  call void @llvm.lifetime.end(i64 8, i8* %202) #1, !dbg !2052
  %203 = load i32, i32* %retval, !dbg !2052
  ret i32 %203, !dbg !2052
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
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %path = alloca %struct._object*, align 8
  %fullname = alloca %struct._object*, align 8
  %namespace_portion = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !561, metadata !1222), !dbg !2053
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !562, metadata !1222), !dbg !2054
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !2055
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2055
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !563, metadata !1222), !dbg !2056
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2057, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !2058
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !2056, !tbaa !1252
  %3 = bitcast %struct._object** %path to i8*, !dbg !2059
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2059
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !564, metadata !1222), !dbg !2060
  store %struct._object* null, %struct._object** %path, align 8, !dbg !2060, !tbaa !1252
  %4 = bitcast %struct._object** %fullname to i8*, !dbg !2061
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2061
  call void @llvm.dbg.declare(metadata %struct._object** %fullname, metadata !565, metadata !1222), !dbg !2062
  %5 = bitcast %struct._object** %namespace_portion to i8*, !dbg !2063
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2063
  call void @llvm.dbg.declare(metadata %struct._object** %namespace_portion, metadata !566, metadata !1222), !dbg !2064
  store %struct._object* null, %struct._object** %namespace_portion, align 8, !dbg !2064, !tbaa !1252
  %6 = bitcast %struct._object** %result to i8*, !dbg !2065
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2065
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !567, metadata !1222), !dbg !2066
  store %struct._object* null, %struct._object** %result, align 8, !dbg !2066, !tbaa !1252
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2067, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), %struct._object** %fullname, %struct._object** %path), !dbg !2069
  %tobool = icmp ne i32 %call, 0, !dbg !2069
  br i1 %tobool, label %if.end, label %if.then, !dbg !2070

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2071
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2071

if.end:                                           ; preds = %entry
  %8 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2072, !tbaa !1252
  %9 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2073, !tbaa !1252
  %call1 = call i32 @find_loader(%struct._zipimporter* %8, %struct._object* %9, %struct._object** %namespace_portion), !dbg !2074
  switch i32 %call1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.2
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.6
  ], !dbg !2075

sw.bb:                                            ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2076
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2076

sw.bb.2:                                          ; preds = %if.end
  br label %do.body, !dbg !2077

do.body:                                          ; preds = %sw.bb.2
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2078
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2078
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !568, metadata !1222), !dbg !2080
  %11 = load %struct._object*, %struct._object** %namespace_portion, align 8, !dbg !2081, !tbaa !1252
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !2080, !tbaa !1252
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2082, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !2084
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !2085, !tbaa !1270
  %dec = add i64 %13, -1, !dbg !2085
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2085, !tbaa !1270
  %cmp = icmp ne i64 %dec, 0, !dbg !2086
  br i1 %cmp, label %if.then.3, label %if.else, !dbg !2087

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !2088

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2090, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !2092
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2092, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !2093
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2093, !tbaa !1340
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2094, !tbaa !1252
  call void %16(%struct._object* %17), !dbg !2095
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2096
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !2096
  br label %do.cond, !dbg !2098

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !2099

do.end:                                           ; preds = %do.cond
  br label %sw.bb.5, !dbg !2101

sw.bb.5:                                          ; preds = %if.end, %do.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %result, align 8, !dbg !2103, !tbaa !1252
  br label %sw.epilog, !dbg !2104

sw.bb.6:                                          ; preds = %if.end
  %19 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2105, !tbaa !1252
  %20 = bitcast %struct._zipimporter* %19 to %struct._object*, !dbg !2106
  store %struct._object* %20, %struct._object** %result, align 8, !dbg !2107, !tbaa !1252
  br label %sw.epilog, !dbg !2108

sw.epilog:                                        ; preds = %if.end, %sw.bb.6, %sw.bb.5
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !2109, !tbaa !1252
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0, !dbg !2110
  %22 = load i64, i64* %ob_refcnt7, align 8, !dbg !2111, !tbaa !1270
  %inc = add i64 %22, 1, !dbg !2111
  store i64 %inc, i64* %ob_refcnt7, align 8, !dbg !2111, !tbaa !1270
  %23 = load %struct._object*, %struct._object** %result, align 8, !dbg !2112, !tbaa !1252
  store %struct._object* %23, %struct._object** %retval, !dbg !2113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2113

cleanup:                                          ; preds = %sw.epilog, %sw.bb, %if.then
  %24 = bitcast %struct._object** %result to i8*, !dbg !2114
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2114
  %25 = bitcast %struct._object** %namespace_portion to i8*, !dbg !2114
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !2114
  %26 = bitcast %struct._object** %fullname to i8*, !dbg !2114
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2114
  %27 = bitcast %struct._object** %path to i8*, !dbg !2114
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !2114
  %28 = bitcast %struct._zipimporter** %self to i8*, !dbg !2114
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2114
  %29 = load %struct._object*, %struct._object** %retval, !dbg !2114
  ret %struct._object* %29, !dbg !2114
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_find_loader(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %path = alloca %struct._object*, align 8
  %fullname = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %namespace_portion = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !639, metadata !1222), !dbg !2115
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !640, metadata !1222), !dbg !2116
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !2117
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2117
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !641, metadata !1222), !dbg !2118
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2119, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !2120
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !2118, !tbaa !1252
  %3 = bitcast %struct._object** %path to i8*, !dbg !2121
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2121
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !642, metadata !1222), !dbg !2122
  store %struct._object* null, %struct._object** %path, align 8, !dbg !2122, !tbaa !1252
  %4 = bitcast %struct._object** %fullname to i8*, !dbg !2123
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2123
  call void @llvm.dbg.declare(metadata %struct._object** %fullname, metadata !643, metadata !1222), !dbg !2124
  %5 = bitcast %struct._object** %result to i8*, !dbg !2125
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2125
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !644, metadata !1222), !dbg !2126
  store %struct._object* null, %struct._object** %result, align 8, !dbg !2126, !tbaa !1252
  %6 = bitcast %struct._object** %namespace_portion to i8*, !dbg !2127
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2127
  call void @llvm.dbg.declare(metadata %struct._object** %namespace_portion, metadata !645, metadata !1222), !dbg !2128
  store %struct._object* null, %struct._object** %namespace_portion, align 8, !dbg !2128, !tbaa !1252
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2129, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), %struct._object** %fullname, %struct._object** %path), !dbg !2131
  %tobool = icmp ne i32 %call, 0, !dbg !2131
  br i1 %tobool, label %if.end, label %if.then, !dbg !2132

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2133
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2133

if.end:                                           ; preds = %entry
  %8 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2134, !tbaa !1252
  %9 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2135, !tbaa !1252
  %call1 = call i32 @find_loader(%struct._zipimporter* %8, %struct._object* %9, %struct._object** %namespace_portion), !dbg !2136
  switch i32 %call1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.6
  ], !dbg !2137

sw.bb:                                            ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2138
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2138

sw.bb.2:                                          ; preds = %if.end
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._object* @_Py_NoneStruct), !dbg !2139
  store %struct._object* %call3, %struct._object** %result, align 8, !dbg !2140, !tbaa !1252
  br label %sw.epilog, !dbg !2141

sw.bb.4:                                          ; preds = %if.end
  %10 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2142, !tbaa !1252
  %call5 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._zipimporter* %10), !dbg !2143
  store %struct._object* %call5, %struct._object** %result, align 8, !dbg !2144, !tbaa !1252
  br label %sw.epilog, !dbg !2145

sw.bb.6:                                          ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %namespace_portion, align 8, !dbg !2146, !tbaa !1252
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct._object* @_Py_NoneStruct, %struct._object* %11), !dbg !2147
  store %struct._object* %call7, %struct._object** %result, align 8, !dbg !2148, !tbaa !1252
  br label %do.body, !dbg !2149

do.body:                                          ; preds = %sw.bb.6
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2150
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !2150
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !646, metadata !1222), !dbg !2152
  %13 = load %struct._object*, %struct._object** %namespace_portion, align 8, !dbg !2153, !tbaa !1252
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8, !dbg !2152, !tbaa !1252
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2154, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0, !dbg !2156
  %15 = load i64, i64* %ob_refcnt, align 8, !dbg !2157, !tbaa !1270
  %dec = add i64 %15, -1, !dbg !2157
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2157, !tbaa !1270
  %cmp = icmp ne i64 %dec, 0, !dbg !2158
  br i1 %cmp, label %if.then.8, label %if.else, !dbg !2159

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !2160

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2162, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1, !dbg !2164
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2164, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4, !dbg !2165
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2165, !tbaa !1340
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2166, !tbaa !1252
  call void %18(%struct._object* %19), !dbg !2167
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %20 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2168
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !2168
  br label %do.cond, !dbg !2170

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !2171

do.end:                                           ; preds = %do.cond
  %21 = load %struct._object*, %struct._object** %result, align 8, !dbg !2173, !tbaa !1252
  store %struct._object* %21, %struct._object** %retval, !dbg !2174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2174

sw.epilog:                                        ; preds = %if.end, %sw.bb.4, %sw.bb.2
  %22 = load %struct._object*, %struct._object** %result, align 8, !dbg !2175, !tbaa !1252
  store %struct._object* %22, %struct._object** %retval, !dbg !2176
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2176

cleanup:                                          ; preds = %sw.epilog, %do.end, %sw.bb, %if.then
  %23 = bitcast %struct._object** %namespace_portion to i8*, !dbg !2177
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !2177
  %24 = bitcast %struct._object** %result to i8*, !dbg !2177
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !2177
  %25 = bitcast %struct._object** %fullname to i8*, !dbg !2177
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !2177
  %26 = bitcast %struct._object** %path to i8*, !dbg !2177
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2177
  %27 = bitcast %struct._zipimporter** %self to i8*, !dbg !2177
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !2177
  %28 = load %struct._object*, %struct._object** %retval, !dbg !2177
  ret %struct._object* %28, !dbg !2177
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_load_module(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %code = alloca %struct._object*, align 8
  %mod = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %fullname = alloca %struct._object*, align 8
  %modpath = alloca %struct._object*, align 8
  %ispackage = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %pkgpath = alloca %struct._object*, align 8
  %fullpath = alloca %struct._object*, align 8
  %subname = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %_py_decref_tmp81 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_xdecref_tmp111 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !651, metadata !1222), !dbg !2178
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !652, metadata !1222), !dbg !2179
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !2180
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2180
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !653, metadata !1222), !dbg !2181
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2182, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !2183
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !2181, !tbaa !1252
  %3 = bitcast %struct._object** %code to i8*, !dbg !2184
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct._object** %code, metadata !654, metadata !1222), !dbg !2185
  store %struct._object* null, %struct._object** %code, align 8, !dbg !2185, !tbaa !1252
  %4 = bitcast %struct._object** %mod to i8*, !dbg !2184
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct._object** %mod, metadata !655, metadata !1222), !dbg !2186
  %5 = bitcast %struct._object** %dict to i8*, !dbg !2184
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2184
  call void @llvm.dbg.declare(metadata %struct._object** %dict, metadata !656, metadata !1222), !dbg !2187
  %6 = bitcast %struct._object** %fullname to i8*, !dbg !2188
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2188
  call void @llvm.dbg.declare(metadata %struct._object** %fullname, metadata !657, metadata !1222), !dbg !2189
  %7 = bitcast %struct._object** %modpath to i8*, !dbg !2190
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2190
  call void @llvm.dbg.declare(metadata %struct._object** %modpath, metadata !658, metadata !1222), !dbg !2191
  store %struct._object* null, %struct._object** %modpath, align 8, !dbg !2191, !tbaa !1252
  %8 = bitcast i32* %ispackage to i8*, !dbg !2192
  call void @llvm.lifetime.start(i64 4, i8* %8) #1, !dbg !2192
  call void @llvm.dbg.declare(metadata i32* %ispackage, metadata !659, metadata !1222), !dbg !2193
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2194, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), %struct._object** %fullname), !dbg !2196
  %tobool = icmp ne i32 %call, 0, !dbg !2196
  br i1 %tobool, label %if.end, label %if.then, !dbg !2197

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2198
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129, !dbg !2198

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2199, !tbaa !1252
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*, !dbg !2201
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3, !dbg !2202
  %12 = bitcast %struct.anon* %state to i32*, !dbg !2203
  %bf.load = load i32, i32* %12, align 4, !dbg !2203
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2203
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2203
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !2204
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2204

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2205

cond.false:                                       ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2207, !tbaa !1252
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %13), !dbg !2209
  br label %cond.end, !dbg !2204

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ], !dbg !2204
  %cmp = icmp eq i32 %cond, -1, !dbg !2210
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !2213

if.then.3:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !2214
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129, !dbg !2214

if.end.4:                                         ; preds = %cond.end
  %14 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2215, !tbaa !1252
  %15 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2216, !tbaa !1252
  %call5 = call %struct._object* @get_module_code(%struct._zipimporter* %14, %struct._object* %15, i32* %ispackage, %struct._object** %modpath), !dbg !2217
  store %struct._object* %call5, %struct._object** %code, align 8, !dbg !2218, !tbaa !1252
  %16 = load %struct._object*, %struct._object** %code, align 8, !dbg !2219, !tbaa !1252
  %cmp6 = icmp eq %struct._object* %16, null, !dbg !2221
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2222

if.then.7:                                        ; preds = %if.end.4
  br label %error, !dbg !2223

if.end.8:                                         ; preds = %if.end.4
  %17 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2224, !tbaa !1252
  %call9 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %17), !dbg !2225
  store %struct._object* %call9, %struct._object** %mod, align 8, !dbg !2226, !tbaa !1252
  %18 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2227, !tbaa !1252
  %cmp10 = icmp eq %struct._object* %18, null, !dbg !2229
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !2230

if.then.11:                                       ; preds = %if.end.8
  br label %error, !dbg !2231

if.end.12:                                        ; preds = %if.end.8
  %19 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2232, !tbaa !1252
  %call13 = call %struct._object* @PyModule_GetDict(%struct._object* %19), !dbg !2233
  store %struct._object* %call13, %struct._object** %dict, align 8, !dbg !2234, !tbaa !1252
  %20 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2235, !tbaa !1252
  %21 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2237, !tbaa !1252
  %22 = bitcast %struct._zipimporter* %21 to %struct._object*, !dbg !2238
  %call14 = call i32 @PyDict_SetItemString(%struct._object* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct._object* %22), !dbg !2239
  %cmp15 = icmp ne i32 %call14, 0, !dbg !2240
  br i1 %cmp15, label %if.then.16, label %if.end.17, !dbg !2241

if.then.16:                                       ; preds = %if.end.12
  br label %error, !dbg !2242

if.end.17:                                        ; preds = %if.end.12
  %23 = load i32, i32* %ispackage, align 4, !dbg !2243, !tbaa !1236
  %tobool18 = icmp ne i32 %23, 0, !dbg !2243
  br i1 %tobool18, label %if.then.19, label %if.end.54, !dbg !2244

if.then.19:                                       ; preds = %if.end.17
  %24 = bitcast %struct._object** %pkgpath to i8*, !dbg !2245
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !2245
  call void @llvm.dbg.declare(metadata %struct._object** %pkgpath, metadata !660, metadata !1222), !dbg !2246
  %25 = bitcast %struct._object** %fullpath to i8*, !dbg !2245
  call void @llvm.lifetime.start(i64 8, i8* %25) #1, !dbg !2245
  call void @llvm.dbg.declare(metadata %struct._object** %fullpath, metadata !663, metadata !1222), !dbg !2247
  %26 = bitcast %struct._object** %subname to i8*, !dbg !2245
  call void @llvm.lifetime.start(i64 8, i8* %26) #1, !dbg !2245
  call void @llvm.dbg.declare(metadata %struct._object** %subname, metadata !664, metadata !1222), !dbg !2248
  %27 = bitcast i32* %err to i8*, !dbg !2249
  call void @llvm.lifetime.start(i64 4, i8* %27) #1, !dbg !2249
  call void @llvm.dbg.declare(metadata i32* %err, metadata !665, metadata !1222), !dbg !2250
  %28 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2251, !tbaa !1252
  %call20 = call %struct._object* @get_subname(%struct._object* %28), !dbg !2252
  store %struct._object* %call20, %struct._object** %subname, align 8, !dbg !2253, !tbaa !1252
  %29 = load %struct._object*, %struct._object** %subname, align 8, !dbg !2254, !tbaa !1252
  %cmp21 = icmp eq %struct._object* %29, null, !dbg !2256
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !2257

if.then.22:                                       ; preds = %if.then.19
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2258

if.end.23:                                        ; preds = %if.then.19
  %30 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2259, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %30, i32 0, i32 1, !dbg !2260
  %31 = load %struct._object*, %struct._object** %archive, align 8, !dbg !2260, !tbaa !1316
  %32 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2261, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %32, i32 0, i32 2, !dbg !2262
  %33 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !2262, !tbaa !1362
  %34 = load %struct._object*, %struct._object** %subname, align 8, !dbg !2263, !tbaa !1252
  %call24 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* %31, i32 47, %struct._object* %33, %struct._object* %34), !dbg !2264
  store %struct._object* %call24, %struct._object** %fullpath, align 8, !dbg !2265, !tbaa !1252
  br label %do.body, !dbg !2266

do.body:                                          ; preds = %if.end.23
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2267
  call void @llvm.lifetime.start(i64 8, i8* %35) #1, !dbg !2267
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !666, metadata !1222), !dbg !2269
  %36 = load %struct._object*, %struct._object** %subname, align 8, !dbg !2270, !tbaa !1252
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8, !dbg !2269, !tbaa !1252
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2271, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0, !dbg !2273
  %38 = load i64, i64* %ob_refcnt, align 8, !dbg !2274, !tbaa !1270
  %dec = add i64 %38, -1, !dbg !2274
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2274, !tbaa !1270
  %cmp25 = icmp ne i64 %dec, 0, !dbg !2275
  br i1 %cmp25, label %if.then.26, label %if.else, !dbg !2276

if.then.26:                                       ; preds = %do.body
  br label %if.end.27, !dbg !2277

if.else:                                          ; preds = %do.body
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2279, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1, !dbg !2281
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2281, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4, !dbg !2282
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2282, !tbaa !1340
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2283, !tbaa !1252
  call void %41(%struct._object* %42), !dbg !2284
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  %43 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2285
  call void @llvm.lifetime.end(i64 8, i8* %43) #1, !dbg !2285
  br label %do.cond, !dbg !2287

do.cond:                                          ; preds = %if.end.27
  br label %do.end, !dbg !2288

do.end:                                           ; preds = %do.cond
  %44 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !2290, !tbaa !1252
  %cmp28 = icmp eq %struct._object* %44, null, !dbg !2292
  br i1 %cmp28, label %if.then.29, label %if.end.30, !dbg !2293

if.then.29:                                       ; preds = %do.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2294

if.end.30:                                        ; preds = %do.end
  %45 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !2295, !tbaa !1252
  %call31 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct._object* %45), !dbg !2296
  store %struct._object* %call31, %struct._object** %pkgpath, align 8, !dbg !2297, !tbaa !1252
  %46 = load %struct._object*, %struct._object** %pkgpath, align 8, !dbg !2298, !tbaa !1252
  %cmp32 = icmp eq %struct._object* %46, null, !dbg !2300
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !2301

if.then.33:                                       ; preds = %if.end.30
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2302

if.end.34:                                        ; preds = %if.end.30
  %47 = load %struct._object*, %struct._object** %dict, align 8, !dbg !2303, !tbaa !1252
  %48 = load %struct._object*, %struct._object** %pkgpath, align 8, !dbg !2304, !tbaa !1252
  %call35 = call i32 @PyDict_SetItemString(%struct._object* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), %struct._object* %48), !dbg !2305
  store i32 %call35, i32* %err, align 4, !dbg !2306, !tbaa !1236
  br label %do.body.36, !dbg !2307

do.body.36:                                       ; preds = %if.end.34
  %49 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !2308
  call void @llvm.lifetime.start(i64 8, i8* %49) #1, !dbg !2308
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp37, metadata !668, metadata !1222), !dbg !2310
  %50 = load %struct._object*, %struct._object** %pkgpath, align 8, !dbg !2311, !tbaa !1252
  store %struct._object* %50, %struct._object** %_py_decref_tmp37, align 8, !dbg !2310, !tbaa !1252
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !2312, !tbaa !1252
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0, !dbg !2314
  %52 = load i64, i64* %ob_refcnt38, align 8, !dbg !2315, !tbaa !1270
  %dec39 = add i64 %52, -1, !dbg !2315
  store i64 %dec39, i64* %ob_refcnt38, align 8, !dbg !2315, !tbaa !1270
  %cmp40 = icmp ne i64 %dec39, 0, !dbg !2316
  br i1 %cmp40, label %if.then.41, label %if.else.42, !dbg !2317

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45, !dbg !2318

if.else.42:                                       ; preds = %do.body.36
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !2320, !tbaa !1252
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1, !dbg !2322
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8, !dbg !2322, !tbaa !1338
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4, !dbg !2323
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8, !dbg !2323, !tbaa !1340
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8, !dbg !2324, !tbaa !1252
  call void %55(%struct._object* %56), !dbg !2325
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  %57 = bitcast %struct._object** %_py_decref_tmp37 to i8*, !dbg !2326
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !2326
  br label %do.cond.46, !dbg !2327

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !2328

do.end.47:                                        ; preds = %do.cond.46
  %58 = load i32, i32* %err, align 4, !dbg !2330, !tbaa !1236
  %cmp48 = icmp ne i32 %58, 0, !dbg !2332
  br i1 %cmp48, label %if.then.49, label %if.end.50, !dbg !2333

if.then.49:                                       ; preds = %do.end.47
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2334

if.end.50:                                        ; preds = %do.end.47
  store i32 0, i32* %cleanup.dest.slot, !dbg !2335
  br label %cleanup, !dbg !2335

cleanup:                                          ; preds = %if.then.49, %if.then.33, %if.then.29, %if.then.22, %if.end.50
  %59 = bitcast i32* %err to i8*, !dbg !2336
  call void @llvm.lifetime.end(i64 4, i8* %59) #1, !dbg !2336
  %60 = bitcast %struct._object** %subname to i8*, !dbg !2336
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !2336
  %61 = bitcast %struct._object** %fullpath to i8*, !dbg !2336
  call void @llvm.lifetime.end(i64 8, i8* %61) #1, !dbg !2336
  %62 = bitcast %struct._object** %pkgpath to i8*, !dbg !2336
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !2336
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.129 [
    i32 0, label %cleanup.cont
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.54, !dbg !2338

if.end.54:                                        ; preds = %cleanup.cont, %if.end.17
  %63 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2339, !tbaa !1252
  %64 = load %struct._object*, %struct._object** %code, align 8, !dbg !2340, !tbaa !1252
  %65 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2341, !tbaa !1252
  %call55 = call %struct._object* @PyImport_ExecCodeModuleObject(%struct._object* %63, %struct._object* %64, %struct._object* %65, %struct._object* null), !dbg !2342
  store %struct._object* %call55, %struct._object** %mod, align 8, !dbg !2343, !tbaa !1252
  br label %do.body.56, !dbg !2344

do.body.56:                                       ; preds = %if.end.54
  %66 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2345
  call void @llvm.lifetime.start(i64 8, i8* %66) #1, !dbg !2345
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !670, metadata !1222), !dbg !2347
  %67 = load %struct._object*, %struct._object** %code, align 8, !dbg !2348, !tbaa !1252
  store %struct._object* %67, %struct._object** %_py_tmp, align 8, !dbg !2347, !tbaa !1252
  %68 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2349, !tbaa !1252
  %cmp57 = icmp ne %struct._object* %68, null, !dbg !2350
  br i1 %cmp57, label %if.then.58, label %if.end.71, !dbg !2351

if.then.58:                                       ; preds = %do.body.56
  store %struct._object* null, %struct._object** %code, align 8, !dbg !2352, !tbaa !1252
  br label %do.body.59, !dbg !2354

do.body.59:                                       ; preds = %if.then.58
  %69 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !2355
  call void @llvm.lifetime.start(i64 8, i8* %69) #1, !dbg !2355
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp60, metadata !672, metadata !1222), !dbg !2357
  %70 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !2358, !tbaa !1252
  store %struct._object* %70, %struct._object** %_py_decref_tmp60, align 8, !dbg !2357, !tbaa !1252
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !2359, !tbaa !1252
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !2361
  %72 = load i64, i64* %ob_refcnt61, align 8, !dbg !2362, !tbaa !1270
  %dec62 = add i64 %72, -1, !dbg !2362
  store i64 %dec62, i64* %ob_refcnt61, align 8, !dbg !2362, !tbaa !1270
  %cmp63 = icmp ne i64 %dec62, 0, !dbg !2363
  br i1 %cmp63, label %if.then.64, label %if.else.65, !dbg !2364

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.68, !dbg !2365

if.else.65:                                       ; preds = %do.body.59
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !2367, !tbaa !1252
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !2369
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8, !dbg !2369, !tbaa !1338
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !2370
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc67, align 8, !dbg !2370, !tbaa !1340
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8, !dbg !2371, !tbaa !1252
  call void %75(%struct._object* %76), !dbg !2372
  br label %if.end.68

if.end.68:                                        ; preds = %if.else.65, %if.then.64
  %77 = bitcast %struct._object** %_py_decref_tmp60 to i8*, !dbg !2373
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !2373
  br label %do.cond.69, !dbg !2375

do.cond.69:                                       ; preds = %if.end.68
  br label %do.end.70, !dbg !2376

do.end.70:                                        ; preds = %do.cond.69
  br label %if.end.71, !dbg !2378

if.end.71:                                        ; preds = %do.end.70, %do.body.56
  %78 = bitcast %struct._object** %_py_tmp to i8*, !dbg !2380
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !2380
  br label %do.cond.72, !dbg !2383

do.cond.72:                                       ; preds = %if.end.71
  br label %do.end.73, !dbg !2384

do.end.73:                                        ; preds = %do.cond.72
  %79 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2386, !tbaa !1252
  %cmp74 = icmp eq %struct._object* %79, null, !dbg !2388
  br i1 %cmp74, label %if.then.75, label %if.end.76, !dbg !2389

if.then.75:                                       ; preds = %do.end.73
  br label %error, !dbg !2390

if.end.76:                                        ; preds = %do.end.73
  %80 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !2391, !tbaa !1236
  %tobool77 = icmp ne i32 %80, 0, !dbg !2391
  br i1 %tobool77, label %if.then.78, label %if.end.79, !dbg !2393

if.then.78:                                       ; preds = %if.end.76
  %81 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2394, !tbaa !1252
  %82 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2395, !tbaa !1252
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), %struct._object* %81, %struct._object* %82), !dbg !2396
  br label %if.end.79, !dbg !2396

if.end.79:                                        ; preds = %if.then.78, %if.end.76
  br label %do.body.80, !dbg !2397

do.body.80:                                       ; preds = %if.end.79
  %83 = bitcast %struct._object** %_py_decref_tmp81 to i8*, !dbg !2398
  call void @llvm.lifetime.start(i64 8, i8* %83) #1, !dbg !2398
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp81, metadata !676, metadata !1222), !dbg !2400
  %84 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2401, !tbaa !1252
  store %struct._object* %84, %struct._object** %_py_decref_tmp81, align 8, !dbg !2400, !tbaa !1252
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8, !dbg !2402, !tbaa !1252
  %ob_refcnt82 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !2404
  %86 = load i64, i64* %ob_refcnt82, align 8, !dbg !2405, !tbaa !1270
  %dec83 = add i64 %86, -1, !dbg !2405
  store i64 %dec83, i64* %ob_refcnt82, align 8, !dbg !2405, !tbaa !1270
  %cmp84 = icmp ne i64 %dec83, 0, !dbg !2406
  br i1 %cmp84, label %if.then.85, label %if.else.86, !dbg !2407

if.then.85:                                       ; preds = %do.body.80
  br label %if.end.89, !dbg !2408

if.else.86:                                       ; preds = %do.body.80
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8, !dbg !2410, !tbaa !1252
  %ob_type87 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !2412
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type87, align 8, !dbg !2412, !tbaa !1338
  %tp_dealloc88 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !2413
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc88, align 8, !dbg !2413, !tbaa !1340
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp81, align 8, !dbg !2414, !tbaa !1252
  call void %89(%struct._object* %90), !dbg !2415
  br label %if.end.89

if.end.89:                                        ; preds = %if.else.86, %if.then.85
  %91 = bitcast %struct._object** %_py_decref_tmp81 to i8*, !dbg !2416
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !2416
  br label %do.cond.90, !dbg !2418

do.cond.90:                                       ; preds = %if.end.89
  br label %do.end.91, !dbg !2419

do.end.91:                                        ; preds = %do.cond.90
  %92 = load %struct._object*, %struct._object** %mod, align 8, !dbg !2421, !tbaa !1252
  store %struct._object* %92, %struct._object** %retval, !dbg !2422
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129, !dbg !2422

error:                                            ; preds = %cleanup, %if.then.75, %if.then.16, %if.then.11, %if.then.7
  br label %do.body.92, !dbg !2423

do.body.92:                                       ; preds = %error
  %93 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2424
  call void @llvm.lifetime.start(i64 8, i8* %93) #1, !dbg !2424
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !678, metadata !1222), !dbg !2426
  %94 = load %struct._object*, %struct._object** %code, align 8, !dbg !2427, !tbaa !1252
  store %struct._object* %94, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2426, !tbaa !1252
  %95 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2428, !tbaa !1252
  %cmp93 = icmp ne %struct._object* %95, null, !dbg !2429
  br i1 %cmp93, label %if.then.94, label %if.end.107, !dbg !2430

if.then.94:                                       ; preds = %do.body.92
  br label %do.body.95, !dbg !2431

do.body.95:                                       ; preds = %if.then.94
  %96 = bitcast %struct._object** %_py_decref_tmp96 to i8*, !dbg !2433
  call void @llvm.lifetime.start(i64 8, i8* %96) #1, !dbg !2433
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp96, metadata !680, metadata !1222), !dbg !2435
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2436, !tbaa !1252
  store %struct._object* %97, %struct._object** %_py_decref_tmp96, align 8, !dbg !2435, !tbaa !1252
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !2437, !tbaa !1252
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0, !dbg !2439
  %99 = load i64, i64* %ob_refcnt97, align 8, !dbg !2440, !tbaa !1270
  %dec98 = add i64 %99, -1, !dbg !2440
  store i64 %dec98, i64* %ob_refcnt97, align 8, !dbg !2440, !tbaa !1270
  %cmp99 = icmp ne i64 %dec98, 0, !dbg !2441
  br i1 %cmp99, label %if.then.100, label %if.else.101, !dbg !2442

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.104, !dbg !2443

if.else.101:                                      ; preds = %do.body.95
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !2445, !tbaa !1252
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1, !dbg !2447
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8, !dbg !2447, !tbaa !1338
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4, !dbg !2448
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8, !dbg !2448, !tbaa !1340
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8, !dbg !2449, !tbaa !1252
  call void %102(%struct._object* %103), !dbg !2450
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  %104 = bitcast %struct._object** %_py_decref_tmp96 to i8*, !dbg !2451
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !2451
  br label %do.cond.105, !dbg !2453

do.cond.105:                                      ; preds = %if.end.104
  br label %do.end.106, !dbg !2454

do.end.106:                                       ; preds = %do.cond.105
  br label %if.end.107, !dbg !2456

if.end.107:                                       ; preds = %do.end.106, %do.body.92
  %105 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2458
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !2458
  br label %do.cond.108, !dbg !2459

do.cond.108:                                      ; preds = %if.end.107
  br label %do.end.109, !dbg !2460

do.end.109:                                       ; preds = %do.cond.108
  br label %do.body.110, !dbg !2462

do.body.110:                                      ; preds = %do.end.109
  %106 = bitcast %struct._object** %_py_xdecref_tmp111 to i8*, !dbg !2463
  call void @llvm.lifetime.start(i64 8, i8* %106) #1, !dbg !2463
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp111, metadata !683, metadata !1222), !dbg !2465
  %107 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !2466, !tbaa !1252
  store %struct._object* %107, %struct._object** %_py_xdecref_tmp111, align 8, !dbg !2465, !tbaa !1252
  %108 = load %struct._object*, %struct._object** %_py_xdecref_tmp111, align 8, !dbg !2467, !tbaa !1252
  %cmp112 = icmp ne %struct._object* %108, null, !dbg !2468
  br i1 %cmp112, label %if.then.113, label %if.end.126, !dbg !2469

if.then.113:                                      ; preds = %do.body.110
  br label %do.body.114, !dbg !2470

do.body.114:                                      ; preds = %if.then.113
  %109 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2472
  call void @llvm.lifetime.start(i64 8, i8* %109) #1, !dbg !2472
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !685, metadata !1222), !dbg !2474
  %110 = load %struct._object*, %struct._object** %_py_xdecref_tmp111, align 8, !dbg !2475, !tbaa !1252
  store %struct._object* %110, %struct._object** %_py_decref_tmp115, align 8, !dbg !2474, !tbaa !1252
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2476, !tbaa !1252
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 0, !dbg !2478
  %112 = load i64, i64* %ob_refcnt116, align 8, !dbg !2479, !tbaa !1270
  %dec117 = add i64 %112, -1, !dbg !2479
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !2479, !tbaa !1270
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !2480
  br i1 %cmp118, label %if.then.119, label %if.else.120, !dbg !2481

if.then.119:                                      ; preds = %do.body.114
  br label %if.end.123, !dbg !2482

if.else.120:                                      ; preds = %do.body.114
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2484, !tbaa !1252
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 1, !dbg !2486
  %114 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !2486, !tbaa !1338
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %114, i32 0, i32 4, !dbg !2487
  %115 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !2487, !tbaa !1340
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2488, !tbaa !1252
  call void %115(%struct._object* %116), !dbg !2489
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  %117 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2490
  call void @llvm.lifetime.end(i64 8, i8* %117) #1, !dbg !2490
  br label %do.cond.124, !dbg !2492

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !2493

do.end.125:                                       ; preds = %do.cond.124
  br label %if.end.126, !dbg !2495

if.end.126:                                       ; preds = %do.end.125, %do.body.110
  %118 = bitcast %struct._object** %_py_xdecref_tmp111 to i8*, !dbg !2497
  call void @llvm.lifetime.end(i64 8, i8* %118) #1, !dbg !2497
  br label %do.cond.127, !dbg !2498

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128, !dbg !2499

do.end.128:                                       ; preds = %do.cond.127
  store %struct._object* null, %struct._object** %retval, !dbg !2501
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129, !dbg !2501

cleanup.129:                                      ; preds = %do.end.128, %do.end.91, %cleanup, %if.then.3, %if.then
  %119 = bitcast i32* %ispackage to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 4, i8* %119) #1, !dbg !2502
  %120 = bitcast %struct._object** %modpath to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %120) #1, !dbg !2502
  %121 = bitcast %struct._object** %fullname to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %121) #1, !dbg !2502
  %122 = bitcast %struct._object** %dict to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %122) #1, !dbg !2502
  %123 = bitcast %struct._object** %mod to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %123) #1, !dbg !2502
  %124 = bitcast %struct._object** %code to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %124) #1, !dbg !2502
  %125 = bitcast %struct._zipimporter** %self to i8*, !dbg !2502
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !2502
  %126 = load %struct._object*, %struct._object** %retval, !dbg !2502
  ret %struct._object* %126, !dbg !2502
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_data(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %path = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %toc_entry = alloca %struct._object*, align 8
  %path_start = alloca i64, align 8
  %path_len = alloca i64, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !878, metadata !1222), !dbg !2503
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !879, metadata !1222), !dbg !2504
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !2505
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2505
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !880, metadata !1222), !dbg !2506
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2507, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !2508
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !2506, !tbaa !1252
  %3 = bitcast %struct._object** %path to i8*, !dbg !2509
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2509
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !881, metadata !1222), !dbg !2510
  %4 = bitcast %struct._object** %key to i8*, !dbg !2509
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2509
  call void @llvm.dbg.declare(metadata %struct._object** %key, metadata !882, metadata !1222), !dbg !2511
  %5 = bitcast %struct._object** %toc_entry to i8*, !dbg !2512
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2512
  call void @llvm.dbg.declare(metadata %struct._object** %toc_entry, metadata !883, metadata !1222), !dbg !2513
  %6 = bitcast i64* %path_start to i8*, !dbg !2514
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2514
  call void @llvm.dbg.declare(metadata i64* %path_start, metadata !884, metadata !1222), !dbg !2515
  %7 = bitcast i64* %path_len to i8*, !dbg !2514
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2514
  call void @llvm.dbg.declare(metadata i64* %path_len, metadata !885, metadata !1222), !dbg !2516
  %8 = bitcast i64* %len to i8*, !dbg !2514
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !2514
  call void @llvm.dbg.declare(metadata i64* %len, metadata !886, metadata !1222), !dbg !2517
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2518, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), %struct._object** %path), !dbg !2520
  %tobool = icmp ne i32 %call, 0, !dbg !2520
  br i1 %tobool, label %if.end, label %if.then, !dbg !2521

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2522
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2522

if.end:                                           ; preds = %entry
  %10 = load %struct._object*, %struct._object** %path, align 8, !dbg !2523, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !2524
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !2525, !tbaa !1270
  %inc = add i64 %11, 1, !dbg !2525
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2525, !tbaa !1270
  %12 = load %struct._object*, %struct._object** %path, align 8, !dbg !2526, !tbaa !1252
  %13 = bitcast %struct._object* %12 to %struct.PyASCIIObject*, !dbg !2528
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %13, i32 0, i32 3, !dbg !2529
  %14 = bitcast %struct.anon* %state to i32*, !dbg !2530
  %bf.load = load i32, i32* %14, align 4, !dbg !2530
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !2530
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2530
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !2531
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !2531

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2532

cond.false:                                       ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %path, align 8, !dbg !2534, !tbaa !1252
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %15), !dbg !2536
  br label %cond.end, !dbg !2531

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ], !dbg !2531
  %cmp = icmp eq i32 %cond, -1, !dbg !2537
  br i1 %cmp, label %if.then.3, label %if.end.4, !dbg !2540

if.then.3:                                        ; preds = %cond.end
  br label %error, !dbg !2541

if.end.4:                                         ; preds = %cond.end
  %16 = load %struct._object*, %struct._object** %path, align 8, !dbg !2542, !tbaa !1252
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*, !dbg !2543
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 1, !dbg !2544
  %18 = load i64, i64* %length, align 8, !dbg !2544, !tbaa !1461
  store i64 %18, i64* %path_len, align 8, !dbg !2545, !tbaa !1558
  %19 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2546, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %19, i32 0, i32 1, !dbg !2547
  %20 = load %struct._object*, %struct._object** %archive, align 8, !dbg !2547, !tbaa !1316
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*, !dbg !2548
  %length5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 1, !dbg !2549
  %22 = load i64, i64* %length5, align 8, !dbg !2549, !tbaa !1461
  store i64 %22, i64* %len, align 8, !dbg !2550, !tbaa !1558
  store i64 0, i64* %path_start, align 8, !dbg !2551, !tbaa !1558
  %23 = load %struct._object*, %struct._object** %path, align 8, !dbg !2552, !tbaa !1252
  %24 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2554, !tbaa !1252
  %archive6 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %24, i32 0, i32 1, !dbg !2555
  %25 = load %struct._object*, %struct._object** %archive6, align 8, !dbg !2555, !tbaa !1316
  %26 = load i64, i64* %len, align 8, !dbg !2556, !tbaa !1558
  %call7 = call i64 @PyUnicode_Tailmatch(%struct._object* %23, %struct._object* %25, i64 0, i64 %26, i32 -1), !dbg !2557
  %tobool8 = icmp ne i64 %call7, 0, !dbg !2557
  br i1 %tobool8, label %land.lhs.true, label %if.end.97, !dbg !2558

land.lhs.true:                                    ; preds = %if.end.4
  %27 = load %struct._object*, %struct._object** %path, align 8, !dbg !2559, !tbaa !1252
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*, !dbg !2561
  %state9 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 3, !dbg !2562
  %29 = bitcast %struct.anon* %state9 to i32*, !dbg !2563
  %bf.load10 = load i32, i32* %29, align 4, !dbg !2563
  %bf.lshr11 = lshr i32 %bf.load10, 2, !dbg !2563
  %bf.clear12 = and i32 %bf.lshr11, 7, !dbg !2563
  %cmp13 = icmp eq i32 %bf.clear12, 1, !dbg !2564
  br i1 %cmp13, label %cond.true.14, label %cond.false.34, !dbg !2565

cond.true.14:                                     ; preds = %land.lhs.true
  %30 = load i64, i64* %len, align 8, !dbg !2566, !tbaa !1558
  %31 = load %struct._object*, %struct._object** %path, align 8, !dbg !2568, !tbaa !1252
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*, !dbg !2569
  %state15 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i32 0, i32 3, !dbg !2570
  %33 = bitcast %struct.anon* %state15 to i32*, !dbg !2571
  %bf.load16 = load i32, i32* %33, align 4, !dbg !2571
  %bf.lshr17 = lshr i32 %bf.load16, 5, !dbg !2571
  %bf.clear18 = and i32 %bf.lshr17, 1, !dbg !2571
  %tobool19 = icmp ne i32 %bf.clear18, 0, !dbg !2572
  br i1 %tobool19, label %cond.true.20, label %cond.false.31, !dbg !2572

cond.true.20:                                     ; preds = %cond.true.14
  %34 = load %struct._object*, %struct._object** %path, align 8, !dbg !2573, !tbaa !1252
  %35 = bitcast %struct._object* %34 to %struct.PyASCIIObject*, !dbg !2575
  %state21 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %35, i32 0, i32 3, !dbg !2576
  %36 = bitcast %struct.anon* %state21 to i32*, !dbg !2577
  %bf.load22 = load i32, i32* %36, align 4, !dbg !2577
  %bf.lshr23 = lshr i32 %bf.load22, 6, !dbg !2577
  %bf.clear24 = and i32 %bf.lshr23, 1, !dbg !2577
  %tobool25 = icmp ne i32 %bf.clear24, 0, !dbg !2578
  br i1 %tobool25, label %cond.true.26, label %cond.false.27, !dbg !2578

cond.true.26:                                     ; preds = %cond.true.20
  %37 = load %struct._object*, %struct._object** %path, align 8, !dbg !2579, !tbaa !1252
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*, !dbg !2581
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i64 1, !dbg !2582
  %39 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !2583
  br label %cond.end.29, !dbg !2578

cond.false.27:                                    ; preds = %cond.true.20
  %40 = load %struct._object*, %struct._object** %path, align 8, !dbg !2584, !tbaa !1252
  %41 = bitcast %struct._object* %40 to %struct.PyCompactUnicodeObject*, !dbg !2586
  %add.ptr28 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %41, i64 1, !dbg !2587
  %42 = bitcast %struct.PyCompactUnicodeObject* %add.ptr28 to i8*, !dbg !2588
  br label %cond.end.29, !dbg !2578

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi i8* [ %39, %cond.true.26 ], [ %42, %cond.false.27 ], !dbg !2578
  br label %cond.end.32, !dbg !2589

cond.false.31:                                    ; preds = %cond.true.14
  %43 = load %struct._object*, %struct._object** %path, align 8, !dbg !2592, !tbaa !1252
  %44 = bitcast %struct._object* %43 to %struct.PyUnicodeObject*, !dbg !2594
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %44, i32 0, i32 1, !dbg !2595
  %any = bitcast %union.anon* %data to i8**, !dbg !2596
  %45 = load i8*, i8** %any, align 8, !dbg !2596, !tbaa !1252
  br label %cond.end.32, !dbg !2572

cond.end.32:                                      ; preds = %cond.false.31, %cond.end.29
  %cond33 = phi i8* [ %cond30, %cond.end.29 ], [ %45, %cond.false.31 ], !dbg !2572
  %arrayidx = getelementptr i8, i8* %cond33, i64 %30, !dbg !2597
  %46 = load i8, i8* %arrayidx, align 1, !dbg !2597, !tbaa !1230
  %conv = zext i8 %46 to i32, !dbg !2597
  br label %cond.end.92, !dbg !2565

cond.false.34:                                    ; preds = %land.lhs.true
  %47 = load %struct._object*, %struct._object** %path, align 8, !dbg !2600, !tbaa !1252
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*, !dbg !2602
  %state35 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 3, !dbg !2603
  %49 = bitcast %struct.anon* %state35 to i32*, !dbg !2604
  %bf.load36 = load i32, i32* %49, align 4, !dbg !2604
  %bf.lshr37 = lshr i32 %bf.load36, 2, !dbg !2604
  %bf.clear38 = and i32 %bf.lshr37, 7, !dbg !2604
  %cmp39 = icmp eq i32 %bf.clear38, 2, !dbg !2605
  br i1 %cmp39, label %cond.true.41, label %cond.false.66, !dbg !2606

cond.true.41:                                     ; preds = %cond.false.34
  %50 = load i64, i64* %len, align 8, !dbg !2607, !tbaa !1558
  %51 = load %struct._object*, %struct._object** %path, align 8, !dbg !2609, !tbaa !1252
  %52 = bitcast %struct._object* %51 to %struct.PyASCIIObject*, !dbg !2610
  %state42 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %52, i32 0, i32 3, !dbg !2611
  %53 = bitcast %struct.anon* %state42 to i32*, !dbg !2612
  %bf.load43 = load i32, i32* %53, align 4, !dbg !2612
  %bf.lshr44 = lshr i32 %bf.load43, 5, !dbg !2612
  %bf.clear45 = and i32 %bf.lshr44, 1, !dbg !2612
  %tobool46 = icmp ne i32 %bf.clear45, 0, !dbg !2613
  br i1 %tobool46, label %cond.true.47, label %cond.false.59, !dbg !2613

cond.true.47:                                     ; preds = %cond.true.41
  %54 = load %struct._object*, %struct._object** %path, align 8, !dbg !2614, !tbaa !1252
  %55 = bitcast %struct._object* %54 to %struct.PyASCIIObject*, !dbg !2616
  %state48 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %55, i32 0, i32 3, !dbg !2617
  %56 = bitcast %struct.anon* %state48 to i32*, !dbg !2618
  %bf.load49 = load i32, i32* %56, align 4, !dbg !2618
  %bf.lshr50 = lshr i32 %bf.load49, 6, !dbg !2618
  %bf.clear51 = and i32 %bf.lshr50, 1, !dbg !2618
  %tobool52 = icmp ne i32 %bf.clear51, 0, !dbg !2619
  br i1 %tobool52, label %cond.true.53, label %cond.false.55, !dbg !2619

cond.true.53:                                     ; preds = %cond.true.47
  %57 = load %struct._object*, %struct._object** %path, align 8, !dbg !2620, !tbaa !1252
  %58 = bitcast %struct._object* %57 to %struct.PyASCIIObject*, !dbg !2622
  %add.ptr54 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %58, i64 1, !dbg !2623
  %59 = bitcast %struct.PyASCIIObject* %add.ptr54 to i8*, !dbg !2624
  br label %cond.end.57, !dbg !2619

cond.false.55:                                    ; preds = %cond.true.47
  %60 = load %struct._object*, %struct._object** %path, align 8, !dbg !2625, !tbaa !1252
  %61 = bitcast %struct._object* %60 to %struct.PyCompactUnicodeObject*, !dbg !2627
  %add.ptr56 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %61, i64 1, !dbg !2628
  %62 = bitcast %struct.PyCompactUnicodeObject* %add.ptr56 to i8*, !dbg !2629
  br label %cond.end.57, !dbg !2619

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.53
  %cond58 = phi i8* [ %59, %cond.true.53 ], [ %62, %cond.false.55 ], !dbg !2619
  br label %cond.end.62, !dbg !2630

cond.false.59:                                    ; preds = %cond.true.41
  %63 = load %struct._object*, %struct._object** %path, align 8, !dbg !2633, !tbaa !1252
  %64 = bitcast %struct._object* %63 to %struct.PyUnicodeObject*, !dbg !2635
  %data60 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %64, i32 0, i32 1, !dbg !2636
  %any61 = bitcast %union.anon* %data60 to i8**, !dbg !2637
  %65 = load i8*, i8** %any61, align 8, !dbg !2637, !tbaa !1252
  br label %cond.end.62, !dbg !2613

cond.end.62:                                      ; preds = %cond.false.59, %cond.end.57
  %cond63 = phi i8* [ %cond58, %cond.end.57 ], [ %65, %cond.false.59 ], !dbg !2613
  %66 = bitcast i8* %cond63 to i16*, !dbg !2638
  %arrayidx64 = getelementptr i16, i16* %66, i64 %50, !dbg !2641
  %67 = load i16, i16* %arrayidx64, align 2, !dbg !2641, !tbaa !1873
  %conv65 = zext i16 %67 to i32, !dbg !2641
  br label %cond.end.90, !dbg !2606

cond.false.66:                                    ; preds = %cond.false.34
  %68 = load i64, i64* %len, align 8, !dbg !2642, !tbaa !1558
  %69 = load %struct._object*, %struct._object** %path, align 8, !dbg !2644, !tbaa !1252
  %70 = bitcast %struct._object* %69 to %struct.PyASCIIObject*, !dbg !2645
  %state67 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %70, i32 0, i32 3, !dbg !2646
  %71 = bitcast %struct.anon* %state67 to i32*, !dbg !2647
  %bf.load68 = load i32, i32* %71, align 4, !dbg !2647
  %bf.lshr69 = lshr i32 %bf.load68, 5, !dbg !2647
  %bf.clear70 = and i32 %bf.lshr69, 1, !dbg !2647
  %tobool71 = icmp ne i32 %bf.clear70, 0, !dbg !2648
  br i1 %tobool71, label %cond.true.72, label %cond.false.84, !dbg !2648

cond.true.72:                                     ; preds = %cond.false.66
  %72 = load %struct._object*, %struct._object** %path, align 8, !dbg !2649, !tbaa !1252
  %73 = bitcast %struct._object* %72 to %struct.PyASCIIObject*, !dbg !2651
  %state73 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %73, i32 0, i32 3, !dbg !2652
  %74 = bitcast %struct.anon* %state73 to i32*, !dbg !2653
  %bf.load74 = load i32, i32* %74, align 4, !dbg !2653
  %bf.lshr75 = lshr i32 %bf.load74, 6, !dbg !2653
  %bf.clear76 = and i32 %bf.lshr75, 1, !dbg !2653
  %tobool77 = icmp ne i32 %bf.clear76, 0, !dbg !2654
  br i1 %tobool77, label %cond.true.78, label %cond.false.80, !dbg !2654

cond.true.78:                                     ; preds = %cond.true.72
  %75 = load %struct._object*, %struct._object** %path, align 8, !dbg !2655, !tbaa !1252
  %76 = bitcast %struct._object* %75 to %struct.PyASCIIObject*, !dbg !2657
  %add.ptr79 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %76, i64 1, !dbg !2658
  %77 = bitcast %struct.PyASCIIObject* %add.ptr79 to i8*, !dbg !2659
  br label %cond.end.82, !dbg !2654

cond.false.80:                                    ; preds = %cond.true.72
  %78 = load %struct._object*, %struct._object** %path, align 8, !dbg !2660, !tbaa !1252
  %79 = bitcast %struct._object* %78 to %struct.PyCompactUnicodeObject*, !dbg !2662
  %add.ptr81 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %79, i64 1, !dbg !2663
  %80 = bitcast %struct.PyCompactUnicodeObject* %add.ptr81 to i8*, !dbg !2664
  br label %cond.end.82, !dbg !2654

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.78
  %cond83 = phi i8* [ %77, %cond.true.78 ], [ %80, %cond.false.80 ], !dbg !2654
  br label %cond.end.87, !dbg !2665

cond.false.84:                                    ; preds = %cond.false.66
  %81 = load %struct._object*, %struct._object** %path, align 8, !dbg !2668, !tbaa !1252
  %82 = bitcast %struct._object* %81 to %struct.PyUnicodeObject*, !dbg !2670
  %data85 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %82, i32 0, i32 1, !dbg !2671
  %any86 = bitcast %union.anon* %data85 to i8**, !dbg !2672
  %83 = load i8*, i8** %any86, align 8, !dbg !2672, !tbaa !1252
  br label %cond.end.87, !dbg !2648

cond.end.87:                                      ; preds = %cond.false.84, %cond.end.82
  %cond88 = phi i8* [ %cond83, %cond.end.82 ], [ %83, %cond.false.84 ], !dbg !2648
  %84 = bitcast i8* %cond88 to i32*, !dbg !2673
  %arrayidx89 = getelementptr i32, i32* %84, i64 %68, !dbg !2676
  %85 = load i32, i32* %arrayidx89, align 4, !dbg !2676, !tbaa !1236
  br label %cond.end.90, !dbg !2606

cond.end.90:                                      ; preds = %cond.end.87, %cond.end.62
  %cond91 = phi i32 [ %conv65, %cond.end.62 ], [ %85, %cond.end.87 ], !dbg !2606
  br label %cond.end.92, !dbg !2677

cond.end.92:                                      ; preds = %cond.end.90, %cond.end.32
  %cond93 = phi i32 [ %conv, %cond.end.32 ], [ %cond91, %cond.end.90 ], !dbg !2565
  %cmp94 = icmp eq i32 %cond93, 47, !dbg !2680
  br i1 %cmp94, label %if.then.96, label %if.end.97, !dbg !2683

if.then.96:                                       ; preds = %cond.end.92
  %86 = load i64, i64* %len, align 8, !dbg !2684, !tbaa !1558
  %add = add i64 %86, 1, !dbg !2686
  store i64 %add, i64* %path_start, align 8, !dbg !2687, !tbaa !1558
  br label %if.end.97, !dbg !2688

if.end.97:                                        ; preds = %if.then.96, %cond.end.92, %if.end.4
  %87 = load %struct._object*, %struct._object** %path, align 8, !dbg !2689, !tbaa !1252
  %88 = load i64, i64* %path_start, align 8, !dbg !2690, !tbaa !1558
  %89 = load i64, i64* %path_len, align 8, !dbg !2691, !tbaa !1558
  %call98 = call %struct._object* @PyUnicode_Substring(%struct._object* %87, i64 %88, i64 %89), !dbg !2692
  store %struct._object* %call98, %struct._object** %key, align 8, !dbg !2693, !tbaa !1252
  %90 = load %struct._object*, %struct._object** %key, align 8, !dbg !2694, !tbaa !1252
  %cmp99 = icmp eq %struct._object* %90, null, !dbg !2696
  br i1 %cmp99, label %if.then.101, label %if.end.102, !dbg !2697

if.then.101:                                      ; preds = %if.end.97
  br label %error, !dbg !2698

if.end.102:                                       ; preds = %if.end.97
  %91 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2699, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %91, i32 0, i32 3, !dbg !2700
  %92 = load %struct._object*, %struct._object** %files, align 8, !dbg !2700, !tbaa !1401
  %93 = load %struct._object*, %struct._object** %key, align 8, !dbg !2701, !tbaa !1252
  %call103 = call %struct._object* @PyDict_GetItem(%struct._object* %92, %struct._object* %93), !dbg !2702
  store %struct._object* %call103, %struct._object** %toc_entry, align 8, !dbg !2703, !tbaa !1252
  %94 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !2704, !tbaa !1252
  %cmp104 = icmp eq %struct._object* %94, null, !dbg !2705
  br i1 %cmp104, label %if.then.106, label %if.end.113, !dbg !2706

if.then.106:                                      ; preds = %if.end.102
  %95 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !2707, !tbaa !1252
  %96 = load %struct._object*, %struct._object** %key, align 8, !dbg !2708, !tbaa !1252
  %call107 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %95, %struct._object* %96), !dbg !2709
  br label %do.body, !dbg !2710

do.body:                                          ; preds = %if.then.106
  %97 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2711
  call void @llvm.lifetime.start(i64 8, i8* %97) #1, !dbg !2711
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !887, metadata !1222), !dbg !2713
  %98 = load %struct._object*, %struct._object** %key, align 8, !dbg !2714, !tbaa !1252
  store %struct._object* %98, %struct._object** %_py_decref_tmp, align 8, !dbg !2713, !tbaa !1252
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2715, !tbaa !1252
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !2717
  %100 = load i64, i64* %ob_refcnt108, align 8, !dbg !2718, !tbaa !1270
  %dec = add i64 %100, -1, !dbg !2718
  store i64 %dec, i64* %ob_refcnt108, align 8, !dbg !2718, !tbaa !1270
  %cmp109 = icmp ne i64 %dec, 0, !dbg !2719
  br i1 %cmp109, label %if.then.111, label %if.else, !dbg !2720

if.then.111:                                      ; preds = %do.body
  br label %if.end.112, !dbg !2721

if.else:                                          ; preds = %do.body
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2723, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !2725
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2725, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !2726
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2726, !tbaa !1340
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2727, !tbaa !1252
  call void %103(%struct._object* %104), !dbg !2728
  br label %if.end.112

if.end.112:                                       ; preds = %if.else, %if.then.111
  %105 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2729
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !2729
  br label %do.cond, !dbg !2731

do.cond:                                          ; preds = %if.end.112
  br label %do.end, !dbg !2732

do.end:                                           ; preds = %do.cond
  br label %error, !dbg !2734

if.end.113:                                       ; preds = %if.end.102
  br label %do.body.114, !dbg !2735

do.body.114:                                      ; preds = %if.end.113
  %106 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2736
  call void @llvm.lifetime.start(i64 8, i8* %106) #1, !dbg !2736
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !891, metadata !1222), !dbg !2738
  %107 = load %struct._object*, %struct._object** %key, align 8, !dbg !2739, !tbaa !1252
  store %struct._object* %107, %struct._object** %_py_decref_tmp115, align 8, !dbg !2738, !tbaa !1252
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2740, !tbaa !1252
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0, !dbg !2742
  %109 = load i64, i64* %ob_refcnt116, align 8, !dbg !2743, !tbaa !1270
  %dec117 = add i64 %109, -1, !dbg !2743
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !2743, !tbaa !1270
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !2744
  br i1 %cmp118, label %if.then.120, label %if.else.121, !dbg !2745

if.then.120:                                      ; preds = %do.body.114
  br label %if.end.124, !dbg !2746

if.else.121:                                      ; preds = %do.body.114
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2748, !tbaa !1252
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1, !dbg !2750
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8, !dbg !2750, !tbaa !1338
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4, !dbg !2751
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8, !dbg !2751, !tbaa !1340
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !2752, !tbaa !1252
  call void %112(%struct._object* %113), !dbg !2753
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  %114 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !2754
  call void @llvm.lifetime.end(i64 8, i8* %114) #1, !dbg !2754
  br label %do.cond.125, !dbg !2756

do.cond.125:                                      ; preds = %if.end.124
  br label %do.end.126, !dbg !2757

do.end.126:                                       ; preds = %do.cond.125
  br label %do.body.127, !dbg !2759

do.body.127:                                      ; preds = %do.end.126
  %115 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !2760
  call void @llvm.lifetime.start(i64 8, i8* %115) #1, !dbg !2760
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp128, metadata !893, metadata !1222), !dbg !2762
  %116 = load %struct._object*, %struct._object** %path, align 8, !dbg !2763, !tbaa !1252
  store %struct._object* %116, %struct._object** %_py_decref_tmp128, align 8, !dbg !2762, !tbaa !1252
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !2764, !tbaa !1252
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0, !dbg !2766
  %118 = load i64, i64* %ob_refcnt129, align 8, !dbg !2767, !tbaa !1270
  %dec130 = add i64 %118, -1, !dbg !2767
  store i64 %dec130, i64* %ob_refcnt129, align 8, !dbg !2767, !tbaa !1270
  %cmp131 = icmp ne i64 %dec130, 0, !dbg !2768
  br i1 %cmp131, label %if.then.133, label %if.else.134, !dbg !2769

if.then.133:                                      ; preds = %do.body.127
  br label %if.end.137, !dbg !2770

if.else.134:                                      ; preds = %do.body.127
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !2772, !tbaa !1252
  %ob_type135 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1, !dbg !2774
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type135, align 8, !dbg !2774, !tbaa !1338
  %tp_dealloc136 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4, !dbg !2775
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc136, align 8, !dbg !2775, !tbaa !1340
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8, !dbg !2776, !tbaa !1252
  call void %121(%struct._object* %122), !dbg !2777
  br label %if.end.137

if.end.137:                                       ; preds = %if.else.134, %if.then.133
  %123 = bitcast %struct._object** %_py_decref_tmp128 to i8*, !dbg !2778
  call void @llvm.lifetime.end(i64 8, i8* %123) #1, !dbg !2778
  br label %do.cond.138, !dbg !2779

do.cond.138:                                      ; preds = %if.end.137
  br label %do.end.139, !dbg !2780

do.end.139:                                       ; preds = %do.cond.138
  %124 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2782, !tbaa !1252
  %archive140 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %124, i32 0, i32 1, !dbg !2783
  %125 = load %struct._object*, %struct._object** %archive140, align 8, !dbg !2783, !tbaa !1316
  %126 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !2784, !tbaa !1252
  %call141 = call %struct._object* @get_data(%struct._object* %125, %struct._object* %126), !dbg !2785
  store %struct._object* %call141, %struct._object** %retval, !dbg !2786
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2786

error:                                            ; preds = %do.end, %if.then.101, %if.then.3
  br label %do.body.142, !dbg !2787

do.body.142:                                      ; preds = %error
  %127 = bitcast %struct._object** %_py_decref_tmp143 to i8*, !dbg !2788
  call void @llvm.lifetime.start(i64 8, i8* %127) #1, !dbg !2788
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp143, metadata !895, metadata !1222), !dbg !2790
  %128 = load %struct._object*, %struct._object** %path, align 8, !dbg !2791, !tbaa !1252
  store %struct._object* %128, %struct._object** %_py_decref_tmp143, align 8, !dbg !2790, !tbaa !1252
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !2792, !tbaa !1252
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 0, !dbg !2794
  %130 = load i64, i64* %ob_refcnt144, align 8, !dbg !2795, !tbaa !1270
  %dec145 = add i64 %130, -1, !dbg !2795
  store i64 %dec145, i64* %ob_refcnt144, align 8, !dbg !2795, !tbaa !1270
  %cmp146 = icmp ne i64 %dec145, 0, !dbg !2796
  br i1 %cmp146, label %if.then.148, label %if.else.149, !dbg !2797

if.then.148:                                      ; preds = %do.body.142
  br label %if.end.152, !dbg !2798

if.else.149:                                      ; preds = %do.body.142
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !2800, !tbaa !1252
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 1, !dbg !2802
  %132 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8, !dbg !2802, !tbaa !1338
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %132, i32 0, i32 4, !dbg !2803
  %133 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8, !dbg !2803, !tbaa !1340
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8, !dbg !2804, !tbaa !1252
  call void %133(%struct._object* %134), !dbg !2805
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  %135 = bitcast %struct._object** %_py_decref_tmp143 to i8*, !dbg !2806
  call void @llvm.lifetime.end(i64 8, i8* %135) #1, !dbg !2806
  br label %do.cond.153, !dbg !2807

do.cond.153:                                      ; preds = %if.end.152
  br label %do.end.154, !dbg !2808

do.end.154:                                       ; preds = %do.cond.153
  store %struct._object* null, %struct._object** %retval, !dbg !2810
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2810

cleanup:                                          ; preds = %do.end.154, %do.end.139, %if.then
  %136 = bitcast i64* %len to i8*, !dbg !2811
  call void @llvm.lifetime.end(i64 8, i8* %136) #1, !dbg !2811
  %137 = bitcast i64* %path_len to i8*, !dbg !2811
  call void @llvm.lifetime.end(i64 8, i8* %137) #1, !dbg !2811
  %138 = bitcast i64* %path_start to i8*, !dbg !2811
  call void @llvm.lifetime.end(i64 8, i8* %138) #1, !dbg !2811
  %139 = bitcast %struct._object** %toc_entry to i8*, !dbg !2811
  call void @llvm.lifetime.end(i64 8, i8* %139) #1, !dbg !2811
  %140 = bitcast %struct._object** %key to i8*, !dbg !2811
  call void @llvm.lifetime.end(i64 8, i8* %140) #1, !dbg !2811
  %141 = bitcast %struct._object** %path to i8*, !dbg !2811
  call void @llvm.lifetime.end(i64 8, i8* %141) #1, !dbg !2811
  %142 = bitcast %struct._zipimporter** %self to i8*, !dbg !2811
  call void @llvm.lifetime.end(i64 8, i8* %142) #1, !dbg !2811
  %143 = load %struct._object*, %struct._object** %retval, !dbg !2811
  ret %struct._object* %143, !dbg !2811
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_code(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %fullname = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !899, metadata !1222), !dbg !2812
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !900, metadata !1222), !dbg !2813
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !2814
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2814
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !901, metadata !1222), !dbg !2815
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2816, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !2817
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !2815, !tbaa !1252
  %3 = bitcast %struct._object** %fullname to i8*, !dbg !2818
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2818
  call void @llvm.dbg.declare(metadata %struct._object** %fullname, metadata !902, metadata !1222), !dbg !2819
  %4 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2820, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), %struct._object** %fullname), !dbg !2822
  %tobool = icmp ne i32 %call, 0, !dbg !2822
  br i1 %tobool, label %if.end, label %if.then, !dbg !2823

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2824
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2824

if.end:                                           ; preds = %entry
  %5 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2825, !tbaa !1252
  %6 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2826, !tbaa !1252
  %call1 = call %struct._object* @get_module_code(%struct._zipimporter* %5, %struct._object* %6, i32* null, %struct._object** null), !dbg !2827
  store %struct._object* %call1, %struct._object** %retval, !dbg !2828
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2828

cleanup:                                          ; preds = %if.end, %if.then
  %7 = bitcast %struct._object** %fullname to i8*, !dbg !2829
  call void @llvm.lifetime.end(i64 8, i8* %7) #1, !dbg !2829
  %8 = bitcast %struct._zipimporter** %self to i8*, !dbg !2829
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !2829
  %9 = load %struct._object*, %struct._object** %retval, !dbg !2829
  ret %struct._object* %9, !dbg !2829
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_source(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %toc_entry = alloca %struct._object*, align 8
  %fullname = alloca %struct._object*, align 8
  %subname = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %fullpath = alloca %struct._object*, align 8
  %mi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !905, metadata !1222), !dbg !2830
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !906, metadata !1222), !dbg !2831
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !2832
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2832
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !907, metadata !1222), !dbg !2833
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !2834, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !2835
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !2833, !tbaa !1252
  %3 = bitcast %struct._object** %toc_entry to i8*, !dbg !2836
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2836
  call void @llvm.dbg.declare(metadata %struct._object** %toc_entry, metadata !908, metadata !1222), !dbg !2837
  %4 = bitcast %struct._object** %fullname to i8*, !dbg !2838
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2838
  call void @llvm.dbg.declare(metadata %struct._object** %fullname, metadata !909, metadata !1222), !dbg !2839
  %5 = bitcast %struct._object** %subname to i8*, !dbg !2838
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2838
  call void @llvm.dbg.declare(metadata %struct._object** %subname, metadata !910, metadata !1222), !dbg !2840
  %6 = bitcast %struct._object** %path to i8*, !dbg !2838
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2838
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !911, metadata !1222), !dbg !2841
  %7 = bitcast %struct._object** %fullpath to i8*, !dbg !2838
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !2838
  call void @llvm.dbg.declare(metadata %struct._object** %fullpath, metadata !912, metadata !1222), !dbg !2842
  %8 = bitcast i32* %mi to i8*, !dbg !2843
  call void @llvm.lifetime.start(i64 4, i8* %8) #1, !dbg !2843
  call void @llvm.dbg.declare(metadata i32* %mi, metadata !913, metadata !1222), !dbg !2844
  %9 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2845, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0), %struct._object** %fullname), !dbg !2847
  %tobool = icmp ne i32 %call, 0, !dbg !2847
  br i1 %tobool, label %if.end, label %if.then, !dbg !2848

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2849
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74, !dbg !2849

if.end:                                           ; preds = %entry
  %10 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2850, !tbaa !1252
  %11 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2851, !tbaa !1252
  %call1 = call i32 @get_module_info(%struct._zipimporter* %10, %struct._object* %11), !dbg !2852
  store i32 %call1, i32* %mi, align 4, !dbg !2853, !tbaa !1230
  %12 = load i32, i32* %mi, align 4, !dbg !2854, !tbaa !1230
  %cmp = icmp eq i32 %12, 0, !dbg !2856
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2857

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !2858
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74, !dbg !2858

if.end.3:                                         ; preds = %if.end
  %13 = load i32, i32* %mi, align 4, !dbg !2859, !tbaa !1230
  %cmp4 = icmp eq i32 %13, 1, !dbg !2861
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !2862

if.then.5:                                        ; preds = %if.end.3
  %14 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !2863, !tbaa !1252
  %15 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2865, !tbaa !1252
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), %struct._object* %15), !dbg !2866
  store %struct._object* null, %struct._object** %retval, !dbg !2867
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74, !dbg !2867

if.end.7:                                         ; preds = %if.end.3
  %16 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !2868, !tbaa !1252
  %call8 = call %struct._object* @get_subname(%struct._object* %16), !dbg !2869
  store %struct._object* %call8, %struct._object** %subname, align 8, !dbg !2870, !tbaa !1252
  %17 = load %struct._object*, %struct._object** %subname, align 8, !dbg !2871, !tbaa !1252
  %cmp9 = icmp eq %struct._object* %17, null, !dbg !2873
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !2874

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval, !dbg !2875
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74, !dbg !2875

if.end.11:                                        ; preds = %if.end.7
  %18 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2876, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %18, i32 0, i32 2, !dbg !2877
  %19 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !2877, !tbaa !1362
  %20 = load %struct._object*, %struct._object** %subname, align 8, !dbg !2878, !tbaa !1252
  %call12 = call %struct._object* @make_filename(%struct._object* %19, %struct._object* %20), !dbg !2879
  store %struct._object* %call12, %struct._object** %path, align 8, !dbg !2880, !tbaa !1252
  br label %do.body, !dbg !2881

do.body:                                          ; preds = %if.end.11
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2882
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2882
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !914, metadata !1222), !dbg !2884
  %22 = load %struct._object*, %struct._object** %subname, align 8, !dbg !2885, !tbaa !1252
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8, !dbg !2884, !tbaa !1252
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2886, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !2888
  %24 = load i64, i64* %ob_refcnt, align 8, !dbg !2889, !tbaa !1270
  %dec = add i64 %24, -1, !dbg !2889
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2889, !tbaa !1270
  %cmp13 = icmp ne i64 %dec, 0, !dbg !2890
  br i1 %cmp13, label %if.then.14, label %if.else, !dbg !2891

if.then.14:                                       ; preds = %do.body
  br label %if.end.15, !dbg !2892

if.else:                                          ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2894, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !2896
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2896, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !2897
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2897, !tbaa !1340
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2898, !tbaa !1252
  call void %27(%struct._object* %28), !dbg !2899
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  %29 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2900
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2900
  br label %do.cond, !dbg !2902

do.cond:                                          ; preds = %if.end.15
  br label %do.end, !dbg !2903

do.end:                                           ; preds = %do.cond
  %30 = load %struct._object*, %struct._object** %path, align 8, !dbg !2905, !tbaa !1252
  %cmp16 = icmp eq %struct._object* %30, null, !dbg !2907
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !2908

if.then.17:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !2909
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74, !dbg !2909

if.end.18:                                        ; preds = %do.end
  %31 = load i32, i32* %mi, align 4, !dbg !2910, !tbaa !1230
  %cmp19 = icmp eq i32 %31, 3, !dbg !2912
  br i1 %cmp19, label %if.then.20, label %if.else.22, !dbg !2913

if.then.20:                                       ; preds = %if.end.18
  %32 = load %struct._object*, %struct._object** %path, align 8, !dbg !2914, !tbaa !1252
  %call21 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), %struct._object* %32, i32 47), !dbg !2915
  store %struct._object* %call21, %struct._object** %fullpath, align 8, !dbg !2916, !tbaa !1252
  br label %if.end.24, !dbg !2917

if.else.22:                                       ; preds = %if.end.18
  %33 = load %struct._object*, %struct._object** %path, align 8, !dbg !2918, !tbaa !1252
  %call23 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), %struct._object* %33), !dbg !2919
  store %struct._object* %call23, %struct._object** %fullpath, align 8, !dbg !2920, !tbaa !1252
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.20
  br label %do.body.25, !dbg !2921

do.body.25:                                       ; preds = %if.end.24
  %34 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2922
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !2922
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp26, metadata !916, metadata !1222), !dbg !2924
  %35 = load %struct._object*, %struct._object** %path, align 8, !dbg !2925, !tbaa !1252
  store %struct._object* %35, %struct._object** %_py_decref_tmp26, align 8, !dbg !2924, !tbaa !1252
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2926, !tbaa !1252
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0, !dbg !2928
  %37 = load i64, i64* %ob_refcnt27, align 8, !dbg !2929, !tbaa !1270
  %dec28 = add i64 %37, -1, !dbg !2929
  store i64 %dec28, i64* %ob_refcnt27, align 8, !dbg !2929, !tbaa !1270
  %cmp29 = icmp ne i64 %dec28, 0, !dbg !2930
  br i1 %cmp29, label %if.then.30, label %if.else.31, !dbg !2931

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34, !dbg !2932

if.else.31:                                       ; preds = %do.body.25
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2934, !tbaa !1252
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1, !dbg !2936
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8, !dbg !2936, !tbaa !1338
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4, !dbg !2937
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8, !dbg !2937, !tbaa !1340
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8, !dbg !2938, !tbaa !1252
  call void %40(%struct._object* %41), !dbg !2939
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  %42 = bitcast %struct._object** %_py_decref_tmp26 to i8*, !dbg !2940
  call void @llvm.lifetime.end(i64 8, i8* %42) #1, !dbg !2940
  br label %do.cond.35, !dbg !2941

do.cond.35:                                       ; preds = %if.end.34
  br label %do.end.36, !dbg !2942

do.end.36:                                        ; preds = %do.cond.35
  %43 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !2944, !tbaa !1252
  %cmp37 = icmp eq %struct._object* %43, null, !dbg !2946
  br i1 %cmp37, label %if.then.38, label %if.end.39, !dbg !2947

if.then.38:                                       ; preds = %do.end.36
  store %struct._object* null, %struct._object** %retval, !dbg !2948
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74, !dbg !2948

if.end.39:                                        ; preds = %do.end.36
  %44 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2949, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %44, i32 0, i32 3, !dbg !2950
  %45 = load %struct._object*, %struct._object** %files, align 8, !dbg !2950, !tbaa !1401
  %46 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !2951, !tbaa !1252
  %call40 = call %struct._object* @PyDict_GetItem(%struct._object* %45, %struct._object* %46), !dbg !2952
  store %struct._object* %call40, %struct._object** %toc_entry, align 8, !dbg !2953, !tbaa !1252
  br label %do.body.41, !dbg !2954

do.body.41:                                       ; preds = %if.end.39
  %47 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2955
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !2955
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !918, metadata !1222), !dbg !2957
  %48 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !2958, !tbaa !1252
  store %struct._object* %48, %struct._object** %_py_decref_tmp42, align 8, !dbg !2957, !tbaa !1252
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2959, !tbaa !1252
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !2961
  %50 = load i64, i64* %ob_refcnt43, align 8, !dbg !2962, !tbaa !1270
  %dec44 = add i64 %50, -1, !dbg !2962
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !2962, !tbaa !1270
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !2963
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !2964

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50, !dbg !2965

if.else.47:                                       ; preds = %do.body.41
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2967, !tbaa !1252
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !2969
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !2969, !tbaa !1338
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !2970
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !2970, !tbaa !1340
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !2971, !tbaa !1252
  call void %53(%struct._object* %54), !dbg !2972
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %55 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !2973
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2973
  br label %do.cond.51, !dbg !2974

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !2975

do.end.52:                                        ; preds = %do.cond.51
  %56 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !2977, !tbaa !1252
  %cmp53 = icmp ne %struct._object* %56, null, !dbg !2978
  br i1 %cmp53, label %if.then.54, label %if.end.73, !dbg !2979

if.then.54:                                       ; preds = %do.end.52
  %57 = bitcast %struct._object** %res to i8*, !dbg !2980
  call void @llvm.lifetime.start(i64 8, i8* %57) #1, !dbg !2980
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !920, metadata !1222), !dbg !2981
  %58 = bitcast %struct._object** %bytes to i8*, !dbg !2980
  call void @llvm.lifetime.start(i64 8, i8* %58) #1, !dbg !2980
  call void @llvm.dbg.declare(metadata %struct._object** %bytes, metadata !923, metadata !1222), !dbg !2982
  %59 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !2983, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %59, i32 0, i32 1, !dbg !2984
  %60 = load %struct._object*, %struct._object** %archive, align 8, !dbg !2984, !tbaa !1316
  %61 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !2985, !tbaa !1252
  %call55 = call %struct._object* @get_data(%struct._object* %60, %struct._object* %61), !dbg !2986
  store %struct._object* %call55, %struct._object** %bytes, align 8, !dbg !2987, !tbaa !1252
  %62 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !2988, !tbaa !1252
  %cmp56 = icmp eq %struct._object* %62, null, !dbg !2990
  br i1 %cmp56, label %if.then.57, label %if.end.58, !dbg !2991

if.then.57:                                       ; preds = %if.then.54
  store %struct._object* null, %struct._object** %retval, !dbg !2992
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2992

if.end.58:                                        ; preds = %if.then.54
  %63 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !2993, !tbaa !1252
  %64 = bitcast %struct._object* %63 to %struct.PyBytesObject*, !dbg !2994
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %64, i32 0, i32 2, !dbg !2995
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0, !dbg !2996
  %65 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !2997, !tbaa !1252
  %66 = bitcast %struct._object* %65 to %struct.PyVarObject*, !dbg !2998
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %66, i32 0, i32 1, !dbg !2999
  %67 = load i64, i64* %ob_size, align 8, !dbg !2999, !tbaa !3000
  %call59 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %arraydecay, i64 %67), !dbg !3001
  store %struct._object* %call59, %struct._object** %res, align 8, !dbg !3002, !tbaa !1252
  br label %do.body.60, !dbg !3003

do.body.60:                                       ; preds = %if.end.58
  %68 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !3004
  call void @llvm.lifetime.start(i64 8, i8* %68) #1, !dbg !3004
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp61, metadata !924, metadata !1222), !dbg !3006
  %69 = load %struct._object*, %struct._object** %bytes, align 8, !dbg !3007, !tbaa !1252
  store %struct._object* %69, %struct._object** %_py_decref_tmp61, align 8, !dbg !3006, !tbaa !1252
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !3008, !tbaa !1252
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0, !dbg !3010
  %71 = load i64, i64* %ob_refcnt62, align 8, !dbg !3011, !tbaa !1270
  %dec63 = add i64 %71, -1, !dbg !3011
  store i64 %dec63, i64* %ob_refcnt62, align 8, !dbg !3011, !tbaa !1270
  %cmp64 = icmp ne i64 %dec63, 0, !dbg !3012
  br i1 %cmp64, label %if.then.65, label %if.else.66, !dbg !3013

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69, !dbg !3014

if.else.66:                                       ; preds = %do.body.60
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !3016, !tbaa !1252
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1, !dbg !3018
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8, !dbg !3018, !tbaa !1338
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4, !dbg !3019
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8, !dbg !3019, !tbaa !1340
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8, !dbg !3020, !tbaa !1252
  call void %74(%struct._object* %75), !dbg !3021
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  %76 = bitcast %struct._object** %_py_decref_tmp61 to i8*, !dbg !3022
  call void @llvm.lifetime.end(i64 8, i8* %76) #1, !dbg !3022
  br label %do.cond.70, !dbg !3024

do.cond.70:                                       ; preds = %if.end.69
  br label %do.end.71, !dbg !3025

do.end.71:                                        ; preds = %do.cond.70
  %77 = load %struct._object*, %struct._object** %res, align 8, !dbg !3027, !tbaa !1252
  store %struct._object* %77, %struct._object** %retval, !dbg !3028
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3028

cleanup:                                          ; preds = %do.end.71, %if.then.57
  %78 = bitcast %struct._object** %bytes to i8*, !dbg !3029
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !3029
  %79 = bitcast %struct._object** %res to i8*, !dbg !3029
  call void @llvm.lifetime.end(i64 8, i8* %79) #1, !dbg !3029
  br label %cleanup.74

if.end.73:                                        ; preds = %do.end.52
  %80 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3030, !tbaa !1270
  %inc = add i64 %80, 1, !dbg !3030
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3030, !tbaa !1270
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !3031
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.74, !dbg !3031

cleanup.74:                                       ; preds = %if.end.73, %cleanup, %if.then.38, %if.then.17, %if.then.10, %if.then.5, %if.then.2, %if.then
  %81 = bitcast i32* %mi to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 4, i8* %81) #1, !dbg !3032
  %82 = bitcast %struct._object** %fullpath to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %82) #1, !dbg !3032
  %83 = bitcast %struct._object** %path to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %83) #1, !dbg !3032
  %84 = bitcast %struct._object** %subname to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !3032
  %85 = bitcast %struct._object** %fullname to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !3032
  %86 = bitcast %struct._object** %toc_entry to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %86) #1, !dbg !3032
  %87 = bitcast %struct._zipimporter** %self to i8*, !dbg !3032
  call void @llvm.lifetime.end(i64 8, i8* %87) #1, !dbg !3032
  %88 = load %struct._object*, %struct._object** %retval, !dbg !3032
  ret %struct._object* %88, !dbg !3032
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_filename(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %fullname = alloca %struct._object*, align 8
  %code = alloca %struct._object*, align 8
  %modpath = alloca %struct._object*, align 8
  %ispackage = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !928, metadata !1222), !dbg !3033
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !929, metadata !1222), !dbg !3034
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !3035
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3035
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !930, metadata !1222), !dbg !3036
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3037, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !3038
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !3036, !tbaa !1252
  %3 = bitcast %struct._object** %fullname to i8*, !dbg !3039
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3039
  call void @llvm.dbg.declare(metadata %struct._object** %fullname, metadata !931, metadata !1222), !dbg !3040
  %4 = bitcast %struct._object** %code to i8*, !dbg !3039
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3039
  call void @llvm.dbg.declare(metadata %struct._object** %code, metadata !932, metadata !1222), !dbg !3041
  %5 = bitcast %struct._object** %modpath to i8*, !dbg !3039
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3039
  call void @llvm.dbg.declare(metadata %struct._object** %modpath, metadata !933, metadata !1222), !dbg !3042
  %6 = bitcast i32* %ispackage to i8*, !dbg !3043
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !3043
  call void @llvm.dbg.declare(metadata i32* %ispackage, metadata !934, metadata !1222), !dbg !3044
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3045, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), %struct._object** %fullname), !dbg !3047
  %tobool = icmp ne i32 %call, 0, !dbg !3047
  br i1 %tobool, label %if.end, label %if.then, !dbg !3048

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3049
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3049

if.end:                                           ; preds = %entry
  %8 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !3050, !tbaa !1252
  %9 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !3051, !tbaa !1252
  %call1 = call %struct._object* @get_module_code(%struct._zipimporter* %8, %struct._object* %9, i32* %ispackage, %struct._object** %modpath), !dbg !3052
  store %struct._object* %call1, %struct._object** %code, align 8, !dbg !3053, !tbaa !1252
  %10 = load %struct._object*, %struct._object** %code, align 8, !dbg !3054, !tbaa !1252
  %cmp = icmp eq %struct._object* %10, null, !dbg !3056
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !3057

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3058
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3058

if.end.3:                                         ; preds = %if.end
  br label %do.body, !dbg !3059

do.body:                                          ; preds = %if.end.3
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3060
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !3060
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !935, metadata !1222), !dbg !3062
  %12 = load %struct._object*, %struct._object** %code, align 8, !dbg !3063, !tbaa !1252
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !3062, !tbaa !1252
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3064, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !3066
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !3067, !tbaa !1270
  %dec = add i64 %14, -1, !dbg !3067
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3067, !tbaa !1270
  %cmp4 = icmp ne i64 %dec, 0, !dbg !3068
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !3069

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !3070

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3072, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3074
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3074, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !3075
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3075, !tbaa !1340
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3076, !tbaa !1252
  call void %17(%struct._object* %18), !dbg !3077
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3078
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !3078
  br label %do.cond, !dbg !3080

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !3081

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !3083, !tbaa !1252
  store %struct._object* %20, %struct._object** %retval, !dbg !3084
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3084

cleanup:                                          ; preds = %do.end, %if.then.2, %if.then
  %21 = bitcast i32* %ispackage to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 4, i8* %21) #1, !dbg !3085
  %22 = bitcast %struct._object** %modpath to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !3085
  %23 = bitcast %struct._object** %code to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !3085
  %24 = bitcast %struct._object** %fullname to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !3085
  %25 = bitcast %struct._zipimporter** %self to i8*, !dbg !3085
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !3085
  %26 = load %struct._object*, %struct._object** %retval, !dbg !3085
  ret %struct._object* %26, !dbg !3085
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_is_package(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %fullname = alloca %struct._object*, align 8
  %mi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %obj, %struct._object** %obj.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %obj.addr, metadata !939, metadata !1222), !dbg !3086
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !940, metadata !1222), !dbg !3087
  %0 = bitcast %struct._zipimporter** %self to i8*, !dbg !3088
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3088
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self, metadata !941, metadata !1222), !dbg !3089
  %1 = load %struct._object*, %struct._object** %obj.addr, align 8, !dbg !3090, !tbaa !1252
  %2 = bitcast %struct._object* %1 to %struct._zipimporter*, !dbg !3091
  store %struct._zipimporter* %2, %struct._zipimporter** %self, align 8, !dbg !3089, !tbaa !1252
  %3 = bitcast %struct._object** %fullname to i8*, !dbg !3092
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3092
  call void @llvm.dbg.declare(metadata %struct._object** %fullname, metadata !942, metadata !1222), !dbg !3093
  %4 = bitcast i32* %mi to i8*, !dbg !3094
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !3094
  call void @llvm.dbg.declare(metadata i32* %mi, metadata !943, metadata !1222), !dbg !3095
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3096, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), %struct._object** %fullname), !dbg !3098
  %tobool = icmp ne i32 %call, 0, !dbg !3098
  br i1 %tobool, label %if.end, label %if.then, !dbg !3099

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3100
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3100

if.end:                                           ; preds = %entry
  %6 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8, !dbg !3101, !tbaa !1252
  %7 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !3102, !tbaa !1252
  %call1 = call i32 @get_module_info(%struct._zipimporter* %6, %struct._object* %7), !dbg !3103
  store i32 %call1, i32* %mi, align 4, !dbg !3104, !tbaa !1230
  %8 = load i32, i32* %mi, align 4, !dbg !3105, !tbaa !1230
  %cmp = icmp eq i32 %8, 0, !dbg !3107
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !3108

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !3109
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3109

if.end.3:                                         ; preds = %if.end
  %9 = load i32, i32* %mi, align 4, !dbg !3110, !tbaa !1230
  %cmp4 = icmp eq i32 %9, 1, !dbg !3112
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !3113

if.then.5:                                        ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !3114, !tbaa !1252
  %11 = load %struct._object*, %struct._object** %fullname, align 8, !dbg !3116, !tbaa !1252
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), %struct._object* %11), !dbg !3117
  store %struct._object* null, %struct._object** %retval, !dbg !3118
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3118

if.end.7:                                         ; preds = %if.end.3
  %12 = load i32, i32* %mi, align 4, !dbg !3119, !tbaa !1230
  %cmp8 = icmp eq i32 %12, 3, !dbg !3120
  %conv = zext i1 %cmp8 to i32, !dbg !3120
  %conv9 = sext i32 %conv to i64, !dbg !3119
  %call10 = call %struct._object* @PyBool_FromLong(i64 %conv9), !dbg !3121
  store %struct._object* %call10, %struct._object** %retval, !dbg !3122
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3122

cleanup:                                          ; preds = %if.end.7, %if.then.5, %if.then.2, %if.then
  %13 = bitcast i32* %mi to i8*, !dbg !3123
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !3123
  %14 = bitcast %struct._object** %fullname to i8*, !dbg !3123
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3123
  %15 = bitcast %struct._zipimporter** %self to i8*, !dbg !3123
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3123
  %16 = load %struct._object*, %struct._object** %retval, !dbg !3123
  ret %struct._object* %16, !dbg !3123
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @find_loader(%struct._zipimporter* %self, %struct._object* %fullname, %struct._object** %namespace_portion) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._zipimporter*, align 8
  %fullname.addr = alloca %struct._object*, align 8
  %namespace_portion.addr = alloca %struct._object**, align 8
  %mi = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %is_dir = alloca i32, align 4
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !577, metadata !1222), !dbg !3124
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %fullname.addr, metadata !578, metadata !1222), !dbg !3125
  store %struct._object** %namespace_portion, %struct._object*** %namespace_portion.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object*** %namespace_portion.addr, metadata !579, metadata !1222), !dbg !3126
  %0 = bitcast i32* %mi to i8*, !dbg !3127
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !3127
  call void @llvm.dbg.declare(metadata i32* %mi, metadata !580, metadata !1222), !dbg !3128
  %1 = load %struct._object**, %struct._object*** %namespace_portion.addr, align 8, !dbg !3129, !tbaa !1252
  store %struct._object* null, %struct._object** %1, align 8, !dbg !3130, !tbaa !1252
  %2 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3131, !tbaa !1252
  %3 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3132, !tbaa !1252
  %call = call i32 @get_module_info(%struct._zipimporter* %2, %struct._object* %3), !dbg !3133
  store i32 %call, i32* %mi, align 4, !dbg !3134, !tbaa !1230
  %4 = load i32, i32* %mi, align 4, !dbg !3135, !tbaa !1230
  %cmp = icmp eq i32 %4, 0, !dbg !3137
  br i1 %cmp, label %if.then, label %if.end, !dbg !3138

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !3139
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !3139

if.end:                                           ; preds = %entry
  %5 = load i32, i32* %mi, align 4, !dbg !3140, !tbaa !1230
  %cmp1 = icmp eq i32 %5, 1, !dbg !3141
  br i1 %cmp1, label %if.then.2, label %if.end.14, !dbg !3142

if.then.2:                                        ; preds = %if.end
  %6 = bitcast i32* %is_dir to i8*, !dbg !3143
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !3143
  call void @llvm.dbg.declare(metadata i32* %is_dir, metadata !581, metadata !1222), !dbg !3144
  %7 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3145, !tbaa !1252
  %8 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3146, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %8, i32 0, i32 2, !dbg !3147
  %9 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !3147, !tbaa !1362
  %10 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3148, !tbaa !1252
  %call3 = call i32 @check_is_directory(%struct._zipimporter* %7, %struct._object* %9, %struct._object* %10), !dbg !3149
  store i32 %call3, i32* %is_dir, align 4, !dbg !3144, !tbaa !1236
  %11 = load i32, i32* %is_dir, align 4, !dbg !3150, !tbaa !1236
  %cmp4 = icmp slt i32 %11, 0, !dbg !3152
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !3153

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval, !dbg !3154
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3154

if.end.6:                                         ; preds = %if.then.2
  %12 = load i32, i32* %is_dir, align 4, !dbg !3155, !tbaa !1236
  %tobool = icmp ne i32 %12, 0, !dbg !3155
  br i1 %tobool, label %if.then.7, label %if.end.13, !dbg !3157

if.then.7:                                        ; preds = %if.end.6
  %13 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3158, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %13, i32 0, i32 1, !dbg !3160
  %14 = load %struct._object*, %struct._object** %archive, align 8, !dbg !3160, !tbaa !1316
  %15 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3161, !tbaa !1252
  %prefix8 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %15, i32 0, i32 2, !dbg !3162
  %16 = load %struct._object*, %struct._object** %prefix8, align 8, !dbg !3162, !tbaa !1362
  %17 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3163, !tbaa !1252
  %call9 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* %14, i32 47, %struct._object* %16, %struct._object* %17), !dbg !3164
  %18 = load %struct._object**, %struct._object*** %namespace_portion.addr, align 8, !dbg !3165, !tbaa !1252
  store %struct._object* %call9, %struct._object** %18, align 8, !dbg !3166, !tbaa !1252
  %19 = load %struct._object**, %struct._object*** %namespace_portion.addr, align 8, !dbg !3167, !tbaa !1252
  %20 = load %struct._object*, %struct._object** %19, align 8, !dbg !3169, !tbaa !1252
  %cmp10 = icmp eq %struct._object* %20, null, !dbg !3170
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !3171

if.then.11:                                       ; preds = %if.then.7
  store i32 0, i32* %retval, !dbg !3172
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3172

if.end.12:                                        ; preds = %if.then.7
  store i32 3, i32* %retval, !dbg !3173
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3173

if.end.13:                                        ; preds = %if.end.6
  store i32 1, i32* %retval, !dbg !3174
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3174

cleanup:                                          ; preds = %if.end.13, %if.end.12, %if.then.11, %if.then.5
  %21 = bitcast i32* %is_dir to i8*, !dbg !3175
  call void @llvm.lifetime.end(i64 4, i8* %21) #1, !dbg !3175
  br label %cleanup.15

if.end.14:                                        ; preds = %if.end
  store i32 2, i32* %retval, !dbg !3176
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.15, !dbg !3176

cleanup.15:                                       ; preds = %if.end.14, %cleanup, %if.then
  %22 = bitcast i32* %mi to i8*, !dbg !3177
  call void @llvm.lifetime.end(i64 4, i8* %22) #1, !dbg !3177
  %23 = load i32, i32* %retval, !dbg !3177
  ret i32 %23, !dbg !3177
}

; Function Attrs: nounwind uwtable
define internal i32 @get_module_info(%struct._zipimporter* %self, %struct._object* %fullname) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._zipimporter*, align 8
  %fullname.addr = alloca %struct._object*, align 8
  %subname = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %fullpath = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %zso = alloca %struct.st_zip_searchorder*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_decref_tmp42 = alloca %struct._object*, align 8
  %_py_decref_tmp58 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !588, metadata !1222), !dbg !3178
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %fullname.addr, metadata !589, metadata !1222), !dbg !3179
  %0 = bitcast %struct._object** %subname to i8*, !dbg !3180
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3180
  call void @llvm.dbg.declare(metadata %struct._object** %subname, metadata !590, metadata !1222), !dbg !3181
  %1 = bitcast %struct._object** %path to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3182
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !591, metadata !1222), !dbg !3183
  %2 = bitcast %struct._object** %fullpath to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3182
  call void @llvm.dbg.declare(metadata %struct._object** %fullpath, metadata !592, metadata !1222), !dbg !3184
  %3 = bitcast %struct._object** %item to i8*, !dbg !3182
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3182
  call void @llvm.dbg.declare(metadata %struct._object** %item, metadata !593, metadata !1222), !dbg !3185
  %4 = bitcast %struct.st_zip_searchorder** %zso to i8*, !dbg !3186
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3186
  call void @llvm.dbg.declare(metadata %struct.st_zip_searchorder** %zso, metadata !594, metadata !1222), !dbg !3187
  %5 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3188, !tbaa !1252
  %call = call %struct._object* @get_subname(%struct._object* %5), !dbg !3189
  store %struct._object* %call, %struct._object** %subname, align 8, !dbg !3190, !tbaa !1252
  %6 = load %struct._object*, %struct._object** %subname, align 8, !dbg !3191, !tbaa !1252
  %cmp = icmp eq %struct._object* %6, null, !dbg !3193
  br i1 %cmp, label %if.then, label %if.end, !dbg !3194

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, !dbg !3195
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3195

if.end:                                           ; preds = %entry
  %7 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3196, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %7, i32 0, i32 2, !dbg !3197
  %8 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !3197, !tbaa !1362
  %9 = load %struct._object*, %struct._object** %subname, align 8, !dbg !3198, !tbaa !1252
  %call1 = call %struct._object* @make_filename(%struct._object* %8, %struct._object* %9), !dbg !3199
  store %struct._object* %call1, %struct._object** %path, align 8, !dbg !3200, !tbaa !1252
  br label %do.body, !dbg !3201

do.body:                                          ; preds = %if.end
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3202
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !3202
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !596, metadata !1222), !dbg !3204
  %11 = load %struct._object*, %struct._object** %subname, align 8, !dbg !3205, !tbaa !1252
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !3204, !tbaa !1252
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3206, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3208
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3209, !tbaa !1270
  %dec = add i64 %13, -1, !dbg !3209
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3209, !tbaa !1270
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3210
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3211

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !3212

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3214, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !3216
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3216, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !3217
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3217, !tbaa !1340
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3218, !tbaa !1252
  call void %16(%struct._object* %17), !dbg !3219
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3220
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !3220
  br label %do.cond, !dbg !3222

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !3223

do.end:                                           ; preds = %do.cond
  %19 = load %struct._object*, %struct._object** %path, align 8, !dbg !3225, !tbaa !1252
  %cmp5 = icmp eq %struct._object* %19, null, !dbg !3227
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3228

if.then.6:                                        ; preds = %do.end
  store i32 0, i32* %retval, !dbg !3229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3229

if.end.7:                                         ; preds = %do.end
  store %struct.st_zip_searchorder* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0), %struct.st_zip_searchorder** %zso, align 8, !dbg !3230, !tbaa !1252
  br label %for.cond, !dbg !3231

for.cond:                                         ; preds = %for.inc, %if.end.7
  %20 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3232, !tbaa !1252
  %suffix = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %20, i32 0, i32 0, !dbg !3235
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %suffix, i32 0, i32 0, !dbg !3236
  %21 = load i8, i8* %arraydecay, align 1, !dbg !3237, !tbaa !1230
  %tobool = icmp ne i8 %21, 0, !dbg !3238
  br i1 %tobool, label %for.body, label %for.end, !dbg !3238

for.body:                                         ; preds = %for.cond
  %22 = load %struct._object*, %struct._object** %path, align 8, !dbg !3239, !tbaa !1252
  %23 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3240, !tbaa !1252
  %suffix8 = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %23, i32 0, i32 0, !dbg !3241
  %arraydecay9 = getelementptr inbounds [14 x i8], [14 x i8]* %suffix8, i32 0, i32 0, !dbg !3240
  %call10 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._object* %22, i8* %arraydecay9), !dbg !3242
  store %struct._object* %call10, %struct._object** %fullpath, align 8, !dbg !3243, !tbaa !1252
  %24 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3244, !tbaa !1252
  %cmp11 = icmp eq %struct._object* %24, null, !dbg !3245
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3246

if.then.12:                                       ; preds = %for.body
  br label %do.body.13, !dbg !3247

do.body.13:                                       ; preds = %if.then.12
  %25 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3248
  call void @llvm.lifetime.start(i64 8, i8* %25) #1, !dbg !3248
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !598, metadata !1222), !dbg !3250
  %26 = load %struct._object*, %struct._object** %path, align 8, !dbg !3251, !tbaa !1252
  store %struct._object* %26, %struct._object** %_py_decref_tmp14, align 8, !dbg !3250, !tbaa !1252
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3252, !tbaa !1252
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0, !dbg !3254
  %28 = load i64, i64* %ob_refcnt15, align 8, !dbg !3255, !tbaa !1270
  %dec16 = add i64 %28, -1, !dbg !3255
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !3255, !tbaa !1270
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !3256
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !3257

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !3258

if.else.19:                                       ; preds = %do.body.13
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3260, !tbaa !1252
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1, !dbg !3262
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !3262, !tbaa !1338
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4, !dbg !3263
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !3263, !tbaa !1340
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3264, !tbaa !1252
  call void %31(%struct._object* %32), !dbg !3265
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %33 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3266
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !3266
  br label %do.cond.23, !dbg !3268

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !3269

do.end.24:                                        ; preds = %do.cond.23
  store i32 0, i32* %retval, !dbg !3271
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3271

if.end.25:                                        ; preds = %for.body
  %34 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3272, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %34, i32 0, i32 3, !dbg !3273
  %35 = load %struct._object*, %struct._object** %files, align 8, !dbg !3273, !tbaa !1401
  %36 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3274, !tbaa !1252
  %call26 = call %struct._object* @PyDict_GetItem(%struct._object* %35, %struct._object* %36), !dbg !3275
  store %struct._object* %call26, %struct._object** %item, align 8, !dbg !3276, !tbaa !1252
  br label %do.body.27, !dbg !3277

do.body.27:                                       ; preds = %if.end.25
  %37 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !3278
  call void @llvm.lifetime.start(i64 8, i8* %37) #1, !dbg !3278
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp28, metadata !605, metadata !1222), !dbg !3280
  %38 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3281, !tbaa !1252
  store %struct._object* %38, %struct._object** %_py_decref_tmp28, align 8, !dbg !3280, !tbaa !1252
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !3282, !tbaa !1252
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0, !dbg !3284
  %40 = load i64, i64* %ob_refcnt29, align 8, !dbg !3285, !tbaa !1270
  %dec30 = add i64 %40, -1, !dbg !3285
  store i64 %dec30, i64* %ob_refcnt29, align 8, !dbg !3285, !tbaa !1270
  %cmp31 = icmp ne i64 %dec30, 0, !dbg !3286
  br i1 %cmp31, label %if.then.32, label %if.else.33, !dbg !3287

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36, !dbg !3288

if.else.33:                                       ; preds = %do.body.27
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !3290, !tbaa !1252
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1, !dbg !3292
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8, !dbg !3292, !tbaa !1338
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4, !dbg !3293
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8, !dbg !3293, !tbaa !1340
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8, !dbg !3294, !tbaa !1252
  call void %43(%struct._object* %44), !dbg !3295
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  %45 = bitcast %struct._object** %_py_decref_tmp28 to i8*, !dbg !3296
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !3296
  br label %do.cond.37, !dbg !3298

do.cond.37:                                       ; preds = %if.end.36
  br label %do.end.38, !dbg !3299

do.end.38:                                        ; preds = %do.cond.37
  %46 = load %struct._object*, %struct._object** %item, align 8, !dbg !3301, !tbaa !1252
  %cmp39 = icmp ne %struct._object* %46, null, !dbg !3302
  br i1 %cmp39, label %if.then.40, label %if.end.56, !dbg !3303

if.then.40:                                       ; preds = %do.end.38
  br label %do.body.41, !dbg !3304

do.body.41:                                       ; preds = %if.then.40
  %47 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !3305
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !3305
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp42, metadata !607, metadata !1222), !dbg !3307
  %48 = load %struct._object*, %struct._object** %path, align 8, !dbg !3308, !tbaa !1252
  store %struct._object* %48, %struct._object** %_py_decref_tmp42, align 8, !dbg !3307, !tbaa !1252
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !3309, !tbaa !1252
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0, !dbg !3311
  %50 = load i64, i64* %ob_refcnt43, align 8, !dbg !3312, !tbaa !1270
  %dec44 = add i64 %50, -1, !dbg !3312
  store i64 %dec44, i64* %ob_refcnt43, align 8, !dbg !3312, !tbaa !1270
  %cmp45 = icmp ne i64 %dec44, 0, !dbg !3313
  br i1 %cmp45, label %if.then.46, label %if.else.47, !dbg !3314

if.then.46:                                       ; preds = %do.body.41
  br label %if.end.50, !dbg !3315

if.else.47:                                       ; preds = %do.body.41
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !3317, !tbaa !1252
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1, !dbg !3319
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8, !dbg !3319, !tbaa !1338
  %tp_dealloc49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4, !dbg !3320
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc49, align 8, !dbg !3320, !tbaa !1340
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp42, align 8, !dbg !3321, !tbaa !1252
  call void %53(%struct._object* %54), !dbg !3322
  br label %if.end.50

if.end.50:                                        ; preds = %if.else.47, %if.then.46
  %55 = bitcast %struct._object** %_py_decref_tmp42 to i8*, !dbg !3323
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !3323
  br label %do.cond.51, !dbg !3325

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !3326

do.end.52:                                        ; preds = %do.cond.51
  %56 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3328, !tbaa !1252
  %type = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %56, i32 0, i32 1, !dbg !3330
  %57 = load i32, i32* %type, align 4, !dbg !3330, !tbaa !3331
  %and = and i32 %57, 2, !dbg !3333
  %tobool53 = icmp ne i32 %and, 0, !dbg !3333
  br i1 %tobool53, label %if.then.54, label %if.else.55, !dbg !3334

if.then.54:                                       ; preds = %do.end.52
  store i32 3, i32* %retval, !dbg !3335
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3335

if.else.55:                                       ; preds = %do.end.52
  store i32 2, i32* %retval, !dbg !3336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3336

if.end.56:                                        ; preds = %do.end.38
  br label %for.inc, !dbg !3337

for.inc:                                          ; preds = %if.end.56
  %58 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3338, !tbaa !1252
  %incdec.ptr = getelementptr %struct.st_zip_searchorder, %struct.st_zip_searchorder* %58, i32 1, !dbg !3338
  store %struct.st_zip_searchorder* %incdec.ptr, %struct.st_zip_searchorder** %zso, align 8, !dbg !3338, !tbaa !1252
  br label %for.cond, !dbg !3339

for.end:                                          ; preds = %for.cond
  br label %do.body.57, !dbg !3340

do.body.57:                                       ; preds = %for.end
  %59 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !3341
  call void @llvm.lifetime.start(i64 8, i8* %59) #1, !dbg !3341
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp58, metadata !611, metadata !1222), !dbg !3343
  %60 = load %struct._object*, %struct._object** %path, align 8, !dbg !3344, !tbaa !1252
  store %struct._object* %60, %struct._object** %_py_decref_tmp58, align 8, !dbg !3343, !tbaa !1252
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !3345, !tbaa !1252
  %ob_refcnt59 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0, !dbg !3347
  %62 = load i64, i64* %ob_refcnt59, align 8, !dbg !3348, !tbaa !1270
  %dec60 = add i64 %62, -1, !dbg !3348
  store i64 %dec60, i64* %ob_refcnt59, align 8, !dbg !3348, !tbaa !1270
  %cmp61 = icmp ne i64 %dec60, 0, !dbg !3349
  br i1 %cmp61, label %if.then.62, label %if.else.63, !dbg !3350

if.then.62:                                       ; preds = %do.body.57
  br label %if.end.66, !dbg !3351

if.else.63:                                       ; preds = %do.body.57
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !3353, !tbaa !1252
  %ob_type64 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1, !dbg !3355
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type64, align 8, !dbg !3355, !tbaa !1338
  %tp_dealloc65 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4, !dbg !3356
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc65, align 8, !dbg !3356, !tbaa !1340
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp58, align 8, !dbg !3357, !tbaa !1252
  call void %65(%struct._object* %66), !dbg !3358
  br label %if.end.66

if.end.66:                                        ; preds = %if.else.63, %if.then.62
  %67 = bitcast %struct._object** %_py_decref_tmp58 to i8*, !dbg !3359
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !3359
  br label %do.cond.67, !dbg !3360

do.cond.67:                                       ; preds = %if.end.66
  br label %do.end.68, !dbg !3361

do.end.68:                                        ; preds = %do.cond.67
  store i32 1, i32* %retval, !dbg !3363
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3363

cleanup:                                          ; preds = %do.end.68, %if.else.55, %if.then.54, %do.end.24, %if.then.6, %if.then
  %68 = bitcast %struct.st_zip_searchorder** %zso to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !3364
  %69 = bitcast %struct._object** %item to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %69) #1, !dbg !3364
  %70 = bitcast %struct._object** %fullpath to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %70) #1, !dbg !3364
  %71 = bitcast %struct._object** %path to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %71) #1, !dbg !3364
  %72 = bitcast %struct._object** %subname to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %72) #1, !dbg !3364
  %73 = load i32, i32* %retval, !dbg !3364
  ret i32 %73, !dbg !3364
}

; Function Attrs: nounwind uwtable
define internal i32 @check_is_directory(%struct._zipimporter* %self, %struct._object* %prefix, %struct._object* %path) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._zipimporter*, align 8
  %prefix.addr = alloca %struct._object*, align 8
  %path.addr = alloca %struct._object*, align 8
  %dirpath = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !630, metadata !1222), !dbg !3365
  store %struct._object* %prefix, %struct._object** %prefix.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %prefix.addr, metadata !631, metadata !1222), !dbg !3366
  store %struct._object* %path, %struct._object** %path.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %path.addr, metadata !632, metadata !1222), !dbg !3367
  %0 = bitcast %struct._object** %dirpath to i8*, !dbg !3368
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3368
  call void @llvm.dbg.declare(metadata %struct._object** %dirpath, metadata !633, metadata !1222), !dbg !3369
  %1 = bitcast i32* %res to i8*, !dbg !3370
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !3370
  call void @llvm.dbg.declare(metadata i32* %res, metadata !634, metadata !1222), !dbg !3371
  %2 = load %struct._object*, %struct._object** %prefix.addr, align 8, !dbg !3372, !tbaa !1252
  %3 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3373, !tbaa !1252
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* %2, %struct._object* %3, i32 47), !dbg !3374
  store %struct._object* %call, %struct._object** %dirpath, align 8, !dbg !3375, !tbaa !1252
  %4 = load %struct._object*, %struct._object** %dirpath, align 8, !dbg !3376, !tbaa !1252
  %cmp = icmp eq %struct._object* %4, null, !dbg !3378
  br i1 %cmp, label %if.then, label %if.end, !dbg !3379

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !3380
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3380

if.end:                                           ; preds = %entry
  %5 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3381, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %5, i32 0, i32 3, !dbg !3382
  %6 = load %struct._object*, %struct._object** %files, align 8, !dbg !3382, !tbaa !1401
  %7 = load %struct._object*, %struct._object** %dirpath, align 8, !dbg !3383, !tbaa !1252
  %call1 = call i32 @PyDict_Contains(%struct._object* %6, %struct._object* %7), !dbg !3384
  store i32 %call1, i32* %res, align 4, !dbg !3385, !tbaa !1236
  br label %do.body, !dbg !3386

do.body:                                          ; preds = %if.end
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3387
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3387
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !635, metadata !1222), !dbg !3389
  %9 = load %struct._object*, %struct._object** %dirpath, align 8, !dbg !3390, !tbaa !1252
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8, !dbg !3389, !tbaa !1252
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3391, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0, !dbg !3393
  %11 = load i64, i64* %ob_refcnt, align 8, !dbg !3394, !tbaa !1270
  %dec = add i64 %11, -1, !dbg !3394
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3394, !tbaa !1270
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3395
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3396

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !3397

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3399, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !3401
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3401, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4, !dbg !3402
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3402, !tbaa !1340
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3403, !tbaa !1252
  call void %14(%struct._object* %15), !dbg !3404
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %16 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3405
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !3405
  br label %do.cond, !dbg !3407

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !3408

do.end:                                           ; preds = %do.cond
  %17 = load i32, i32* %res, align 4, !dbg !3410, !tbaa !1236
  store i32 %17, i32* %retval, !dbg !3411
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3411

cleanup:                                          ; preds = %do.end, %if.then
  %18 = bitcast i32* %res to i8*, !dbg !3412
  call void @llvm.lifetime.end(i64 4, i8* %18) #1, !dbg !3412
  %19 = bitcast %struct._object** %dirpath to i8*, !dbg !3412
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !3412
  %20 = load i32, i32* %retval, !dbg !3412
  ret i32 %20, !dbg !3412
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_subname(%struct._object* %fullname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fullname.addr = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %dot = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %fullname.addr, metadata !615, metadata !1222), !dbg !3413
  %0 = bitcast i64* %len to i8*, !dbg !3414
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3414
  call void @llvm.dbg.declare(metadata i64* %len, metadata !616, metadata !1222), !dbg !3415
  %1 = bitcast i64* %dot to i8*, !dbg !3414
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3414
  call void @llvm.dbg.declare(metadata i64* %dot, metadata !617, metadata !1222), !dbg !3416
  %2 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3417, !tbaa !1252
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*, !dbg !3419
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 3, !dbg !3420
  %4 = bitcast %struct.anon* %state to i32*, !dbg !3421
  %bf.load = load i32, i32* %4, align 4, !dbg !3421
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !3421
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3421
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !3422
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3422

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3423

cond.false:                                       ; preds = %entry
  %5 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3425, !tbaa !1252
  %call = call i32 @_PyUnicode_Ready(%struct._object* %5), !dbg !3427
  br label %cond.end, !dbg !3422

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ], !dbg !3422
  %cmp = icmp slt i32 %cond, 0, !dbg !3428
  br i1 %cmp, label %if.then, label %if.end, !dbg !3431

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval, !dbg !3432
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3432

if.end:                                           ; preds = %cond.end
  %6 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3433, !tbaa !1252
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*, !dbg !3434
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 1, !dbg !3435
  %8 = load i64, i64* %length, align 8, !dbg !3435, !tbaa !1461
  store i64 %8, i64* %len, align 8, !dbg !3436, !tbaa !1558
  %9 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3437, !tbaa !1252
  %10 = load i64, i64* %len, align 8, !dbg !3438, !tbaa !1558
  %call1 = call i64 @PyUnicode_FindChar(%struct._object* %9, i32 46, i64 0, i64 %10, i32 -1), !dbg !3439
  store i64 %call1, i64* %dot, align 8, !dbg !3440, !tbaa !1558
  %11 = load i64, i64* %dot, align 8, !dbg !3441, !tbaa !1558
  %cmp2 = icmp eq i64 %11, -1, !dbg !3443
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3444

if.then.3:                                        ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3445, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3447
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3448, !tbaa !1270
  %inc = add i64 %13, 1, !dbg !3448
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3448, !tbaa !1270
  %14 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3449, !tbaa !1252
  store %struct._object* %14, %struct._object** %retval, !dbg !3450
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3450

if.else:                                          ; preds = %if.end
  %15 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3451, !tbaa !1252
  %16 = load i64, i64* %dot, align 8, !dbg !3452, !tbaa !1558
  %add = add i64 %16, 1, !dbg !3453
  %17 = load i64, i64* %len, align 8, !dbg !3454, !tbaa !1558
  %call4 = call %struct._object* @PyUnicode_Substring(%struct._object* %15, i64 %add, i64 %17), !dbg !3455
  store %struct._object* %call4, %struct._object** %retval, !dbg !3456
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3456

cleanup:                                          ; preds = %if.else, %if.then.3, %if.then
  %18 = bitcast i64* %dot to i8*, !dbg !3457
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !3457
  %19 = bitcast i64* %len to i8*, !dbg !3457
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !3457
  %20 = load %struct._object*, %struct._object** %retval, !dbg !3457
  ret %struct._object* %20, !dbg !3457
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @make_filename(%struct._object* %prefix, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %prefix.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %pathobj = alloca %struct._object*, align 8
  %p = alloca i32*, align 8
  %buf = alloca i32*, align 8
  %len = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %prefix, %struct._object** %prefix.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %prefix.addr, metadata !620, metadata !1222), !dbg !3458
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !621, metadata !1222), !dbg !3459
  %0 = bitcast %struct._object** %pathobj to i8*, !dbg !3460
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3460
  call void @llvm.dbg.declare(metadata %struct._object** %pathobj, metadata !622, metadata !1222), !dbg !3461
  %1 = bitcast i32** %p to i8*, !dbg !3462
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3462
  call void @llvm.dbg.declare(metadata i32** %p, metadata !623, metadata !1222), !dbg !3463
  %2 = bitcast i32** %buf to i8*, !dbg !3462
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3462
  call void @llvm.dbg.declare(metadata i32** %buf, metadata !624, metadata !1222), !dbg !3464
  %3 = bitcast i64* %len to i8*, !dbg !3465
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3465
  call void @llvm.dbg.declare(metadata i64* %len, metadata !625, metadata !1222), !dbg !3466
  %4 = load %struct._object*, %struct._object** %prefix.addr, align 8, !dbg !3467, !tbaa !1252
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*, !dbg !3468
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 1, !dbg !3469
  %6 = load i64, i64* %length, align 8, !dbg !3469, !tbaa !1461
  %7 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !3470, !tbaa !1252
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*, !dbg !3471
  %length1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 1, !dbg !3472
  %9 = load i64, i64* %length1, align 8, !dbg !3472, !tbaa !1461
  %add = add i64 %6, %9, !dbg !3473
  %add2 = add i64 %add, 1, !dbg !3474
  store i64 %add2, i64* %len, align 8, !dbg !3475, !tbaa !1558
  %10 = load i64, i64* %len, align 8, !dbg !3476, !tbaa !1558
  %mul = mul i64 4, %10, !dbg !3477
  %call = call i8* @PyMem_Malloc(i64 %mul), !dbg !3478
  %11 = bitcast i8* %call to i32*, !dbg !3478
  store i32* %11, i32** %buf, align 8, !dbg !3479, !tbaa !1252
  store i32* %11, i32** %p, align 8, !dbg !3480, !tbaa !1252
  %12 = load i32*, i32** %buf, align 8, !dbg !3481, !tbaa !1252
  %cmp = icmp eq i32* %12, null, !dbg !3483
  br i1 %cmp, label %if.then, label %if.end, !dbg !3484

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyErr_NoMemory(), !dbg !3485
  store %struct._object* null, %struct._object** %retval, !dbg !3487
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3487

if.end:                                           ; preds = %entry
  %13 = load %struct._object*, %struct._object** %prefix.addr, align 8, !dbg !3488, !tbaa !1252
  %14 = load i32*, i32** %p, align 8, !dbg !3490, !tbaa !1252
  %15 = load i64, i64* %len, align 8, !dbg !3491, !tbaa !1558
  %call4 = call i32* @PyUnicode_AsUCS4(%struct._object* %13, i32* %14, i64 %15, i32 0), !dbg !3492
  %tobool = icmp ne i32* %call4, null, !dbg !3492
  br i1 %tobool, label %if.end.6, label %if.then.5, !dbg !3493

if.then.5:                                        ; preds = %if.end
  %16 = load i32*, i32** %buf, align 8, !dbg !3494, !tbaa !1252
  %17 = bitcast i32* %16 to i8*, !dbg !3494
  call void @PyMem_Free(i8* %17), !dbg !3496
  store %struct._object* null, %struct._object** %retval, !dbg !3497
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3497

if.end.6:                                         ; preds = %if.end
  %18 = load %struct._object*, %struct._object** %prefix.addr, align 8, !dbg !3498, !tbaa !1252
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*, !dbg !3499
  %length7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1, !dbg !3500
  %20 = load i64, i64* %length7, align 8, !dbg !3500, !tbaa !1461
  %21 = load i32*, i32** %p, align 8, !dbg !3501, !tbaa !1252
  %add.ptr = getelementptr i32, i32* %21, i64 %20, !dbg !3501
  store i32* %add.ptr, i32** %p, align 8, !dbg !3501, !tbaa !1252
  %22 = load %struct._object*, %struct._object** %prefix.addr, align 8, !dbg !3502, !tbaa !1252
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*, !dbg !3503
  %length8 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 1, !dbg !3504
  %24 = load i64, i64* %length8, align 8, !dbg !3504, !tbaa !1461
  %25 = load i64, i64* %len, align 8, !dbg !3505, !tbaa !1558
  %sub = sub i64 %25, %24, !dbg !3505
  store i64 %sub, i64* %len, align 8, !dbg !3505, !tbaa !1558
  %26 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !3506, !tbaa !1252
  %27 = load i32*, i32** %p, align 8, !dbg !3508, !tbaa !1252
  %28 = load i64, i64* %len, align 8, !dbg !3509, !tbaa !1558
  %call9 = call i32* @PyUnicode_AsUCS4(%struct._object* %26, i32* %27, i64 %28, i32 1), !dbg !3510
  %tobool10 = icmp ne i32* %call9, null, !dbg !3510
  br i1 %tobool10, label %if.end.12, label %if.then.11, !dbg !3511

if.then.11:                                       ; preds = %if.end.6
  %29 = load i32*, i32** %buf, align 8, !dbg !3512, !tbaa !1252
  %30 = bitcast i32* %29 to i8*, !dbg !3512
  call void @PyMem_Free(i8* %30), !dbg !3514
  store %struct._object* null, %struct._object** %retval, !dbg !3515
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3515

if.end.12:                                        ; preds = %if.end.6
  br label %for.cond, !dbg !3516

for.cond:                                         ; preds = %for.inc, %if.end.12
  %31 = load i32*, i32** %p, align 8, !dbg !3517, !tbaa !1252
  %32 = load i32, i32* %31, align 4, !dbg !3522, !tbaa !1236
  %tobool13 = icmp ne i32 %32, 0, !dbg !3523
  br i1 %tobool13, label %for.body, label %for.end, !dbg !3523

for.body:                                         ; preds = %for.cond
  %33 = load i32*, i32** %p, align 8, !dbg !3524, !tbaa !1252
  %34 = load i32, i32* %33, align 4, !dbg !3527, !tbaa !1236
  %cmp14 = icmp eq i32 %34, 46, !dbg !3528
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3529

if.then.15:                                       ; preds = %for.body
  %35 = load i32*, i32** %p, align 8, !dbg !3530, !tbaa !1252
  store i32 47, i32* %35, align 4, !dbg !3531, !tbaa !1236
  br label %if.end.16, !dbg !3532

if.end.16:                                        ; preds = %if.then.15, %for.body
  br label %for.inc, !dbg !3533

for.inc:                                          ; preds = %if.end.16
  %36 = load i32*, i32** %p, align 8, !dbg !3534, !tbaa !1252
  %incdec.ptr = getelementptr i32, i32* %36, i32 1, !dbg !3534
  store i32* %incdec.ptr, i32** %p, align 8, !dbg !3534, !tbaa !1252
  br label %for.cond, !dbg !3535

for.end:                                          ; preds = %for.cond
  %37 = load i32*, i32** %buf, align 8, !dbg !3536, !tbaa !1252
  %38 = bitcast i32* %37 to i8*, !dbg !3536
  %39 = load i32*, i32** %p, align 8, !dbg !3537, !tbaa !1252
  %40 = load i32*, i32** %buf, align 8, !dbg !3538, !tbaa !1252
  %sub.ptr.lhs.cast = ptrtoint i32* %39 to i64, !dbg !3539
  %sub.ptr.rhs.cast = ptrtoint i32* %40 to i64, !dbg !3539
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !3539
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4, !dbg !3539
  %call17 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %38, i64 %sub.ptr.div), !dbg !3540
  store %struct._object* %call17, %struct._object** %pathobj, align 8, !dbg !3541, !tbaa !1252
  %41 = load i32*, i32** %buf, align 8, !dbg !3542, !tbaa !1252
  %42 = bitcast i32* %41 to i8*, !dbg !3542
  call void @PyMem_Free(i8* %42), !dbg !3543
  %43 = load %struct._object*, %struct._object** %pathobj, align 8, !dbg !3544, !tbaa !1252
  store %struct._object* %43, %struct._object** %retval, !dbg !3545
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3545

cleanup:                                          ; preds = %for.end, %if.then.11, %if.then.5, %if.then
  %44 = bitcast i64* %len to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !3546
  %45 = bitcast i32** %buf to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !3546
  %46 = bitcast i32** %p to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !3546
  %47 = bitcast %struct._object** %pathobj to i8*, !dbg !3546
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !3546
  %48 = load %struct._object*, %struct._object** %retval, !dbg !3546
  ret %struct._object* %48, !dbg !3546
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
define internal %struct._object* @get_module_code(%struct._zipimporter* %self, %struct._object* %fullname, i32* %p_ispackage, %struct._object** %p_modpath) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._zipimporter*, align 8
  %fullname.addr = alloca %struct._object*, align 8
  %p_ispackage.addr = alloca i32*, align 8
  %p_modpath.addr = alloca %struct._object**, align 8
  %code = alloca %struct._object*, align 8
  %toc_entry = alloca %struct._object*, align 8
  %subname = alloca %struct._object*, align 8
  %path = alloca %struct._object*, align 8
  %fullpath = alloca %struct._object*, align 8
  %zso = alloca %struct.st_zip_searchorder*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %mtime = alloca i64, align 8
  %ispackage = alloca i32, align 4
  %isbytecode = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_tmp79 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %_py_decref_tmp100 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !693, metadata !1222), !dbg !3547
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %fullname.addr, metadata !694, metadata !1222), !dbg !3548
  store i32* %p_ispackage, i32** %p_ispackage.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata i32** %p_ispackage.addr, metadata !695, metadata !1222), !dbg !3549
  store %struct._object** %p_modpath, %struct._object*** %p_modpath.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object*** %p_modpath.addr, metadata !696, metadata !1222), !dbg !3550
  %0 = bitcast %struct._object** %code to i8*, !dbg !3551
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3551
  call void @llvm.dbg.declare(metadata %struct._object** %code, metadata !697, metadata !1222), !dbg !3552
  store %struct._object* null, %struct._object** %code, align 8, !dbg !3552, !tbaa !1252
  %1 = bitcast %struct._object** %toc_entry to i8*, !dbg !3551
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3551
  call void @llvm.dbg.declare(metadata %struct._object** %toc_entry, metadata !698, metadata !1222), !dbg !3553
  %2 = bitcast %struct._object** %subname to i8*, !dbg !3551
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3551
  call void @llvm.dbg.declare(metadata %struct._object** %subname, metadata !699, metadata !1222), !dbg !3554
  %3 = bitcast %struct._object** %path to i8*, !dbg !3555
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3555
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !700, metadata !1222), !dbg !3556
  %4 = bitcast %struct._object** %fullpath to i8*, !dbg !3555
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3555
  call void @llvm.dbg.declare(metadata %struct._object** %fullpath, metadata !701, metadata !1222), !dbg !3557
  store %struct._object* null, %struct._object** %fullpath, align 8, !dbg !3557, !tbaa !1252
  %5 = bitcast %struct.st_zip_searchorder** %zso to i8*, !dbg !3558
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !3558
  call void @llvm.dbg.declare(metadata %struct.st_zip_searchorder** %zso, metadata !702, metadata !1222), !dbg !3559
  %6 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3560, !tbaa !1252
  %call = call %struct._object* @get_subname(%struct._object* %6), !dbg !3561
  store %struct._object* %call, %struct._object** %subname, align 8, !dbg !3562, !tbaa !1252
  %7 = load %struct._object*, %struct._object** %subname, align 8, !dbg !3563, !tbaa !1252
  %cmp = icmp eq %struct._object* %7, null, !dbg !3565
  br i1 %cmp, label %if.then, label %if.end, !dbg !3566

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3567
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129, !dbg !3567

if.end:                                           ; preds = %entry
  %8 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3568, !tbaa !1252
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %8, i32 0, i32 2, !dbg !3569
  %9 = load %struct._object*, %struct._object** %prefix, align 8, !dbg !3569, !tbaa !1362
  %10 = load %struct._object*, %struct._object** %subname, align 8, !dbg !3570, !tbaa !1252
  %call1 = call %struct._object* @make_filename(%struct._object* %9, %struct._object* %10), !dbg !3571
  store %struct._object* %call1, %struct._object** %path, align 8, !dbg !3572, !tbaa !1252
  br label %do.body, !dbg !3573

do.body:                                          ; preds = %if.end
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3574
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !3574
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !703, metadata !1222), !dbg !3576
  %12 = load %struct._object*, %struct._object** %subname, align 8, !dbg !3577, !tbaa !1252
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !3576, !tbaa !1252
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3578, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !3580
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !3581, !tbaa !1270
  %dec = add i64 %14, -1, !dbg !3581
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3581, !tbaa !1270
  %cmp2 = icmp ne i64 %dec, 0, !dbg !3582
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !3583

if.then.3:                                        ; preds = %do.body
  br label %if.end.4, !dbg !3584

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3586, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !3588
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3588, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !3589
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3589, !tbaa !1340
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3590, !tbaa !1252
  call void %17(%struct._object* %18), !dbg !3591
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3592
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !3592
  br label %do.cond, !dbg !3594

do.cond:                                          ; preds = %if.end.4
  br label %do.end, !dbg !3595

do.end:                                           ; preds = %do.cond
  %20 = load %struct._object*, %struct._object** %path, align 8, !dbg !3597, !tbaa !1252
  %cmp5 = icmp eq %struct._object* %20, null, !dbg !3599
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !3600

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval, !dbg !3601
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129, !dbg !3601

if.end.7:                                         ; preds = %do.end
  store %struct.st_zip_searchorder* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0), %struct.st_zip_searchorder** %zso, align 8, !dbg !3602, !tbaa !1252
  br label %for.cond, !dbg !3603

for.cond:                                         ; preds = %for.inc, %if.end.7
  %21 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3604, !tbaa !1252
  %suffix = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %21, i32 0, i32 0, !dbg !3607
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %suffix, i32 0, i32 0, !dbg !3608
  %22 = load i8, i8* %arraydecay, align 1, !dbg !3609, !tbaa !1230
  %tobool = icmp ne i8 %22, 0, !dbg !3610
  br i1 %tobool, label %for.body, label %for.end, !dbg !3610

for.body:                                         ; preds = %for.cond
  store %struct._object* null, %struct._object** %code, align 8, !dbg !3611, !tbaa !1252
  %23 = load %struct._object*, %struct._object** %path, align 8, !dbg !3612, !tbaa !1252
  %24 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3613, !tbaa !1252
  %suffix8 = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %24, i32 0, i32 0, !dbg !3614
  %arraydecay9 = getelementptr inbounds [14 x i8], [14 x i8]* %suffix8, i32 0, i32 0, !dbg !3613
  %call10 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._object* %23, i8* %arraydecay9), !dbg !3615
  store %struct._object* %call10, %struct._object** %fullpath, align 8, !dbg !3616, !tbaa !1252
  %25 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3617, !tbaa !1252
  %cmp11 = icmp eq %struct._object* %25, null, !dbg !3619
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !3620

if.then.12:                                       ; preds = %for.body
  br label %exit, !dbg !3621

if.end.13:                                        ; preds = %for.body
  %26 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !3622, !tbaa !1236
  %cmp14 = icmp sgt i32 %26, 1, !dbg !3624
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !3625

if.then.15:                                       ; preds = %if.end.13
  %27 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3626, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %27, i32 0, i32 1, !dbg !3627
  %28 = load %struct._object*, %struct._object** %archive, align 8, !dbg !3627, !tbaa !1316
  %29 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3628, !tbaa !1252
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), %struct._object* %28, i32 47, %struct._object* %29), !dbg !3629
  br label %if.end.16, !dbg !3629

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %30 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3630, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %30, i32 0, i32 3, !dbg !3631
  %31 = load %struct._object*, %struct._object** %files, align 8, !dbg !3631, !tbaa !1401
  %32 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3632, !tbaa !1252
  %call17 = call %struct._object* @PyDict_GetItem(%struct._object* %31, %struct._object* %32), !dbg !3633
  store %struct._object* %call17, %struct._object** %toc_entry, align 8, !dbg !3634, !tbaa !1252
  %33 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !3635, !tbaa !1252
  %cmp18 = icmp ne %struct._object* %33, null, !dbg !3636
  br i1 %cmp18, label %if.then.19, label %if.else.77, !dbg !3637

if.then.19:                                       ; preds = %if.end.16
  %34 = bitcast i64* %mtime to i8*, !dbg !3638
  call void @llvm.lifetime.start(i64 8, i8* %34) #1, !dbg !3638
  call void @llvm.dbg.declare(metadata i64* %mtime, metadata !705, metadata !1222), !dbg !3639
  store i64 0, i64* %mtime, align 8, !dbg !3639, !tbaa !1558
  %35 = bitcast i32* %ispackage to i8*, !dbg !3640
  call void @llvm.lifetime.start(i64 4, i8* %35) #1, !dbg !3640
  call void @llvm.dbg.declare(metadata i32* %ispackage, metadata !711, metadata !1222), !dbg !3641
  %36 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3642, !tbaa !1252
  %type = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %36, i32 0, i32 1, !dbg !3643
  %37 = load i32, i32* %type, align 4, !dbg !3643, !tbaa !3331
  %and = and i32 %37, 2, !dbg !3644
  store i32 %and, i32* %ispackage, align 4, !dbg !3641, !tbaa !1236
  %38 = bitcast i32* %isbytecode to i8*, !dbg !3645
  call void @llvm.lifetime.start(i64 4, i8* %38) #1, !dbg !3645
  call void @llvm.dbg.declare(metadata i32* %isbytecode, metadata !712, metadata !1222), !dbg !3646
  %39 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3647, !tbaa !1252
  %type20 = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %39, i32 0, i32 1, !dbg !3648
  %40 = load i32, i32* %type20, align 4, !dbg !3648, !tbaa !3331
  %and21 = and i32 %40, 1, !dbg !3649
  store i32 %and21, i32* %isbytecode, align 4, !dbg !3646, !tbaa !1236
  %41 = load i32, i32* %isbytecode, align 4, !dbg !3650, !tbaa !1236
  %tobool22 = icmp ne i32 %41, 0, !dbg !3650
  br i1 %tobool22, label %if.then.23, label %if.end.30, !dbg !3652

if.then.23:                                       ; preds = %if.then.19
  %42 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3653, !tbaa !1252
  %43 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3655, !tbaa !1252
  %call24 = call i64 @get_mtime_of_source(%struct._zipimporter* %42, %struct._object* %43), !dbg !3656
  store i64 %call24, i64* %mtime, align 8, !dbg !3657, !tbaa !1558
  %44 = load i64, i64* %mtime, align 8, !dbg !3658, !tbaa !1558
  %cmp25 = icmp eq i64 %44, -1, !dbg !3660
  br i1 %cmp25, label %land.lhs.true, label %if.end.29, !dbg !3661

land.lhs.true:                                    ; preds = %if.then.23
  %call26 = call %struct._object* @PyErr_Occurred(), !dbg !3662
  %tobool27 = icmp ne %struct._object* %call26, null, !dbg !3662
  br i1 %tobool27, label %if.then.28, label %if.end.29, !dbg !3664

if.then.28:                                       ; preds = %land.lhs.true
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3665

if.end.29:                                        ; preds = %land.lhs.true, %if.then.23
  br label %if.end.30, !dbg !3667

if.end.30:                                        ; preds = %if.end.29, %if.then.19
  br label %do.body.31, !dbg !3668

do.body.31:                                       ; preds = %if.end.30
  %45 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3669
  call void @llvm.lifetime.start(i64 8, i8* %45) #1, !dbg !3669
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !713, metadata !1222), !dbg !3671
  %46 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3672, !tbaa !1252
  store %struct._object* %46, %struct._object** %_py_tmp, align 8, !dbg !3671, !tbaa !1252
  %47 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3673, !tbaa !1252
  %cmp32 = icmp ne %struct._object* %47, null, !dbg !3674
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !3675

if.then.33:                                       ; preds = %do.body.31
  store %struct._object* null, %struct._object** %fullpath, align 8, !dbg !3676, !tbaa !1252
  br label %do.body.34, !dbg !3678

do.body.34:                                       ; preds = %if.then.33
  %48 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !3679
  call void @llvm.lifetime.start(i64 8, i8* %48) #1, !dbg !3679
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !715, metadata !1222), !dbg !3681
  %49 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !3682, !tbaa !1252
  store %struct._object* %49, %struct._object** %_py_decref_tmp35, align 8, !dbg !3681, !tbaa !1252
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !3683, !tbaa !1252
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !3685
  %51 = load i64, i64* %ob_refcnt36, align 8, !dbg !3686, !tbaa !1270
  %dec37 = add i64 %51, -1, !dbg !3686
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !3686, !tbaa !1270
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !3687
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !3688

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !3689

if.else.40:                                       ; preds = %do.body.34
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !3691, !tbaa !1252
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !3693
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !3693, !tbaa !1338
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !3694
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !3694, !tbaa !1340
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !3695, !tbaa !1252
  call void %54(%struct._object* %55), !dbg !3696
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %56 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !3697
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !3697
  br label %do.cond.44, !dbg !3699

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !3700

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.46, !dbg !3702

if.end.46:                                        ; preds = %do.end.45, %do.body.31
  %57 = bitcast %struct._object** %_py_tmp to i8*, !dbg !3704
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !3704
  br label %do.cond.47, !dbg !3707

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !3708

do.end.48:                                        ; preds = %do.cond.47
  %58 = load i32*, i32** %p_ispackage.addr, align 8, !dbg !3710, !tbaa !1252
  %cmp49 = icmp ne i32* %58, null, !dbg !3712
  br i1 %cmp49, label %if.then.50, label %if.end.51, !dbg !3713

if.then.50:                                       ; preds = %do.end.48
  %59 = load i32, i32* %ispackage, align 4, !dbg !3714, !tbaa !1236
  %60 = load i32*, i32** %p_ispackage.addr, align 8, !dbg !3715, !tbaa !1252
  store i32 %59, i32* %60, align 4, !dbg !3716, !tbaa !1236
  br label %if.end.51, !dbg !3717

if.end.51:                                        ; preds = %if.then.50, %do.end.48
  %61 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3718, !tbaa !1252
  %62 = load i32, i32* %ispackage, align 4, !dbg !3719, !tbaa !1236
  %63 = load i32, i32* %isbytecode, align 4, !dbg !3720, !tbaa !1236
  %64 = load i64, i64* %mtime, align 8, !dbg !3721, !tbaa !1558
  %65 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !3722, !tbaa !1252
  %call52 = call %struct._object* @get_code_from_data(%struct._zipimporter* %61, i32 %62, i32 %63, i64 %64, %struct._object* %65), !dbg !3723
  store %struct._object* %call52, %struct._object** %code, align 8, !dbg !3724, !tbaa !1252
  %66 = load %struct._object*, %struct._object** %code, align 8, !dbg !3725, !tbaa !1252
  %cmp53 = icmp eq %struct._object* %66, @_Py_NoneStruct, !dbg !3726
  br i1 %cmp53, label %if.then.54, label %if.end.67, !dbg !3727

if.then.54:                                       ; preds = %if.end.51
  br label %do.body.55, !dbg !3728

do.body.55:                                       ; preds = %if.then.54
  %67 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !3729
  call void @llvm.lifetime.start(i64 8, i8* %67) #1, !dbg !3729
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp56, metadata !719, metadata !1222), !dbg !3731
  %68 = load %struct._object*, %struct._object** %code, align 8, !dbg !3732, !tbaa !1252
  store %struct._object* %68, %struct._object** %_py_decref_tmp56, align 8, !dbg !3731, !tbaa !1252
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3733, !tbaa !1252
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !3735
  %70 = load i64, i64* %ob_refcnt57, align 8, !dbg !3736, !tbaa !1270
  %dec58 = add i64 %70, -1, !dbg !3736
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !3736, !tbaa !1270
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !3737
  br i1 %cmp59, label %if.then.60, label %if.else.61, !dbg !3738

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64, !dbg !3739

if.else.61:                                       ; preds = %do.body.55
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3741, !tbaa !1252
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !3743
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !3743, !tbaa !1338
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4, !dbg !3744
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !3744, !tbaa !1340
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !3745, !tbaa !1252
  call void %73(%struct._object* %74), !dbg !3746
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  %75 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !3747
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !3747
  br label %do.cond.65, !dbg !3749

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !3750

do.end.66:                                        ; preds = %do.cond.65
  store i32 6, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3752

if.end.67:                                        ; preds = %if.end.51
  %76 = load %struct._object*, %struct._object** %code, align 8, !dbg !3753, !tbaa !1252
  %cmp68 = icmp ne %struct._object* %76, null, !dbg !3755
  br i1 %cmp68, label %land.lhs.true.69, label %if.end.74, !dbg !3756

land.lhs.true.69:                                 ; preds = %if.end.67
  %77 = load %struct._object**, %struct._object*** %p_modpath.addr, align 8, !dbg !3757, !tbaa !1252
  %cmp70 = icmp ne %struct._object** %77, null, !dbg !3759
  br i1 %cmp70, label %if.then.71, label %if.end.74, !dbg !3760

if.then.71:                                       ; preds = %land.lhs.true.69
  %78 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !3761, !tbaa !1252
  %call72 = call %struct._object* @PyTuple_GetItem(%struct._object* %78, i64 0), !dbg !3763
  %79 = load %struct._object**, %struct._object*** %p_modpath.addr, align 8, !dbg !3764, !tbaa !1252
  store %struct._object* %call72, %struct._object** %79, align 8, !dbg !3765, !tbaa !1252
  %80 = load %struct._object**, %struct._object*** %p_modpath.addr, align 8, !dbg !3766, !tbaa !1252
  %81 = load %struct._object*, %struct._object** %80, align 8, !dbg !3767, !tbaa !1252
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 0, !dbg !3768
  %82 = load i64, i64* %ob_refcnt73, align 8, !dbg !3769, !tbaa !1270
  %inc = add i64 %82, 1, !dbg !3769
  store i64 %inc, i64* %ob_refcnt73, align 8, !dbg !3769, !tbaa !1270
  br label %if.end.74, !dbg !3770

if.end.74:                                        ; preds = %if.then.71, %land.lhs.true.69, %if.end.67
  store i32 7, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3771

cleanup:                                          ; preds = %if.end.74, %if.then.28, %do.end.66
  %83 = bitcast i32* %isbytecode to i8*, !dbg !3772
  call void @llvm.lifetime.end(i64 4, i8* %83) #1, !dbg !3772
  %84 = bitcast i32* %ispackage to i8*, !dbg !3772
  call void @llvm.lifetime.end(i64 4, i8* %84) #1, !dbg !3772
  %85 = bitcast i64* %mtime to i8*, !dbg !3772
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !3772
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.129 [
    i32 6, label %for.inc
    i32 7, label %exit
  ]

if.else.77:                                       ; preds = %if.end.16
  br label %do.body.78, !dbg !3773

do.body.78:                                       ; preds = %if.else.77
  %86 = bitcast %struct._object** %_py_tmp79 to i8*, !dbg !3774
  call void @llvm.lifetime.start(i64 8, i8* %86) #1, !dbg !3774
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp79, metadata !723, metadata !1222), !dbg !3776
  %87 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3777, !tbaa !1252
  store %struct._object* %87, %struct._object** %_py_tmp79, align 8, !dbg !3776, !tbaa !1252
  %88 = load %struct._object*, %struct._object** %_py_tmp79, align 8, !dbg !3778, !tbaa !1252
  %cmp80 = icmp ne %struct._object* %88, null, !dbg !3779
  br i1 %cmp80, label %if.then.81, label %if.end.94, !dbg !3780

if.then.81:                                       ; preds = %do.body.78
  store %struct._object* null, %struct._object** %fullpath, align 8, !dbg !3781, !tbaa !1252
  br label %do.body.82, !dbg !3783

do.body.82:                                       ; preds = %if.then.81
  %89 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !3784
  call void @llvm.lifetime.start(i64 8, i8* %89) #1, !dbg !3784
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp83, metadata !725, metadata !1222), !dbg !3786
  %90 = load %struct._object*, %struct._object** %_py_tmp79, align 8, !dbg !3787, !tbaa !1252
  store %struct._object* %90, %struct._object** %_py_decref_tmp83, align 8, !dbg !3786, !tbaa !1252
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !3788, !tbaa !1252
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0, !dbg !3790
  %92 = load i64, i64* %ob_refcnt84, align 8, !dbg !3791, !tbaa !1270
  %dec85 = add i64 %92, -1, !dbg !3791
  store i64 %dec85, i64* %ob_refcnt84, align 8, !dbg !3791, !tbaa !1270
  %cmp86 = icmp ne i64 %dec85, 0, !dbg !3792
  br i1 %cmp86, label %if.then.87, label %if.else.88, !dbg !3793

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91, !dbg !3794

if.else.88:                                       ; preds = %do.body.82
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !3796, !tbaa !1252
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1, !dbg !3798
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8, !dbg !3798, !tbaa !1338
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4, !dbg !3799
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8, !dbg !3799, !tbaa !1340
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8, !dbg !3800, !tbaa !1252
  call void %95(%struct._object* %96), !dbg !3801
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  %97 = bitcast %struct._object** %_py_decref_tmp83 to i8*, !dbg !3802
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !3802
  br label %do.cond.92, !dbg !3804

do.cond.92:                                       ; preds = %if.end.91
  br label %do.end.93, !dbg !3805

do.end.93:                                        ; preds = %do.cond.92
  br label %if.end.94, !dbg !3807

if.end.94:                                        ; preds = %do.end.93, %do.body.78
  %98 = bitcast %struct._object** %_py_tmp79 to i8*, !dbg !3809
  call void @llvm.lifetime.end(i64 8, i8* %98) #1, !dbg !3809
  br label %do.cond.95, !dbg !3812

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !3813

do.end.96:                                        ; preds = %do.cond.95
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96
  br label %for.inc, !dbg !3815

for.inc:                                          ; preds = %if.end.97, %cleanup
  %99 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8, !dbg !3816, !tbaa !1252
  %incdec.ptr = getelementptr %struct.st_zip_searchorder, %struct.st_zip_searchorder* %99, i32 1, !dbg !3816
  store %struct.st_zip_searchorder* %incdec.ptr, %struct.st_zip_searchorder** %zso, align 8, !dbg !3816, !tbaa !1252
  br label %for.cond, !dbg !3817

for.end:                                          ; preds = %for.cond
  %100 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !3818, !tbaa !1252
  %101 = load %struct._object*, %struct._object** %fullname.addr, align 8, !dbg !3819, !tbaa !1252
  %call98 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), %struct._object* %101), !dbg !3820
  br label %exit, !dbg !3820

exit:                                             ; preds = %for.end, %cleanup, %if.then.12
  br label %do.body.99, !dbg !3821

do.body.99:                                       ; preds = %exit
  %102 = bitcast %struct._object** %_py_decref_tmp100 to i8*, !dbg !3822
  call void @llvm.lifetime.start(i64 8, i8* %102) #1, !dbg !3822
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp100, metadata !729, metadata !1222), !dbg !3824
  %103 = load %struct._object*, %struct._object** %path, align 8, !dbg !3825, !tbaa !1252
  store %struct._object* %103, %struct._object** %_py_decref_tmp100, align 8, !dbg !3824, !tbaa !1252
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8, !dbg !3826, !tbaa !1252
  %ob_refcnt101 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0, !dbg !3828
  %105 = load i64, i64* %ob_refcnt101, align 8, !dbg !3829, !tbaa !1270
  %dec102 = add i64 %105, -1, !dbg !3829
  store i64 %dec102, i64* %ob_refcnt101, align 8, !dbg !3829, !tbaa !1270
  %cmp103 = icmp ne i64 %dec102, 0, !dbg !3830
  br i1 %cmp103, label %if.then.104, label %if.else.105, !dbg !3831

if.then.104:                                      ; preds = %do.body.99
  br label %if.end.108, !dbg !3832

if.else.105:                                      ; preds = %do.body.99
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8, !dbg !3834, !tbaa !1252
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1, !dbg !3836
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8, !dbg !3836, !tbaa !1338
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4, !dbg !3837
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8, !dbg !3837, !tbaa !1340
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp100, align 8, !dbg !3838, !tbaa !1252
  call void %108(%struct._object* %109), !dbg !3839
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  %110 = bitcast %struct._object** %_py_decref_tmp100 to i8*, !dbg !3840
  call void @llvm.lifetime.end(i64 8, i8* %110) #1, !dbg !3840
  br label %do.cond.109, !dbg !3841

do.cond.109:                                      ; preds = %if.end.108
  br label %do.end.110, !dbg !3842

do.end.110:                                       ; preds = %do.cond.109
  br label %do.body.111, !dbg !3844

do.body.111:                                      ; preds = %do.end.110
  %111 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3845
  call void @llvm.lifetime.start(i64 8, i8* %111) #1, !dbg !3845
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !731, metadata !1222), !dbg !3847
  %112 = load %struct._object*, %struct._object** %fullpath, align 8, !dbg !3848, !tbaa !1252
  store %struct._object* %112, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3847, !tbaa !1252
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3849, !tbaa !1252
  %cmp112 = icmp ne %struct._object* %113, null, !dbg !3850
  br i1 %cmp112, label %if.then.113, label %if.end.126, !dbg !3851

if.then.113:                                      ; preds = %do.body.111
  br label %do.body.114, !dbg !3852

do.body.114:                                      ; preds = %if.then.113
  %114 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !3854
  call void @llvm.lifetime.start(i64 8, i8* %114) #1, !dbg !3854
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp115, metadata !733, metadata !1222), !dbg !3856
  %115 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3857, !tbaa !1252
  store %struct._object* %115, %struct._object** %_py_decref_tmp115, align 8, !dbg !3856, !tbaa !1252
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !3858, !tbaa !1252
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0, !dbg !3860
  %117 = load i64, i64* %ob_refcnt116, align 8, !dbg !3861, !tbaa !1270
  %dec117 = add i64 %117, -1, !dbg !3861
  store i64 %dec117, i64* %ob_refcnt116, align 8, !dbg !3861, !tbaa !1270
  %cmp118 = icmp ne i64 %dec117, 0, !dbg !3862
  br i1 %cmp118, label %if.then.119, label %if.else.120, !dbg !3863

if.then.119:                                      ; preds = %do.body.114
  br label %if.end.123, !dbg !3864

if.else.120:                                      ; preds = %do.body.114
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !3866, !tbaa !1252
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1, !dbg !3868
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8, !dbg !3868, !tbaa !1338
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4, !dbg !3869
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8, !dbg !3869, !tbaa !1340
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8, !dbg !3870, !tbaa !1252
  call void %120(%struct._object* %121), !dbg !3871
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  %122 = bitcast %struct._object** %_py_decref_tmp115 to i8*, !dbg !3872
  call void @llvm.lifetime.end(i64 8, i8* %122) #1, !dbg !3872
  br label %do.cond.124, !dbg !3874

do.cond.124:                                      ; preds = %if.end.123
  br label %do.end.125, !dbg !3875

do.end.125:                                       ; preds = %do.cond.124
  br label %if.end.126, !dbg !3877

if.end.126:                                       ; preds = %do.end.125, %do.body.111
  %123 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3879
  call void @llvm.lifetime.end(i64 8, i8* %123) #1, !dbg !3879
  br label %do.cond.127, !dbg !3882

do.cond.127:                                      ; preds = %if.end.126
  br label %do.end.128, !dbg !3883

do.end.128:                                       ; preds = %do.cond.127
  %124 = load %struct._object*, %struct._object** %code, align 8, !dbg !3885, !tbaa !1252
  store %struct._object* %124, %struct._object** %retval, !dbg !3886
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.129, !dbg !3886

cleanup.129:                                      ; preds = %do.end.128, %cleanup, %if.then.6, %if.then
  %125 = bitcast %struct.st_zip_searchorder** %zso to i8*, !dbg !3887
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !3887
  %126 = bitcast %struct._object** %fullpath to i8*, !dbg !3887
  call void @llvm.lifetime.end(i64 8, i8* %126) #1, !dbg !3887
  %127 = bitcast %struct._object** %path to i8*, !dbg !3887
  call void @llvm.lifetime.end(i64 8, i8* %127) #1, !dbg !3887
  %128 = bitcast %struct._object** %subname to i8*, !dbg !3887
  call void @llvm.lifetime.end(i64 8, i8* %128) #1, !dbg !3887
  %129 = bitcast %struct._object** %toc_entry to i8*, !dbg !3887
  call void @llvm.lifetime.end(i64 8, i8* %129) #1, !dbg !3887
  %130 = bitcast %struct._object** %code to i8*, !dbg !3887
  call void @llvm.lifetime.end(i64 8, i8* %130) #1, !dbg !3887
  %131 = load %struct._object*, %struct._object** %retval, !dbg !3887
  ret %struct._object* %131, !dbg !3887
}

declare %struct._object* @PyImport_AddModuleObject(%struct._object*) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyImport_ExecCodeModuleObject(%struct._object*, %struct._object*, %struct._object*, %struct._object*) #3

declare void @PySys_FormatStderr(i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i64 @get_mtime_of_source(%struct._zipimporter* %self, %struct._object* %path) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct._zipimporter*, align 8
  %path.addr = alloca %struct._object*, align 8
  %toc_entry = alloca %struct._object*, align 8
  %stripped = alloca %struct._object*, align 8
  %mtime = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %time = alloca i32, align 4
  %date = alloca i32, align 4
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !740, metadata !1222), !dbg !3888
  store %struct._object* %path, %struct._object** %path.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %path.addr, metadata !741, metadata !1222), !dbg !3889
  %0 = bitcast %struct._object** %toc_entry to i8*, !dbg !3890
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3890
  call void @llvm.dbg.declare(metadata %struct._object** %toc_entry, metadata !742, metadata !1222), !dbg !3891
  %1 = bitcast %struct._object** %stripped to i8*, !dbg !3890
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3890
  call void @llvm.dbg.declare(metadata %struct._object** %stripped, metadata !743, metadata !1222), !dbg !3892
  %2 = bitcast i64* %mtime to i8*, !dbg !3893
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3893
  call void @llvm.dbg.declare(metadata i64* %mtime, metadata !744, metadata !1222), !dbg !3894
  %3 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3895, !tbaa !1252
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*, !dbg !3897
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3, !dbg !3898
  %5 = bitcast %struct.anon* %state to i32*, !dbg !3899
  %bf.load = load i32, i32* %5, align 4, !dbg !3899
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !3899
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3899
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !3900
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3900

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !3901

cond.false:                                       ; preds = %entry
  %6 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3903, !tbaa !1252
  %call = call i32 @_PyUnicode_Ready(%struct._object* %6), !dbg !3905
  br label %cond.end, !dbg !3900

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ], !dbg !3900
  %cmp = icmp eq i32 %cond, -1, !dbg !3906
  br i1 %cmp, label %if.then, label %if.end, !dbg !3909

if.then:                                          ; preds = %cond.end
  store i64 -1, i64* %retval, !dbg !3910
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3910

if.end:                                           ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3911, !tbaa !1252
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*, !dbg !3912
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3, !dbg !3913
  %9 = bitcast %struct.anon* %state1 to i32*, !dbg !3914
  %bf.load2 = load i32, i32* %9, align 4, !dbg !3914
  %bf.lshr3 = lshr i32 %bf.load2, 2, !dbg !3914
  %bf.clear4 = and i32 %bf.lshr3, 7, !dbg !3914
  %10 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3915, !tbaa !1252
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*, !dbg !3916
  %state5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3, !dbg !3917
  %12 = bitcast %struct.anon* %state5 to i32*, !dbg !3918
  %bf.load6 = load i32, i32* %12, align 4, !dbg !3918
  %bf.lshr7 = lshr i32 %bf.load6, 5, !dbg !3918
  %bf.clear8 = and i32 %bf.lshr7, 1, !dbg !3918
  %tobool9 = icmp ne i32 %bf.clear8, 0, !dbg !3919
  br i1 %tobool9, label %cond.true.10, label %cond.false.21, !dbg !3919

cond.true.10:                                     ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3920, !tbaa !1252
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*, !dbg !3922
  %state11 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 3, !dbg !3923
  %15 = bitcast %struct.anon* %state11 to i32*, !dbg !3924
  %bf.load12 = load i32, i32* %15, align 4, !dbg !3924
  %bf.lshr13 = lshr i32 %bf.load12, 6, !dbg !3924
  %bf.clear14 = and i32 %bf.lshr13, 1, !dbg !3924
  %tobool15 = icmp ne i32 %bf.clear14, 0, !dbg !3925
  br i1 %tobool15, label %cond.true.16, label %cond.false.17, !dbg !3925

cond.true.16:                                     ; preds = %cond.true.10
  %16 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3926, !tbaa !1252
  %17 = bitcast %struct._object* %16 to %struct.PyASCIIObject*, !dbg !3928
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i64 1, !dbg !3929
  %18 = bitcast %struct.PyASCIIObject* %add.ptr to i8*, !dbg !3930
  br label %cond.end.19, !dbg !3925

cond.false.17:                                    ; preds = %cond.true.10
  %19 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3931, !tbaa !1252
  %20 = bitcast %struct._object* %19 to %struct.PyCompactUnicodeObject*, !dbg !3933
  %add.ptr18 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %20, i64 1, !dbg !3934
  %21 = bitcast %struct.PyCompactUnicodeObject* %add.ptr18 to i8*, !dbg !3935
  br label %cond.end.19, !dbg !3925

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i8* [ %18, %cond.true.16 ], [ %21, %cond.false.17 ], !dbg !3925
  br label %cond.end.22, !dbg !3936

cond.false.21:                                    ; preds = %if.end
  %22 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3939, !tbaa !1252
  %23 = bitcast %struct._object* %22 to %struct.PyUnicodeObject*, !dbg !3941
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %23, i32 0, i32 1, !dbg !3942
  %any = bitcast %union.anon* %data to i8**, !dbg !3943
  %24 = load i8*, i8** %any, align 8, !dbg !3943, !tbaa !1252
  br label %cond.end.22, !dbg !3919

cond.end.22:                                      ; preds = %cond.false.21, %cond.end.19
  %cond23 = phi i8* [ %cond20, %cond.end.19 ], [ %24, %cond.false.21 ], !dbg !3919
  %25 = load %struct._object*, %struct._object** %path.addr, align 8, !dbg !3944, !tbaa !1252
  %26 = bitcast %struct._object* %25 to %struct.PyASCIIObject*, !dbg !3945
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %26, i32 0, i32 1, !dbg !3946
  %27 = load i64, i64* %length, align 8, !dbg !3946, !tbaa !1461
  %sub = sub i64 %27, 1, !dbg !3947
  %call24 = call %struct._object* @PyUnicode_FromKindAndData(i32 %bf.clear4, i8* %cond23, i64 %sub), !dbg !3948
  store %struct._object* %call24, %struct._object** %stripped, align 8, !dbg !3949, !tbaa !1252
  %28 = load %struct._object*, %struct._object** %stripped, align 8, !dbg !3950, !tbaa !1252
  %cmp25 = icmp eq %struct._object* %28, null, !dbg !3952
  br i1 %cmp25, label %if.then.26, label %if.end.27, !dbg !3953

if.then.26:                                       ; preds = %cond.end.22
  store i64 -1, i64* %retval, !dbg !3954
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3954

if.end.27:                                        ; preds = %cond.end.22
  %29 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !3955, !tbaa !1252
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %29, i32 0, i32 3, !dbg !3956
  %30 = load %struct._object*, %struct._object** %files, align 8, !dbg !3956, !tbaa !1401
  %31 = load %struct._object*, %struct._object** %stripped, align 8, !dbg !3957, !tbaa !1252
  %call28 = call %struct._object* @PyDict_GetItem(%struct._object* %30, %struct._object* %31), !dbg !3958
  store %struct._object* %call28, %struct._object** %toc_entry, align 8, !dbg !3959, !tbaa !1252
  br label %do.body, !dbg !3960

do.body:                                          ; preds = %if.end.27
  %32 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3961
  call void @llvm.lifetime.start(i64 8, i8* %32) #1, !dbg !3961
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !745, metadata !1222), !dbg !3963
  %33 = load %struct._object*, %struct._object** %stripped, align 8, !dbg !3964, !tbaa !1252
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8, !dbg !3963, !tbaa !1252
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3965, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0, !dbg !3967
  %35 = load i64, i64* %ob_refcnt, align 8, !dbg !3968, !tbaa !1270
  %dec = add i64 %35, -1, !dbg !3968
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3968, !tbaa !1270
  %cmp29 = icmp ne i64 %dec, 0, !dbg !3969
  br i1 %cmp29, label %if.then.30, label %if.else, !dbg !3970

if.then.30:                                       ; preds = %do.body
  br label %if.end.31, !dbg !3971

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3973, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1, !dbg !3975
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3975, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4, !dbg !3976
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3976, !tbaa !1340
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3977, !tbaa !1252
  call void %38(%struct._object* %39), !dbg !3978
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  %40 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3979
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !3979
  br label %do.cond, !dbg !3980

do.cond:                                          ; preds = %if.end.31
  br label %do.end, !dbg !3981

do.end:                                           ; preds = %do.cond
  %41 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !3983, !tbaa !1252
  %cmp32 = icmp ne %struct._object* %41, null, !dbg !3984
  br i1 %cmp32, label %land.lhs.true, label %if.else.45, !dbg !3985

land.lhs.true:                                    ; preds = %do.end
  %42 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !3986, !tbaa !1252
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !3988
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8, !dbg !3988, !tbaa !1338
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 19, !dbg !3989
  %44 = load i64, i64* %tp_flags, align 8, !dbg !3989, !tbaa !3990
  %and = and i64 %44, 67108864, !dbg !3991
  %cmp34 = icmp ne i64 %and, 0, !dbg !3992
  br i1 %cmp34, label %land.lhs.true.35, label %if.else.45, !dbg !3993

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %45 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !3994, !tbaa !1252
  %call36 = call i64 @PyTuple_Size(%struct._object* %45), !dbg !3995
  %cmp37 = icmp eq i64 %call36, 8, !dbg !3996
  br i1 %cmp37, label %if.then.38, label %if.else.45, !dbg !3997

if.then.38:                                       ; preds = %land.lhs.true.35
  %46 = bitcast i32* %time to i8*, !dbg !3998
  call void @llvm.lifetime.start(i64 4, i8* %46) #1, !dbg !3998
  call void @llvm.dbg.declare(metadata i32* %time, metadata !747, metadata !1222), !dbg !3999
  %47 = bitcast i32* %date to i8*, !dbg !3998
  call void @llvm.lifetime.start(i64 4, i8* %47) #1, !dbg !3998
  call void @llvm.dbg.declare(metadata i32* %date, metadata !750, metadata !1222), !dbg !4000
  %48 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !4001, !tbaa !1252
  %call39 = call %struct._object* @PyTuple_GetItem(%struct._object* %48, i64 5), !dbg !4002
  %call40 = call i64 @PyLong_AsLong(%struct._object* %call39), !dbg !4003
  %conv = trunc i64 %call40 to i32, !dbg !4003
  store i32 %conv, i32* %time, align 4, !dbg !4004, !tbaa !1236
  %49 = load %struct._object*, %struct._object** %toc_entry, align 8, !dbg !4005, !tbaa !1252
  %call41 = call %struct._object* @PyTuple_GetItem(%struct._object* %49, i64 6), !dbg !4006
  %call42 = call i64 @PyLong_AsLong(%struct._object* %call41), !dbg !4007
  %conv43 = trunc i64 %call42 to i32, !dbg !4007
  store i32 %conv43, i32* %date, align 4, !dbg !4008, !tbaa !1236
  %50 = load i32, i32* %time, align 4, !dbg !4009, !tbaa !1236
  %51 = load i32, i32* %date, align 4, !dbg !4010, !tbaa !1236
  %call44 = call i64 @parse_dostime(i32 %50, i32 %51), !dbg !4011
  store i64 %call44, i64* %mtime, align 8, !dbg !4012, !tbaa !1558
  %52 = bitcast i32* %date to i8*, !dbg !4013
  call void @llvm.lifetime.end(i64 4, i8* %52) #1, !dbg !4013
  %53 = bitcast i32* %time to i8*, !dbg !4013
  call void @llvm.lifetime.end(i64 4, i8* %53) #1, !dbg !4013
  br label %if.end.46, !dbg !4014

if.else.45:                                       ; preds = %land.lhs.true.35, %land.lhs.true, %do.end
  store i64 0, i64* %mtime, align 8, !dbg !4015, !tbaa !1558
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.38
  %54 = load i64, i64* %mtime, align 8, !dbg !4016, !tbaa !1558
  store i64 %54, i64* %retval, !dbg !4017
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4017

cleanup:                                          ; preds = %if.end.46, %if.then.26, %if.then
  %55 = bitcast i64* %mtime to i8*, !dbg !4018
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !4018
  %56 = bitcast %struct._object** %stripped to i8*, !dbg !4018
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !4018
  %57 = bitcast %struct._object** %toc_entry to i8*, !dbg !4018
  call void @llvm.lifetime.end(i64 8, i8* %57) #1, !dbg !4018
  %58 = load i64, i64* %retval, !dbg !4018
  ret i64 %58, !dbg !4018
}

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_code_from_data(%struct._zipimporter* %self, i32 %ispackage, i32 %isbytecode, i64 %mtime, %struct._object* %toc_entry) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._zipimporter*, align 8
  %ispackage.addr = alloca i32, align 4
  %isbytecode.addr = alloca i32, align 4
  %mtime.addr = alloca i64, align 8
  %toc_entry.addr = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %modpath = alloca %struct._object*, align 8
  %code = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._zipimporter** %self.addr, metadata !775, metadata !1222), !dbg !4019
  store i32 %ispackage, i32* %ispackage.addr, align 4, !tbaa !1236
  call void @llvm.dbg.declare(metadata i32* %ispackage.addr, metadata !776, metadata !1222), !dbg !4020
  store i32 %isbytecode, i32* %isbytecode.addr, align 4, !tbaa !1236
  call void @llvm.dbg.declare(metadata i32* %isbytecode.addr, metadata !777, metadata !1222), !dbg !4021
  store i64 %mtime, i64* %mtime.addr, align 8, !tbaa !1558
  call void @llvm.dbg.declare(metadata i64* %mtime.addr, metadata !778, metadata !1222), !dbg !4022
  store %struct._object* %toc_entry, %struct._object** %toc_entry.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %toc_entry.addr, metadata !779, metadata !1222), !dbg !4023
  %0 = bitcast %struct._object** %data to i8*, !dbg !4024
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4024
  call void @llvm.dbg.declare(metadata %struct._object** %data, metadata !780, metadata !1222), !dbg !4025
  %1 = bitcast %struct._object** %modpath to i8*, !dbg !4024
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4024
  call void @llvm.dbg.declare(metadata %struct._object** %modpath, metadata !781, metadata !1222), !dbg !4026
  %2 = bitcast %struct._object** %code to i8*, !dbg !4024
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4024
  call void @llvm.dbg.declare(metadata %struct._object** %code, metadata !782, metadata !1222), !dbg !4027
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8, !dbg !4028, !tbaa !1252
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %3, i32 0, i32 1, !dbg !4029
  %4 = load %struct._object*, %struct._object** %archive, align 8, !dbg !4029, !tbaa !1316
  %5 = load %struct._object*, %struct._object** %toc_entry.addr, align 8, !dbg !4030, !tbaa !1252
  %call = call %struct._object* @get_data(%struct._object* %4, %struct._object* %5), !dbg !4031
  store %struct._object* %call, %struct._object** %data, align 8, !dbg !4032, !tbaa !1252
  %6 = load %struct._object*, %struct._object** %data, align 8, !dbg !4033, !tbaa !1252
  %cmp = icmp eq %struct._object* %6, null, !dbg !4035
  br i1 %cmp, label %if.then, label %if.end, !dbg !4036

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4037
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4037

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %toc_entry.addr, align 8, !dbg !4038, !tbaa !1252
  %call1 = call %struct._object* @PyTuple_GetItem(%struct._object* %7, i64 0), !dbg !4039
  store %struct._object* %call1, %struct._object** %modpath, align 8, !dbg !4040, !tbaa !1252
  %8 = load i32, i32* %isbytecode.addr, align 4, !dbg !4041, !tbaa !1236
  %tobool = icmp ne i32 %8, 0, !dbg !4041
  br i1 %tobool, label %if.then.2, label %if.else, !dbg !4043

if.then.2:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !4044, !tbaa !1252
  %10 = load %struct._object*, %struct._object** %data, align 8, !dbg !4045, !tbaa !1252
  %11 = load i64, i64* %mtime.addr, align 8, !dbg !4046, !tbaa !1558
  %call3 = call %struct._object* @unmarshal_code(%struct._object* %9, %struct._object* %10, i64 %11), !dbg !4047
  store %struct._object* %call3, %struct._object** %code, align 8, !dbg !4048, !tbaa !1252
  br label %if.end.5, !dbg !4049

if.else:                                          ; preds = %if.end
  %12 = load %struct._object*, %struct._object** %modpath, align 8, !dbg !4050, !tbaa !1252
  %13 = load %struct._object*, %struct._object** %data, align 8, !dbg !4051, !tbaa !1252
  %call4 = call %struct._object* @compile_source(%struct._object* %12, %struct._object* %13), !dbg !4052
  store %struct._object* %call4, %struct._object** %code, align 8, !dbg !4053, !tbaa !1252
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  br label %do.body, !dbg !4054

do.body:                                          ; preds = %if.end.5
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4055
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !4055
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !783, metadata !1222), !dbg !4057
  %15 = load %struct._object*, %struct._object** %data, align 8, !dbg !4058, !tbaa !1252
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8, !dbg !4057, !tbaa !1252
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4059, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0, !dbg !4061
  %17 = load i64, i64* %ob_refcnt, align 8, !dbg !4062, !tbaa !1270
  %dec = add i64 %17, -1, !dbg !4062
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4062, !tbaa !1270
  %cmp6 = icmp ne i64 %dec, 0, !dbg !4063
  br i1 %cmp6, label %if.then.7, label %if.else.8, !dbg !4064

if.then.7:                                        ; preds = %do.body
  br label %if.end.9, !dbg !4065

if.else.8:                                        ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4067, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1, !dbg !4069
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4069, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4, !dbg !4070
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4070, !tbaa !1340
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4071, !tbaa !1252
  call void %20(%struct._object* %21), !dbg !4072
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4073
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !4073
  br label %do.cond, !dbg !4075

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !4076

do.end:                                           ; preds = %do.cond
  %23 = load %struct._object*, %struct._object** %code, align 8, !dbg !4078, !tbaa !1252
  store %struct._object* %23, %struct._object** %retval, !dbg !4079
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4079

cleanup:                                          ; preds = %do.end, %if.then
  %24 = bitcast %struct._object** %code to i8*, !dbg !4080
  call void @llvm.lifetime.end(i64 8, i8* %24) #1, !dbg !4080
  %25 = bitcast %struct._object** %modpath to i8*, !dbg !4080
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !4080
  %26 = bitcast %struct._object** %data to i8*, !dbg !4080
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !4080
  %27 = load %struct._object*, %struct._object** %retval, !dbg !4080
  ret %struct._object* %27, !dbg !4080
}

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i64 @PyTuple_Size(%struct._object*) #3

declare i64 @PyLong_AsLong(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i64 @parse_dostime(i32 %dostime, i32 %dosdate) #0 {
entry:
  %dostime.addr = alloca i32, align 4
  %dosdate.addr = alloca i32, align 4
  %stm = alloca %struct.tm, align 8
  store i32 %dostime, i32* %dostime.addr, align 4, !tbaa !1236
  call void @llvm.dbg.declare(metadata i32* %dostime.addr, metadata !755, metadata !1222), !dbg !4081
  store i32 %dosdate, i32* %dosdate.addr, align 4, !tbaa !1236
  call void @llvm.dbg.declare(metadata i32* %dosdate.addr, metadata !756, metadata !1222), !dbg !4082
  %0 = bitcast %struct.tm* %stm to i8*, !dbg !4083
  call void @llvm.lifetime.start(i64 56, i8* %0) #1, !dbg !4083
  call void @llvm.dbg.declare(metadata %struct.tm* %stm, metadata !757, metadata !1222), !dbg !4084
  %1 = bitcast %struct.tm* %stm to i8*, !dbg !4085
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 56, i32 1, i1 false), !dbg !4086
  %2 = load i32, i32* %dostime.addr, align 4, !dbg !4087, !tbaa !1236
  %and = and i32 %2, 31, !dbg !4088
  %mul = mul i32 %and, 2, !dbg !4089
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 0, !dbg !4090
  store i32 %mul, i32* %tm_sec, align 4, !dbg !4091, !tbaa !4092
  %3 = load i32, i32* %dostime.addr, align 4, !dbg !4094, !tbaa !1236
  %shr = ashr i32 %3, 5, !dbg !4095
  %and1 = and i32 %shr, 63, !dbg !4096
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 1, !dbg !4097
  store i32 %and1, i32* %tm_min, align 4, !dbg !4098, !tbaa !4099
  %4 = load i32, i32* %dostime.addr, align 4, !dbg !4100, !tbaa !1236
  %shr2 = ashr i32 %4, 11, !dbg !4101
  %and3 = and i32 %shr2, 31, !dbg !4102
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 2, !dbg !4103
  store i32 %and3, i32* %tm_hour, align 4, !dbg !4104, !tbaa !4105
  %5 = load i32, i32* %dosdate.addr, align 4, !dbg !4106, !tbaa !1236
  %and4 = and i32 %5, 31, !dbg !4107
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 3, !dbg !4108
  store i32 %and4, i32* %tm_mday, align 4, !dbg !4109, !tbaa !4110
  %6 = load i32, i32* %dosdate.addr, align 4, !dbg !4111, !tbaa !1236
  %shr5 = ashr i32 %6, 5, !dbg !4112
  %and6 = and i32 %shr5, 15, !dbg !4113
  %sub = sub i32 %and6, 1, !dbg !4114
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 4, !dbg !4115
  store i32 %sub, i32* %tm_mon, align 4, !dbg !4116, !tbaa !4117
  %7 = load i32, i32* %dosdate.addr, align 4, !dbg !4118, !tbaa !1236
  %shr7 = ashr i32 %7, 9, !dbg !4119
  %and8 = and i32 %shr7, 127, !dbg !4120
  %add = add i32 %and8, 80, !dbg !4121
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 5, !dbg !4122
  store i32 %add, i32* %tm_year, align 4, !dbg !4123, !tbaa !4124
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 8, !dbg !4125
  store i32 -1, i32* %tm_isdst, align 4, !dbg !4126, !tbaa !4127
  %call = call i64 @mktime(%struct.tm* %stm) #1, !dbg !4128
  %8 = bitcast %struct.tm* %stm to i8*, !dbg !4129
  call void @llvm.lifetime.end(i64 56, i8* %8) #1, !dbg !4129
  ret i64 %call, !dbg !4130
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #4

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_data(%struct._object* %archive, %struct._object* %toc_entry) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %archive.addr = alloca %struct._object*, align 8
  %toc_entry.addr = alloca %struct._object*, align 8
  %raw_data = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %decompress = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %err = alloca i32, align 4
  %bytes_read = alloca i64, align 8
  %l = alloca i64, align 8
  %datapath = alloca %struct._object*, align 8
  %compress = alloca i64, align 8
  %data_size = alloca i64, align 8
  %file_size = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %bytes_size = alloca i64, align 8
  %time = alloca i64, align 8
  %date = alloca i64, align 8
  %crc = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_decref_tmp118 = alloca %struct._object*, align 8
  store %struct._object* %archive, %struct._object** %archive.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %archive.addr, metadata !787, metadata !1222), !dbg !4131
  store %struct._object* %toc_entry, %struct._object** %toc_entry.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %toc_entry.addr, metadata !788, metadata !1222), !dbg !4132
  %0 = bitcast %struct._object** %raw_data to i8*, !dbg !4133
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4133
  call void @llvm.dbg.declare(metadata %struct._object** %raw_data, metadata !789, metadata !1222), !dbg !4134
  %1 = bitcast %struct._object** %data to i8*, !dbg !4133
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4133
  call void @llvm.dbg.declare(metadata %struct._object** %data, metadata !790, metadata !1222), !dbg !4135
  store %struct._object* null, %struct._object** %data, align 8, !dbg !4135, !tbaa !1252
  %2 = bitcast %struct._object** %decompress to i8*, !dbg !4133
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4133
  call void @llvm.dbg.declare(metadata %struct._object** %decompress, metadata !791, metadata !1222), !dbg !4136
  %3 = bitcast i8** %buf to i8*, !dbg !4137
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4137
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !792, metadata !1222), !dbg !4138
  %4 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4139
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !4139
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !793, metadata !1222), !dbg !4140
  %5 = bitcast i32* %err to i8*, !dbg !4141
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !4141
  call void @llvm.dbg.declare(metadata i32* %err, metadata !794, metadata !1222), !dbg !4142
  %6 = bitcast i64* %bytes_read to i8*, !dbg !4143
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !4143
  call void @llvm.dbg.declare(metadata i64* %bytes_read, metadata !795, metadata !1222), !dbg !4144
  store i64 0, i64* %bytes_read, align 8, !dbg !4144, !tbaa !1558
  %7 = bitcast i64* %l to i8*, !dbg !4145
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !4145
  call void @llvm.dbg.declare(metadata i64* %l, metadata !796, metadata !1222), !dbg !4146
  %8 = bitcast %struct._object** %datapath to i8*, !dbg !4147
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !4147
  call void @llvm.dbg.declare(metadata %struct._object** %datapath, metadata !797, metadata !1222), !dbg !4148
  %9 = bitcast i64* %compress to i8*, !dbg !4149
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4149
  call void @llvm.dbg.declare(metadata i64* %compress, metadata !798, metadata !1222), !dbg !4150
  %10 = bitcast i64* %data_size to i8*, !dbg !4149
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !4149
  call void @llvm.dbg.declare(metadata i64* %data_size, metadata !799, metadata !1222), !dbg !4151
  %11 = bitcast i64* %file_size to i8*, !dbg !4149
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !4149
  call void @llvm.dbg.declare(metadata i64* %file_size, metadata !800, metadata !1222), !dbg !4152
  %12 = bitcast i64* %file_offset to i8*, !dbg !4149
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !4149
  call void @llvm.dbg.declare(metadata i64* %file_offset, metadata !801, metadata !1222), !dbg !4153
  %13 = bitcast i64* %bytes_size to i8*, !dbg !4149
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !4149
  call void @llvm.dbg.declare(metadata i64* %bytes_size, metadata !802, metadata !1222), !dbg !4154
  %14 = bitcast i64* %time to i8*, !dbg !4155
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !4155
  call void @llvm.dbg.declare(metadata i64* %time, metadata !803, metadata !1222), !dbg !4156
  %15 = bitcast i64* %date to i8*, !dbg !4155
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !4155
  call void @llvm.dbg.declare(metadata i64* %date, metadata !804, metadata !1222), !dbg !4157
  %16 = bitcast i64* %crc to i8*, !dbg !4155
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !4155
  call void @llvm.dbg.declare(metadata i64* %crc, metadata !805, metadata !1222), !dbg !4158
  %17 = load %struct._object*, %struct._object** %toc_entry.addr, align 8, !dbg !4159, !tbaa !1252
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._object** %datapath, i64* %compress, i64* %data_size, i64* %file_size, i64* %file_offset, i64* %time, i64* %date, i64* %crc), !dbg !4161
  %tobool = icmp ne i32 %call, 0, !dbg !4161
  br i1 %tobool, label %if.end, label %if.then, !dbg !4162

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4163
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4163

if.end:                                           ; preds = %entry
  %18 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4165, !tbaa !1252
  %call1 = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)), !dbg !4166
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8, !dbg !4167, !tbaa !1252
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4168, !tbaa !1252
  %tobool2 = icmp ne %struct._IO_FILE* %19, null, !dbg !4168
  br i1 %tobool2, label %if.end.9, label %if.then.3, !dbg !4170

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred(), !dbg !4171
  %tobool5 = icmp ne %struct._object* %call4, null, !dbg !4171
  br i1 %tobool5, label %if.end.8, label %if.then.6, !dbg !4174

if.then.6:                                        ; preds = %if.then.3
  %20 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !4175, !tbaa !1252
  %21 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4176, !tbaa !1252
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0), %struct._object* %21), !dbg !4177
  br label %if.end.8, !dbg !4177

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !4178
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4178

if.end.9:                                         ; preds = %if.end
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4179, !tbaa !1252
  %23 = load i64, i64* %file_offset, align 8, !dbg !4181, !tbaa !1558
  %call10 = call i32 @fseek(%struct._IO_FILE* %22, i64 %23, i32 0), !dbg !4182
  %cmp = icmp eq i32 %call10, -1, !dbg !4183
  br i1 %cmp, label %if.then.11, label %if.end.14, !dbg !4184

if.then.11:                                       ; preds = %if.end.9
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4185, !tbaa !1252
  %call12 = call i32 @fclose(%struct._IO_FILE* %24), !dbg !4187
  %25 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4188, !tbaa !1252
  %26 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4189, !tbaa !1252
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %26), !dbg !4190
  store %struct._object* null, %struct._object** %retval, !dbg !4191
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4191

if.end.14:                                        ; preds = %if.end.9
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4192, !tbaa !1252
  %call15 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %27), !dbg !4193
  store i64 %call15, i64* %l, align 8, !dbg !4194, !tbaa !1558
  %28 = load i64, i64* %l, align 8, !dbg !4195, !tbaa !1558
  %cmp16 = icmp ne i64 %28, 67324752, !dbg !4197
  br i1 %cmp16, label %if.then.17, label %if.end.24, !dbg !4198

if.then.17:                                       ; preds = %if.end.14
  %call18 = call %struct._object* @PyErr_Occurred(), !dbg !4199
  %tobool19 = icmp ne %struct._object* %call18, null, !dbg !4199
  br i1 %tobool19, label %if.end.22, label %if.then.20, !dbg !4202

if.then.20:                                       ; preds = %if.then.17
  %29 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4203, !tbaa !1252
  %30 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4204, !tbaa !1252
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), %struct._object* %30), !dbg !4205
  br label %if.end.22, !dbg !4205

if.end.22:                                        ; preds = %if.then.20, %if.then.17
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4206, !tbaa !1252
  %call23 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !4207
  store %struct._object* null, %struct._object** %retval, !dbg !4208
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4208

if.end.24:                                        ; preds = %if.end.14
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4209, !tbaa !1252
  %33 = load i64, i64* %file_offset, align 8, !dbg !4211, !tbaa !1558
  %add = add i64 %33, 26, !dbg !4212
  %call25 = call i32 @fseek(%struct._IO_FILE* %32, i64 %add, i32 0), !dbg !4213
  %cmp26 = icmp eq i32 %call25, -1, !dbg !4214
  br i1 %cmp26, label %if.then.27, label %if.end.30, !dbg !4215

if.then.27:                                       ; preds = %if.end.24
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4216, !tbaa !1252
  %call28 = call i32 @fclose(%struct._IO_FILE* %34), !dbg !4218
  %35 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4219, !tbaa !1252
  %36 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4220, !tbaa !1252
  %call29 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %35, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %36), !dbg !4221
  store %struct._object* null, %struct._object** %retval, !dbg !4222
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4222

if.end.30:                                        ; preds = %if.end.24
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4223, !tbaa !1252
  %call31 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %37), !dbg !4224
  %add32 = add i32 30, %call31, !dbg !4225
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4226, !tbaa !1252
  %call33 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %38), !dbg !4227
  %add34 = add i32 %add32, %call33, !dbg !4228
  %conv = sext i32 %add34 to i64, !dbg !4229
  store i64 %conv, i64* %l, align 8, !dbg !4230, !tbaa !1558
  %call35 = call %struct._object* @PyErr_Occurred(), !dbg !4231
  %tobool36 = icmp ne %struct._object* %call35, null, !dbg !4231
  br i1 %tobool36, label %if.then.37, label %if.end.39, !dbg !4233

if.then.37:                                       ; preds = %if.end.30
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4234, !tbaa !1252
  %call38 = call i32 @fclose(%struct._IO_FILE* %39), !dbg !4236
  store %struct._object* null, %struct._object** %retval, !dbg !4237
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4237

if.end.39:                                        ; preds = %if.end.30
  %40 = load i64, i64* %l, align 8, !dbg !4238, !tbaa !1558
  %41 = load i64, i64* %file_offset, align 8, !dbg !4239, !tbaa !1558
  %add40 = add i64 %41, %40, !dbg !4239
  store i64 %add40, i64* %file_offset, align 8, !dbg !4239, !tbaa !1558
  %42 = load i64, i64* %compress, align 8, !dbg !4240, !tbaa !1558
  %cmp41 = icmp eq i64 %42, 0, !dbg !4241
  br i1 %cmp41, label %cond.true, label %cond.false, !dbg !4240

cond.true:                                        ; preds = %if.end.39
  %43 = load i64, i64* %data_size, align 8, !dbg !4242, !tbaa !1558
  br label %cond.end, !dbg !4240

cond.false:                                       ; preds = %if.end.39
  %44 = load i64, i64* %data_size, align 8, !dbg !4244, !tbaa !1558
  %add43 = add i64 %44, 1, !dbg !4246
  br label %cond.end, !dbg !4240

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %43, %cond.true ], [ %add43, %cond.false ], !dbg !4240
  store i64 %cond, i64* %bytes_size, align 8, !dbg !4247, !tbaa !1558
  %45 = load i64, i64* %bytes_size, align 8, !dbg !4250, !tbaa !1558
  %cmp44 = icmp eq i64 %45, 0, !dbg !4252
  br i1 %cmp44, label %if.then.46, label %if.end.47, !dbg !4253

if.then.46:                                       ; preds = %cond.end
  %46 = load i64, i64* %bytes_size, align 8, !dbg !4254, !tbaa !1558
  %inc = add i64 %46, 1, !dbg !4254
  store i64 %inc, i64* %bytes_size, align 8, !dbg !4254, !tbaa !1558
  br label %if.end.47, !dbg !4255

if.end.47:                                        ; preds = %if.then.46, %cond.end
  %47 = load i64, i64* %bytes_size, align 8, !dbg !4256, !tbaa !1558
  %call48 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %47), !dbg !4257
  store %struct._object* %call48, %struct._object** %raw_data, align 8, !dbg !4258, !tbaa !1252
  %48 = load %struct._object*, %struct._object** %raw_data, align 8, !dbg !4259, !tbaa !1252
  %cmp49 = icmp eq %struct._object* %48, null, !dbg !4261
  br i1 %cmp49, label %if.then.51, label %if.end.53, !dbg !4262

if.then.51:                                       ; preds = %if.end.47
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4263, !tbaa !1252
  %call52 = call i32 @fclose(%struct._IO_FILE* %49), !dbg !4265
  store %struct._object* null, %struct._object** %retval, !dbg !4266
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4266

if.end.53:                                        ; preds = %if.end.47
  %50 = load %struct._object*, %struct._object** %raw_data, align 8, !dbg !4267, !tbaa !1252
  %call54 = call i8* @PyBytes_AsString(%struct._object* %50), !dbg !4268
  store i8* %call54, i8** %buf, align 8, !dbg !4269, !tbaa !1252
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4270, !tbaa !1252
  %52 = load i64, i64* %file_offset, align 8, !dbg !4271, !tbaa !1558
  %call55 = call i32 @fseek(%struct._IO_FILE* %51, i64 %52, i32 0), !dbg !4272
  store i32 %call55, i32* %err, align 4, !dbg !4273, !tbaa !1236
  %53 = load i32, i32* %err, align 4, !dbg !4274, !tbaa !1236
  %cmp56 = icmp eq i32 %53, 0, !dbg !4276
  br i1 %cmp56, label %if.then.58, label %if.else, !dbg !4277

if.then.58:                                       ; preds = %if.end.53
  %54 = load i8*, i8** %buf, align 8, !dbg !4278, !tbaa !1252
  %55 = load i64, i64* %data_size, align 8, !dbg !4280, !tbaa !1558
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4281, !tbaa !1252
  %call59 = call i64 @fread(i8* %54, i64 1, i64 %55, %struct._IO_FILE* %56), !dbg !4282
  store i64 %call59, i64* %bytes_read, align 8, !dbg !4283, !tbaa !1558
  br label %if.end.62, !dbg !4284

if.else:                                          ; preds = %if.end.53
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4285, !tbaa !1252
  %call60 = call i32 @fclose(%struct._IO_FILE* %57), !dbg !4287
  %58 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4288, !tbaa !1252
  %59 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4289, !tbaa !1252
  %call61 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %59), !dbg !4290
  store %struct._object* null, %struct._object** %retval, !dbg !4291
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4291

if.end.62:                                        ; preds = %if.then.58
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4292, !tbaa !1252
  %call63 = call i32 @fclose(%struct._IO_FILE* %60), !dbg !4293
  %61 = load i32, i32* %err, align 4, !dbg !4294, !tbaa !1236
  %tobool64 = icmp ne i32 %61, 0, !dbg !4294
  br i1 %tobool64, label %if.then.67, label %lor.lhs.false, !dbg !4295

lor.lhs.false:                                    ; preds = %if.end.62
  %62 = load i64, i64* %bytes_read, align 8, !dbg !4296, !tbaa !1558
  %63 = load i64, i64* %data_size, align 8, !dbg !4298, !tbaa !1558
  %cmp65 = icmp ne i64 %62, %63, !dbg !4299
  br i1 %cmp65, label %if.then.67, label %if.end.73, !dbg !4300

if.then.67:                                       ; preds = %lor.lhs.false, %if.end.62
  %64 = load %struct._object*, %struct._object** @PyExc_IOError, align 8, !dbg !4301, !tbaa !1252
  call void @PyErr_SetString(%struct._object* %64, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0)), !dbg !4302
  br label %do.body, !dbg !4303

do.body:                                          ; preds = %if.then.67
  %65 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4304
  call void @llvm.lifetime.start(i64 8, i8* %65) #1, !dbg !4304
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !806, metadata !1222), !dbg !4306
  %66 = load %struct._object*, %struct._object** %raw_data, align 8, !dbg !4307, !tbaa !1252
  store %struct._object* %66, %struct._object** %_py_decref_tmp, align 8, !dbg !4306, !tbaa !1252
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4308, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 0, !dbg !4310
  %68 = load i64, i64* %ob_refcnt, align 8, !dbg !4311, !tbaa !1270
  %dec = add i64 %68, -1, !dbg !4311
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4311, !tbaa !1270
  %cmp68 = icmp ne i64 %dec, 0, !dbg !4312
  br i1 %cmp68, label %if.then.70, label %if.else.71, !dbg !4313

if.then.70:                                       ; preds = %do.body
  br label %if.end.72, !dbg !4314

if.else.71:                                       ; preds = %do.body
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4316, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 1, !dbg !4318
  %70 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4318, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %70, i32 0, i32 4, !dbg !4319
  %71 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4319, !tbaa !1340
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4320, !tbaa !1252
  call void %71(%struct._object* %72), !dbg !4321
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  %73 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4322
  call void @llvm.lifetime.end(i64 8, i8* %73) #1, !dbg !4322
  br label %do.cond, !dbg !4324

do.cond:                                          ; preds = %if.end.72
  br label %do.end, !dbg !4325

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !4327
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4327

if.end.73:                                        ; preds = %lor.lhs.false
  %74 = load i64, i64* %compress, align 8, !dbg !4328, !tbaa !1558
  %cmp74 = icmp ne i64 %74, 0, !dbg !4330
  br i1 %cmp74, label %if.then.76, label %if.end.78, !dbg !4331

if.then.76:                                       ; preds = %if.end.73
  %75 = load i64, i64* %data_size, align 8, !dbg !4332, !tbaa !1558
  %76 = load i8*, i8** %buf, align 8, !dbg !4334, !tbaa !1252
  %arrayidx = getelementptr i8, i8* %76, i64 %75, !dbg !4334
  store i8 90, i8* %arrayidx, align 1, !dbg !4335, !tbaa !1230
  %77 = load i64, i64* %data_size, align 8, !dbg !4336, !tbaa !1558
  %inc77 = add i64 %77, 1, !dbg !4336
  store i64 %inc77, i64* %data_size, align 8, !dbg !4336, !tbaa !1558
  br label %if.end.78, !dbg !4337

if.end.78:                                        ; preds = %if.then.76, %if.end.73
  %78 = load i64, i64* %data_size, align 8, !dbg !4338, !tbaa !1558
  %79 = load i8*, i8** %buf, align 8, !dbg !4339, !tbaa !1252
  %arrayidx79 = getelementptr i8, i8* %79, i64 %78, !dbg !4339
  store i8 0, i8* %arrayidx79, align 1, !dbg !4340, !tbaa !1230
  %80 = load i64, i64* %compress, align 8, !dbg !4341, !tbaa !1558
  %cmp80 = icmp eq i64 %80, 0, !dbg !4342
  br i1 %cmp80, label %if.then.82, label %if.end.97, !dbg !4343

if.then.82:                                       ; preds = %if.end.78
  %81 = load i8*, i8** %buf, align 8, !dbg !4344, !tbaa !1252
  %82 = load i64, i64* %data_size, align 8, !dbg !4345, !tbaa !1558
  %call83 = call %struct._object* @PyBytes_FromStringAndSize(i8* %81, i64 %82), !dbg !4346
  store %struct._object* %call83, %struct._object** %data, align 8, !dbg !4347, !tbaa !1252
  br label %do.body.84, !dbg !4348

do.body.84:                                       ; preds = %if.then.82
  %83 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !4349
  call void @llvm.lifetime.start(i64 8, i8* %83) #1, !dbg !4349
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp85, metadata !810, metadata !1222), !dbg !4351
  %84 = load %struct._object*, %struct._object** %raw_data, align 8, !dbg !4352, !tbaa !1252
  store %struct._object* %84, %struct._object** %_py_decref_tmp85, align 8, !dbg !4351, !tbaa !1252
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !4353, !tbaa !1252
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0, !dbg !4355
  %86 = load i64, i64* %ob_refcnt86, align 8, !dbg !4356, !tbaa !1270
  %dec87 = add i64 %86, -1, !dbg !4356
  store i64 %dec87, i64* %ob_refcnt86, align 8, !dbg !4356, !tbaa !1270
  %cmp88 = icmp ne i64 %dec87, 0, !dbg !4357
  br i1 %cmp88, label %if.then.90, label %if.else.91, !dbg !4358

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94, !dbg !4359

if.else.91:                                       ; preds = %do.body.84
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !4361, !tbaa !1252
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1, !dbg !4363
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8, !dbg !4363, !tbaa !1338
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4, !dbg !4364
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8, !dbg !4364, !tbaa !1340
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8, !dbg !4365, !tbaa !1252
  call void %89(%struct._object* %90), !dbg !4366
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  %91 = bitcast %struct._object** %_py_decref_tmp85 to i8*, !dbg !4367
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !4367
  br label %do.cond.95, !dbg !4369

do.cond.95:                                       ; preds = %if.end.94
  br label %do.end.96, !dbg !4370

do.end.96:                                        ; preds = %do.cond.95
  %92 = load %struct._object*, %struct._object** %data, align 8, !dbg !4372, !tbaa !1252
  store %struct._object* %92, %struct._object** %retval, !dbg !4373
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4373

if.end.97:                                        ; preds = %if.end.78
  %call98 = call %struct._object* @get_decompress_func(), !dbg !4374
  store %struct._object* %call98, %struct._object** %decompress, align 8, !dbg !4375, !tbaa !1252
  %93 = load %struct._object*, %struct._object** %decompress, align 8, !dbg !4376, !tbaa !1252
  %cmp99 = icmp eq %struct._object* %93, null, !dbg !4378
  br i1 %cmp99, label %if.then.101, label %if.end.102, !dbg !4379

if.then.101:                                      ; preds = %if.end.97
  %94 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4380, !tbaa !1252
  call void @PyErr_SetString(%struct._object* %94, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0)), !dbg !4382
  br label %error, !dbg !4383

if.end.102:                                       ; preds = %if.end.97
  %95 = load %struct._object*, %struct._object** %decompress, align 8, !dbg !4384, !tbaa !1252
  %96 = load %struct._object*, %struct._object** %raw_data, align 8, !dbg !4385, !tbaa !1252
  %call103 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), %struct._object* %96, i32 -15), !dbg !4386
  store %struct._object* %call103, %struct._object** %data, align 8, !dbg !4387, !tbaa !1252
  br label %do.body.104, !dbg !4388

do.body.104:                                      ; preds = %if.end.102
  %97 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !4389
  call void @llvm.lifetime.start(i64 8, i8* %97) #1, !dbg !4389
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp105, metadata !814, metadata !1222), !dbg !4391
  %98 = load %struct._object*, %struct._object** %decompress, align 8, !dbg !4392, !tbaa !1252
  store %struct._object* %98, %struct._object** %_py_decref_tmp105, align 8, !dbg !4391, !tbaa !1252
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !4393, !tbaa !1252
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %99, i32 0, i32 0, !dbg !4395
  %100 = load i64, i64* %ob_refcnt106, align 8, !dbg !4396, !tbaa !1270
  %dec107 = add i64 %100, -1, !dbg !4396
  store i64 %dec107, i64* %ob_refcnt106, align 8, !dbg !4396, !tbaa !1270
  %cmp108 = icmp ne i64 %dec107, 0, !dbg !4397
  br i1 %cmp108, label %if.then.110, label %if.else.111, !dbg !4398

if.then.110:                                      ; preds = %do.body.104
  br label %if.end.114, !dbg !4399

if.else.111:                                      ; preds = %do.body.104
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !4401, !tbaa !1252
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 1, !dbg !4403
  %102 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8, !dbg !4403, !tbaa !1338
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %102, i32 0, i32 4, !dbg !4404
  %103 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8, !dbg !4404, !tbaa !1340
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8, !dbg !4405, !tbaa !1252
  call void %103(%struct._object* %104), !dbg !4406
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  %105 = bitcast %struct._object** %_py_decref_tmp105 to i8*, !dbg !4407
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !4407
  br label %do.cond.115, !dbg !4409

do.cond.115:                                      ; preds = %if.end.114
  br label %do.end.116, !dbg !4410

do.end.116:                                       ; preds = %do.cond.115
  br label %error, !dbg !4412

error:                                            ; preds = %do.end.116, %if.then.101
  br label %do.body.117, !dbg !4414

do.body.117:                                      ; preds = %error
  %106 = bitcast %struct._object** %_py_decref_tmp118 to i8*, !dbg !4415
  call void @llvm.lifetime.start(i64 8, i8* %106) #1, !dbg !4415
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp118, metadata !816, metadata !1222), !dbg !4417
  %107 = load %struct._object*, %struct._object** %raw_data, align 8, !dbg !4418, !tbaa !1252
  store %struct._object* %107, %struct._object** %_py_decref_tmp118, align 8, !dbg !4417, !tbaa !1252
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !4419, !tbaa !1252
  %ob_refcnt119 = getelementptr inbounds %struct._object, %struct._object* %108, i32 0, i32 0, !dbg !4421
  %109 = load i64, i64* %ob_refcnt119, align 8, !dbg !4422, !tbaa !1270
  %dec120 = add i64 %109, -1, !dbg !4422
  store i64 %dec120, i64* %ob_refcnt119, align 8, !dbg !4422, !tbaa !1270
  %cmp121 = icmp ne i64 %dec120, 0, !dbg !4423
  br i1 %cmp121, label %if.then.123, label %if.else.124, !dbg !4424

if.then.123:                                      ; preds = %do.body.117
  br label %if.end.127, !dbg !4425

if.else.124:                                      ; preds = %do.body.117
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !4427, !tbaa !1252
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 1, !dbg !4429
  %111 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8, !dbg !4429, !tbaa !1338
  %tp_dealloc126 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %111, i32 0, i32 4, !dbg !4430
  %112 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc126, align 8, !dbg !4430, !tbaa !1340
  %113 = load %struct._object*, %struct._object** %_py_decref_tmp118, align 8, !dbg !4431, !tbaa !1252
  call void %112(%struct._object* %113), !dbg !4432
  br label %if.end.127

if.end.127:                                       ; preds = %if.else.124, %if.then.123
  %114 = bitcast %struct._object** %_py_decref_tmp118 to i8*, !dbg !4433
  call void @llvm.lifetime.end(i64 8, i8* %114) #1, !dbg !4433
  br label %do.cond.128, !dbg !4434

do.cond.128:                                      ; preds = %if.end.127
  br label %do.end.129, !dbg !4435

do.end.129:                                       ; preds = %do.cond.128
  %115 = load %struct._object*, %struct._object** %data, align 8, !dbg !4437, !tbaa !1252
  store %struct._object* %115, %struct._object** %retval, !dbg !4438
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4438

cleanup:                                          ; preds = %do.end.129, %do.end.96, %do.end, %if.else, %if.then.51, %if.then.37, %if.then.27, %if.end.22, %if.then.11, %if.end.8, %if.then
  %116 = bitcast i64* %crc to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %116) #1, !dbg !4439
  %117 = bitcast i64* %date to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %117) #1, !dbg !4439
  %118 = bitcast i64* %time to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %118) #1, !dbg !4439
  %119 = bitcast i64* %bytes_size to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %119) #1, !dbg !4439
  %120 = bitcast i64* %file_offset to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %120) #1, !dbg !4439
  %121 = bitcast i64* %file_size to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %121) #1, !dbg !4439
  %122 = bitcast i64* %data_size to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %122) #1, !dbg !4439
  %123 = bitcast i64* %compress to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %123) #1, !dbg !4439
  %124 = bitcast %struct._object** %datapath to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %124) #1, !dbg !4439
  %125 = bitcast i64* %l to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %125) #1, !dbg !4439
  %126 = bitcast i64* %bytes_read to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %126) #1, !dbg !4439
  %127 = bitcast i32* %err to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 4, i8* %127) #1, !dbg !4439
  %128 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %128) #1, !dbg !4439
  %129 = bitcast i8** %buf to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %129) #1, !dbg !4439
  %130 = bitcast %struct._object** %decompress to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %130) #1, !dbg !4439
  %131 = bitcast %struct._object** %data to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %131) #1, !dbg !4439
  %132 = bitcast %struct._object** %raw_data to i8*, !dbg !4439
  call void @llvm.lifetime.end(i64 8, i8* %132) #1, !dbg !4439
  %133 = load %struct._object*, %struct._object** %retval, !dbg !4439
  ret %struct._object* %133, !dbg !4439
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @unmarshal_code(%struct._object* %pathname, %struct._object* %data, i64 %mtime) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pathname.addr = alloca %struct._object*, align 8
  %data.addr = alloca %struct._object*, align 8
  %mtime.addr = alloca i64, align 8
  %code = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %size = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %pathname, %struct._object** %pathname.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %pathname.addr, metadata !830, metadata !1222), !dbg !4440
  store %struct._object* %data, %struct._object** %data.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %data.addr, metadata !831, metadata !1222), !dbg !4441
  store i64 %mtime, i64* %mtime.addr, align 8, !tbaa !1558
  call void @llvm.dbg.declare(metadata i64* %mtime.addr, metadata !832, metadata !1222), !dbg !4442
  %0 = bitcast %struct._object** %code to i8*, !dbg !4443
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4443
  call void @llvm.dbg.declare(metadata %struct._object** %code, metadata !833, metadata !1222), !dbg !4444
  %1 = bitcast i8** %buf to i8*, !dbg !4445
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4445
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !834, metadata !1222), !dbg !4446
  %2 = load %struct._object*, %struct._object** %data.addr, align 8, !dbg !4447, !tbaa !1252
  %call = call i8* @PyBytes_AsString(%struct._object* %2), !dbg !4448
  store i8* %call, i8** %buf, align 8, !dbg !4446, !tbaa !1252
  %3 = bitcast i64* %size to i8*, !dbg !4449
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4449
  call void @llvm.dbg.declare(metadata i64* %size, metadata !835, metadata !1222), !dbg !4450
  %4 = load %struct._object*, %struct._object** %data.addr, align 8, !dbg !4451, !tbaa !1252
  %call1 = call i64 @PyBytes_Size(%struct._object* %4), !dbg !4452
  store i64 %call1, i64* %size, align 8, !dbg !4450, !tbaa !1558
  %5 = load i64, i64* %size, align 8, !dbg !4453, !tbaa !1558
  %cmp = icmp sle i64 %5, 9, !dbg !4455
  br i1 %cmp, label %if.then, label %if.end, !dbg !4456

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4457, !tbaa !1252
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0)), !dbg !4459
  store %struct._object* null, %struct._object** %retval, !dbg !4460
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4460

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %buf, align 8, !dbg !4461, !tbaa !1252
  %call2 = call i64 @get_long(i8* %7), !dbg !4463
  %call3 = call i64 @PyImport_GetMagicNumber(), !dbg !4464
  %cmp4 = icmp ne i64 %call2, %call3, !dbg !4465
  br i1 %cmp4, label %if.then.5, label %if.end.8, !dbg !4466

if.then.5:                                        ; preds = %if.end
  %8 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !4467, !tbaa !1236
  %tobool = icmp ne i32 %8, 0, !dbg !4467
  br i1 %tobool, label %if.then.6, label %if.end.7, !dbg !4470

if.then.6:                                        ; preds = %if.then.5
  %9 = load %struct._object*, %struct._object** %pathname.addr, align 8, !dbg !4471, !tbaa !1252
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), %struct._object* %9), !dbg !4472
  br label %if.end.7, !dbg !4472

if.end.7:                                         ; preds = %if.then.6, %if.then.5
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4473, !tbaa !1270
  %inc = add i64 %10, 1, !dbg !4473
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4473, !tbaa !1270
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4474
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4474

if.end.8:                                         ; preds = %if.end
  %11 = load i64, i64* %mtime.addr, align 8, !dbg !4475, !tbaa !1558
  %cmp9 = icmp ne i64 %11, 0, !dbg !4477
  br i1 %cmp9, label %land.lhs.true, label %if.end.18, !dbg !4478

land.lhs.true:                                    ; preds = %if.end.8
  %12 = load i8*, i8** %buf, align 8, !dbg !4479, !tbaa !1252
  %add.ptr = getelementptr i8, i8* %12, i64 4, !dbg !4481
  %call10 = call i64 @get_long(i8* %add.ptr), !dbg !4482
  %13 = load i64, i64* %mtime.addr, align 8, !dbg !4483, !tbaa !1558
  %call11 = call i32 @eq_mtime(i64 %call10, i64 %13), !dbg !4484
  %tobool12 = icmp ne i32 %call11, 0, !dbg !4484
  br i1 %tobool12, label %if.end.18, label %if.then.13, !dbg !4485

if.then.13:                                       ; preds = %land.lhs.true
  %14 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !4486, !tbaa !1236
  %tobool14 = icmp ne i32 %14, 0, !dbg !4486
  br i1 %tobool14, label %if.then.15, label %if.end.16, !dbg !4489

if.then.15:                                       ; preds = %if.then.13
  %15 = load %struct._object*, %struct._object** %pathname.addr, align 8, !dbg !4490, !tbaa !1252
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), %struct._object* %15), !dbg !4491
  br label %if.end.16, !dbg !4491

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  %16 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4492, !tbaa !1270
  %inc17 = add i64 %16, 1, !dbg !4492
  store i64 %inc17, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !4492, !tbaa !1270
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !4493
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4493

if.end.18:                                        ; preds = %land.lhs.true, %if.end.8
  %17 = load i8*, i8** %buf, align 8, !dbg !4494, !tbaa !1252
  %add.ptr19 = getelementptr i8, i8* %17, i64 12, !dbg !4495
  %18 = load i64, i64* %size, align 8, !dbg !4496, !tbaa !1558
  %sub = sub i64 %18, 12, !dbg !4497
  %call20 = call %struct._object* @PyMarshal_ReadObjectFromString(i8* %add.ptr19, i64 %sub), !dbg !4498
  store %struct._object* %call20, %struct._object** %code, align 8, !dbg !4499, !tbaa !1252
  %19 = load %struct._object*, %struct._object** %code, align 8, !dbg !4500, !tbaa !1252
  %cmp21 = icmp eq %struct._object* %19, null, !dbg !4502
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !4503

if.then.22:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval, !dbg !4504
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4504

if.end.23:                                        ; preds = %if.end.18
  %20 = load %struct._object*, %struct._object** %code, align 8, !dbg !4505, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1, !dbg !4506
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4506, !tbaa !1338
  %cmp24 = icmp eq %struct._typeobject* %21, @PyCode_Type, !dbg !4507
  br i1 %cmp24, label %if.end.31, label %if.then.25, !dbg !4508

if.then.25:                                       ; preds = %if.end.23
  br label %do.body, !dbg !4509

do.body:                                          ; preds = %if.then.25
  %22 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4510
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !4510
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !836, metadata !1222), !dbg !4512
  %23 = load %struct._object*, %struct._object** %code, align 8, !dbg !4513, !tbaa !1252
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8, !dbg !4512, !tbaa !1252
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4514, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0, !dbg !4516
  %25 = load i64, i64* %ob_refcnt, align 8, !dbg !4517, !tbaa !1270
  %dec = add i64 %25, -1, !dbg !4517
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4517, !tbaa !1270
  %cmp26 = icmp ne i64 %dec, 0, !dbg !4518
  br i1 %cmp26, label %if.then.27, label %if.else, !dbg !4519

if.then.27:                                       ; preds = %do.body
  br label %if.end.29, !dbg !4520

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4522, !tbaa !1252
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1, !dbg !4524
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8, !dbg !4524, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4, !dbg !4525
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4525, !tbaa !1340
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4526, !tbaa !1252
  call void %28(%struct._object* %29), !dbg !4527
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  %30 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4528
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !4528
  br label %do.cond, !dbg !4530

do.cond:                                          ; preds = %if.end.29
  br label %do.end, !dbg !4531

do.end:                                           ; preds = %do.cond
  %31 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !4533, !tbaa !1252
  %32 = load %struct._object*, %struct._object** %pathname.addr, align 8, !dbg !4534, !tbaa !1252
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %31, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i32 0, i32 0), %struct._object* %32), !dbg !4535
  store %struct._object* null, %struct._object** %retval, !dbg !4536
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4536

if.end.31:                                        ; preds = %if.end.23
  %33 = load %struct._object*, %struct._object** %code, align 8, !dbg !4537, !tbaa !1252
  store %struct._object* %33, %struct._object** %retval, !dbg !4538
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4538

cleanup:                                          ; preds = %if.end.31, %do.end, %if.then.22, %if.end.16, %if.end.7, %if.then
  %34 = bitcast i64* %size to i8*, !dbg !4539
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !4539
  %35 = bitcast i8** %buf to i8*, !dbg !4539
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !4539
  %36 = bitcast %struct._object** %code to i8*, !dbg !4539
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !4539
  %37 = load %struct._object*, %struct._object** %retval, !dbg !4539
  ret %struct._object* %37, !dbg !4539
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @compile_source(%struct._object* %pathname, %struct._object* %source) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %pathname.addr = alloca %struct._object*, align 8
  %source.addr = alloca %struct._object*, align 8
  %code = alloca %struct._object*, align 8
  %fixed_source = alloca %struct._object*, align 8
  %pathbytes = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store %struct._object* %pathname, %struct._object** %pathname.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %pathname.addr, metadata !855, metadata !1222), !dbg !4540
  store %struct._object* %source, %struct._object** %source.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %source.addr, metadata !856, metadata !1222), !dbg !4541
  %0 = bitcast %struct._object** %code to i8*, !dbg !4542
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4542
  call void @llvm.dbg.declare(metadata %struct._object** %code, metadata !857, metadata !1222), !dbg !4543
  %1 = bitcast %struct._object** %fixed_source to i8*, !dbg !4542
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4542
  call void @llvm.dbg.declare(metadata %struct._object** %fixed_source, metadata !858, metadata !1222), !dbg !4544
  %2 = bitcast %struct._object** %pathbytes to i8*, !dbg !4542
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4542
  call void @llvm.dbg.declare(metadata %struct._object** %pathbytes, metadata !859, metadata !1222), !dbg !4545
  %3 = load %struct._object*, %struct._object** %pathname.addr, align 8, !dbg !4546, !tbaa !1252
  %call = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %3), !dbg !4547
  store %struct._object* %call, %struct._object** %pathbytes, align 8, !dbg !4548, !tbaa !1252
  %4 = load %struct._object*, %struct._object** %pathbytes, align 8, !dbg !4549, !tbaa !1252
  %cmp = icmp eq %struct._object* %4, null, !dbg !4551
  br i1 %cmp, label %if.then, label %if.end, !dbg !4552

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4553
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4553

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %source.addr, align 8, !dbg !4554, !tbaa !1252
  %call1 = call %struct._object* @normalize_line_endings(%struct._object* %5), !dbg !4555
  store %struct._object* %call1, %struct._object** %fixed_source, align 8, !dbg !4556, !tbaa !1252
  %6 = load %struct._object*, %struct._object** %fixed_source, align 8, !dbg !4557, !tbaa !1252
  %cmp2 = icmp eq %struct._object* %6, null, !dbg !4558
  br i1 %cmp2, label %if.then.3, label %if.end.7, !dbg !4559

if.then.3:                                        ; preds = %if.end
  br label %do.body, !dbg !4560

do.body:                                          ; preds = %if.then.3
  %7 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4561
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !4561
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !860, metadata !1222), !dbg !4563
  %8 = load %struct._object*, %struct._object** %pathbytes, align 8, !dbg !4564, !tbaa !1252
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8, !dbg !4563, !tbaa !1252
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4565, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !4567
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !4568, !tbaa !1270
  %dec = add i64 %10, -1, !dbg !4568
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4568, !tbaa !1270
  %cmp4 = icmp ne i64 %dec, 0, !dbg !4569
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !4570

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !4571

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4573, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1, !dbg !4575
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4575, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4, !dbg !4576
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4576, !tbaa !1340
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4577, !tbaa !1252
  call void %13(%struct._object* %14), !dbg !4578
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %15 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4579
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4579
  br label %do.cond, !dbg !4581

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !4582

do.end:                                           ; preds = %do.cond
  store %struct._object* null, %struct._object** %retval, !dbg !4584
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4584

if.end.7:                                         ; preds = %if.end
  %16 = load %struct._object*, %struct._object** %fixed_source, align 8, !dbg !4585, !tbaa !1252
  %call8 = call i8* @PyBytes_AsString(%struct._object* %16), !dbg !4586
  %17 = load %struct._object*, %struct._object** %pathbytes, align 8, !dbg !4587, !tbaa !1252
  %call9 = call i8* @PyBytes_AsString(%struct._object* %17), !dbg !4588
  %call10 = call %struct._object* @Py_CompileStringExFlags(i8* %call8, i8* %call9, i32 257, %struct.PyCompilerFlags* null, i32 -1), !dbg !4589
  store %struct._object* %call10, %struct._object** %code, align 8, !dbg !4590, !tbaa !1252
  br label %do.body.11, !dbg !4591

do.body.11:                                       ; preds = %if.end.7
  %18 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !4592
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !4592
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp12, metadata !864, metadata !1222), !dbg !4594
  %19 = load %struct._object*, %struct._object** %pathbytes, align 8, !dbg !4595, !tbaa !1252
  store %struct._object* %19, %struct._object** %_py_decref_tmp12, align 8, !dbg !4594, !tbaa !1252
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !4596, !tbaa !1252
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !4598
  %21 = load i64, i64* %ob_refcnt13, align 8, !dbg !4599, !tbaa !1270
  %dec14 = add i64 %21, -1, !dbg !4599
  store i64 %dec14, i64* %ob_refcnt13, align 8, !dbg !4599, !tbaa !1270
  %cmp15 = icmp ne i64 %dec14, 0, !dbg !4600
  br i1 %cmp15, label %if.then.16, label %if.else.17, !dbg !4601

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20, !dbg !4602

if.else.17:                                       ; preds = %do.body.11
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !4604, !tbaa !1252
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !4606
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8, !dbg !4606, !tbaa !1338
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !4607
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8, !dbg !4607, !tbaa !1340
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8, !dbg !4608, !tbaa !1252
  call void %24(%struct._object* %25), !dbg !4609
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  %26 = bitcast %struct._object** %_py_decref_tmp12 to i8*, !dbg !4610
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !4610
  br label %do.cond.21, !dbg !4612

do.cond.21:                                       ; preds = %if.end.20
  br label %do.end.22, !dbg !4613

do.end.22:                                        ; preds = %do.cond.21
  br label %do.body.23, !dbg !4615

do.body.23:                                       ; preds = %do.end.22
  %27 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !4616
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !4616
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp24, metadata !866, metadata !1222), !dbg !4618
  %28 = load %struct._object*, %struct._object** %fixed_source, align 8, !dbg !4619, !tbaa !1252
  store %struct._object* %28, %struct._object** %_py_decref_tmp24, align 8, !dbg !4618, !tbaa !1252
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !4620, !tbaa !1252
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !4622
  %30 = load i64, i64* %ob_refcnt25, align 8, !dbg !4623, !tbaa !1270
  %dec26 = add i64 %30, -1, !dbg !4623
  store i64 %dec26, i64* %ob_refcnt25, align 8, !dbg !4623, !tbaa !1270
  %cmp27 = icmp ne i64 %dec26, 0, !dbg !4624
  br i1 %cmp27, label %if.then.28, label %if.else.29, !dbg !4625

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32, !dbg !4626

if.else.29:                                       ; preds = %do.body.23
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !4628, !tbaa !1252
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !4630
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8, !dbg !4630, !tbaa !1338
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !4631
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8, !dbg !4631, !tbaa !1340
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8, !dbg !4632, !tbaa !1252
  call void %33(%struct._object* %34), !dbg !4633
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  %35 = bitcast %struct._object** %_py_decref_tmp24 to i8*, !dbg !4634
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !4634
  br label %do.cond.33, !dbg !4635

do.cond.33:                                       ; preds = %if.end.32
  br label %do.end.34, !dbg !4636

do.end.34:                                        ; preds = %do.cond.33
  %36 = load %struct._object*, %struct._object** %code, align 8, !dbg !4638, !tbaa !1252
  store %struct._object* %36, %struct._object** %retval, !dbg !4639
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4639

cleanup:                                          ; preds = %do.end.34, %do.end, %if.then
  %37 = bitcast %struct._object** %pathbytes to i8*, !dbg !4640
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !4640
  %38 = bitcast %struct._object** %fixed_source to i8*, !dbg !4640
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !4640
  %39 = bitcast %struct._object** %code to i8*, !dbg !4640
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !4640
  %40 = load %struct._object*, %struct._object** %retval, !dbg !4640
  ret %struct._object* %40, !dbg !4640
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #3

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE*) #3

declare i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE*) #3

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #3

declare i8* @PyBytes_AsString(%struct._object*) #3

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_decompress_func() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %zlib = alloca %struct._object*, align 8
  %decompress = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast %struct._object** %zlib to i8*, !dbg !4641
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4641
  call void @llvm.dbg.declare(metadata %struct._object** %zlib, metadata !820, metadata !1222), !dbg !4642
  %1 = bitcast %struct._object** %decompress to i8*, !dbg !4643
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4643
  call void @llvm.dbg.declare(metadata %struct._object** %decompress, metadata !821, metadata !1222), !dbg !4644
  %2 = load i32, i32* @get_decompress_func.importing_zlib, align 4, !dbg !4645, !tbaa !1236
  %cmp = icmp ne i32 %2, 0, !dbg !4647
  br i1 %cmp, label %if.then, label %if.end, !dbg !4648

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !4649
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4649

if.end:                                           ; preds = %entry
  store i32 1, i32* @get_decompress_func.importing_zlib, align 4, !dbg !4650, !tbaa !1236
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0)), !dbg !4651
  store %struct._object* %call, %struct._object** %zlib, align 8, !dbg !4652, !tbaa !1252
  store i32 0, i32* @get_decompress_func.importing_zlib, align 4, !dbg !4653, !tbaa !1236
  %3 = load %struct._object*, %struct._object** %zlib, align 8, !dbg !4654, !tbaa !1252
  %cmp1 = icmp ne %struct._object* %3, null, !dbg !4655
  br i1 %cmp1, label %if.then.2, label %if.else.7, !dbg !4656

if.then.2:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %zlib, align 8, !dbg !4657, !tbaa !1252
  %call3 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %4, %struct._Py_Identifier* @get_decompress_func.PyId_decompress), !dbg !4658
  store %struct._object* %call3, %struct._object** %decompress, align 8, !dbg !4659, !tbaa !1252
  br label %do.body, !dbg !4660

do.body:                                          ; preds = %if.then.2
  %5 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4661
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !4661
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !822, metadata !1222), !dbg !4663
  %6 = load %struct._object*, %struct._object** %zlib, align 8, !dbg !4664, !tbaa !1252
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8, !dbg !4663, !tbaa !1252
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4665, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0, !dbg !4667
  %8 = load i64, i64* %ob_refcnt, align 8, !dbg !4668, !tbaa !1270
  %dec = add i64 %8, -1, !dbg !4668
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !4668, !tbaa !1270
  %cmp4 = icmp ne i64 %dec, 0, !dbg !4669
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !4670

if.then.5:                                        ; preds = %do.body
  br label %if.end.6, !dbg !4671

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4673, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !4675
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !4675, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4, !dbg !4676
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !4676, !tbaa !1340
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !4677, !tbaa !1252
  call void %11(%struct._object* %12), !dbg !4678
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %13 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !4679
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !4679
  br label %do.cond, !dbg !4681

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !4682

do.end:                                           ; preds = %do.cond
  br label %if.end.8, !dbg !4684

if.else.7:                                        ; preds = %if.end
  call void @PyErr_Clear(), !dbg !4685
  store %struct._object* null, %struct._object** %decompress, align 8, !dbg !4687, !tbaa !1252
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %do.end
  %14 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !4688, !tbaa !1236
  %tobool = icmp ne i32 %14, 0, !dbg !4688
  br i1 %tobool, label %if.then.9, label %if.end.11, !dbg !4690

if.then.9:                                        ; preds = %if.end.8
  %15 = load %struct._object*, %struct._object** %zlib, align 8, !dbg !4691, !tbaa !1252
  %cmp10 = icmp ne %struct._object* %15, null, !dbg !4692
  %cond = select i1 %cmp10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0), !dbg !4691
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* %cond), !dbg !4693
  br label %if.end.11, !dbg !4693

if.end.11:                                        ; preds = %if.then.9, %if.end.8
  %16 = load %struct._object*, %struct._object** %decompress, align 8, !dbg !4694, !tbaa !1252
  store %struct._object* %16, %struct._object** %retval, !dbg !4695
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4695

cleanup:                                          ; preds = %if.end.11, %if.then
  %17 = bitcast %struct._object** %decompress to i8*, !dbg !4696
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !4696
  %18 = bitcast %struct._object** %zlib to i8*, !dbg !4696
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !4696
  %19 = load %struct._object*, %struct._object** %retval, !dbg !4696
  ret %struct._object* %19, !dbg !4696
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #3

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #3

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #3

declare void @PyErr_Clear() #3

declare void @PySys_WriteStderr(i8*, ...) #3

declare i64 @PyBytes_Size(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal i64 @get_long(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %x = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !844, metadata !1222), !dbg !4697
  %0 = bitcast i64* %x to i8*, !dbg !4698
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4698
  call void @llvm.dbg.declare(metadata i64* %x, metadata !845, metadata !1222), !dbg !4699
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !4700, !tbaa !1252
  %arrayidx = getelementptr i8, i8* %1, i64 0, !dbg !4700
  %2 = load i8, i8* %arrayidx, align 1, !dbg !4700, !tbaa !1230
  %conv = zext i8 %2 to i64, !dbg !4700
  store i64 %conv, i64* %x, align 8, !dbg !4701, !tbaa !1558
  %3 = load i8*, i8** %buf.addr, align 8, !dbg !4702, !tbaa !1252
  %arrayidx1 = getelementptr i8, i8* %3, i64 1, !dbg !4702
  %4 = load i8, i8* %arrayidx1, align 1, !dbg !4702, !tbaa !1230
  %conv2 = zext i8 %4 to i64, !dbg !4703
  %shl = shl i64 %conv2, 8, !dbg !4704
  %5 = load i64, i64* %x, align 8, !dbg !4705, !tbaa !1558
  %or = or i64 %5, %shl, !dbg !4705
  store i64 %or, i64* %x, align 8, !dbg !4705, !tbaa !1558
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !4706, !tbaa !1252
  %arrayidx3 = getelementptr i8, i8* %6, i64 2, !dbg !4706
  %7 = load i8, i8* %arrayidx3, align 1, !dbg !4706, !tbaa !1230
  %conv4 = zext i8 %7 to i64, !dbg !4707
  %shl5 = shl i64 %conv4, 16, !dbg !4708
  %8 = load i64, i64* %x, align 8, !dbg !4709, !tbaa !1558
  %or6 = or i64 %8, %shl5, !dbg !4709
  store i64 %or6, i64* %x, align 8, !dbg !4709, !tbaa !1558
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !4710, !tbaa !1252
  %arrayidx7 = getelementptr i8, i8* %9, i64 3, !dbg !4710
  %10 = load i8, i8* %arrayidx7, align 1, !dbg !4710, !tbaa !1230
  %conv8 = zext i8 %10 to i64, !dbg !4711
  %shl9 = shl i64 %conv8, 24, !dbg !4712
  %11 = load i64, i64* %x, align 8, !dbg !4713, !tbaa !1558
  %or10 = or i64 %11, %shl9, !dbg !4713
  store i64 %or10, i64* %x, align 8, !dbg !4713, !tbaa !1558
  %12 = load i64, i64* %x, align 8, !dbg !4714, !tbaa !1558
  %and = and i64 %12, 2147483648, !dbg !4715
  %sub = sub i64 0, %and, !dbg !4716
  %13 = load i64, i64* %x, align 8, !dbg !4717, !tbaa !1558
  %or11 = or i64 %13, %sub, !dbg !4717
  store i64 %or11, i64* %x, align 8, !dbg !4717, !tbaa !1558
  %14 = load i64, i64* %x, align 8, !dbg !4718, !tbaa !1558
  %15 = bitcast i64* %x to i8*, !dbg !4719
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !4719
  ret i64 %14, !dbg !4720
}

declare i64 @PyImport_GetMagicNumber() #3

; Function Attrs: nounwind uwtable
define internal i32 @eq_mtime(i64 %t1, i64 %t2) #0 {
entry:
  %t1.addr = alloca i64, align 8
  %t2.addr = alloca i64, align 8
  %d = alloca i64, align 8
  store i64 %t1, i64* %t1.addr, align 8, !tbaa !1558
  call void @llvm.dbg.declare(metadata i64* %t1.addr, metadata !850, metadata !1222), !dbg !4721
  store i64 %t2, i64* %t2.addr, align 8, !tbaa !1558
  call void @llvm.dbg.declare(metadata i64* %t2.addr, metadata !851, metadata !1222), !dbg !4722
  %0 = bitcast i64* %d to i8*, !dbg !4723
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4723
  call void @llvm.dbg.declare(metadata i64* %d, metadata !852, metadata !1222), !dbg !4724
  %1 = load i64, i64* %t1.addr, align 8, !dbg !4725, !tbaa !1558
  %2 = load i64, i64* %t2.addr, align 8, !dbg !4726, !tbaa !1558
  %sub = sub i64 %1, %2, !dbg !4727
  store i64 %sub, i64* %d, align 8, !dbg !4724, !tbaa !1558
  %3 = load i64, i64* %d, align 8, !dbg !4728, !tbaa !1558
  %cmp = icmp slt i64 %3, 0, !dbg !4730
  br i1 %cmp, label %if.then, label %if.end, !dbg !4731

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %d, align 8, !dbg !4732, !tbaa !1558
  %sub1 = sub i64 0, %4, !dbg !4733
  store i64 %sub1, i64* %d, align 8, !dbg !4734, !tbaa !1558
  br label %if.end, !dbg !4735

if.end:                                           ; preds = %if.then, %entry
  %5 = load i64, i64* %d, align 8, !dbg !4736, !tbaa !1558
  %cmp2 = icmp sle i64 %5, 1, !dbg !4737
  %conv = zext i1 %cmp2 to i32, !dbg !4737
  %6 = bitcast i64* %d to i8*, !dbg !4738
  call void @llvm.lifetime.end(i64 8, i8* %6) #1, !dbg !4738
  ret i32 %conv, !dbg !4739
}

declare %struct._object* @PyMarshal_ReadObjectFromString(i8*, i64) #3

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @normalize_line_endings(%struct._object* %source) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %source.addr = alloca %struct._object*, align 8
  %buf = alloca i8*, align 8
  %q = alloca i8*, align 8
  %p = alloca i8*, align 8
  %fixed_source = alloca %struct._object*, align 8
  %len = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct._object* %source, %struct._object** %source.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %source.addr, metadata !870, metadata !1222), !dbg !4740
  %0 = bitcast i8** %buf to i8*, !dbg !4741
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4741
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !871, metadata !1222), !dbg !4742
  %1 = bitcast i8** %q to i8*, !dbg !4741
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4741
  call void @llvm.dbg.declare(metadata i8** %q, metadata !872, metadata !1222), !dbg !4743
  %2 = bitcast i8** %p to i8*, !dbg !4741
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !4741
  call void @llvm.dbg.declare(metadata i8** %p, metadata !873, metadata !1222), !dbg !4744
  %3 = bitcast %struct._object** %fixed_source to i8*, !dbg !4745
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !4745
  call void @llvm.dbg.declare(metadata %struct._object** %fixed_source, metadata !874, metadata !1222), !dbg !4746
  %4 = bitcast i32* %len to i8*, !dbg !4747
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !4747
  call void @llvm.dbg.declare(metadata i32* %len, metadata !875, metadata !1222), !dbg !4748
  store i32 0, i32* %len, align 4, !dbg !4748, !tbaa !1236
  %5 = load %struct._object*, %struct._object** %source.addr, align 8, !dbg !4749, !tbaa !1252
  %call = call i8* @PyBytes_AsString(%struct._object* %5), !dbg !4750
  store i8* %call, i8** %p, align 8, !dbg !4751, !tbaa !1252
  %6 = load i8*, i8** %p, align 8, !dbg !4752, !tbaa !1252
  %cmp = icmp eq i8* %6, null, !dbg !4754
  br i1 %cmp, label %if.then, label %if.end, !dbg !4755

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i64 2), !dbg !4756
  store %struct._object* %call1, %struct._object** %retval, !dbg !4758
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4758

if.end:                                           ; preds = %entry
  %7 = load %struct._object*, %struct._object** %source.addr, align 8, !dbg !4759, !tbaa !1252
  %call2 = call i64 @PyBytes_Size(%struct._object* %7), !dbg !4760
  %add = add i64 %call2, 2, !dbg !4761
  %call3 = call i8* @PyMem_Malloc(i64 %add), !dbg !4762
  store i8* %call3, i8** %buf, align 8, !dbg !4763, !tbaa !1252
  %8 = load i8*, i8** %buf, align 8, !dbg !4764, !tbaa !1252
  %cmp4 = icmp eq i8* %8, null, !dbg !4766
  br i1 %cmp4, label %if.then.5, label %if.end.6, !dbg !4767

if.then.5:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8, !dbg !4768, !tbaa !1252
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.47, i32 0, i32 0)), !dbg !4770
  store %struct._object* null, %struct._object** %retval, !dbg !4771
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4771

if.end.6:                                         ; preds = %if.end
  %10 = load i8*, i8** %buf, align 8, !dbg !4772, !tbaa !1252
  store i8* %10, i8** %q, align 8, !dbg !4774, !tbaa !1252
  br label %for.cond, !dbg !4775

for.cond:                                         ; preds = %for.inc, %if.end.6
  %11 = load i8*, i8** %p, align 8, !dbg !4776, !tbaa !1252
  %12 = load i8, i8* %11, align 1, !dbg !4780, !tbaa !1230
  %conv = sext i8 %12 to i32, !dbg !4780
  %cmp7 = icmp ne i32 %conv, 0, !dbg !4781
  br i1 %cmp7, label %for.body, label %for.end, !dbg !4782

for.body:                                         ; preds = %for.cond
  %13 = load i8*, i8** %p, align 8, !dbg !4783, !tbaa !1252
  %14 = load i8, i8* %13, align 1, !dbg !4786, !tbaa !1230
  %conv9 = sext i8 %14 to i32, !dbg !4786
  %cmp10 = icmp eq i32 %conv9, 13, !dbg !4787
  br i1 %cmp10, label %if.then.12, label %if.else, !dbg !4788

if.then.12:                                       ; preds = %for.body
  %15 = load i8*, i8** %q, align 8, !dbg !4789, !tbaa !1252
  %incdec.ptr = getelementptr i8, i8* %15, i32 1, !dbg !4789
  store i8* %incdec.ptr, i8** %q, align 8, !dbg !4789, !tbaa !1252
  store i8 10, i8* %15, align 1, !dbg !4791, !tbaa !1230
  %16 = load i8*, i8** %p, align 8, !dbg !4792, !tbaa !1252
  %add.ptr = getelementptr i8, i8* %16, i64 1, !dbg !4794
  %17 = load i8, i8* %add.ptr, align 1, !dbg !4795, !tbaa !1230
  %conv13 = sext i8 %17 to i32, !dbg !4795
  %cmp14 = icmp eq i32 %conv13, 10, !dbg !4796
  br i1 %cmp14, label %if.then.16, label %if.end.18, !dbg !4797

if.then.16:                                       ; preds = %if.then.12
  %18 = load i8*, i8** %p, align 8, !dbg !4798, !tbaa !1252
  %incdec.ptr17 = getelementptr i8, i8* %18, i32 1, !dbg !4798
  store i8* %incdec.ptr17, i8** %p, align 8, !dbg !4798, !tbaa !1252
  br label %if.end.18, !dbg !4799

if.end.18:                                        ; preds = %if.then.16, %if.then.12
  br label %if.end.20, !dbg !4800

if.else:                                          ; preds = %for.body
  %19 = load i8*, i8** %p, align 8, !dbg !4801, !tbaa !1252
  %20 = load i8, i8* %19, align 1, !dbg !4802, !tbaa !1230
  %21 = load i8*, i8** %q, align 8, !dbg !4803, !tbaa !1252
  %incdec.ptr19 = getelementptr i8, i8* %21, i32 1, !dbg !4803
  store i8* %incdec.ptr19, i8** %q, align 8, !dbg !4803, !tbaa !1252
  store i8 %20, i8* %21, align 1, !dbg !4804, !tbaa !1230
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.18
  %22 = load i32, i32* %len, align 4, !dbg !4805, !tbaa !1236
  %inc = add i32 %22, 1, !dbg !4805
  store i32 %inc, i32* %len, align 4, !dbg !4805, !tbaa !1236
  br label %for.inc, !dbg !4806

for.inc:                                          ; preds = %if.end.20
  %23 = load i8*, i8** %p, align 8, !dbg !4807, !tbaa !1252
  %incdec.ptr21 = getelementptr i8, i8* %23, i32 1, !dbg !4807
  store i8* %incdec.ptr21, i8** %p, align 8, !dbg !4807, !tbaa !1252
  br label %for.cond, !dbg !4808

for.end:                                          ; preds = %for.cond
  %24 = load i8*, i8** %q, align 8, !dbg !4809, !tbaa !1252
  %incdec.ptr22 = getelementptr i8, i8* %24, i32 1, !dbg !4809
  store i8* %incdec.ptr22, i8** %q, align 8, !dbg !4809, !tbaa !1252
  store i8 10, i8* %24, align 1, !dbg !4810, !tbaa !1230
  %25 = load i8*, i8** %q, align 8, !dbg !4811, !tbaa !1252
  store i8 0, i8* %25, align 1, !dbg !4812, !tbaa !1230
  %26 = load i8*, i8** %buf, align 8, !dbg !4813, !tbaa !1252
  %27 = load i32, i32* %len, align 4, !dbg !4814, !tbaa !1236
  %add23 = add i32 %27, 2, !dbg !4815
  %conv24 = sext i32 %add23 to i64, !dbg !4814
  %call25 = call %struct._object* @PyBytes_FromStringAndSize(i8* %26, i64 %conv24), !dbg !4816
  store %struct._object* %call25, %struct._object** %fixed_source, align 8, !dbg !4817, !tbaa !1252
  %28 = load i8*, i8** %buf, align 8, !dbg !4818, !tbaa !1252
  call void @PyMem_Free(i8* %28), !dbg !4819
  %29 = load %struct._object*, %struct._object** %fixed_source, align 8, !dbg !4820, !tbaa !1252
  store %struct._object* %29, %struct._object** %retval, !dbg !4821
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4821

cleanup:                                          ; preds = %for.end, %if.then.5, %if.then
  %30 = bitcast i32* %len to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 4, i8* %30) #1, !dbg !4822
  %31 = bitcast %struct._object** %fixed_source to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !4822
  %32 = bitcast i8** %p to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !4822
  %33 = bitcast i8** %q to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !4822
  %34 = bitcast i8** %buf to i8*, !dbg !4822
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !4822
  %35 = load %struct._object*, %struct._object** %retval, !dbg !4822
  ret %struct._object* %35, !dbg !4822
}

declare %struct._object* @Py_CompileStringExFlags(i8*, i8*, i32, %struct.PyCompilerFlags*, i32) #3

declare i64 @PyUnicode_Tailmatch(%struct._object*, %struct._object*, i64, i64, i32) #3

declare %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object*, %struct._object*) #3

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #3

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #3

declare i32 @_Py_stat(%struct._object*, %struct.stat*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @read_directory(%struct._object* %archive) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %archive.addr = alloca %struct._object*, align 8
  %files = alloca %struct._object*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %flags = alloca i16, align 2
  %compress = alloca i16, align 2
  %time = alloca i16, align 2
  %date = alloca i16, align 2
  %name_size = alloca i16, align 2
  %crc = alloca i64, align 8
  %data_size = alloca i64, align 8
  %file_size = alloca i64, align 8
  %header_size = alloca i64, align 8
  %file_offset = alloca i64, align 8
  %header_position = alloca i64, align 8
  %header_offset = alloca i64, align 8
  %l = alloca i64, align 8
  %count = alloca i64, align 8
  %i = alloca i64, align 8
  %name = alloca [4101 x i8], align 16
  %dummy = alloca [8 x i8], align 1
  %nameobj = alloca %struct._object*, align 8
  %p = alloca i8*, align 8
  %endof_central_dir = alloca [22 x i8], align 16
  %arc_offset = alloca i64, align 8
  %path = alloca %struct._object*, align 8
  %charset = alloca i8*, align 8
  %bootstrap = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %t = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp170 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp201 = alloca %struct._object*, align 8
  %_py_xdecref_tmp218 = alloca %struct._object*, align 8
  %_py_decref_tmp224 = alloca %struct._object*, align 8
  %_py_xdecref_tmp243 = alloca %struct._object*, align 8
  %_py_decref_tmp249 = alloca %struct._object*, align 8
  %_py_xdecref_tmp266 = alloca %struct._object*, align 8
  %_py_decref_tmp272 = alloca %struct._object*, align 8
  store %struct._object* %archive, %struct._object** %archive.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata %struct._object** %archive.addr, metadata !1026, metadata !1222), !dbg !4823
  %0 = bitcast %struct._object** %files to i8*, !dbg !4824
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !4824
  call void @llvm.dbg.declare(metadata %struct._object** %files, metadata !1027, metadata !1222), !dbg !4825
  store %struct._object* null, %struct._object** %files, align 8, !dbg !4825, !tbaa !1252
  %1 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !4826
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !4826
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %fp, metadata !1028, metadata !1222), !dbg !4827
  %2 = bitcast i16* %flags to i8*, !dbg !4828
  call void @llvm.lifetime.start(i64 2, i8* %2) #1, !dbg !4828
  call void @llvm.dbg.declare(metadata i16* %flags, metadata !1029, metadata !1222), !dbg !4829
  %3 = bitcast i16* %compress to i8*, !dbg !4830
  call void @llvm.lifetime.start(i64 2, i8* %3) #1, !dbg !4830
  call void @llvm.dbg.declare(metadata i16* %compress, metadata !1030, metadata !1222), !dbg !4831
  %4 = bitcast i16* %time to i8*, !dbg !4830
  call void @llvm.lifetime.start(i64 2, i8* %4) #1, !dbg !4830
  call void @llvm.dbg.declare(metadata i16* %time, metadata !1032, metadata !1222), !dbg !4832
  %5 = bitcast i16* %date to i8*, !dbg !4830
  call void @llvm.lifetime.start(i64 2, i8* %5) #1, !dbg !4830
  call void @llvm.dbg.declare(metadata i16* %date, metadata !1033, metadata !1222), !dbg !4833
  %6 = bitcast i16* %name_size to i8*, !dbg !4830
  call void @llvm.lifetime.start(i64 2, i8* %6) #1, !dbg !4830
  call void @llvm.dbg.declare(metadata i16* %name_size, metadata !1034, metadata !1222), !dbg !4834
  %7 = bitcast i64* %crc to i8*, !dbg !4835
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !4835
  call void @llvm.dbg.declare(metadata i64* %crc, metadata !1035, metadata !1222), !dbg !4836
  %8 = bitcast i64* %data_size to i8*, !dbg !4835
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !4835
  call void @llvm.dbg.declare(metadata i64* %data_size, metadata !1036, metadata !1222), !dbg !4837
  %9 = bitcast i64* %file_size to i8*, !dbg !4835
  call void @llvm.lifetime.start(i64 8, i8* %9) #1, !dbg !4835
  call void @llvm.dbg.declare(metadata i64* %file_size, metadata !1037, metadata !1222), !dbg !4838
  %10 = bitcast i64* %header_size to i8*, !dbg !4835
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !4835
  call void @llvm.dbg.declare(metadata i64* %header_size, metadata !1038, metadata !1222), !dbg !4839
  %11 = bitcast i64* %file_offset to i8*, !dbg !4840
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !4840
  call void @llvm.dbg.declare(metadata i64* %file_offset, metadata !1039, metadata !1222), !dbg !4841
  %12 = bitcast i64* %header_position to i8*, !dbg !4840
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !4840
  call void @llvm.dbg.declare(metadata i64* %header_position, metadata !1040, metadata !1222), !dbg !4842
  %13 = bitcast i64* %header_offset to i8*, !dbg !4840
  call void @llvm.lifetime.start(i64 8, i8* %13) #1, !dbg !4840
  call void @llvm.dbg.declare(metadata i64* %header_offset, metadata !1041, metadata !1222), !dbg !4843
  %14 = bitcast i64* %l to i8*, !dbg !4844
  call void @llvm.lifetime.start(i64 8, i8* %14) #1, !dbg !4844
  call void @llvm.dbg.declare(metadata i64* %l, metadata !1042, metadata !1222), !dbg !4845
  %15 = bitcast i64* %count to i8*, !dbg !4844
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !4844
  call void @llvm.dbg.declare(metadata i64* %count, metadata !1043, metadata !1222), !dbg !4846
  %16 = bitcast i64* %i to i8*, !dbg !4847
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !4847
  call void @llvm.dbg.declare(metadata i64* %i, metadata !1044, metadata !1222), !dbg !4848
  %17 = bitcast [4101 x i8]* %name to i8*, !dbg !4849
  call void @llvm.lifetime.start(i64 4101, i8* %17) #1, !dbg !4849
  call void @llvm.dbg.declare(metadata [4101 x i8]* %name, metadata !1045, metadata !1222), !dbg !4850
  %18 = bitcast [8 x i8]* %dummy to i8*, !dbg !4851
  call void @llvm.lifetime.start(i64 8, i8* %18) #1, !dbg !4851
  call void @llvm.dbg.declare(metadata [8 x i8]* %dummy, metadata !1049, metadata !1222), !dbg !4852
  %19 = bitcast %struct._object** %nameobj to i8*, !dbg !4853
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !4853
  call void @llvm.dbg.declare(metadata %struct._object** %nameobj, metadata !1053, metadata !1222), !dbg !4854
  store %struct._object* null, %struct._object** %nameobj, align 8, !dbg !4854, !tbaa !1252
  %20 = bitcast i8** %p to i8*, !dbg !4855
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !4855
  call void @llvm.dbg.declare(metadata i8** %p, metadata !1054, metadata !1222), !dbg !4856
  %21 = bitcast [22 x i8]* %endof_central_dir to i8*, !dbg !4855
  call void @llvm.lifetime.start(i64 22, i8* %21) #1, !dbg !4855
  call void @llvm.dbg.declare(metadata [22 x i8]* %endof_central_dir, metadata !1055, metadata !1222), !dbg !4857
  %22 = bitcast i64* %arc_offset to i8*, !dbg !4858
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !4858
  call void @llvm.dbg.declare(metadata i64* %arc_offset, metadata !1059, metadata !1222), !dbg !4859
  %23 = bitcast %struct._object** %path to i8*, !dbg !4860
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !4860
  call void @llvm.dbg.declare(metadata %struct._object** %path, metadata !1060, metadata !1222), !dbg !4861
  %24 = bitcast i8** %charset to i8*, !dbg !4862
  call void @llvm.lifetime.start(i64 8, i8* %24) #1, !dbg !4862
  call void @llvm.dbg.declare(metadata i8** %charset, metadata !1061, metadata !1222), !dbg !4863
  %25 = bitcast i32* %bootstrap to i8*, !dbg !4864
  call void @llvm.lifetime.start(i64 4, i8* %25) #1, !dbg !4864
  call void @llvm.dbg.declare(metadata i32* %bootstrap, metadata !1062, metadata !1222), !dbg !4865
  %26 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4866, !tbaa !1252
  %call = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0)), !dbg !4867
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8, !dbg !4868, !tbaa !1252
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4869, !tbaa !1252
  %cmp = icmp eq %struct._IO_FILE* %27, null, !dbg !4871
  br i1 %cmp, label %if.then, label %if.end.4, !dbg !4872

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred(), !dbg !4873
  %tobool = icmp ne %struct._object* %call1, null, !dbg !4873
  br i1 %tobool, label %if.end, label %if.then.2, !dbg !4876

if.then.2:                                        ; preds = %if.then
  %28 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4877, !tbaa !1252
  %29 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4878, !tbaa !1252
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), %struct._object* %29), !dbg !4879
  br label %if.end, !dbg !4879

if.end:                                           ; preds = %if.then.2, %if.then
  store %struct._object* null, %struct._object** %retval, !dbg !4880
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287, !dbg !4880

if.end.4:                                         ; preds = %entry
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4881, !tbaa !1252
  %call5 = call i32 @fseek(%struct._IO_FILE* %30, i64 -22, i32 2), !dbg !4883
  %cmp6 = icmp eq i32 %call5, -1, !dbg !4884
  br i1 %cmp6, label %if.then.7, label %if.end.10, !dbg !4885

if.then.7:                                        ; preds = %if.end.4
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4886, !tbaa !1252
  %call8 = call i32 @fclose(%struct._IO_FILE* %31), !dbg !4888
  %32 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4889, !tbaa !1252
  %33 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4890, !tbaa !1252
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %33), !dbg !4891
  store %struct._object* null, %struct._object** %retval, !dbg !4892
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287, !dbg !4892

if.end.10:                                        ; preds = %if.end.4
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4893, !tbaa !1252
  %call11 = call i64 @ftell(%struct._IO_FILE* %34), !dbg !4894
  store i64 %call11, i64* %header_position, align 8, !dbg !4895, !tbaa !1558
  %arraydecay = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0, !dbg !4896
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4898, !tbaa !1252
  %call12 = call i64 @fread(i8* %arraydecay, i64 1, i64 22, %struct._IO_FILE* %35), !dbg !4899
  %cmp13 = icmp ne i64 %call12, 22, !dbg !4900
  br i1 %cmp13, label %if.then.14, label %if.end.17, !dbg !4901

if.then.14:                                       ; preds = %if.end.10
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4902, !tbaa !1252
  %call15 = call i32 @fclose(%struct._IO_FILE* %36), !dbg !4904
  %37 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4905, !tbaa !1252
  %38 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4906, !tbaa !1252
  %call16 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %38), !dbg !4907
  store %struct._object* null, %struct._object** %retval, !dbg !4908
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287, !dbg !4908

if.end.17:                                        ; preds = %if.end.10
  %arraydecay18 = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0, !dbg !4909
  %call19 = call i64 @get_long(i8* %arraydecay18), !dbg !4911
  %cmp20 = icmp ne i64 %call19, 101010256, !dbg !4912
  br i1 %cmp20, label %if.then.21, label %if.end.24, !dbg !4913

if.then.21:                                       ; preds = %if.end.17
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4914, !tbaa !1252
  %call22 = call i32 @fclose(%struct._IO_FILE* %39), !dbg !4916
  %40 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !4917, !tbaa !1252
  %41 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !4918, !tbaa !1252
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), %struct._object* %41), !dbg !4919
  store %struct._object* null, %struct._object** %retval, !dbg !4920
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287, !dbg !4920

if.end.24:                                        ; preds = %if.end.17
  %arraydecay25 = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0, !dbg !4921
  %add.ptr = getelementptr i8, i8* %arraydecay25, i64 12, !dbg !4922
  %call26 = call i64 @get_long(i8* %add.ptr), !dbg !4923
  store i64 %call26, i64* %header_size, align 8, !dbg !4924, !tbaa !1558
  %arraydecay27 = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0, !dbg !4925
  %add.ptr28 = getelementptr i8, i8* %arraydecay27, i64 16, !dbg !4926
  %call29 = call i64 @get_long(i8* %add.ptr28), !dbg !4927
  store i64 %call29, i64* %header_offset, align 8, !dbg !4928, !tbaa !1558
  %42 = load i64, i64* %header_position, align 8, !dbg !4929, !tbaa !1558
  %43 = load i64, i64* %header_offset, align 8, !dbg !4930, !tbaa !1558
  %sub = sub i64 %42, %43, !dbg !4931
  %44 = load i64, i64* %header_size, align 8, !dbg !4932, !tbaa !1558
  %sub30 = sub i64 %sub, %44, !dbg !4933
  store i64 %sub30, i64* %arc_offset, align 8, !dbg !4934, !tbaa !1558
  %45 = load i64, i64* %arc_offset, align 8, !dbg !4935, !tbaa !1558
  %46 = load i64, i64* %header_offset, align 8, !dbg !4936, !tbaa !1558
  %add = add i64 %46, %45, !dbg !4936
  store i64 %add, i64* %header_offset, align 8, !dbg !4936, !tbaa !1558
  %call31 = call %struct._object* @PyDict_New(), !dbg !4937
  store %struct._object* %call31, %struct._object** %files, align 8, !dbg !4938, !tbaa !1252
  %47 = load %struct._object*, %struct._object** %files, align 8, !dbg !4939, !tbaa !1252
  %cmp32 = icmp eq %struct._object* %47, null, !dbg !4941
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !4942

if.then.33:                                       ; preds = %if.end.24
  br label %error, !dbg !4943

if.end.34:                                        ; preds = %if.end.24
  store i64 0, i64* %count, align 8, !dbg !4944, !tbaa !1558
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4945, !tbaa !1252
  %49 = load i64, i64* %header_offset, align 8, !dbg !4947, !tbaa !1558
  %call35 = call i32 @fseek(%struct._IO_FILE* %48, i64 %49, i32 0), !dbg !4948
  %cmp36 = icmp eq i32 %call35, -1, !dbg !4949
  br i1 %cmp36, label %if.then.37, label %if.end.38, !dbg !4950

if.then.37:                                       ; preds = %if.end.34
  br label %file_error, !dbg !4951

if.end.38:                                        ; preds = %if.end.34
  br label %for.cond, !dbg !4952

for.cond:                                         ; preds = %cleanup.cont, %if.end.38
  %50 = bitcast %struct._object** %t to i8*, !dbg !4953
  call void @llvm.lifetime.start(i64 8, i8* %50) #1, !dbg !4953
  call void @llvm.dbg.declare(metadata %struct._object** %t, metadata !1063, metadata !1222), !dbg !4954
  %51 = bitcast i32* %err to i8*, !dbg !4955
  call void @llvm.lifetime.start(i64 4, i8* %51) #1, !dbg !4955
  call void @llvm.dbg.declare(metadata i32* %err, metadata !1067, metadata !1222), !dbg !4956
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4957, !tbaa !1252
  %call39 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %52), !dbg !4958
  store i64 %call39, i64* %l, align 8, !dbg !4959, !tbaa !1558
  %53 = load i64, i64* %l, align 8, !dbg !4960, !tbaa !1558
  %cmp40 = icmp eq i64 %53, -1, !dbg !4962
  br i1 %cmp40, label %land.lhs.true, label %if.end.44, !dbg !4963

land.lhs.true:                                    ; preds = %for.cond
  %call41 = call %struct._object* @PyErr_Occurred(), !dbg !4964
  %tobool42 = icmp ne %struct._object* %call41, null, !dbg !4964
  br i1 %tobool42, label %if.then.43, label %if.end.44, !dbg !4966

if.then.43:                                       ; preds = %land.lhs.true
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4967

if.end.44:                                        ; preds = %land.lhs.true, %for.cond
  %54 = load i64, i64* %l, align 8, !dbg !4968, !tbaa !1558
  %cmp45 = icmp ne i64 %54, 33639248, !dbg !4970
  br i1 %cmp45, label %if.then.46, label %if.end.47, !dbg !4971

if.then.46:                                       ; preds = %if.end.44
  store i32 4, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4972

if.end.47:                                        ; preds = %if.end.44
  %arraydecay48 = getelementptr inbounds [8 x i8], [8 x i8]* %dummy, i32 0, i32 0, !dbg !4973
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4975, !tbaa !1252
  %call49 = call i64 @fread(i8* %arraydecay48, i64 1, i64 4, %struct._IO_FILE* %55), !dbg !4976
  %cmp50 = icmp ne i64 %call49, 4, !dbg !4977
  br i1 %cmp50, label %if.then.51, label %if.end.52, !dbg !4978

if.then.51:                                       ; preds = %if.end.47
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !4979

if.end.52:                                        ; preds = %if.end.47
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4980, !tbaa !1252
  %call53 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %56), !dbg !4981
  %conv = trunc i32 %call53 to i16, !dbg !4982
  store i16 %conv, i16* %flags, align 2, !dbg !4983, !tbaa !1873
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4984, !tbaa !1252
  %call54 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %57), !dbg !4985
  %conv55 = trunc i32 %call54 to i16, !dbg !4985
  store i16 %conv55, i16* %compress, align 2, !dbg !4986, !tbaa !1873
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4987, !tbaa !1252
  %call56 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %58), !dbg !4988
  %conv57 = trunc i32 %call56 to i16, !dbg !4988
  store i16 %conv57, i16* %time, align 2, !dbg !4989, !tbaa !1873
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4990, !tbaa !1252
  %call58 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %59), !dbg !4991
  %conv59 = trunc i32 %call58 to i16, !dbg !4991
  store i16 %conv59, i16* %date, align 2, !dbg !4992, !tbaa !1873
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4993, !tbaa !1252
  %call60 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %60), !dbg !4994
  store i64 %call60, i64* %crc, align 8, !dbg !4995, !tbaa !1558
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4996, !tbaa !1252
  %call61 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %61), !dbg !4997
  store i64 %call61, i64* %data_size, align 8, !dbg !4998, !tbaa !1558
  %62 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !4999, !tbaa !1252
  %call62 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %62), !dbg !5000
  store i64 %call62, i64* %file_size, align 8, !dbg !5001, !tbaa !1558
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5002, !tbaa !1252
  %call63 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %63), !dbg !5003
  %conv64 = trunc i32 %call63 to i16, !dbg !5003
  store i16 %conv64, i16* %name_size, align 2, !dbg !5004, !tbaa !1873
  %64 = load i16, i16* %name_size, align 2, !dbg !5005, !tbaa !1873
  %conv65 = sext i16 %64 to i32, !dbg !5005
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5006, !tbaa !1252
  %call66 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %65), !dbg !5007
  %add67 = add i32 %conv65, %call66, !dbg !5008
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5009, !tbaa !1252
  %call68 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %66), !dbg !5010
  %add69 = add i32 %add67, %call68, !dbg !5011
  %conv70 = sext i32 %add69 to i64, !dbg !5005
  store i64 %conv70, i64* %header_size, align 8, !dbg !5012, !tbaa !1558
  %arraydecay71 = getelementptr inbounds [8 x i8], [8 x i8]* %dummy, i32 0, i32 0, !dbg !5013
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5015, !tbaa !1252
  %call72 = call i64 @fread(i8* %arraydecay71, i64 1, i64 8, %struct._IO_FILE* %67), !dbg !5016
  %cmp73 = icmp ne i64 %call72, 8, !dbg !5017
  br i1 %cmp73, label %if.then.75, label %if.end.76, !dbg !5018

if.then.75:                                       ; preds = %if.end.52
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5019

if.end.76:                                        ; preds = %if.end.52
  %68 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5020, !tbaa !1252
  %call77 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %68), !dbg !5021
  %69 = load i64, i64* %arc_offset, align 8, !dbg !5022, !tbaa !1558
  %add78 = add i64 %call77, %69, !dbg !5023
  store i64 %add78, i64* %file_offset, align 8, !dbg !5024, !tbaa !1558
  %call79 = call %struct._object* @PyErr_Occurred(), !dbg !5025
  %tobool80 = icmp ne %struct._object* %call79, null, !dbg !5025
  br i1 %tobool80, label %if.then.81, label %if.end.82, !dbg !5027

if.then.81:                                       ; preds = %if.end.76
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5028

if.end.82:                                        ; preds = %if.end.76
  %70 = load i16, i16* %name_size, align 2, !dbg !5029, !tbaa !1873
  %conv83 = sext i16 %70 to i32, !dbg !5029
  %cmp84 = icmp sgt i32 %conv83, 4096, !dbg !5031
  br i1 %cmp84, label %if.then.86, label %if.end.87, !dbg !5032

if.then.86:                                       ; preds = %if.end.82
  store i16 4096, i16* %name_size, align 2, !dbg !5033, !tbaa !1873
  br label %if.end.87, !dbg !5034

if.end.87:                                        ; preds = %if.then.86, %if.end.82
  %arraydecay88 = getelementptr inbounds [4101 x i8], [4101 x i8]* %name, i32 0, i32 0, !dbg !5035
  store i8* %arraydecay88, i8** %p, align 8, !dbg !5036, !tbaa !1252
  store i64 0, i64* %i, align 8, !dbg !5037, !tbaa !1558
  br label %for.cond.89, !dbg !5039

for.cond.89:                                      ; preds = %for.inc, %if.end.87
  %71 = load i64, i64* %i, align 8, !dbg !5040, !tbaa !1558
  %72 = load i16, i16* %name_size, align 2, !dbg !5044, !tbaa !1873
  %conv90 = sext i16 %72 to i64, !dbg !5045
  %cmp91 = icmp slt i64 %71, %conv90, !dbg !5046
  br i1 %cmp91, label %for.body, label %for.end, !dbg !5047

for.body:                                         ; preds = %for.cond.89
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5048, !tbaa !1252
  %call93 = call i32 @_IO_getc(%struct._IO_FILE* %73), !dbg !5050
  %conv94 = trunc i32 %call93 to i8, !dbg !5051
  %74 = load i8*, i8** %p, align 8, !dbg !5052, !tbaa !1252
  store i8 %conv94, i8* %74, align 1, !dbg !5053, !tbaa !1230
  %75 = load i8*, i8** %p, align 8, !dbg !5054, !tbaa !1252
  %76 = load i8, i8* %75, align 1, !dbg !5056, !tbaa !1230
  %conv95 = sext i8 %76 to i32, !dbg !5056
  %cmp96 = icmp eq i32 %conv95, 47, !dbg !5057
  br i1 %cmp96, label %if.then.98, label %if.end.99, !dbg !5058

if.then.98:                                       ; preds = %for.body
  %77 = load i8*, i8** %p, align 8, !dbg !5059, !tbaa !1252
  store i8 47, i8* %77, align 1, !dbg !5060, !tbaa !1230
  br label %if.end.99, !dbg !5061

if.end.99:                                        ; preds = %if.then.98, %for.body
  %78 = load i8*, i8** %p, align 8, !dbg !5062, !tbaa !1252
  %incdec.ptr = getelementptr i8, i8* %78, i32 1, !dbg !5062
  store i8* %incdec.ptr, i8** %p, align 8, !dbg !5062, !tbaa !1252
  br label %for.inc, !dbg !5063

for.inc:                                          ; preds = %if.end.99
  %79 = load i64, i64* %i, align 8, !dbg !5064, !tbaa !1558
  %inc = add i64 %79, 1, !dbg !5064
  store i64 %inc, i64* %i, align 8, !dbg !5064, !tbaa !1558
  br label %for.cond.89, !dbg !5065

for.end:                                          ; preds = %for.cond.89
  %80 = load i8*, i8** %p, align 8, !dbg !5066, !tbaa !1252
  store i8 0, i8* %80, align 1, !dbg !5067, !tbaa !1230
  br label %for.cond.100, !dbg !5068

for.cond.100:                                     ; preds = %for.inc.109, %for.end
  %81 = load i64, i64* %i, align 8, !dbg !5069, !tbaa !1558
  %82 = load i64, i64* %header_size, align 8, !dbg !5074, !tbaa !1558
  %cmp101 = icmp slt i64 %81, %82, !dbg !5075
  br i1 %cmp101, label %for.body.103, label %for.end.111, !dbg !5076

for.body.103:                                     ; preds = %for.cond.100
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5077, !tbaa !1252
  %call104 = call i32 @_IO_getc(%struct._IO_FILE* %83), !dbg !5079
  %cmp105 = icmp eq i32 %call104, -1, !dbg !5080
  br i1 %cmp105, label %if.then.107, label %if.end.108, !dbg !5081

if.then.107:                                      ; preds = %for.body.103
  store i32 3, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5082

if.end.108:                                       ; preds = %for.body.103
  br label %for.inc.109, !dbg !5083

for.inc.109:                                      ; preds = %if.end.108
  %84 = load i64, i64* %i, align 8, !dbg !5085, !tbaa !1558
  %inc110 = add i64 %84, 1, !dbg !5085
  store i64 %inc110, i64* %i, align 8, !dbg !5085, !tbaa !1558
  br label %for.cond.100, !dbg !5086

for.end.111:                                      ; preds = %for.cond.100
  store i32 0, i32* %bootstrap, align 4, !dbg !5087, !tbaa !1236
  %85 = load i16, i16* %flags, align 2, !dbg !5088, !tbaa !1873
  %conv112 = zext i16 %85 to i32, !dbg !5088
  %and = and i32 %conv112, 2048, !dbg !5089
  %tobool113 = icmp ne i32 %and, 0, !dbg !5089
  br i1 %tobool113, label %if.then.114, label %if.else, !dbg !5090

if.then.114:                                      ; preds = %for.end.111
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8** %charset, align 8, !dbg !5091, !tbaa !1252
  br label %if.end.122, !dbg !5092

if.else:                                          ; preds = %for.end.111
  %86 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !5093
  call void @llvm.lifetime.start(i64 8, i8* %86) #1, !dbg !5093
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !1068, metadata !1222), !dbg !5094
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !5094, !tbaa !1252
  %87 = bitcast i8** %result to i8*, !dbg !5095
  call void @llvm.lifetime.start(i64 8, i8* %87) #1, !dbg !5095
  call void @llvm.dbg.declare(metadata i8** %result, metadata !1077, metadata !1222), !dbg !5096
  %88 = bitcast i8*** %volatile_data to i8*, !dbg !5097
  call void @llvm.lifetime.start(i64 8, i8* %88) #1, !dbg !5097
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !1078, metadata !1222), !dbg !5098
  %89 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !5099, !tbaa !1252
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %89, i32 0, i32 0, !dbg !5100
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !5098, !tbaa !1252
  %90 = bitcast i32* %order to i8*, !dbg !5101
  call void @llvm.lifetime.start(i64 4, i8* %90) #1, !dbg !5101
  call void @llvm.dbg.declare(metadata i32* %order, metadata !1081, metadata !1222), !dbg !5102
  store i32 0, i32* %order, align 4, !dbg !5102, !tbaa !1230
  %91 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !5103, !tbaa !1252
  %92 = bitcast %struct._Py_atomic_address* %91 to i8*, !dbg !5103
  %93 = load i32, i32* %order, align 4, !dbg !5104, !tbaa !1230
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %92, i32 %93), !dbg !5105
  %94 = load i32, i32* %order, align 4, !dbg !5106, !tbaa !1230
  switch i32 %94, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !5107

sw.bb:                                            ; preds = %if.else, %if.else, %if.else
  call void @_Py_atomic_thread_fence(i32 2), !dbg !5108
  br label %sw.epilog, !dbg !5113

sw.default:                                       ; preds = %if.else
  br label %sw.epilog, !dbg !5114

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %95 = load i8**, i8*** %volatile_data, align 8, !dbg !5116, !tbaa !1252
  %96 = load volatile i8*, i8** %95, align 8, !dbg !5119, !tbaa !1252
  store i8* %96, i8** %result, align 8, !dbg !5120, !tbaa !1252
  %97 = load i32, i32* %order, align 4, !dbg !5121, !tbaa !1230
  switch i32 %97, label %sw.default.116 [
    i32 1, label %sw.bb.115
    i32 3, label %sw.bb.115
    i32 4, label %sw.bb.115
  ], !dbg !5122

sw.bb.115:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !5123
  br label %sw.epilog.117, !dbg !5128

sw.default.116:                                   ; preds = %sw.epilog
  br label %sw.epilog.117, !dbg !5129

sw.epilog.117:                                    ; preds = %sw.default.116, %sw.bb.115
  %98 = load i8*, i8** %result, align 8, !dbg !5131, !tbaa !1252
  store i8* %98, i8** %tmp, !dbg !5134, !tbaa !1252
  %99 = bitcast i32* %order to i8*, !dbg !5135
  call void @llvm.lifetime.end(i64 4, i8* %99) #1, !dbg !5135
  %100 = bitcast i8*** %volatile_data to i8*, !dbg !5135
  call void @llvm.lifetime.end(i64 8, i8* %100) #1, !dbg !5135
  %101 = bitcast i8** %result to i8*, !dbg !5135
  call void @llvm.lifetime.end(i64 8, i8* %101) #1, !dbg !5135
  %102 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !5135
  call void @llvm.lifetime.end(i64 8, i8* %102) #1, !dbg !5135
  %103 = load i8*, i8** %tmp, !dbg !5136, !tbaa !1252
  %104 = bitcast i8* %103 to %struct._ts*, !dbg !5137
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %104, i32 0, i32 2, !dbg !5138
  %105 = load %struct._is*, %struct._is** %interp, align 8, !dbg !5138, !tbaa !5139
  %codecs_initialized = getelementptr inbounds %struct._is, %struct._is* %105, i32 0, i32 10, !dbg !5141
  %106 = load i32, i32* %codecs_initialized, align 4, !dbg !5141, !tbaa !5142
  %tobool118 = icmp ne i32 %106, 0, !dbg !5144
  br i1 %tobool118, label %if.else.120, label %if.then.119, !dbg !5145

if.then.119:                                      ; preds = %sw.epilog.117
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8** %charset, align 8, !dbg !5146, !tbaa !1252
  store i32 1, i32* %bootstrap, align 4, !dbg !5148, !tbaa !1236
  br label %if.end.121, !dbg !5149

if.else.120:                                      ; preds = %sw.epilog.117
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8** %charset, align 8, !dbg !5150, !tbaa !1252
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.114
  %arraydecay123 = getelementptr inbounds [4101 x i8], [4101 x i8]* %name, i32 0, i32 0, !dbg !5151
  %107 = load i16, i16* %name_size, align 2, !dbg !5152, !tbaa !1873
  %conv124 = sext i16 %107 to i64, !dbg !5152
  %108 = load i8*, i8** %charset, align 8, !dbg !5153, !tbaa !1252
  %call125 = call %struct._object* @PyUnicode_Decode(i8* %arraydecay123, i64 %conv124, i8* %108, i8* null), !dbg !5154
  store %struct._object* %call125, %struct._object** %nameobj, align 8, !dbg !5155, !tbaa !1252
  %109 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5156, !tbaa !1252
  %cmp126 = icmp eq %struct._object* %109, null, !dbg !5158
  br i1 %cmp126, label %if.then.128, label %if.end.133, !dbg !5159

if.then.128:                                      ; preds = %if.end.122
  %110 = load i32, i32* %bootstrap, align 4, !dbg !5160, !tbaa !1236
  %tobool129 = icmp ne i32 %110, 0, !dbg !5160
  br i1 %tobool129, label %if.then.130, label %if.end.132, !dbg !5163

if.then.130:                                      ; preds = %if.then.128
  %111 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8, !dbg !5164, !tbaa !1252
  %call131 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %111, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.68, i32 0, i32 0), i32 3, i32 4), !dbg !5165
  br label %if.end.132, !dbg !5165

if.end.132:                                       ; preds = %if.then.130, %if.then.128
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5166

if.end.133:                                       ; preds = %if.end.122
  %112 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5167, !tbaa !1252
  %113 = bitcast %struct._object* %112 to %struct.PyASCIIObject*, !dbg !5169
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %113, i32 0, i32 3, !dbg !5170
  %114 = bitcast %struct.anon* %state to i32*, !dbg !5171
  %bf.load = load i32, i32* %114, align 4, !dbg !5171
  %bf.lshr = lshr i32 %bf.load, 7, !dbg !5171
  %bf.clear = and i32 %bf.lshr, 1, !dbg !5171
  %tobool134 = icmp ne i32 %bf.clear, 0, !dbg !5172
  br i1 %tobool134, label %cond.true, label %cond.false, !dbg !5172

cond.true:                                        ; preds = %if.end.133
  br label %cond.end, !dbg !5173

cond.false:                                       ; preds = %if.end.133
  %115 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5175, !tbaa !1252
  %call135 = call i32 @_PyUnicode_Ready(%struct._object* %115), !dbg !5177
  br label %cond.end, !dbg !5172

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call135, %cond.false ], !dbg !5172
  %cmp136 = icmp eq i32 %cond, -1, !dbg !5178
  br i1 %cmp136, label %if.then.138, label %if.end.139, !dbg !5181

if.then.138:                                      ; preds = %cond.end
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5182

if.end.139:                                       ; preds = %cond.end
  %116 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !5183, !tbaa !1252
  %117 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5184, !tbaa !1252
  %call140 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct._object* %116, i32 47, %struct._object* %117), !dbg !5185
  store %struct._object* %call140, %struct._object** %path, align 8, !dbg !5186, !tbaa !1252
  %118 = load %struct._object*, %struct._object** %path, align 8, !dbg !5187, !tbaa !1252
  %cmp141 = icmp eq %struct._object* %118, null, !dbg !5189
  br i1 %cmp141, label %if.then.143, label %if.end.144, !dbg !5190

if.then.143:                                      ; preds = %if.end.139
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5191

if.end.144:                                       ; preds = %if.end.139
  %119 = load %struct._object*, %struct._object** %path, align 8, !dbg !5192, !tbaa !1252
  %120 = load i16, i16* %compress, align 2, !dbg !5193, !tbaa !1873
  %conv145 = sext i16 %120 to i32, !dbg !5193
  %121 = load i64, i64* %data_size, align 8, !dbg !5194, !tbaa !1558
  %122 = load i64, i64* %file_size, align 8, !dbg !5195, !tbaa !1558
  %123 = load i64, i64* %file_offset, align 8, !dbg !5196, !tbaa !1558
  %124 = load i16, i16* %time, align 2, !dbg !5197, !tbaa !1873
  %conv146 = sext i16 %124 to i32, !dbg !5197
  %125 = load i16, i16* %date, align 2, !dbg !5198, !tbaa !1873
  %conv147 = sext i16 %125 to i32, !dbg !5198
  %126 = load i64, i64* %crc, align 8, !dbg !5199, !tbaa !1558
  %call148 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), %struct._object* %119, i32 %conv145, i64 %121, i64 %122, i64 %123, i32 %conv146, i32 %conv147, i64 %126), !dbg !5200
  store %struct._object* %call148, %struct._object** %t, align 8, !dbg !5201, !tbaa !1252
  %127 = load %struct._object*, %struct._object** %t, align 8, !dbg !5202, !tbaa !1252
  %cmp149 = icmp eq %struct._object* %127, null, !dbg !5204
  br i1 %cmp149, label %if.then.151, label %if.end.152, !dbg !5205

if.then.151:                                      ; preds = %if.end.144
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5206

if.end.152:                                       ; preds = %if.end.144
  %128 = load %struct._object*, %struct._object** %files, align 8, !dbg !5207, !tbaa !1252
  %129 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5208, !tbaa !1252
  %130 = load %struct._object*, %struct._object** %t, align 8, !dbg !5209, !tbaa !1252
  %call153 = call i32 @PyDict_SetItem(%struct._object* %128, %struct._object* %129, %struct._object* %130), !dbg !5210
  store i32 %call153, i32* %err, align 4, !dbg !5211, !tbaa !1236
  br label %do.body, !dbg !5212

do.body:                                          ; preds = %if.end.152
  %131 = bitcast %struct._object** %_py_tmp to i8*, !dbg !5213
  call void @llvm.lifetime.start(i64 8, i8* %131) #1, !dbg !5213
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !1083, metadata !1222), !dbg !5215
  %132 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5216, !tbaa !1252
  store %struct._object* %132, %struct._object** %_py_tmp, align 8, !dbg !5215, !tbaa !1252
  %133 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !5217, !tbaa !1252
  %cmp155 = icmp ne %struct._object* %133, null, !dbg !5218
  br i1 %cmp155, label %if.then.157, label %if.end.165, !dbg !5219

if.then.157:                                      ; preds = %do.body
  store %struct._object* null, %struct._object** %nameobj, align 8, !dbg !5220, !tbaa !1252
  br label %do.body.158, !dbg !5222

do.body.158:                                      ; preds = %if.then.157
  %134 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5223
  call void @llvm.lifetime.start(i64 8, i8* %134) #1, !dbg !5223
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !1085, metadata !1222), !dbg !5225
  %135 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !5226, !tbaa !1252
  store %struct._object* %135, %struct._object** %_py_decref_tmp, align 8, !dbg !5225, !tbaa !1252
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5227, !tbaa !1252
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %136, i32 0, i32 0, !dbg !5229
  %137 = load i64, i64* %ob_refcnt, align 8, !dbg !5230, !tbaa !1270
  %dec = add i64 %137, -1, !dbg !5230
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !5230, !tbaa !1270
  %cmp160 = icmp ne i64 %dec, 0, !dbg !5231
  br i1 %cmp160, label %if.then.162, label %if.else.163, !dbg !5232

if.then.162:                                      ; preds = %do.body.158
  br label %if.end.164, !dbg !5233

if.else.163:                                      ; preds = %do.body.158
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5235, !tbaa !1252
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 1, !dbg !5237
  %139 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !5237, !tbaa !1338
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %139, i32 0, i32 4, !dbg !5238
  %140 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !5238, !tbaa !1340
  %141 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !5239, !tbaa !1252
  call void %140(%struct._object* %141), !dbg !5240
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %if.then.162
  %142 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !5241
  call void @llvm.lifetime.end(i64 8, i8* %142) #1, !dbg !5241
  br label %do.cond, !dbg !5243

do.cond:                                          ; preds = %if.end.164
  br label %do.end, !dbg !5244

do.end:                                           ; preds = %do.cond
  br label %if.end.165, !dbg !5246

if.end.165:                                       ; preds = %do.end, %do.body
  %143 = bitcast %struct._object** %_py_tmp to i8*, !dbg !5248
  call void @llvm.lifetime.end(i64 8, i8* %143) #1, !dbg !5248
  br label %do.cond.166, !dbg !5251

do.cond.166:                                      ; preds = %if.end.165
  br label %do.end.167, !dbg !5252

do.end.167:                                       ; preds = %do.cond.166
  br label %do.body.168, !dbg !5254

do.body.168:                                      ; preds = %do.end.167
  %144 = bitcast %struct._object** %_py_decref_tmp170 to i8*, !dbg !5255
  call void @llvm.lifetime.start(i64 8, i8* %144) #1, !dbg !5255
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp170, metadata !1089, metadata !1222), !dbg !5257
  %145 = load %struct._object*, %struct._object** %t, align 8, !dbg !5258, !tbaa !1252
  store %struct._object* %145, %struct._object** %_py_decref_tmp170, align 8, !dbg !5257, !tbaa !1252
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8, !dbg !5259, !tbaa !1252
  %ob_refcnt171 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 0, !dbg !5261
  %147 = load i64, i64* %ob_refcnt171, align 8, !dbg !5262, !tbaa !1270
  %dec172 = add i64 %147, -1, !dbg !5262
  store i64 %dec172, i64* %ob_refcnt171, align 8, !dbg !5262, !tbaa !1270
  %cmp173 = icmp ne i64 %dec172, 0, !dbg !5263
  br i1 %cmp173, label %if.then.175, label %if.else.176, !dbg !5264

if.then.175:                                      ; preds = %do.body.168
  br label %if.end.179, !dbg !5265

if.else.176:                                      ; preds = %do.body.168
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8, !dbg !5267, !tbaa !1252
  %ob_type177 = getelementptr inbounds %struct._object, %struct._object* %148, i32 0, i32 1, !dbg !5269
  %149 = load %struct._typeobject*, %struct._typeobject** %ob_type177, align 8, !dbg !5269, !tbaa !1338
  %tp_dealloc178 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %149, i32 0, i32 4, !dbg !5270
  %150 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc178, align 8, !dbg !5270, !tbaa !1340
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp170, align 8, !dbg !5271, !tbaa !1252
  call void %150(%struct._object* %151), !dbg !5272
  br label %if.end.179

if.end.179:                                       ; preds = %if.else.176, %if.then.175
  %152 = bitcast %struct._object** %_py_decref_tmp170 to i8*, !dbg !5273
  call void @llvm.lifetime.end(i64 8, i8* %152) #1, !dbg !5273
  br label %do.cond.180, !dbg !5275

do.cond.180:                                      ; preds = %if.end.179
  br label %do.end.181, !dbg !5276

do.end.181:                                       ; preds = %do.cond.180
  %153 = load i32, i32* %err, align 4, !dbg !5278, !tbaa !1236
  %cmp182 = icmp ne i32 %153, 0, !dbg !5280
  br i1 %cmp182, label %if.then.184, label %if.end.185, !dbg !5281

if.then.184:                                      ; preds = %do.end.181
  store i32 2, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !5282

if.end.185:                                       ; preds = %do.end.181
  %154 = load i64, i64* %count, align 8, !dbg !5283, !tbaa !1558
  %inc186 = add i64 %154, 1, !dbg !5283
  store i64 %inc186, i64* %count, align 8, !dbg !5283, !tbaa !1558
  store i32 0, i32* %cleanup.dest.slot, !dbg !5284
  br label %cleanup, !dbg !5284

cleanup:                                          ; preds = %if.then.184, %if.then.151, %if.then.143, %if.then.138, %if.end.132, %if.then.107, %if.then.81, %if.then.75, %if.then.51, %if.then.43, %if.end.185, %if.then.46
  %155 = bitcast i32* %err to i8*, !dbg !5285
  call void @llvm.lifetime.end(i64 4, i8* %155) #1, !dbg !5285
  %156 = bitcast %struct._object** %t to i8*, !dbg !5285
  call void @llvm.lifetime.end(i64 8, i8* %156) #1, !dbg !5285
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %cleanup.287 [
    i32 0, label %cleanup.cont
    i32 4, label %for.end.188
    i32 3, label %file_error
    i32 2, label %error
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.cond, !dbg !5287

for.end.188:                                      ; preds = %cleanup
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5288, !tbaa !1252
  %call189 = call i32 @fclose(%struct._IO_FILE* %157), !dbg !5289
  %158 = load i32, i32* @Py_VerboseFlag, align 4, !dbg !5290, !tbaa !1236
  %tobool190 = icmp ne i32 %158, 0, !dbg !5290
  br i1 %tobool190, label %if.then.191, label %if.end.192, !dbg !5292

if.then.191:                                      ; preds = %for.end.188
  %159 = load i64, i64* %count, align 8, !dbg !5293, !tbaa !1558
  %160 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !5294, !tbaa !1252
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0), i64 %159, %struct._object* %160), !dbg !5295
  br label %if.end.192, !dbg !5295

if.end.192:                                       ; preds = %if.then.191, %for.end.188
  %161 = load %struct._object*, %struct._object** %files, align 8, !dbg !5296, !tbaa !1252
  store %struct._object* %161, %struct._object** %retval, !dbg !5297
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287, !dbg !5297

file_error:                                       ; preds = %cleanup, %if.then.37
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5298, !tbaa !1252
  %call193 = call i32 @fclose(%struct._IO_FILE* %162), !dbg !5299
  br label %do.body.194, !dbg !5300

do.body.194:                                      ; preds = %file_error
  %163 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5301
  call void @llvm.lifetime.start(i64 8, i8* %163) #1, !dbg !5301
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !1091, metadata !1222), !dbg !5303
  %164 = load %struct._object*, %struct._object** %files, align 8, !dbg !5304, !tbaa !1252
  store %struct._object* %164, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5303, !tbaa !1252
  %165 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5305, !tbaa !1252
  %cmp196 = icmp ne %struct._object* %165, null, !dbg !5306
  br i1 %cmp196, label %if.then.198, label %if.end.213, !dbg !5307

if.then.198:                                      ; preds = %do.body.194
  br label %do.body.199, !dbg !5308

do.body.199:                                      ; preds = %if.then.198
  %166 = bitcast %struct._object** %_py_decref_tmp201 to i8*, !dbg !5310
  call void @llvm.lifetime.start(i64 8, i8* %166) #1, !dbg !5310
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp201, metadata !1093, metadata !1222), !dbg !5312
  %167 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !5313, !tbaa !1252
  store %struct._object* %167, %struct._object** %_py_decref_tmp201, align 8, !dbg !5312, !tbaa !1252
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8, !dbg !5314, !tbaa !1252
  %ob_refcnt202 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 0, !dbg !5316
  %169 = load i64, i64* %ob_refcnt202, align 8, !dbg !5317, !tbaa !1270
  %dec203 = add i64 %169, -1, !dbg !5317
  store i64 %dec203, i64* %ob_refcnt202, align 8, !dbg !5317, !tbaa !1270
  %cmp204 = icmp ne i64 %dec203, 0, !dbg !5318
  br i1 %cmp204, label %if.then.206, label %if.else.207, !dbg !5319

if.then.206:                                      ; preds = %do.body.199
  br label %if.end.210, !dbg !5320

if.else.207:                                      ; preds = %do.body.199
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8, !dbg !5322, !tbaa !1252
  %ob_type208 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 1, !dbg !5324
  %171 = load %struct._typeobject*, %struct._typeobject** %ob_type208, align 8, !dbg !5324, !tbaa !1338
  %tp_dealloc209 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %171, i32 0, i32 4, !dbg !5325
  %172 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc209, align 8, !dbg !5325, !tbaa !1340
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8, !dbg !5326, !tbaa !1252
  call void %172(%struct._object* %173), !dbg !5327
  br label %if.end.210

if.end.210:                                       ; preds = %if.else.207, %if.then.206
  %174 = bitcast %struct._object** %_py_decref_tmp201 to i8*, !dbg !5328
  call void @llvm.lifetime.end(i64 8, i8* %174) #1, !dbg !5328
  br label %do.cond.211, !dbg !5330

do.cond.211:                                      ; preds = %if.end.210
  br label %do.end.212, !dbg !5331

do.end.212:                                       ; preds = %do.cond.211
  br label %if.end.213, !dbg !5333

if.end.213:                                       ; preds = %do.end.212, %do.body.194
  %175 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !5335
  call void @llvm.lifetime.end(i64 8, i8* %175) #1, !dbg !5335
  br label %do.cond.214, !dbg !5338

do.cond.214:                                      ; preds = %if.end.213
  br label %do.end.215, !dbg !5339

do.end.215:                                       ; preds = %do.cond.214
  br label %do.body.216, !dbg !5341

do.body.216:                                      ; preds = %do.end.215
  %176 = bitcast %struct._object** %_py_xdecref_tmp218 to i8*, !dbg !5342
  call void @llvm.lifetime.start(i64 8, i8* %176) #1, !dbg !5342
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp218, metadata !1096, metadata !1222), !dbg !5344
  %177 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5345, !tbaa !1252
  store %struct._object* %177, %struct._object** %_py_xdecref_tmp218, align 8, !dbg !5344, !tbaa !1252
  %178 = load %struct._object*, %struct._object** %_py_xdecref_tmp218, align 8, !dbg !5346, !tbaa !1252
  %cmp219 = icmp ne %struct._object* %178, null, !dbg !5347
  br i1 %cmp219, label %if.then.221, label %if.end.236, !dbg !5348

if.then.221:                                      ; preds = %do.body.216
  br label %do.body.222, !dbg !5349

do.body.222:                                      ; preds = %if.then.221
  %179 = bitcast %struct._object** %_py_decref_tmp224 to i8*, !dbg !5351
  call void @llvm.lifetime.start(i64 8, i8* %179) #1, !dbg !5351
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp224, metadata !1098, metadata !1222), !dbg !5353
  %180 = load %struct._object*, %struct._object** %_py_xdecref_tmp218, align 8, !dbg !5354, !tbaa !1252
  store %struct._object* %180, %struct._object** %_py_decref_tmp224, align 8, !dbg !5353, !tbaa !1252
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8, !dbg !5355, !tbaa !1252
  %ob_refcnt225 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 0, !dbg !5357
  %182 = load i64, i64* %ob_refcnt225, align 8, !dbg !5358, !tbaa !1270
  %dec226 = add i64 %182, -1, !dbg !5358
  store i64 %dec226, i64* %ob_refcnt225, align 8, !dbg !5358, !tbaa !1270
  %cmp227 = icmp ne i64 %dec226, 0, !dbg !5359
  br i1 %cmp227, label %if.then.229, label %if.else.230, !dbg !5360

if.then.229:                                      ; preds = %do.body.222
  br label %if.end.233, !dbg !5361

if.else.230:                                      ; preds = %do.body.222
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8, !dbg !5363, !tbaa !1252
  %ob_type231 = getelementptr inbounds %struct._object, %struct._object* %183, i32 0, i32 1, !dbg !5365
  %184 = load %struct._typeobject*, %struct._typeobject** %ob_type231, align 8, !dbg !5365, !tbaa !1338
  %tp_dealloc232 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %184, i32 0, i32 4, !dbg !5366
  %185 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc232, align 8, !dbg !5366, !tbaa !1340
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8, !dbg !5367, !tbaa !1252
  call void %185(%struct._object* %186), !dbg !5368
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.230, %if.then.229
  %187 = bitcast %struct._object** %_py_decref_tmp224 to i8*, !dbg !5369
  call void @llvm.lifetime.end(i64 8, i8* %187) #1, !dbg !5369
  br label %do.cond.234, !dbg !5371

do.cond.234:                                      ; preds = %if.end.233
  br label %do.end.235, !dbg !5372

do.end.235:                                       ; preds = %do.cond.234
  br label %if.end.236, !dbg !5374

if.end.236:                                       ; preds = %do.end.235, %do.body.216
  %188 = bitcast %struct._object** %_py_xdecref_tmp218 to i8*, !dbg !5376
  call void @llvm.lifetime.end(i64 8, i8* %188) #1, !dbg !5376
  br label %do.cond.237, !dbg !5377

do.cond.237:                                      ; preds = %if.end.236
  br label %do.end.238, !dbg !5378

do.end.238:                                       ; preds = %do.cond.237
  %189 = load %struct._object*, %struct._object** @ZipImportError, align 8, !dbg !5380, !tbaa !1252
  %190 = load %struct._object*, %struct._object** %archive.addr, align 8, !dbg !5381, !tbaa !1252
  %call239 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %189, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %190), !dbg !5382
  store %struct._object* null, %struct._object** %retval, !dbg !5383
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287, !dbg !5383

error:                                            ; preds = %cleanup, %if.then.33
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8, !dbg !5384, !tbaa !1252
  %call240 = call i32 @fclose(%struct._IO_FILE* %191), !dbg !5385
  br label %do.body.241, !dbg !5386

do.body.241:                                      ; preds = %error
  %192 = bitcast %struct._object** %_py_xdecref_tmp243 to i8*, !dbg !5387
  call void @llvm.lifetime.start(i64 8, i8* %192) #1, !dbg !5387
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp243, metadata !1101, metadata !1222), !dbg !5389
  %193 = load %struct._object*, %struct._object** %files, align 8, !dbg !5390, !tbaa !1252
  store %struct._object* %193, %struct._object** %_py_xdecref_tmp243, align 8, !dbg !5389, !tbaa !1252
  %194 = load %struct._object*, %struct._object** %_py_xdecref_tmp243, align 8, !dbg !5391, !tbaa !1252
  %cmp244 = icmp ne %struct._object* %194, null, !dbg !5392
  br i1 %cmp244, label %if.then.246, label %if.end.261, !dbg !5393

if.then.246:                                      ; preds = %do.body.241
  br label %do.body.247, !dbg !5394

do.body.247:                                      ; preds = %if.then.246
  %195 = bitcast %struct._object** %_py_decref_tmp249 to i8*, !dbg !5396
  call void @llvm.lifetime.start(i64 8, i8* %195) #1, !dbg !5396
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp249, metadata !1103, metadata !1222), !dbg !5398
  %196 = load %struct._object*, %struct._object** %_py_xdecref_tmp243, align 8, !dbg !5399, !tbaa !1252
  store %struct._object* %196, %struct._object** %_py_decref_tmp249, align 8, !dbg !5398, !tbaa !1252
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8, !dbg !5400, !tbaa !1252
  %ob_refcnt250 = getelementptr inbounds %struct._object, %struct._object* %197, i32 0, i32 0, !dbg !5402
  %198 = load i64, i64* %ob_refcnt250, align 8, !dbg !5403, !tbaa !1270
  %dec251 = add i64 %198, -1, !dbg !5403
  store i64 %dec251, i64* %ob_refcnt250, align 8, !dbg !5403, !tbaa !1270
  %cmp252 = icmp ne i64 %dec251, 0, !dbg !5404
  br i1 %cmp252, label %if.then.254, label %if.else.255, !dbg !5405

if.then.254:                                      ; preds = %do.body.247
  br label %if.end.258, !dbg !5406

if.else.255:                                      ; preds = %do.body.247
  %199 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8, !dbg !5408, !tbaa !1252
  %ob_type256 = getelementptr inbounds %struct._object, %struct._object* %199, i32 0, i32 1, !dbg !5410
  %200 = load %struct._typeobject*, %struct._typeobject** %ob_type256, align 8, !dbg !5410, !tbaa !1338
  %tp_dealloc257 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %200, i32 0, i32 4, !dbg !5411
  %201 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc257, align 8, !dbg !5411, !tbaa !1340
  %202 = load %struct._object*, %struct._object** %_py_decref_tmp249, align 8, !dbg !5412, !tbaa !1252
  call void %201(%struct._object* %202), !dbg !5413
  br label %if.end.258

if.end.258:                                       ; preds = %if.else.255, %if.then.254
  %203 = bitcast %struct._object** %_py_decref_tmp249 to i8*, !dbg !5414
  call void @llvm.lifetime.end(i64 8, i8* %203) #1, !dbg !5414
  br label %do.cond.259, !dbg !5416

do.cond.259:                                      ; preds = %if.end.258
  br label %do.end.260, !dbg !5417

do.end.260:                                       ; preds = %do.cond.259
  br label %if.end.261, !dbg !5419

if.end.261:                                       ; preds = %do.end.260, %do.body.241
  %204 = bitcast %struct._object** %_py_xdecref_tmp243 to i8*, !dbg !5421
  call void @llvm.lifetime.end(i64 8, i8* %204) #1, !dbg !5421
  br label %do.cond.262, !dbg !5422

do.cond.262:                                      ; preds = %if.end.261
  br label %do.end.263, !dbg !5423

do.end.263:                                       ; preds = %do.cond.262
  br label %do.body.264, !dbg !5425

do.body.264:                                      ; preds = %do.end.263
  %205 = bitcast %struct._object** %_py_xdecref_tmp266 to i8*, !dbg !5426
  call void @llvm.lifetime.start(i64 8, i8* %205) #1, !dbg !5426
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp266, metadata !1106, metadata !1222), !dbg !5428
  %206 = load %struct._object*, %struct._object** %nameobj, align 8, !dbg !5429, !tbaa !1252
  store %struct._object* %206, %struct._object** %_py_xdecref_tmp266, align 8, !dbg !5428, !tbaa !1252
  %207 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8, !dbg !5430, !tbaa !1252
  %cmp267 = icmp ne %struct._object* %207, null, !dbg !5431
  br i1 %cmp267, label %if.then.269, label %if.end.284, !dbg !5432

if.then.269:                                      ; preds = %do.body.264
  br label %do.body.270, !dbg !5433

do.body.270:                                      ; preds = %if.then.269
  %208 = bitcast %struct._object** %_py_decref_tmp272 to i8*, !dbg !5435
  call void @llvm.lifetime.start(i64 8, i8* %208) #1, !dbg !5435
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp272, metadata !1108, metadata !1222), !dbg !5437
  %209 = load %struct._object*, %struct._object** %_py_xdecref_tmp266, align 8, !dbg !5438, !tbaa !1252
  store %struct._object* %209, %struct._object** %_py_decref_tmp272, align 8, !dbg !5437, !tbaa !1252
  %210 = load %struct._object*, %struct._object** %_py_decref_tmp272, align 8, !dbg !5439, !tbaa !1252
  %ob_refcnt273 = getelementptr inbounds %struct._object, %struct._object* %210, i32 0, i32 0, !dbg !5441
  %211 = load i64, i64* %ob_refcnt273, align 8, !dbg !5442, !tbaa !1270
  %dec274 = add i64 %211, -1, !dbg !5442
  store i64 %dec274, i64* %ob_refcnt273, align 8, !dbg !5442, !tbaa !1270
  %cmp275 = icmp ne i64 %dec274, 0, !dbg !5443
  br i1 %cmp275, label %if.then.277, label %if.else.278, !dbg !5444

if.then.277:                                      ; preds = %do.body.270
  br label %if.end.281, !dbg !5445

if.else.278:                                      ; preds = %do.body.270
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp272, align 8, !dbg !5447, !tbaa !1252
  %ob_type279 = getelementptr inbounds %struct._object, %struct._object* %212, i32 0, i32 1, !dbg !5449
  %213 = load %struct._typeobject*, %struct._typeobject** %ob_type279, align 8, !dbg !5449, !tbaa !1338
  %tp_dealloc280 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %213, i32 0, i32 4, !dbg !5450
  %214 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc280, align 8, !dbg !5450, !tbaa !1340
  %215 = load %struct._object*, %struct._object** %_py_decref_tmp272, align 8, !dbg !5451, !tbaa !1252
  call void %214(%struct._object* %215), !dbg !5452
  br label %if.end.281

if.end.281:                                       ; preds = %if.else.278, %if.then.277
  %216 = bitcast %struct._object** %_py_decref_tmp272 to i8*, !dbg !5453
  call void @llvm.lifetime.end(i64 8, i8* %216) #1, !dbg !5453
  br label %do.cond.282, !dbg !5455

do.cond.282:                                      ; preds = %if.end.281
  br label %do.end.283, !dbg !5456

do.end.283:                                       ; preds = %do.cond.282
  br label %if.end.284, !dbg !5458

if.end.284:                                       ; preds = %do.end.283, %do.body.264
  %217 = bitcast %struct._object** %_py_xdecref_tmp266 to i8*, !dbg !5460
  call void @llvm.lifetime.end(i64 8, i8* %217) #1, !dbg !5460
  br label %do.cond.285, !dbg !5461

do.cond.285:                                      ; preds = %if.end.284
  br label %do.end.286, !dbg !5462

do.end.286:                                       ; preds = %do.cond.285
  store %struct._object* null, %struct._object** %retval, !dbg !5464
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.287, !dbg !5464

cleanup.287:                                      ; preds = %do.end.286, %do.end.238, %if.end.192, %cleanup, %if.then.21, %if.then.14, %if.then.7, %if.end
  %218 = bitcast i32* %bootstrap to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 4, i8* %218) #1, !dbg !5465
  %219 = bitcast i8** %charset to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %219) #1, !dbg !5465
  %220 = bitcast %struct._object** %path to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %220) #1, !dbg !5465
  %221 = bitcast i64* %arc_offset to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %221) #1, !dbg !5465
  %222 = bitcast [22 x i8]* %endof_central_dir to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 22, i8* %222) #1, !dbg !5465
  %223 = bitcast i8** %p to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %223) #1, !dbg !5465
  %224 = bitcast %struct._object** %nameobj to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %224) #1, !dbg !5465
  %225 = bitcast [8 x i8]* %dummy to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %225) #1, !dbg !5465
  %226 = bitcast [4101 x i8]* %name to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 4101, i8* %226) #1, !dbg !5465
  %227 = bitcast i64* %i to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %227) #1, !dbg !5465
  %228 = bitcast i64* %count to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %228) #1, !dbg !5465
  %229 = bitcast i64* %l to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %229) #1, !dbg !5465
  %230 = bitcast i64* %header_offset to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %230) #1, !dbg !5465
  %231 = bitcast i64* %header_position to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %231) #1, !dbg !5465
  %232 = bitcast i64* %file_offset to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %232) #1, !dbg !5465
  %233 = bitcast i64* %header_size to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %233) #1, !dbg !5465
  %234 = bitcast i64* %file_size to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %234) #1, !dbg !5465
  %235 = bitcast i64* %data_size to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %235) #1, !dbg !5465
  %236 = bitcast i64* %crc to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %236) #1, !dbg !5465
  %237 = bitcast i16* %name_size to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 2, i8* %237) #1, !dbg !5465
  %238 = bitcast i16* %date to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 2, i8* %238) #1, !dbg !5465
  %239 = bitcast i16* %time to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 2, i8* %239) #1, !dbg !5465
  %240 = bitcast i16* %compress to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 2, i8* %240) #1, !dbg !5465
  %241 = bitcast i16* %flags to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 2, i8* %241) #1, !dbg !5465
  %242 = bitcast %struct._IO_FILE** %fp to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %242) #1, !dbg !5465
  %243 = bitcast %struct._object** %files to i8*, !dbg !5465
  call void @llvm.lifetime.end(i64 8, i8* %243) #1, !dbg !5465
  %244 = load %struct._object*, %struct._object** %retval, !dbg !5465
  ret %struct._object* %244, !dbg !5465
}

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyUnicode_New(i64, i32) #3

declare i64 @ftell(%struct._IO_FILE*) #3

declare i32 @_IO_getc(%struct._IO_FILE*) #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #5 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !1252
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !1118, metadata !1222), !dbg !5466
  store i32 %order, i32* %order.addr, align 4, !tbaa !1230
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !1119, metadata !1222), !dbg !5467
  %0 = load i8*, i8** %address.addr, align 8, !dbg !5468, !tbaa !1252
  %1 = load i32, i32* %order.addr, align 4, !dbg !5469, !tbaa !1230
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ], !dbg !5470

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !5471

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !5473

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !5474, !tbaa !1230
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ], !dbg !5475

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !5476

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !5478

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void, !dbg !5479
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1230
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !1124, metadata !1222), !dbg !5480
  %0 = load i32, i32* %order.addr, align 4, !dbg !5481, !tbaa !1230
  %cmp = icmp ne i32 %0, 0, !dbg !5483
  br i1 %cmp, label %if.then, label %if.end, !dbg !5484

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !dbg !5485, !srcloc !5486
  br label %if.end, !dbg !5485

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5487
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #5 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !1230
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !1127, metadata !1222), !dbg !5488
  %0 = load i32, i32* %order.addr, align 4, !dbg !5489, !tbaa !1230
  %cmp = icmp ne i32 %0, 0, !dbg !5491
  br i1 %cmp, label %if.then, label %if.end, !dbg !5492

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !dbg !5493, !srcloc !5494
  br label %if.end, !dbg !5493

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !5495
}

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1218, !1219}
!llvm.ident = !{!1220}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !31, subprograms: !508, globals: !1128)
!1 = !DIFile(filename: "zipimport.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !10, !16, !23}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 329, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "./Modules/zipimport.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8, !9}
!6 = !DIEnumerator(name: "FL_ERROR", value: 0)
!7 = !DIEnumerator(name: "FL_NOT_FOUND", value: 1)
!8 = !DIEnumerator(name: "FL_MODULE_FOUND", value: 2)
!9 = !DIEnumerator(name: "FL_NS_FOUND", value: 3)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "zi_module_info", file: !4, line: 262, size: 32, align: 32, elements: !11)
!11 = !{!12, !13, !14, !15}
!12 = !DIEnumerator(name: "MI_ERROR", value: 0)
!13 = !DIEnumerator(name: "MI_NOT_FOUND", value: 1)
!14 = !DIEnumerator(name: "MI_MODULE", value: 2)
!15 = !DIEnumerator(name: "MI_PACKAGE", value: 3)
!16 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyUnicode_Kind", file: !17, line: 451, size: 32, align: 32, elements: !18)
!17 = !DIFile(filename: "Include/unicodeobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!18 = !{!19, !20, !21, !22}
!19 = !DIEnumerator(name: "PyUnicode_WCHAR_KIND", value: 0)
!20 = !DIEnumerator(name: "PyUnicode_1BYTE_KIND", value: 1)
!21 = !DIEnumerator(name: "PyUnicode_2BYTE_KIND", value: 2)
!22 = !DIEnumerator(name: "PyUnicode_4BYTE_KIND", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !24, line: 23, size: 32, align: 32, elements: !25)
!24 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!25 = !{!26, !27, !28, !29, !30}
!26 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!27 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!28 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!29 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!30 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!31 = !{!32, !33, !378, !396, !72, !404, !407, !415, !80, !434, !45, !433, !435, !437, !439, !441, !449, !105, !39, !59, !450}
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !35, line: 109, baseType: !36)
!35 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!36 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !35, line: 105, size: 128, align: 64, elements: !37)
!37 = !{!38, !46}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !36, file: !35, line: 107, baseType: !39, size: 64, align: 64)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !40, line: 177, baseType: !41)
!40 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !42, line: 102, baseType: !43)
!42 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !44, line: 181, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!45 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !36, file: !35, line: 108, baseType: !47, size: 64, align: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64, align: 64)
!48 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !35, line: 334, size: 3200, align: 64, elements: !49)
!49 = !{!50, !56, !60, !61, !62, !67, !130, !135, !140, !141, !146, !198, !229, !241, !247, !248, !249, !251, !253, !284, !285, !286, !295, !296, !301, !302, !304, !306, !316, !326, !344, !345, !346, !348, !350, !351, !353, !358, !363, !368, !369, !370, !371, !372, !373, !374, !375, !377}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !48, file: !35, line: 335, baseType: !51, size: 192, align: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !35, line: 114, baseType: !52)
!52 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 111, size: 192, align: 64, elements: !53)
!53 = !{!54, !55}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !52, file: !35, line: 112, baseType: !34, size: 128, align: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !52, file: !35, line: 113, baseType: !39, size: 64, align: 64, offset: 128)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !48, file: !35, line: 336, baseType: !57, size: 64, align: 64, offset: 192)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64, align: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !48, file: !35, line: 337, baseType: !39, size: 64, align: 64, offset: 256)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !48, file: !35, line: 337, baseType: !39, size: 64, align: 64, offset: 320)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !48, file: !35, line: 341, baseType: !63, size: 64, align: 64, offset: 384)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !35, line: 308, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64, align: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !33}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !48, file: !35, line: 342, baseType: !68, size: 64, align: 64, offset: 448)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !35, line: 314, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64, align: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !33, !73, !72}
!72 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !42, line: 48, baseType: !75)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 246, size: 1728, align: 64, elements: !77)
!76 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!77 = !{!78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !99, !100, !101, !102, !104, !106, !108, !112, !115, !117, !118, !119, !120, !121, !125, !126}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !76, line: 247, baseType: !72, size: 32, align: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !75, file: !76, line: 252, baseType: !80, size: 64, align: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64, align: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !75, file: !76, line: 253, baseType: !80, size: 64, align: 64, offset: 128)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !75, file: !76, line: 254, baseType: !80, size: 64, align: 64, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !75, file: !76, line: 255, baseType: !80, size: 64, align: 64, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !75, file: !76, line: 256, baseType: !80, size: 64, align: 64, offset: 320)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !75, file: !76, line: 257, baseType: !80, size: 64, align: 64, offset: 384)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !75, file: !76, line: 258, baseType: !80, size: 64, align: 64, offset: 448)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !75, file: !76, line: 259, baseType: !80, size: 64, align: 64, offset: 512)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !75, file: !76, line: 261, baseType: !80, size: 64, align: 64, offset: 576)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !75, file: !76, line: 262, baseType: !80, size: 64, align: 64, offset: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !75, file: !76, line: 263, baseType: !80, size: 64, align: 64, offset: 704)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !75, file: !76, line: 265, baseType: !92, size: 64, align: 64, offset: 768)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64, align: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !76, line: 161, size: 192, align: 64, elements: !94)
!94 = !{!95, !96, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !93, file: !76, line: 162, baseType: !92, size: 64, align: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !93, file: !76, line: 163, baseType: !97, size: 64, align: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64, align: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !93, file: !76, line: 167, baseType: !72, size: 32, align: 32, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !75, file: !76, line: 267, baseType: !97, size: 64, align: 64, offset: 832)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !75, file: !76, line: 269, baseType: !72, size: 32, align: 32, offset: 896)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !75, file: !76, line: 273, baseType: !72, size: 32, align: 32, offset: 928)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !75, file: !76, line: 275, baseType: !103, size: 64, align: 64, offset: 960)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 140, baseType: !45)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !75, file: !76, line: 279, baseType: !105, size: 16, align: 16, offset: 1024)
!105 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !75, file: !76, line: 280, baseType: !107, size: 8, align: 8, offset: 1040)
!107 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !75, file: !76, line: 281, baseType: !109, size: 8, align: 8, offset: 1048)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 8, align: 8, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 1)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !75, file: !76, line: 285, baseType: !113, size: 64, align: 64, offset: 1088)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64, align: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !76, line: 155, baseType: null)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !76, line: 294, baseType: !116, size: 64, align: 64, offset: 1152)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 141, baseType: !45)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !75, file: !76, line: 303, baseType: !32, size: 64, align: 64, offset: 1216)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !75, file: !76, line: 304, baseType: !32, size: 64, align: 64, offset: 1280)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !75, file: !76, line: 305, baseType: !32, size: 64, align: 64, offset: 1344)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !75, file: !76, line: 306, baseType: !32, size: 64, align: 64, offset: 1408)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !75, file: !76, line: 307, baseType: !122, size: 64, align: 64, offset: 1472)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 62, baseType: !124)
!123 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!124 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !75, file: !76, line: 309, baseType: !72, size: 32, align: 32, offset: 1536)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !75, file: !76, line: 311, baseType: !127, size: 160, align: 8, offset: 1568)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 160, align: 8, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 20)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !48, file: !35, line: 343, baseType: !131, size: 64, align: 64, offset: 512)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !35, line: 316, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64, align: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!33, !33, !80}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !48, file: !35, line: 344, baseType: !136, size: 64, align: 64, offset: 576)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !35, line: 318, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64, align: 64)
!138 = !DISubroutineType(types: !139)
!139 = !{!72, !33, !80, !33}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !48, file: !35, line: 345, baseType: !32, size: 64, align: 64, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !48, file: !35, line: 346, baseType: !142, size: 64, align: 64, offset: 704)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !35, line: 320, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64, align: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!33, !33}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !48, file: !35, line: 350, baseType: !147, size: 64, align: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64, align: 64)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !35, line: 278, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 236, size: 2176, align: 64, elements: !150)
!150 = !{!151, !156, !157, !158, !159, !160, !165, !167, !168, !169, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !149, file: !35, line: 241, baseType: !152, size: 64, align: 64)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !35, line: 166, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64, align: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!33, !33, !33}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !149, file: !35, line: 242, baseType: !152, size: 64, align: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !149, file: !35, line: 243, baseType: !152, size: 64, align: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !149, file: !35, line: 244, baseType: !152, size: 64, align: 64, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !149, file: !35, line: 245, baseType: !152, size: 64, align: 64, offset: 256)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !149, file: !35, line: 246, baseType: !161, size: 64, align: 64, offset: 320)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !35, line: 167, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64, align: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!33, !33, !33, !33}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !149, file: !35, line: 247, baseType: !166, size: 64, align: 64, offset: 384)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !35, line: 165, baseType: !143)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !149, file: !35, line: 248, baseType: !166, size: 64, align: 64, offset: 448)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !149, file: !35, line: 249, baseType: !166, size: 64, align: 64, offset: 512)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !149, file: !35, line: 250, baseType: !170, size: 64, align: 64, offset: 576)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !35, line: 168, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64, align: 64)
!172 = !DISubroutineType(types: !173)
!173 = !{!72, !33}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !149, file: !35, line: 251, baseType: !166, size: 64, align: 64, offset: 640)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !149, file: !35, line: 252, baseType: !152, size: 64, align: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !149, file: !35, line: 253, baseType: !152, size: 64, align: 64, offset: 768)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !149, file: !35, line: 254, baseType: !152, size: 64, align: 64, offset: 832)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !149, file: !35, line: 255, baseType: !152, size: 64, align: 64, offset: 896)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !149, file: !35, line: 256, baseType: !152, size: 64, align: 64, offset: 960)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !149, file: !35, line: 257, baseType: !166, size: 64, align: 64, offset: 1024)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !149, file: !35, line: 258, baseType: !32, size: 64, align: 64, offset: 1088)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !149, file: !35, line: 259, baseType: !166, size: 64, align: 64, offset: 1152)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !149, file: !35, line: 261, baseType: !152, size: 64, align: 64, offset: 1216)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !149, file: !35, line: 262, baseType: !152, size: 64, align: 64, offset: 1280)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !149, file: !35, line: 263, baseType: !152, size: 64, align: 64, offset: 1344)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !149, file: !35, line: 264, baseType: !152, size: 64, align: 64, offset: 1408)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !149, file: !35, line: 265, baseType: !161, size: 64, align: 64, offset: 1472)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !149, file: !35, line: 266, baseType: !152, size: 64, align: 64, offset: 1536)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !149, file: !35, line: 267, baseType: !152, size: 64, align: 64, offset: 1600)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !149, file: !35, line: 268, baseType: !152, size: 64, align: 64, offset: 1664)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !149, file: !35, line: 269, baseType: !152, size: 64, align: 64, offset: 1728)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !149, file: !35, line: 270, baseType: !152, size: 64, align: 64, offset: 1792)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !149, file: !35, line: 272, baseType: !152, size: 64, align: 64, offset: 1856)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !149, file: !35, line: 273, baseType: !152, size: 64, align: 64, offset: 1920)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !149, file: !35, line: 274, baseType: !152, size: 64, align: 64, offset: 1984)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !149, file: !35, line: 275, baseType: !152, size: 64, align: 64, offset: 2048)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !149, file: !35, line: 277, baseType: !166, size: 64, align: 64, offset: 2112)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !48, file: !35, line: 351, baseType: !199, size: 64, align: 64, offset: 832)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64, align: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !35, line: 292, baseType: !201)
!201 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 280, size: 640, align: 64, elements: !202)
!202 = !{!203, !208, !209, !214, !215, !216, !221, !222, !227, !228}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !201, file: !35, line: 281, baseType: !204, size: 64, align: 64)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !35, line: 169, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64, align: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!39, !33}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !201, file: !35, line: 282, baseType: !152, size: 64, align: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !201, file: !35, line: 283, baseType: !210, size: 64, align: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !35, line: 170, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64, align: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!33, !33, !39}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !201, file: !35, line: 284, baseType: !210, size: 64, align: 64, offset: 192)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !201, file: !35, line: 285, baseType: !32, size: 64, align: 64, offset: 256)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !201, file: !35, line: 286, baseType: !217, size: 64, align: 64, offset: 320)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !35, line: 172, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64, align: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!72, !33, !39, !33}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !201, file: !35, line: 287, baseType: !32, size: 64, align: 64, offset: 384)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !201, file: !35, line: 288, baseType: !223, size: 64, align: 64, offset: 448)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !35, line: 231, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!72, !33, !33}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !201, file: !35, line: 290, baseType: !152, size: 64, align: 64, offset: 512)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !201, file: !35, line: 291, baseType: !210, size: 64, align: 64, offset: 576)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !48, file: !35, line: 352, baseType: !230, size: 64, align: 64, offset: 896)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64, align: 64)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !35, line: 298, baseType: !232)
!232 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 294, size: 192, align: 64, elements: !233)
!233 = !{!234, !235, !236}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !232, file: !35, line: 295, baseType: !204, size: 64, align: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !232, file: !35, line: 296, baseType: !152, size: 64, align: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !232, file: !35, line: 297, baseType: !237, size: 64, align: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !35, line: 174, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64, align: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{!72, !33, !33, !33}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !48, file: !35, line: 356, baseType: !242, size: 64, align: 64, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !35, line: 321, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64, align: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!246, !33}
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !40, line: 186, baseType: !39)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !48, file: !35, line: 357, baseType: !161, size: 64, align: 64, offset: 1024)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !48, file: !35, line: 358, baseType: !142, size: 64, align: 64, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !48, file: !35, line: 359, baseType: !250, size: 64, align: 64, offset: 1152)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !35, line: 317, baseType: !153)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !48, file: !35, line: 360, baseType: !252, size: 64, align: 64, offset: 1216)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !35, line: 319, baseType: !238)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !48, file: !35, line: 363, baseType: !254, size: 64, align: 64, offset: 1280)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64, align: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !35, line: 304, baseType: !256)
!256 = !DICompositeType(tag: DW_TAG_structure_type, file: !35, line: 301, size: 128, align: 64, elements: !257)
!257 = !{!258, !279}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !256, file: !35, line: 302, baseType: !259, size: 64, align: 64)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !35, line: 193, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64, align: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!72, !33, !263, !72}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64, align: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !35, line: 191, baseType: !265)
!265 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !35, line: 178, size: 640, align: 64, elements: !266)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !276, !277, !278}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !265, file: !35, line: 179, baseType: !32, size: 64, align: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !265, file: !35, line: 180, baseType: !33, size: 64, align: 64, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !265, file: !35, line: 181, baseType: !39, size: 64, align: 64, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !265, file: !35, line: 182, baseType: !39, size: 64, align: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !265, file: !35, line: 184, baseType: !72, size: 32, align: 32, offset: 256)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !265, file: !35, line: 185, baseType: !72, size: 32, align: 32, offset: 288)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !265, file: !35, line: 186, baseType: !80, size: 64, align: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !265, file: !35, line: 187, baseType: !275, size: 64, align: 64, offset: 384)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64, align: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !265, file: !35, line: 188, baseType: !275, size: 64, align: 64, offset: 448)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !265, file: !35, line: 189, baseType: !275, size: 64, align: 64, offset: 512)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !265, file: !35, line: 190, baseType: !32, size: 64, align: 64, offset: 576)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !256, file: !35, line: 303, baseType: !280, size: 64, align: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !35, line: 194, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64, align: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !33, !263}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !48, file: !35, line: 366, baseType: !124, size: 64, align: 64, offset: 1344)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !48, file: !35, line: 368, baseType: !57, size: 64, align: 64, offset: 1408)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !48, file: !35, line: 372, baseType: !287, size: 64, align: 64, offset: 1472)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !35, line: 233, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64, align: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!72, !33, !291, !32}
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !35, line: 232, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64, align: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!72, !33, !32}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !48, file: !35, line: 375, baseType: !170, size: 64, align: 64, offset: 1536)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !48, file: !35, line: 379, baseType: !297, size: 64, align: 64, offset: 1600)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !35, line: 322, baseType: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, align: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!33, !33, !33, !72}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !48, file: !35, line: 382, baseType: !39, size: 64, align: 64, offset: 1664)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !48, file: !35, line: 385, baseType: !303, size: 64, align: 64, offset: 1728)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !35, line: 323, baseType: !143)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !48, file: !35, line: 386, baseType: !305, size: 64, align: 64, offset: 1792)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !35, line: 324, baseType: !143)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !48, file: !35, line: 389, baseType: !307, size: 64, align: 64, offset: 1856)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64, align: 64)
!308 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !309, line: 40, size: 256, align: 64, elements: !310)
!309 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!310 = !{!311, !312, !314, !315}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !308, file: !309, line: 41, baseType: !57, size: 64, align: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !308, file: !309, line: 42, baseType: !313, size: 64, align: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !309, line: 18, baseType: !153)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !308, file: !309, line: 43, baseType: !72, size: 32, align: 32, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !308, file: !309, line: 45, baseType: !57, size: 64, align: 64, offset: 192)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !48, file: !35, line: 390, baseType: !317, size: 64, align: 64, offset: 1920)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64, align: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !319, line: 18, size: 320, align: 64, elements: !320)
!319 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!320 = !{!321, !322, !323, !324, !325}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !318, file: !319, line: 19, baseType: !80, size: 64, align: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !318, file: !319, line: 20, baseType: !72, size: 32, align: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !318, file: !319, line: 21, baseType: !39, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !318, file: !319, line: 22, baseType: !72, size: 32, align: 32, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !318, file: !319, line: 23, baseType: !80, size: 64, align: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !48, file: !35, line: 391, baseType: !327, size: 64, align: 64, offset: 1984)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64, align: 64)
!328 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !329, line: 11, size: 320, align: 64, elements: !330)
!329 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!330 = !{!331, !332, !337, !342, !343}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !328, file: !329, line: 12, baseType: !80, size: 64, align: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !328, file: !329, line: 13, baseType: !333, size: 64, align: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !329, line: 8, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64, align: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!33, !33, !32}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !328, file: !329, line: 14, baseType: !338, size: 64, align: 64, offset: 128)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !329, line: 9, baseType: !339)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64, align: 64)
!340 = !DISubroutineType(types: !341)
!341 = !{!72, !33, !33, !32}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !328, file: !329, line: 15, baseType: !80, size: 64, align: 64, offset: 192)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !328, file: !329, line: 16, baseType: !32, size: 64, align: 64, offset: 256)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !48, file: !35, line: 392, baseType: !47, size: 64, align: 64, offset: 2048)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !48, file: !35, line: 393, baseType: !33, size: 64, align: 64, offset: 2112)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !48, file: !35, line: 394, baseType: !347, size: 64, align: 64, offset: 2176)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !35, line: 325, baseType: !162)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !48, file: !35, line: 395, baseType: !349, size: 64, align: 64, offset: 2240)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !35, line: 326, baseType: !238)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !48, file: !35, line: 396, baseType: !39, size: 64, align: 64, offset: 2304)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !48, file: !35, line: 397, baseType: !352, size: 64, align: 64, offset: 2368)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !35, line: 327, baseType: !238)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !48, file: !35, line: 398, baseType: !354, size: 64, align: 64, offset: 2432)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !35, line: 329, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!33, !47, !39}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !48, file: !35, line: 399, baseType: !359, size: 64, align: 64, offset: 2496)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !35, line: 328, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64, align: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!33, !47, !33, !33}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !48, file: !35, line: 400, baseType: !364, size: 64, align: 64, offset: 2560)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !35, line: 307, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !32}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !48, file: !35, line: 401, baseType: !170, size: 64, align: 64, offset: 2624)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !48, file: !35, line: 402, baseType: !33, size: 64, align: 64, offset: 2688)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !48, file: !35, line: 403, baseType: !33, size: 64, align: 64, offset: 2752)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !48, file: !35, line: 404, baseType: !33, size: 64, align: 64, offset: 2816)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !48, file: !35, line: 405, baseType: !33, size: 64, align: 64, offset: 2880)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !48, file: !35, line: 406, baseType: !33, size: 64, align: 64, offset: 2944)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !48, file: !35, line: 407, baseType: !63, size: 64, align: 64, offset: 3008)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !48, file: !35, line: 410, baseType: !376, size: 32, align: 32, offset: 3072)
!376 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !48, file: !35, line: 412, baseType: !63, size: 64, align: 64, offset: 3136)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64, align: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyASCIIObject", file: !17, line: 351, baseType: !380)
!380 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 217, size: 384, align: 64, elements: !381)
!381 = !{!382, !383, !384, !385, !393}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !380, file: !17, line: 291, baseType: !34, size: 128, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !380, file: !17, line: 292, baseType: !39, size: 64, align: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !380, file: !17, line: 293, baseType: !246, size: 64, align: 64, offset: 192)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !380, file: !17, line: 349, baseType: !386, size: 32, align: 32, offset: 256)
!386 = !DICompositeType(tag: DW_TAG_structure_type, scope: !380, file: !17, line: 294, size: 32, align: 32, elements: !387)
!387 = !{!388, !389, !390, !391, !392}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "interned", scope: !386, file: !17, line: 303, baseType: !376, size: 2, align: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !386, file: !17, line: 331, baseType: !376, size: 3, align: 32, offset: 2)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "compact", scope: !386, file: !17, line: 336, baseType: !376, size: 1, align: 32, offset: 5)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ascii", scope: !386, file: !17, line: 340, baseType: !376, size: 1, align: 32, offset: 6)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ready", scope: !386, file: !17, line: 345, baseType: !376, size: 1, align: 32, offset: 7)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wstr", scope: !380, file: !17, line: 350, baseType: !394, size: 64, align: 64, offset: 320)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64, align: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !123, line: 90, baseType: !72)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "ZipImporter", file: !4, line: 38, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, name: "_zipimporter", file: !4, line: 40, size: 320, align: 64, elements: !399)
!399 = !{!400, !401, !402, !403}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !398, file: !4, line: 41, baseType: !34, size: 128, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "archive", scope: !398, file: !4, line: 42, baseType: !33, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !398, file: !4, line: 44, baseType: !33, size: 64, align: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !398, file: !4, line: 46, baseType: !33, size: 64, align: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !405, line: 75, baseType: !406)
!405 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !44, line: 148, baseType: !45)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64, align: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCompactUnicodeObject", file: !17, line: 363, baseType: !409)
!409 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 356, size: 576, align: 64, elements: !410)
!410 = !{!411, !412, !413, !414}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !409, file: !17, line: 357, baseType: !379, size: 384, align: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "utf8_length", scope: !409, file: !17, line: 358, baseType: !39, size: 64, align: 64, offset: 384)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "utf8", scope: !409, file: !17, line: 360, baseType: !80, size: 64, align: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "wstr_length", scope: !409, file: !17, line: 361, baseType: !39, size: 64, align: 64, offset: 512)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyUnicodeObject", file: !17, line: 376, baseType: !417)
!417 = !DICompositeType(tag: DW_TAG_structure_type, file: !17, line: 368, size: 640, align: 64, elements: !418)
!418 = !{!419, !420}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !417, file: !17, line: 369, baseType: !408, size: 576, align: 64)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !417, file: !17, line: 375, baseType: !421, size: 64, align: 64, offset: 576)
!421 = !DICompositeType(tag: DW_TAG_union_type, scope: !417, file: !17, line: 370, size: 64, align: 64, elements: !422)
!422 = !{!423, !424, !428, !431}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "any", scope: !421, file: !17, line: 371, baseType: !32, size: 64, align: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "latin1", scope: !421, file: !17, line: 372, baseType: !425, size: 64, align: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS1", file: !17, line: 134, baseType: !427)
!427 = !DIBasicType(name: "unsigned char", size: 8, align: 8, encoding: DW_ATE_unsigned_char)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "ucs2", scope: !421, file: !17, line: 373, baseType: !429, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64, align: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS2", file: !17, line: 129, baseType: !105)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "ucs4", scope: !421, file: !17, line: 374, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_UCS4", file: !17, line: 121, baseType: !376)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64, align: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64, align: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64, align: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64, align: 64)
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBytesObject", file: !443, line: 41, baseType: !444)
!443 = !DIFile(filename: "Include/bytesobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!444 = !DICompositeType(tag: DW_TAG_structure_type, file: !443, line: 31, size: 320, align: 64, elements: !445)
!445 = !{!446, !447, !448}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !444, file: !443, line: 32, baseType: !51, size: 192, align: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ob_shash", scope: !444, file: !443, line: 33, baseType: !246, size: 64, align: 64, offset: 192)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "ob_sval", scope: !444, file: !443, line: 34, baseType: !109, size: 8, align: 8, offset: 256)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64, align: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !452, line: 139, baseType: !453)
!452 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!453 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !452, line: 69, size: 1536, align: 64, elements: !454)
!454 = !{!455, !457, !458, !478, !481, !482, !483, !484, !485, !486, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !453, file: !452, line: 72, baseType: !456, size: 64, align: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64, align: 64)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !453, file: !452, line: 73, baseType: !456, size: 64, align: 64, offset: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !453, file: !452, line: 74, baseType: !459, size: 64, align: 64, offset: 128)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64, align: 64)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !452, line: 44, baseType: !461)
!461 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !452, line: 19, size: 832, align: 64, elements: !462)
!462 = !{!463, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !461, file: !452, line: 21, baseType: !464, size: 64, align: 64)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !461, file: !452, line: 22, baseType: !456, size: 64, align: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !461, file: !452, line: 24, baseType: !33, size: 64, align: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !461, file: !452, line: 25, baseType: !33, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !461, file: !452, line: 26, baseType: !33, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !461, file: !452, line: 27, baseType: !33, size: 64, align: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !461, file: !452, line: 28, baseType: !33, size: 64, align: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !461, file: !452, line: 30, baseType: !33, size: 64, align: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !461, file: !452, line: 31, baseType: !33, size: 64, align: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !461, file: !452, line: 32, baseType: !33, size: 64, align: 64, offset: 576)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !461, file: !452, line: 33, baseType: !72, size: 32, align: 32, offset: 640)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !461, file: !452, line: 34, baseType: !72, size: 32, align: 32, offset: 672)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !461, file: !452, line: 37, baseType: !72, size: 32, align: 32, offset: 704)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !461, file: !452, line: 43, baseType: !33, size: 64, align: 64, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !453, file: !452, line: 76, baseType: !479, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64, align: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !452, line: 50, flags: DIFlagFwdDecl)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !453, file: !452, line: 77, baseType: !72, size: 32, align: 32, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !453, file: !452, line: 78, baseType: !59, size: 8, align: 8, offset: 288)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !453, file: !452, line: 80, baseType: !59, size: 8, align: 8, offset: 296)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !453, file: !452, line: 85, baseType: !72, size: 32, align: 32, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !453, file: !452, line: 86, baseType: !72, size: 32, align: 32, offset: 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !453, file: !452, line: 88, baseType: !487, size: 64, align: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !452, line: 54, baseType: !488)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64, align: 64)
!489 = !DISubroutineType(types: !490)
!490 = !{!72, !33, !479, !72, !33}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !453, file: !452, line: 89, baseType: !487, size: 64, align: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !453, file: !452, line: 90, baseType: !33, size: 64, align: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !453, file: !452, line: 91, baseType: !33, size: 64, align: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !453, file: !452, line: 93, baseType: !33, size: 64, align: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !453, file: !452, line: 94, baseType: !33, size: 64, align: 64, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !453, file: !452, line: 95, baseType: !33, size: 64, align: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !453, file: !452, line: 97, baseType: !33, size: 64, align: 64, offset: 832)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !453, file: !452, line: 98, baseType: !33, size: 64, align: 64, offset: 896)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !453, file: !452, line: 99, baseType: !33, size: 64, align: 64, offset: 960)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !453, file: !452, line: 101, baseType: !33, size: 64, align: 64, offset: 1024)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !453, file: !452, line: 103, baseType: !72, size: 32, align: 32, offset: 1088)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !453, file: !452, line: 105, baseType: !33, size: 64, align: 64, offset: 1152)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !453, file: !452, line: 106, baseType: !45, size: 64, align: 64, offset: 1216)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !453, file: !452, line: 108, baseType: !72, size: 32, align: 32, offset: 1280)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !453, file: !452, line: 109, baseType: !33, size: 64, align: 64, offset: 1344)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !453, file: !452, line: 134, baseType: !365, size: 64, align: 64, offset: 1408)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !453, file: !452, line: 135, baseType: !32, size: 64, align: 64, offset: 1472)
!508 = !{!509, !524, !544, !549, !559, !571, !584, !613, !618, !626, !637, !649, !688, !736, !751, !771, !785, !818, !826, !840, !846, !853, !868, !876, !897, !903, !926, !937, !944, !1024, !1111, !1120, !1125}
!509 = !DISubprogram(name: "PyInit_zipimport", scope: !4, file: !4, line: 1471, type: !510, isLocal: false, isDefinition: true, scopeLine: 1472, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit_zipimport, variables: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!33}
!512 = !{!513, !514}
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !509, file: !4, line: 1473, type: !33)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !515, file: !4, line: 1484, type: !517)
!515 = distinct !DILexicalBlock(scope: !516, file: !4, line: 1482, column: 26)
!516 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1482, column: 9)
!517 = !DICompositeType(tag: DW_TAG_structure_type, name: "st_zip_searchorder", file: !4, line: 12, size: 160, align: 32, elements: !518)
!518 = !{!519, !523}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "suffix", scope: !517, file: !4, line: 13, baseType: !520, size: 112, align: 8)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 112, align: 8, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 14)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !517, file: !4, line: 14, baseType: !72, size: 32, align: 32, offset: 128)
!524 = !DISubprogram(name: "zipimporter_dealloc", scope: !4, file: !4, line: 185, type: !525, isLocal: true, isDefinition: true, scopeLine: 186, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct._zipimporter*)* @zipimporter_dealloc, variables: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{null, !396}
!527 = !{!528, !529, !531, !534, !536, !539, !541}
!528 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !524, file: !4, line: 185, type: !396)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !530, file: !4, line: 188, type: !33)
!530 = distinct !DILexicalBlock(scope: !524, file: !4, line: 188, column: 8)
!531 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !532, file: !4, line: 188, type: !33)
!532 = distinct !DILexicalBlock(scope: !533, file: !4, line: 188, column: 105)
!533 = distinct !DILexicalBlock(scope: !530, file: !4, line: 188, column: 71)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !535, file: !4, line: 189, type: !33)
!535 = distinct !DILexicalBlock(scope: !524, file: !4, line: 189, column: 8)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !537, file: !4, line: 189, type: !33)
!537 = distinct !DILexicalBlock(scope: !538, file: !4, line: 189, column: 104)
!538 = distinct !DILexicalBlock(scope: !535, file: !4, line: 189, column: 70)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !540, file: !4, line: 190, type: !33)
!540 = distinct !DILexicalBlock(scope: !524, file: !4, line: 190, column: 8)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !542, file: !4, line: 190, type: !33)
!542 = distinct !DILexicalBlock(scope: !543, file: !4, line: 190, column: 103)
!543 = distinct !DILexicalBlock(scope: !540, file: !4, line: 190, column: 69)
!544 = !DISubprogram(name: "zipimporter_repr", scope: !4, file: !4, line: 195, type: !545, isLocal: true, isDefinition: true, scopeLine: 196, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._zipimporter*)* @zipimporter_repr, variables: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!33, !396}
!547 = !{!548}
!548 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !544, file: !4, line: 195, type: !396)
!549 = !DISubprogram(name: "zipimporter_traverse", scope: !4, file: !4, line: 177, type: !289, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @zipimporter_traverse, variables: !550)
!550 = !{!551, !552, !553, !554, !555}
!551 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !549, file: !4, line: 177, type: !33)
!552 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !549, file: !4, line: 177, type: !291)
!553 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !549, file: !4, line: 177, type: !32)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !549, file: !4, line: 179, type: !396)
!555 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !556, file: !4, line: 180, type: !72)
!556 = distinct !DILexicalBlock(scope: !557, file: !4, line: 180, column: 27)
!557 = distinct !DILexicalBlock(scope: !558, file: !4, line: 180, column: 14)
!558 = distinct !DILexicalBlock(scope: !549, file: !4, line: 180, column: 8)
!559 = !DISubprogram(name: "zipimporter_find_module", scope: !4, file: !4, line: 379, type: !154, isLocal: true, isDefinition: true, scopeLine: 380, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_find_module, variables: !560)
!560 = !{!561, !562, !563, !564, !565, !566, !567, !568}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !559, file: !4, line: 379, type: !33)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !559, file: !4, line: 379, type: !33)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !559, file: !4, line: 381, type: !396)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !559, file: !4, line: 382, type: !33)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !559, file: !4, line: 383, type: !33)
!566 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namespace_portion", scope: !559, file: !4, line: 384, type: !33)
!567 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !559, file: !4, line: 385, type: !33)
!568 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !569, file: !4, line: 395, type: !33)
!569 = distinct !DILexicalBlock(scope: !570, file: !4, line: 395, column: 12)
!570 = distinct !DILexicalBlock(scope: !559, file: !4, line: 390, column: 62)
!571 = !DISubprogram(name: "find_loader", scope: !4, file: !4, line: 343, type: !572, isLocal: true, isDefinition: true, scopeLine: 344, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._zipimporter*, %struct._object*, %struct._object**)* @find_loader, variables: !576)
!572 = !DISubroutineType(types: !573)
!573 = !{!574, !396, !33, !575}
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "find_loader_result", file: !4, line: 334, baseType: !3)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64, align: 64)
!576 = !{!577, !578, !579, !580, !581}
!577 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !571, file: !4, line: 343, type: !396)
!578 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !571, file: !4, line: 343, type: !33)
!579 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "namespace_portion", arg: 3, scope: !571, file: !4, line: 343, type: !575)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mi", scope: !571, file: !4, line: 345, type: !10)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "is_dir", scope: !582, file: !4, line: 355, type: !72)
!582 = distinct !DILexicalBlock(scope: !583, file: !4, line: 352, column: 29)
!583 = distinct !DILexicalBlock(scope: !571, file: !4, line: 352, column: 9)
!584 = !DISubprogram(name: "get_module_info", scope: !4, file: !4, line: 294, type: !585, isLocal: true, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._zipimporter*, %struct._object*)* @get_module_info, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!10, !396, !33}
!587 = !{!588, !589, !590, !591, !592, !593, !594, !596, !598, !605, !607, !611}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !584, file: !4, line: 294, type: !396)
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !584, file: !4, line: 294, type: !33)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !584, file: !4, line: 296, type: !33)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !584, file: !4, line: 297, type: !33)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !584, file: !4, line: 297, type: !33)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "item", scope: !584, file: !4, line: 297, type: !33)
!594 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zso", scope: !584, file: !4, line: 298, type: !595)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64, align: 64)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !597, file: !4, line: 305, type: !33)
!597 = distinct !DILexicalBlock(scope: !584, file: !4, line: 305, column: 8)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !4, line: 312, type: !33)
!599 = distinct !DILexicalBlock(scope: !600, file: !4, line: 312, column: 16)
!600 = distinct !DILexicalBlock(scope: !601, file: !4, line: 311, column: 37)
!601 = distinct !DILexicalBlock(scope: !602, file: !4, line: 311, column: 13)
!602 = distinct !DILexicalBlock(scope: !603, file: !4, line: 309, column: 54)
!603 = distinct !DILexicalBlock(scope: !604, file: !4, line: 309, column: 5)
!604 = distinct !DILexicalBlock(scope: !584, file: !4, line: 309, column: 5)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !4, line: 316, type: !33)
!606 = distinct !DILexicalBlock(scope: !602, file: !4, line: 316, column: 12)
!607 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !608, file: !4, line: 318, type: !33)
!608 = distinct !DILexicalBlock(scope: !609, file: !4, line: 318, column: 16)
!609 = distinct !DILexicalBlock(scope: !610, file: !4, line: 317, column: 33)
!610 = distinct !DILexicalBlock(scope: !602, file: !4, line: 317, column: 13)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !612, file: !4, line: 325, type: !33)
!612 = distinct !DILexicalBlock(scope: !584, file: !4, line: 325, column: 8)
!613 = !DISubprogram(name: "get_subname", scope: !4, file: !4, line: 209, type: !144, isLocal: true, isDefinition: true, scopeLine: 210, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @get_subname, variables: !614)
!614 = !{!615, !616, !617}
!615 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 1, scope: !613, file: !4, line: 209, type: !33)
!616 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !613, file: !4, line: 211, type: !39)
!617 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dot", scope: !613, file: !4, line: 211, type: !39)
!618 = !DISubprogram(name: "make_filename", scope: !4, file: !4, line: 229, type: !154, isLocal: true, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @make_filename, variables: !619)
!619 = !{!620, !621, !622, !623, !624, !625}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prefix", arg: 1, scope: !618, file: !4, line: 229, type: !33)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !618, file: !4, line: 229, type: !33)
!622 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathobj", scope: !618, file: !4, line: 231, type: !33)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !618, file: !4, line: 232, type: !432)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !618, file: !4, line: 232, type: !432)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !618, file: !4, line: 233, type: !39)
!626 = !DISubprogram(name: "check_is_directory", scope: !4, file: !4, line: 275, type: !627, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._zipimporter*, %struct._object*, %struct._object*)* @check_is_directory, variables: !629)
!627 = !DISubroutineType(types: !628)
!628 = !{!72, !396, !33, !33}
!629 = !{!630, !631, !632, !633, !634, !635}
!630 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !626, file: !4, line: 275, type: !396)
!631 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "prefix", arg: 2, scope: !626, file: !4, line: 275, type: !33)
!632 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 3, scope: !626, file: !4, line: 275, type: !33)
!633 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dirpath", scope: !626, file: !4, line: 277, type: !33)
!634 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !626, file: !4, line: 278, type: !72)
!635 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !636, file: !4, line: 288, type: !33)
!636 = distinct !DILexicalBlock(scope: !626, file: !4, line: 288, column: 8)
!637 = !DISubprogram(name: "zipimporter_find_loader", scope: !4, file: !4, line: 415, type: !154, isLocal: true, isDefinition: true, scopeLine: 416, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_find_loader, variables: !638)
!638 = !{!639, !640, !641, !642, !643, !644, !645, !646}
!639 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !637, file: !4, line: 415, type: !33)
!640 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !637, file: !4, line: 415, type: !33)
!641 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !637, file: !4, line: 417, type: !396)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !637, file: !4, line: 418, type: !33)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !637, file: !4, line: 419, type: !33)
!644 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !637, file: !4, line: 420, type: !33)
!645 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "namespace_portion", scope: !637, file: !4, line: 421, type: !33)
!646 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !647, file: !4, line: 437, type: !33)
!647 = distinct !DILexicalBlock(scope: !648, file: !4, line: 437, column: 12)
!648 = distinct !DILexicalBlock(scope: !637, file: !4, line: 426, column: 62)
!649 = !DISubprogram(name: "zipimporter_load_module", scope: !4, file: !4, line: 445, type: !154, isLocal: true, isDefinition: true, scopeLine: 446, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_load_module, variables: !650)
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !663, !664, !665, !666, !668, !670, !672, !676, !678, !680, !683, !685}
!651 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !649, file: !4, line: 445, type: !33)
!652 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !649, file: !4, line: 445, type: !33)
!653 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !649, file: !4, line: 447, type: !396)
!654 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !649, file: !4, line: 448, type: !33)
!655 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mod", scope: !649, file: !4, line: 448, type: !33)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dict", scope: !649, file: !4, line: 448, type: !33)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !649, file: !4, line: 449, type: !33)
!658 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modpath", scope: !649, file: !4, line: 450, type: !33)
!659 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispackage", scope: !649, file: !4, line: 451, type: !72)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pkgpath", scope: !661, file: !4, line: 475, type: !33)
!661 = distinct !DILexicalBlock(scope: !662, file: !4, line: 472, column: 20)
!662 = distinct !DILexicalBlock(scope: !649, file: !4, line: 472, column: 9)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !661, file: !4, line: 475, type: !33)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !661, file: !4, line: 475, type: !33)
!665 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !661, file: !4, line: 476, type: !72)
!666 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !667, file: !4, line: 485, type: !33)
!667 = distinct !DILexicalBlock(scope: !661, file: !4, line: 485, column: 12)
!668 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !669, file: !4, line: 493, type: !33)
!669 = distinct !DILexicalBlock(scope: !661, file: !4, line: 493, column: 12)
!670 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !671, file: !4, line: 498, type: !33)
!671 = distinct !DILexicalBlock(scope: !649, file: !4, line: 498, column: 8)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !673, file: !4, line: 498, type: !33)
!673 = distinct !DILexicalBlock(scope: !674, file: !4, line: 498, column: 103)
!674 = distinct !DILexicalBlock(scope: !675, file: !4, line: 498, column: 77)
!675 = distinct !DILexicalBlock(scope: !671, file: !4, line: 498, column: 54)
!676 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !677, file: !4, line: 505, type: !33)
!677 = distinct !DILexicalBlock(scope: !649, file: !4, line: 505, column: 8)
!678 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !679, file: !4, line: 508, type: !33)
!679 = distinct !DILexicalBlock(scope: !649, file: !4, line: 508, column: 8)
!680 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !681, file: !4, line: 508, type: !33)
!681 = distinct !DILexicalBlock(scope: !682, file: !4, line: 508, column: 96)
!682 = distinct !DILexicalBlock(scope: !679, file: !4, line: 508, column: 62)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !684, file: !4, line: 509, type: !33)
!684 = distinct !DILexicalBlock(scope: !649, file: !4, line: 509, column: 8)
!685 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !686, file: !4, line: 509, type: !33)
!686 = distinct !DILexicalBlock(scope: !687, file: !4, line: 509, column: 99)
!687 = distinct !DILexicalBlock(scope: !684, file: !4, line: 509, column: 65)
!688 = !DISubprogram(name: "get_module_code", scope: !4, file: !4, line: 1375, type: !689, isLocal: true, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._zipimporter*, %struct._object*, i32*, %struct._object**)* @get_module_code, variables: !692)
!689 = !DISubroutineType(types: !690)
!690 = !{!33, !396, !33, !691, !575}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64, align: 64)
!692 = !{!693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !705, !711, !712, !713, !715, !719, !723, !725, !729, !731, !733}
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !688, file: !4, line: 1375, type: !396)
!694 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fullname", arg: 2, scope: !688, file: !4, line: 1375, type: !33)
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_ispackage", arg: 3, scope: !688, file: !4, line: 1376, type: !691)
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "p_modpath", arg: 4, scope: !688, file: !4, line: 1376, type: !575)
!697 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !688, file: !4, line: 1378, type: !33)
!698 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !688, file: !4, line: 1378, type: !33)
!699 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !688, file: !4, line: 1378, type: !33)
!700 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !688, file: !4, line: 1379, type: !33)
!701 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !688, file: !4, line: 1379, type: !33)
!702 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zso", scope: !688, file: !4, line: 1380, type: !595)
!703 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !704, file: !4, line: 1387, type: !33)
!704 = distinct !DILexicalBlock(scope: !688, file: !4, line: 1387, column: 8)
!705 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtime", scope: !706, file: !4, line: 1403, type: !404)
!706 = distinct !DILexicalBlock(scope: !707, file: !4, line: 1402, column: 38)
!707 = distinct !DILexicalBlock(scope: !708, file: !4, line: 1402, column: 13)
!708 = distinct !DILexicalBlock(scope: !709, file: !4, line: 1391, column: 54)
!709 = distinct !DILexicalBlock(scope: !710, file: !4, line: 1391, column: 5)
!710 = distinct !DILexicalBlock(scope: !688, file: !4, line: 1391, column: 5)
!711 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispackage", scope: !706, file: !4, line: 1404, type: !72)
!712 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "isbytecode", scope: !706, file: !4, line: 1405, type: !72)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !714, file: !4, line: 1413, type: !33)
!714 = distinct !DILexicalBlock(scope: !706, file: !4, line: 1413, column: 16)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !716, file: !4, line: 1413, type: !33)
!716 = distinct !DILexicalBlock(scope: !717, file: !4, line: 1413, column: 119)
!717 = distinct !DILexicalBlock(scope: !718, file: !4, line: 1413, column: 89)
!718 = distinct !DILexicalBlock(scope: !714, file: !4, line: 1413, column: 66)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !720, file: !4, line: 1422, type: !33)
!720 = distinct !DILexicalBlock(scope: !721, file: !4, line: 1422, column: 20)
!721 = distinct !DILexicalBlock(scope: !722, file: !4, line: 1419, column: 44)
!722 = distinct !DILexicalBlock(scope: !706, file: !4, line: 1419, column: 17)
!723 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !724, file: !4, line: 1432, type: !33)
!724 = distinct !DILexicalBlock(scope: !707, file: !4, line: 1432, column: 16)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !726, file: !4, line: 1432, type: !33)
!726 = distinct !DILexicalBlock(scope: !727, file: !4, line: 1432, column: 119)
!727 = distinct !DILexicalBlock(scope: !728, file: !4, line: 1432, column: 89)
!728 = distinct !DILexicalBlock(scope: !724, file: !4, line: 1432, column: 66)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !730, file: !4, line: 1436, type: !33)
!730 = distinct !DILexicalBlock(scope: !688, file: !4, line: 1436, column: 8)
!731 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !732, file: !4, line: 1437, type: !33)
!732 = distinct !DILexicalBlock(scope: !688, file: !4, line: 1437, column: 8)
!733 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !734, file: !4, line: 1437, type: !33)
!734 = distinct !DILexicalBlock(scope: !735, file: !4, line: 1437, column: 100)
!735 = distinct !DILexicalBlock(scope: !732, file: !4, line: 1437, column: 66)
!736 = !DISubprogram(name: "get_mtime_of_source", scope: !4, file: !4, line: 1322, type: !737, isLocal: true, isDefinition: true, scopeLine: 1323, flags: DIFlagPrototyped, isOptimized: true, function: i64 (%struct._zipimporter*, %struct._object*)* @get_mtime_of_source, variables: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{!404, !396, !33}
!739 = !{!740, !741, !742, !743, !744, !745, !747, !750}
!740 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !736, file: !4, line: 1322, type: !396)
!741 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "path", arg: 2, scope: !736, file: !4, line: 1322, type: !33)
!742 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !736, file: !4, line: 1324, type: !33)
!743 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stripped", scope: !736, file: !4, line: 1324, type: !33)
!744 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mtime", scope: !736, file: !4, line: 1325, type: !404)
!745 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !746, file: !4, line: 1337, type: !33)
!746 = distinct !DILexicalBlock(scope: !736, file: !4, line: 1337, column: 8)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !748, file: !4, line: 1342, type: !72)
!748 = distinct !DILexicalBlock(scope: !749, file: !4, line: 1339, column: 39)
!749 = distinct !DILexicalBlock(scope: !736, file: !4, line: 1338, column: 9)
!750 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "date", scope: !748, file: !4, line: 1342, type: !72)
!751 = !DISubprogram(name: "parse_dostime", scope: !4, file: !4, line: 1301, type: !752, isLocal: true, isDefinition: true, scopeLine: 1302, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i32, i32)* @parse_dostime, variables: !754)
!752 = !DISubroutineType(types: !753)
!753 = !{!404, !72, !72}
!754 = !{!755, !756, !757}
!755 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dostime", arg: 1, scope: !751, file: !4, line: 1301, type: !72)
!756 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dosdate", arg: 2, scope: !751, file: !4, line: 1301, type: !72)
!757 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "stm", scope: !751, file: !4, line: 1303, type: !758)
!758 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !405, line: 133, size: 448, align: 64, elements: !759)
!759 = !{!760, !761, !762, !763, !764, !765, !766, !767, !768, !769, !770}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !758, file: !405, line: 135, baseType: !72, size: 32, align: 32)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !758, file: !405, line: 136, baseType: !72, size: 32, align: 32, offset: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !758, file: !405, line: 137, baseType: !72, size: 32, align: 32, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !758, file: !405, line: 138, baseType: !72, size: 32, align: 32, offset: 96)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !758, file: !405, line: 139, baseType: !72, size: 32, align: 32, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !758, file: !405, line: 140, baseType: !72, size: 32, align: 32, offset: 160)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !758, file: !405, line: 141, baseType: !72, size: 32, align: 32, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !758, file: !405, line: 142, baseType: !72, size: 32, align: 32, offset: 224)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !758, file: !405, line: 143, baseType: !72, size: 32, align: 32, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "tm_gmtoff", scope: !758, file: !405, line: 146, baseType: !45, size: 64, align: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tm_zone", scope: !758, file: !405, line: 147, baseType: !57, size: 64, align: 64, offset: 384)
!771 = !DISubprogram(name: "get_code_from_data", scope: !4, file: !4, line: 1354, type: !772, isLocal: true, isDefinition: true, scopeLine: 1356, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._zipimporter*, i32, i32, i64, %struct._object*)* @get_code_from_data, variables: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!33, !396, !72, !72, !404, !33}
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783}
!775 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !771, file: !4, line: 1354, type: !396)
!776 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ispackage", arg: 2, scope: !771, file: !4, line: 1354, type: !72)
!777 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "isbytecode", arg: 3, scope: !771, file: !4, line: 1354, type: !72)
!778 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtime", arg: 4, scope: !771, file: !4, line: 1355, type: !404)
!779 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "toc_entry", arg: 5, scope: !771, file: !4, line: 1355, type: !33)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !771, file: !4, line: 1357, type: !33)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modpath", scope: !771, file: !4, line: 1357, type: !33)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !771, file: !4, line: 1357, type: !33)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !784, file: !4, line: 1368, type: !33)
!784 = distinct !DILexicalBlock(scope: !771, file: !4, line: 1368, column: 8)
!785 = !DISubprogram(name: "get_data", scope: !4, file: !4, line: 1057, type: !154, isLocal: true, isDefinition: true, scopeLine: 1058, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @get_data, variables: !786)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !810, !814, !816}
!787 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "archive", arg: 1, scope: !785, file: !4, line: 1057, type: !33)
!788 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "toc_entry", arg: 2, scope: !785, file: !4, line: 1057, type: !33)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "raw_data", scope: !785, file: !4, line: 1059, type: !33)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data", scope: !785, file: !4, line: 1059, type: !33)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decompress", scope: !785, file: !4, line: 1059, type: !33)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !785, file: !4, line: 1060, type: !80)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !785, file: !4, line: 1061, type: !73)
!794 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !785, file: !4, line: 1062, type: !72)
!795 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_read", scope: !785, file: !4, line: 1063, type: !39)
!796 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !785, file: !4, line: 1064, type: !45)
!797 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "datapath", scope: !785, file: !4, line: 1065, type: !33)
!798 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compress", scope: !785, file: !4, line: 1066, type: !45)
!799 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data_size", scope: !785, file: !4, line: 1066, type: !45)
!800 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_size", scope: !785, file: !4, line: 1066, type: !45)
!801 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_offset", scope: !785, file: !4, line: 1066, type: !45)
!802 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes_size", scope: !785, file: !4, line: 1066, type: !45)
!803 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !785, file: !4, line: 1067, type: !45)
!804 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "date", scope: !785, file: !4, line: 1067, type: !45)
!805 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crc", scope: !785, file: !4, line: 1067, type: !45)
!806 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !807, file: !4, line: 1137, type: !33)
!807 = distinct !DILexicalBlock(scope: !808, file: !4, line: 1137, column: 12)
!808 = distinct !DILexicalBlock(scope: !809, file: !4, line: 1134, column: 41)
!809 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1134, column: 9)
!810 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !811, file: !4, line: 1149, type: !33)
!811 = distinct !DILexicalBlock(scope: !812, file: !4, line: 1149, column: 12)
!812 = distinct !DILexicalBlock(scope: !813, file: !4, line: 1147, column: 24)
!813 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1147, column: 9)
!814 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !815, file: !4, line: 1162, type: !33)
!815 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1162, column: 8)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !817, file: !4, line: 1164, type: !33)
!817 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1164, column: 8)
!818 = !DISubprogram(name: "get_decompress_func", scope: !4, file: !4, line: 1025, type: !510, isLocal: true, isDefinition: true, scopeLine: 1026, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @get_decompress_func, variables: !819)
!819 = !{!820, !821, !822}
!820 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "zlib", scope: !818, file: !4, line: 1028, type: !33)
!821 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "decompress", scope: !818, file: !4, line: 1029, type: !33)
!822 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !823, file: !4, line: 1042, type: !33)
!823 = distinct !DILexicalBlock(scope: !824, file: !4, line: 1042, column: 12)
!824 = distinct !DILexicalBlock(scope: !825, file: !4, line: 1039, column: 29)
!825 = distinct !DILexicalBlock(scope: !818, file: !4, line: 1039, column: 9)
!826 = !DISubprogram(name: "unmarshal_code", scope: !4, file: !4, line: 1187, type: !827, isLocal: true, isDefinition: true, scopeLine: 1188, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*, i64)* @unmarshal_code, variables: !829)
!827 = !DISubroutineType(types: !828)
!828 = !{!33, !33, !33, !404}
!829 = !{!830, !831, !832, !833, !834, !835, !836}
!830 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !826, file: !4, line: 1187, type: !33)
!831 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "data", arg: 2, scope: !826, file: !4, line: 1187, type: !33)
!832 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "mtime", arg: 3, scope: !826, file: !4, line: 1187, type: !404)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !826, file: !4, line: 1189, type: !33)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !826, file: !4, line: 1190, type: !80)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "size", scope: !826, file: !4, line: 1191, type: !39)
!836 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !837, file: !4, line: 1222, type: !33)
!837 = distinct !DILexicalBlock(scope: !838, file: !4, line: 1222, column: 12)
!838 = distinct !DILexicalBlock(scope: !839, file: !4, line: 1221, column: 60)
!839 = distinct !DILexicalBlock(scope: !826, file: !4, line: 1221, column: 9)
!840 = !DISubprogram(name: "get_long", scope: !4, file: !4, line: 821, type: !841, isLocal: true, isDefinition: true, scopeLine: 821, flags: DIFlagPrototyped, isOptimized: true, function: i64 (i8*)* @get_long, variables: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!45, !434}
!843 = !{!844, !845}
!844 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "buf", arg: 1, scope: !840, file: !4, line: 821, type: !434)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "x", scope: !840, file: !4, line: 822, type: !45)
!846 = !DISubprogram(name: "eq_mtime", scope: !4, file: !4, line: 1172, type: !847, isLocal: true, isDefinition: true, scopeLine: 1173, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i64, i64)* @eq_mtime, variables: !849)
!847 = !DISubroutineType(types: !848)
!848 = !{!72, !404, !404}
!849 = !{!850, !851, !852}
!850 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t1", arg: 1, scope: !846, file: !4, line: 1172, type: !404)
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "t2", arg: 2, scope: !846, file: !4, line: 1172, type: !404)
!852 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !846, file: !4, line: 1174, type: !404)
!853 = !DISubprogram(name: "compile_source", scope: !4, file: !4, line: 1276, type: !154, isLocal: true, isDefinition: true, scopeLine: 1277, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @compile_source, variables: !854)
!854 = !{!855, !856, !857, !858, !859, !860, !864, !866}
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "pathname", arg: 1, scope: !853, file: !4, line: 1276, type: !33)
!856 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "source", arg: 2, scope: !853, file: !4, line: 1276, type: !33)
!857 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !853, file: !4, line: 1278, type: !33)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixed_source", scope: !853, file: !4, line: 1278, type: !33)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "pathbytes", scope: !853, file: !4, line: 1278, type: !33)
!860 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !861, file: !4, line: 1286, type: !33)
!861 = distinct !DILexicalBlock(scope: !862, file: !4, line: 1286, column: 12)
!862 = distinct !DILexicalBlock(scope: !863, file: !4, line: 1285, column: 37)
!863 = distinct !DILexicalBlock(scope: !853, file: !4, line: 1285, column: 9)
!864 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !865, file: !4, line: 1293, type: !33)
!865 = distinct !DILexicalBlock(scope: !853, file: !4, line: 1293, column: 8)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !867, file: !4, line: 1294, type: !33)
!867 = distinct !DILexicalBlock(scope: !853, file: !4, line: 1294, column: 8)
!868 = !DISubprogram(name: "normalize_line_endings", scope: !4, file: !4, line: 1236, type: !144, isLocal: true, isDefinition: true, scopeLine: 1237, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @normalize_line_endings, variables: !869)
!869 = !{!870, !871, !872, !873, !874, !875}
!870 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "source", arg: 1, scope: !868, file: !4, line: 1236, type: !33)
!871 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "buf", scope: !868, file: !4, line: 1238, type: !80)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "q", scope: !868, file: !4, line: 1238, type: !80)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !868, file: !4, line: 1238, type: !80)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fixed_source", scope: !868, file: !4, line: 1239, type: !33)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !868, file: !4, line: 1240, type: !72)
!876 = !DISubprogram(name: "zipimporter_get_data", scope: !4, file: !4, line: 559, type: !154, isLocal: true, isDefinition: true, scopeLine: 560, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_data, variables: !877)
!877 = !{!878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !891, !893, !895}
!878 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !876, file: !4, line: 559, type: !33)
!879 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !876, file: !4, line: 559, type: !33)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !876, file: !4, line: 561, type: !396)
!881 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !876, file: !4, line: 562, type: !33)
!882 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "key", scope: !876, file: !4, line: 562, type: !33)
!883 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !876, file: !4, line: 563, type: !33)
!884 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_start", scope: !876, file: !4, line: 564, type: !39)
!885 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path_len", scope: !876, file: !4, line: 564, type: !39)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !876, file: !4, line: 564, type: !39)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !888, file: !4, line: 594, type: !33)
!888 = distinct !DILexicalBlock(scope: !889, file: !4, line: 594, column: 12)
!889 = distinct !DILexicalBlock(scope: !890, file: !4, line: 592, column: 34)
!890 = distinct !DILexicalBlock(scope: !876, file: !4, line: 592, column: 9)
!891 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !892, file: !4, line: 597, type: !33)
!892 = distinct !DILexicalBlock(scope: !876, file: !4, line: 597, column: 8)
!893 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !894, file: !4, line: 598, type: !33)
!894 = distinct !DILexicalBlock(scope: !876, file: !4, line: 598, column: 8)
!895 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !896, file: !4, line: 601, type: !33)
!896 = distinct !DILexicalBlock(scope: !876, file: !4, line: 601, column: 8)
!897 = !DISubprogram(name: "zipimporter_get_code", scope: !4, file: !4, line: 606, type: !154, isLocal: true, isDefinition: true, scopeLine: 607, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_code, variables: !898)
!898 = !{!899, !900, !901, !902}
!899 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !897, file: !4, line: 606, type: !33)
!900 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !897, file: !4, line: 606, type: !33)
!901 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !897, file: !4, line: 608, type: !396)
!902 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !897, file: !4, line: 609, type: !33)
!903 = !DISubprogram(name: "zipimporter_get_source", scope: !4, file: !4, line: 618, type: !154, isLocal: true, isDefinition: true, scopeLine: 619, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_source, variables: !904)
!904 = !{!905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !916, !918, !920, !923, !924}
!905 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !903, file: !4, line: 618, type: !33)
!906 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !903, file: !4, line: 618, type: !33)
!907 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !903, file: !4, line: 620, type: !396)
!908 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "toc_entry", scope: !903, file: !4, line: 621, type: !33)
!909 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !903, file: !4, line: 622, type: !33)
!910 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "subname", scope: !903, file: !4, line: 622, type: !33)
!911 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !903, file: !4, line: 622, type: !33)
!912 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullpath", scope: !903, file: !4, line: 622, type: !33)
!913 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mi", scope: !903, file: !4, line: 623, type: !10)
!914 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !915, file: !4, line: 641, type: !33)
!915 = distinct !DILexicalBlock(scope: !903, file: !4, line: 641, column: 8)
!916 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !917, file: !4, line: 649, type: !33)
!917 = distinct !DILexicalBlock(scope: !903, file: !4, line: 649, column: 8)
!918 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !919, file: !4, line: 654, type: !33)
!919 = distinct !DILexicalBlock(scope: !903, file: !4, line: 654, column: 8)
!920 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !921, file: !4, line: 656, type: !33)
!921 = distinct !DILexicalBlock(scope: !922, file: !4, line: 655, column: 34)
!922 = distinct !DILexicalBlock(scope: !903, file: !4, line: 655, column: 9)
!923 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bytes", scope: !921, file: !4, line: 656, type: !33)
!924 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !925, file: !4, line: 662, type: !33)
!925 = distinct !DILexicalBlock(scope: !921, file: !4, line: 662, column: 12)
!926 = !DISubprogram(name: "zipimporter_get_filename", scope: !4, file: !4, line: 515, type: !154, isLocal: true, isDefinition: true, scopeLine: 516, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_get_filename, variables: !927)
!927 = !{!928, !929, !930, !931, !932, !933, !934, !935}
!928 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !926, file: !4, line: 515, type: !33)
!929 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !926, file: !4, line: 515, type: !33)
!930 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !926, file: !4, line: 517, type: !396)
!931 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !926, file: !4, line: 518, type: !33)
!932 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "code", scope: !926, file: !4, line: 518, type: !33)
!933 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "modpath", scope: !926, file: !4, line: 518, type: !33)
!934 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ispackage", scope: !926, file: !4, line: 519, type: !72)
!935 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !936, file: !4, line: 530, type: !33)
!936 = distinct !DILexicalBlock(scope: !926, file: !4, line: 530, column: 8)
!937 = !DISubprogram(name: "zipimporter_is_package", scope: !4, file: !4, line: 537, type: !154, isLocal: true, isDefinition: true, scopeLine: 538, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @zipimporter_is_package, variables: !938)
!938 = !{!939, !940, !941, !942, !943}
!939 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "obj", arg: 1, scope: !937, file: !4, line: 537, type: !33)
!940 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !937, file: !4, line: 537, type: !33)
!941 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !937, file: !4, line: 539, type: !396)
!942 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fullname", scope: !937, file: !4, line: 540, type: !33)
!943 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "mi", scope: !937, file: !4, line: 541, type: !10)
!944 = !DISubprogram(name: "zipimporter_init", scope: !4, file: !4, line: 68, type: !627, isLocal: true, isDefinition: true, scopeLine: 69, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct._zipimporter*, %struct._object*, %struct._object*)* @zipimporter_init, variables: !945)
!945 = !{!946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !993, !994, !999, !1003, !1005, !1009, !1015, !1017, !1019, !1021}
!946 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !944, file: !4, line: 68, type: !396)
!947 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !944, file: !4, line: 68, type: !33)
!948 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !944, file: !4, line: 68, type: !33)
!949 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !944, file: !4, line: 70, type: !33)
!950 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "files", scope: !944, file: !4, line: 70, type: !33)
!951 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tmp", scope: !944, file: !4, line: 70, type: !33)
!952 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "filename", scope: !944, file: !4, line: 71, type: !33)
!953 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "len", scope: !944, file: !4, line: 72, type: !39)
!954 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flen", scope: !944, file: !4, line: 72, type: !39)
!955 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "statbuf", scope: !956, file: !4, line: 102, type: !959)
!956 = distinct !DILexicalBlock(scope: !957, file: !4, line: 101, column: 14)
!957 = distinct !DILexicalBlock(scope: !958, file: !4, line: 101, column: 5)
!958 = distinct !DILexicalBlock(scope: !944, file: !4, line: 101, column: 5)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !960, line: 46, size: 1152, align: 64, elements: !961)
!960 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!961 = !{!962, !964, !966, !968, !970, !972, !974, !975, !976, !977, !979, !981, !987, !988, !989}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !959, file: !960, line: 48, baseType: !963, size: 64, align: 64)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !44, line: 133, baseType: !124)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !959, file: !960, line: 53, baseType: !965, size: 64, align: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !44, line: 136, baseType: !124)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !959, file: !960, line: 61, baseType: !967, size: 64, align: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !44, line: 139, baseType: !124)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !959, file: !960, line: 62, baseType: !969, size: 32, align: 32, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !44, line: 138, baseType: !376)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !959, file: !960, line: 64, baseType: !971, size: 32, align: 32, offset: 224)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !44, line: 134, baseType: !376)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !959, file: !960, line: 65, baseType: !973, size: 32, align: 32, offset: 256)
!973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !44, line: 135, baseType: !376)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !959, file: !960, line: 67, baseType: !72, size: 32, align: 32, offset: 288)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !959, file: !960, line: 69, baseType: !963, size: 64, align: 64, offset: 320)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !959, file: !960, line: 74, baseType: !103, size: 64, align: 64, offset: 384)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !959, file: !960, line: 78, baseType: !978, size: 64, align: 64, offset: 448)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !44, line: 162, baseType: !45)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !959, file: !960, line: 80, baseType: !980, size: 64, align: 64, offset: 512)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !44, line: 167, baseType: !45)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !959, file: !960, line: 91, baseType: !982, size: 128, align: 64, offset: 576)
!982 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !405, line: 120, size: 128, align: 64, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !982, file: !405, line: 122, baseType: !406, size: 64, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !982, file: !405, line: 123, baseType: !986, size: 64, align: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !44, line: 184, baseType: !45)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !959, file: !960, line: 92, baseType: !982, size: 128, align: 64, offset: 704)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !959, file: !960, line: 93, baseType: !982, size: 128, align: 64, offset: 832)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "__unused", scope: !959, file: !960, line: 106, baseType: !990, size: 192, align: 64, offset: 960)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !986, size: 192, align: 64, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 3)
!993 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rv", scope: !956, file: !4, line: 103, type: !72)
!994 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !995, file: !4, line: 112, type: !33)
!995 = distinct !DILexicalBlock(scope: !996, file: !4, line: 112, column: 20)
!996 = distinct !DILexicalBlock(scope: !997, file: !4, line: 110, column: 17)
!997 = distinct !DILexicalBlock(scope: !998, file: !4, line: 108, column: 22)
!998 = distinct !DILexicalBlock(scope: !956, file: !4, line: 108, column: 13)
!999 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1000, file: !4, line: 112, type: !33)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !4, line: 112, column: 123)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !4, line: 112, column: 93)
!1002 = distinct !DILexicalBlock(scope: !995, file: !4, line: 112, column: 70)
!1003 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1004, file: !4, line: 115, type: !33)
!1004 = distinct !DILexicalBlock(scope: !956, file: !4, line: 115, column: 12)
!1005 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1006, file: !4, line: 115, type: !33)
!1006 = distinct !DILexicalBlock(scope: !1007, file: !4, line: 115, column: 115)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !4, line: 115, column: 85)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !4, line: 115, column: 62)
!1009 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1010, file: !4, line: 160, type: !33)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !4, line: 160, column: 16)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !4, line: 155, column: 1215)
!1012 = distinct !DILexicalBlock(scope: !1013, file: !4, line: 155, column: 13)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !4, line: 149, column: 22)
!1014 = distinct !DILexicalBlock(scope: !944, file: !4, line: 149, column: 9)
!1015 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1016, file: !4, line: 166, type: !33)
!1016 = distinct !DILexicalBlock(scope: !944, file: !4, line: 166, column: 8)
!1017 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1018, file: !4, line: 170, type: !33)
!1018 = distinct !DILexicalBlock(scope: !944, file: !4, line: 170, column: 8)
!1019 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1020, file: !4, line: 171, type: !33)
!1020 = distinct !DILexicalBlock(scope: !944, file: !4, line: 171, column: 8)
!1021 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1022, file: !4, line: 171, type: !33)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !4, line: 171, column: 100)
!1023 = distinct !DILexicalBlock(scope: !1020, file: !4, line: 171, column: 66)
!1024 = !DISubprogram(name: "read_directory", scope: !4, file: !4, line: 857, type: !144, isLocal: true, isDefinition: true, scopeLine: 858, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @read_directory, variables: !1025)
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1049, !1053, !1054, !1055, !1059, !1060, !1061, !1062, !1063, !1067, !1068, !1077, !1078, !1081, !1083, !1085, !1089, !1091, !1093, !1096, !1098, !1101, !1103, !1106, !1108}
!1026 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "archive", arg: 1, scope: !1024, file: !4, line: 857, type: !33)
!1027 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "files", scope: !1024, file: !4, line: 859, type: !33)
!1028 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "fp", scope: !1024, file: !4, line: 860, type: !73)
!1029 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "flags", scope: !1024, file: !4, line: 861, type: !105)
!1030 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "compress", scope: !1024, file: !4, line: 862, type: !1031)
!1031 = !DIBasicType(name: "short", size: 16, align: 16, encoding: DW_ATE_signed)
!1032 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "time", scope: !1024, file: !4, line: 862, type: !1031)
!1033 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "date", scope: !1024, file: !4, line: 862, type: !1031)
!1034 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_size", scope: !1024, file: !4, line: 862, type: !1031)
!1035 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "crc", scope: !1024, file: !4, line: 863, type: !45)
!1036 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "data_size", scope: !1024, file: !4, line: 863, type: !45)
!1037 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_size", scope: !1024, file: !4, line: 863, type: !45)
!1038 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_size", scope: !1024, file: !4, line: 863, type: !45)
!1039 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file_offset", scope: !1024, file: !4, line: 864, type: !39)
!1040 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_position", scope: !1024, file: !4, line: 864, type: !39)
!1041 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "header_offset", scope: !1024, file: !4, line: 864, type: !39)
!1042 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "l", scope: !1024, file: !4, line: 865, type: !45)
!1043 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !1024, file: !4, line: 865, type: !45)
!1044 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "i", scope: !1024, file: !4, line: 866, type: !39)
!1045 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !1024, file: !4, line: 867, type: !1046)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 32808, align: 8, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 4101)
!1049 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !1024, file: !4, line: 868, type: !1050)
!1050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, align: 8, elements: !1051)
!1051 = !{!1052}
!1052 = !DISubrange(count: 8)
!1053 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nameobj", scope: !1024, file: !4, line: 869, type: !33)
!1054 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "p", scope: !1024, file: !4, line: 870, type: !80)
!1055 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endof_central_dir", scope: !1024, file: !4, line: 870, type: !1056)
!1056 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 176, align: 8, elements: !1057)
!1057 = !{!1058}
!1058 = !DISubrange(count: 22)
!1059 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "arc_offset", scope: !1024, file: !4, line: 871, type: !39)
!1060 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "path", scope: !1024, file: !4, line: 872, type: !33)
!1061 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "charset", scope: !1024, file: !4, line: 873, type: !57)
!1062 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "bootstrap", scope: !1024, file: !4, line: 874, type: !72)
!1063 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "t", scope: !1064, file: !4, line: 915, type: !33)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !4, line: 914, column: 14)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !4, line: 914, column: 5)
!1066 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 914, column: 5)
!1067 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !1064, file: !4, line: 916, type: !72)
!1068 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !1069, file: !4, line: 966, type: !1072)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !4, line: 966, column: 51)
!1070 = distinct !DILexicalBlock(scope: !1071, file: !4, line: 966, column: 18)
!1071 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 964, column: 13)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64, align: 64)
!1073 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !24, line: 33, baseType: !1074)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !24, line: 31, size: 64, align: 64, elements: !1075)
!1075 = !{!1076}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !1074, file: !24, line: 32, baseType: !32, size: 64, align: 64)
!1077 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !1069, file: !4, line: 966, type: !32)
!1078 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !1069, file: !4, line: 966, type: !1079)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64, align: 64)
!1080 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !32)
!1081 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !1069, file: !4, line: 966, type: !1082)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !24, line: 29, baseType: !23)
!1083 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !1084, file: !4, line: 997, type: !33)
!1084 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 997, column: 12)
!1085 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1086, file: !4, line: 997, type: !33)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !4, line: 997, column: 113)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !4, line: 997, column: 84)
!1088 = distinct !DILexicalBlock(scope: !1084, file: !4, line: 997, column: 61)
!1089 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1090, file: !4, line: 998, type: !33)
!1090 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 998, column: 12)
!1091 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1092, file: !4, line: 1010, type: !33)
!1092 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 1010, column: 8)
!1093 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1094, file: !4, line: 1010, type: !33)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !4, line: 1010, column: 97)
!1095 = distinct !DILexicalBlock(scope: !1092, file: !4, line: 1010, column: 63)
!1096 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1097, file: !4, line: 1011, type: !33)
!1097 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 1011, column: 8)
!1098 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1099, file: !4, line: 1011, type: !33)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !4, line: 1011, column: 99)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !4, line: 1011, column: 65)
!1101 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1102, file: !4, line: 1016, type: !33)
!1102 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 1016, column: 8)
!1103 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1104, file: !4, line: 1016, type: !33)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !4, line: 1016, column: 97)
!1105 = distinct !DILexicalBlock(scope: !1102, file: !4, line: 1016, column: 63)
!1106 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !1107, file: !4, line: 1017, type: !33)
!1107 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 1017, column: 8)
!1108 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !1109, file: !4, line: 1017, type: !33)
!1109 = distinct !DILexicalBlock(scope: !1110, file: !4, line: 1017, column: 99)
!1110 = distinct !DILexicalBlock(scope: !1107, file: !4, line: 1017, column: 65)
!1111 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !24, file: !24, line: 59, type: !1112, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !1117)
!1112 = !DISubroutineType(types: !1113)
!1113 = !{null, !1114, !1082}
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64, align: 64)
!1115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1116)
!1116 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!1117 = !{!1118, !1119}
!1118 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !1111, file: !24, line: 59, type: !1114)
!1119 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !1111, file: !24, line: 59, type: !1082)
!1120 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !24, file: !24, line: 51, type: !1121, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{null, !1082}
!1123 = !{!1124}
!1124 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !1120, file: !24, line: 51, type: !1082)
!1125 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !24, file: !24, line: 44, type: !1121, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !1126)
!1126 = !{!1127}
!1127 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !1125, file: !24, line: 44, type: !1082)
!1128 = !{!1129, !1130, !1132, !1136, !1141, !1145, !1149, !1150, !1158, !1162, !1166, !1170, !1174, !1178, !1182, !1187, !1191, !1213, !1217}
!1129 = !DIGlobalVariable(name: "ZipImportError", scope: !0, file: !4, line: 49, type: !33, isLocal: true, isDefinition: true, variable: %struct._object** @ZipImportError)
!1130 = !DIGlobalVariable(name: "ZipImporter_Type", scope: !0, file: !4, line: 771, type: !1131, isLocal: true, isDefinition: true, variable: %struct._typeobject* @ZipImporter_Type)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !35, line: 422, baseType: !48)
!1132 = !DIGlobalVariable(name: "zipimporter_doc", scope: !0, file: !4, line: 755, type: !1133, isLocal: true, isDefinition: true, variable: [475 x i8]* @zipimporter_doc)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3800, align: 8, elements: !1134)
!1134 = !{!1135}
!1135 = !DISubrange(count: 475)
!1136 = !DIGlobalVariable(name: "zipimporter_methods", scope: !0, file: !4, line: 728, type: !1137, isLocal: true, isDefinition: true, variable: [9 x %struct.PyMethodDef]* @zipimporter_methods)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1138, size: 2304, align: 64, elements: !1139)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !309, line: 47, baseType: !308)
!1139 = !{!1140}
!1140 = !DISubrange(count: 9)
!1141 = !DIGlobalVariable(name: "doc_find_module", scope: !0, file: !4, line: 671, type: !1142, isLocal: true, isDefinition: true, variable: [347 x i8]* @doc_find_module)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 2776, align: 8, elements: !1143)
!1143 = !{!1144}
!1144 = !DISubrange(count: 347)
!1145 = !DIGlobalVariable(name: "doc_find_loader", scope: !0, file: !4, line: 680, type: !1146, isLocal: true, isDefinition: true, variable: [440 x i8]* @doc_find_loader)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 3520, align: 8, elements: !1147)
!1147 = !{!1148}
!1148 = !DISubrange(count: 440)
!1149 = !DIGlobalVariable(name: "importing_zlib", scope: !818, file: !4, line: 1027, type: !72, isLocal: true, isDefinition: true, variable: i32* @get_decompress_func.importing_zlib)
!1150 = !DIGlobalVariable(name: "PyId_decompress", scope: !818, file: !4, line: 1030, type: !1151, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @get_decompress_func.PyId_decompress)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !35, line: 144, baseType: !1152)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !35, line: 140, size: 192, align: 64, elements: !1153)
!1153 = !{!1154, !1156, !1157}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1152, file: !35, line: 141, baseType: !1155, size: 64, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64, align: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1152, file: !35, line: 142, baseType: !57, size: 64, align: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !1152, file: !35, line: 143, baseType: !33, size: 64, align: 64, offset: 128)
!1158 = !DIGlobalVariable(name: "doc_load_module", scope: !0, file: !4, line: 690, type: !1159, isLocal: true, isDefinition: true, variable: [213 x i8]* @doc_load_module)
!1159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1704, align: 8, elements: !1160)
!1160 = !{!1161}
!1161 = !DISubrange(count: 213)
!1162 = !DIGlobalVariable(name: "doc_get_data", scope: !0, file: !4, line: 697, type: !1163, isLocal: true, isDefinition: true, variable: [130 x i8]* @doc_get_data)
!1163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1040, align: 8, elements: !1164)
!1164 = !{!1165}
!1165 = !DISubrange(count: 130)
!1166 = !DIGlobalVariable(name: "doc_get_code", scope: !0, file: !4, line: 709, type: !1167, isLocal: true, isDefinition: true, variable: [139 x i8]* @doc_get_code)
!1167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1112, align: 8, elements: !1168)
!1168 = !{!1169}
!1169 = !DISubrange(count: 139)
!1170 = !DIGlobalVariable(name: "doc_get_source", scope: !0, file: !4, line: 715, type: !1171, isLocal: true, isDefinition: true, variable: [221 x i8]* @doc_get_source)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1768, align: 8, elements: !1172)
!1172 = !{!1173}
!1173 = !DISubrange(count: 221)
!1174 = !DIGlobalVariable(name: "doc_get_filename", scope: !0, file: !4, line: 723, type: !1175, isLocal: true, isDefinition: true, variable: [90 x i8]* @doc_get_filename)
!1175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 720, align: 8, elements: !1176)
!1176 = !{!1177}
!1177 = !DISubrange(count: 90)
!1178 = !DIGlobalVariable(name: "doc_is_package", scope: !0, file: !4, line: 703, type: !1179, isLocal: true, isDefinition: true, variable: [147 x i8]* @doc_is_package)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 1176, align: 8, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 147)
!1182 = !DIGlobalVariable(name: "zipimporter_members", scope: !0, file: !4, line: 748, type: !1183, isLocal: true, isDefinition: true, variable: [4 x %struct.PyMemberDef]* @zipimporter_members)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 1280, align: 64, elements: !1185)
!1184 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !319, line: 24, baseType: !318)
!1185 = !{!1186}
!1186 = !DISubrange(count: 4)
!1187 = !DIGlobalVariable(name: "zip_searchorder", scope: !0, file: !4, line: 26, type: !1188, isLocal: true, isDefinition: true, variable: [7 x %struct.st_zip_searchorder]* @zip_searchorder)
!1188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 1120, align: 32, elements: !1189)
!1189 = !{!1190}
!1190 = !DISubrange(count: 7)
!1191 = !DIGlobalVariable(name: "zipimportmodule", scope: !0, file: !4, line: 1458, type: !1192, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @zipimportmodule)
!1192 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !1193, line: 47, size: 832, align: 64, elements: !1194)
!1193 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!1194 = !{!1195, !1204, !1205, !1206, !1207, !1209, !1210, !1211, !1212}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !1192, file: !1193, line: 48, baseType: !1196, size: 320, align: 64)
!1196 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !1193, line: 38, baseType: !1197)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !1193, line: 33, size: 320, align: 64, elements: !1198)
!1198 = !{!1199, !1200, !1202, !1203}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !1197, file: !1193, line: 34, baseType: !34, size: 128, align: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !1197, file: !1193, line: 35, baseType: !1201, size: 64, align: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64, align: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !1197, file: !1193, line: 36, baseType: !39, size: 64, align: 64, offset: 192)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !1197, file: !1193, line: 37, baseType: !33, size: 64, align: 64, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !1192, file: !1193, line: 49, baseType: !57, size: 64, align: 64, offset: 320)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !1192, file: !1193, line: 50, baseType: !57, size: 64, align: 64, offset: 384)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !1192, file: !1193, line: 51, baseType: !39, size: 64, align: 64, offset: 448)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !1192, file: !1193, line: 52, baseType: !1208, size: 64, align: 64, offset: 512)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64, align: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !1192, file: !1193, line: 53, baseType: !170, size: 64, align: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !1192, file: !1193, line: 54, baseType: !287, size: 64, align: 64, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !1192, file: !1193, line: 55, baseType: !170, size: 64, align: 64, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !1192, file: !1193, line: 56, baseType: !364, size: 64, align: 64, offset: 768)
!1213 = !DIGlobalVariable(name: "zipimport_doc", scope: !0, file: !4, line: 1444, type: !1214, isLocal: true, isDefinition: true, variable: [592 x i8]* @zipimport_doc)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 4736, align: 8, elements: !1215)
!1215 = !{!1216}
!1216 = !DISubrange(count: 592)
!1217 = !DIGlobalVariable(name: "zip_directory_cache", scope: !0, file: !4, line: 51, type: !33, isLocal: true, isDefinition: true, variable: %struct._object** @zip_directory_cache)
!1218 = !{i32 2, !"Dwarf Version", i32 4}
!1219 = !{i32 2, !"Debug Info Version", i32 3}
!1220 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1221 = !DILocation(line: 1473, column: 5, scope: !509)
!1222 = !DIExpression()
!1223 = !DILocation(line: 1473, column: 15, scope: !509)
!1224 = !DILocation(line: 1475, column: 9, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1475, column: 9)
!1226 = !DILocation(line: 1475, column: 41, scope: !1225)
!1227 = !DILocation(line: 1475, column: 9, scope: !509)
!1228 = !DILocation(line: 1476, column: 9, scope: !1225)
!1229 = !DILocation(line: 1479, column: 34, scope: !509)
!1230 = !{!1231, !1231, i64 0}
!1231 = !{!"omnipotent char", !1232, i64 0}
!1232 = !{!"Simple C/C++ TBAA"}
!1233 = !DILocation(line: 1480, column: 34, scope: !509)
!1234 = !DILocation(line: 1481, column: 34, scope: !509)
!1235 = !DILocation(line: 1482, column: 9, scope: !516)
!1236 = !{!1237, !1237, i64 0}
!1237 = !{!"int", !1231, i64 0}
!1238 = !DILocation(line: 1482, column: 9, scope: !509)
!1239 = !DILocation(line: 1484, column: 9, scope: !515)
!1240 = !DILocation(line: 1484, column: 35, scope: !515)
!1241 = !DILocation(line: 1485, column: 15, scope: !515)
!1242 = !{i64 0, i64 14, !1230, i64 16, i64 4, !1236}
!1243 = !DILocation(line: 1486, column: 30, scope: !515)
!1244 = !DILocation(line: 1487, column: 30, scope: !515)
!1245 = !DILocation(line: 1488, column: 15, scope: !515)
!1246 = !DILocation(line: 1489, column: 30, scope: !515)
!1247 = !DILocation(line: 1490, column: 30, scope: !515)
!1248 = !DILocation(line: 1491, column: 5, scope: !516)
!1249 = !DILocation(line: 1491, column: 5, scope: !515)
!1250 = !DILocation(line: 1493, column: 11, scope: !509)
!1251 = !DILocation(line: 1493, column: 9, scope: !509)
!1252 = !{!1253, !1253, i64 0}
!1253 = !{!"any pointer", !1231, i64 0}
!1254 = !DILocation(line: 1494, column: 9, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1494, column: 9)
!1256 = !DILocation(line: 1494, column: 13, scope: !1255)
!1257 = !DILocation(line: 1494, column: 9, scope: !509)
!1258 = !DILocation(line: 1495, column: 9, scope: !1255)
!1259 = !DILocation(line: 1498, column: 41, scope: !509)
!1260 = !DILocation(line: 1497, column: 22, scope: !509)
!1261 = !DILocation(line: 1497, column: 20, scope: !509)
!1262 = !DILocation(line: 1499, column: 9, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1499, column: 9)
!1264 = !DILocation(line: 1499, column: 24, scope: !1263)
!1265 = !DILocation(line: 1499, column: 9, scope: !509)
!1266 = !DILocation(line: 1500, column: 9, scope: !1263)
!1267 = !DILocation(line: 1502, column: 21, scope: !509)
!1268 = !DILocation(line: 1502, column: 39, scope: !509)
!1269 = !DILocation(line: 1502, column: 48, scope: !509)
!1270 = !{!1271, !1272, i64 0}
!1271 = !{!"_object", !1272, i64 0, !1253, i64 8}
!1272 = !{!"long", !1231, i64 0}
!1273 = !DILocation(line: 1503, column: 28, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1503, column: 9)
!1275 = !DILocation(line: 1504, column: 28, scope: !1274)
!1276 = !DILocation(line: 1503, column: 9, scope: !1274)
!1277 = !DILocation(line: 1504, column: 44, scope: !1274)
!1278 = !DILocation(line: 1503, column: 9, scope: !509)
!1279 = !DILocation(line: 1505, column: 9, scope: !1274)
!1280 = !DILocation(line: 1507, column: 51, scope: !509)
!1281 = !DILocation(line: 1508, column: 28, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1508, column: 9)
!1283 = !DILocation(line: 1508, column: 9, scope: !1282)
!1284 = !DILocation(line: 1509, column: 59, scope: !1282)
!1285 = !DILocation(line: 1508, column: 9, scope: !509)
!1286 = !DILocation(line: 1510, column: 9, scope: !1282)
!1287 = !DILocation(line: 1512, column: 27, scope: !509)
!1288 = !DILocation(line: 1512, column: 25, scope: !509)
!1289 = !DILocation(line: 1513, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1513, column: 9)
!1291 = !DILocation(line: 1513, column: 29, scope: !1290)
!1292 = !DILocation(line: 1513, column: 9, scope: !509)
!1293 = !DILocation(line: 1514, column: 9, scope: !1290)
!1294 = !DILocation(line: 1515, column: 21, scope: !509)
!1295 = !DILocation(line: 1515, column: 44, scope: !509)
!1296 = !DILocation(line: 1515, column: 53, scope: !509)
!1297 = !DILocation(line: 1516, column: 28, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !509, file: !4, line: 1516, column: 9)
!1299 = !DILocation(line: 1517, column: 28, scope: !1298)
!1300 = !DILocation(line: 1516, column: 9, scope: !1298)
!1301 = !DILocation(line: 1517, column: 49, scope: !1298)
!1302 = !DILocation(line: 1516, column: 9, scope: !509)
!1303 = !DILocation(line: 1518, column: 9, scope: !1298)
!1304 = !DILocation(line: 1519, column: 12, scope: !509)
!1305 = !DILocation(line: 1519, column: 5, scope: !509)
!1306 = !DILocation(line: 1520, column: 1, scope: !509)
!1307 = !DILocation(line: 185, column: 34, scope: !524)
!1308 = !DILocation(line: 187, column: 25, scope: !524)
!1309 = !DILocation(line: 187, column: 5, scope: !524)
!1310 = !DILocation(line: 188, column: 5, scope: !524)
!1311 = !DILocation(line: 188, column: 10, scope: !1312)
!1312 = !DILexicalBlockFile(scope: !530, file: !4, discriminator: 1)
!1313 = !DILocation(line: 188, column: 20, scope: !530)
!1314 = !DILocation(line: 188, column: 51, scope: !530)
!1315 = !DILocation(line: 188, column: 57, scope: !530)
!1316 = !{!1317, !1253, i64 16}
!1317 = !{!"_zipimporter", !1271, i64 0, !1253, i64 16, !1253, i64 24, !1253, i64 32}
!1318 = !DILocation(line: 188, column: 71, scope: !533)
!1319 = !DILocation(line: 188, column: 87, scope: !533)
!1320 = !DILocation(line: 188, column: 71, scope: !530)
!1321 = !DILocation(line: 188, column: 102, scope: !1322)
!1322 = !DILexicalBlockFile(scope: !533, file: !4, discriminator: 2)
!1323 = !DILocation(line: 188, column: 107, scope: !1324)
!1324 = !DILexicalBlockFile(scope: !532, file: !4, discriminator: 4)
!1325 = !DILocation(line: 188, column: 117, scope: !532)
!1326 = !DILocation(line: 188, column: 147, scope: !532)
!1327 = !DILocation(line: 188, column: 173, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !532, file: !4, line: 188, column: 170)
!1329 = !DILocation(line: 188, column: 190, scope: !1328)
!1330 = !DILocation(line: 188, column: 170, scope: !1328)
!1331 = !DILocation(line: 188, column: 200, scope: !1328)
!1332 = !DILocation(line: 188, column: 170, scope: !532)
!1333 = !DILocation(line: 188, column: 170, scope: !1334)
!1334 = !DILexicalBlockFile(scope: !532, file: !4, discriminator: 5)
!1335 = !DILocation(line: 188, column: 231, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1328, file: !4, discriminator: 6)
!1337 = !DILocation(line: 188, column: 249, scope: !1328)
!1338 = !{!1271, !1253, i64 8}
!1339 = !DILocation(line: 188, column: 259, scope: !1328)
!1340 = !{!1341, !1253, i64 48}
!1341 = !{!"_typeobject", !1342, i64 0, !1253, i64 24, !1272, i64 32, !1272, i64 40, !1253, i64 48, !1253, i64 56, !1253, i64 64, !1253, i64 72, !1253, i64 80, !1253, i64 88, !1253, i64 96, !1253, i64 104, !1253, i64 112, !1253, i64 120, !1253, i64 128, !1253, i64 136, !1253, i64 144, !1253, i64 152, !1253, i64 160, !1272, i64 168, !1253, i64 176, !1253, i64 184, !1253, i64 192, !1253, i64 200, !1272, i64 208, !1253, i64 216, !1253, i64 224, !1253, i64 232, !1253, i64 240, !1253, i64 248, !1253, i64 256, !1253, i64 264, !1253, i64 272, !1253, i64 280, !1272, i64 288, !1253, i64 296, !1253, i64 304, !1253, i64 312, !1253, i64 320, !1253, i64 328, !1253, i64 336, !1253, i64 344, !1253, i64 352, !1253, i64 360, !1253, i64 368, !1253, i64 376, !1237, i64 384, !1253, i64 392}
!1342 = !{!"", !1271, i64 0, !1272, i64 16}
!1343 = !DILocation(line: 188, column: 284, scope: !1328)
!1344 = !DILocation(line: 188, column: 215, scope: !1328)
!1345 = !DILocation(line: 188, column: 303, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !533, file: !4, discriminator: 7)
!1347 = !DILocation(line: 188, column: 303, scope: !532)
!1348 = !DILocation(line: 188, column: 303, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !532, file: !4, discriminator: 8)
!1350 = !DILocation(line: 188, column: 303, scope: !1351)
!1351 = !DILexicalBlockFile(scope: !532, file: !4, discriminator: 9)
!1352 = !DILocation(line: 188, column: 316, scope: !1353)
!1353 = !DILexicalBlockFile(scope: !1354, file: !4, discriminator: 10)
!1354 = !DILexicalBlockFile(scope: !524, file: !4, discriminator: 3)
!1355 = !DILocation(line: 188, column: 316, scope: !530)
!1356 = !DILocation(line: 189, column: 5, scope: !524)
!1357 = !DILocation(line: 189, column: 10, scope: !1358)
!1358 = !DILexicalBlockFile(scope: !535, file: !4, discriminator: 1)
!1359 = !DILocation(line: 189, column: 20, scope: !535)
!1360 = !DILocation(line: 189, column: 51, scope: !535)
!1361 = !DILocation(line: 189, column: 57, scope: !535)
!1362 = !{!1317, !1253, i64 24}
!1363 = !DILocation(line: 189, column: 70, scope: !538)
!1364 = !DILocation(line: 189, column: 86, scope: !538)
!1365 = !DILocation(line: 189, column: 70, scope: !535)
!1366 = !DILocation(line: 189, column: 101, scope: !1367)
!1367 = !DILexicalBlockFile(scope: !538, file: !4, discriminator: 2)
!1368 = !DILocation(line: 189, column: 106, scope: !1369)
!1369 = !DILexicalBlockFile(scope: !537, file: !4, discriminator: 4)
!1370 = !DILocation(line: 189, column: 116, scope: !537)
!1371 = !DILocation(line: 189, column: 146, scope: !537)
!1372 = !DILocation(line: 189, column: 172, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !537, file: !4, line: 189, column: 169)
!1374 = !DILocation(line: 189, column: 189, scope: !1373)
!1375 = !DILocation(line: 189, column: 169, scope: !1373)
!1376 = !DILocation(line: 189, column: 199, scope: !1373)
!1377 = !DILocation(line: 189, column: 169, scope: !537)
!1378 = !DILocation(line: 189, column: 169, scope: !1379)
!1379 = !DILexicalBlockFile(scope: !537, file: !4, discriminator: 5)
!1380 = !DILocation(line: 189, column: 230, scope: !1381)
!1381 = !DILexicalBlockFile(scope: !1373, file: !4, discriminator: 6)
!1382 = !DILocation(line: 189, column: 248, scope: !1373)
!1383 = !DILocation(line: 189, column: 258, scope: !1373)
!1384 = !DILocation(line: 189, column: 283, scope: !1373)
!1385 = !DILocation(line: 189, column: 214, scope: !1373)
!1386 = !DILocation(line: 189, column: 302, scope: !1387)
!1387 = !DILexicalBlockFile(scope: !538, file: !4, discriminator: 7)
!1388 = !DILocation(line: 189, column: 302, scope: !537)
!1389 = !DILocation(line: 189, column: 302, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !537, file: !4, discriminator: 8)
!1391 = !DILocation(line: 189, column: 302, scope: !1392)
!1392 = !DILexicalBlockFile(scope: !537, file: !4, discriminator: 9)
!1393 = !DILocation(line: 189, column: 315, scope: !1353)
!1394 = !DILocation(line: 189, column: 315, scope: !535)
!1395 = !DILocation(line: 190, column: 5, scope: !524)
!1396 = !DILocation(line: 190, column: 10, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !540, file: !4, discriminator: 1)
!1398 = !DILocation(line: 190, column: 20, scope: !540)
!1399 = !DILocation(line: 190, column: 51, scope: !540)
!1400 = !DILocation(line: 190, column: 57, scope: !540)
!1401 = !{!1317, !1253, i64 32}
!1402 = !DILocation(line: 190, column: 69, scope: !543)
!1403 = !DILocation(line: 190, column: 85, scope: !543)
!1404 = !DILocation(line: 190, column: 69, scope: !540)
!1405 = !DILocation(line: 190, column: 100, scope: !1406)
!1406 = !DILexicalBlockFile(scope: !543, file: !4, discriminator: 2)
!1407 = !DILocation(line: 190, column: 105, scope: !1408)
!1408 = !DILexicalBlockFile(scope: !542, file: !4, discriminator: 4)
!1409 = !DILocation(line: 190, column: 115, scope: !542)
!1410 = !DILocation(line: 190, column: 145, scope: !542)
!1411 = !DILocation(line: 190, column: 171, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !542, file: !4, line: 190, column: 168)
!1413 = !DILocation(line: 190, column: 188, scope: !1412)
!1414 = !DILocation(line: 190, column: 168, scope: !1412)
!1415 = !DILocation(line: 190, column: 198, scope: !1412)
!1416 = !DILocation(line: 190, column: 168, scope: !542)
!1417 = !DILocation(line: 190, column: 168, scope: !1418)
!1418 = !DILexicalBlockFile(scope: !542, file: !4, discriminator: 5)
!1419 = !DILocation(line: 190, column: 229, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !1412, file: !4, discriminator: 6)
!1421 = !DILocation(line: 190, column: 247, scope: !1412)
!1422 = !DILocation(line: 190, column: 257, scope: !1412)
!1423 = !DILocation(line: 190, column: 282, scope: !1412)
!1424 = !DILocation(line: 190, column: 213, scope: !1412)
!1425 = !DILocation(line: 190, column: 301, scope: !1426)
!1426 = !DILexicalBlockFile(scope: !543, file: !4, discriminator: 7)
!1427 = !DILocation(line: 190, column: 301, scope: !542)
!1428 = !DILocation(line: 190, column: 301, scope: !1429)
!1429 = !DILexicalBlockFile(scope: !542, file: !4, discriminator: 8)
!1430 = !DILocation(line: 190, column: 301, scope: !1431)
!1431 = !DILexicalBlockFile(scope: !542, file: !4, discriminator: 9)
!1432 = !DILocation(line: 190, column: 314, scope: !1353)
!1433 = !DILocation(line: 190, column: 314, scope: !540)
!1434 = !DILocation(line: 191, column: 19, scope: !524)
!1435 = !DILocation(line: 191, column: 7, scope: !524)
!1436 = !DILocation(line: 191, column: 27, scope: !524)
!1437 = !DILocation(line: 191, column: 37, scope: !524)
!1438 = !{!1341, !1253, i64 320}
!1439 = !DILocation(line: 191, column: 57, scope: !524)
!1440 = !DILocation(line: 191, column: 45, scope: !524)
!1441 = !DILocation(line: 191, column: 5, scope: !524)
!1442 = !DILocation(line: 192, column: 1, scope: !524)
!1443 = !DILocation(line: 195, column: 31, scope: !544)
!1444 = !DILocation(line: 197, column: 9, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !544, file: !4, line: 197, column: 9)
!1446 = !DILocation(line: 197, column: 15, scope: !1445)
!1447 = !DILocation(line: 197, column: 23, scope: !1445)
!1448 = !DILocation(line: 197, column: 9, scope: !544)
!1449 = !DILocation(line: 198, column: 16, scope: !1445)
!1450 = !DILocation(line: 198, column: 9, scope: !1445)
!1451 = !DILocation(line: 199, column: 14, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1445, file: !4, line: 199, column: 14)
!1453 = !DILocation(line: 199, column: 20, scope: !1452)
!1454 = !DILocation(line: 199, column: 27, scope: !1452)
!1455 = !DILocation(line: 199, column: 41, scope: !1452)
!1456 = !DILocation(line: 199, column: 92, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !1452, file: !4, discriminator: 1)
!1458 = !DILocation(line: 199, column: 98, scope: !1452)
!1459 = !DILocation(line: 199, column: 74, scope: !1452)
!1460 = !DILocation(line: 199, column: 108, scope: !1452)
!1461 = !{!1462, !1272, i64 16}
!1462 = !{!"", !1271, i64 0, !1272, i64 16, !1272, i64 24, !1463, i64 32, !1253, i64 40}
!1463 = !{!"", !1237, i64 0, !1237, i64 0, !1237, i64 0, !1237, i64 0, !1237, i64 0, !1237, i64 1}
!1464 = !DILocation(line: 199, column: 116, scope: !1452)
!1465 = !DILocation(line: 199, column: 14, scope: !1445)
!1466 = !DILocation(line: 201, column: 37, scope: !1452)
!1467 = !DILocation(line: 201, column: 43, scope: !1452)
!1468 = !DILocation(line: 201, column: 58, scope: !1452)
!1469 = !DILocation(line: 201, column: 64, scope: !1452)
!1470 = !DILocation(line: 200, column: 16, scope: !1452)
!1471 = !DILocation(line: 200, column: 9, scope: !1452)
!1472 = !DILocation(line: 204, column: 37, scope: !1452)
!1473 = !DILocation(line: 204, column: 43, scope: !1452)
!1474 = !DILocation(line: 203, column: 16, scope: !1452)
!1475 = !DILocation(line: 203, column: 9, scope: !1452)
!1476 = !DILocation(line: 205, column: 1, scope: !544)
!1477 = !DILocation(line: 177, column: 32, scope: !549)
!1478 = !DILocation(line: 177, column: 47, scope: !549)
!1479 = !DILocation(line: 177, column: 60, scope: !549)
!1480 = !DILocation(line: 179, column: 5, scope: !549)
!1481 = !DILocation(line: 179, column: 18, scope: !549)
!1482 = !DILocation(line: 179, column: 40, scope: !549)
!1483 = !DILocation(line: 179, column: 25, scope: !549)
!1484 = !DILocation(line: 180, column: 5, scope: !549)
!1485 = !DILocation(line: 180, column: 14, scope: !1486)
!1486 = !DILexicalBlockFile(scope: !557, file: !4, discriminator: 1)
!1487 = !DILocation(line: 180, column: 20, scope: !557)
!1488 = !DILocation(line: 180, column: 14, scope: !557)
!1489 = !DILocation(line: 180, column: 14, scope: !558)
!1490 = !DILocation(line: 180, column: 29, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !556, file: !4, discriminator: 2)
!1492 = !DILocation(line: 180, column: 33, scope: !556)
!1493 = !DILocation(line: 180, column: 40, scope: !556)
!1494 = !DILocation(line: 180, column: 59, scope: !556)
!1495 = !DILocation(line: 180, column: 65, scope: !556)
!1496 = !DILocation(line: 180, column: 73, scope: !556)
!1497 = !DILocation(line: 180, column: 83, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !556, file: !4, line: 180, column: 83)
!1499 = !DILocation(line: 180, column: 83, scope: !556)
!1500 = !DILocation(line: 180, column: 96, scope: !1501)
!1501 = !DILexicalBlockFile(scope: !1498, file: !4, discriminator: 4)
!1502 = !DILocation(line: 180, column: 89, scope: !1498)
!1503 = !DILocation(line: 180, column: 102, scope: !1504)
!1504 = !DILexicalBlockFile(scope: !557, file: !4, discriminator: 5)
!1505 = !DILocation(line: 180, column: 102, scope: !1506)
!1506 = !DILexicalBlockFile(scope: !1507, file: !4, discriminator: 7)
!1507 = !DILexicalBlockFile(scope: !557, file: !4, discriminator: 6)
!1508 = !DILocation(line: 180, column: 102, scope: !556)
!1509 = !DILocation(line: 180, column: 104, scope: !1510)
!1510 = !DILexicalBlockFile(scope: !1511, file: !4, discriminator: 8)
!1511 = !DILexicalBlockFile(scope: !558, file: !4, discriminator: 3)
!1512 = !DILocation(line: 180, column: 104, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !558, file: !4, discriminator: 9)
!1514 = !DILocation(line: 181, column: 5, scope: !549)
!1515 = !DILocation(line: 182, column: 1, scope: !549)
!1516 = !DILocation(line: 68, column: 31, scope: !944)
!1517 = !DILocation(line: 68, column: 47, scope: !944)
!1518 = !DILocation(line: 68, column: 63, scope: !944)
!1519 = !DILocation(line: 70, column: 5, scope: !944)
!1520 = !DILocation(line: 70, column: 15, scope: !944)
!1521 = !DILocation(line: 70, column: 22, scope: !944)
!1522 = !DILocation(line: 70, column: 30, scope: !944)
!1523 = !DILocation(line: 71, column: 5, scope: !944)
!1524 = !DILocation(line: 71, column: 15, scope: !944)
!1525 = !DILocation(line: 72, column: 5, scope: !944)
!1526 = !DILocation(line: 72, column: 16, scope: !944)
!1527 = !DILocation(line: 72, column: 21, scope: !944)
!1528 = !DILocation(line: 74, column: 45, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !944, file: !4, line: 74, column: 9)
!1530 = !DILocation(line: 74, column: 10, scope: !1529)
!1531 = !DILocation(line: 74, column: 9, scope: !944)
!1532 = !DILocation(line: 75, column: 9, scope: !1529)
!1533 = !DILocation(line: 77, column: 27, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !944, file: !4, line: 77, column: 9)
!1535 = !DILocation(line: 77, column: 10, scope: !1534)
!1536 = !DILocation(line: 77, column: 9, scope: !944)
!1537 = !DILocation(line: 79, column: 9, scope: !1534)
!1538 = !DILocation(line: 81, column: 43, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !944, file: !4, line: 81, column: 9)
!1540 = !DILocation(line: 81, column: 27, scope: !1539)
!1541 = !DILocation(line: 81, column: 50, scope: !1539)
!1542 = !DILocation(line: 81, column: 56, scope: !1539)
!1543 = !DILocation(line: 81, column: 25, scope: !1539)
!1544 = !DILocation(line: 81, column: 25, scope: !1545)
!1545 = !DILexicalBlockFile(scope: !1539, file: !4, discriminator: 1)
!1546 = !DILocation(line: 81, column: 99, scope: !1547)
!1547 = !DILexicalBlockFile(scope: !1539, file: !4, discriminator: 2)
!1548 = !DILocation(line: 81, column: 69, scope: !1539)
!1549 = !DILocation(line: 81, column: 108, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1551, file: !4, discriminator: 4)
!1551 = !DILexicalBlockFile(scope: !1539, file: !4, discriminator: 3)
!1552 = !DILocation(line: 81, column: 9, scope: !944)
!1553 = !DILocation(line: 82, column: 9, scope: !1539)
!1554 = !DILocation(line: 84, column: 59, scope: !944)
!1555 = !DILocation(line: 84, column: 41, scope: !944)
!1556 = !DILocation(line: 84, column: 67, scope: !944)
!1557 = !DILocation(line: 84, column: 9, scope: !944)
!1558 = !{!1272, !1272, i64 0}
!1559 = !DILocation(line: 85, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !944, file: !4, line: 85, column: 9)
!1561 = !DILocation(line: 85, column: 13, scope: !1560)
!1562 = !DILocation(line: 85, column: 9, scope: !944)
!1563 = !DILocation(line: 86, column: 25, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1560, file: !4, line: 85, column: 19)
!1565 = !DILocation(line: 86, column: 9, scope: !1564)
!1566 = !DILocation(line: 87, column: 9, scope: !1564)
!1567 = !DILocation(line: 98, column: 16, scope: !944)
!1568 = !DILocation(line: 98, column: 14, scope: !944)
!1569 = !DILocation(line: 99, column: 21, scope: !944)
!1570 = !DILocation(line: 99, column: 33, scope: !944)
!1571 = !DILocation(line: 99, column: 42, scope: !944)
!1572 = !DILocation(line: 100, column: 12, scope: !944)
!1573 = !DILocation(line: 100, column: 10, scope: !944)
!1574 = !DILocation(line: 101, column: 5, scope: !944)
!1575 = !DILocation(line: 102, column: 9, scope: !956)
!1576 = !DILocation(line: 102, column: 21, scope: !956)
!1577 = !DILocation(line: 103, column: 9, scope: !956)
!1578 = !DILocation(line: 103, column: 13, scope: !956)
!1579 = !DILocation(line: 105, column: 23, scope: !956)
!1580 = !DILocation(line: 105, column: 14, scope: !956)
!1581 = !DILocation(line: 105, column: 12, scope: !956)
!1582 = !DILocation(line: 106, column: 13, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !956, file: !4, line: 106, column: 13)
!1584 = !DILocation(line: 106, column: 16, scope: !1583)
!1585 = !DILocation(line: 106, column: 13, scope: !956)
!1586 = !DILocation(line: 107, column: 13, scope: !1583)
!1587 = !DILocation(line: 108, column: 13, scope: !998)
!1588 = !DILocation(line: 108, column: 16, scope: !998)
!1589 = !DILocation(line: 108, column: 13, scope: !956)
!1590 = !DILocation(line: 110, column: 30, scope: !996)
!1591 = !{!1592, !1237, i64 24}
!1592 = !{!"stat", !1272, i64 0, !1272, i64 8, !1272, i64 16, !1237, i64 24, !1237, i64 28, !1237, i64 32, !1237, i64 36, !1272, i64 40, !1272, i64 48, !1272, i64 56, !1272, i64 64, !1593, i64 72, !1593, i64 88, !1593, i64 104, !1231, i64 120}
!1593 = !{!"timespec", !1272, i64 0, !1272, i64 8}
!1594 = !DILocation(line: 110, column: 40, scope: !996)
!1595 = !DILocation(line: 110, column: 51, scope: !996)
!1596 = !DILocation(line: 110, column: 17, scope: !997)
!1597 = !DILocation(line: 112, column: 17, scope: !996)
!1598 = !DILocation(line: 112, column: 22, scope: !1599)
!1599 = !DILexicalBlockFile(scope: !995, file: !4, discriminator: 1)
!1600 = !DILocation(line: 112, column: 32, scope: !995)
!1601 = !DILocation(line: 112, column: 55, scope: !995)
!1602 = !DILocation(line: 112, column: 70, scope: !1002)
!1603 = !DILocation(line: 112, column: 78, scope: !1002)
!1604 = !DILocation(line: 112, column: 70, scope: !995)
!1605 = !DILocation(line: 112, column: 106, scope: !1606)
!1606 = !DILexicalBlockFile(scope: !1001, file: !4, discriminator: 2)
!1607 = !DILocation(line: 112, column: 120, scope: !1001)
!1608 = !DILocation(line: 112, column: 125, scope: !1609)
!1609 = !DILexicalBlockFile(scope: !1000, file: !4, discriminator: 4)
!1610 = !DILocation(line: 112, column: 135, scope: !1000)
!1611 = !DILocation(line: 112, column: 165, scope: !1000)
!1612 = !DILocation(line: 112, column: 183, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1000, file: !4, line: 112, column: 180)
!1614 = !DILocation(line: 112, column: 200, scope: !1613)
!1615 = !DILocation(line: 112, column: 180, scope: !1613)
!1616 = !DILocation(line: 112, column: 210, scope: !1613)
!1617 = !DILocation(line: 112, column: 180, scope: !1000)
!1618 = !DILocation(line: 112, column: 180, scope: !1619)
!1619 = !DILexicalBlockFile(scope: !1000, file: !4, discriminator: 5)
!1620 = !DILocation(line: 112, column: 241, scope: !1621)
!1621 = !DILexicalBlockFile(scope: !1613, file: !4, discriminator: 6)
!1622 = !DILocation(line: 112, column: 259, scope: !1613)
!1623 = !DILocation(line: 112, column: 269, scope: !1613)
!1624 = !DILocation(line: 112, column: 294, scope: !1613)
!1625 = !DILocation(line: 112, column: 225, scope: !1613)
!1626 = !DILocation(line: 112, column: 313, scope: !1627)
!1627 = !DILexicalBlockFile(scope: !1001, file: !4, discriminator: 7)
!1628 = !DILocation(line: 112, column: 313, scope: !1000)
!1629 = !DILocation(line: 112, column: 313, scope: !1630)
!1630 = !DILexicalBlockFile(scope: !1000, file: !4, discriminator: 8)
!1631 = !DILocation(line: 112, column: 326, scope: !1632)
!1632 = !DILexicalBlockFile(scope: !1001, file: !4, discriminator: 9)
!1633 = !DILocation(line: 112, column: 328, scope: !1634)
!1634 = !DILexicalBlockFile(scope: !1635, file: !4, discriminator: 10)
!1635 = !DILexicalBlockFile(scope: !996, file: !4, discriminator: 3)
!1636 = !DILocation(line: 112, column: 328, scope: !995)
!1637 = !DILocation(line: 112, column: 328, scope: !1638)
!1638 = !DILexicalBlockFile(scope: !995, file: !4, discriminator: 11)
!1639 = !DILocation(line: 112, column: 328, scope: !1640)
!1640 = !DILexicalBlockFile(scope: !995, file: !4, discriminator: 12)
!1641 = !DILocation(line: 113, column: 13, scope: !997)
!1642 = !DILocation(line: 115, column: 9, scope: !956)
!1643 = !DILocation(line: 115, column: 14, scope: !1644)
!1644 = !DILexicalBlockFile(scope: !1004, file: !4, discriminator: 1)
!1645 = !DILocation(line: 115, column: 24, scope: !1004)
!1646 = !DILocation(line: 115, column: 47, scope: !1004)
!1647 = !DILocation(line: 115, column: 62, scope: !1008)
!1648 = !DILocation(line: 115, column: 70, scope: !1008)
!1649 = !DILocation(line: 115, column: 62, scope: !1004)
!1650 = !DILocation(line: 115, column: 98, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1007, file: !4, discriminator: 2)
!1652 = !DILocation(line: 115, column: 112, scope: !1007)
!1653 = !DILocation(line: 115, column: 117, scope: !1654)
!1654 = !DILexicalBlockFile(scope: !1006, file: !4, discriminator: 4)
!1655 = !DILocation(line: 115, column: 127, scope: !1006)
!1656 = !DILocation(line: 115, column: 157, scope: !1006)
!1657 = !DILocation(line: 115, column: 175, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1006, file: !4, line: 115, column: 172)
!1659 = !DILocation(line: 115, column: 192, scope: !1658)
!1660 = !DILocation(line: 115, column: 172, scope: !1658)
!1661 = !DILocation(line: 115, column: 202, scope: !1658)
!1662 = !DILocation(line: 115, column: 172, scope: !1006)
!1663 = !DILocation(line: 115, column: 172, scope: !1664)
!1664 = !DILexicalBlockFile(scope: !1006, file: !4, discriminator: 5)
!1665 = !DILocation(line: 115, column: 233, scope: !1666)
!1666 = !DILexicalBlockFile(scope: !1658, file: !4, discriminator: 6)
!1667 = !DILocation(line: 115, column: 251, scope: !1658)
!1668 = !DILocation(line: 115, column: 261, scope: !1658)
!1669 = !DILocation(line: 115, column: 286, scope: !1658)
!1670 = !DILocation(line: 115, column: 217, scope: !1658)
!1671 = !DILocation(line: 115, column: 305, scope: !1672)
!1672 = !DILexicalBlockFile(scope: !1007, file: !4, discriminator: 7)
!1673 = !DILocation(line: 115, column: 305, scope: !1006)
!1674 = !DILocation(line: 115, column: 305, scope: !1675)
!1675 = !DILexicalBlockFile(scope: !1006, file: !4, discriminator: 8)
!1676 = !DILocation(line: 115, column: 318, scope: !1677)
!1677 = !DILexicalBlockFile(scope: !1007, file: !4, discriminator: 9)
!1678 = !DILocation(line: 115, column: 320, scope: !1679)
!1679 = !DILexicalBlockFile(scope: !1680, file: !4, discriminator: 10)
!1680 = !DILexicalBlockFile(scope: !956, file: !4, discriminator: 3)
!1681 = !DILocation(line: 115, column: 320, scope: !1004)
!1682 = !DILocation(line: 115, column: 320, scope: !1683)
!1683 = !DILexicalBlockFile(scope: !1004, file: !4, discriminator: 11)
!1684 = !DILocation(line: 117, column: 35, scope: !956)
!1685 = !DILocation(line: 117, column: 50, scope: !956)
!1686 = !DILocation(line: 117, column: 16, scope: !956)
!1687 = !DILocation(line: 117, column: 14, scope: !956)
!1688 = !DILocation(line: 118, column: 13, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !956, file: !4, line: 118, column: 13)
!1690 = !DILocation(line: 118, column: 18, scope: !1689)
!1691 = !DILocation(line: 118, column: 13, scope: !956)
!1692 = !DILocation(line: 119, column: 13, scope: !1689)
!1693 = !DILocation(line: 120, column: 40, scope: !956)
!1694 = !DILocation(line: 120, column: 49, scope: !956)
!1695 = !DILocation(line: 120, column: 20, scope: !956)
!1696 = !DILocation(line: 120, column: 18, scope: !956)
!1697 = !DILocation(line: 121, column: 13, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !956, file: !4, line: 121, column: 13)
!1699 = !DILocation(line: 121, column: 22, scope: !1698)
!1700 = !DILocation(line: 121, column: 13, scope: !956)
!1701 = !DILocation(line: 122, column: 13, scope: !1698)
!1702 = !DILocation(line: 123, column: 5, scope: !957)
!1703 = !DILocation(line: 123, column: 5, scope: !1704)
!1704 = !DILexicalBlockFile(scope: !957, file: !4, discriminator: 1)
!1705 = !DILocation(line: 101, column: 5, scope: !957)
!1706 = !DILocation(line: 124, column: 9, scope: !1707)
!1707 = distinct !DILexicalBlock(scope: !944, file: !4, line: 124, column: 9)
!1708 = !DILocation(line: 124, column: 18, scope: !1707)
!1709 = !DILocation(line: 124, column: 9, scope: !944)
!1710 = !DILocation(line: 125, column: 25, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1707, file: !4, line: 124, column: 33)
!1712 = !DILocation(line: 125, column: 9, scope: !1711)
!1713 = !DILocation(line: 126, column: 9, scope: !1711)
!1714 = !DILocation(line: 129, column: 43, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !944, file: !4, line: 129, column: 9)
!1716 = !DILocation(line: 129, column: 27, scope: !1715)
!1717 = !DILocation(line: 129, column: 54, scope: !1715)
!1718 = !DILocation(line: 129, column: 60, scope: !1715)
!1719 = !DILocation(line: 129, column: 25, scope: !1715)
!1720 = !DILocation(line: 129, column: 25, scope: !1721)
!1721 = !DILexicalBlockFile(scope: !1715, file: !4, discriminator: 1)
!1722 = !DILocation(line: 129, column: 103, scope: !1723)
!1723 = !DILexicalBlockFile(scope: !1715, file: !4, discriminator: 2)
!1724 = !DILocation(line: 129, column: 73, scope: !1715)
!1725 = !DILocation(line: 129, column: 116, scope: !1726)
!1726 = !DILexicalBlockFile(scope: !1727, file: !4, discriminator: 4)
!1727 = !DILexicalBlockFile(scope: !1715, file: !4, discriminator: 3)
!1728 = !DILocation(line: 129, column: 9, scope: !944)
!1729 = !DILocation(line: 130, column: 9, scope: !1715)
!1730 = !DILocation(line: 132, column: 28, scope: !944)
!1731 = !DILocation(line: 132, column: 49, scope: !944)
!1732 = !DILocation(line: 132, column: 13, scope: !944)
!1733 = !DILocation(line: 132, column: 11, scope: !944)
!1734 = !DILocation(line: 133, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !944, file: !4, line: 133, column: 9)
!1736 = !DILocation(line: 133, column: 15, scope: !1735)
!1737 = !DILocation(line: 133, column: 9, scope: !944)
!1738 = !DILocation(line: 134, column: 32, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1735, file: !4, line: 133, column: 30)
!1740 = !DILocation(line: 134, column: 17, scope: !1739)
!1741 = !DILocation(line: 134, column: 15, scope: !1739)
!1742 = !DILocation(line: 135, column: 13, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !4, line: 135, column: 13)
!1744 = !DILocation(line: 135, column: 19, scope: !1743)
!1745 = !DILocation(line: 135, column: 13, scope: !1739)
!1746 = !DILocation(line: 136, column: 13, scope: !1743)
!1747 = !DILocation(line: 137, column: 28, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1739, file: !4, line: 137, column: 13)
!1749 = !DILocation(line: 137, column: 49, scope: !1748)
!1750 = !DILocation(line: 137, column: 59, scope: !1748)
!1751 = !DILocation(line: 137, column: 13, scope: !1748)
!1752 = !DILocation(line: 137, column: 66, scope: !1748)
!1753 = !DILocation(line: 137, column: 13, scope: !1739)
!1754 = !DILocation(line: 138, column: 13, scope: !1748)
!1755 = !DILocation(line: 139, column: 5, scope: !1739)
!1756 = !DILocation(line: 141, column: 25, scope: !1735)
!1757 = !DILocation(line: 141, column: 34, scope: !1735)
!1758 = !DILocation(line: 141, column: 43, scope: !1735)
!1759 = !DILocation(line: 142, column: 19, scope: !944)
!1760 = !DILocation(line: 142, column: 5, scope: !944)
!1761 = !DILocation(line: 142, column: 11, scope: !944)
!1762 = !DILocation(line: 142, column: 17, scope: !944)
!1763 = !DILocation(line: 145, column: 21, scope: !944)
!1764 = !DILocation(line: 145, column: 5, scope: !944)
!1765 = !DILocation(line: 145, column: 11, scope: !944)
!1766 = !DILocation(line: 145, column: 19, scope: !944)
!1767 = !DILocation(line: 146, column: 14, scope: !944)
!1768 = !DILocation(line: 149, column: 9, scope: !1014)
!1769 = !DILocation(line: 149, column: 17, scope: !1014)
!1770 = !DILocation(line: 149, column: 14, scope: !1014)
!1771 = !DILocation(line: 149, column: 9, scope: !944)
!1772 = !DILocation(line: 150, column: 35, scope: !1013)
!1773 = !DILocation(line: 150, column: 41, scope: !1013)
!1774 = !DILocation(line: 150, column: 45, scope: !1013)
!1775 = !DILocation(line: 151, column: 83, scope: !1013)
!1776 = !DILocation(line: 151, column: 65, scope: !1013)
!1777 = !DILocation(line: 151, column: 91, scope: !1013)
!1778 = !DILocation(line: 150, column: 15, scope: !1013)
!1779 = !DILocation(line: 150, column: 13, scope: !1013)
!1780 = !DILocation(line: 152, column: 13, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1013, file: !4, line: 152, column: 13)
!1782 = !DILocation(line: 152, column: 17, scope: !1781)
!1783 = !DILocation(line: 152, column: 13, scope: !1013)
!1784 = !DILocation(line: 153, column: 13, scope: !1781)
!1785 = !DILocation(line: 154, column: 24, scope: !1013)
!1786 = !DILocation(line: 154, column: 9, scope: !1013)
!1787 = !DILocation(line: 154, column: 15, scope: !1013)
!1788 = !DILocation(line: 154, column: 22, scope: !1013)
!1789 = !DILocation(line: 155, column: 102, scope: !1012)
!1790 = !DILocation(line: 155, column: 83, scope: !1012)
!1791 = !DILocation(line: 155, column: 111, scope: !1012)
!1792 = !DILocation(line: 155, column: 117, scope: !1012)
!1793 = !DILocation(line: 155, column: 123, scope: !1012)
!1794 = !DILocation(line: 155, column: 53, scope: !1012)
!1795 = !DILocation(line: 155, column: 458, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 1)
!1797 = !DILocation(line: 155, column: 461, scope: !1012)
!1798 = !DILocation(line: 155, column: 203, scope: !1012)
!1799 = !DILocation(line: 155, column: 185, scope: !1012)
!1800 = !DILocation(line: 155, column: 212, scope: !1012)
!1801 = !DILocation(line: 155, column: 218, scope: !1012)
!1802 = !DILocation(line: 155, column: 183, scope: !1012)
!1803 = !DILocation(line: 155, column: 277, scope: !1804)
!1804 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 3)
!1805 = !DILocation(line: 155, column: 260, scope: !1012)
!1806 = !DILocation(line: 155, column: 285, scope: !1012)
!1807 = !DILocation(line: 155, column: 291, scope: !1012)
!1808 = !DILocation(line: 155, column: 230, scope: !1012)
!1809 = !DILocation(line: 155, column: 327, scope: !1810)
!1810 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 5)
!1811 = !DILocation(line: 155, column: 309, scope: !1012)
!1812 = !DILocation(line: 155, column: 334, scope: !1012)
!1813 = !DILocation(line: 155, column: 301, scope: !1012)
!1814 = !DILocation(line: 155, column: 378, scope: !1815)
!1815 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 6)
!1816 = !DILocation(line: 155, column: 351, scope: !1012)
!1817 = !DILocation(line: 155, column: 385, scope: !1012)
!1818 = !DILocation(line: 155, column: 343, scope: !1012)
!1819 = !DILocation(line: 155, column: 183, scope: !1820)
!1820 = !DILexicalBlockFile(scope: !1821, file: !4, discriminator: 8)
!1821 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 7)
!1822 = !DILocation(line: 155, column: 433, scope: !1823)
!1823 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 4)
!1824 = !DILocation(line: 155, column: 412, scope: !1012)
!1825 = !DILocation(line: 155, column: 442, scope: !1012)
!1826 = !DILocation(line: 155, column: 447, scope: !1012)
!1827 = !DILocation(line: 155, column: 149, scope: !1828)
!1828 = !DILexicalBlockFile(scope: !1829, file: !4, discriminator: 10)
!1829 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 9)
!1830 = !DILocation(line: 155, column: 518, scope: !1831)
!1831 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 2)
!1832 = !DILocation(line: 155, column: 499, scope: !1012)
!1833 = !DILocation(line: 155, column: 527, scope: !1012)
!1834 = !DILocation(line: 155, column: 533, scope: !1012)
!1835 = !DILocation(line: 155, column: 539, scope: !1012)
!1836 = !DILocation(line: 155, column: 469, scope: !1012)
!1837 = !DILocation(line: 155, column: 874, scope: !1838)
!1838 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 12)
!1839 = !DILocation(line: 155, column: 877, scope: !1012)
!1840 = !DILocation(line: 155, column: 619, scope: !1012)
!1841 = !DILocation(line: 155, column: 601, scope: !1012)
!1842 = !DILocation(line: 155, column: 628, scope: !1012)
!1843 = !DILocation(line: 155, column: 634, scope: !1012)
!1844 = !DILocation(line: 155, column: 599, scope: !1012)
!1845 = !DILocation(line: 155, column: 693, scope: !1846)
!1846 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 14)
!1847 = !DILocation(line: 155, column: 676, scope: !1012)
!1848 = !DILocation(line: 155, column: 701, scope: !1012)
!1849 = !DILocation(line: 155, column: 707, scope: !1012)
!1850 = !DILocation(line: 155, column: 646, scope: !1012)
!1851 = !DILocation(line: 155, column: 743, scope: !1852)
!1852 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 16)
!1853 = !DILocation(line: 155, column: 725, scope: !1012)
!1854 = !DILocation(line: 155, column: 750, scope: !1012)
!1855 = !DILocation(line: 155, column: 717, scope: !1012)
!1856 = !DILocation(line: 155, column: 794, scope: !1857)
!1857 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 17)
!1858 = !DILocation(line: 155, column: 767, scope: !1012)
!1859 = !DILocation(line: 155, column: 801, scope: !1012)
!1860 = !DILocation(line: 155, column: 759, scope: !1012)
!1861 = !DILocation(line: 155, column: 599, scope: !1862)
!1862 = !DILexicalBlockFile(scope: !1863, file: !4, discriminator: 19)
!1863 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 18)
!1864 = !DILocation(line: 155, column: 849, scope: !1865)
!1865 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 15)
!1866 = !DILocation(line: 155, column: 828, scope: !1012)
!1867 = !DILocation(line: 155, column: 858, scope: !1012)
!1868 = !DILocation(line: 155, column: 863, scope: !1012)
!1869 = !DILocation(line: 155, column: 566, scope: !1870)
!1870 = !DILexicalBlockFile(scope: !1871, file: !4, discriminator: 21)
!1871 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 20)
!1872 = !DILocation(line: 155, column: 565, scope: !1012)
!1873 = !{!1874, !1874, i64 0}
!1874 = !{!"short", !1231, i64 0}
!1875 = !DILocation(line: 155, column: 1193, scope: !1876)
!1876 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 13)
!1877 = !DILocation(line: 155, column: 1196, scope: !1012)
!1878 = !DILocation(line: 155, column: 938, scope: !1012)
!1879 = !DILocation(line: 155, column: 920, scope: !1012)
!1880 = !DILocation(line: 155, column: 947, scope: !1012)
!1881 = !DILocation(line: 155, column: 953, scope: !1012)
!1882 = !DILocation(line: 155, column: 918, scope: !1012)
!1883 = !DILocation(line: 155, column: 1012, scope: !1884)
!1884 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 23)
!1885 = !DILocation(line: 155, column: 995, scope: !1012)
!1886 = !DILocation(line: 155, column: 1020, scope: !1012)
!1887 = !DILocation(line: 155, column: 1026, scope: !1012)
!1888 = !DILocation(line: 155, column: 965, scope: !1012)
!1889 = !DILocation(line: 155, column: 1062, scope: !1890)
!1890 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 25)
!1891 = !DILocation(line: 155, column: 1044, scope: !1012)
!1892 = !DILocation(line: 155, column: 1069, scope: !1012)
!1893 = !DILocation(line: 155, column: 1036, scope: !1012)
!1894 = !DILocation(line: 155, column: 1113, scope: !1895)
!1895 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 26)
!1896 = !DILocation(line: 155, column: 1086, scope: !1012)
!1897 = !DILocation(line: 155, column: 1120, scope: !1012)
!1898 = !DILocation(line: 155, column: 1078, scope: !1012)
!1899 = !DILocation(line: 155, column: 918, scope: !1900)
!1900 = !DILexicalBlockFile(scope: !1901, file: !4, discriminator: 28)
!1901 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 27)
!1902 = !DILocation(line: 155, column: 1168, scope: !1903)
!1903 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 24)
!1904 = !DILocation(line: 155, column: 1147, scope: !1012)
!1905 = !DILocation(line: 155, column: 1177, scope: !1012)
!1906 = !DILocation(line: 155, column: 1182, scope: !1012)
!1907 = !DILocation(line: 155, column: 885, scope: !1908)
!1908 = !DILexicalBlockFile(scope: !1909, file: !4, discriminator: 30)
!1909 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 29)
!1910 = !DILocation(line: 155, column: 884, scope: !1012)
!1911 = !DILocation(line: 155, column: 53, scope: !1912)
!1912 = !DILexicalBlockFile(scope: !1913, file: !4, discriminator: 31)
!1913 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 22)
!1914 = !DILocation(line: 155, column: 1206, scope: !1915)
!1915 = !DILexicalBlockFile(scope: !1916, file: !4, discriminator: 32)
!1916 = !DILexicalBlockFile(scope: !1012, file: !4, discriminator: 11)
!1917 = !DILocation(line: 155, column: 13, scope: !1013)
!1918 = !DILocation(line: 157, column: 48, scope: !1011)
!1919 = !DILocation(line: 157, column: 54, scope: !1011)
!1920 = !DILocation(line: 157, column: 19, scope: !1011)
!1921 = !DILocation(line: 157, column: 17, scope: !1011)
!1922 = !DILocation(line: 158, column: 17, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1011, file: !4, line: 158, column: 17)
!1924 = !DILocation(line: 158, column: 21, scope: !1923)
!1925 = !DILocation(line: 158, column: 17, scope: !1011)
!1926 = !DILocation(line: 159, column: 17, scope: !1923)
!1927 = !DILocation(line: 160, column: 13, scope: !1011)
!1928 = !DILocation(line: 160, column: 18, scope: !1929)
!1929 = !DILexicalBlockFile(scope: !1010, file: !4, discriminator: 1)
!1930 = !DILocation(line: 160, column: 28, scope: !1010)
!1931 = !DILocation(line: 160, column: 58, scope: !1010)
!1932 = !DILocation(line: 160, column: 64, scope: !1010)
!1933 = !DILocation(line: 160, column: 81, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1010, file: !4, line: 160, column: 78)
!1935 = !DILocation(line: 160, column: 98, scope: !1934)
!1936 = !DILocation(line: 160, column: 78, scope: !1934)
!1937 = !DILocation(line: 160, column: 108, scope: !1934)
!1938 = !DILocation(line: 160, column: 78, scope: !1010)
!1939 = !DILocation(line: 160, column: 78, scope: !1940)
!1940 = !DILexicalBlockFile(scope: !1010, file: !4, discriminator: 2)
!1941 = !DILocation(line: 160, column: 139, scope: !1942)
!1942 = !DILexicalBlockFile(scope: !1934, file: !4, discriminator: 3)
!1943 = !DILocation(line: 160, column: 157, scope: !1934)
!1944 = !DILocation(line: 160, column: 167, scope: !1934)
!1945 = !DILocation(line: 160, column: 192, scope: !1934)
!1946 = !DILocation(line: 160, column: 123, scope: !1934)
!1947 = !DILocation(line: 160, column: 211, scope: !1948)
!1948 = !DILexicalBlockFile(scope: !1011, file: !4, discriminator: 4)
!1949 = !DILocation(line: 160, column: 211, scope: !1010)
!1950 = !DILocation(line: 160, column: 211, scope: !1951)
!1951 = !DILexicalBlockFile(scope: !1010, file: !4, discriminator: 5)
!1952 = !DILocation(line: 161, column: 28, scope: !1011)
!1953 = !DILocation(line: 161, column: 13, scope: !1011)
!1954 = !DILocation(line: 161, column: 19, scope: !1011)
!1955 = !DILocation(line: 161, column: 26, scope: !1011)
!1956 = !DILocation(line: 162, column: 9, scope: !1011)
!1957 = !DILocation(line: 163, column: 5, scope: !1013)
!1958 = !DILocation(line: 165, column: 24, scope: !1014)
!1959 = !DILocation(line: 165, column: 9, scope: !1014)
!1960 = !DILocation(line: 165, column: 15, scope: !1014)
!1961 = !DILocation(line: 165, column: 22, scope: !1014)
!1962 = !DILocation(line: 166, column: 5, scope: !944)
!1963 = !DILocation(line: 166, column: 10, scope: !1964)
!1964 = !DILexicalBlockFile(scope: !1016, file: !4, discriminator: 1)
!1965 = !DILocation(line: 166, column: 20, scope: !1016)
!1966 = !DILocation(line: 166, column: 50, scope: !1016)
!1967 = !DILocation(line: 166, column: 65, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1016, file: !4, line: 166, column: 62)
!1969 = !DILocation(line: 166, column: 82, scope: !1968)
!1970 = !DILocation(line: 166, column: 62, scope: !1968)
!1971 = !DILocation(line: 166, column: 92, scope: !1968)
!1972 = !DILocation(line: 166, column: 62, scope: !1016)
!1973 = !DILocation(line: 166, column: 62, scope: !1974)
!1974 = !DILexicalBlockFile(scope: !1016, file: !4, discriminator: 2)
!1975 = !DILocation(line: 166, column: 123, scope: !1976)
!1976 = !DILexicalBlockFile(scope: !1968, file: !4, discriminator: 3)
!1977 = !DILocation(line: 166, column: 141, scope: !1968)
!1978 = !DILocation(line: 166, column: 151, scope: !1968)
!1979 = !DILocation(line: 166, column: 176, scope: !1968)
!1980 = !DILocation(line: 166, column: 107, scope: !1968)
!1981 = !DILocation(line: 166, column: 195, scope: !1982)
!1982 = !DILexicalBlockFile(scope: !944, file: !4, discriminator: 4)
!1983 = !DILocation(line: 166, column: 195, scope: !1016)
!1984 = !DILocation(line: 166, column: 195, scope: !1985)
!1985 = !DILexicalBlockFile(scope: !1016, file: !4, discriminator: 5)
!1986 = !DILocation(line: 167, column: 5, scope: !944)
!1987 = !DILocation(line: 170, column: 5, scope: !944)
!1988 = !DILocation(line: 170, column: 10, scope: !1989)
!1989 = !DILexicalBlockFile(scope: !1018, file: !4, discriminator: 1)
!1990 = !DILocation(line: 170, column: 20, scope: !1018)
!1991 = !DILocation(line: 170, column: 50, scope: !1018)
!1992 = !DILocation(line: 170, column: 65, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1018, file: !4, line: 170, column: 62)
!1994 = !DILocation(line: 170, column: 82, scope: !1993)
!1995 = !DILocation(line: 170, column: 62, scope: !1993)
!1996 = !DILocation(line: 170, column: 92, scope: !1993)
!1997 = !DILocation(line: 170, column: 62, scope: !1018)
!1998 = !DILocation(line: 170, column: 62, scope: !1999)
!1999 = !DILexicalBlockFile(scope: !1018, file: !4, discriminator: 2)
!2000 = !DILocation(line: 170, column: 123, scope: !2001)
!2001 = !DILexicalBlockFile(scope: !1993, file: !4, discriminator: 3)
!2002 = !DILocation(line: 170, column: 141, scope: !1993)
!2003 = !DILocation(line: 170, column: 151, scope: !1993)
!2004 = !DILocation(line: 170, column: 176, scope: !1993)
!2005 = !DILocation(line: 170, column: 107, scope: !1993)
!2006 = !DILocation(line: 170, column: 195, scope: !1982)
!2007 = !DILocation(line: 170, column: 195, scope: !1018)
!2008 = !DILocation(line: 170, column: 195, scope: !2009)
!2009 = !DILexicalBlockFile(scope: !1018, file: !4, discriminator: 5)
!2010 = !DILocation(line: 171, column: 5, scope: !944)
!2011 = !DILocation(line: 171, column: 10, scope: !2012)
!2012 = !DILexicalBlockFile(scope: !1020, file: !4, discriminator: 1)
!2013 = !DILocation(line: 171, column: 20, scope: !1020)
!2014 = !DILocation(line: 171, column: 51, scope: !1020)
!2015 = !DILocation(line: 171, column: 66, scope: !1023)
!2016 = !DILocation(line: 171, column: 82, scope: !1023)
!2017 = !DILocation(line: 171, column: 66, scope: !1020)
!2018 = !DILocation(line: 171, column: 97, scope: !2019)
!2019 = !DILexicalBlockFile(scope: !1023, file: !4, discriminator: 2)
!2020 = !DILocation(line: 171, column: 102, scope: !2021)
!2021 = !DILexicalBlockFile(scope: !1022, file: !4, discriminator: 4)
!2022 = !DILocation(line: 171, column: 112, scope: !1022)
!2023 = !DILocation(line: 171, column: 142, scope: !1022)
!2024 = !DILocation(line: 171, column: 168, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !1022, file: !4, line: 171, column: 165)
!2026 = !DILocation(line: 171, column: 185, scope: !2025)
!2027 = !DILocation(line: 171, column: 165, scope: !2025)
!2028 = !DILocation(line: 171, column: 195, scope: !2025)
!2029 = !DILocation(line: 171, column: 165, scope: !1022)
!2030 = !DILocation(line: 171, column: 165, scope: !2031)
!2031 = !DILexicalBlockFile(scope: !1022, file: !4, discriminator: 5)
!2032 = !DILocation(line: 171, column: 226, scope: !2033)
!2033 = !DILexicalBlockFile(scope: !2025, file: !4, discriminator: 6)
!2034 = !DILocation(line: 171, column: 244, scope: !2025)
!2035 = !DILocation(line: 171, column: 254, scope: !2025)
!2036 = !DILocation(line: 171, column: 279, scope: !2025)
!2037 = !DILocation(line: 171, column: 210, scope: !2025)
!2038 = !DILocation(line: 171, column: 298, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !1023, file: !4, discriminator: 7)
!2040 = !DILocation(line: 171, column: 298, scope: !1022)
!2041 = !DILocation(line: 171, column: 298, scope: !2042)
!2042 = !DILexicalBlockFile(scope: !1022, file: !4, discriminator: 8)
!2043 = !DILocation(line: 171, column: 298, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !1022, file: !4, discriminator: 9)
!2045 = !DILocation(line: 171, column: 311, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !2047, file: !4, discriminator: 10)
!2047 = !DILexicalBlockFile(scope: !944, file: !4, discriminator: 3)
!2048 = !DILocation(line: 171, column: 311, scope: !1020)
!2049 = !DILocation(line: 171, column: 311, scope: !2050)
!2050 = !DILexicalBlockFile(scope: !1020, file: !4, discriminator: 11)
!2051 = !DILocation(line: 172, column: 5, scope: !944)
!2052 = !DILocation(line: 173, column: 1, scope: !944)
!2053 = !DILocation(line: 379, column: 35, scope: !559)
!2054 = !DILocation(line: 379, column: 50, scope: !559)
!2055 = !DILocation(line: 381, column: 5, scope: !559)
!2056 = !DILocation(line: 381, column: 18, scope: !559)
!2057 = !DILocation(line: 381, column: 40, scope: !559)
!2058 = !DILocation(line: 381, column: 25, scope: !559)
!2059 = !DILocation(line: 382, column: 5, scope: !559)
!2060 = !DILocation(line: 382, column: 15, scope: !559)
!2061 = !DILocation(line: 383, column: 5, scope: !559)
!2062 = !DILocation(line: 383, column: 15, scope: !559)
!2063 = !DILocation(line: 384, column: 5, scope: !559)
!2064 = !DILocation(line: 384, column: 15, scope: !559)
!2065 = !DILocation(line: 385, column: 5, scope: !559)
!2066 = !DILocation(line: 385, column: 15, scope: !559)
!2067 = !DILocation(line: 387, column: 27, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !559, file: !4, line: 387, column: 9)
!2069 = !DILocation(line: 387, column: 10, scope: !2068)
!2070 = !DILocation(line: 387, column: 9, scope: !559)
!2071 = !DILocation(line: 388, column: 9, scope: !2068)
!2072 = !DILocation(line: 390, column: 25, scope: !559)
!2073 = !DILocation(line: 390, column: 31, scope: !559)
!2074 = !DILocation(line: 390, column: 13, scope: !559)
!2075 = !DILocation(line: 390, column: 5, scope: !559)
!2076 = !DILocation(line: 392, column: 9, scope: !570)
!2077 = !DILocation(line: 395, column: 9, scope: !570)
!2078 = !DILocation(line: 395, column: 14, scope: !2079)
!2079 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 1)
!2080 = !DILocation(line: 395, column: 24, scope: !569)
!2081 = !DILocation(line: 395, column: 54, scope: !569)
!2082 = !DILocation(line: 395, column: 82, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !569, file: !4, line: 395, column: 79)
!2084 = !DILocation(line: 395, column: 99, scope: !2083)
!2085 = !DILocation(line: 395, column: 79, scope: !2083)
!2086 = !DILocation(line: 395, column: 109, scope: !2083)
!2087 = !DILocation(line: 395, column: 79, scope: !569)
!2088 = !DILocation(line: 395, column: 79, scope: !2089)
!2089 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 2)
!2090 = !DILocation(line: 395, column: 140, scope: !2091)
!2091 = !DILexicalBlockFile(scope: !2083, file: !4, discriminator: 3)
!2092 = !DILocation(line: 395, column: 158, scope: !2083)
!2093 = !DILocation(line: 395, column: 168, scope: !2083)
!2094 = !DILocation(line: 395, column: 193, scope: !2083)
!2095 = !DILocation(line: 395, column: 124, scope: !2083)
!2096 = !DILocation(line: 395, column: 212, scope: !2097)
!2097 = !DILexicalBlockFile(scope: !570, file: !4, discriminator: 4)
!2098 = !DILocation(line: 395, column: 212, scope: !569)
!2099 = !DILocation(line: 395, column: 212, scope: !2100)
!2100 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 5)
!2101 = !DILocation(line: 395, column: 212, scope: !2102)
!2102 = !DILexicalBlockFile(scope: !569, file: !4, discriminator: 6)
!2103 = !DILocation(line: 398, column: 16, scope: !570)
!2104 = !DILocation(line: 399, column: 9, scope: !570)
!2105 = !DILocation(line: 401, column: 30, scope: !570)
!2106 = !DILocation(line: 401, column: 18, scope: !570)
!2107 = !DILocation(line: 401, column: 16, scope: !570)
!2108 = !DILocation(line: 402, column: 9, scope: !570)
!2109 = !DILocation(line: 404, column: 21, scope: !559)
!2110 = !DILocation(line: 404, column: 31, scope: !559)
!2111 = !DILocation(line: 404, column: 40, scope: !559)
!2112 = !DILocation(line: 405, column: 12, scope: !559)
!2113 = !DILocation(line: 405, column: 5, scope: !559)
!2114 = !DILocation(line: 406, column: 1, scope: !559)
!2115 = !DILocation(line: 415, column: 35, scope: !637)
!2116 = !DILocation(line: 415, column: 50, scope: !637)
!2117 = !DILocation(line: 417, column: 5, scope: !637)
!2118 = !DILocation(line: 417, column: 18, scope: !637)
!2119 = !DILocation(line: 417, column: 40, scope: !637)
!2120 = !DILocation(line: 417, column: 25, scope: !637)
!2121 = !DILocation(line: 418, column: 5, scope: !637)
!2122 = !DILocation(line: 418, column: 15, scope: !637)
!2123 = !DILocation(line: 419, column: 5, scope: !637)
!2124 = !DILocation(line: 419, column: 15, scope: !637)
!2125 = !DILocation(line: 420, column: 5, scope: !637)
!2126 = !DILocation(line: 420, column: 15, scope: !637)
!2127 = !DILocation(line: 421, column: 5, scope: !637)
!2128 = !DILocation(line: 421, column: 15, scope: !637)
!2129 = !DILocation(line: 423, column: 27, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !637, file: !4, line: 423, column: 9)
!2131 = !DILocation(line: 423, column: 10, scope: !2130)
!2132 = !DILocation(line: 423, column: 9, scope: !637)
!2133 = !DILocation(line: 424, column: 9, scope: !2130)
!2134 = !DILocation(line: 426, column: 25, scope: !637)
!2135 = !DILocation(line: 426, column: 31, scope: !637)
!2136 = !DILocation(line: 426, column: 13, scope: !637)
!2137 = !DILocation(line: 426, column: 5, scope: !637)
!2138 = !DILocation(line: 428, column: 9, scope: !648)
!2139 = !DILocation(line: 430, column: 18, scope: !648)
!2140 = !DILocation(line: 430, column: 16, scope: !648)
!2141 = !DILocation(line: 431, column: 9, scope: !648)
!2142 = !DILocation(line: 433, column: 39, scope: !648)
!2143 = !DILocation(line: 433, column: 18, scope: !648)
!2144 = !DILocation(line: 433, column: 16, scope: !648)
!2145 = !DILocation(line: 434, column: 9, scope: !648)
!2146 = !DILocation(line: 436, column: 59, scope: !648)
!2147 = !DILocation(line: 436, column: 18, scope: !648)
!2148 = !DILocation(line: 436, column: 16, scope: !648)
!2149 = !DILocation(line: 437, column: 9, scope: !648)
!2150 = !DILocation(line: 437, column: 14, scope: !2151)
!2151 = !DILexicalBlockFile(scope: !647, file: !4, discriminator: 1)
!2152 = !DILocation(line: 437, column: 24, scope: !647)
!2153 = !DILocation(line: 437, column: 54, scope: !647)
!2154 = !DILocation(line: 437, column: 82, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !647, file: !4, line: 437, column: 79)
!2156 = !DILocation(line: 437, column: 99, scope: !2155)
!2157 = !DILocation(line: 437, column: 79, scope: !2155)
!2158 = !DILocation(line: 437, column: 109, scope: !2155)
!2159 = !DILocation(line: 437, column: 79, scope: !647)
!2160 = !DILocation(line: 437, column: 79, scope: !2161)
!2161 = !DILexicalBlockFile(scope: !647, file: !4, discriminator: 2)
!2162 = !DILocation(line: 437, column: 140, scope: !2163)
!2163 = !DILexicalBlockFile(scope: !2155, file: !4, discriminator: 3)
!2164 = !DILocation(line: 437, column: 158, scope: !2155)
!2165 = !DILocation(line: 437, column: 168, scope: !2155)
!2166 = !DILocation(line: 437, column: 193, scope: !2155)
!2167 = !DILocation(line: 437, column: 124, scope: !2155)
!2168 = !DILocation(line: 437, column: 212, scope: !2169)
!2169 = !DILexicalBlockFile(scope: !648, file: !4, discriminator: 4)
!2170 = !DILocation(line: 437, column: 212, scope: !647)
!2171 = !DILocation(line: 437, column: 212, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !647, file: !4, discriminator: 5)
!2173 = !DILocation(line: 438, column: 16, scope: !648)
!2174 = !DILocation(line: 438, column: 9, scope: !648)
!2175 = !DILocation(line: 440, column: 12, scope: !637)
!2176 = !DILocation(line: 440, column: 5, scope: !637)
!2177 = !DILocation(line: 441, column: 1, scope: !637)
!2178 = !DILocation(line: 445, column: 35, scope: !649)
!2179 = !DILocation(line: 445, column: 50, scope: !649)
!2180 = !DILocation(line: 447, column: 5, scope: !649)
!2181 = !DILocation(line: 447, column: 18, scope: !649)
!2182 = !DILocation(line: 447, column: 40, scope: !649)
!2183 = !DILocation(line: 447, column: 25, scope: !649)
!2184 = !DILocation(line: 448, column: 5, scope: !649)
!2185 = !DILocation(line: 448, column: 15, scope: !649)
!2186 = !DILocation(line: 448, column: 35, scope: !649)
!2187 = !DILocation(line: 448, column: 41, scope: !649)
!2188 = !DILocation(line: 449, column: 5, scope: !649)
!2189 = !DILocation(line: 449, column: 15, scope: !649)
!2190 = !DILocation(line: 450, column: 5, scope: !649)
!2191 = !DILocation(line: 450, column: 15, scope: !649)
!2192 = !DILocation(line: 451, column: 5, scope: !649)
!2193 = !DILocation(line: 451, column: 9, scope: !649)
!2194 = !DILocation(line: 453, column: 27, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !649, file: !4, line: 453, column: 9)
!2196 = !DILocation(line: 453, column: 10, scope: !2195)
!2197 = !DILocation(line: 453, column: 9, scope: !649)
!2198 = !DILocation(line: 455, column: 9, scope: !2195)
!2199 = !DILocation(line: 456, column: 43, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !649, file: !4, line: 456, column: 9)
!2201 = !DILocation(line: 456, column: 27, scope: !2200)
!2202 = !DILocation(line: 456, column: 54, scope: !2200)
!2203 = !DILocation(line: 456, column: 60, scope: !2200)
!2204 = !DILocation(line: 456, column: 25, scope: !2200)
!2205 = !DILocation(line: 456, column: 25, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2200, file: !4, discriminator: 1)
!2207 = !DILocation(line: 456, column: 103, scope: !2208)
!2208 = !DILexicalBlockFile(scope: !2200, file: !4, discriminator: 2)
!2209 = !DILocation(line: 456, column: 73, scope: !2200)
!2210 = !DILocation(line: 456, column: 116, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !2212, file: !4, discriminator: 4)
!2212 = !DILexicalBlockFile(scope: !2200, file: !4, discriminator: 3)
!2213 = !DILocation(line: 456, column: 9, scope: !649)
!2214 = !DILocation(line: 457, column: 9, scope: !2200)
!2215 = !DILocation(line: 459, column: 28, scope: !649)
!2216 = !DILocation(line: 459, column: 34, scope: !649)
!2217 = !DILocation(line: 459, column: 12, scope: !649)
!2218 = !DILocation(line: 459, column: 10, scope: !649)
!2219 = !DILocation(line: 460, column: 9, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !649, file: !4, line: 460, column: 9)
!2221 = !DILocation(line: 460, column: 14, scope: !2220)
!2222 = !DILocation(line: 460, column: 9, scope: !649)
!2223 = !DILocation(line: 461, column: 9, scope: !2220)
!2224 = !DILocation(line: 463, column: 36, scope: !649)
!2225 = !DILocation(line: 463, column: 11, scope: !649)
!2226 = !DILocation(line: 463, column: 9, scope: !649)
!2227 = !DILocation(line: 464, column: 9, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !649, file: !4, line: 464, column: 9)
!2229 = !DILocation(line: 464, column: 13, scope: !2228)
!2230 = !DILocation(line: 464, column: 9, scope: !649)
!2231 = !DILocation(line: 465, column: 9, scope: !2228)
!2232 = !DILocation(line: 466, column: 29, scope: !649)
!2233 = !DILocation(line: 466, column: 12, scope: !649)
!2234 = !DILocation(line: 466, column: 10, scope: !649)
!2235 = !DILocation(line: 469, column: 30, scope: !2236)
!2236 = distinct !DILexicalBlock(scope: !649, file: !4, line: 469, column: 9)
!2237 = !DILocation(line: 469, column: 62, scope: !2236)
!2238 = !DILocation(line: 469, column: 50, scope: !2236)
!2239 = !DILocation(line: 469, column: 9, scope: !2236)
!2240 = !DILocation(line: 469, column: 68, scope: !2236)
!2241 = !DILocation(line: 469, column: 9, scope: !649)
!2242 = !DILocation(line: 470, column: 9, scope: !2236)
!2243 = !DILocation(line: 472, column: 9, scope: !662)
!2244 = !DILocation(line: 472, column: 9, scope: !649)
!2245 = !DILocation(line: 475, column: 9, scope: !661)
!2246 = !DILocation(line: 475, column: 19, scope: !661)
!2247 = !DILocation(line: 475, column: 29, scope: !661)
!2248 = !DILocation(line: 475, column: 40, scope: !661)
!2249 = !DILocation(line: 476, column: 9, scope: !661)
!2250 = !DILocation(line: 476, column: 13, scope: !661)
!2251 = !DILocation(line: 478, column: 31, scope: !661)
!2252 = !DILocation(line: 478, column: 19, scope: !661)
!2253 = !DILocation(line: 478, column: 17, scope: !661)
!2254 = !DILocation(line: 479, column: 13, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !661, file: !4, line: 479, column: 13)
!2256 = !DILocation(line: 479, column: 21, scope: !2255)
!2257 = !DILocation(line: 479, column: 13, scope: !661)
!2258 = !DILocation(line: 480, column: 13, scope: !2255)
!2259 = !DILocation(line: 483, column: 33, scope: !661)
!2260 = !DILocation(line: 483, column: 39, scope: !661)
!2261 = !DILocation(line: 484, column: 33, scope: !661)
!2262 = !DILocation(line: 484, column: 39, scope: !661)
!2263 = !DILocation(line: 484, column: 47, scope: !661)
!2264 = !DILocation(line: 482, column: 20, scope: !661)
!2265 = !DILocation(line: 482, column: 18, scope: !661)
!2266 = !DILocation(line: 485, column: 9, scope: !661)
!2267 = !DILocation(line: 485, column: 14, scope: !2268)
!2268 = !DILexicalBlockFile(scope: !667, file: !4, discriminator: 1)
!2269 = !DILocation(line: 485, column: 24, scope: !667)
!2270 = !DILocation(line: 485, column: 54, scope: !667)
!2271 = !DILocation(line: 485, column: 72, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !667, file: !4, line: 485, column: 69)
!2273 = !DILocation(line: 485, column: 89, scope: !2272)
!2274 = !DILocation(line: 485, column: 69, scope: !2272)
!2275 = !DILocation(line: 485, column: 99, scope: !2272)
!2276 = !DILocation(line: 485, column: 69, scope: !667)
!2277 = !DILocation(line: 485, column: 69, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !667, file: !4, discriminator: 2)
!2279 = !DILocation(line: 485, column: 130, scope: !2280)
!2280 = !DILexicalBlockFile(scope: !2272, file: !4, discriminator: 3)
!2281 = !DILocation(line: 485, column: 148, scope: !2272)
!2282 = !DILocation(line: 485, column: 158, scope: !2272)
!2283 = !DILocation(line: 485, column: 183, scope: !2272)
!2284 = !DILocation(line: 485, column: 114, scope: !2272)
!2285 = !DILocation(line: 485, column: 202, scope: !2286)
!2286 = !DILexicalBlockFile(scope: !661, file: !4, discriminator: 4)
!2287 = !DILocation(line: 485, column: 202, scope: !667)
!2288 = !DILocation(line: 485, column: 202, scope: !2289)
!2289 = !DILexicalBlockFile(scope: !667, file: !4, discriminator: 5)
!2290 = !DILocation(line: 486, column: 13, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !661, file: !4, line: 486, column: 13)
!2292 = !DILocation(line: 486, column: 22, scope: !2291)
!2293 = !DILocation(line: 486, column: 13, scope: !661)
!2294 = !DILocation(line: 487, column: 13, scope: !2291)
!2295 = !DILocation(line: 489, column: 40, scope: !661)
!2296 = !DILocation(line: 489, column: 19, scope: !661)
!2297 = !DILocation(line: 489, column: 17, scope: !661)
!2298 = !DILocation(line: 490, column: 13, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !661, file: !4, line: 490, column: 13)
!2300 = !DILocation(line: 490, column: 21, scope: !2299)
!2301 = !DILocation(line: 490, column: 13, scope: !661)
!2302 = !DILocation(line: 491, column: 13, scope: !2299)
!2303 = !DILocation(line: 492, column: 36, scope: !661)
!2304 = !DILocation(line: 492, column: 54, scope: !661)
!2305 = !DILocation(line: 492, column: 15, scope: !661)
!2306 = !DILocation(line: 492, column: 13, scope: !661)
!2307 = !DILocation(line: 493, column: 9, scope: !661)
!2308 = !DILocation(line: 493, column: 14, scope: !2309)
!2309 = !DILexicalBlockFile(scope: !669, file: !4, discriminator: 1)
!2310 = !DILocation(line: 493, column: 24, scope: !669)
!2311 = !DILocation(line: 493, column: 54, scope: !669)
!2312 = !DILocation(line: 493, column: 72, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !669, file: !4, line: 493, column: 69)
!2314 = !DILocation(line: 493, column: 89, scope: !2313)
!2315 = !DILocation(line: 493, column: 69, scope: !2313)
!2316 = !DILocation(line: 493, column: 99, scope: !2313)
!2317 = !DILocation(line: 493, column: 69, scope: !669)
!2318 = !DILocation(line: 493, column: 69, scope: !2319)
!2319 = !DILexicalBlockFile(scope: !669, file: !4, discriminator: 2)
!2320 = !DILocation(line: 493, column: 130, scope: !2321)
!2321 = !DILexicalBlockFile(scope: !2313, file: !4, discriminator: 3)
!2322 = !DILocation(line: 493, column: 148, scope: !2313)
!2323 = !DILocation(line: 493, column: 158, scope: !2313)
!2324 = !DILocation(line: 493, column: 183, scope: !2313)
!2325 = !DILocation(line: 493, column: 114, scope: !2313)
!2326 = !DILocation(line: 493, column: 202, scope: !2286)
!2327 = !DILocation(line: 493, column: 202, scope: !669)
!2328 = !DILocation(line: 493, column: 202, scope: !2329)
!2329 = !DILexicalBlockFile(scope: !669, file: !4, discriminator: 5)
!2330 = !DILocation(line: 494, column: 13, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !661, file: !4, line: 494, column: 13)
!2332 = !DILocation(line: 494, column: 17, scope: !2331)
!2333 = !DILocation(line: 494, column: 13, scope: !661)
!2334 = !DILocation(line: 495, column: 13, scope: !2331)
!2335 = !DILocation(line: 496, column: 5, scope: !662)
!2336 = !DILocation(line: 496, column: 5, scope: !2337)
!2337 = !DILexicalBlockFile(scope: !662, file: !4, discriminator: 1)
!2338 = !DILocation(line: 496, column: 5, scope: !661)
!2339 = !DILocation(line: 497, column: 41, scope: !649)
!2340 = !DILocation(line: 497, column: 51, scope: !649)
!2341 = !DILocation(line: 497, column: 57, scope: !649)
!2342 = !DILocation(line: 497, column: 11, scope: !649)
!2343 = !DILocation(line: 497, column: 9, scope: !649)
!2344 = !DILocation(line: 498, column: 5, scope: !649)
!2345 = !DILocation(line: 498, column: 10, scope: !2346)
!2346 = !DILexicalBlockFile(scope: !671, file: !4, discriminator: 1)
!2347 = !DILocation(line: 498, column: 20, scope: !671)
!2348 = !DILocation(line: 498, column: 43, scope: !671)
!2349 = !DILocation(line: 498, column: 54, scope: !675)
!2350 = !DILocation(line: 498, column: 62, scope: !675)
!2351 = !DILocation(line: 498, column: 54, scope: !671)
!2352 = !DILocation(line: 498, column: 86, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !674, file: !4, discriminator: 2)
!2354 = !DILocation(line: 498, column: 100, scope: !674)
!2355 = !DILocation(line: 498, column: 105, scope: !2356)
!2356 = !DILexicalBlockFile(scope: !673, file: !4, discriminator: 4)
!2357 = !DILocation(line: 498, column: 115, scope: !673)
!2358 = !DILocation(line: 498, column: 145, scope: !673)
!2359 = !DILocation(line: 498, column: 163, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !673, file: !4, line: 498, column: 160)
!2361 = !DILocation(line: 498, column: 180, scope: !2360)
!2362 = !DILocation(line: 498, column: 160, scope: !2360)
!2363 = !DILocation(line: 498, column: 190, scope: !2360)
!2364 = !DILocation(line: 498, column: 160, scope: !673)
!2365 = !DILocation(line: 498, column: 160, scope: !2366)
!2366 = !DILexicalBlockFile(scope: !673, file: !4, discriminator: 5)
!2367 = !DILocation(line: 498, column: 221, scope: !2368)
!2368 = !DILexicalBlockFile(scope: !2360, file: !4, discriminator: 6)
!2369 = !DILocation(line: 498, column: 239, scope: !2360)
!2370 = !DILocation(line: 498, column: 249, scope: !2360)
!2371 = !DILocation(line: 498, column: 274, scope: !2360)
!2372 = !DILocation(line: 498, column: 205, scope: !2360)
!2373 = !DILocation(line: 498, column: 293, scope: !2374)
!2374 = !DILexicalBlockFile(scope: !674, file: !4, discriminator: 7)
!2375 = !DILocation(line: 498, column: 293, scope: !673)
!2376 = !DILocation(line: 498, column: 293, scope: !2377)
!2377 = !DILexicalBlockFile(scope: !673, file: !4, discriminator: 8)
!2378 = !DILocation(line: 498, column: 306, scope: !2379)
!2379 = !DILexicalBlockFile(scope: !674, file: !4, discriminator: 9)
!2380 = !DILocation(line: 498, column: 308, scope: !2381)
!2381 = !DILexicalBlockFile(scope: !2382, file: !4, discriminator: 10)
!2382 = !DILexicalBlockFile(scope: !649, file: !4, discriminator: 3)
!2383 = !DILocation(line: 498, column: 308, scope: !671)
!2384 = !DILocation(line: 498, column: 308, scope: !2385)
!2385 = !DILexicalBlockFile(scope: !671, file: !4, discriminator: 11)
!2386 = !DILocation(line: 499, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !649, file: !4, line: 499, column: 9)
!2388 = !DILocation(line: 499, column: 13, scope: !2387)
!2389 = !DILocation(line: 499, column: 9, scope: !649)
!2390 = !DILocation(line: 500, column: 9, scope: !2387)
!2391 = !DILocation(line: 502, column: 9, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !649, file: !4, line: 502, column: 9)
!2393 = !DILocation(line: 502, column: 9, scope: !649)
!2394 = !DILocation(line: 504, column: 28, scope: !2392)
!2395 = !DILocation(line: 504, column: 38, scope: !2392)
!2396 = !DILocation(line: 503, column: 9, scope: !2392)
!2397 = !DILocation(line: 505, column: 5, scope: !649)
!2398 = !DILocation(line: 505, column: 10, scope: !2399)
!2399 = !DILexicalBlockFile(scope: !677, file: !4, discriminator: 1)
!2400 = !DILocation(line: 505, column: 20, scope: !677)
!2401 = !DILocation(line: 505, column: 50, scope: !677)
!2402 = !DILocation(line: 505, column: 68, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !677, file: !4, line: 505, column: 65)
!2404 = !DILocation(line: 505, column: 85, scope: !2403)
!2405 = !DILocation(line: 505, column: 65, scope: !2403)
!2406 = !DILocation(line: 505, column: 95, scope: !2403)
!2407 = !DILocation(line: 505, column: 65, scope: !677)
!2408 = !DILocation(line: 505, column: 65, scope: !2409)
!2409 = !DILexicalBlockFile(scope: !677, file: !4, discriminator: 2)
!2410 = !DILocation(line: 505, column: 126, scope: !2411)
!2411 = !DILexicalBlockFile(scope: !2403, file: !4, discriminator: 3)
!2412 = !DILocation(line: 505, column: 144, scope: !2403)
!2413 = !DILocation(line: 505, column: 154, scope: !2403)
!2414 = !DILocation(line: 505, column: 179, scope: !2403)
!2415 = !DILocation(line: 505, column: 110, scope: !2403)
!2416 = !DILocation(line: 505, column: 198, scope: !2417)
!2417 = !DILexicalBlockFile(scope: !649, file: !4, discriminator: 4)
!2418 = !DILocation(line: 505, column: 198, scope: !677)
!2419 = !DILocation(line: 505, column: 198, scope: !2420)
!2420 = !DILexicalBlockFile(scope: !677, file: !4, discriminator: 5)
!2421 = !DILocation(line: 506, column: 12, scope: !649)
!2422 = !DILocation(line: 506, column: 5, scope: !649)
!2423 = !DILocation(line: 508, column: 5, scope: !649)
!2424 = !DILocation(line: 508, column: 10, scope: !2425)
!2425 = !DILexicalBlockFile(scope: !679, file: !4, discriminator: 1)
!2426 = !DILocation(line: 508, column: 20, scope: !679)
!2427 = !DILocation(line: 508, column: 51, scope: !679)
!2428 = !DILocation(line: 508, column: 62, scope: !682)
!2429 = !DILocation(line: 508, column: 78, scope: !682)
!2430 = !DILocation(line: 508, column: 62, scope: !679)
!2431 = !DILocation(line: 508, column: 93, scope: !2432)
!2432 = !DILexicalBlockFile(scope: !682, file: !4, discriminator: 2)
!2433 = !DILocation(line: 508, column: 98, scope: !2434)
!2434 = !DILexicalBlockFile(scope: !681, file: !4, discriminator: 4)
!2435 = !DILocation(line: 508, column: 108, scope: !681)
!2436 = !DILocation(line: 508, column: 138, scope: !681)
!2437 = !DILocation(line: 508, column: 164, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !681, file: !4, line: 508, column: 161)
!2439 = !DILocation(line: 508, column: 181, scope: !2438)
!2440 = !DILocation(line: 508, column: 161, scope: !2438)
!2441 = !DILocation(line: 508, column: 191, scope: !2438)
!2442 = !DILocation(line: 508, column: 161, scope: !681)
!2443 = !DILocation(line: 508, column: 161, scope: !2444)
!2444 = !DILexicalBlockFile(scope: !681, file: !4, discriminator: 5)
!2445 = !DILocation(line: 508, column: 222, scope: !2446)
!2446 = !DILexicalBlockFile(scope: !2438, file: !4, discriminator: 6)
!2447 = !DILocation(line: 508, column: 240, scope: !2438)
!2448 = !DILocation(line: 508, column: 250, scope: !2438)
!2449 = !DILocation(line: 508, column: 275, scope: !2438)
!2450 = !DILocation(line: 508, column: 206, scope: !2438)
!2451 = !DILocation(line: 508, column: 294, scope: !2452)
!2452 = !DILexicalBlockFile(scope: !682, file: !4, discriminator: 7)
!2453 = !DILocation(line: 508, column: 294, scope: !681)
!2454 = !DILocation(line: 508, column: 294, scope: !2455)
!2455 = !DILexicalBlockFile(scope: !681, file: !4, discriminator: 8)
!2456 = !DILocation(line: 508, column: 294, scope: !2457)
!2457 = !DILexicalBlockFile(scope: !681, file: !4, discriminator: 9)
!2458 = !DILocation(line: 508, column: 307, scope: !2381)
!2459 = !DILocation(line: 508, column: 307, scope: !679)
!2460 = !DILocation(line: 508, column: 307, scope: !2461)
!2461 = !DILexicalBlockFile(scope: !679, file: !4, discriminator: 11)
!2462 = !DILocation(line: 509, column: 5, scope: !649)
!2463 = !DILocation(line: 509, column: 10, scope: !2464)
!2464 = !DILexicalBlockFile(scope: !684, file: !4, discriminator: 1)
!2465 = !DILocation(line: 509, column: 20, scope: !684)
!2466 = !DILocation(line: 509, column: 51, scope: !684)
!2467 = !DILocation(line: 509, column: 65, scope: !687)
!2468 = !DILocation(line: 509, column: 81, scope: !687)
!2469 = !DILocation(line: 509, column: 65, scope: !684)
!2470 = !DILocation(line: 509, column: 96, scope: !2471)
!2471 = !DILexicalBlockFile(scope: !687, file: !4, discriminator: 2)
!2472 = !DILocation(line: 509, column: 101, scope: !2473)
!2473 = !DILexicalBlockFile(scope: !686, file: !4, discriminator: 4)
!2474 = !DILocation(line: 509, column: 111, scope: !686)
!2475 = !DILocation(line: 509, column: 141, scope: !686)
!2476 = !DILocation(line: 509, column: 167, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !686, file: !4, line: 509, column: 164)
!2478 = !DILocation(line: 509, column: 184, scope: !2477)
!2479 = !DILocation(line: 509, column: 164, scope: !2477)
!2480 = !DILocation(line: 509, column: 194, scope: !2477)
!2481 = !DILocation(line: 509, column: 164, scope: !686)
!2482 = !DILocation(line: 509, column: 164, scope: !2483)
!2483 = !DILexicalBlockFile(scope: !686, file: !4, discriminator: 5)
!2484 = !DILocation(line: 509, column: 225, scope: !2485)
!2485 = !DILexicalBlockFile(scope: !2477, file: !4, discriminator: 6)
!2486 = !DILocation(line: 509, column: 243, scope: !2477)
!2487 = !DILocation(line: 509, column: 253, scope: !2477)
!2488 = !DILocation(line: 509, column: 278, scope: !2477)
!2489 = !DILocation(line: 509, column: 209, scope: !2477)
!2490 = !DILocation(line: 509, column: 297, scope: !2491)
!2491 = !DILexicalBlockFile(scope: !687, file: !4, discriminator: 7)
!2492 = !DILocation(line: 509, column: 297, scope: !686)
!2493 = !DILocation(line: 509, column: 297, scope: !2494)
!2494 = !DILexicalBlockFile(scope: !686, file: !4, discriminator: 8)
!2495 = !DILocation(line: 509, column: 297, scope: !2496)
!2496 = !DILexicalBlockFile(scope: !686, file: !4, discriminator: 9)
!2497 = !DILocation(line: 509, column: 310, scope: !2381)
!2498 = !DILocation(line: 509, column: 310, scope: !684)
!2499 = !DILocation(line: 509, column: 310, scope: !2500)
!2500 = !DILexicalBlockFile(scope: !684, file: !4, discriminator: 11)
!2501 = !DILocation(line: 510, column: 5, scope: !649)
!2502 = !DILocation(line: 511, column: 1, scope: !649)
!2503 = !DILocation(line: 559, column: 32, scope: !876)
!2504 = !DILocation(line: 559, column: 47, scope: !876)
!2505 = !DILocation(line: 561, column: 5, scope: !876)
!2506 = !DILocation(line: 561, column: 18, scope: !876)
!2507 = !DILocation(line: 561, column: 40, scope: !876)
!2508 = !DILocation(line: 561, column: 25, scope: !876)
!2509 = !DILocation(line: 562, column: 5, scope: !876)
!2510 = !DILocation(line: 562, column: 15, scope: !876)
!2511 = !DILocation(line: 562, column: 22, scope: !876)
!2512 = !DILocation(line: 563, column: 5, scope: !876)
!2513 = !DILocation(line: 563, column: 15, scope: !876)
!2514 = !DILocation(line: 564, column: 5, scope: !876)
!2515 = !DILocation(line: 564, column: 16, scope: !876)
!2516 = !DILocation(line: 564, column: 28, scope: !876)
!2517 = !DILocation(line: 564, column: 38, scope: !876)
!2518 = !DILocation(line: 566, column: 27, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !876, file: !4, line: 566, column: 9)
!2520 = !DILocation(line: 566, column: 10, scope: !2519)
!2521 = !DILocation(line: 566, column: 9, scope: !876)
!2522 = !DILocation(line: 567, column: 9, scope: !2519)
!2523 = !DILocation(line: 574, column: 21, scope: !876)
!2524 = !DILocation(line: 574, column: 29, scope: !876)
!2525 = !DILocation(line: 574, column: 38, scope: !876)
!2526 = !DILocation(line: 576, column: 43, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !876, file: !4, line: 576, column: 9)
!2528 = !DILocation(line: 576, column: 27, scope: !2527)
!2529 = !DILocation(line: 576, column: 50, scope: !2527)
!2530 = !DILocation(line: 576, column: 56, scope: !2527)
!2531 = !DILocation(line: 576, column: 25, scope: !2527)
!2532 = !DILocation(line: 576, column: 25, scope: !2533)
!2533 = !DILexicalBlockFile(scope: !2527, file: !4, discriminator: 1)
!2534 = !DILocation(line: 576, column: 99, scope: !2535)
!2535 = !DILexicalBlockFile(scope: !2527, file: !4, discriminator: 2)
!2536 = !DILocation(line: 576, column: 69, scope: !2527)
!2537 = !DILocation(line: 576, column: 108, scope: !2538)
!2538 = !DILexicalBlockFile(scope: !2539, file: !4, discriminator: 4)
!2539 = !DILexicalBlockFile(scope: !2527, file: !4, discriminator: 3)
!2540 = !DILocation(line: 576, column: 9, scope: !876)
!2541 = !DILocation(line: 577, column: 9, scope: !2527)
!2542 = !DILocation(line: 579, column: 64, scope: !876)
!2543 = !DILocation(line: 579, column: 46, scope: !876)
!2544 = !DILocation(line: 579, column: 72, scope: !876)
!2545 = !DILocation(line: 579, column: 14, scope: !876)
!2546 = !DILocation(line: 581, column: 59, scope: !876)
!2547 = !DILocation(line: 581, column: 65, scope: !876)
!2548 = !DILocation(line: 581, column: 41, scope: !876)
!2549 = !DILocation(line: 581, column: 76, scope: !876)
!2550 = !DILocation(line: 581, column: 9, scope: !876)
!2551 = !DILocation(line: 582, column: 16, scope: !876)
!2552 = !DILocation(line: 583, column: 29, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !876, file: !4, line: 583, column: 9)
!2554 = !DILocation(line: 583, column: 35, scope: !2553)
!2555 = !DILocation(line: 583, column: 41, scope: !2553)
!2556 = !DILocation(line: 583, column: 53, scope: !2553)
!2557 = !DILocation(line: 583, column: 9, scope: !2553)
!2558 = !DILocation(line: 584, column: 9, scope: !2553)
!2559 = !DILocation(line: 584, column: 101, scope: !2560)
!2560 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 1)
!2561 = !DILocation(line: 584, column: 82, scope: !2553)
!2562 = !DILocation(line: 584, column: 110, scope: !2553)
!2563 = !DILocation(line: 584, column: 116, scope: !2553)
!2564 = !DILocation(line: 584, column: 122, scope: !2553)
!2565 = !DILocation(line: 584, column: 52, scope: !2553)
!2566 = !DILocation(line: 584, column: 457, scope: !2567)
!2567 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 2)
!2568 = !DILocation(line: 584, column: 202, scope: !2553)
!2569 = !DILocation(line: 584, column: 184, scope: !2553)
!2570 = !DILocation(line: 584, column: 211, scope: !2553)
!2571 = !DILocation(line: 584, column: 217, scope: !2553)
!2572 = !DILocation(line: 584, column: 182, scope: !2553)
!2573 = !DILocation(line: 584, column: 276, scope: !2574)
!2574 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 4)
!2575 = !DILocation(line: 584, column: 259, scope: !2553)
!2576 = !DILocation(line: 584, column: 284, scope: !2553)
!2577 = !DILocation(line: 584, column: 290, scope: !2553)
!2578 = !DILocation(line: 584, column: 229, scope: !2553)
!2579 = !DILocation(line: 584, column: 326, scope: !2580)
!2580 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 6)
!2581 = !DILocation(line: 584, column: 308, scope: !2553)
!2582 = !DILocation(line: 584, column: 333, scope: !2553)
!2583 = !DILocation(line: 584, column: 300, scope: !2553)
!2584 = !DILocation(line: 584, column: 377, scope: !2585)
!2585 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 7)
!2586 = !DILocation(line: 584, column: 350, scope: !2553)
!2587 = !DILocation(line: 584, column: 384, scope: !2553)
!2588 = !DILocation(line: 584, column: 342, scope: !2553)
!2589 = !DILocation(line: 584, column: 182, scope: !2590)
!2590 = !DILexicalBlockFile(scope: !2591, file: !4, discriminator: 9)
!2591 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 8)
!2592 = !DILocation(line: 584, column: 432, scope: !2593)
!2593 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 5)
!2594 = !DILocation(line: 584, column: 411, scope: !2553)
!2595 = !DILocation(line: 584, column: 441, scope: !2553)
!2596 = !DILocation(line: 584, column: 446, scope: !2553)
!2597 = !DILocation(line: 584, column: 148, scope: !2598)
!2598 = !DILexicalBlockFile(scope: !2599, file: !4, discriminator: 11)
!2599 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 10)
!2600 = !DILocation(line: 584, column: 515, scope: !2601)
!2601 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 3)
!2602 = !DILocation(line: 584, column: 496, scope: !2553)
!2603 = !DILocation(line: 584, column: 524, scope: !2553)
!2604 = !DILocation(line: 584, column: 530, scope: !2553)
!2605 = !DILocation(line: 584, column: 536, scope: !2553)
!2606 = !DILocation(line: 584, column: 466, scope: !2553)
!2607 = !DILocation(line: 584, column: 871, scope: !2608)
!2608 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 13)
!2609 = !DILocation(line: 584, column: 616, scope: !2553)
!2610 = !DILocation(line: 584, column: 598, scope: !2553)
!2611 = !DILocation(line: 584, column: 625, scope: !2553)
!2612 = !DILocation(line: 584, column: 631, scope: !2553)
!2613 = !DILocation(line: 584, column: 596, scope: !2553)
!2614 = !DILocation(line: 584, column: 690, scope: !2615)
!2615 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 15)
!2616 = !DILocation(line: 584, column: 673, scope: !2553)
!2617 = !DILocation(line: 584, column: 698, scope: !2553)
!2618 = !DILocation(line: 584, column: 704, scope: !2553)
!2619 = !DILocation(line: 584, column: 643, scope: !2553)
!2620 = !DILocation(line: 584, column: 740, scope: !2621)
!2621 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 17)
!2622 = !DILocation(line: 584, column: 722, scope: !2553)
!2623 = !DILocation(line: 584, column: 747, scope: !2553)
!2624 = !DILocation(line: 584, column: 714, scope: !2553)
!2625 = !DILocation(line: 584, column: 791, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 18)
!2627 = !DILocation(line: 584, column: 764, scope: !2553)
!2628 = !DILocation(line: 584, column: 798, scope: !2553)
!2629 = !DILocation(line: 584, column: 756, scope: !2553)
!2630 = !DILocation(line: 584, column: 596, scope: !2631)
!2631 = !DILexicalBlockFile(scope: !2632, file: !4, discriminator: 20)
!2632 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 19)
!2633 = !DILocation(line: 584, column: 846, scope: !2634)
!2634 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 16)
!2635 = !DILocation(line: 584, column: 825, scope: !2553)
!2636 = !DILocation(line: 584, column: 855, scope: !2553)
!2637 = !DILocation(line: 584, column: 860, scope: !2553)
!2638 = !DILocation(line: 584, column: 563, scope: !2639)
!2639 = !DILexicalBlockFile(scope: !2640, file: !4, discriminator: 22)
!2640 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 21)
!2641 = !DILocation(line: 584, column: 562, scope: !2553)
!2642 = !DILocation(line: 584, column: 1188, scope: !2643)
!2643 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 14)
!2644 = !DILocation(line: 584, column: 933, scope: !2553)
!2645 = !DILocation(line: 584, column: 915, scope: !2553)
!2646 = !DILocation(line: 584, column: 942, scope: !2553)
!2647 = !DILocation(line: 584, column: 948, scope: !2553)
!2648 = !DILocation(line: 584, column: 913, scope: !2553)
!2649 = !DILocation(line: 584, column: 1007, scope: !2650)
!2650 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 24)
!2651 = !DILocation(line: 584, column: 990, scope: !2553)
!2652 = !DILocation(line: 584, column: 1015, scope: !2553)
!2653 = !DILocation(line: 584, column: 1021, scope: !2553)
!2654 = !DILocation(line: 584, column: 960, scope: !2553)
!2655 = !DILocation(line: 584, column: 1057, scope: !2656)
!2656 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 26)
!2657 = !DILocation(line: 584, column: 1039, scope: !2553)
!2658 = !DILocation(line: 584, column: 1064, scope: !2553)
!2659 = !DILocation(line: 584, column: 1031, scope: !2553)
!2660 = !DILocation(line: 584, column: 1108, scope: !2661)
!2661 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 27)
!2662 = !DILocation(line: 584, column: 1081, scope: !2553)
!2663 = !DILocation(line: 584, column: 1115, scope: !2553)
!2664 = !DILocation(line: 584, column: 1073, scope: !2553)
!2665 = !DILocation(line: 584, column: 913, scope: !2666)
!2666 = !DILexicalBlockFile(scope: !2667, file: !4, discriminator: 29)
!2667 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 28)
!2668 = !DILocation(line: 584, column: 1163, scope: !2669)
!2669 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 25)
!2670 = !DILocation(line: 584, column: 1142, scope: !2553)
!2671 = !DILocation(line: 584, column: 1172, scope: !2553)
!2672 = !DILocation(line: 584, column: 1177, scope: !2553)
!2673 = !DILocation(line: 584, column: 880, scope: !2674)
!2674 = !DILexicalBlockFile(scope: !2675, file: !4, discriminator: 31)
!2675 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 30)
!2676 = !DILocation(line: 584, column: 879, scope: !2553)
!2677 = !DILocation(line: 584, column: 52, scope: !2678)
!2678 = !DILexicalBlockFile(scope: !2679, file: !4, discriminator: 32)
!2679 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 23)
!2680 = !DILocation(line: 584, column: 1199, scope: !2681)
!2681 = !DILexicalBlockFile(scope: !2682, file: !4, discriminator: 33)
!2682 = !DILexicalBlockFile(scope: !2553, file: !4, discriminator: 12)
!2683 = !DILocation(line: 583, column: 9, scope: !876)
!2684 = !DILocation(line: 585, column: 22, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2553, file: !4, line: 584, column: 1208)
!2686 = !DILocation(line: 585, column: 26, scope: !2685)
!2687 = !DILocation(line: 585, column: 20, scope: !2685)
!2688 = !DILocation(line: 586, column: 5, scope: !2685)
!2689 = !DILocation(line: 588, column: 31, scope: !876)
!2690 = !DILocation(line: 588, column: 37, scope: !876)
!2691 = !DILocation(line: 588, column: 49, scope: !876)
!2692 = !DILocation(line: 588, column: 11, scope: !876)
!2693 = !DILocation(line: 588, column: 9, scope: !876)
!2694 = !DILocation(line: 589, column: 9, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !876, file: !4, line: 589, column: 9)
!2696 = !DILocation(line: 589, column: 13, scope: !2695)
!2697 = !DILocation(line: 589, column: 9, scope: !876)
!2698 = !DILocation(line: 590, column: 9, scope: !2695)
!2699 = !DILocation(line: 591, column: 32, scope: !876)
!2700 = !DILocation(line: 591, column: 38, scope: !876)
!2701 = !DILocation(line: 591, column: 45, scope: !876)
!2702 = !DILocation(line: 591, column: 17, scope: !876)
!2703 = !DILocation(line: 591, column: 15, scope: !876)
!2704 = !DILocation(line: 592, column: 9, scope: !890)
!2705 = !DILocation(line: 592, column: 19, scope: !890)
!2706 = !DILocation(line: 592, column: 9, scope: !876)
!2707 = !DILocation(line: 593, column: 46, scope: !889)
!2708 = !DILocation(line: 593, column: 61, scope: !889)
!2709 = !DILocation(line: 593, column: 9, scope: !889)
!2710 = !DILocation(line: 594, column: 9, scope: !889)
!2711 = !DILocation(line: 594, column: 14, scope: !2712)
!2712 = !DILexicalBlockFile(scope: !888, file: !4, discriminator: 1)
!2713 = !DILocation(line: 594, column: 24, scope: !888)
!2714 = !DILocation(line: 594, column: 54, scope: !888)
!2715 = !DILocation(line: 594, column: 68, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !888, file: !4, line: 594, column: 65)
!2717 = !DILocation(line: 594, column: 85, scope: !2716)
!2718 = !DILocation(line: 594, column: 65, scope: !2716)
!2719 = !DILocation(line: 594, column: 95, scope: !2716)
!2720 = !DILocation(line: 594, column: 65, scope: !888)
!2721 = !DILocation(line: 594, column: 65, scope: !2722)
!2722 = !DILexicalBlockFile(scope: !888, file: !4, discriminator: 2)
!2723 = !DILocation(line: 594, column: 126, scope: !2724)
!2724 = !DILexicalBlockFile(scope: !2716, file: !4, discriminator: 3)
!2725 = !DILocation(line: 594, column: 144, scope: !2716)
!2726 = !DILocation(line: 594, column: 154, scope: !2716)
!2727 = !DILocation(line: 594, column: 179, scope: !2716)
!2728 = !DILocation(line: 594, column: 110, scope: !2716)
!2729 = !DILocation(line: 594, column: 198, scope: !2730)
!2730 = !DILexicalBlockFile(scope: !889, file: !4, discriminator: 4)
!2731 = !DILocation(line: 594, column: 198, scope: !888)
!2732 = !DILocation(line: 594, column: 198, scope: !2733)
!2733 = !DILexicalBlockFile(scope: !888, file: !4, discriminator: 5)
!2734 = !DILocation(line: 595, column: 9, scope: !889)
!2735 = !DILocation(line: 597, column: 5, scope: !876)
!2736 = !DILocation(line: 597, column: 10, scope: !2737)
!2737 = !DILexicalBlockFile(scope: !892, file: !4, discriminator: 1)
!2738 = !DILocation(line: 597, column: 20, scope: !892)
!2739 = !DILocation(line: 597, column: 50, scope: !892)
!2740 = !DILocation(line: 597, column: 64, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !892, file: !4, line: 597, column: 61)
!2742 = !DILocation(line: 597, column: 81, scope: !2741)
!2743 = !DILocation(line: 597, column: 61, scope: !2741)
!2744 = !DILocation(line: 597, column: 91, scope: !2741)
!2745 = !DILocation(line: 597, column: 61, scope: !892)
!2746 = !DILocation(line: 597, column: 61, scope: !2747)
!2747 = !DILexicalBlockFile(scope: !892, file: !4, discriminator: 2)
!2748 = !DILocation(line: 597, column: 122, scope: !2749)
!2749 = !DILexicalBlockFile(scope: !2741, file: !4, discriminator: 3)
!2750 = !DILocation(line: 597, column: 140, scope: !2741)
!2751 = !DILocation(line: 597, column: 150, scope: !2741)
!2752 = !DILocation(line: 597, column: 175, scope: !2741)
!2753 = !DILocation(line: 597, column: 106, scope: !2741)
!2754 = !DILocation(line: 597, column: 194, scope: !2755)
!2755 = !DILexicalBlockFile(scope: !876, file: !4, discriminator: 4)
!2756 = !DILocation(line: 597, column: 194, scope: !892)
!2757 = !DILocation(line: 597, column: 194, scope: !2758)
!2758 = !DILexicalBlockFile(scope: !892, file: !4, discriminator: 5)
!2759 = !DILocation(line: 598, column: 5, scope: !876)
!2760 = !DILocation(line: 598, column: 10, scope: !2761)
!2761 = !DILexicalBlockFile(scope: !894, file: !4, discriminator: 1)
!2762 = !DILocation(line: 598, column: 20, scope: !894)
!2763 = !DILocation(line: 598, column: 50, scope: !894)
!2764 = !DILocation(line: 598, column: 65, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !894, file: !4, line: 598, column: 62)
!2766 = !DILocation(line: 598, column: 82, scope: !2765)
!2767 = !DILocation(line: 598, column: 62, scope: !2765)
!2768 = !DILocation(line: 598, column: 92, scope: !2765)
!2769 = !DILocation(line: 598, column: 62, scope: !894)
!2770 = !DILocation(line: 598, column: 62, scope: !2771)
!2771 = !DILexicalBlockFile(scope: !894, file: !4, discriminator: 2)
!2772 = !DILocation(line: 598, column: 123, scope: !2773)
!2773 = !DILexicalBlockFile(scope: !2765, file: !4, discriminator: 3)
!2774 = !DILocation(line: 598, column: 141, scope: !2765)
!2775 = !DILocation(line: 598, column: 151, scope: !2765)
!2776 = !DILocation(line: 598, column: 176, scope: !2765)
!2777 = !DILocation(line: 598, column: 107, scope: !2765)
!2778 = !DILocation(line: 598, column: 195, scope: !2755)
!2779 = !DILocation(line: 598, column: 195, scope: !894)
!2780 = !DILocation(line: 598, column: 195, scope: !2781)
!2781 = !DILexicalBlockFile(scope: !894, file: !4, discriminator: 5)
!2782 = !DILocation(line: 599, column: 21, scope: !876)
!2783 = !DILocation(line: 599, column: 27, scope: !876)
!2784 = !DILocation(line: 599, column: 36, scope: !876)
!2785 = !DILocation(line: 599, column: 12, scope: !876)
!2786 = !DILocation(line: 599, column: 5, scope: !876)
!2787 = !DILocation(line: 601, column: 5, scope: !876)
!2788 = !DILocation(line: 601, column: 10, scope: !2789)
!2789 = !DILexicalBlockFile(scope: !896, file: !4, discriminator: 1)
!2790 = !DILocation(line: 601, column: 20, scope: !896)
!2791 = !DILocation(line: 601, column: 50, scope: !896)
!2792 = !DILocation(line: 601, column: 65, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !896, file: !4, line: 601, column: 62)
!2794 = !DILocation(line: 601, column: 82, scope: !2793)
!2795 = !DILocation(line: 601, column: 62, scope: !2793)
!2796 = !DILocation(line: 601, column: 92, scope: !2793)
!2797 = !DILocation(line: 601, column: 62, scope: !896)
!2798 = !DILocation(line: 601, column: 62, scope: !2799)
!2799 = !DILexicalBlockFile(scope: !896, file: !4, discriminator: 2)
!2800 = !DILocation(line: 601, column: 123, scope: !2801)
!2801 = !DILexicalBlockFile(scope: !2793, file: !4, discriminator: 3)
!2802 = !DILocation(line: 601, column: 141, scope: !2793)
!2803 = !DILocation(line: 601, column: 151, scope: !2793)
!2804 = !DILocation(line: 601, column: 176, scope: !2793)
!2805 = !DILocation(line: 601, column: 107, scope: !2793)
!2806 = !DILocation(line: 601, column: 195, scope: !2755)
!2807 = !DILocation(line: 601, column: 195, scope: !896)
!2808 = !DILocation(line: 601, column: 195, scope: !2809)
!2809 = !DILexicalBlockFile(scope: !896, file: !4, discriminator: 5)
!2810 = !DILocation(line: 602, column: 5, scope: !876)
!2811 = !DILocation(line: 603, column: 1, scope: !876)
!2812 = !DILocation(line: 606, column: 32, scope: !897)
!2813 = !DILocation(line: 606, column: 47, scope: !897)
!2814 = !DILocation(line: 608, column: 5, scope: !897)
!2815 = !DILocation(line: 608, column: 18, scope: !897)
!2816 = !DILocation(line: 608, column: 40, scope: !897)
!2817 = !DILocation(line: 608, column: 25, scope: !897)
!2818 = !DILocation(line: 609, column: 5, scope: !897)
!2819 = !DILocation(line: 609, column: 15, scope: !897)
!2820 = !DILocation(line: 611, column: 27, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !897, file: !4, line: 611, column: 9)
!2822 = !DILocation(line: 611, column: 10, scope: !2821)
!2823 = !DILocation(line: 611, column: 9, scope: !897)
!2824 = !DILocation(line: 612, column: 9, scope: !2821)
!2825 = !DILocation(line: 614, column: 28, scope: !897)
!2826 = !DILocation(line: 614, column: 34, scope: !897)
!2827 = !DILocation(line: 614, column: 12, scope: !897)
!2828 = !DILocation(line: 614, column: 5, scope: !897)
!2829 = !DILocation(line: 615, column: 1, scope: !897)
!2830 = !DILocation(line: 618, column: 34, scope: !903)
!2831 = !DILocation(line: 618, column: 49, scope: !903)
!2832 = !DILocation(line: 620, column: 5, scope: !903)
!2833 = !DILocation(line: 620, column: 18, scope: !903)
!2834 = !DILocation(line: 620, column: 40, scope: !903)
!2835 = !DILocation(line: 620, column: 25, scope: !903)
!2836 = !DILocation(line: 621, column: 5, scope: !903)
!2837 = !DILocation(line: 621, column: 15, scope: !903)
!2838 = !DILocation(line: 622, column: 5, scope: !903)
!2839 = !DILocation(line: 622, column: 15, scope: !903)
!2840 = !DILocation(line: 622, column: 26, scope: !903)
!2841 = !DILocation(line: 622, column: 36, scope: !903)
!2842 = !DILocation(line: 622, column: 43, scope: !903)
!2843 = !DILocation(line: 623, column: 5, scope: !903)
!2844 = !DILocation(line: 623, column: 25, scope: !903)
!2845 = !DILocation(line: 625, column: 27, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !903, file: !4, line: 625, column: 9)
!2847 = !DILocation(line: 625, column: 10, scope: !2846)
!2848 = !DILocation(line: 625, column: 9, scope: !903)
!2849 = !DILocation(line: 626, column: 9, scope: !2846)
!2850 = !DILocation(line: 628, column: 26, scope: !903)
!2851 = !DILocation(line: 628, column: 32, scope: !903)
!2852 = !DILocation(line: 628, column: 10, scope: !903)
!2853 = !DILocation(line: 628, column: 8, scope: !903)
!2854 = !DILocation(line: 629, column: 9, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !903, file: !4, line: 629, column: 9)
!2856 = !DILocation(line: 629, column: 12, scope: !2855)
!2857 = !DILocation(line: 629, column: 9, scope: !903)
!2858 = !DILocation(line: 630, column: 9, scope: !2855)
!2859 = !DILocation(line: 631, column: 9, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !903, file: !4, line: 631, column: 9)
!2861 = !DILocation(line: 631, column: 12, scope: !2860)
!2862 = !DILocation(line: 631, column: 9, scope: !903)
!2863 = !DILocation(line: 632, column: 22, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2860, file: !4, line: 631, column: 29)
!2865 = !DILocation(line: 632, column: 62, scope: !2864)
!2866 = !DILocation(line: 632, column: 9, scope: !2864)
!2867 = !DILocation(line: 633, column: 9, scope: !2864)
!2868 = !DILocation(line: 636, column: 27, scope: !903)
!2869 = !DILocation(line: 636, column: 15, scope: !903)
!2870 = !DILocation(line: 636, column: 13, scope: !903)
!2871 = !DILocation(line: 637, column: 9, scope: !2872)
!2872 = distinct !DILexicalBlock(scope: !903, file: !4, line: 637, column: 9)
!2873 = !DILocation(line: 637, column: 17, scope: !2872)
!2874 = !DILocation(line: 637, column: 9, scope: !903)
!2875 = !DILocation(line: 638, column: 9, scope: !2872)
!2876 = !DILocation(line: 640, column: 26, scope: !903)
!2877 = !DILocation(line: 640, column: 32, scope: !903)
!2878 = !DILocation(line: 640, column: 40, scope: !903)
!2879 = !DILocation(line: 640, column: 12, scope: !903)
!2880 = !DILocation(line: 640, column: 10, scope: !903)
!2881 = !DILocation(line: 641, column: 5, scope: !903)
!2882 = !DILocation(line: 641, column: 10, scope: !2883)
!2883 = !DILexicalBlockFile(scope: !915, file: !4, discriminator: 1)
!2884 = !DILocation(line: 641, column: 20, scope: !915)
!2885 = !DILocation(line: 641, column: 50, scope: !915)
!2886 = !DILocation(line: 641, column: 68, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !915, file: !4, line: 641, column: 65)
!2888 = !DILocation(line: 641, column: 85, scope: !2887)
!2889 = !DILocation(line: 641, column: 65, scope: !2887)
!2890 = !DILocation(line: 641, column: 95, scope: !2887)
!2891 = !DILocation(line: 641, column: 65, scope: !915)
!2892 = !DILocation(line: 641, column: 65, scope: !2893)
!2893 = !DILexicalBlockFile(scope: !915, file: !4, discriminator: 2)
!2894 = !DILocation(line: 641, column: 126, scope: !2895)
!2895 = !DILexicalBlockFile(scope: !2887, file: !4, discriminator: 3)
!2896 = !DILocation(line: 641, column: 144, scope: !2887)
!2897 = !DILocation(line: 641, column: 154, scope: !2887)
!2898 = !DILocation(line: 641, column: 179, scope: !2887)
!2899 = !DILocation(line: 641, column: 110, scope: !2887)
!2900 = !DILocation(line: 641, column: 198, scope: !2901)
!2901 = !DILexicalBlockFile(scope: !903, file: !4, discriminator: 4)
!2902 = !DILocation(line: 641, column: 198, scope: !915)
!2903 = !DILocation(line: 641, column: 198, scope: !2904)
!2904 = !DILexicalBlockFile(scope: !915, file: !4, discriminator: 5)
!2905 = !DILocation(line: 642, column: 9, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !903, file: !4, line: 642, column: 9)
!2907 = !DILocation(line: 642, column: 14, scope: !2906)
!2908 = !DILocation(line: 642, column: 9, scope: !903)
!2909 = !DILocation(line: 643, column: 9, scope: !2906)
!2910 = !DILocation(line: 645, column: 9, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !903, file: !4, line: 645, column: 9)
!2912 = !DILocation(line: 645, column: 12, scope: !2911)
!2913 = !DILocation(line: 645, column: 9, scope: !903)
!2914 = !DILocation(line: 646, column: 60, scope: !2911)
!2915 = !DILocation(line: 646, column: 20, scope: !2911)
!2916 = !DILocation(line: 646, column: 18, scope: !2911)
!2917 = !DILocation(line: 646, column: 9, scope: !2911)
!2918 = !DILocation(line: 648, column: 50, scope: !2911)
!2919 = !DILocation(line: 648, column: 20, scope: !2911)
!2920 = !DILocation(line: 648, column: 18, scope: !2911)
!2921 = !DILocation(line: 649, column: 5, scope: !903)
!2922 = !DILocation(line: 649, column: 10, scope: !2923)
!2923 = !DILexicalBlockFile(scope: !917, file: !4, discriminator: 1)
!2924 = !DILocation(line: 649, column: 20, scope: !917)
!2925 = !DILocation(line: 649, column: 50, scope: !917)
!2926 = !DILocation(line: 649, column: 65, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !917, file: !4, line: 649, column: 62)
!2928 = !DILocation(line: 649, column: 82, scope: !2927)
!2929 = !DILocation(line: 649, column: 62, scope: !2927)
!2930 = !DILocation(line: 649, column: 92, scope: !2927)
!2931 = !DILocation(line: 649, column: 62, scope: !917)
!2932 = !DILocation(line: 649, column: 62, scope: !2933)
!2933 = !DILexicalBlockFile(scope: !917, file: !4, discriminator: 2)
!2934 = !DILocation(line: 649, column: 123, scope: !2935)
!2935 = !DILexicalBlockFile(scope: !2927, file: !4, discriminator: 3)
!2936 = !DILocation(line: 649, column: 141, scope: !2927)
!2937 = !DILocation(line: 649, column: 151, scope: !2927)
!2938 = !DILocation(line: 649, column: 176, scope: !2927)
!2939 = !DILocation(line: 649, column: 107, scope: !2927)
!2940 = !DILocation(line: 649, column: 195, scope: !2901)
!2941 = !DILocation(line: 649, column: 195, scope: !917)
!2942 = !DILocation(line: 649, column: 195, scope: !2943)
!2943 = !DILexicalBlockFile(scope: !917, file: !4, discriminator: 5)
!2944 = !DILocation(line: 650, column: 9, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !903, file: !4, line: 650, column: 9)
!2946 = !DILocation(line: 650, column: 18, scope: !2945)
!2947 = !DILocation(line: 650, column: 9, scope: !903)
!2948 = !DILocation(line: 651, column: 9, scope: !2945)
!2949 = !DILocation(line: 653, column: 32, scope: !903)
!2950 = !DILocation(line: 653, column: 38, scope: !903)
!2951 = !DILocation(line: 653, column: 45, scope: !903)
!2952 = !DILocation(line: 653, column: 17, scope: !903)
!2953 = !DILocation(line: 653, column: 15, scope: !903)
!2954 = !DILocation(line: 654, column: 5, scope: !903)
!2955 = !DILocation(line: 654, column: 10, scope: !2956)
!2956 = !DILexicalBlockFile(scope: !919, file: !4, discriminator: 1)
!2957 = !DILocation(line: 654, column: 20, scope: !919)
!2958 = !DILocation(line: 654, column: 50, scope: !919)
!2959 = !DILocation(line: 654, column: 69, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !919, file: !4, line: 654, column: 66)
!2961 = !DILocation(line: 654, column: 86, scope: !2960)
!2962 = !DILocation(line: 654, column: 66, scope: !2960)
!2963 = !DILocation(line: 654, column: 96, scope: !2960)
!2964 = !DILocation(line: 654, column: 66, scope: !919)
!2965 = !DILocation(line: 654, column: 66, scope: !2966)
!2966 = !DILexicalBlockFile(scope: !919, file: !4, discriminator: 2)
!2967 = !DILocation(line: 654, column: 127, scope: !2968)
!2968 = !DILexicalBlockFile(scope: !2960, file: !4, discriminator: 3)
!2969 = !DILocation(line: 654, column: 145, scope: !2960)
!2970 = !DILocation(line: 654, column: 155, scope: !2960)
!2971 = !DILocation(line: 654, column: 180, scope: !2960)
!2972 = !DILocation(line: 654, column: 111, scope: !2960)
!2973 = !DILocation(line: 654, column: 199, scope: !2901)
!2974 = !DILocation(line: 654, column: 199, scope: !919)
!2975 = !DILocation(line: 654, column: 199, scope: !2976)
!2976 = !DILexicalBlockFile(scope: !919, file: !4, discriminator: 5)
!2977 = !DILocation(line: 655, column: 9, scope: !922)
!2978 = !DILocation(line: 655, column: 19, scope: !922)
!2979 = !DILocation(line: 655, column: 9, scope: !903)
!2980 = !DILocation(line: 656, column: 9, scope: !921)
!2981 = !DILocation(line: 656, column: 19, scope: !921)
!2982 = !DILocation(line: 656, column: 25, scope: !921)
!2983 = !DILocation(line: 657, column: 26, scope: !921)
!2984 = !DILocation(line: 657, column: 32, scope: !921)
!2985 = !DILocation(line: 657, column: 41, scope: !921)
!2986 = !DILocation(line: 657, column: 17, scope: !921)
!2987 = !DILocation(line: 657, column: 15, scope: !921)
!2988 = !DILocation(line: 658, column: 13, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !921, file: !4, line: 658, column: 13)
!2990 = !DILocation(line: 658, column: 19, scope: !2989)
!2991 = !DILocation(line: 658, column: 13, scope: !921)
!2992 = !DILocation(line: 659, column: 13, scope: !2989)
!2993 = !DILocation(line: 660, column: 78, scope: !921)
!2994 = !DILocation(line: 660, column: 60, scope: !921)
!2995 = !DILocation(line: 660, column: 87, scope: !921)
!2996 = !DILocation(line: 660, column: 58, scope: !921)
!2997 = !DILocation(line: 661, column: 74, scope: !921)
!2998 = !DILocation(line: 661, column: 59, scope: !921)
!2999 = !DILocation(line: 661, column: 83, scope: !921)
!3000 = !{!1342, !1272, i64 16}
!3001 = !DILocation(line: 660, column: 15, scope: !921)
!3002 = !DILocation(line: 660, column: 13, scope: !921)
!3003 = !DILocation(line: 662, column: 9, scope: !921)
!3004 = !DILocation(line: 662, column: 14, scope: !3005)
!3005 = !DILexicalBlockFile(scope: !925, file: !4, discriminator: 1)
!3006 = !DILocation(line: 662, column: 24, scope: !925)
!3007 = !DILocation(line: 662, column: 54, scope: !925)
!3008 = !DILocation(line: 662, column: 70, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !925, file: !4, line: 662, column: 67)
!3010 = !DILocation(line: 662, column: 87, scope: !3009)
!3011 = !DILocation(line: 662, column: 67, scope: !3009)
!3012 = !DILocation(line: 662, column: 97, scope: !3009)
!3013 = !DILocation(line: 662, column: 67, scope: !925)
!3014 = !DILocation(line: 662, column: 67, scope: !3015)
!3015 = !DILexicalBlockFile(scope: !925, file: !4, discriminator: 2)
!3016 = !DILocation(line: 662, column: 128, scope: !3017)
!3017 = !DILexicalBlockFile(scope: !3009, file: !4, discriminator: 3)
!3018 = !DILocation(line: 662, column: 146, scope: !3009)
!3019 = !DILocation(line: 662, column: 156, scope: !3009)
!3020 = !DILocation(line: 662, column: 181, scope: !3009)
!3021 = !DILocation(line: 662, column: 112, scope: !3009)
!3022 = !DILocation(line: 662, column: 200, scope: !3023)
!3023 = !DILexicalBlockFile(scope: !921, file: !4, discriminator: 4)
!3024 = !DILocation(line: 662, column: 200, scope: !925)
!3025 = !DILocation(line: 662, column: 200, scope: !3026)
!3026 = !DILexicalBlockFile(scope: !925, file: !4, discriminator: 5)
!3027 = !DILocation(line: 663, column: 16, scope: !921)
!3028 = !DILocation(line: 663, column: 9, scope: !921)
!3029 = !DILocation(line: 664, column: 5, scope: !922)
!3030 = !DILocation(line: 667, column: 51, scope: !903)
!3031 = !DILocation(line: 668, column: 5, scope: !903)
!3032 = !DILocation(line: 669, column: 1, scope: !903)
!3033 = !DILocation(line: 515, column: 36, scope: !926)
!3034 = !DILocation(line: 515, column: 51, scope: !926)
!3035 = !DILocation(line: 517, column: 5, scope: !926)
!3036 = !DILocation(line: 517, column: 18, scope: !926)
!3037 = !DILocation(line: 517, column: 40, scope: !926)
!3038 = !DILocation(line: 517, column: 25, scope: !926)
!3039 = !DILocation(line: 518, column: 5, scope: !926)
!3040 = !DILocation(line: 518, column: 15, scope: !926)
!3041 = !DILocation(line: 518, column: 26, scope: !926)
!3042 = !DILocation(line: 518, column: 33, scope: !926)
!3043 = !DILocation(line: 519, column: 5, scope: !926)
!3044 = !DILocation(line: 519, column: 9, scope: !926)
!3045 = !DILocation(line: 521, column: 27, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !926, file: !4, line: 521, column: 9)
!3047 = !DILocation(line: 521, column: 10, scope: !3046)
!3048 = !DILocation(line: 521, column: 9, scope: !926)
!3049 = !DILocation(line: 523, column: 9, scope: !3046)
!3050 = !DILocation(line: 527, column: 28, scope: !926)
!3051 = !DILocation(line: 527, column: 34, scope: !926)
!3052 = !DILocation(line: 527, column: 12, scope: !926)
!3053 = !DILocation(line: 527, column: 10, scope: !926)
!3054 = !DILocation(line: 528, column: 9, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !926, file: !4, line: 528, column: 9)
!3056 = !DILocation(line: 528, column: 14, scope: !3055)
!3057 = !DILocation(line: 528, column: 9, scope: !926)
!3058 = !DILocation(line: 529, column: 9, scope: !3055)
!3059 = !DILocation(line: 530, column: 5, scope: !926)
!3060 = !DILocation(line: 530, column: 10, scope: !3061)
!3061 = !DILexicalBlockFile(scope: !936, file: !4, discriminator: 1)
!3062 = !DILocation(line: 530, column: 20, scope: !936)
!3063 = !DILocation(line: 530, column: 50, scope: !936)
!3064 = !DILocation(line: 530, column: 65, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !936, file: !4, line: 530, column: 62)
!3066 = !DILocation(line: 530, column: 82, scope: !3065)
!3067 = !DILocation(line: 530, column: 62, scope: !3065)
!3068 = !DILocation(line: 530, column: 92, scope: !3065)
!3069 = !DILocation(line: 530, column: 62, scope: !936)
!3070 = !DILocation(line: 530, column: 62, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !936, file: !4, discriminator: 2)
!3072 = !DILocation(line: 530, column: 123, scope: !3073)
!3073 = !DILexicalBlockFile(scope: !3065, file: !4, discriminator: 3)
!3074 = !DILocation(line: 530, column: 141, scope: !3065)
!3075 = !DILocation(line: 530, column: 151, scope: !3065)
!3076 = !DILocation(line: 530, column: 176, scope: !3065)
!3077 = !DILocation(line: 530, column: 107, scope: !3065)
!3078 = !DILocation(line: 530, column: 195, scope: !3079)
!3079 = !DILexicalBlockFile(scope: !926, file: !4, discriminator: 4)
!3080 = !DILocation(line: 530, column: 195, scope: !936)
!3081 = !DILocation(line: 530, column: 195, scope: !3082)
!3082 = !DILexicalBlockFile(scope: !936, file: !4, discriminator: 5)
!3083 = !DILocation(line: 532, column: 12, scope: !926)
!3084 = !DILocation(line: 532, column: 5, scope: !926)
!3085 = !DILocation(line: 533, column: 1, scope: !926)
!3086 = !DILocation(line: 537, column: 34, scope: !937)
!3087 = !DILocation(line: 537, column: 49, scope: !937)
!3088 = !DILocation(line: 539, column: 5, scope: !937)
!3089 = !DILocation(line: 539, column: 18, scope: !937)
!3090 = !DILocation(line: 539, column: 40, scope: !937)
!3091 = !DILocation(line: 539, column: 25, scope: !937)
!3092 = !DILocation(line: 540, column: 5, scope: !937)
!3093 = !DILocation(line: 540, column: 15, scope: !937)
!3094 = !DILocation(line: 541, column: 5, scope: !937)
!3095 = !DILocation(line: 541, column: 25, scope: !937)
!3096 = !DILocation(line: 543, column: 27, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !937, file: !4, line: 543, column: 9)
!3098 = !DILocation(line: 543, column: 10, scope: !3097)
!3099 = !DILocation(line: 543, column: 9, scope: !937)
!3100 = !DILocation(line: 545, column: 9, scope: !3097)
!3101 = !DILocation(line: 547, column: 26, scope: !937)
!3102 = !DILocation(line: 547, column: 32, scope: !937)
!3103 = !DILocation(line: 547, column: 10, scope: !937)
!3104 = !DILocation(line: 547, column: 8, scope: !937)
!3105 = !DILocation(line: 548, column: 9, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !937, file: !4, line: 548, column: 9)
!3107 = !DILocation(line: 548, column: 12, scope: !3106)
!3108 = !DILocation(line: 548, column: 9, scope: !937)
!3109 = !DILocation(line: 549, column: 9, scope: !3106)
!3110 = !DILocation(line: 550, column: 9, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !937, file: !4, line: 550, column: 9)
!3112 = !DILocation(line: 550, column: 12, scope: !3111)
!3113 = !DILocation(line: 550, column: 9, scope: !937)
!3114 = !DILocation(line: 551, column: 22, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3111, file: !4, line: 550, column: 29)
!3116 = !DILocation(line: 551, column: 62, scope: !3115)
!3117 = !DILocation(line: 551, column: 9, scope: !3115)
!3118 = !DILocation(line: 552, column: 9, scope: !3115)
!3119 = !DILocation(line: 554, column: 28, scope: !937)
!3120 = !DILocation(line: 554, column: 31, scope: !937)
!3121 = !DILocation(line: 554, column: 12, scope: !937)
!3122 = !DILocation(line: 554, column: 5, scope: !937)
!3123 = !DILocation(line: 555, column: 1, scope: !937)
!3124 = !DILocation(line: 343, column: 26, scope: !571)
!3125 = !DILocation(line: 343, column: 42, scope: !571)
!3126 = !DILocation(line: 343, column: 63, scope: !571)
!3127 = !DILocation(line: 345, column: 5, scope: !571)
!3128 = !DILocation(line: 345, column: 25, scope: !571)
!3129 = !DILocation(line: 347, column: 6, scope: !571)
!3130 = !DILocation(line: 347, column: 24, scope: !571)
!3131 = !DILocation(line: 349, column: 26, scope: !571)
!3132 = !DILocation(line: 349, column: 32, scope: !571)
!3133 = !DILocation(line: 349, column: 10, scope: !571)
!3134 = !DILocation(line: 349, column: 8, scope: !571)
!3135 = !DILocation(line: 350, column: 9, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !571, file: !4, line: 350, column: 9)
!3137 = !DILocation(line: 350, column: 12, scope: !3136)
!3138 = !DILocation(line: 350, column: 9, scope: !571)
!3139 = !DILocation(line: 351, column: 9, scope: !3136)
!3140 = !DILocation(line: 352, column: 9, scope: !583)
!3141 = !DILocation(line: 352, column: 12, scope: !583)
!3142 = !DILocation(line: 352, column: 9, scope: !571)
!3143 = !DILocation(line: 355, column: 9, scope: !582)
!3144 = !DILocation(line: 355, column: 13, scope: !582)
!3145 = !DILocation(line: 355, column: 41, scope: !582)
!3146 = !DILocation(line: 355, column: 47, scope: !582)
!3147 = !DILocation(line: 355, column: 53, scope: !582)
!3148 = !DILocation(line: 355, column: 61, scope: !582)
!3149 = !DILocation(line: 355, column: 22, scope: !582)
!3150 = !DILocation(line: 356, column: 13, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !582, file: !4, line: 356, column: 13)
!3152 = !DILocation(line: 356, column: 20, scope: !3151)
!3153 = !DILocation(line: 356, column: 13, scope: !582)
!3154 = !DILocation(line: 357, column: 13, scope: !3151)
!3155 = !DILocation(line: 358, column: 13, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !582, file: !4, line: 358, column: 13)
!3157 = !DILocation(line: 358, column: 13, scope: !582)
!3158 = !DILocation(line: 363, column: 55, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3156, file: !4, line: 358, column: 21)
!3160 = !DILocation(line: 363, column: 61, scope: !3159)
!3161 = !DILocation(line: 364, column: 55, scope: !3159)
!3162 = !DILocation(line: 364, column: 61, scope: !3159)
!3163 = !DILocation(line: 364, column: 69, scope: !3159)
!3164 = !DILocation(line: 362, column: 34, scope: !3159)
!3165 = !DILocation(line: 362, column: 14, scope: !3159)
!3166 = !DILocation(line: 362, column: 32, scope: !3159)
!3167 = !DILocation(line: 365, column: 18, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3159, file: !4, line: 365, column: 17)
!3169 = !DILocation(line: 365, column: 17, scope: !3168)
!3170 = !DILocation(line: 365, column: 36, scope: !3168)
!3171 = !DILocation(line: 365, column: 17, scope: !3159)
!3172 = !DILocation(line: 366, column: 17, scope: !3168)
!3173 = !DILocation(line: 367, column: 13, scope: !3159)
!3174 = !DILocation(line: 369, column: 9, scope: !582)
!3175 = !DILocation(line: 370, column: 5, scope: !583)
!3176 = !DILocation(line: 372, column: 5, scope: !571)
!3177 = !DILocation(line: 373, column: 1, scope: !571)
!3178 = !DILocation(line: 294, column: 30, scope: !584)
!3179 = !DILocation(line: 294, column: 46, scope: !584)
!3180 = !DILocation(line: 296, column: 5, scope: !584)
!3181 = !DILocation(line: 296, column: 15, scope: !584)
!3182 = !DILocation(line: 297, column: 5, scope: !584)
!3183 = !DILocation(line: 297, column: 15, scope: !584)
!3184 = !DILocation(line: 297, column: 22, scope: !584)
!3185 = !DILocation(line: 297, column: 33, scope: !584)
!3186 = !DILocation(line: 298, column: 5, scope: !584)
!3187 = !DILocation(line: 298, column: 32, scope: !584)
!3188 = !DILocation(line: 300, column: 27, scope: !584)
!3189 = !DILocation(line: 300, column: 15, scope: !584)
!3190 = !DILocation(line: 300, column: 13, scope: !584)
!3191 = !DILocation(line: 301, column: 9, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !584, file: !4, line: 301, column: 9)
!3193 = !DILocation(line: 301, column: 17, scope: !3192)
!3194 = !DILocation(line: 301, column: 9, scope: !584)
!3195 = !DILocation(line: 302, column: 9, scope: !3192)
!3196 = !DILocation(line: 304, column: 26, scope: !584)
!3197 = !DILocation(line: 304, column: 32, scope: !584)
!3198 = !DILocation(line: 304, column: 40, scope: !584)
!3199 = !DILocation(line: 304, column: 12, scope: !584)
!3200 = !DILocation(line: 304, column: 10, scope: !584)
!3201 = !DILocation(line: 305, column: 5, scope: !584)
!3202 = !DILocation(line: 305, column: 10, scope: !3203)
!3203 = !DILexicalBlockFile(scope: !597, file: !4, discriminator: 1)
!3204 = !DILocation(line: 305, column: 20, scope: !597)
!3205 = !DILocation(line: 305, column: 50, scope: !597)
!3206 = !DILocation(line: 305, column: 68, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !597, file: !4, line: 305, column: 65)
!3208 = !DILocation(line: 305, column: 85, scope: !3207)
!3209 = !DILocation(line: 305, column: 65, scope: !3207)
!3210 = !DILocation(line: 305, column: 95, scope: !3207)
!3211 = !DILocation(line: 305, column: 65, scope: !597)
!3212 = !DILocation(line: 305, column: 65, scope: !3213)
!3213 = !DILexicalBlockFile(scope: !597, file: !4, discriminator: 2)
!3214 = !DILocation(line: 305, column: 126, scope: !3215)
!3215 = !DILexicalBlockFile(scope: !3207, file: !4, discriminator: 3)
!3216 = !DILocation(line: 305, column: 144, scope: !3207)
!3217 = !DILocation(line: 305, column: 154, scope: !3207)
!3218 = !DILocation(line: 305, column: 179, scope: !3207)
!3219 = !DILocation(line: 305, column: 110, scope: !3207)
!3220 = !DILocation(line: 305, column: 198, scope: !3221)
!3221 = !DILexicalBlockFile(scope: !584, file: !4, discriminator: 4)
!3222 = !DILocation(line: 305, column: 198, scope: !597)
!3223 = !DILocation(line: 305, column: 198, scope: !3224)
!3224 = !DILexicalBlockFile(scope: !597, file: !4, discriminator: 5)
!3225 = !DILocation(line: 306, column: 9, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !584, file: !4, line: 306, column: 9)
!3227 = !DILocation(line: 306, column: 14, scope: !3226)
!3228 = !DILocation(line: 306, column: 9, scope: !584)
!3229 = !DILocation(line: 307, column: 9, scope: !3226)
!3230 = !DILocation(line: 309, column: 14, scope: !604)
!3231 = !DILocation(line: 309, column: 10, scope: !604)
!3232 = !DILocation(line: 309, column: 34, scope: !3233)
!3233 = !DILexicalBlockFile(scope: !3234, file: !4, discriminator: 2)
!3234 = !DILexicalBlockFile(scope: !603, file: !4, discriminator: 1)
!3235 = !DILocation(line: 309, column: 39, scope: !603)
!3236 = !DILocation(line: 309, column: 34, scope: !603)
!3237 = !DILocation(line: 309, column: 33, scope: !603)
!3238 = !DILocation(line: 309, column: 5, scope: !604)
!3239 = !DILocation(line: 310, column: 49, scope: !602)
!3240 = !DILocation(line: 310, column: 55, scope: !602)
!3241 = !DILocation(line: 310, column: 60, scope: !602)
!3242 = !DILocation(line: 310, column: 20, scope: !602)
!3243 = !DILocation(line: 310, column: 18, scope: !602)
!3244 = !DILocation(line: 311, column: 13, scope: !601)
!3245 = !DILocation(line: 311, column: 22, scope: !601)
!3246 = !DILocation(line: 311, column: 13, scope: !602)
!3247 = !DILocation(line: 312, column: 13, scope: !600)
!3248 = !DILocation(line: 312, column: 18, scope: !3249)
!3249 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 1)
!3250 = !DILocation(line: 312, column: 28, scope: !599)
!3251 = !DILocation(line: 312, column: 58, scope: !599)
!3252 = !DILocation(line: 312, column: 73, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !599, file: !4, line: 312, column: 70)
!3254 = !DILocation(line: 312, column: 90, scope: !3253)
!3255 = !DILocation(line: 312, column: 70, scope: !3253)
!3256 = !DILocation(line: 312, column: 100, scope: !3253)
!3257 = !DILocation(line: 312, column: 70, scope: !599)
!3258 = !DILocation(line: 312, column: 70, scope: !3259)
!3259 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 2)
!3260 = !DILocation(line: 312, column: 131, scope: !3261)
!3261 = !DILexicalBlockFile(scope: !3253, file: !4, discriminator: 3)
!3262 = !DILocation(line: 312, column: 149, scope: !3253)
!3263 = !DILocation(line: 312, column: 159, scope: !3253)
!3264 = !DILocation(line: 312, column: 184, scope: !3253)
!3265 = !DILocation(line: 312, column: 115, scope: !3253)
!3266 = !DILocation(line: 312, column: 203, scope: !3267)
!3267 = !DILexicalBlockFile(scope: !600, file: !4, discriminator: 4)
!3268 = !DILocation(line: 312, column: 203, scope: !599)
!3269 = !DILocation(line: 312, column: 203, scope: !3270)
!3270 = !DILexicalBlockFile(scope: !599, file: !4, discriminator: 5)
!3271 = !DILocation(line: 313, column: 13, scope: !600)
!3272 = !DILocation(line: 315, column: 31, scope: !602)
!3273 = !DILocation(line: 315, column: 37, scope: !602)
!3274 = !DILocation(line: 315, column: 44, scope: !602)
!3275 = !DILocation(line: 315, column: 16, scope: !602)
!3276 = !DILocation(line: 315, column: 14, scope: !602)
!3277 = !DILocation(line: 316, column: 9, scope: !602)
!3278 = !DILocation(line: 316, column: 14, scope: !3279)
!3279 = !DILexicalBlockFile(scope: !606, file: !4, discriminator: 1)
!3280 = !DILocation(line: 316, column: 24, scope: !606)
!3281 = !DILocation(line: 316, column: 54, scope: !606)
!3282 = !DILocation(line: 316, column: 73, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !606, file: !4, line: 316, column: 70)
!3284 = !DILocation(line: 316, column: 90, scope: !3283)
!3285 = !DILocation(line: 316, column: 70, scope: !3283)
!3286 = !DILocation(line: 316, column: 100, scope: !3283)
!3287 = !DILocation(line: 316, column: 70, scope: !606)
!3288 = !DILocation(line: 316, column: 70, scope: !3289)
!3289 = !DILexicalBlockFile(scope: !606, file: !4, discriminator: 2)
!3290 = !DILocation(line: 316, column: 131, scope: !3291)
!3291 = !DILexicalBlockFile(scope: !3283, file: !4, discriminator: 3)
!3292 = !DILocation(line: 316, column: 149, scope: !3283)
!3293 = !DILocation(line: 316, column: 159, scope: !3283)
!3294 = !DILocation(line: 316, column: 184, scope: !3283)
!3295 = !DILocation(line: 316, column: 115, scope: !3283)
!3296 = !DILocation(line: 316, column: 203, scope: !3297)
!3297 = !DILexicalBlockFile(scope: !602, file: !4, discriminator: 4)
!3298 = !DILocation(line: 316, column: 203, scope: !606)
!3299 = !DILocation(line: 316, column: 203, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !606, file: !4, discriminator: 5)
!3301 = !DILocation(line: 317, column: 13, scope: !610)
!3302 = !DILocation(line: 317, column: 18, scope: !610)
!3303 = !DILocation(line: 317, column: 13, scope: !602)
!3304 = !DILocation(line: 318, column: 13, scope: !609)
!3305 = !DILocation(line: 318, column: 18, scope: !3306)
!3306 = !DILexicalBlockFile(scope: !608, file: !4, discriminator: 1)
!3307 = !DILocation(line: 318, column: 28, scope: !608)
!3308 = !DILocation(line: 318, column: 58, scope: !608)
!3309 = !DILocation(line: 318, column: 73, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !608, file: !4, line: 318, column: 70)
!3311 = !DILocation(line: 318, column: 90, scope: !3310)
!3312 = !DILocation(line: 318, column: 70, scope: !3310)
!3313 = !DILocation(line: 318, column: 100, scope: !3310)
!3314 = !DILocation(line: 318, column: 70, scope: !608)
!3315 = !DILocation(line: 318, column: 70, scope: !3316)
!3316 = !DILexicalBlockFile(scope: !608, file: !4, discriminator: 2)
!3317 = !DILocation(line: 318, column: 131, scope: !3318)
!3318 = !DILexicalBlockFile(scope: !3310, file: !4, discriminator: 3)
!3319 = !DILocation(line: 318, column: 149, scope: !3310)
!3320 = !DILocation(line: 318, column: 159, scope: !3310)
!3321 = !DILocation(line: 318, column: 184, scope: !3310)
!3322 = !DILocation(line: 318, column: 115, scope: !3310)
!3323 = !DILocation(line: 318, column: 203, scope: !3324)
!3324 = !DILexicalBlockFile(scope: !609, file: !4, discriminator: 4)
!3325 = !DILocation(line: 318, column: 203, scope: !608)
!3326 = !DILocation(line: 318, column: 203, scope: !3327)
!3327 = !DILexicalBlockFile(scope: !608, file: !4, discriminator: 5)
!3328 = !DILocation(line: 319, column: 17, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !609, file: !4, line: 319, column: 17)
!3330 = !DILocation(line: 319, column: 22, scope: !3329)
!3331 = !{!3332, !1237, i64 16}
!3332 = !{!"st_zip_searchorder", !1231, i64 0, !1237, i64 16}
!3333 = !DILocation(line: 319, column: 27, scope: !3329)
!3334 = !DILocation(line: 319, column: 17, scope: !609)
!3335 = !DILocation(line: 320, column: 17, scope: !3329)
!3336 = !DILocation(line: 322, column: 17, scope: !3329)
!3337 = !DILocation(line: 324, column: 5, scope: !602)
!3338 = !DILocation(line: 309, column: 50, scope: !603)
!3339 = !DILocation(line: 309, column: 5, scope: !603)
!3340 = !DILocation(line: 325, column: 5, scope: !584)
!3341 = !DILocation(line: 325, column: 10, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 1)
!3343 = !DILocation(line: 325, column: 20, scope: !612)
!3344 = !DILocation(line: 325, column: 50, scope: !612)
!3345 = !DILocation(line: 325, column: 65, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !612, file: !4, line: 325, column: 62)
!3347 = !DILocation(line: 325, column: 82, scope: !3346)
!3348 = !DILocation(line: 325, column: 62, scope: !3346)
!3349 = !DILocation(line: 325, column: 92, scope: !3346)
!3350 = !DILocation(line: 325, column: 62, scope: !612)
!3351 = !DILocation(line: 325, column: 62, scope: !3352)
!3352 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 2)
!3353 = !DILocation(line: 325, column: 123, scope: !3354)
!3354 = !DILexicalBlockFile(scope: !3346, file: !4, discriminator: 3)
!3355 = !DILocation(line: 325, column: 141, scope: !3346)
!3356 = !DILocation(line: 325, column: 151, scope: !3346)
!3357 = !DILocation(line: 325, column: 176, scope: !3346)
!3358 = !DILocation(line: 325, column: 107, scope: !3346)
!3359 = !DILocation(line: 325, column: 195, scope: !3221)
!3360 = !DILocation(line: 325, column: 195, scope: !612)
!3361 = !DILocation(line: 325, column: 195, scope: !3362)
!3362 = !DILexicalBlockFile(scope: !612, file: !4, discriminator: 5)
!3363 = !DILocation(line: 326, column: 5, scope: !584)
!3364 = !DILocation(line: 327, column: 1, scope: !584)
!3365 = !DILocation(line: 275, column: 33, scope: !626)
!3366 = !DILocation(line: 275, column: 49, scope: !626)
!3367 = !DILocation(line: 275, column: 67, scope: !626)
!3368 = !DILocation(line: 277, column: 5, scope: !626)
!3369 = !DILocation(line: 277, column: 15, scope: !626)
!3370 = !DILocation(line: 278, column: 5, scope: !626)
!3371 = !DILocation(line: 278, column: 9, scope: !626)
!3372 = !DILocation(line: 283, column: 46, scope: !626)
!3373 = !DILocation(line: 283, column: 54, scope: !626)
!3374 = !DILocation(line: 283, column: 15, scope: !626)
!3375 = !DILocation(line: 283, column: 13, scope: !626)
!3376 = !DILocation(line: 284, column: 9, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !626, file: !4, line: 284, column: 9)
!3378 = !DILocation(line: 284, column: 17, scope: !3377)
!3379 = !DILocation(line: 284, column: 9, scope: !626)
!3380 = !DILocation(line: 285, column: 9, scope: !3377)
!3381 = !DILocation(line: 287, column: 27, scope: !626)
!3382 = !DILocation(line: 287, column: 33, scope: !626)
!3383 = !DILocation(line: 287, column: 40, scope: !626)
!3384 = !DILocation(line: 287, column: 11, scope: !626)
!3385 = !DILocation(line: 287, column: 9, scope: !626)
!3386 = !DILocation(line: 288, column: 5, scope: !626)
!3387 = !DILocation(line: 288, column: 10, scope: !3388)
!3388 = !DILexicalBlockFile(scope: !636, file: !4, discriminator: 1)
!3389 = !DILocation(line: 288, column: 20, scope: !636)
!3390 = !DILocation(line: 288, column: 50, scope: !636)
!3391 = !DILocation(line: 288, column: 68, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !636, file: !4, line: 288, column: 65)
!3393 = !DILocation(line: 288, column: 85, scope: !3392)
!3394 = !DILocation(line: 288, column: 65, scope: !3392)
!3395 = !DILocation(line: 288, column: 95, scope: !3392)
!3396 = !DILocation(line: 288, column: 65, scope: !636)
!3397 = !DILocation(line: 288, column: 65, scope: !3398)
!3398 = !DILexicalBlockFile(scope: !636, file: !4, discriminator: 2)
!3399 = !DILocation(line: 288, column: 126, scope: !3400)
!3400 = !DILexicalBlockFile(scope: !3392, file: !4, discriminator: 3)
!3401 = !DILocation(line: 288, column: 144, scope: !3392)
!3402 = !DILocation(line: 288, column: 154, scope: !3392)
!3403 = !DILocation(line: 288, column: 179, scope: !3392)
!3404 = !DILocation(line: 288, column: 110, scope: !3392)
!3405 = !DILocation(line: 288, column: 198, scope: !3406)
!3406 = !DILexicalBlockFile(scope: !626, file: !4, discriminator: 4)
!3407 = !DILocation(line: 288, column: 198, scope: !636)
!3408 = !DILocation(line: 288, column: 198, scope: !3409)
!3409 = !DILexicalBlockFile(scope: !636, file: !4, discriminator: 5)
!3410 = !DILocation(line: 289, column: 12, scope: !626)
!3411 = !DILocation(line: 289, column: 5, scope: !626)
!3412 = !DILocation(line: 290, column: 1, scope: !626)
!3413 = !DILocation(line: 209, column: 23, scope: !613)
!3414 = !DILocation(line: 211, column: 5, scope: !613)
!3415 = !DILocation(line: 211, column: 16, scope: !613)
!3416 = !DILocation(line: 211, column: 21, scope: !613)
!3417 = !DILocation(line: 212, column: 43, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !613, file: !4, line: 212, column: 9)
!3419 = !DILocation(line: 212, column: 27, scope: !3418)
!3420 = !DILocation(line: 212, column: 54, scope: !3418)
!3421 = !DILocation(line: 212, column: 60, scope: !3418)
!3422 = !DILocation(line: 212, column: 25, scope: !3418)
!3423 = !DILocation(line: 212, column: 25, scope: !3424)
!3424 = !DILexicalBlockFile(scope: !3418, file: !4, discriminator: 1)
!3425 = !DILocation(line: 212, column: 103, scope: !3426)
!3426 = !DILexicalBlockFile(scope: !3418, file: !4, discriminator: 2)
!3427 = !DILocation(line: 212, column: 73, scope: !3418)
!3428 = !DILocation(line: 212, column: 116, scope: !3429)
!3429 = !DILexicalBlockFile(scope: !3430, file: !4, discriminator: 4)
!3430 = !DILexicalBlockFile(scope: !3418, file: !4, discriminator: 3)
!3431 = !DILocation(line: 212, column: 9, scope: !613)
!3432 = !DILocation(line: 213, column: 9, scope: !3418)
!3433 = !DILocation(line: 214, column: 59, scope: !613)
!3434 = !DILocation(line: 214, column: 41, scope: !613)
!3435 = !DILocation(line: 214, column: 71, scope: !613)
!3436 = !DILocation(line: 214, column: 9, scope: !613)
!3437 = !DILocation(line: 215, column: 30, scope: !613)
!3438 = !DILocation(line: 215, column: 48, scope: !613)
!3439 = !DILocation(line: 215, column: 11, scope: !613)
!3440 = !DILocation(line: 215, column: 9, scope: !613)
!3441 = !DILocation(line: 216, column: 9, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !613, file: !4, line: 216, column: 9)
!3443 = !DILocation(line: 216, column: 13, scope: !3442)
!3444 = !DILocation(line: 216, column: 9, scope: !613)
!3445 = !DILocation(line: 217, column: 25, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3442, file: !4, line: 216, column: 20)
!3447 = !DILocation(line: 217, column: 37, scope: !3446)
!3448 = !DILocation(line: 217, column: 46, scope: !3446)
!3449 = !DILocation(line: 218, column: 16, scope: !3446)
!3450 = !DILocation(line: 218, column: 9, scope: !3446)
!3451 = !DILocation(line: 220, column: 36, scope: !3442)
!3452 = !DILocation(line: 220, column: 46, scope: !3442)
!3453 = !DILocation(line: 220, column: 49, scope: !3442)
!3454 = !DILocation(line: 220, column: 53, scope: !3442)
!3455 = !DILocation(line: 220, column: 16, scope: !3442)
!3456 = !DILocation(line: 220, column: 9, scope: !3442)
!3457 = !DILocation(line: 221, column: 1, scope: !613)
!3458 = !DILocation(line: 229, column: 25, scope: !618)
!3459 = !DILocation(line: 229, column: 43, scope: !618)
!3460 = !DILocation(line: 231, column: 5, scope: !618)
!3461 = !DILocation(line: 231, column: 15, scope: !618)
!3462 = !DILocation(line: 232, column: 5, scope: !618)
!3463 = !DILocation(line: 232, column: 14, scope: !618)
!3464 = !DILocation(line: 232, column: 18, scope: !618)
!3465 = !DILocation(line: 233, column: 5, scope: !618)
!3466 = !DILocation(line: 233, column: 16, scope: !618)
!3467 = !DILocation(line: 235, column: 59, scope: !618)
!3468 = !DILocation(line: 235, column: 41, scope: !618)
!3469 = !DILocation(line: 235, column: 69, scope: !618)
!3470 = !DILocation(line: 235, column: 127, scope: !618)
!3471 = !DILocation(line: 235, column: 109, scope: !618)
!3472 = !DILocation(line: 235, column: 135, scope: !618)
!3473 = !DILocation(line: 235, column: 77, scope: !618)
!3474 = !DILocation(line: 235, column: 143, scope: !618)
!3475 = !DILocation(line: 235, column: 9, scope: !618)
!3476 = !DILocation(line: 236, column: 46, scope: !618)
!3477 = !DILocation(line: 236, column: 44, scope: !618)
!3478 = !DILocation(line: 236, column: 15, scope: !618)
!3479 = !DILocation(line: 236, column: 13, scope: !618)
!3480 = !DILocation(line: 236, column: 7, scope: !618)
!3481 = !DILocation(line: 237, column: 9, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !618, file: !4, line: 237, column: 9)
!3483 = !DILocation(line: 237, column: 13, scope: !3482)
!3484 = !DILocation(line: 237, column: 9, scope: !618)
!3485 = !DILocation(line: 238, column: 9, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3482, file: !4, line: 237, column: 28)
!3487 = !DILocation(line: 239, column: 9, scope: !3486)
!3488 = !DILocation(line: 242, column: 27, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !618, file: !4, line: 242, column: 9)
!3490 = !DILocation(line: 242, column: 35, scope: !3489)
!3491 = !DILocation(line: 242, column: 38, scope: !3489)
!3492 = !DILocation(line: 242, column: 10, scope: !3489)
!3493 = !DILocation(line: 242, column: 9, scope: !618)
!3494 = !DILocation(line: 243, column: 20, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3489, file: !4, line: 242, column: 47)
!3496 = !DILocation(line: 243, column: 9, scope: !3495)
!3497 = !DILocation(line: 244, column: 9, scope: !3495)
!3498 = !DILocation(line: 246, column: 58, scope: !618)
!3499 = !DILocation(line: 246, column: 40, scope: !618)
!3500 = !DILocation(line: 246, column: 68, scope: !618)
!3501 = !DILocation(line: 246, column: 7, scope: !618)
!3502 = !DILocation(line: 247, column: 60, scope: !618)
!3503 = !DILocation(line: 247, column: 42, scope: !618)
!3504 = !DILocation(line: 247, column: 70, scope: !618)
!3505 = !DILocation(line: 247, column: 9, scope: !618)
!3506 = !DILocation(line: 248, column: 27, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !618, file: !4, line: 248, column: 9)
!3508 = !DILocation(line: 248, column: 33, scope: !3507)
!3509 = !DILocation(line: 248, column: 36, scope: !3507)
!3510 = !DILocation(line: 248, column: 10, scope: !3507)
!3511 = !DILocation(line: 248, column: 9, scope: !618)
!3512 = !DILocation(line: 249, column: 20, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3507, file: !4, line: 248, column: 45)
!3514 = !DILocation(line: 249, column: 9, scope: !3513)
!3515 = !DILocation(line: 250, column: 9, scope: !3513)
!3516 = !DILocation(line: 252, column: 5, scope: !618)
!3517 = !DILocation(line: 252, column: 13, scope: !3518)
!3518 = !DILexicalBlockFile(scope: !3519, file: !4, discriminator: 2)
!3519 = !DILexicalBlockFile(scope: !3520, file: !4, discriminator: 1)
!3520 = distinct !DILexicalBlock(scope: !3521, file: !4, line: 252, column: 5)
!3521 = distinct !DILexicalBlock(scope: !618, file: !4, line: 252, column: 5)
!3522 = !DILocation(line: 252, column: 12, scope: !3520)
!3523 = !DILocation(line: 252, column: 5, scope: !3521)
!3524 = !DILocation(line: 253, column: 14, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3526, file: !4, line: 253, column: 13)
!3526 = distinct !DILexicalBlock(scope: !3520, file: !4, line: 252, column: 21)
!3527 = !DILocation(line: 253, column: 13, scope: !3525)
!3528 = !DILocation(line: 253, column: 16, scope: !3525)
!3529 = !DILocation(line: 253, column: 13, scope: !3526)
!3530 = !DILocation(line: 254, column: 14, scope: !3525)
!3531 = !DILocation(line: 254, column: 16, scope: !3525)
!3532 = !DILocation(line: 254, column: 13, scope: !3525)
!3533 = !DILocation(line: 255, column: 5, scope: !3526)
!3534 = !DILocation(line: 252, column: 17, scope: !3520)
!3535 = !DILocation(line: 252, column: 5, scope: !3520)
!3536 = !DILocation(line: 257, column: 41, scope: !618)
!3537 = !DILocation(line: 257, column: 46, scope: !618)
!3538 = !DILocation(line: 257, column: 48, scope: !618)
!3539 = !DILocation(line: 257, column: 47, scope: !618)
!3540 = !DILocation(line: 256, column: 15, scope: !618)
!3541 = !DILocation(line: 256, column: 13, scope: !618)
!3542 = !DILocation(line: 258, column: 16, scope: !618)
!3543 = !DILocation(line: 258, column: 5, scope: !618)
!3544 = !DILocation(line: 259, column: 12, scope: !618)
!3545 = !DILocation(line: 259, column: 5, scope: !618)
!3546 = !DILocation(line: 260, column: 1, scope: !618)
!3547 = !DILocation(line: 1375, column: 30, scope: !688)
!3548 = !DILocation(line: 1375, column: 46, scope: !688)
!3549 = !DILocation(line: 1376, column: 22, scope: !688)
!3550 = !DILocation(line: 1376, column: 46, scope: !688)
!3551 = !DILocation(line: 1378, column: 5, scope: !688)
!3552 = !DILocation(line: 1378, column: 15, scope: !688)
!3553 = !DILocation(line: 1378, column: 35, scope: !688)
!3554 = !DILocation(line: 1378, column: 47, scope: !688)
!3555 = !DILocation(line: 1379, column: 5, scope: !688)
!3556 = !DILocation(line: 1379, column: 15, scope: !688)
!3557 = !DILocation(line: 1379, column: 22, scope: !688)
!3558 = !DILocation(line: 1380, column: 5, scope: !688)
!3559 = !DILocation(line: 1380, column: 32, scope: !688)
!3560 = !DILocation(line: 1382, column: 27, scope: !688)
!3561 = !DILocation(line: 1382, column: 15, scope: !688)
!3562 = !DILocation(line: 1382, column: 13, scope: !688)
!3563 = !DILocation(line: 1383, column: 9, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !688, file: !4, line: 1383, column: 9)
!3565 = !DILocation(line: 1383, column: 17, scope: !3564)
!3566 = !DILocation(line: 1383, column: 9, scope: !688)
!3567 = !DILocation(line: 1384, column: 9, scope: !3564)
!3568 = !DILocation(line: 1386, column: 26, scope: !688)
!3569 = !DILocation(line: 1386, column: 32, scope: !688)
!3570 = !DILocation(line: 1386, column: 40, scope: !688)
!3571 = !DILocation(line: 1386, column: 12, scope: !688)
!3572 = !DILocation(line: 1386, column: 10, scope: !688)
!3573 = !DILocation(line: 1387, column: 5, scope: !688)
!3574 = !DILocation(line: 1387, column: 10, scope: !3575)
!3575 = !DILexicalBlockFile(scope: !704, file: !4, discriminator: 1)
!3576 = !DILocation(line: 1387, column: 20, scope: !704)
!3577 = !DILocation(line: 1387, column: 50, scope: !704)
!3578 = !DILocation(line: 1387, column: 68, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !704, file: !4, line: 1387, column: 65)
!3580 = !DILocation(line: 1387, column: 85, scope: !3579)
!3581 = !DILocation(line: 1387, column: 65, scope: !3579)
!3582 = !DILocation(line: 1387, column: 95, scope: !3579)
!3583 = !DILocation(line: 1387, column: 65, scope: !704)
!3584 = !DILocation(line: 1387, column: 65, scope: !3585)
!3585 = !DILexicalBlockFile(scope: !704, file: !4, discriminator: 2)
!3586 = !DILocation(line: 1387, column: 126, scope: !3587)
!3587 = !DILexicalBlockFile(scope: !3579, file: !4, discriminator: 3)
!3588 = !DILocation(line: 1387, column: 144, scope: !3579)
!3589 = !DILocation(line: 1387, column: 154, scope: !3579)
!3590 = !DILocation(line: 1387, column: 179, scope: !3579)
!3591 = !DILocation(line: 1387, column: 110, scope: !3579)
!3592 = !DILocation(line: 1387, column: 198, scope: !3593)
!3593 = !DILexicalBlockFile(scope: !688, file: !4, discriminator: 4)
!3594 = !DILocation(line: 1387, column: 198, scope: !704)
!3595 = !DILocation(line: 1387, column: 198, scope: !3596)
!3596 = !DILexicalBlockFile(scope: !704, file: !4, discriminator: 5)
!3597 = !DILocation(line: 1388, column: 9, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !688, file: !4, line: 1388, column: 9)
!3599 = !DILocation(line: 1388, column: 14, scope: !3598)
!3600 = !DILocation(line: 1388, column: 9, scope: !688)
!3601 = !DILocation(line: 1389, column: 9, scope: !3598)
!3602 = !DILocation(line: 1391, column: 14, scope: !710)
!3603 = !DILocation(line: 1391, column: 10, scope: !710)
!3604 = !DILocation(line: 1391, column: 34, scope: !3605)
!3605 = !DILexicalBlockFile(scope: !3606, file: !4, discriminator: 2)
!3606 = !DILexicalBlockFile(scope: !709, file: !4, discriminator: 1)
!3607 = !DILocation(line: 1391, column: 39, scope: !709)
!3608 = !DILocation(line: 1391, column: 34, scope: !709)
!3609 = !DILocation(line: 1391, column: 33, scope: !709)
!3610 = !DILocation(line: 1391, column: 5, scope: !710)
!3611 = !DILocation(line: 1392, column: 14, scope: !708)
!3612 = !DILocation(line: 1394, column: 49, scope: !708)
!3613 = !DILocation(line: 1394, column: 55, scope: !708)
!3614 = !DILocation(line: 1394, column: 60, scope: !708)
!3615 = !DILocation(line: 1394, column: 20, scope: !708)
!3616 = !DILocation(line: 1394, column: 18, scope: !708)
!3617 = !DILocation(line: 1395, column: 13, scope: !3618)
!3618 = distinct !DILexicalBlock(scope: !708, file: !4, line: 1395, column: 13)
!3619 = !DILocation(line: 1395, column: 22, scope: !3618)
!3620 = !DILocation(line: 1395, column: 13, scope: !708)
!3621 = !DILocation(line: 1396, column: 13, scope: !3618)
!3622 = !DILocation(line: 1398, column: 13, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !708, file: !4, line: 1398, column: 13)
!3624 = !DILocation(line: 1398, column: 28, scope: !3623)
!3625 = !DILocation(line: 1398, column: 13, scope: !708)
!3626 = !DILocation(line: 1400, column: 32, scope: !3623)
!3627 = !DILocation(line: 1400, column: 38, scope: !3623)
!3628 = !DILocation(line: 1400, column: 58, scope: !3623)
!3629 = !DILocation(line: 1399, column: 13, scope: !3623)
!3630 = !DILocation(line: 1401, column: 36, scope: !708)
!3631 = !DILocation(line: 1401, column: 42, scope: !708)
!3632 = !DILocation(line: 1401, column: 49, scope: !708)
!3633 = !DILocation(line: 1401, column: 21, scope: !708)
!3634 = !DILocation(line: 1401, column: 19, scope: !708)
!3635 = !DILocation(line: 1402, column: 13, scope: !707)
!3636 = !DILocation(line: 1402, column: 23, scope: !707)
!3637 = !DILocation(line: 1402, column: 13, scope: !708)
!3638 = !DILocation(line: 1403, column: 13, scope: !706)
!3639 = !DILocation(line: 1403, column: 20, scope: !706)
!3640 = !DILocation(line: 1404, column: 13, scope: !706)
!3641 = !DILocation(line: 1404, column: 17, scope: !706)
!3642 = !DILocation(line: 1404, column: 29, scope: !706)
!3643 = !DILocation(line: 1404, column: 34, scope: !706)
!3644 = !DILocation(line: 1404, column: 39, scope: !706)
!3645 = !DILocation(line: 1405, column: 13, scope: !706)
!3646 = !DILocation(line: 1405, column: 17, scope: !706)
!3647 = !DILocation(line: 1405, column: 30, scope: !706)
!3648 = !DILocation(line: 1405, column: 35, scope: !706)
!3649 = !DILocation(line: 1405, column: 40, scope: !706)
!3650 = !DILocation(line: 1407, column: 17, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !706, file: !4, line: 1407, column: 17)
!3652 = !DILocation(line: 1407, column: 17, scope: !706)
!3653 = !DILocation(line: 1408, column: 45, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3651, file: !4, line: 1407, column: 29)
!3655 = !DILocation(line: 1408, column: 51, scope: !3654)
!3656 = !DILocation(line: 1408, column: 25, scope: !3654)
!3657 = !DILocation(line: 1408, column: 23, scope: !3654)
!3658 = !DILocation(line: 1409, column: 21, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3654, file: !4, line: 1409, column: 21)
!3660 = !DILocation(line: 1409, column: 27, scope: !3659)
!3661 = !DILocation(line: 1409, column: 41, scope: !3659)
!3662 = !DILocation(line: 1409, column: 44, scope: !3663)
!3663 = !DILexicalBlockFile(scope: !3659, file: !4, discriminator: 1)
!3664 = !DILocation(line: 1409, column: 21, scope: !3654)
!3665 = !DILocation(line: 1410, column: 21, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3659, file: !4, line: 1409, column: 62)
!3667 = !DILocation(line: 1412, column: 13, scope: !3654)
!3668 = !DILocation(line: 1413, column: 13, scope: !706)
!3669 = !DILocation(line: 1413, column: 18, scope: !3670)
!3670 = !DILexicalBlockFile(scope: !714, file: !4, discriminator: 1)
!3671 = !DILocation(line: 1413, column: 28, scope: !714)
!3672 = !DILocation(line: 1413, column: 51, scope: !714)
!3673 = !DILocation(line: 1413, column: 66, scope: !718)
!3674 = !DILocation(line: 1413, column: 74, scope: !718)
!3675 = !DILocation(line: 1413, column: 66, scope: !714)
!3676 = !DILocation(line: 1413, column: 102, scope: !3677)
!3677 = !DILexicalBlockFile(scope: !717, file: !4, discriminator: 2)
!3678 = !DILocation(line: 1413, column: 116, scope: !717)
!3679 = !DILocation(line: 1413, column: 121, scope: !3680)
!3680 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 4)
!3681 = !DILocation(line: 1413, column: 131, scope: !716)
!3682 = !DILocation(line: 1413, column: 161, scope: !716)
!3683 = !DILocation(line: 1413, column: 179, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !716, file: !4, line: 1413, column: 176)
!3685 = !DILocation(line: 1413, column: 196, scope: !3684)
!3686 = !DILocation(line: 1413, column: 176, scope: !3684)
!3687 = !DILocation(line: 1413, column: 206, scope: !3684)
!3688 = !DILocation(line: 1413, column: 176, scope: !716)
!3689 = !DILocation(line: 1413, column: 176, scope: !3690)
!3690 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 5)
!3691 = !DILocation(line: 1413, column: 237, scope: !3692)
!3692 = !DILexicalBlockFile(scope: !3684, file: !4, discriminator: 6)
!3693 = !DILocation(line: 1413, column: 255, scope: !3684)
!3694 = !DILocation(line: 1413, column: 265, scope: !3684)
!3695 = !DILocation(line: 1413, column: 290, scope: !3684)
!3696 = !DILocation(line: 1413, column: 221, scope: !3684)
!3697 = !DILocation(line: 1413, column: 309, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !717, file: !4, discriminator: 7)
!3699 = !DILocation(line: 1413, column: 309, scope: !716)
!3700 = !DILocation(line: 1413, column: 309, scope: !3701)
!3701 = !DILexicalBlockFile(scope: !716, file: !4, discriminator: 8)
!3702 = !DILocation(line: 1413, column: 322, scope: !3703)
!3703 = !DILexicalBlockFile(scope: !717, file: !4, discriminator: 9)
!3704 = !DILocation(line: 1413, column: 324, scope: !3705)
!3705 = !DILexicalBlockFile(scope: !3706, file: !4, discriminator: 10)
!3706 = !DILexicalBlockFile(scope: !706, file: !4, discriminator: 3)
!3707 = !DILocation(line: 1413, column: 324, scope: !714)
!3708 = !DILocation(line: 1413, column: 324, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !714, file: !4, discriminator: 11)
!3710 = !DILocation(line: 1414, column: 17, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !706, file: !4, line: 1414, column: 17)
!3712 = !DILocation(line: 1414, column: 29, scope: !3711)
!3713 = !DILocation(line: 1414, column: 17, scope: !706)
!3714 = !DILocation(line: 1415, column: 32, scope: !3711)
!3715 = !DILocation(line: 1415, column: 18, scope: !3711)
!3716 = !DILocation(line: 1415, column: 30, scope: !3711)
!3717 = !DILocation(line: 1415, column: 17, scope: !3711)
!3718 = !DILocation(line: 1416, column: 39, scope: !706)
!3719 = !DILocation(line: 1416, column: 45, scope: !706)
!3720 = !DILocation(line: 1417, column: 39, scope: !706)
!3721 = !DILocation(line: 1417, column: 51, scope: !706)
!3722 = !DILocation(line: 1418, column: 39, scope: !706)
!3723 = !DILocation(line: 1416, column: 20, scope: !706)
!3724 = !DILocation(line: 1416, column: 18, scope: !706)
!3725 = !DILocation(line: 1419, column: 17, scope: !722)
!3726 = !DILocation(line: 1419, column: 22, scope: !722)
!3727 = !DILocation(line: 1419, column: 17, scope: !706)
!3728 = !DILocation(line: 1422, column: 17, scope: !721)
!3729 = !DILocation(line: 1422, column: 22, scope: !3730)
!3730 = !DILexicalBlockFile(scope: !720, file: !4, discriminator: 1)
!3731 = !DILocation(line: 1422, column: 32, scope: !720)
!3732 = !DILocation(line: 1422, column: 62, scope: !720)
!3733 = !DILocation(line: 1422, column: 77, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !720, file: !4, line: 1422, column: 74)
!3735 = !DILocation(line: 1422, column: 94, scope: !3734)
!3736 = !DILocation(line: 1422, column: 74, scope: !3734)
!3737 = !DILocation(line: 1422, column: 104, scope: !3734)
!3738 = !DILocation(line: 1422, column: 74, scope: !720)
!3739 = !DILocation(line: 1422, column: 74, scope: !3740)
!3740 = !DILexicalBlockFile(scope: !720, file: !4, discriminator: 2)
!3741 = !DILocation(line: 1422, column: 135, scope: !3742)
!3742 = !DILexicalBlockFile(scope: !3734, file: !4, discriminator: 3)
!3743 = !DILocation(line: 1422, column: 153, scope: !3734)
!3744 = !DILocation(line: 1422, column: 163, scope: !3734)
!3745 = !DILocation(line: 1422, column: 188, scope: !3734)
!3746 = !DILocation(line: 1422, column: 119, scope: !3734)
!3747 = !DILocation(line: 1422, column: 207, scope: !3748)
!3748 = !DILexicalBlockFile(scope: !721, file: !4, discriminator: 4)
!3749 = !DILocation(line: 1422, column: 207, scope: !720)
!3750 = !DILocation(line: 1422, column: 207, scope: !3751)
!3751 = !DILexicalBlockFile(scope: !720, file: !4, discriminator: 5)
!3752 = !DILocation(line: 1423, column: 17, scope: !721)
!3753 = !DILocation(line: 1425, column: 17, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !706, file: !4, line: 1425, column: 17)
!3755 = !DILocation(line: 1425, column: 22, scope: !3754)
!3756 = !DILocation(line: 1425, column: 36, scope: !3754)
!3757 = !DILocation(line: 1425, column: 39, scope: !3758)
!3758 = !DILexicalBlockFile(scope: !3754, file: !4, discriminator: 1)
!3759 = !DILocation(line: 1425, column: 49, scope: !3754)
!3760 = !DILocation(line: 1425, column: 17, scope: !706)
!3761 = !DILocation(line: 1426, column: 46, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3754, file: !4, line: 1425, column: 64)
!3763 = !DILocation(line: 1426, column: 30, scope: !3762)
!3764 = !DILocation(line: 1426, column: 18, scope: !3762)
!3765 = !DILocation(line: 1426, column: 28, scope: !3762)
!3766 = !DILocation(line: 1427, column: 34, scope: !3762)
!3767 = !DILocation(line: 1427, column: 33, scope: !3762)
!3768 = !DILocation(line: 1427, column: 47, scope: !3762)
!3769 = !DILocation(line: 1427, column: 56, scope: !3762)
!3770 = !DILocation(line: 1428, column: 13, scope: !3762)
!3771 = !DILocation(line: 1429, column: 13, scope: !706)
!3772 = !DILocation(line: 1430, column: 9, scope: !707)
!3773 = !DILocation(line: 1432, column: 13, scope: !707)
!3774 = !DILocation(line: 1432, column: 18, scope: !3775)
!3775 = !DILexicalBlockFile(scope: !724, file: !4, discriminator: 1)
!3776 = !DILocation(line: 1432, column: 28, scope: !724)
!3777 = !DILocation(line: 1432, column: 51, scope: !724)
!3778 = !DILocation(line: 1432, column: 66, scope: !728)
!3779 = !DILocation(line: 1432, column: 74, scope: !728)
!3780 = !DILocation(line: 1432, column: 66, scope: !724)
!3781 = !DILocation(line: 1432, column: 102, scope: !3782)
!3782 = !DILexicalBlockFile(scope: !727, file: !4, discriminator: 2)
!3783 = !DILocation(line: 1432, column: 116, scope: !727)
!3784 = !DILocation(line: 1432, column: 121, scope: !3785)
!3785 = !DILexicalBlockFile(scope: !726, file: !4, discriminator: 4)
!3786 = !DILocation(line: 1432, column: 131, scope: !726)
!3787 = !DILocation(line: 1432, column: 161, scope: !726)
!3788 = !DILocation(line: 1432, column: 179, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !726, file: !4, line: 1432, column: 176)
!3790 = !DILocation(line: 1432, column: 196, scope: !3789)
!3791 = !DILocation(line: 1432, column: 176, scope: !3789)
!3792 = !DILocation(line: 1432, column: 206, scope: !3789)
!3793 = !DILocation(line: 1432, column: 176, scope: !726)
!3794 = !DILocation(line: 1432, column: 176, scope: !3795)
!3795 = !DILexicalBlockFile(scope: !726, file: !4, discriminator: 5)
!3796 = !DILocation(line: 1432, column: 237, scope: !3797)
!3797 = !DILexicalBlockFile(scope: !3789, file: !4, discriminator: 6)
!3798 = !DILocation(line: 1432, column: 255, scope: !3789)
!3799 = !DILocation(line: 1432, column: 265, scope: !3789)
!3800 = !DILocation(line: 1432, column: 290, scope: !3789)
!3801 = !DILocation(line: 1432, column: 221, scope: !3789)
!3802 = !DILocation(line: 1432, column: 309, scope: !3803)
!3803 = !DILexicalBlockFile(scope: !727, file: !4, discriminator: 7)
!3804 = !DILocation(line: 1432, column: 309, scope: !726)
!3805 = !DILocation(line: 1432, column: 309, scope: !3806)
!3806 = !DILexicalBlockFile(scope: !726, file: !4, discriminator: 8)
!3807 = !DILocation(line: 1432, column: 322, scope: !3808)
!3808 = !DILexicalBlockFile(scope: !727, file: !4, discriminator: 9)
!3809 = !DILocation(line: 1432, column: 324, scope: !3810)
!3810 = !DILexicalBlockFile(scope: !3811, file: !4, discriminator: 10)
!3811 = !DILexicalBlockFile(scope: !707, file: !4, discriminator: 3)
!3812 = !DILocation(line: 1432, column: 324, scope: !724)
!3813 = !DILocation(line: 1432, column: 324, scope: !3814)
!3814 = !DILexicalBlockFile(scope: !724, file: !4, discriminator: 11)
!3815 = !DILocation(line: 1433, column: 5, scope: !708)
!3816 = !DILocation(line: 1391, column: 50, scope: !709)
!3817 = !DILocation(line: 1391, column: 5, scope: !709)
!3818 = !DILocation(line: 1434, column: 18, scope: !688)
!3819 = !DILocation(line: 1434, column: 58, scope: !688)
!3820 = !DILocation(line: 1434, column: 5, scope: !688)
!3821 = !DILocation(line: 1436, column: 5, scope: !688)
!3822 = !DILocation(line: 1436, column: 10, scope: !3823)
!3823 = !DILexicalBlockFile(scope: !730, file: !4, discriminator: 1)
!3824 = !DILocation(line: 1436, column: 20, scope: !730)
!3825 = !DILocation(line: 1436, column: 50, scope: !730)
!3826 = !DILocation(line: 1436, column: 65, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !730, file: !4, line: 1436, column: 62)
!3828 = !DILocation(line: 1436, column: 82, scope: !3827)
!3829 = !DILocation(line: 1436, column: 62, scope: !3827)
!3830 = !DILocation(line: 1436, column: 92, scope: !3827)
!3831 = !DILocation(line: 1436, column: 62, scope: !730)
!3832 = !DILocation(line: 1436, column: 62, scope: !3833)
!3833 = !DILexicalBlockFile(scope: !730, file: !4, discriminator: 2)
!3834 = !DILocation(line: 1436, column: 123, scope: !3835)
!3835 = !DILexicalBlockFile(scope: !3827, file: !4, discriminator: 3)
!3836 = !DILocation(line: 1436, column: 141, scope: !3827)
!3837 = !DILocation(line: 1436, column: 151, scope: !3827)
!3838 = !DILocation(line: 1436, column: 176, scope: !3827)
!3839 = !DILocation(line: 1436, column: 107, scope: !3827)
!3840 = !DILocation(line: 1436, column: 195, scope: !3593)
!3841 = !DILocation(line: 1436, column: 195, scope: !730)
!3842 = !DILocation(line: 1436, column: 195, scope: !3843)
!3843 = !DILexicalBlockFile(scope: !730, file: !4, discriminator: 5)
!3844 = !DILocation(line: 1437, column: 5, scope: !688)
!3845 = !DILocation(line: 1437, column: 10, scope: !3846)
!3846 = !DILexicalBlockFile(scope: !732, file: !4, discriminator: 1)
!3847 = !DILocation(line: 1437, column: 20, scope: !732)
!3848 = !DILocation(line: 1437, column: 51, scope: !732)
!3849 = !DILocation(line: 1437, column: 66, scope: !735)
!3850 = !DILocation(line: 1437, column: 82, scope: !735)
!3851 = !DILocation(line: 1437, column: 66, scope: !732)
!3852 = !DILocation(line: 1437, column: 97, scope: !3853)
!3853 = !DILexicalBlockFile(scope: !735, file: !4, discriminator: 2)
!3854 = !DILocation(line: 1437, column: 102, scope: !3855)
!3855 = !DILexicalBlockFile(scope: !734, file: !4, discriminator: 4)
!3856 = !DILocation(line: 1437, column: 112, scope: !734)
!3857 = !DILocation(line: 1437, column: 142, scope: !734)
!3858 = !DILocation(line: 1437, column: 168, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !734, file: !4, line: 1437, column: 165)
!3860 = !DILocation(line: 1437, column: 185, scope: !3859)
!3861 = !DILocation(line: 1437, column: 165, scope: !3859)
!3862 = !DILocation(line: 1437, column: 195, scope: !3859)
!3863 = !DILocation(line: 1437, column: 165, scope: !734)
!3864 = !DILocation(line: 1437, column: 165, scope: !3865)
!3865 = !DILexicalBlockFile(scope: !734, file: !4, discriminator: 5)
!3866 = !DILocation(line: 1437, column: 226, scope: !3867)
!3867 = !DILexicalBlockFile(scope: !3859, file: !4, discriminator: 6)
!3868 = !DILocation(line: 1437, column: 244, scope: !3859)
!3869 = !DILocation(line: 1437, column: 254, scope: !3859)
!3870 = !DILocation(line: 1437, column: 279, scope: !3859)
!3871 = !DILocation(line: 1437, column: 210, scope: !3859)
!3872 = !DILocation(line: 1437, column: 298, scope: !3873)
!3873 = !DILexicalBlockFile(scope: !735, file: !4, discriminator: 7)
!3874 = !DILocation(line: 1437, column: 298, scope: !734)
!3875 = !DILocation(line: 1437, column: 298, scope: !3876)
!3876 = !DILexicalBlockFile(scope: !734, file: !4, discriminator: 8)
!3877 = !DILocation(line: 1437, column: 298, scope: !3878)
!3878 = !DILexicalBlockFile(scope: !734, file: !4, discriminator: 9)
!3879 = !DILocation(line: 1437, column: 311, scope: !3880)
!3880 = !DILexicalBlockFile(scope: !3881, file: !4, discriminator: 10)
!3881 = !DILexicalBlockFile(scope: !688, file: !4, discriminator: 3)
!3882 = !DILocation(line: 1437, column: 311, scope: !732)
!3883 = !DILocation(line: 1437, column: 311, scope: !3884)
!3884 = !DILexicalBlockFile(scope: !732, file: !4, discriminator: 11)
!3885 = !DILocation(line: 1438, column: 12, scope: !688)
!3886 = !DILocation(line: 1438, column: 5, scope: !688)
!3887 = !DILocation(line: 1439, column: 1, scope: !688)
!3888 = !DILocation(line: 1322, column: 34, scope: !736)
!3889 = !DILocation(line: 1322, column: 50, scope: !736)
!3890 = !DILocation(line: 1324, column: 5, scope: !736)
!3891 = !DILocation(line: 1324, column: 15, scope: !736)
!3892 = !DILocation(line: 1324, column: 27, scope: !736)
!3893 = !DILocation(line: 1325, column: 5, scope: !736)
!3894 = !DILocation(line: 1325, column: 12, scope: !736)
!3895 = !DILocation(line: 1328, column: 43, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !736, file: !4, line: 1328, column: 9)
!3897 = !DILocation(line: 1328, column: 27, scope: !3896)
!3898 = !DILocation(line: 1328, column: 50, scope: !3896)
!3899 = !DILocation(line: 1328, column: 56, scope: !3896)
!3900 = !DILocation(line: 1328, column: 25, scope: !3896)
!3901 = !DILocation(line: 1328, column: 25, scope: !3902)
!3902 = !DILexicalBlockFile(scope: !3896, file: !4, discriminator: 1)
!3903 = !DILocation(line: 1328, column: 99, scope: !3904)
!3904 = !DILexicalBlockFile(scope: !3896, file: !4, discriminator: 2)
!3905 = !DILocation(line: 1328, column: 69, scope: !3896)
!3906 = !DILocation(line: 1328, column: 108, scope: !3907)
!3907 = !DILexicalBlockFile(scope: !3908, file: !4, discriminator: 4)
!3908 = !DILexicalBlockFile(scope: !3896, file: !4, discriminator: 3)
!3909 = !DILocation(line: 1328, column: 9, scope: !736)
!3910 = !DILocation(line: 1329, column: 9, scope: !3896)
!3911 = !DILocation(line: 1330, column: 90, scope: !736)
!3912 = !DILocation(line: 1330, column: 72, scope: !736)
!3913 = !DILocation(line: 1330, column: 98, scope: !736)
!3914 = !DILocation(line: 1330, column: 104, scope: !736)
!3915 = !DILocation(line: 1331, column: 76, scope: !736)
!3916 = !DILocation(line: 1331, column: 59, scope: !736)
!3917 = !DILocation(line: 1331, column: 84, scope: !736)
!3918 = !DILocation(line: 1331, column: 90, scope: !736)
!3919 = !DILocation(line: 1331, column: 57, scope: !736)
!3920 = !DILocation(line: 1331, column: 148, scope: !3921)
!3921 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 1)
!3922 = !DILocation(line: 1331, column: 132, scope: !736)
!3923 = !DILocation(line: 1331, column: 155, scope: !736)
!3924 = !DILocation(line: 1331, column: 161, scope: !736)
!3925 = !DILocation(line: 1331, column: 102, scope: !736)
!3926 = !DILocation(line: 1331, column: 196, scope: !3927)
!3927 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 3)
!3928 = !DILocation(line: 1331, column: 179, scope: !736)
!3929 = !DILocation(line: 1331, column: 202, scope: !736)
!3930 = !DILocation(line: 1331, column: 171, scope: !736)
!3931 = !DILocation(line: 1331, column: 245, scope: !3932)
!3932 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 4)
!3933 = !DILocation(line: 1331, column: 219, scope: !736)
!3934 = !DILocation(line: 1331, column: 251, scope: !736)
!3935 = !DILocation(line: 1331, column: 211, scope: !736)
!3936 = !DILocation(line: 1331, column: 57, scope: !3937)
!3937 = !DILexicalBlockFile(scope: !3938, file: !4, discriminator: 6)
!3938 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 5)
!3939 = !DILocation(line: 1331, column: 298, scope: !3940)
!3940 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 2)
!3941 = !DILocation(line: 1331, column: 278, scope: !736)
!3942 = !DILocation(line: 1331, column: 306, scope: !736)
!3943 = !DILocation(line: 1331, column: 311, scope: !736)
!3944 = !DILocation(line: 1332, column: 90, scope: !736)
!3945 = !DILocation(line: 1332, column: 72, scope: !736)
!3946 = !DILocation(line: 1332, column: 98, scope: !736)
!3947 = !DILocation(line: 1332, column: 106, scope: !736)
!3948 = !DILocation(line: 1330, column: 16, scope: !736)
!3949 = !DILocation(line: 1330, column: 14, scope: !736)
!3950 = !DILocation(line: 1333, column: 9, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !736, file: !4, line: 1333, column: 9)
!3952 = !DILocation(line: 1333, column: 18, scope: !3951)
!3953 = !DILocation(line: 1333, column: 9, scope: !736)
!3954 = !DILocation(line: 1334, column: 9, scope: !3951)
!3955 = !DILocation(line: 1336, column: 32, scope: !736)
!3956 = !DILocation(line: 1336, column: 38, scope: !736)
!3957 = !DILocation(line: 1336, column: 45, scope: !736)
!3958 = !DILocation(line: 1336, column: 17, scope: !736)
!3959 = !DILocation(line: 1336, column: 15, scope: !736)
!3960 = !DILocation(line: 1337, column: 5, scope: !736)
!3961 = !DILocation(line: 1337, column: 10, scope: !3962)
!3962 = !DILexicalBlockFile(scope: !746, file: !4, discriminator: 1)
!3963 = !DILocation(line: 1337, column: 20, scope: !746)
!3964 = !DILocation(line: 1337, column: 50, scope: !746)
!3965 = !DILocation(line: 1337, column: 69, scope: !3966)
!3966 = distinct !DILexicalBlock(scope: !746, file: !4, line: 1337, column: 66)
!3967 = !DILocation(line: 1337, column: 86, scope: !3966)
!3968 = !DILocation(line: 1337, column: 66, scope: !3966)
!3969 = !DILocation(line: 1337, column: 96, scope: !3966)
!3970 = !DILocation(line: 1337, column: 66, scope: !746)
!3971 = !DILocation(line: 1337, column: 66, scope: !3972)
!3972 = !DILexicalBlockFile(scope: !746, file: !4, discriminator: 2)
!3973 = !DILocation(line: 1337, column: 127, scope: !3974)
!3974 = !DILexicalBlockFile(scope: !3966, file: !4, discriminator: 3)
!3975 = !DILocation(line: 1337, column: 145, scope: !3966)
!3976 = !DILocation(line: 1337, column: 155, scope: !3966)
!3977 = !DILocation(line: 1337, column: 180, scope: !3966)
!3978 = !DILocation(line: 1337, column: 111, scope: !3966)
!3979 = !DILocation(line: 1337, column: 199, scope: !3932)
!3980 = !DILocation(line: 1337, column: 199, scope: !746)
!3981 = !DILocation(line: 1337, column: 199, scope: !3982)
!3982 = !DILexicalBlockFile(scope: !746, file: !4, discriminator: 5)
!3983 = !DILocation(line: 1338, column: 9, scope: !749)
!3984 = !DILocation(line: 1338, column: 19, scope: !749)
!3985 = !DILocation(line: 1338, column: 33, scope: !749)
!3986 = !DILocation(line: 1338, column: 53, scope: !3987)
!3987 = !DILexicalBlockFile(scope: !749, file: !4, discriminator: 1)
!3988 = !DILocation(line: 1338, column: 66, scope: !749)
!3989 = !DILocation(line: 1338, column: 77, scope: !749)
!3990 = !{!1341, !1272, i64 168}
!3991 = !DILocation(line: 1338, column: 86, scope: !749)
!3992 = !DILocation(line: 1338, column: 103, scope: !749)
!3993 = !DILocation(line: 1338, column: 109, scope: !749)
!3994 = !DILocation(line: 1339, column: 22, scope: !749)
!3995 = !DILocation(line: 1339, column: 9, scope: !749)
!3996 = !DILocation(line: 1339, column: 33, scope: !749)
!3997 = !DILocation(line: 1338, column: 9, scope: !736)
!3998 = !DILocation(line: 1342, column: 9, scope: !748)
!3999 = !DILocation(line: 1342, column: 13, scope: !748)
!4000 = !DILocation(line: 1342, column: 19, scope: !748)
!4001 = !DILocation(line: 1343, column: 46, scope: !748)
!4002 = !DILocation(line: 1343, column: 30, scope: !748)
!4003 = !DILocation(line: 1343, column: 16, scope: !748)
!4004 = !DILocation(line: 1343, column: 14, scope: !748)
!4005 = !DILocation(line: 1344, column: 46, scope: !748)
!4006 = !DILocation(line: 1344, column: 30, scope: !748)
!4007 = !DILocation(line: 1344, column: 16, scope: !748)
!4008 = !DILocation(line: 1344, column: 14, scope: !748)
!4009 = !DILocation(line: 1345, column: 31, scope: !748)
!4010 = !DILocation(line: 1345, column: 37, scope: !748)
!4011 = !DILocation(line: 1345, column: 17, scope: !748)
!4012 = !DILocation(line: 1345, column: 15, scope: !748)
!4013 = !DILocation(line: 1346, column: 5, scope: !749)
!4014 = !DILocation(line: 1346, column: 5, scope: !748)
!4015 = !DILocation(line: 1347, column: 15, scope: !749)
!4016 = !DILocation(line: 1348, column: 12, scope: !736)
!4017 = !DILocation(line: 1348, column: 5, scope: !736)
!4018 = !DILocation(line: 1349, column: 1, scope: !736)
!4019 = !DILocation(line: 1354, column: 33, scope: !771)
!4020 = !DILocation(line: 1354, column: 43, scope: !771)
!4021 = !DILocation(line: 1354, column: 58, scope: !771)
!4022 = !DILocation(line: 1355, column: 27, scope: !771)
!4023 = !DILocation(line: 1355, column: 44, scope: !771)
!4024 = !DILocation(line: 1357, column: 5, scope: !771)
!4025 = !DILocation(line: 1357, column: 15, scope: !771)
!4026 = !DILocation(line: 1357, column: 22, scope: !771)
!4027 = !DILocation(line: 1357, column: 32, scope: !771)
!4028 = !DILocation(line: 1359, column: 21, scope: !771)
!4029 = !DILocation(line: 1359, column: 27, scope: !771)
!4030 = !DILocation(line: 1359, column: 36, scope: !771)
!4031 = !DILocation(line: 1359, column: 12, scope: !771)
!4032 = !DILocation(line: 1359, column: 10, scope: !771)
!4033 = !DILocation(line: 1360, column: 9, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !771, file: !4, line: 1360, column: 9)
!4035 = !DILocation(line: 1360, column: 14, scope: !4034)
!4036 = !DILocation(line: 1360, column: 9, scope: !771)
!4037 = !DILocation(line: 1361, column: 9, scope: !4034)
!4038 = !DILocation(line: 1363, column: 31, scope: !771)
!4039 = !DILocation(line: 1363, column: 15, scope: !771)
!4040 = !DILocation(line: 1363, column: 13, scope: !771)
!4041 = !DILocation(line: 1364, column: 9, scope: !4042)
!4042 = distinct !DILexicalBlock(scope: !771, file: !4, line: 1364, column: 9)
!4043 = !DILocation(line: 1364, column: 9, scope: !771)
!4044 = !DILocation(line: 1365, column: 31, scope: !4042)
!4045 = !DILocation(line: 1365, column: 40, scope: !4042)
!4046 = !DILocation(line: 1365, column: 46, scope: !4042)
!4047 = !DILocation(line: 1365, column: 16, scope: !4042)
!4048 = !DILocation(line: 1365, column: 14, scope: !4042)
!4049 = !DILocation(line: 1365, column: 9, scope: !4042)
!4050 = !DILocation(line: 1367, column: 31, scope: !4042)
!4051 = !DILocation(line: 1367, column: 40, scope: !4042)
!4052 = !DILocation(line: 1367, column: 16, scope: !4042)
!4053 = !DILocation(line: 1367, column: 14, scope: !4042)
!4054 = !DILocation(line: 1368, column: 5, scope: !771)
!4055 = !DILocation(line: 1368, column: 10, scope: !4056)
!4056 = !DILexicalBlockFile(scope: !784, file: !4, discriminator: 1)
!4057 = !DILocation(line: 1368, column: 20, scope: !784)
!4058 = !DILocation(line: 1368, column: 50, scope: !784)
!4059 = !DILocation(line: 1368, column: 65, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !784, file: !4, line: 1368, column: 62)
!4061 = !DILocation(line: 1368, column: 82, scope: !4060)
!4062 = !DILocation(line: 1368, column: 62, scope: !4060)
!4063 = !DILocation(line: 1368, column: 92, scope: !4060)
!4064 = !DILocation(line: 1368, column: 62, scope: !784)
!4065 = !DILocation(line: 1368, column: 62, scope: !4066)
!4066 = !DILexicalBlockFile(scope: !784, file: !4, discriminator: 2)
!4067 = !DILocation(line: 1368, column: 123, scope: !4068)
!4068 = !DILexicalBlockFile(scope: !4060, file: !4, discriminator: 3)
!4069 = !DILocation(line: 1368, column: 141, scope: !4060)
!4070 = !DILocation(line: 1368, column: 151, scope: !4060)
!4071 = !DILocation(line: 1368, column: 176, scope: !4060)
!4072 = !DILocation(line: 1368, column: 107, scope: !4060)
!4073 = !DILocation(line: 1368, column: 195, scope: !4074)
!4074 = !DILexicalBlockFile(scope: !771, file: !4, discriminator: 4)
!4075 = !DILocation(line: 1368, column: 195, scope: !784)
!4076 = !DILocation(line: 1368, column: 195, scope: !4077)
!4077 = !DILexicalBlockFile(scope: !784, file: !4, discriminator: 5)
!4078 = !DILocation(line: 1369, column: 12, scope: !771)
!4079 = !DILocation(line: 1369, column: 5, scope: !771)
!4080 = !DILocation(line: 1370, column: 1, scope: !771)
!4081 = !DILocation(line: 1301, column: 19, scope: !751)
!4082 = !DILocation(line: 1301, column: 32, scope: !751)
!4083 = !DILocation(line: 1303, column: 5, scope: !751)
!4084 = !DILocation(line: 1303, column: 15, scope: !751)
!4085 = !DILocation(line: 1305, column: 12, scope: !751)
!4086 = !DILocation(line: 1305, column: 5, scope: !751)
!4087 = !DILocation(line: 1307, column: 19, scope: !751)
!4088 = !DILocation(line: 1307, column: 27, scope: !751)
!4089 = !DILocation(line: 1307, column: 35, scope: !751)
!4090 = !DILocation(line: 1307, column: 9, scope: !751)
!4091 = !DILocation(line: 1307, column: 16, scope: !751)
!4092 = !{!4093, !1237, i64 0}
!4093 = !{!"tm", !1237, i64 0, !1237, i64 4, !1237, i64 8, !1237, i64 12, !1237, i64 16, !1237, i64 20, !1237, i64 24, !1237, i64 28, !1237, i64 32, !1272, i64 40, !1253, i64 48}
!4094 = !DILocation(line: 1308, column: 19, scope: !751)
!4095 = !DILocation(line: 1308, column: 27, scope: !751)
!4096 = !DILocation(line: 1308, column: 33, scope: !751)
!4097 = !DILocation(line: 1308, column: 9, scope: !751)
!4098 = !DILocation(line: 1308, column: 16, scope: !751)
!4099 = !{!4093, !1237, i64 4}
!4100 = !DILocation(line: 1309, column: 20, scope: !751)
!4101 = !DILocation(line: 1309, column: 28, scope: !751)
!4102 = !DILocation(line: 1309, column: 35, scope: !751)
!4103 = !DILocation(line: 1309, column: 9, scope: !751)
!4104 = !DILocation(line: 1309, column: 17, scope: !751)
!4105 = !{!4093, !1237, i64 8}
!4106 = !DILocation(line: 1310, column: 19, scope: !751)
!4107 = !DILocation(line: 1310, column: 27, scope: !751)
!4108 = !DILocation(line: 1310, column: 9, scope: !751)
!4109 = !DILocation(line: 1310, column: 17, scope: !751)
!4110 = !{!4093, !1237, i64 12}
!4111 = !DILocation(line: 1311, column: 20, scope: !751)
!4112 = !DILocation(line: 1311, column: 28, scope: !751)
!4113 = !DILocation(line: 1311, column: 34, scope: !751)
!4114 = !DILocation(line: 1311, column: 42, scope: !751)
!4115 = !DILocation(line: 1311, column: 9, scope: !751)
!4116 = !DILocation(line: 1311, column: 16, scope: !751)
!4117 = !{!4093, !1237, i64 16}
!4118 = !DILocation(line: 1312, column: 21, scope: !751)
!4119 = !DILocation(line: 1312, column: 29, scope: !751)
!4120 = !DILocation(line: 1312, column: 35, scope: !751)
!4121 = !DILocation(line: 1312, column: 43, scope: !751)
!4122 = !DILocation(line: 1312, column: 9, scope: !751)
!4123 = !DILocation(line: 1312, column: 17, scope: !751)
!4124 = !{!4093, !1237, i64 20}
!4125 = !DILocation(line: 1313, column: 9, scope: !751)
!4126 = !DILocation(line: 1313, column: 18, scope: !751)
!4127 = !{!4093, !1237, i64 32}
!4128 = !DILocation(line: 1315, column: 12, scope: !751)
!4129 = !DILocation(line: 1316, column: 1, scope: !751)
!4130 = !DILocation(line: 1315, column: 5, scope: !751)
!4131 = !DILocation(line: 1057, column: 20, scope: !785)
!4132 = !DILocation(line: 1057, column: 39, scope: !785)
!4133 = !DILocation(line: 1059, column: 5, scope: !785)
!4134 = !DILocation(line: 1059, column: 15, scope: !785)
!4135 = !DILocation(line: 1059, column: 26, scope: !785)
!4136 = !DILocation(line: 1059, column: 46, scope: !785)
!4137 = !DILocation(line: 1060, column: 5, scope: !785)
!4138 = !DILocation(line: 1060, column: 11, scope: !785)
!4139 = !DILocation(line: 1061, column: 5, scope: !785)
!4140 = !DILocation(line: 1061, column: 11, scope: !785)
!4141 = !DILocation(line: 1062, column: 5, scope: !785)
!4142 = !DILocation(line: 1062, column: 9, scope: !785)
!4143 = !DILocation(line: 1063, column: 5, scope: !785)
!4144 = !DILocation(line: 1063, column: 16, scope: !785)
!4145 = !DILocation(line: 1064, column: 5, scope: !785)
!4146 = !DILocation(line: 1064, column: 10, scope: !785)
!4147 = !DILocation(line: 1065, column: 5, scope: !785)
!4148 = !DILocation(line: 1065, column: 15, scope: !785)
!4149 = !DILocation(line: 1066, column: 5, scope: !785)
!4150 = !DILocation(line: 1066, column: 10, scope: !785)
!4151 = !DILocation(line: 1066, column: 20, scope: !785)
!4152 = !DILocation(line: 1066, column: 31, scope: !785)
!4153 = !DILocation(line: 1066, column: 42, scope: !785)
!4154 = !DILocation(line: 1066, column: 55, scope: !785)
!4155 = !DILocation(line: 1067, column: 5, scope: !785)
!4156 = !DILocation(line: 1067, column: 10, scope: !785)
!4157 = !DILocation(line: 1067, column: 16, scope: !785)
!4158 = !DILocation(line: 1067, column: 22, scope: !785)
!4159 = !DILocation(line: 1069, column: 27, scope: !4160)
!4160 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1069, column: 9)
!4161 = !DILocation(line: 1069, column: 10, scope: !4160)
!4162 = !DILocation(line: 1069, column: 9, scope: !785)
!4163 = !DILocation(line: 1072, column: 9, scope: !4164)
!4164 = distinct !DILexicalBlock(scope: !4160, file: !4, line: 1071, column: 41)
!4165 = !DILocation(line: 1075, column: 24, scope: !785)
!4166 = !DILocation(line: 1075, column: 10, scope: !785)
!4167 = !DILocation(line: 1075, column: 8, scope: !785)
!4168 = !DILocation(line: 1076, column: 10, scope: !4169)
!4169 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1076, column: 9)
!4170 = !DILocation(line: 1076, column: 9, scope: !785)
!4171 = !DILocation(line: 1077, column: 14, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4173, file: !4, line: 1077, column: 13)
!4173 = distinct !DILexicalBlock(scope: !4169, file: !4, line: 1076, column: 14)
!4174 = !DILocation(line: 1077, column: 13, scope: !4173)
!4175 = !DILocation(line: 1078, column: 26, scope: !4172)
!4176 = !DILocation(line: 1079, column: 51, scope: !4172)
!4177 = !DILocation(line: 1078, column: 13, scope: !4172)
!4178 = !DILocation(line: 1080, column: 9, scope: !4173)
!4179 = !DILocation(line: 1084, column: 15, scope: !4180)
!4180 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1084, column: 9)
!4181 = !DILocation(line: 1084, column: 19, scope: !4180)
!4182 = !DILocation(line: 1084, column: 9, scope: !4180)
!4183 = !DILocation(line: 1084, column: 35, scope: !4180)
!4184 = !DILocation(line: 1084, column: 9, scope: !785)
!4185 = !DILocation(line: 1085, column: 16, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4180, file: !4, line: 1084, column: 42)
!4187 = !DILocation(line: 1085, column: 9, scope: !4186)
!4188 = !DILocation(line: 1086, column: 22, scope: !4186)
!4189 = !DILocation(line: 1086, column: 65, scope: !4186)
!4190 = !DILocation(line: 1086, column: 9, scope: !4186)
!4191 = !DILocation(line: 1087, column: 9, scope: !4186)
!4192 = !DILocation(line: 1090, column: 36, scope: !785)
!4193 = !DILocation(line: 1090, column: 9, scope: !785)
!4194 = !DILocation(line: 1090, column: 7, scope: !785)
!4195 = !DILocation(line: 1091, column: 9, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1091, column: 9)
!4197 = !DILocation(line: 1091, column: 11, scope: !4196)
!4198 = !DILocation(line: 1091, column: 9, scope: !785)
!4199 = !DILocation(line: 1093, column: 14, scope: !4200)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !4, line: 1093, column: 13)
!4201 = distinct !DILexicalBlock(scope: !4196, file: !4, line: 1091, column: 26)
!4202 = !DILocation(line: 1093, column: 13, scope: !4201)
!4203 = !DILocation(line: 1094, column: 26, scope: !4200)
!4204 = !DILocation(line: 1096, column: 26, scope: !4200)
!4205 = !DILocation(line: 1094, column: 13, scope: !4200)
!4206 = !DILocation(line: 1097, column: 16, scope: !4201)
!4207 = !DILocation(line: 1097, column: 9, scope: !4201)
!4208 = !DILocation(line: 1098, column: 9, scope: !4201)
!4209 = !DILocation(line: 1100, column: 15, scope: !4210)
!4210 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1100, column: 9)
!4211 = !DILocation(line: 1100, column: 19, scope: !4210)
!4212 = !DILocation(line: 1100, column: 31, scope: !4210)
!4213 = !DILocation(line: 1100, column: 9, scope: !4210)
!4214 = !DILocation(line: 1100, column: 40, scope: !4210)
!4215 = !DILocation(line: 1100, column: 9, scope: !785)
!4216 = !DILocation(line: 1101, column: 16, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4210, file: !4, line: 1100, column: 47)
!4218 = !DILocation(line: 1101, column: 9, scope: !4217)
!4219 = !DILocation(line: 1102, column: 22, scope: !4217)
!4220 = !DILocation(line: 1102, column: 65, scope: !4217)
!4221 = !DILocation(line: 1102, column: 9, scope: !4217)
!4222 = !DILocation(line: 1103, column: 9, scope: !4217)
!4223 = !DILocation(line: 1106, column: 42, scope: !785)
!4224 = !DILocation(line: 1106, column: 14, scope: !785)
!4225 = !DILocation(line: 1106, column: 12, scope: !785)
!4226 = !DILocation(line: 1107, column: 37, scope: !785)
!4227 = !DILocation(line: 1107, column: 9, scope: !785)
!4228 = !DILocation(line: 1106, column: 46, scope: !785)
!4229 = !DILocation(line: 1106, column: 9, scope: !785)
!4230 = !DILocation(line: 1106, column: 7, scope: !785)
!4231 = !DILocation(line: 1108, column: 9, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1108, column: 9)
!4233 = !DILocation(line: 1108, column: 9, scope: !785)
!4234 = !DILocation(line: 1109, column: 16, scope: !4235)
!4235 = distinct !DILexicalBlock(scope: !4232, file: !4, line: 1108, column: 27)
!4236 = !DILocation(line: 1109, column: 9, scope: !4235)
!4237 = !DILocation(line: 1110, column: 9, scope: !4235)
!4238 = !DILocation(line: 1112, column: 20, scope: !785)
!4239 = !DILocation(line: 1112, column: 17, scope: !785)
!4240 = !DILocation(line: 1114, column: 18, scope: !785)
!4241 = !DILocation(line: 1114, column: 27, scope: !785)
!4242 = !DILocation(line: 1114, column: 34, scope: !4243)
!4243 = !DILexicalBlockFile(scope: !785, file: !4, discriminator: 1)
!4244 = !DILocation(line: 1114, column: 46, scope: !4245)
!4245 = !DILexicalBlockFile(scope: !785, file: !4, discriminator: 2)
!4246 = !DILocation(line: 1114, column: 56, scope: !785)
!4247 = !DILocation(line: 1114, column: 16, scope: !4248)
!4248 = !DILexicalBlockFile(scope: !4249, file: !4, discriminator: 4)
!4249 = !DILexicalBlockFile(scope: !785, file: !4, discriminator: 3)
!4250 = !DILocation(line: 1115, column: 9, scope: !4251)
!4251 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1115, column: 9)
!4252 = !DILocation(line: 1115, column: 20, scope: !4251)
!4253 = !DILocation(line: 1115, column: 9, scope: !785)
!4254 = !DILocation(line: 1116, column: 19, scope: !4251)
!4255 = !DILocation(line: 1116, column: 9, scope: !4251)
!4256 = !DILocation(line: 1117, column: 62, scope: !785)
!4257 = !DILocation(line: 1117, column: 16, scope: !785)
!4258 = !DILocation(line: 1117, column: 14, scope: !785)
!4259 = !DILocation(line: 1119, column: 9, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1119, column: 9)
!4261 = !DILocation(line: 1119, column: 18, scope: !4260)
!4262 = !DILocation(line: 1119, column: 9, scope: !785)
!4263 = !DILocation(line: 1120, column: 16, scope: !4264)
!4264 = distinct !DILexicalBlock(scope: !4260, file: !4, line: 1119, column: 33)
!4265 = !DILocation(line: 1120, column: 9, scope: !4264)
!4266 = !DILocation(line: 1121, column: 9, scope: !4264)
!4267 = !DILocation(line: 1123, column: 28, scope: !785)
!4268 = !DILocation(line: 1123, column: 11, scope: !785)
!4269 = !DILocation(line: 1123, column: 9, scope: !785)
!4270 = !DILocation(line: 1125, column: 17, scope: !785)
!4271 = !DILocation(line: 1125, column: 21, scope: !785)
!4272 = !DILocation(line: 1125, column: 11, scope: !785)
!4273 = !DILocation(line: 1125, column: 9, scope: !785)
!4274 = !DILocation(line: 1126, column: 9, scope: !4275)
!4275 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1126, column: 9)
!4276 = !DILocation(line: 1126, column: 13, scope: !4275)
!4277 = !DILocation(line: 1126, column: 9, scope: !785)
!4278 = !DILocation(line: 1127, column: 28, scope: !4279)
!4279 = distinct !DILexicalBlock(scope: !4275, file: !4, line: 1126, column: 19)
!4280 = !DILocation(line: 1127, column: 36, scope: !4279)
!4281 = !DILocation(line: 1127, column: 47, scope: !4279)
!4282 = !DILocation(line: 1127, column: 22, scope: !4279)
!4283 = !DILocation(line: 1127, column: 20, scope: !4279)
!4284 = !DILocation(line: 1128, column: 5, scope: !4279)
!4285 = !DILocation(line: 1129, column: 16, scope: !4286)
!4286 = distinct !DILexicalBlock(scope: !4275, file: !4, line: 1128, column: 12)
!4287 = !DILocation(line: 1129, column: 9, scope: !4286)
!4288 = !DILocation(line: 1130, column: 22, scope: !4286)
!4289 = !DILocation(line: 1130, column: 65, scope: !4286)
!4290 = !DILocation(line: 1130, column: 9, scope: !4286)
!4291 = !DILocation(line: 1131, column: 9, scope: !4286)
!4292 = !DILocation(line: 1133, column: 12, scope: !785)
!4293 = !DILocation(line: 1133, column: 5, scope: !785)
!4294 = !DILocation(line: 1134, column: 9, scope: !809)
!4295 = !DILocation(line: 1134, column: 13, scope: !809)
!4296 = !DILocation(line: 1134, column: 16, scope: !4297)
!4297 = !DILexicalBlockFile(scope: !809, file: !4, discriminator: 1)
!4298 = !DILocation(line: 1134, column: 30, scope: !809)
!4299 = !DILocation(line: 1134, column: 27, scope: !809)
!4300 = !DILocation(line: 1134, column: 9, scope: !785)
!4301 = !DILocation(line: 1135, column: 25, scope: !808)
!4302 = !DILocation(line: 1135, column: 9, scope: !808)
!4303 = !DILocation(line: 1137, column: 9, scope: !808)
!4304 = !DILocation(line: 1137, column: 14, scope: !4305)
!4305 = !DILexicalBlockFile(scope: !807, file: !4, discriminator: 1)
!4306 = !DILocation(line: 1137, column: 24, scope: !807)
!4307 = !DILocation(line: 1137, column: 54, scope: !807)
!4308 = !DILocation(line: 1137, column: 73, scope: !4309)
!4309 = distinct !DILexicalBlock(scope: !807, file: !4, line: 1137, column: 70)
!4310 = !DILocation(line: 1137, column: 90, scope: !4309)
!4311 = !DILocation(line: 1137, column: 70, scope: !4309)
!4312 = !DILocation(line: 1137, column: 100, scope: !4309)
!4313 = !DILocation(line: 1137, column: 70, scope: !807)
!4314 = !DILocation(line: 1137, column: 70, scope: !4315)
!4315 = !DILexicalBlockFile(scope: !807, file: !4, discriminator: 2)
!4316 = !DILocation(line: 1137, column: 131, scope: !4317)
!4317 = !DILexicalBlockFile(scope: !4309, file: !4, discriminator: 3)
!4318 = !DILocation(line: 1137, column: 149, scope: !4309)
!4319 = !DILocation(line: 1137, column: 159, scope: !4309)
!4320 = !DILocation(line: 1137, column: 184, scope: !4309)
!4321 = !DILocation(line: 1137, column: 115, scope: !4309)
!4322 = !DILocation(line: 1137, column: 203, scope: !4323)
!4323 = !DILexicalBlockFile(scope: !808, file: !4, discriminator: 4)
!4324 = !DILocation(line: 1137, column: 203, scope: !807)
!4325 = !DILocation(line: 1137, column: 203, scope: !4326)
!4326 = !DILexicalBlockFile(scope: !807, file: !4, discriminator: 5)
!4327 = !DILocation(line: 1138, column: 9, scope: !808)
!4328 = !DILocation(line: 1141, column: 9, scope: !4329)
!4329 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1141, column: 9)
!4330 = !DILocation(line: 1141, column: 18, scope: !4329)
!4331 = !DILocation(line: 1141, column: 9, scope: !785)
!4332 = !DILocation(line: 1142, column: 13, scope: !4333)
!4333 = distinct !DILexicalBlock(scope: !4329, file: !4, line: 1141, column: 24)
!4334 = !DILocation(line: 1142, column: 9, scope: !4333)
!4335 = !DILocation(line: 1142, column: 24, scope: !4333)
!4336 = !DILocation(line: 1143, column: 18, scope: !4333)
!4337 = !DILocation(line: 1144, column: 5, scope: !4333)
!4338 = !DILocation(line: 1145, column: 9, scope: !785)
!4339 = !DILocation(line: 1145, column: 5, scope: !785)
!4340 = !DILocation(line: 1145, column: 20, scope: !785)
!4341 = !DILocation(line: 1147, column: 9, scope: !813)
!4342 = !DILocation(line: 1147, column: 18, scope: !813)
!4343 = !DILocation(line: 1147, column: 9, scope: !785)
!4344 = !DILocation(line: 1148, column: 42, scope: !812)
!4345 = !DILocation(line: 1148, column: 47, scope: !812)
!4346 = !DILocation(line: 1148, column: 16, scope: !812)
!4347 = !DILocation(line: 1148, column: 14, scope: !812)
!4348 = !DILocation(line: 1149, column: 9, scope: !812)
!4349 = !DILocation(line: 1149, column: 14, scope: !4350)
!4350 = !DILexicalBlockFile(scope: !811, file: !4, discriminator: 1)
!4351 = !DILocation(line: 1149, column: 24, scope: !811)
!4352 = !DILocation(line: 1149, column: 54, scope: !811)
!4353 = !DILocation(line: 1149, column: 73, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !811, file: !4, line: 1149, column: 70)
!4355 = !DILocation(line: 1149, column: 90, scope: !4354)
!4356 = !DILocation(line: 1149, column: 70, scope: !4354)
!4357 = !DILocation(line: 1149, column: 100, scope: !4354)
!4358 = !DILocation(line: 1149, column: 70, scope: !811)
!4359 = !DILocation(line: 1149, column: 70, scope: !4360)
!4360 = !DILexicalBlockFile(scope: !811, file: !4, discriminator: 2)
!4361 = !DILocation(line: 1149, column: 131, scope: !4362)
!4362 = !DILexicalBlockFile(scope: !4354, file: !4, discriminator: 3)
!4363 = !DILocation(line: 1149, column: 149, scope: !4354)
!4364 = !DILocation(line: 1149, column: 159, scope: !4354)
!4365 = !DILocation(line: 1149, column: 184, scope: !4354)
!4366 = !DILocation(line: 1149, column: 115, scope: !4354)
!4367 = !DILocation(line: 1149, column: 203, scope: !4368)
!4368 = !DILexicalBlockFile(scope: !812, file: !4, discriminator: 4)
!4369 = !DILocation(line: 1149, column: 203, scope: !811)
!4370 = !DILocation(line: 1149, column: 203, scope: !4371)
!4371 = !DILexicalBlockFile(scope: !811, file: !4, discriminator: 5)
!4372 = !DILocation(line: 1150, column: 16, scope: !812)
!4373 = !DILocation(line: 1150, column: 9, scope: !812)
!4374 = !DILocation(line: 1154, column: 18, scope: !785)
!4375 = !DILocation(line: 1154, column: 16, scope: !785)
!4376 = !DILocation(line: 1155, column: 9, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !785, file: !4, line: 1155, column: 9)
!4378 = !DILocation(line: 1155, column: 20, scope: !4377)
!4379 = !DILocation(line: 1155, column: 9, scope: !785)
!4380 = !DILocation(line: 1156, column: 25, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4377, file: !4, line: 1155, column: 35)
!4382 = !DILocation(line: 1156, column: 9, scope: !4381)
!4383 = !DILocation(line: 1159, column: 9, scope: !4381)
!4384 = !DILocation(line: 1161, column: 34, scope: !785)
!4385 = !DILocation(line: 1161, column: 52, scope: !785)
!4386 = !DILocation(line: 1161, column: 12, scope: !785)
!4387 = !DILocation(line: 1161, column: 10, scope: !785)
!4388 = !DILocation(line: 1162, column: 5, scope: !785)
!4389 = !DILocation(line: 1162, column: 10, scope: !4390)
!4390 = !DILexicalBlockFile(scope: !815, file: !4, discriminator: 1)
!4391 = !DILocation(line: 1162, column: 20, scope: !815)
!4392 = !DILocation(line: 1162, column: 50, scope: !815)
!4393 = !DILocation(line: 1162, column: 71, scope: !4394)
!4394 = distinct !DILexicalBlock(scope: !815, file: !4, line: 1162, column: 68)
!4395 = !DILocation(line: 1162, column: 88, scope: !4394)
!4396 = !DILocation(line: 1162, column: 68, scope: !4394)
!4397 = !DILocation(line: 1162, column: 98, scope: !4394)
!4398 = !DILocation(line: 1162, column: 68, scope: !815)
!4399 = !DILocation(line: 1162, column: 68, scope: !4400)
!4400 = !DILexicalBlockFile(scope: !815, file: !4, discriminator: 2)
!4401 = !DILocation(line: 1162, column: 129, scope: !4402)
!4402 = !DILexicalBlockFile(scope: !4394, file: !4, discriminator: 3)
!4403 = !DILocation(line: 1162, column: 147, scope: !4394)
!4404 = !DILocation(line: 1162, column: 157, scope: !4394)
!4405 = !DILocation(line: 1162, column: 182, scope: !4394)
!4406 = !DILocation(line: 1162, column: 113, scope: !4394)
!4407 = !DILocation(line: 1162, column: 201, scope: !4408)
!4408 = !DILexicalBlockFile(scope: !785, file: !4, discriminator: 4)
!4409 = !DILocation(line: 1162, column: 201, scope: !815)
!4410 = !DILocation(line: 1162, column: 201, scope: !4411)
!4411 = !DILexicalBlockFile(scope: !815, file: !4, discriminator: 5)
!4412 = !DILocation(line: 1162, column: 201, scope: !4413)
!4413 = !DILexicalBlockFile(scope: !815, file: !4, discriminator: 6)
!4414 = !DILocation(line: 1164, column: 5, scope: !785)
!4415 = !DILocation(line: 1164, column: 10, scope: !4416)
!4416 = !DILexicalBlockFile(scope: !817, file: !4, discriminator: 1)
!4417 = !DILocation(line: 1164, column: 20, scope: !817)
!4418 = !DILocation(line: 1164, column: 50, scope: !817)
!4419 = !DILocation(line: 1164, column: 69, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !817, file: !4, line: 1164, column: 66)
!4421 = !DILocation(line: 1164, column: 86, scope: !4420)
!4422 = !DILocation(line: 1164, column: 66, scope: !4420)
!4423 = !DILocation(line: 1164, column: 96, scope: !4420)
!4424 = !DILocation(line: 1164, column: 66, scope: !817)
!4425 = !DILocation(line: 1164, column: 66, scope: !4426)
!4426 = !DILexicalBlockFile(scope: !817, file: !4, discriminator: 2)
!4427 = !DILocation(line: 1164, column: 127, scope: !4428)
!4428 = !DILexicalBlockFile(scope: !4420, file: !4, discriminator: 3)
!4429 = !DILocation(line: 1164, column: 145, scope: !4420)
!4430 = !DILocation(line: 1164, column: 155, scope: !4420)
!4431 = !DILocation(line: 1164, column: 180, scope: !4420)
!4432 = !DILocation(line: 1164, column: 111, scope: !4420)
!4433 = !DILocation(line: 1164, column: 199, scope: !4408)
!4434 = !DILocation(line: 1164, column: 199, scope: !817)
!4435 = !DILocation(line: 1164, column: 199, scope: !4436)
!4436 = !DILexicalBlockFile(scope: !817, file: !4, discriminator: 5)
!4437 = !DILocation(line: 1165, column: 12, scope: !785)
!4438 = !DILocation(line: 1165, column: 5, scope: !785)
!4439 = !DILocation(line: 1166, column: 1, scope: !785)
!4440 = !DILocation(line: 1187, column: 26, scope: !826)
!4441 = !DILocation(line: 1187, column: 46, scope: !826)
!4442 = !DILocation(line: 1187, column: 59, scope: !826)
!4443 = !DILocation(line: 1189, column: 5, scope: !826)
!4444 = !DILocation(line: 1189, column: 15, scope: !826)
!4445 = !DILocation(line: 1190, column: 5, scope: !826)
!4446 = !DILocation(line: 1190, column: 11, scope: !826)
!4447 = !DILocation(line: 1190, column: 34, scope: !826)
!4448 = !DILocation(line: 1190, column: 17, scope: !826)
!4449 = !DILocation(line: 1191, column: 5, scope: !826)
!4450 = !DILocation(line: 1191, column: 16, scope: !826)
!4451 = !DILocation(line: 1191, column: 36, scope: !826)
!4452 = !DILocation(line: 1191, column: 23, scope: !826)
!4453 = !DILocation(line: 1193, column: 9, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !826, file: !4, line: 1193, column: 9)
!4455 = !DILocation(line: 1193, column: 14, scope: !4454)
!4456 = !DILocation(line: 1193, column: 9, scope: !826)
!4457 = !DILocation(line: 1194, column: 25, scope: !4458)
!4458 = distinct !DILexicalBlock(scope: !4454, file: !4, line: 1193, column: 20)
!4459 = !DILocation(line: 1194, column: 9, scope: !4458)
!4460 = !DILocation(line: 1196, column: 9, scope: !4458)
!4461 = !DILocation(line: 1199, column: 35, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !826, file: !4, line: 1199, column: 9)
!4463 = !DILocation(line: 1199, column: 9, scope: !4462)
!4464 = !DILocation(line: 1199, column: 43, scope: !4462)
!4465 = !DILocation(line: 1199, column: 40, scope: !4462)
!4466 = !DILocation(line: 1199, column: 9, scope: !826)
!4467 = !DILocation(line: 1200, column: 13, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4469, file: !4, line: 1200, column: 13)
!4469 = distinct !DILexicalBlock(scope: !4462, file: !4, line: 1199, column: 70)
!4470 = !DILocation(line: 1200, column: 13, scope: !4469)
!4471 = !DILocation(line: 1202, column: 32, scope: !4468)
!4472 = !DILocation(line: 1201, column: 13, scope: !4468)
!4473 = !DILocation(line: 1203, column: 55, scope: !4469)
!4474 = !DILocation(line: 1204, column: 9, scope: !4469)
!4475 = !DILocation(line: 1207, column: 9, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !826, file: !4, line: 1207, column: 9)
!4477 = !DILocation(line: 1207, column: 15, scope: !4476)
!4478 = !DILocation(line: 1207, column: 20, scope: !4476)
!4479 = !DILocation(line: 1207, column: 59, scope: !4480)
!4480 = !DILexicalBlockFile(scope: !4476, file: !4, discriminator: 1)
!4481 = !DILocation(line: 1207, column: 63, scope: !4476)
!4482 = !DILocation(line: 1207, column: 33, scope: !4476)
!4483 = !DILocation(line: 1208, column: 33, scope: !4476)
!4484 = !DILocation(line: 1207, column: 24, scope: !4476)
!4485 = !DILocation(line: 1207, column: 9, scope: !826)
!4486 = !DILocation(line: 1209, column: 13, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4488, file: !4, line: 1209, column: 13)
!4488 = distinct !DILexicalBlock(scope: !4476, file: !4, line: 1208, column: 41)
!4489 = !DILocation(line: 1209, column: 13, scope: !4488)
!4490 = !DILocation(line: 1211, column: 32, scope: !4487)
!4491 = !DILocation(line: 1210, column: 13, scope: !4487)
!4492 = !DILocation(line: 1212, column: 55, scope: !4488)
!4493 = !DILocation(line: 1213, column: 9, scope: !4488)
!4494 = !DILocation(line: 1218, column: 43, scope: !826)
!4495 = !DILocation(line: 1218, column: 47, scope: !826)
!4496 = !DILocation(line: 1218, column: 53, scope: !826)
!4497 = !DILocation(line: 1218, column: 58, scope: !826)
!4498 = !DILocation(line: 1218, column: 12, scope: !826)
!4499 = !DILocation(line: 1218, column: 10, scope: !826)
!4500 = !DILocation(line: 1219, column: 9, scope: !4501)
!4501 = distinct !DILexicalBlock(scope: !826, file: !4, line: 1219, column: 9)
!4502 = !DILocation(line: 1219, column: 14, scope: !4501)
!4503 = !DILocation(line: 1219, column: 9, scope: !826)
!4504 = !DILocation(line: 1220, column: 9, scope: !4501)
!4505 = !DILocation(line: 1221, column: 25, scope: !839)
!4506 = !DILocation(line: 1221, column: 33, scope: !839)
!4507 = !DILocation(line: 1221, column: 42, scope: !839)
!4508 = !DILocation(line: 1221, column: 9, scope: !826)
!4509 = !DILocation(line: 1222, column: 9, scope: !838)
!4510 = !DILocation(line: 1222, column: 14, scope: !4511)
!4511 = !DILexicalBlockFile(scope: !837, file: !4, discriminator: 1)
!4512 = !DILocation(line: 1222, column: 24, scope: !837)
!4513 = !DILocation(line: 1222, column: 54, scope: !837)
!4514 = !DILocation(line: 1222, column: 69, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !837, file: !4, line: 1222, column: 66)
!4516 = !DILocation(line: 1222, column: 86, scope: !4515)
!4517 = !DILocation(line: 1222, column: 66, scope: !4515)
!4518 = !DILocation(line: 1222, column: 96, scope: !4515)
!4519 = !DILocation(line: 1222, column: 66, scope: !837)
!4520 = !DILocation(line: 1222, column: 66, scope: !4521)
!4521 = !DILexicalBlockFile(scope: !837, file: !4, discriminator: 2)
!4522 = !DILocation(line: 1222, column: 127, scope: !4523)
!4523 = !DILexicalBlockFile(scope: !4515, file: !4, discriminator: 3)
!4524 = !DILocation(line: 1222, column: 145, scope: !4515)
!4525 = !DILocation(line: 1222, column: 155, scope: !4515)
!4526 = !DILocation(line: 1222, column: 180, scope: !4515)
!4527 = !DILocation(line: 1222, column: 111, scope: !4515)
!4528 = !DILocation(line: 1222, column: 199, scope: !4529)
!4529 = !DILexicalBlockFile(scope: !838, file: !4, discriminator: 4)
!4530 = !DILocation(line: 1222, column: 199, scope: !837)
!4531 = !DILocation(line: 1222, column: 199, scope: !4532)
!4532 = !DILexicalBlockFile(scope: !837, file: !4, discriminator: 5)
!4533 = !DILocation(line: 1223, column: 22, scope: !838)
!4534 = !DILocation(line: 1225, column: 14, scope: !838)
!4535 = !DILocation(line: 1223, column: 9, scope: !838)
!4536 = !DILocation(line: 1226, column: 9, scope: !838)
!4537 = !DILocation(line: 1228, column: 12, scope: !826)
!4538 = !DILocation(line: 1228, column: 5, scope: !826)
!4539 = !DILocation(line: 1229, column: 1, scope: !826)
!4540 = !DILocation(line: 1276, column: 26, scope: !853)
!4541 = !DILocation(line: 1276, column: 46, scope: !853)
!4542 = !DILocation(line: 1278, column: 5, scope: !853)
!4543 = !DILocation(line: 1278, column: 15, scope: !853)
!4544 = !DILocation(line: 1278, column: 22, scope: !853)
!4545 = !DILocation(line: 1278, column: 37, scope: !853)
!4546 = !DILocation(line: 1280, column: 43, scope: !853)
!4547 = !DILocation(line: 1280, column: 17, scope: !853)
!4548 = !DILocation(line: 1280, column: 15, scope: !853)
!4549 = !DILocation(line: 1281, column: 9, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !853, file: !4, line: 1281, column: 9)
!4551 = !DILocation(line: 1281, column: 19, scope: !4550)
!4552 = !DILocation(line: 1281, column: 9, scope: !853)
!4553 = !DILocation(line: 1282, column: 9, scope: !4550)
!4554 = !DILocation(line: 1284, column: 43, scope: !853)
!4555 = !DILocation(line: 1284, column: 20, scope: !853)
!4556 = !DILocation(line: 1284, column: 18, scope: !853)
!4557 = !DILocation(line: 1285, column: 9, scope: !863)
!4558 = !DILocation(line: 1285, column: 22, scope: !863)
!4559 = !DILocation(line: 1285, column: 9, scope: !853)
!4560 = !DILocation(line: 1286, column: 9, scope: !862)
!4561 = !DILocation(line: 1286, column: 14, scope: !4562)
!4562 = !DILexicalBlockFile(scope: !861, file: !4, discriminator: 1)
!4563 = !DILocation(line: 1286, column: 24, scope: !861)
!4564 = !DILocation(line: 1286, column: 54, scope: !861)
!4565 = !DILocation(line: 1286, column: 74, scope: !4566)
!4566 = distinct !DILexicalBlock(scope: !861, file: !4, line: 1286, column: 71)
!4567 = !DILocation(line: 1286, column: 91, scope: !4566)
!4568 = !DILocation(line: 1286, column: 71, scope: !4566)
!4569 = !DILocation(line: 1286, column: 101, scope: !4566)
!4570 = !DILocation(line: 1286, column: 71, scope: !861)
!4571 = !DILocation(line: 1286, column: 71, scope: !4572)
!4572 = !DILexicalBlockFile(scope: !861, file: !4, discriminator: 2)
!4573 = !DILocation(line: 1286, column: 132, scope: !4574)
!4574 = !DILexicalBlockFile(scope: !4566, file: !4, discriminator: 3)
!4575 = !DILocation(line: 1286, column: 150, scope: !4566)
!4576 = !DILocation(line: 1286, column: 160, scope: !4566)
!4577 = !DILocation(line: 1286, column: 185, scope: !4566)
!4578 = !DILocation(line: 1286, column: 116, scope: !4566)
!4579 = !DILocation(line: 1286, column: 204, scope: !4580)
!4580 = !DILexicalBlockFile(scope: !862, file: !4, discriminator: 4)
!4581 = !DILocation(line: 1286, column: 204, scope: !861)
!4582 = !DILocation(line: 1286, column: 204, scope: !4583)
!4583 = !DILexicalBlockFile(scope: !861, file: !4, discriminator: 5)
!4584 = !DILocation(line: 1287, column: 9, scope: !862)
!4585 = !DILocation(line: 1290, column: 53, scope: !853)
!4586 = !DILocation(line: 1290, column: 36, scope: !853)
!4587 = !DILocation(line: 1290, column: 85, scope: !853)
!4588 = !DILocation(line: 1290, column: 68, scope: !853)
!4589 = !DILocation(line: 1290, column: 12, scope: !853)
!4590 = !DILocation(line: 1290, column: 10, scope: !853)
!4591 = !DILocation(line: 1293, column: 5, scope: !853)
!4592 = !DILocation(line: 1293, column: 10, scope: !4593)
!4593 = !DILexicalBlockFile(scope: !865, file: !4, discriminator: 1)
!4594 = !DILocation(line: 1293, column: 20, scope: !865)
!4595 = !DILocation(line: 1293, column: 50, scope: !865)
!4596 = !DILocation(line: 1293, column: 70, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !865, file: !4, line: 1293, column: 67)
!4598 = !DILocation(line: 1293, column: 87, scope: !4597)
!4599 = !DILocation(line: 1293, column: 67, scope: !4597)
!4600 = !DILocation(line: 1293, column: 97, scope: !4597)
!4601 = !DILocation(line: 1293, column: 67, scope: !865)
!4602 = !DILocation(line: 1293, column: 67, scope: !4603)
!4603 = !DILexicalBlockFile(scope: !865, file: !4, discriminator: 2)
!4604 = !DILocation(line: 1293, column: 128, scope: !4605)
!4605 = !DILexicalBlockFile(scope: !4597, file: !4, discriminator: 3)
!4606 = !DILocation(line: 1293, column: 146, scope: !4597)
!4607 = !DILocation(line: 1293, column: 156, scope: !4597)
!4608 = !DILocation(line: 1293, column: 181, scope: !4597)
!4609 = !DILocation(line: 1293, column: 112, scope: !4597)
!4610 = !DILocation(line: 1293, column: 200, scope: !4611)
!4611 = !DILexicalBlockFile(scope: !853, file: !4, discriminator: 4)
!4612 = !DILocation(line: 1293, column: 200, scope: !865)
!4613 = !DILocation(line: 1293, column: 200, scope: !4614)
!4614 = !DILexicalBlockFile(scope: !865, file: !4, discriminator: 5)
!4615 = !DILocation(line: 1294, column: 5, scope: !853)
!4616 = !DILocation(line: 1294, column: 10, scope: !4617)
!4617 = !DILexicalBlockFile(scope: !867, file: !4, discriminator: 1)
!4618 = !DILocation(line: 1294, column: 20, scope: !867)
!4619 = !DILocation(line: 1294, column: 50, scope: !867)
!4620 = !DILocation(line: 1294, column: 73, scope: !4621)
!4621 = distinct !DILexicalBlock(scope: !867, file: !4, line: 1294, column: 70)
!4622 = !DILocation(line: 1294, column: 90, scope: !4621)
!4623 = !DILocation(line: 1294, column: 70, scope: !4621)
!4624 = !DILocation(line: 1294, column: 100, scope: !4621)
!4625 = !DILocation(line: 1294, column: 70, scope: !867)
!4626 = !DILocation(line: 1294, column: 70, scope: !4627)
!4627 = !DILexicalBlockFile(scope: !867, file: !4, discriminator: 2)
!4628 = !DILocation(line: 1294, column: 131, scope: !4629)
!4629 = !DILexicalBlockFile(scope: !4621, file: !4, discriminator: 3)
!4630 = !DILocation(line: 1294, column: 149, scope: !4621)
!4631 = !DILocation(line: 1294, column: 159, scope: !4621)
!4632 = !DILocation(line: 1294, column: 184, scope: !4621)
!4633 = !DILocation(line: 1294, column: 115, scope: !4621)
!4634 = !DILocation(line: 1294, column: 203, scope: !4611)
!4635 = !DILocation(line: 1294, column: 203, scope: !867)
!4636 = !DILocation(line: 1294, column: 203, scope: !4637)
!4637 = !DILexicalBlockFile(scope: !867, file: !4, discriminator: 5)
!4638 = !DILocation(line: 1295, column: 12, scope: !853)
!4639 = !DILocation(line: 1295, column: 5, scope: !853)
!4640 = !DILocation(line: 1296, column: 1, scope: !853)
!4641 = !DILocation(line: 1028, column: 5, scope: !818)
!4642 = !DILocation(line: 1028, column: 15, scope: !818)
!4643 = !DILocation(line: 1029, column: 5, scope: !818)
!4644 = !DILocation(line: 1029, column: 15, scope: !818)
!4645 = !DILocation(line: 1032, column: 9, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !818, file: !4, line: 1032, column: 9)
!4647 = !DILocation(line: 1032, column: 24, scope: !4646)
!4648 = !DILocation(line: 1032, column: 9, scope: !818)
!4649 = !DILocation(line: 1035, column: 9, scope: !4646)
!4650 = !DILocation(line: 1036, column: 20, scope: !818)
!4651 = !DILocation(line: 1037, column: 12, scope: !818)
!4652 = !DILocation(line: 1037, column: 10, scope: !818)
!4653 = !DILocation(line: 1038, column: 20, scope: !818)
!4654 = !DILocation(line: 1039, column: 9, scope: !825)
!4655 = !DILocation(line: 1039, column: 14, scope: !825)
!4656 = !DILocation(line: 1039, column: 9, scope: !818)
!4657 = !DILocation(line: 1040, column: 42, scope: !824)
!4658 = !DILocation(line: 1040, column: 22, scope: !824)
!4659 = !DILocation(line: 1040, column: 20, scope: !824)
!4660 = !DILocation(line: 1042, column: 9, scope: !824)
!4661 = !DILocation(line: 1042, column: 14, scope: !4662)
!4662 = !DILexicalBlockFile(scope: !823, file: !4, discriminator: 1)
!4663 = !DILocation(line: 1042, column: 24, scope: !823)
!4664 = !DILocation(line: 1042, column: 54, scope: !823)
!4665 = !DILocation(line: 1042, column: 69, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !823, file: !4, line: 1042, column: 66)
!4667 = !DILocation(line: 1042, column: 86, scope: !4666)
!4668 = !DILocation(line: 1042, column: 66, scope: !4666)
!4669 = !DILocation(line: 1042, column: 96, scope: !4666)
!4670 = !DILocation(line: 1042, column: 66, scope: !823)
!4671 = !DILocation(line: 1042, column: 66, scope: !4672)
!4672 = !DILexicalBlockFile(scope: !823, file: !4, discriminator: 2)
!4673 = !DILocation(line: 1042, column: 127, scope: !4674)
!4674 = !DILexicalBlockFile(scope: !4666, file: !4, discriminator: 3)
!4675 = !DILocation(line: 1042, column: 145, scope: !4666)
!4676 = !DILocation(line: 1042, column: 155, scope: !4666)
!4677 = !DILocation(line: 1042, column: 180, scope: !4666)
!4678 = !DILocation(line: 1042, column: 111, scope: !4666)
!4679 = !DILocation(line: 1042, column: 199, scope: !4680)
!4680 = !DILexicalBlockFile(scope: !824, file: !4, discriminator: 4)
!4681 = !DILocation(line: 1042, column: 199, scope: !823)
!4682 = !DILocation(line: 1042, column: 199, scope: !4683)
!4683 = !DILexicalBlockFile(scope: !823, file: !4, discriminator: 5)
!4684 = !DILocation(line: 1043, column: 5, scope: !824)
!4685 = !DILocation(line: 1045, column: 9, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !825, file: !4, line: 1044, column: 10)
!4687 = !DILocation(line: 1046, column: 20, scope: !4686)
!4688 = !DILocation(line: 1048, column: 9, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !818, file: !4, line: 1048, column: 9)
!4690 = !DILocation(line: 1048, column: 9, scope: !818)
!4691 = !DILocation(line: 1050, column: 13, scope: !4689)
!4692 = !DILocation(line: 1050, column: 18, scope: !4689)
!4693 = !DILocation(line: 1049, column: 9, scope: !4689)
!4694 = !DILocation(line: 1051, column: 12, scope: !818)
!4695 = !DILocation(line: 1051, column: 5, scope: !818)
!4696 = !DILocation(line: 1052, column: 1, scope: !818)
!4697 = !DILocation(line: 821, column: 25, scope: !840)
!4698 = !DILocation(line: 822, column: 5, scope: !840)
!4699 = !DILocation(line: 822, column: 10, scope: !840)
!4700 = !DILocation(line: 823, column: 9, scope: !840)
!4701 = !DILocation(line: 823, column: 7, scope: !840)
!4702 = !DILocation(line: 824, column: 16, scope: !840)
!4703 = !DILocation(line: 824, column: 10, scope: !840)
!4704 = !DILocation(line: 824, column: 23, scope: !840)
!4705 = !DILocation(line: 824, column: 7, scope: !840)
!4706 = !DILocation(line: 825, column: 16, scope: !840)
!4707 = !DILocation(line: 825, column: 10, scope: !840)
!4708 = !DILocation(line: 825, column: 23, scope: !840)
!4709 = !DILocation(line: 825, column: 7, scope: !840)
!4710 = !DILocation(line: 826, column: 16, scope: !840)
!4711 = !DILocation(line: 826, column: 10, scope: !840)
!4712 = !DILocation(line: 826, column: 23, scope: !840)
!4713 = !DILocation(line: 826, column: 7, scope: !840)
!4714 = !DILocation(line: 829, column: 12, scope: !840)
!4715 = !DILocation(line: 829, column: 14, scope: !840)
!4716 = !DILocation(line: 829, column: 10, scope: !840)
!4717 = !DILocation(line: 829, column: 7, scope: !840)
!4718 = !DILocation(line: 831, column: 12, scope: !840)
!4719 = !DILocation(line: 832, column: 1, scope: !840)
!4720 = !DILocation(line: 831, column: 5, scope: !840)
!4721 = !DILocation(line: 1172, column: 17, scope: !846)
!4722 = !DILocation(line: 1172, column: 28, scope: !846)
!4723 = !DILocation(line: 1174, column: 5, scope: !846)
!4724 = !DILocation(line: 1174, column: 12, scope: !846)
!4725 = !DILocation(line: 1174, column: 16, scope: !846)
!4726 = !DILocation(line: 1174, column: 21, scope: !846)
!4727 = !DILocation(line: 1174, column: 19, scope: !846)
!4728 = !DILocation(line: 1175, column: 9, scope: !4729)
!4729 = distinct !DILexicalBlock(scope: !846, file: !4, line: 1175, column: 9)
!4730 = !DILocation(line: 1175, column: 11, scope: !4729)
!4731 = !DILocation(line: 1175, column: 9, scope: !846)
!4732 = !DILocation(line: 1176, column: 14, scope: !4729)
!4733 = !DILocation(line: 1176, column: 13, scope: !4729)
!4734 = !DILocation(line: 1176, column: 11, scope: !4729)
!4735 = !DILocation(line: 1176, column: 9, scope: !4729)
!4736 = !DILocation(line: 1178, column: 12, scope: !846)
!4737 = !DILocation(line: 1178, column: 14, scope: !846)
!4738 = !DILocation(line: 1179, column: 1, scope: !846)
!4739 = !DILocation(line: 1178, column: 5, scope: !846)
!4740 = !DILocation(line: 1236, column: 34, scope: !868)
!4741 = !DILocation(line: 1238, column: 5, scope: !868)
!4742 = !DILocation(line: 1238, column: 11, scope: !868)
!4743 = !DILocation(line: 1238, column: 17, scope: !868)
!4744 = !DILocation(line: 1238, column: 21, scope: !868)
!4745 = !DILocation(line: 1239, column: 5, scope: !868)
!4746 = !DILocation(line: 1239, column: 15, scope: !868)
!4747 = !DILocation(line: 1240, column: 5, scope: !868)
!4748 = !DILocation(line: 1240, column: 9, scope: !868)
!4749 = !DILocation(line: 1242, column: 26, scope: !868)
!4750 = !DILocation(line: 1242, column: 9, scope: !868)
!4751 = !DILocation(line: 1242, column: 7, scope: !868)
!4752 = !DILocation(line: 1243, column: 9, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !868, file: !4, line: 1243, column: 9)
!4754 = !DILocation(line: 1243, column: 11, scope: !4753)
!4755 = !DILocation(line: 1243, column: 9, scope: !868)
!4756 = !DILocation(line: 1244, column: 16, scope: !4757)
!4757 = distinct !DILexicalBlock(scope: !4753, file: !4, line: 1243, column: 26)
!4758 = !DILocation(line: 1244, column: 9, scope: !4757)
!4759 = !DILocation(line: 1248, column: 45, scope: !868)
!4760 = !DILocation(line: 1248, column: 32, scope: !868)
!4761 = !DILocation(line: 1248, column: 53, scope: !868)
!4762 = !DILocation(line: 1248, column: 19, scope: !868)
!4763 = !DILocation(line: 1248, column: 9, scope: !868)
!4764 = !DILocation(line: 1249, column: 9, scope: !4765)
!4765 = distinct !DILexicalBlock(scope: !868, file: !4, line: 1249, column: 9)
!4766 = !DILocation(line: 1249, column: 13, scope: !4765)
!4767 = !DILocation(line: 1249, column: 9, scope: !868)
!4768 = !DILocation(line: 1250, column: 25, scope: !4769)
!4769 = distinct !DILexicalBlock(scope: !4765, file: !4, line: 1249, column: 28)
!4770 = !DILocation(line: 1250, column: 9, scope: !4769)
!4771 = !DILocation(line: 1253, column: 9, scope: !4769)
!4772 = !DILocation(line: 1256, column: 14, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !868, file: !4, line: 1256, column: 5)
!4774 = !DILocation(line: 1256, column: 12, scope: !4773)
!4775 = !DILocation(line: 1256, column: 10, scope: !4773)
!4776 = !DILocation(line: 1256, column: 20, scope: !4777)
!4777 = !DILexicalBlockFile(scope: !4778, file: !4, discriminator: 2)
!4778 = !DILexicalBlockFile(scope: !4779, file: !4, discriminator: 1)
!4779 = distinct !DILexicalBlock(scope: !4773, file: !4, line: 1256, column: 5)
!4780 = !DILocation(line: 1256, column: 19, scope: !4779)
!4781 = !DILocation(line: 1256, column: 22, scope: !4779)
!4782 = !DILocation(line: 1256, column: 5, scope: !4773)
!4783 = !DILocation(line: 1257, column: 14, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !4, line: 1257, column: 13)
!4785 = distinct !DILexicalBlock(scope: !4779, file: !4, line: 1256, column: 36)
!4786 = !DILocation(line: 1257, column: 13, scope: !4784)
!4787 = !DILocation(line: 1257, column: 16, scope: !4784)
!4788 = !DILocation(line: 1257, column: 13, scope: !4785)
!4789 = !DILocation(line: 1258, column: 15, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4784, file: !4, line: 1257, column: 25)
!4791 = !DILocation(line: 1258, column: 18, scope: !4790)
!4792 = !DILocation(line: 1259, column: 19, scope: !4793)
!4793 = distinct !DILexicalBlock(scope: !4790, file: !4, line: 1259, column: 17)
!4794 = !DILocation(line: 1259, column: 21, scope: !4793)
!4795 = !DILocation(line: 1259, column: 17, scope: !4793)
!4796 = !DILocation(line: 1259, column: 26, scope: !4793)
!4797 = !DILocation(line: 1259, column: 17, scope: !4790)
!4798 = !DILocation(line: 1260, column: 18, scope: !4793)
!4799 = !DILocation(line: 1260, column: 17, scope: !4793)
!4800 = !DILocation(line: 1261, column: 9, scope: !4790)
!4801 = !DILocation(line: 1263, column: 21, scope: !4784)
!4802 = !DILocation(line: 1263, column: 20, scope: !4784)
!4803 = !DILocation(line: 1263, column: 15, scope: !4784)
!4804 = !DILocation(line: 1263, column: 18, scope: !4784)
!4805 = !DILocation(line: 1264, column: 12, scope: !4785)
!4806 = !DILocation(line: 1265, column: 5, scope: !4785)
!4807 = !DILocation(line: 1256, column: 32, scope: !4779)
!4808 = !DILocation(line: 1256, column: 5, scope: !4779)
!4809 = !DILocation(line: 1266, column: 7, scope: !868)
!4810 = !DILocation(line: 1266, column: 10, scope: !868)
!4811 = !DILocation(line: 1267, column: 6, scope: !868)
!4812 = !DILocation(line: 1267, column: 8, scope: !868)
!4813 = !DILocation(line: 1268, column: 46, scope: !868)
!4814 = !DILocation(line: 1268, column: 51, scope: !868)
!4815 = !DILocation(line: 1268, column: 55, scope: !868)
!4816 = !DILocation(line: 1268, column: 20, scope: !868)
!4817 = !DILocation(line: 1268, column: 18, scope: !868)
!4818 = !DILocation(line: 1269, column: 16, scope: !868)
!4819 = !DILocation(line: 1269, column: 5, scope: !868)
!4820 = !DILocation(line: 1270, column: 12, scope: !868)
!4821 = !DILocation(line: 1270, column: 5, scope: !868)
!4822 = !DILocation(line: 1271, column: 1, scope: !868)
!4823 = !DILocation(line: 857, column: 26, scope: !1024)
!4824 = !DILocation(line: 859, column: 5, scope: !1024)
!4825 = !DILocation(line: 859, column: 15, scope: !1024)
!4826 = !DILocation(line: 860, column: 5, scope: !1024)
!4827 = !DILocation(line: 860, column: 11, scope: !1024)
!4828 = !DILocation(line: 861, column: 5, scope: !1024)
!4829 = !DILocation(line: 861, column: 20, scope: !1024)
!4830 = !DILocation(line: 862, column: 5, scope: !1024)
!4831 = !DILocation(line: 862, column: 11, scope: !1024)
!4832 = !DILocation(line: 862, column: 21, scope: !1024)
!4833 = !DILocation(line: 862, column: 27, scope: !1024)
!4834 = !DILocation(line: 862, column: 33, scope: !1024)
!4835 = !DILocation(line: 863, column: 5, scope: !1024)
!4836 = !DILocation(line: 863, column: 10, scope: !1024)
!4837 = !DILocation(line: 863, column: 15, scope: !1024)
!4838 = !DILocation(line: 863, column: 26, scope: !1024)
!4839 = !DILocation(line: 863, column: 37, scope: !1024)
!4840 = !DILocation(line: 864, column: 5, scope: !1024)
!4841 = !DILocation(line: 864, column: 16, scope: !1024)
!4842 = !DILocation(line: 864, column: 29, scope: !1024)
!4843 = !DILocation(line: 864, column: 46, scope: !1024)
!4844 = !DILocation(line: 865, column: 5, scope: !1024)
!4845 = !DILocation(line: 865, column: 10, scope: !1024)
!4846 = !DILocation(line: 865, column: 13, scope: !1024)
!4847 = !DILocation(line: 866, column: 5, scope: !1024)
!4848 = !DILocation(line: 866, column: 16, scope: !1024)
!4849 = !DILocation(line: 867, column: 5, scope: !1024)
!4850 = !DILocation(line: 867, column: 10, scope: !1024)
!4851 = !DILocation(line: 868, column: 5, scope: !1024)
!4852 = !DILocation(line: 868, column: 10, scope: !1024)
!4853 = !DILocation(line: 869, column: 5, scope: !1024)
!4854 = !DILocation(line: 869, column: 15, scope: !1024)
!4855 = !DILocation(line: 870, column: 5, scope: !1024)
!4856 = !DILocation(line: 870, column: 11, scope: !1024)
!4857 = !DILocation(line: 870, column: 14, scope: !1024)
!4858 = !DILocation(line: 871, column: 5, scope: !1024)
!4859 = !DILocation(line: 871, column: 16, scope: !1024)
!4860 = !DILocation(line: 872, column: 5, scope: !1024)
!4861 = !DILocation(line: 872, column: 15, scope: !1024)
!4862 = !DILocation(line: 873, column: 5, scope: !1024)
!4863 = !DILocation(line: 873, column: 17, scope: !1024)
!4864 = !DILocation(line: 874, column: 5, scope: !1024)
!4865 = !DILocation(line: 874, column: 9, scope: !1024)
!4866 = !DILocation(line: 876, column: 24, scope: !1024)
!4867 = !DILocation(line: 876, column: 10, scope: !1024)
!4868 = !DILocation(line: 876, column: 8, scope: !1024)
!4869 = !DILocation(line: 877, column: 9, scope: !4870)
!4870 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 877, column: 9)
!4871 = !DILocation(line: 877, column: 12, scope: !4870)
!4872 = !DILocation(line: 877, column: 9, scope: !1024)
!4873 = !DILocation(line: 878, column: 14, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4875, file: !4, line: 878, column: 13)
!4875 = distinct !DILexicalBlock(scope: !4870, file: !4, line: 877, column: 27)
!4876 = !DILocation(line: 878, column: 13, scope: !4875)
!4877 = !DILocation(line: 879, column: 26, scope: !4874)
!4878 = !DILocation(line: 879, column: 69, scope: !4874)
!4879 = !DILocation(line: 879, column: 13, scope: !4874)
!4880 = !DILocation(line: 880, column: 9, scope: !4875)
!4881 = !DILocation(line: 883, column: 15, scope: !4882)
!4882 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 883, column: 9)
!4883 = !DILocation(line: 883, column: 9, scope: !4882)
!4884 = !DILocation(line: 883, column: 27, scope: !4882)
!4885 = !DILocation(line: 883, column: 9, scope: !1024)
!4886 = !DILocation(line: 884, column: 16, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4882, file: !4, line: 883, column: 34)
!4888 = !DILocation(line: 884, column: 9, scope: !4887)
!4889 = !DILocation(line: 885, column: 22, scope: !4887)
!4890 = !DILocation(line: 885, column: 65, scope: !4887)
!4891 = !DILocation(line: 885, column: 9, scope: !4887)
!4892 = !DILocation(line: 886, column: 9, scope: !4887)
!4893 = !DILocation(line: 888, column: 29, scope: !1024)
!4894 = !DILocation(line: 888, column: 23, scope: !1024)
!4895 = !DILocation(line: 888, column: 21, scope: !1024)
!4896 = !DILocation(line: 889, column: 15, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 889, column: 9)
!4898 = !DILocation(line: 889, column: 41, scope: !4897)
!4899 = !DILocation(line: 889, column: 9, scope: !4897)
!4900 = !DILocation(line: 889, column: 45, scope: !4897)
!4901 = !DILocation(line: 889, column: 9, scope: !1024)
!4902 = !DILocation(line: 890, column: 16, scope: !4903)
!4903 = distinct !DILexicalBlock(scope: !4897, file: !4, line: 889, column: 52)
!4904 = !DILocation(line: 890, column: 9, scope: !4903)
!4905 = !DILocation(line: 891, column: 22, scope: !4903)
!4906 = !DILocation(line: 891, column: 65, scope: !4903)
!4907 = !DILocation(line: 891, column: 9, scope: !4903)
!4908 = !DILocation(line: 892, column: 9, scope: !4903)
!4909 = !DILocation(line: 894, column: 35, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 894, column: 9)
!4911 = !DILocation(line: 894, column: 9, scope: !4910)
!4912 = !DILocation(line: 894, column: 54, scope: !4910)
!4913 = !DILocation(line: 894, column: 9, scope: !1024)
!4914 = !DILocation(line: 896, column: 16, scope: !4915)
!4915 = distinct !DILexicalBlock(scope: !4910, file: !4, line: 894, column: 69)
!4916 = !DILocation(line: 896, column: 9, scope: !4915)
!4917 = !DILocation(line: 897, column: 22, scope: !4915)
!4918 = !DILocation(line: 897, column: 60, scope: !4915)
!4919 = !DILocation(line: 897, column: 9, scope: !4915)
!4920 = !DILocation(line: 898, column: 9, scope: !4915)
!4921 = !DILocation(line: 901, column: 45, scope: !1024)
!4922 = !DILocation(line: 901, column: 63, scope: !1024)
!4923 = !DILocation(line: 901, column: 19, scope: !1024)
!4924 = !DILocation(line: 901, column: 17, scope: !1024)
!4925 = !DILocation(line: 902, column: 47, scope: !1024)
!4926 = !DILocation(line: 902, column: 65, scope: !1024)
!4927 = !DILocation(line: 902, column: 21, scope: !1024)
!4928 = !DILocation(line: 902, column: 19, scope: !1024)
!4929 = !DILocation(line: 903, column: 18, scope: !1024)
!4930 = !DILocation(line: 903, column: 36, scope: !1024)
!4931 = !DILocation(line: 903, column: 34, scope: !1024)
!4932 = !DILocation(line: 903, column: 52, scope: !1024)
!4933 = !DILocation(line: 903, column: 50, scope: !1024)
!4934 = !DILocation(line: 903, column: 16, scope: !1024)
!4935 = !DILocation(line: 904, column: 22, scope: !1024)
!4936 = !DILocation(line: 904, column: 19, scope: !1024)
!4937 = !DILocation(line: 906, column: 13, scope: !1024)
!4938 = !DILocation(line: 906, column: 11, scope: !1024)
!4939 = !DILocation(line: 907, column: 9, scope: !4940)
!4940 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 907, column: 9)
!4941 = !DILocation(line: 907, column: 15, scope: !4940)
!4942 = !DILocation(line: 907, column: 9, scope: !1024)
!4943 = !DILocation(line: 908, column: 9, scope: !4940)
!4944 = !DILocation(line: 911, column: 11, scope: !1024)
!4945 = !DILocation(line: 912, column: 15, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 912, column: 9)
!4947 = !DILocation(line: 912, column: 19, scope: !4946)
!4948 = !DILocation(line: 912, column: 9, scope: !4946)
!4949 = !DILocation(line: 912, column: 37, scope: !4946)
!4950 = !DILocation(line: 912, column: 9, scope: !1024)
!4951 = !DILocation(line: 913, column: 9, scope: !4946)
!4952 = !DILocation(line: 914, column: 5, scope: !1024)
!4953 = !DILocation(line: 915, column: 9, scope: !1064)
!4954 = !DILocation(line: 915, column: 19, scope: !1064)
!4955 = !DILocation(line: 916, column: 9, scope: !1064)
!4956 = !DILocation(line: 916, column: 13, scope: !1064)
!4957 = !DILocation(line: 919, column: 40, scope: !1064)
!4958 = !DILocation(line: 919, column: 13, scope: !1064)
!4959 = !DILocation(line: 919, column: 11, scope: !1064)
!4960 = !DILocation(line: 920, column: 13, scope: !4961)
!4961 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 920, column: 13)
!4962 = !DILocation(line: 920, column: 15, scope: !4961)
!4963 = !DILocation(line: 920, column: 21, scope: !4961)
!4964 = !DILocation(line: 920, column: 24, scope: !4965)
!4965 = !DILexicalBlockFile(scope: !4961, file: !4, discriminator: 1)
!4966 = !DILocation(line: 920, column: 13, scope: !1064)
!4967 = !DILocation(line: 921, column: 13, scope: !4961)
!4968 = !DILocation(line: 922, column: 13, scope: !4969)
!4969 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 922, column: 13)
!4970 = !DILocation(line: 922, column: 15, scope: !4969)
!4971 = !DILocation(line: 922, column: 13, scope: !1064)
!4972 = !DILocation(line: 923, column: 13, scope: !4969)
!4973 = !DILocation(line: 928, column: 19, scope: !4974)
!4974 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 928, column: 13)
!4975 = !DILocation(line: 928, column: 32, scope: !4974)
!4976 = !DILocation(line: 928, column: 13, scope: !4974)
!4977 = !DILocation(line: 928, column: 36, scope: !4974)
!4978 = !DILocation(line: 928, column: 13, scope: !1064)
!4979 = !DILocation(line: 929, column: 13, scope: !4974)
!4980 = !DILocation(line: 931, column: 61, scope: !1064)
!4981 = !DILocation(line: 931, column: 33, scope: !1064)
!4982 = !DILocation(line: 931, column: 17, scope: !1064)
!4983 = !DILocation(line: 931, column: 15, scope: !1064)
!4984 = !DILocation(line: 932, column: 48, scope: !1064)
!4985 = !DILocation(line: 932, column: 20, scope: !1064)
!4986 = !DILocation(line: 932, column: 18, scope: !1064)
!4987 = !DILocation(line: 933, column: 44, scope: !1064)
!4988 = !DILocation(line: 933, column: 16, scope: !1064)
!4989 = !DILocation(line: 933, column: 14, scope: !1064)
!4990 = !DILocation(line: 934, column: 44, scope: !1064)
!4991 = !DILocation(line: 934, column: 16, scope: !1064)
!4992 = !DILocation(line: 934, column: 14, scope: !1064)
!4993 = !DILocation(line: 935, column: 42, scope: !1064)
!4994 = !DILocation(line: 935, column: 15, scope: !1064)
!4995 = !DILocation(line: 935, column: 13, scope: !1064)
!4996 = !DILocation(line: 936, column: 48, scope: !1064)
!4997 = !DILocation(line: 936, column: 21, scope: !1064)
!4998 = !DILocation(line: 936, column: 19, scope: !1064)
!4999 = !DILocation(line: 937, column: 48, scope: !1064)
!5000 = !DILocation(line: 937, column: 21, scope: !1064)
!5001 = !DILocation(line: 937, column: 19, scope: !1064)
!5002 = !DILocation(line: 938, column: 49, scope: !1064)
!5003 = !DILocation(line: 938, column: 21, scope: !1064)
!5004 = !DILocation(line: 938, column: 19, scope: !1064)
!5005 = !DILocation(line: 939, column: 23, scope: !1064)
!5006 = !DILocation(line: 940, column: 40, scope: !1064)
!5007 = !DILocation(line: 940, column: 12, scope: !1064)
!5008 = !DILocation(line: 939, column: 33, scope: !1064)
!5009 = !DILocation(line: 941, column: 40, scope: !1064)
!5010 = !DILocation(line: 941, column: 12, scope: !1064)
!5011 = !DILocation(line: 940, column: 44, scope: !1064)
!5012 = !DILocation(line: 939, column: 21, scope: !1064)
!5013 = !DILocation(line: 942, column: 19, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 942, column: 13)
!5015 = !DILocation(line: 942, column: 32, scope: !5014)
!5016 = !DILocation(line: 942, column: 13, scope: !5014)
!5017 = !DILocation(line: 942, column: 36, scope: !5014)
!5018 = !DILocation(line: 942, column: 13, scope: !1064)
!5019 = !DILocation(line: 943, column: 13, scope: !5014)
!5020 = !DILocation(line: 944, column: 50, scope: !1064)
!5021 = !DILocation(line: 944, column: 23, scope: !1064)
!5022 = !DILocation(line: 944, column: 56, scope: !1064)
!5023 = !DILocation(line: 944, column: 54, scope: !1064)
!5024 = !DILocation(line: 944, column: 21, scope: !1064)
!5025 = !DILocation(line: 945, column: 13, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 945, column: 13)
!5027 = !DILocation(line: 945, column: 13, scope: !1064)
!5028 = !DILocation(line: 946, column: 13, scope: !5026)
!5029 = !DILocation(line: 948, column: 13, scope: !5030)
!5030 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 948, column: 13)
!5031 = !DILocation(line: 948, column: 23, scope: !5030)
!5032 = !DILocation(line: 948, column: 13, scope: !1064)
!5033 = !DILocation(line: 949, column: 23, scope: !5030)
!5034 = !DILocation(line: 949, column: 13, scope: !5030)
!5035 = !DILocation(line: 951, column: 13, scope: !1064)
!5036 = !DILocation(line: 951, column: 11, scope: !1064)
!5037 = !DILocation(line: 952, column: 16, scope: !5038)
!5038 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 952, column: 9)
!5039 = !DILocation(line: 952, column: 14, scope: !5038)
!5040 = !DILocation(line: 952, column: 21, scope: !5041)
!5041 = !DILexicalBlockFile(scope: !5042, file: !4, discriminator: 2)
!5042 = !DILexicalBlockFile(scope: !5043, file: !4, discriminator: 1)
!5043 = distinct !DILexicalBlock(scope: !5038, file: !4, line: 952, column: 9)
!5044 = !DILocation(line: 952, column: 37, scope: !5043)
!5045 = !DILocation(line: 952, column: 25, scope: !5043)
!5046 = !DILocation(line: 952, column: 23, scope: !5043)
!5047 = !DILocation(line: 952, column: 9, scope: !5038)
!5048 = !DILocation(line: 953, column: 34, scope: !5049)
!5049 = distinct !DILexicalBlock(scope: !5043, file: !4, line: 952, column: 53)
!5050 = !DILocation(line: 953, column: 24, scope: !5049)
!5051 = !DILocation(line: 953, column: 18, scope: !5049)
!5052 = !DILocation(line: 953, column: 14, scope: !5049)
!5053 = !DILocation(line: 953, column: 16, scope: !5049)
!5054 = !DILocation(line: 954, column: 18, scope: !5055)
!5055 = distinct !DILexicalBlock(scope: !5049, file: !4, line: 954, column: 17)
!5056 = !DILocation(line: 954, column: 17, scope: !5055)
!5057 = !DILocation(line: 954, column: 20, scope: !5055)
!5058 = !DILocation(line: 954, column: 17, scope: !5049)
!5059 = !DILocation(line: 955, column: 18, scope: !5055)
!5060 = !DILocation(line: 955, column: 20, scope: !5055)
!5061 = !DILocation(line: 955, column: 17, scope: !5055)
!5062 = !DILocation(line: 956, column: 14, scope: !5049)
!5063 = !DILocation(line: 957, column: 9, scope: !5049)
!5064 = !DILocation(line: 952, column: 49, scope: !5043)
!5065 = !DILocation(line: 952, column: 9, scope: !5043)
!5066 = !DILocation(line: 958, column: 10, scope: !1064)
!5067 = !DILocation(line: 958, column: 12, scope: !1064)
!5068 = !DILocation(line: 959, column: 9, scope: !1064)
!5069 = !DILocation(line: 959, column: 16, scope: !5070)
!5070 = !DILexicalBlockFile(scope: !5071, file: !4, discriminator: 2)
!5071 = !DILexicalBlockFile(scope: !5072, file: !4, discriminator: 1)
!5072 = distinct !DILexicalBlock(scope: !5073, file: !4, line: 959, column: 9)
!5073 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 959, column: 9)
!5074 = !DILocation(line: 959, column: 20, scope: !5072)
!5075 = !DILocation(line: 959, column: 18, scope: !5072)
!5076 = !DILocation(line: 959, column: 9, scope: !5073)
!5077 = !DILocation(line: 960, column: 26, scope: !5078)
!5078 = distinct !DILexicalBlock(scope: !5072, file: !4, line: 960, column: 16)
!5079 = !DILocation(line: 960, column: 16, scope: !5078)
!5080 = !DILocation(line: 960, column: 30, scope: !5078)
!5081 = !DILocation(line: 960, column: 16, scope: !5072)
!5082 = !DILocation(line: 961, column: 17, scope: !5078)
!5083 = !DILocation(line: 960, column: 36, scope: !5084)
!5084 = !DILexicalBlockFile(scope: !5078, file: !4, discriminator: 1)
!5085 = !DILocation(line: 959, column: 34, scope: !5072)
!5086 = !DILocation(line: 959, column: 9, scope: !5072)
!5087 = !DILocation(line: 963, column: 19, scope: !1064)
!5088 = !DILocation(line: 964, column: 13, scope: !1071)
!5089 = !DILocation(line: 964, column: 19, scope: !1071)
!5090 = !DILocation(line: 964, column: 13, scope: !1064)
!5091 = !DILocation(line: 965, column: 21, scope: !1071)
!5092 = !DILocation(line: 965, column: 13, scope: !1071)
!5093 = !DILocation(line: 966, column: 53, scope: !1069)
!5094 = !DILocation(line: 966, column: 89, scope: !1069)
!5095 = !DILocation(line: 966, column: 127, scope: !1069)
!5096 = !DILocation(line: 966, column: 158, scope: !1069)
!5097 = !DILocation(line: 966, column: 166, scope: !1069)
!5098 = !DILocation(line: 966, column: 195, scope: !1069)
!5099 = !DILocation(line: 966, column: 212, scope: !1069)
!5100 = !DILocation(line: 966, column: 224, scope: !1069)
!5101 = !DILocation(line: 966, column: 232, scope: !1069)
!5102 = !DILocation(line: 966, column: 249, scope: !1069)
!5103 = !DILocation(line: 966, column: 309, scope: !1069)
!5104 = !DILocation(line: 966, column: 321, scope: !1069)
!5105 = !DILocation(line: 966, column: 283, scope: !1069)
!5106 = !DILocation(line: 966, column: 338, scope: !1069)
!5107 = !DILocation(line: 966, column: 331, scope: !1069)
!5108 = !DILocation(line: 966, column: 440, scope: !5109)
!5109 = !DILexicalBlockFile(scope: !5110, file: !4, discriminator: 4)
!5110 = !DILexicalBlockFile(scope: !5111, file: !4, discriminator: 3)
!5111 = !DILexicalBlockFile(scope: !5112, file: !4, discriminator: 2)
!5112 = distinct !DILexicalBlock(scope: !1069, file: !4, line: 966, column: 345)
!5113 = !DILocation(line: 966, column: 491, scope: !5112)
!5114 = !DILocation(line: 966, column: 507, scope: !5115)
!5115 = !DILexicalBlockFile(scope: !5112, file: !4, discriminator: 1)
!5116 = !DILocation(line: 966, column: 526, scope: !5117)
!5117 = !DILexicalBlockFile(scope: !5118, file: !4, discriminator: 6)
!5118 = !DILexicalBlockFile(scope: !1069, file: !4, discriminator: 5)
!5119 = !DILocation(line: 966, column: 525, scope: !1069)
!5120 = !DILocation(line: 966, column: 523, scope: !1069)
!5121 = !DILocation(line: 966, column: 548, scope: !1069)
!5122 = !DILocation(line: 966, column: 541, scope: !1069)
!5123 = !DILocation(line: 966, column: 650, scope: !5124)
!5124 = !DILexicalBlockFile(scope: !5125, file: !4, discriminator: 10)
!5125 = !DILexicalBlockFile(scope: !5126, file: !4, discriminator: 9)
!5126 = !DILexicalBlockFile(scope: !5127, file: !4, discriminator: 8)
!5127 = distinct !DILexicalBlock(scope: !1069, file: !4, line: 966, column: 555)
!5128 = !DILocation(line: 966, column: 701, scope: !5127)
!5129 = !DILocation(line: 966, column: 717, scope: !5130)
!5130 = !DILexicalBlockFile(scope: !5127, file: !4, discriminator: 7)
!5131 = !DILocation(line: 966, column: 728, scope: !5132)
!5132 = !DILexicalBlockFile(scope: !5133, file: !4, discriminator: 12)
!5133 = !DILexicalBlockFile(scope: !1069, file: !4, discriminator: 11)
!5134 = !DILocation(line: 966, column: 724, scope: !5127)
!5135 = !DILocation(line: 966, column: 736, scope: !1070)
!5136 = !DILocation(line: 966, column: 736, scope: !1069)
!5137 = !DILocation(line: 966, column: 20, scope: !1070)
!5138 = !DILocation(line: 966, column: 741, scope: !1070)
!5139 = !{!5140, !1253, i64 16}
!5140 = !{!"_ts", !1253, i64 0, !1253, i64 8, !1253, i64 16, !1253, i64 24, !1237, i64 32, !1231, i64 36, !1231, i64 37, !1237, i64 40, !1237, i64 44, !1253, i64 48, !1253, i64 56, !1253, i64 64, !1253, i64 72, !1253, i64 80, !1253, i64 88, !1253, i64 96, !1253, i64 104, !1253, i64 112, !1253, i64 120, !1253, i64 128, !1237, i64 136, !1253, i64 144, !1272, i64 152, !1237, i64 160, !1253, i64 168, !1253, i64 176, !1253, i64 184}
!5141 = !DILocation(line: 966, column: 749, scope: !1070)
!5142 = !{!5143, !1237, i64 80}
!5143 = !{!"_is", !1253, i64 0, !1253, i64 8, !1253, i64 16, !1253, i64 24, !1253, i64 32, !1253, i64 40, !1253, i64 48, !1253, i64 56, !1253, i64 64, !1253, i64 72, !1237, i64 80, !1237, i64 84, !1237, i64 88, !1253, i64 96}
!5144 = !DILocation(line: 966, column: 19, scope: !1070)
!5145 = !DILocation(line: 966, column: 18, scope: !1071)
!5146 = !DILocation(line: 973, column: 21, scope: !5147)
!5147 = distinct !DILexicalBlock(scope: !1070, file: !4, line: 966, column: 769)
!5148 = !DILocation(line: 974, column: 23, scope: !5147)
!5149 = !DILocation(line: 975, column: 9, scope: !5147)
!5150 = !DILocation(line: 977, column: 21, scope: !1070)
!5151 = !DILocation(line: 978, column: 36, scope: !1064)
!5152 = !DILocation(line: 978, column: 42, scope: !1064)
!5153 = !DILocation(line: 978, column: 53, scope: !1064)
!5154 = !DILocation(line: 978, column: 19, scope: !1064)
!5155 = !DILocation(line: 978, column: 17, scope: !1064)
!5156 = !DILocation(line: 979, column: 13, scope: !5157)
!5157 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 979, column: 13)
!5158 = !DILocation(line: 979, column: 21, scope: !5157)
!5159 = !DILocation(line: 979, column: 13, scope: !1064)
!5160 = !DILocation(line: 980, column: 17, scope: !5161)
!5161 = distinct !DILexicalBlock(scope: !5162, file: !4, line: 980, column: 17)
!5162 = distinct !DILexicalBlock(scope: !5157, file: !4, line: 979, column: 36)
!5163 = !DILocation(line: 980, column: 17, scope: !5162)
!5164 = !DILocation(line: 981, column: 30, scope: !5161)
!5165 = !DILocation(line: 981, column: 17, scope: !5161)
!5166 = !DILocation(line: 985, column: 13, scope: !5162)
!5167 = !DILocation(line: 987, column: 47, scope: !5168)
!5168 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 987, column: 13)
!5169 = !DILocation(line: 987, column: 31, scope: !5168)
!5170 = !DILocation(line: 987, column: 57, scope: !5168)
!5171 = !DILocation(line: 987, column: 63, scope: !5168)
!5172 = !DILocation(line: 987, column: 29, scope: !5168)
!5173 = !DILocation(line: 987, column: 29, scope: !5174)
!5174 = !DILexicalBlockFile(scope: !5168, file: !4, discriminator: 1)
!5175 = !DILocation(line: 987, column: 106, scope: !5176)
!5176 = !DILexicalBlockFile(scope: !5168, file: !4, discriminator: 2)
!5177 = !DILocation(line: 987, column: 76, scope: !5168)
!5178 = !DILocation(line: 987, column: 118, scope: !5179)
!5179 = !DILexicalBlockFile(scope: !5180, file: !4, discriminator: 4)
!5180 = !DILexicalBlockFile(scope: !5168, file: !4, discriminator: 3)
!5181 = !DILocation(line: 987, column: 13, scope: !1064)
!5182 = !DILocation(line: 988, column: 13, scope: !5168)
!5183 = !DILocation(line: 989, column: 47, scope: !1064)
!5184 = !DILocation(line: 989, column: 62, scope: !1064)
!5185 = !DILocation(line: 989, column: 16, scope: !1064)
!5186 = !DILocation(line: 989, column: 14, scope: !1064)
!5187 = !DILocation(line: 990, column: 13, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 990, column: 13)
!5189 = !DILocation(line: 990, column: 18, scope: !5188)
!5190 = !DILocation(line: 990, column: 13, scope: !1064)
!5191 = !DILocation(line: 991, column: 13, scope: !5188)
!5192 = !DILocation(line: 992, column: 39, scope: !1064)
!5193 = !DILocation(line: 992, column: 45, scope: !1064)
!5194 = !DILocation(line: 992, column: 55, scope: !1064)
!5195 = !DILocation(line: 993, column: 27, scope: !1064)
!5196 = !DILocation(line: 993, column: 38, scope: !1064)
!5197 = !DILocation(line: 993, column: 51, scope: !1064)
!5198 = !DILocation(line: 993, column: 57, scope: !1064)
!5199 = !DILocation(line: 993, column: 63, scope: !1064)
!5200 = !DILocation(line: 992, column: 13, scope: !1064)
!5201 = !DILocation(line: 992, column: 11, scope: !1064)
!5202 = !DILocation(line: 994, column: 13, scope: !5203)
!5203 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 994, column: 13)
!5204 = !DILocation(line: 994, column: 15, scope: !5203)
!5205 = !DILocation(line: 994, column: 13, scope: !1064)
!5206 = !DILocation(line: 995, column: 13, scope: !5203)
!5207 = !DILocation(line: 996, column: 30, scope: !1064)
!5208 = !DILocation(line: 996, column: 37, scope: !1064)
!5209 = !DILocation(line: 996, column: 46, scope: !1064)
!5210 = !DILocation(line: 996, column: 15, scope: !1064)
!5211 = !DILocation(line: 996, column: 13, scope: !1064)
!5212 = !DILocation(line: 997, column: 9, scope: !1064)
!5213 = !DILocation(line: 997, column: 14, scope: !5214)
!5214 = !DILexicalBlockFile(scope: !1084, file: !4, discriminator: 1)
!5215 = !DILocation(line: 997, column: 24, scope: !1084)
!5216 = !DILocation(line: 997, column: 47, scope: !1084)
!5217 = !DILocation(line: 997, column: 61, scope: !1088)
!5218 = !DILocation(line: 997, column: 69, scope: !1088)
!5219 = !DILocation(line: 997, column: 61, scope: !1084)
!5220 = !DILocation(line: 997, column: 96, scope: !5221)
!5221 = !DILexicalBlockFile(scope: !1087, file: !4, discriminator: 2)
!5222 = !DILocation(line: 997, column: 110, scope: !1087)
!5223 = !DILocation(line: 997, column: 115, scope: !5224)
!5224 = !DILexicalBlockFile(scope: !1086, file: !4, discriminator: 4)
!5225 = !DILocation(line: 997, column: 125, scope: !1086)
!5226 = !DILocation(line: 997, column: 155, scope: !1086)
!5227 = !DILocation(line: 997, column: 173, scope: !5228)
!5228 = distinct !DILexicalBlock(scope: !1086, file: !4, line: 997, column: 170)
!5229 = !DILocation(line: 997, column: 190, scope: !5228)
!5230 = !DILocation(line: 997, column: 170, scope: !5228)
!5231 = !DILocation(line: 997, column: 200, scope: !5228)
!5232 = !DILocation(line: 997, column: 170, scope: !1086)
!5233 = !DILocation(line: 997, column: 170, scope: !5234)
!5234 = !DILexicalBlockFile(scope: !1086, file: !4, discriminator: 5)
!5235 = !DILocation(line: 997, column: 231, scope: !5236)
!5236 = !DILexicalBlockFile(scope: !5228, file: !4, discriminator: 6)
!5237 = !DILocation(line: 997, column: 249, scope: !5228)
!5238 = !DILocation(line: 997, column: 259, scope: !5228)
!5239 = !DILocation(line: 997, column: 284, scope: !5228)
!5240 = !DILocation(line: 997, column: 215, scope: !5228)
!5241 = !DILocation(line: 997, column: 303, scope: !5242)
!5242 = !DILexicalBlockFile(scope: !1087, file: !4, discriminator: 7)
!5243 = !DILocation(line: 997, column: 303, scope: !1086)
!5244 = !DILocation(line: 997, column: 303, scope: !5245)
!5245 = !DILexicalBlockFile(scope: !1086, file: !4, discriminator: 8)
!5246 = !DILocation(line: 997, column: 316, scope: !5247)
!5247 = !DILexicalBlockFile(scope: !1087, file: !4, discriminator: 9)
!5248 = !DILocation(line: 997, column: 318, scope: !5249)
!5249 = !DILexicalBlockFile(scope: !5250, file: !4, discriminator: 10)
!5250 = !DILexicalBlockFile(scope: !1064, file: !4, discriminator: 3)
!5251 = !DILocation(line: 997, column: 318, scope: !1084)
!5252 = !DILocation(line: 997, column: 318, scope: !5253)
!5253 = !DILexicalBlockFile(scope: !1084, file: !4, discriminator: 11)
!5254 = !DILocation(line: 998, column: 9, scope: !1064)
!5255 = !DILocation(line: 998, column: 14, scope: !5256)
!5256 = !DILexicalBlockFile(scope: !1090, file: !4, discriminator: 1)
!5257 = !DILocation(line: 998, column: 24, scope: !1090)
!5258 = !DILocation(line: 998, column: 54, scope: !1090)
!5259 = !DILocation(line: 998, column: 66, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !1090, file: !4, line: 998, column: 63)
!5261 = !DILocation(line: 998, column: 83, scope: !5260)
!5262 = !DILocation(line: 998, column: 63, scope: !5260)
!5263 = !DILocation(line: 998, column: 93, scope: !5260)
!5264 = !DILocation(line: 998, column: 63, scope: !1090)
!5265 = !DILocation(line: 998, column: 63, scope: !5266)
!5266 = !DILexicalBlockFile(scope: !1090, file: !4, discriminator: 2)
!5267 = !DILocation(line: 998, column: 124, scope: !5268)
!5268 = !DILexicalBlockFile(scope: !5260, file: !4, discriminator: 3)
!5269 = !DILocation(line: 998, column: 142, scope: !5260)
!5270 = !DILocation(line: 998, column: 152, scope: !5260)
!5271 = !DILocation(line: 998, column: 177, scope: !5260)
!5272 = !DILocation(line: 998, column: 108, scope: !5260)
!5273 = !DILocation(line: 998, column: 196, scope: !5274)
!5274 = !DILexicalBlockFile(scope: !1064, file: !4, discriminator: 4)
!5275 = !DILocation(line: 998, column: 196, scope: !1090)
!5276 = !DILocation(line: 998, column: 196, scope: !5277)
!5277 = !DILexicalBlockFile(scope: !1090, file: !4, discriminator: 5)
!5278 = !DILocation(line: 999, column: 13, scope: !5279)
!5279 = distinct !DILexicalBlock(scope: !1064, file: !4, line: 999, column: 13)
!5280 = !DILocation(line: 999, column: 17, scope: !5279)
!5281 = !DILocation(line: 999, column: 13, scope: !1064)
!5282 = !DILocation(line: 1000, column: 13, scope: !5279)
!5283 = !DILocation(line: 1001, column: 14, scope: !1064)
!5284 = !DILocation(line: 1002, column: 5, scope: !1065)
!5285 = !DILocation(line: 1002, column: 5, scope: !5286)
!5286 = !DILexicalBlockFile(scope: !1065, file: !4, discriminator: 1)
!5287 = !DILocation(line: 914, column: 5, scope: !1065)
!5288 = !DILocation(line: 1003, column: 12, scope: !1024)
!5289 = !DILocation(line: 1003, column: 5, scope: !1024)
!5290 = !DILocation(line: 1004, column: 9, scope: !5291)
!5291 = distinct !DILexicalBlock(scope: !1024, file: !4, line: 1004, column: 9)
!5292 = !DILocation(line: 1004, column: 9, scope: !1024)
!5293 = !DILocation(line: 1006, column: 28, scope: !5291)
!5294 = !DILocation(line: 1006, column: 35, scope: !5291)
!5295 = !DILocation(line: 1005, column: 9, scope: !5291)
!5296 = !DILocation(line: 1007, column: 12, scope: !1024)
!5297 = !DILocation(line: 1007, column: 5, scope: !1024)
!5298 = !DILocation(line: 1009, column: 12, scope: !1024)
!5299 = !DILocation(line: 1009, column: 5, scope: !1024)
!5300 = !DILocation(line: 1010, column: 5, scope: !1024)
!5301 = !DILocation(line: 1010, column: 10, scope: !5302)
!5302 = !DILexicalBlockFile(scope: !1092, file: !4, discriminator: 1)
!5303 = !DILocation(line: 1010, column: 20, scope: !1092)
!5304 = !DILocation(line: 1010, column: 51, scope: !1092)
!5305 = !DILocation(line: 1010, column: 63, scope: !1095)
!5306 = !DILocation(line: 1010, column: 79, scope: !1095)
!5307 = !DILocation(line: 1010, column: 63, scope: !1092)
!5308 = !DILocation(line: 1010, column: 94, scope: !5309)
!5309 = !DILexicalBlockFile(scope: !1095, file: !4, discriminator: 2)
!5310 = !DILocation(line: 1010, column: 99, scope: !5311)
!5311 = !DILexicalBlockFile(scope: !1094, file: !4, discriminator: 4)
!5312 = !DILocation(line: 1010, column: 109, scope: !1094)
!5313 = !DILocation(line: 1010, column: 139, scope: !1094)
!5314 = !DILocation(line: 1010, column: 165, scope: !5315)
!5315 = distinct !DILexicalBlock(scope: !1094, file: !4, line: 1010, column: 162)
!5316 = !DILocation(line: 1010, column: 182, scope: !5315)
!5317 = !DILocation(line: 1010, column: 162, scope: !5315)
!5318 = !DILocation(line: 1010, column: 192, scope: !5315)
!5319 = !DILocation(line: 1010, column: 162, scope: !1094)
!5320 = !DILocation(line: 1010, column: 162, scope: !5321)
!5321 = !DILexicalBlockFile(scope: !1094, file: !4, discriminator: 5)
!5322 = !DILocation(line: 1010, column: 223, scope: !5323)
!5323 = !DILexicalBlockFile(scope: !5315, file: !4, discriminator: 6)
!5324 = !DILocation(line: 1010, column: 241, scope: !5315)
!5325 = !DILocation(line: 1010, column: 251, scope: !5315)
!5326 = !DILocation(line: 1010, column: 276, scope: !5315)
!5327 = !DILocation(line: 1010, column: 207, scope: !5315)
!5328 = !DILocation(line: 1010, column: 295, scope: !5329)
!5329 = !DILexicalBlockFile(scope: !1095, file: !4, discriminator: 7)
!5330 = !DILocation(line: 1010, column: 295, scope: !1094)
!5331 = !DILocation(line: 1010, column: 295, scope: !5332)
!5332 = !DILexicalBlockFile(scope: !1094, file: !4, discriminator: 8)
!5333 = !DILocation(line: 1010, column: 295, scope: !5334)
!5334 = !DILexicalBlockFile(scope: !1094, file: !4, discriminator: 9)
!5335 = !DILocation(line: 1010, column: 308, scope: !5336)
!5336 = !DILexicalBlockFile(scope: !5337, file: !4, discriminator: 10)
!5337 = !DILexicalBlockFile(scope: !1024, file: !4, discriminator: 3)
!5338 = !DILocation(line: 1010, column: 308, scope: !1092)
!5339 = !DILocation(line: 1010, column: 308, scope: !5340)
!5340 = !DILexicalBlockFile(scope: !1092, file: !4, discriminator: 11)
!5341 = !DILocation(line: 1011, column: 5, scope: !1024)
!5342 = !DILocation(line: 1011, column: 10, scope: !5343)
!5343 = !DILexicalBlockFile(scope: !1097, file: !4, discriminator: 1)
!5344 = !DILocation(line: 1011, column: 20, scope: !1097)
!5345 = !DILocation(line: 1011, column: 51, scope: !1097)
!5346 = !DILocation(line: 1011, column: 65, scope: !1100)
!5347 = !DILocation(line: 1011, column: 81, scope: !1100)
!5348 = !DILocation(line: 1011, column: 65, scope: !1097)
!5349 = !DILocation(line: 1011, column: 96, scope: !5350)
!5350 = !DILexicalBlockFile(scope: !1100, file: !4, discriminator: 2)
!5351 = !DILocation(line: 1011, column: 101, scope: !5352)
!5352 = !DILexicalBlockFile(scope: !1099, file: !4, discriminator: 4)
!5353 = !DILocation(line: 1011, column: 111, scope: !1099)
!5354 = !DILocation(line: 1011, column: 141, scope: !1099)
!5355 = !DILocation(line: 1011, column: 167, scope: !5356)
!5356 = distinct !DILexicalBlock(scope: !1099, file: !4, line: 1011, column: 164)
!5357 = !DILocation(line: 1011, column: 184, scope: !5356)
!5358 = !DILocation(line: 1011, column: 164, scope: !5356)
!5359 = !DILocation(line: 1011, column: 194, scope: !5356)
!5360 = !DILocation(line: 1011, column: 164, scope: !1099)
!5361 = !DILocation(line: 1011, column: 164, scope: !5362)
!5362 = !DILexicalBlockFile(scope: !1099, file: !4, discriminator: 5)
!5363 = !DILocation(line: 1011, column: 225, scope: !5364)
!5364 = !DILexicalBlockFile(scope: !5356, file: !4, discriminator: 6)
!5365 = !DILocation(line: 1011, column: 243, scope: !5356)
!5366 = !DILocation(line: 1011, column: 253, scope: !5356)
!5367 = !DILocation(line: 1011, column: 278, scope: !5356)
!5368 = !DILocation(line: 1011, column: 209, scope: !5356)
!5369 = !DILocation(line: 1011, column: 297, scope: !5370)
!5370 = !DILexicalBlockFile(scope: !1100, file: !4, discriminator: 7)
!5371 = !DILocation(line: 1011, column: 297, scope: !1099)
!5372 = !DILocation(line: 1011, column: 297, scope: !5373)
!5373 = !DILexicalBlockFile(scope: !1099, file: !4, discriminator: 8)
!5374 = !DILocation(line: 1011, column: 297, scope: !5375)
!5375 = !DILexicalBlockFile(scope: !1099, file: !4, discriminator: 9)
!5376 = !DILocation(line: 1011, column: 310, scope: !5336)
!5377 = !DILocation(line: 1011, column: 310, scope: !1097)
!5378 = !DILocation(line: 1011, column: 310, scope: !5379)
!5379 = !DILexicalBlockFile(scope: !1097, file: !4, discriminator: 11)
!5380 = !DILocation(line: 1012, column: 18, scope: !1024)
!5381 = !DILocation(line: 1012, column: 61, scope: !1024)
!5382 = !DILocation(line: 1012, column: 5, scope: !1024)
!5383 = !DILocation(line: 1013, column: 5, scope: !1024)
!5384 = !DILocation(line: 1015, column: 12, scope: !1024)
!5385 = !DILocation(line: 1015, column: 5, scope: !1024)
!5386 = !DILocation(line: 1016, column: 5, scope: !1024)
!5387 = !DILocation(line: 1016, column: 10, scope: !5388)
!5388 = !DILexicalBlockFile(scope: !1102, file: !4, discriminator: 1)
!5389 = !DILocation(line: 1016, column: 20, scope: !1102)
!5390 = !DILocation(line: 1016, column: 51, scope: !1102)
!5391 = !DILocation(line: 1016, column: 63, scope: !1105)
!5392 = !DILocation(line: 1016, column: 79, scope: !1105)
!5393 = !DILocation(line: 1016, column: 63, scope: !1102)
!5394 = !DILocation(line: 1016, column: 94, scope: !5395)
!5395 = !DILexicalBlockFile(scope: !1105, file: !4, discriminator: 2)
!5396 = !DILocation(line: 1016, column: 99, scope: !5397)
!5397 = !DILexicalBlockFile(scope: !1104, file: !4, discriminator: 4)
!5398 = !DILocation(line: 1016, column: 109, scope: !1104)
!5399 = !DILocation(line: 1016, column: 139, scope: !1104)
!5400 = !DILocation(line: 1016, column: 165, scope: !5401)
!5401 = distinct !DILexicalBlock(scope: !1104, file: !4, line: 1016, column: 162)
!5402 = !DILocation(line: 1016, column: 182, scope: !5401)
!5403 = !DILocation(line: 1016, column: 162, scope: !5401)
!5404 = !DILocation(line: 1016, column: 192, scope: !5401)
!5405 = !DILocation(line: 1016, column: 162, scope: !1104)
!5406 = !DILocation(line: 1016, column: 162, scope: !5407)
!5407 = !DILexicalBlockFile(scope: !1104, file: !4, discriminator: 5)
!5408 = !DILocation(line: 1016, column: 223, scope: !5409)
!5409 = !DILexicalBlockFile(scope: !5401, file: !4, discriminator: 6)
!5410 = !DILocation(line: 1016, column: 241, scope: !5401)
!5411 = !DILocation(line: 1016, column: 251, scope: !5401)
!5412 = !DILocation(line: 1016, column: 276, scope: !5401)
!5413 = !DILocation(line: 1016, column: 207, scope: !5401)
!5414 = !DILocation(line: 1016, column: 295, scope: !5415)
!5415 = !DILexicalBlockFile(scope: !1105, file: !4, discriminator: 7)
!5416 = !DILocation(line: 1016, column: 295, scope: !1104)
!5417 = !DILocation(line: 1016, column: 295, scope: !5418)
!5418 = !DILexicalBlockFile(scope: !1104, file: !4, discriminator: 8)
!5419 = !DILocation(line: 1016, column: 295, scope: !5420)
!5420 = !DILexicalBlockFile(scope: !1104, file: !4, discriminator: 9)
!5421 = !DILocation(line: 1016, column: 308, scope: !5336)
!5422 = !DILocation(line: 1016, column: 308, scope: !1102)
!5423 = !DILocation(line: 1016, column: 308, scope: !5424)
!5424 = !DILexicalBlockFile(scope: !1102, file: !4, discriminator: 11)
!5425 = !DILocation(line: 1017, column: 5, scope: !1024)
!5426 = !DILocation(line: 1017, column: 10, scope: !5427)
!5427 = !DILexicalBlockFile(scope: !1107, file: !4, discriminator: 1)
!5428 = !DILocation(line: 1017, column: 20, scope: !1107)
!5429 = !DILocation(line: 1017, column: 51, scope: !1107)
!5430 = !DILocation(line: 1017, column: 65, scope: !1110)
!5431 = !DILocation(line: 1017, column: 81, scope: !1110)
!5432 = !DILocation(line: 1017, column: 65, scope: !1107)
!5433 = !DILocation(line: 1017, column: 96, scope: !5434)
!5434 = !DILexicalBlockFile(scope: !1110, file: !4, discriminator: 2)
!5435 = !DILocation(line: 1017, column: 101, scope: !5436)
!5436 = !DILexicalBlockFile(scope: !1109, file: !4, discriminator: 4)
!5437 = !DILocation(line: 1017, column: 111, scope: !1109)
!5438 = !DILocation(line: 1017, column: 141, scope: !1109)
!5439 = !DILocation(line: 1017, column: 167, scope: !5440)
!5440 = distinct !DILexicalBlock(scope: !1109, file: !4, line: 1017, column: 164)
!5441 = !DILocation(line: 1017, column: 184, scope: !5440)
!5442 = !DILocation(line: 1017, column: 164, scope: !5440)
!5443 = !DILocation(line: 1017, column: 194, scope: !5440)
!5444 = !DILocation(line: 1017, column: 164, scope: !1109)
!5445 = !DILocation(line: 1017, column: 164, scope: !5446)
!5446 = !DILexicalBlockFile(scope: !1109, file: !4, discriminator: 5)
!5447 = !DILocation(line: 1017, column: 225, scope: !5448)
!5448 = !DILexicalBlockFile(scope: !5440, file: !4, discriminator: 6)
!5449 = !DILocation(line: 1017, column: 243, scope: !5440)
!5450 = !DILocation(line: 1017, column: 253, scope: !5440)
!5451 = !DILocation(line: 1017, column: 278, scope: !5440)
!5452 = !DILocation(line: 1017, column: 209, scope: !5440)
!5453 = !DILocation(line: 1017, column: 297, scope: !5454)
!5454 = !DILexicalBlockFile(scope: !1110, file: !4, discriminator: 7)
!5455 = !DILocation(line: 1017, column: 297, scope: !1109)
!5456 = !DILocation(line: 1017, column: 297, scope: !5457)
!5457 = !DILexicalBlockFile(scope: !1109, file: !4, discriminator: 8)
!5458 = !DILocation(line: 1017, column: 297, scope: !5459)
!5459 = !DILexicalBlockFile(scope: !1109, file: !4, discriminator: 9)
!5460 = !DILocation(line: 1017, column: 310, scope: !5336)
!5461 = !DILocation(line: 1017, column: 310, scope: !1107)
!5462 = !DILocation(line: 1017, column: 310, scope: !5463)
!5463 = !DILexicalBlockFile(scope: !1107, file: !4, discriminator: 11)
!5464 = !DILocation(line: 1018, column: 5, scope: !1024)
!5465 = !DILocation(line: 1019, column: 1, scope: !1024)
!5466 = !DILocation(line: 59, column: 48, scope: !1111)
!5467 = !DILocation(line: 59, column: 74, scope: !1111)
!5468 = !DILocation(line: 61, column: 11, scope: !1111)
!5469 = !DILocation(line: 62, column: 12, scope: !1111)
!5470 = !DILocation(line: 62, column: 5, scope: !1111)
!5471 = !DILocation(line: 67, column: 9, scope: !5472)
!5472 = distinct !DILexicalBlock(scope: !1111, file: !24, line: 62, column: 19)
!5473 = !DILocation(line: 70, column: 9, scope: !5472)
!5474 = !DILocation(line: 72, column: 12, scope: !1111)
!5475 = !DILocation(line: 72, column: 5, scope: !1111)
!5476 = !DILocation(line: 77, column: 9, scope: !5477)
!5477 = distinct !DILexicalBlock(scope: !1111, file: !24, line: 72, column: 19)
!5478 = !DILocation(line: 80, column: 9, scope: !5477)
!5479 = !DILocation(line: 82, column: 1, scope: !1111)
!5480 = !DILocation(line: 51, column: 42, scope: !1120)
!5481 = !DILocation(line: 53, column: 9, scope: !5482)
!5482 = distinct !DILexicalBlock(scope: !1120, file: !24, line: 53, column: 9)
!5483 = !DILocation(line: 53, column: 15, scope: !5482)
!5484 = !DILocation(line: 53, column: 9, scope: !1120)
!5485 = !DILocation(line: 54, column: 9, scope: !5482)
!5486 = !{i32 154973}
!5487 = !DILocation(line: 55, column: 1, scope: !1120)
!5488 = !DILocation(line: 44, column: 42, scope: !1125)
!5489 = !DILocation(line: 46, column: 9, scope: !5490)
!5490 = distinct !DILexicalBlock(scope: !1125, file: !24, line: 46, column: 9)
!5491 = !DILocation(line: 46, column: 15, scope: !5490)
!5492 = !DILocation(line: 46, column: 9, scope: !1125)
!5493 = !DILocation(line: 47, column: 9, scope: !5490)
!5494 = !{i32 154813}
!5495 = !DILocation(line: 48, column: 1, scope: !1125)
