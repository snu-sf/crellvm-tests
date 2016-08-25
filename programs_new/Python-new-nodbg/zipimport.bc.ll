; ModuleID = './zipimport.bc'
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
  %tmp = alloca %struct.st_zip_searchorder, align 4
  %call = call i32 @PyType_Ready(%struct._typeobject* @ZipImporter_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 0, i32 0, i64 0), align 1
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 1, i32 0, i64 0), align 1
  store i8 47, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 2, i32 0, i64 0), align 1
  %0 = load i32, i32* @Py_OptimizeFlag, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %1 = bitcast %struct.st_zip_searchorder* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0, i32 0, i32 0), i64 20, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0, i32 0, i32 0), i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 1, i32 0, i32 0), i64 20, i32 4, i1 false)
  %2 = bitcast %struct.st_zip_searchorder* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 1, i32 0, i32 0), i8* %2, i64 20, i32 4, i1 false)
  %3 = bitcast %struct.st_zip_searchorder* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 3, i32 0, i32 0), i64 20, i32 4, i1 false)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 3, i32 0, i32 0), i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 4, i32 0, i32 0), i64 20, i32 4, i1 false)
  %4 = bitcast %struct.st_zip_searchorder* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i64 4, i32 0, i32 0), i8* %4, i64 20, i32 4, i1 false)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.1, %if.end
  %call3 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @zipimportmodule, i32 1013)
  store %struct._object* %call3, %struct._object** %mod, align 8
  %5 = load %struct._object*, %struct._object** %mod, align 8
  %cmp4 = icmp eq %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.2
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @PyExc_ImportError, align 8
  %call7 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), %struct._object* %6, %struct._object* null)
  store %struct._object* %call7, %struct._object** @ZipImportError, align 8
  %7 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %cmp8 = icmp eq %struct._object* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %10 = load %struct._object*, %struct._object** %mod, align 8
  %11 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %call11 = call i32 @PyModule_AddObject(%struct._object* %10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), %struct._object* %11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %12 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %inc15 = add i64 %12, 1
  store i64 %inc15, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i32 0, i32 0, i32 0, i32 0), align 8
  %13 = load %struct._object*, %struct._object** %mod, align 8
  %call16 = call i32 @PyModule_AddObject(%struct._object* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @ZipImporter_Type, i32 0, i32 0, i32 0))
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.14
  %call20 = call %struct._object* @PyDict_New()
  store %struct._object* %call20, %struct._object** @zip_directory_cache, align 8
  %14 = load %struct._object*, %struct._object** @zip_directory_cache, align 8
  %cmp21 = icmp eq %struct._object* %14, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %15 = load %struct._object*, %struct._object** @zip_directory_cache, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt24, align 8
  %inc25 = add i64 %16, 1
  store i64 %inc25, i64* %ob_refcnt24, align 8
  %17 = load %struct._object*, %struct._object** %mod, align 8
  %18 = load %struct._object*, %struct._object** @zip_directory_cache, align 8
  %call26 = call i32 @PyModule_AddObject(%struct._object* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i32 0, i32 0), %struct._object* %18)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.23
  %19 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.28, %if.then.22, %if.then.18, %if.then.13, %if.then.9, %if.then.5, %if.then
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind uwtable
define internal void @zipimporter_dealloc(%struct._zipimporter* %self) #0 {
entry:
  %self.addr = alloca %struct._zipimporter*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  %0 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %1 = bitcast %struct._zipimporter* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %archive, align 8
  store %struct._object* %3, %struct._object** %_py_xdecref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.4

if.end.4:                                         ; preds = %do.end, %do.body
  br label %do.end.5

do.end.5:                                         ; preds = %if.end.4
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %12 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %12, i32 0, i32 2
  %13 = load %struct._object*, %struct._object** %prefix, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp7, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %14, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp11, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %17, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %20(%struct._object* %21)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.16, %if.then.15
  br label %do.end.20

do.end.20:                                        ; preds = %if.end.19
  br label %if.end.21

if.end.21:                                        ; preds = %do.end.20, %do.body.6
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %do.body.23

do.body.23:                                       ; preds = %do.end.22
  %22 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %files, align 8
  store %struct._object* %23, %struct._object** %_py_xdecref_tmp24, align 8
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %24, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %27, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %30(%struct._object* %31)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %32 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %33 = bitcast %struct._zipimporter* %32 to %struct._object*
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 38
  %35 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %36 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %37 = bitcast %struct._zipimporter* %36 to %struct._object*
  %38 = bitcast %struct._object* %37 to i8*
  call void %35(i8* %38)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_repr(%struct._zipimporter* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._zipimporter*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  %0 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %archive, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %prefix, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %land.lhs.true, label %if.else.8

land.lhs.true:                                    ; preds = %if.else
  %4 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix2 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %4, i32 0, i32 2
  %5 = load %struct._object*, %struct._object** %prefix2, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 1
  %7 = load i64, i64* %length, align 8
  %cmp3 = icmp ne i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.else.8

if.then.4:                                        ; preds = %land.lhs.true
  %8 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive5 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %archive5, align 8
  %10 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix6 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %prefix6, align 8
  %call7 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i32 0, i32 0), %struct._object* %9, i32 47, %struct._object* %11)
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.else.8:                                        ; preds = %land.lhs.true, %if.else
  %12 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive9 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %archive9, align 8
  %call10 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0), %struct._object* %13)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.4, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @zipimporter_traverse(%struct._object* %obj, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %obj.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %vret = alloca i32, align 4
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %files, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %4 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %5 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %files1 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %5, i32 0, i32 3
  %6 = load %struct._object*, %struct._object** %files1, align 8
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %4(%struct._object* %6, i8* %7)
  store i32 %call, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.3
  %10 = load i32, i32* %retval
  ret i32 %10
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
  %statbuf = alloca %struct.stat, align 8
  %rv = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp202 = alloca %struct._object*, align 8
  %_py_decref_tmp222 = alloca %struct._object*, align 8
  %_py_decref_tmp235 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp253 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %struct._object* null, %struct._object** %filename, align 8
  %0 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 @_PyArg_NoKeywords(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.58, i32 0, i32 0), %struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call4 = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i32 0, i32 0), i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %path)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %path, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %3, i32 0, i32 3
  %4 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %4, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool8 = icmp ne i32 %bf.clear, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.7
  br label %cond.end

cond.false:                                       ; preds = %if.end.7
  %5 = load %struct._object*, %struct._object** %path, align 8
  %call9 = call i32 @_PyUnicode_Ready(%struct._object* %5)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call9, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %cond.end
  store i32 -1, i32* %retval
  br label %return

if.end.11:                                        ; preds = %cond.end
  %6 = load %struct._object*, %struct._object** %path, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %7, i32 0, i32 1
  %8 = load i64, i64* %length, align 8
  store i64 %8, i64* %len, align 8
  %9 = load i64, i64* %len, align 8
  %cmp12 = icmp eq i64 %9, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.11
  %10 = load %struct._object*, %struct._object** @ZipImportError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i32 0, i32 0))
  br label %error

if.end.14:                                        ; preds = %if.end.11
  %11 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %11, %struct._object** %filename, align 8
  %12 = load %struct._object*, %struct._object** %filename, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %13, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %14 = load i64, i64* %len, align 8
  store i64 %14, i64* %flen, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.64, %if.end.14
  %15 = load %struct._object*, %struct._object** %filename, align 8
  %call17 = call i32 @_Py_stat(%struct._object* %15, %struct.stat* %statbuf)
  store i32 %call17, i32* %rv, align 4
  %16 = load i32, i32* %rv, align 4
  %cmp18 = icmp eq i32 %16, -2
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %for.cond
  br label %error

if.end.20:                                        ; preds = %for.cond
  %17 = load i32, i32* %rv, align 4
  %cmp21 = icmp eq i32 %17, 0
  br i1 %cmp21, label %if.then.22, label %if.end.37

if.then.22:                                       ; preds = %if.end.20
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %statbuf, i32 0, i32 3
  %18 = load i32, i32* %st_mode, align 4
  %and = and i32 %18, 61440
  %cmp23 = icmp eq i32 %and, 32768
  br i1 %cmp23, label %if.end.36, label %if.then.24

if.then.24:                                       ; preds = %if.then.22
  br label %do.body

do.body:                                          ; preds = %if.then.24
  %19 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %19, %struct._object** %_py_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp26 = icmp ne %struct._object* %20, null
  br i1 %cmp26, label %if.then.27, label %if.end.34

if.then.27:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %filename, align 8
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %21 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt30, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt30, align 8
  %cmp31 = icmp ne i64 %dec, 0
  br i1 %cmp31, label %if.then.32, label %if.else

if.then.32:                                       ; preds = %do.body.28
  br label %if.end.33

if.else:                                          ; preds = %do.body.28
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.33
  br label %if.end.34

if.end.34:                                        ; preds = %do.end, %do.body
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %if.then.22
  br label %for.end

if.end.37:                                        ; preds = %if.end.20
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %28 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %28, %struct._object** %_py_tmp40, align 8
  %29 = load %struct._object*, %struct._object** %_py_tmp40, align 8
  %cmp41 = icmp ne %struct._object* %29, null
  br i1 %cmp41, label %if.then.42, label %if.end.55

if.then.42:                                       ; preds = %do.body.38
  store %struct._object* null, %struct._object** %filename, align 8
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %30 = load %struct._object*, %struct._object** %_py_tmp40, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp45, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %32, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.43
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.43
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %35(%struct._object* %36)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.38
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %37 = load %struct._object*, %struct._object** %path, align 8
  %38 = load i64, i64* %flen, align 8
  %call57 = call i64 @PyUnicode_FindChar(%struct._object* %37, i32 47, i64 0, i64 %38, i32 -1)
  store i64 %call57, i64* %flen, align 8
  %39 = load i64, i64* %flen, align 8
  %cmp58 = icmp eq i64 %39, -1
  br i1 %cmp58, label %if.then.59, label %if.end.60

if.then.59:                                       ; preds = %do.end.56
  br label %for.end

if.end.60:                                        ; preds = %do.end.56
  %40 = load %struct._object*, %struct._object** %path, align 8
  %41 = load i64, i64* %flen, align 8
  %call61 = call %struct._object* @PyUnicode_Substring(%struct._object* %40, i64 0, i64 %41)
  store %struct._object* %call61, %struct._object** %filename, align 8
  %42 = load %struct._object*, %struct._object** %filename, align 8
  %cmp62 = icmp eq %struct._object* %42, null
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %if.end.60
  br label %error

if.end.64:                                        ; preds = %if.end.60
  br label %for.cond

for.end:                                          ; preds = %if.then.59, %if.end.36
  %43 = load %struct._object*, %struct._object** %filename, align 8
  %cmp65 = icmp eq %struct._object* %43, null
  br i1 %cmp65, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %for.end
  %44 = load %struct._object*, %struct._object** @ZipImportError, align 8
  call void @PyErr_SetString(%struct._object* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.61, i32 0, i32 0))
  br label %error

if.end.67:                                        ; preds = %for.end
  %45 = load %struct._object*, %struct._object** %filename, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyASCIIObject*
  %state68 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %46, i32 0, i32 3
  %47 = bitcast %struct.anon* %state68 to i32*
  %bf.load69 = load i32, i32* %47, align 4
  %bf.lshr70 = lshr i32 %bf.load69, 7
  %bf.clear71 = and i32 %bf.lshr70, 1
  %tobool72 = icmp ne i32 %bf.clear71, 0
  br i1 %tobool72, label %cond.true.73, label %cond.false.74

cond.true.73:                                     ; preds = %if.end.67
  br label %cond.end.76

cond.false.74:                                    ; preds = %if.end.67
  %48 = load %struct._object*, %struct._object** %filename, align 8
  %call75 = call i32 @_PyUnicode_Ready(%struct._object* %48)
  br label %cond.end.76

cond.end.76:                                      ; preds = %cond.false.74, %cond.true.73
  %cond77 = phi i32 [ 0, %cond.true.73 ], [ %call75, %cond.false.74 ]
  %cmp78 = icmp slt i32 %cond77, 0
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %cond.end.76
  br label %error

if.end.80:                                        ; preds = %cond.end.76
  %49 = load %struct._object*, %struct._object** @zip_directory_cache, align 8
  %50 = load %struct._object*, %struct._object** %filename, align 8
  %call81 = call %struct._object* @PyDict_GetItem(%struct._object* %49, %struct._object* %50)
  store %struct._object* %call81, %struct._object** %files, align 8
  %51 = load %struct._object*, %struct._object** %files, align 8
  %cmp82 = icmp eq %struct._object* %51, null
  br i1 %cmp82, label %if.then.83, label %if.else.92

if.then.83:                                       ; preds = %if.end.80
  %52 = load %struct._object*, %struct._object** %filename, align 8
  %call84 = call %struct._object* @read_directory(%struct._object* %52)
  store %struct._object* %call84, %struct._object** %files, align 8
  %53 = load %struct._object*, %struct._object** %files, align 8
  %cmp85 = icmp eq %struct._object* %53, null
  br i1 %cmp85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.then.83
  br label %error

if.end.87:                                        ; preds = %if.then.83
  %54 = load %struct._object*, %struct._object** @zip_directory_cache, align 8
  %55 = load %struct._object*, %struct._object** %filename, align 8
  %56 = load %struct._object*, %struct._object** %files, align 8
  %call88 = call i32 @PyDict_SetItem(%struct._object* %54, %struct._object* %55, %struct._object* %56)
  %cmp89 = icmp ne i32 %call88, 0
  br i1 %cmp89, label %if.then.90, label %if.end.91

if.then.90:                                       ; preds = %if.end.87
  br label %error

if.end.91:                                        ; preds = %if.end.87
  br label %if.end.95

if.else.92:                                       ; preds = %if.end.80
  %57 = load %struct._object*, %struct._object** %files, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt93, align 8
  %inc94 = add i64 %58, 1
  store i64 %inc94, i64* %ob_refcnt93, align 8
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.92, %if.end.91
  %59 = load %struct._object*, %struct._object** %files, align 8
  %60 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %files96 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %60, i32 0, i32 3
  store %struct._object* %59, %struct._object** %files96, align 8
  %61 = load %struct._object*, %struct._object** %filename, align 8
  %62 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %62, i32 0, i32 1
  store %struct._object* %61, %struct._object** %archive, align 8
  store %struct._object* null, %struct._object** %filename, align 8
  %63 = load i64, i64* %flen, align 8
  %64 = load i64, i64* %len, align 8
  %cmp97 = icmp ne i64 %63, %64
  br i1 %cmp97, label %if.then.98, label %if.else.216

if.then.98:                                       ; preds = %if.end.95
  %65 = load %struct._object*, %struct._object** %path, align 8
  %66 = load i64, i64* %flen, align 8
  %add = add i64 %66, 1
  %67 = load %struct._object*, %struct._object** %path, align 8
  %68 = bitcast %struct._object* %67 to %struct.PyASCIIObject*
  %length99 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %68, i32 0, i32 1
  %69 = load i64, i64* %length99, align 8
  %call100 = call %struct._object* @PyUnicode_Substring(%struct._object* %65, i64 %add, i64 %69)
  store %struct._object* %call100, %struct._object** %tmp, align 8
  %70 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp101 = icmp eq %struct._object* %70, null
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.98
  br label %error

if.end.103:                                       ; preds = %if.then.98
  %71 = load %struct._object*, %struct._object** %tmp, align 8
  %72 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %72, i32 0, i32 2
  store %struct._object* %71, %struct._object** %prefix, align 8
  %73 = load %struct._object*, %struct._object** %path, align 8
  %74 = bitcast %struct._object* %73 to %struct.PyASCIIObject*
  %state104 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %74, i32 0, i32 3
  %75 = bitcast %struct.anon* %state104 to i32*
  %bf.load105 = load i32, i32* %75, align 4
  %bf.lshr106 = lshr i32 %bf.load105, 2
  %bf.clear107 = and i32 %bf.lshr106, 7
  %cmp108 = icmp eq i32 %bf.clear107, 1
  br i1 %cmp108, label %cond.true.109, label %cond.false.129

cond.true.109:                                    ; preds = %if.end.103
  %76 = load i64, i64* %len, align 8
  %sub = sub i64 %76, 1
  %77 = load %struct._object*, %struct._object** %path, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyASCIIObject*
  %state110 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %78, i32 0, i32 3
  %79 = bitcast %struct.anon* %state110 to i32*
  %bf.load111 = load i32, i32* %79, align 4
  %bf.lshr112 = lshr i32 %bf.load111, 5
  %bf.clear113 = and i32 %bf.lshr112, 1
  %tobool114 = icmp ne i32 %bf.clear113, 0
  br i1 %tobool114, label %cond.true.115, label %cond.false.126

cond.true.115:                                    ; preds = %cond.true.109
  %80 = load %struct._object*, %struct._object** %path, align 8
  %81 = bitcast %struct._object* %80 to %struct.PyASCIIObject*
  %state116 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %81, i32 0, i32 3
  %82 = bitcast %struct.anon* %state116 to i32*
  %bf.load117 = load i32, i32* %82, align 4
  %bf.lshr118 = lshr i32 %bf.load117, 6
  %bf.clear119 = and i32 %bf.lshr118, 1
  %tobool120 = icmp ne i32 %bf.clear119, 0
  br i1 %tobool120, label %cond.true.121, label %cond.false.122

cond.true.121:                                    ; preds = %cond.true.115
  %83 = load %struct._object*, %struct._object** %path, align 8
  %84 = bitcast %struct._object* %83 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %84, i64 1
  %85 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.124

cond.false.122:                                   ; preds = %cond.true.115
  %86 = load %struct._object*, %struct._object** %path, align 8
  %87 = bitcast %struct._object* %86 to %struct.PyCompactUnicodeObject*
  %add.ptr123 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %87, i64 1
  %88 = bitcast %struct.PyCompactUnicodeObject* %add.ptr123 to i8*
  br label %cond.end.124

cond.end.124:                                     ; preds = %cond.false.122, %cond.true.121
  %cond125 = phi i8* [ %85, %cond.true.121 ], [ %88, %cond.false.122 ]
  br label %cond.end.127

cond.false.126:                                   ; preds = %cond.true.109
  %89 = load %struct._object*, %struct._object** %path, align 8
  %90 = bitcast %struct._object* %89 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %90, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %91 = load i8*, i8** %any, align 8
  br label %cond.end.127

cond.end.127:                                     ; preds = %cond.false.126, %cond.end.124
  %cond128 = phi i8* [ %cond125, %cond.end.124 ], [ %91, %cond.false.126 ]
  %arrayidx = getelementptr i8, i8* %cond128, i64 %sub
  %92 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %92 to i32
  br label %cond.end.189

cond.false.129:                                   ; preds = %if.end.103
  %93 = load %struct._object*, %struct._object** %path, align 8
  %94 = bitcast %struct._object* %93 to %struct.PyASCIIObject*
  %state130 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %94, i32 0, i32 3
  %95 = bitcast %struct.anon* %state130 to i32*
  %bf.load131 = load i32, i32* %95, align 4
  %bf.lshr132 = lshr i32 %bf.load131, 2
  %bf.clear133 = and i32 %bf.lshr132, 7
  %cmp134 = icmp eq i32 %bf.clear133, 2
  br i1 %cmp134, label %cond.true.136, label %cond.false.162

cond.true.136:                                    ; preds = %cond.false.129
  %96 = load i64, i64* %len, align 8
  %sub137 = sub i64 %96, 1
  %97 = load %struct._object*, %struct._object** %path, align 8
  %98 = bitcast %struct._object* %97 to %struct.PyASCIIObject*
  %state138 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %98, i32 0, i32 3
  %99 = bitcast %struct.anon* %state138 to i32*
  %bf.load139 = load i32, i32* %99, align 4
  %bf.lshr140 = lshr i32 %bf.load139, 5
  %bf.clear141 = and i32 %bf.lshr140, 1
  %tobool142 = icmp ne i32 %bf.clear141, 0
  br i1 %tobool142, label %cond.true.143, label %cond.false.155

cond.true.143:                                    ; preds = %cond.true.136
  %100 = load %struct._object*, %struct._object** %path, align 8
  %101 = bitcast %struct._object* %100 to %struct.PyASCIIObject*
  %state144 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %101, i32 0, i32 3
  %102 = bitcast %struct.anon* %state144 to i32*
  %bf.load145 = load i32, i32* %102, align 4
  %bf.lshr146 = lshr i32 %bf.load145, 6
  %bf.clear147 = and i32 %bf.lshr146, 1
  %tobool148 = icmp ne i32 %bf.clear147, 0
  br i1 %tobool148, label %cond.true.149, label %cond.false.151

cond.true.149:                                    ; preds = %cond.true.143
  %103 = load %struct._object*, %struct._object** %path, align 8
  %104 = bitcast %struct._object* %103 to %struct.PyASCIIObject*
  %add.ptr150 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %104, i64 1
  %105 = bitcast %struct.PyASCIIObject* %add.ptr150 to i8*
  br label %cond.end.153

cond.false.151:                                   ; preds = %cond.true.143
  %106 = load %struct._object*, %struct._object** %path, align 8
  %107 = bitcast %struct._object* %106 to %struct.PyCompactUnicodeObject*
  %add.ptr152 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %107, i64 1
  %108 = bitcast %struct.PyCompactUnicodeObject* %add.ptr152 to i8*
  br label %cond.end.153

cond.end.153:                                     ; preds = %cond.false.151, %cond.true.149
  %cond154 = phi i8* [ %105, %cond.true.149 ], [ %108, %cond.false.151 ]
  br label %cond.end.158

cond.false.155:                                   ; preds = %cond.true.136
  %109 = load %struct._object*, %struct._object** %path, align 8
  %110 = bitcast %struct._object* %109 to %struct.PyUnicodeObject*
  %data156 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %110, i32 0, i32 1
  %any157 = bitcast %union.anon* %data156 to i8**
  %111 = load i8*, i8** %any157, align 8
  br label %cond.end.158

cond.end.158:                                     ; preds = %cond.false.155, %cond.end.153
  %cond159 = phi i8* [ %cond154, %cond.end.153 ], [ %111, %cond.false.155 ]
  %112 = bitcast i8* %cond159 to i16*
  %arrayidx160 = getelementptr i16, i16* %112, i64 %sub137
  %113 = load i16, i16* %arrayidx160, align 2
  %conv161 = zext i16 %113 to i32
  br label %cond.end.187

cond.false.162:                                   ; preds = %cond.false.129
  %114 = load i64, i64* %len, align 8
  %sub163 = sub i64 %114, 1
  %115 = load %struct._object*, %struct._object** %path, align 8
  %116 = bitcast %struct._object* %115 to %struct.PyASCIIObject*
  %state164 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %116, i32 0, i32 3
  %117 = bitcast %struct.anon* %state164 to i32*
  %bf.load165 = load i32, i32* %117, align 4
  %bf.lshr166 = lshr i32 %bf.load165, 5
  %bf.clear167 = and i32 %bf.lshr166, 1
  %tobool168 = icmp ne i32 %bf.clear167, 0
  br i1 %tobool168, label %cond.true.169, label %cond.false.181

cond.true.169:                                    ; preds = %cond.false.162
  %118 = load %struct._object*, %struct._object** %path, align 8
  %119 = bitcast %struct._object* %118 to %struct.PyASCIIObject*
  %state170 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %119, i32 0, i32 3
  %120 = bitcast %struct.anon* %state170 to i32*
  %bf.load171 = load i32, i32* %120, align 4
  %bf.lshr172 = lshr i32 %bf.load171, 6
  %bf.clear173 = and i32 %bf.lshr172, 1
  %tobool174 = icmp ne i32 %bf.clear173, 0
  br i1 %tobool174, label %cond.true.175, label %cond.false.177

cond.true.175:                                    ; preds = %cond.true.169
  %121 = load %struct._object*, %struct._object** %path, align 8
  %122 = bitcast %struct._object* %121 to %struct.PyASCIIObject*
  %add.ptr176 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %122, i64 1
  %123 = bitcast %struct.PyASCIIObject* %add.ptr176 to i8*
  br label %cond.end.179

cond.false.177:                                   ; preds = %cond.true.169
  %124 = load %struct._object*, %struct._object** %path, align 8
  %125 = bitcast %struct._object* %124 to %struct.PyCompactUnicodeObject*
  %add.ptr178 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %125, i64 1
  %126 = bitcast %struct.PyCompactUnicodeObject* %add.ptr178 to i8*
  br label %cond.end.179

cond.end.179:                                     ; preds = %cond.false.177, %cond.true.175
  %cond180 = phi i8* [ %123, %cond.true.175 ], [ %126, %cond.false.177 ]
  br label %cond.end.184

cond.false.181:                                   ; preds = %cond.false.162
  %127 = load %struct._object*, %struct._object** %path, align 8
  %128 = bitcast %struct._object* %127 to %struct.PyUnicodeObject*
  %data182 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %128, i32 0, i32 1
  %any183 = bitcast %union.anon* %data182 to i8**
  %129 = load i8*, i8** %any183, align 8
  br label %cond.end.184

cond.end.184:                                     ; preds = %cond.false.181, %cond.end.179
  %cond185 = phi i8* [ %cond180, %cond.end.179 ], [ %129, %cond.false.181 ]
  %130 = bitcast i8* %cond185 to i32*
  %arrayidx186 = getelementptr i32, i32* %130, i64 %sub163
  %131 = load i32, i32* %arrayidx186, align 4
  br label %cond.end.187

cond.end.187:                                     ; preds = %cond.end.184, %cond.end.158
  %cond188 = phi i32 [ %conv161, %cond.end.158 ], [ %131, %cond.end.184 ]
  br label %cond.end.189

cond.end.189:                                     ; preds = %cond.end.187, %cond.end.127
  %cond190 = phi i32 [ %conv, %cond.end.127 ], [ %cond188, %cond.end.187 ]
  %cmp191 = icmp ne i32 %cond190, 47
  br i1 %cmp191, label %if.then.193, label %if.end.215

if.then.193:                                      ; preds = %cond.end.189
  %132 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix194 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %132, i32 0, i32 2
  %133 = load %struct._object*, %struct._object** %prefix194, align 8
  %call195 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), %struct._object* %133, i32 47)
  store %struct._object* %call195, %struct._object** %tmp, align 8
  %134 = load %struct._object*, %struct._object** %tmp, align 8
  %cmp196 = icmp eq %struct._object* %134, null
  br i1 %cmp196, label %if.then.198, label %if.end.199

if.then.198:                                      ; preds = %if.then.193
  br label %error

if.end.199:                                       ; preds = %if.then.193
  br label %do.body.200

do.body.200:                                      ; preds = %if.end.199
  %135 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix203 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %135, i32 0, i32 2
  %136 = load %struct._object*, %struct._object** %prefix203, align 8
  store %struct._object* %136, %struct._object** %_py_decref_tmp202, align 8
  %137 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_refcnt204 = getelementptr inbounds %struct._object, %struct._object* %137, i32 0, i32 0
  %138 = load i64, i64* %ob_refcnt204, align 8
  %dec205 = add i64 %138, -1
  store i64 %dec205, i64* %ob_refcnt204, align 8
  %cmp206 = icmp ne i64 %dec205, 0
  br i1 %cmp206, label %if.then.208, label %if.else.209

if.then.208:                                      ; preds = %do.body.200
  br label %if.end.212

if.else.209:                                      ; preds = %do.body.200
  %139 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  %ob_type210 = getelementptr inbounds %struct._object, %struct._object* %139, i32 0, i32 1
  %140 = load %struct._typeobject*, %struct._typeobject** %ob_type210, align 8
  %tp_dealloc211 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %140, i32 0, i32 4
  %141 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc211, align 8
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp202, align 8
  call void %141(%struct._object* %142)
  br label %if.end.212

if.end.212:                                       ; preds = %if.else.209, %if.then.208
  br label %do.end.213

do.end.213:                                       ; preds = %if.end.212
  %143 = load %struct._object*, %struct._object** %tmp, align 8
  %144 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix214 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %144, i32 0, i32 2
  store %struct._object* %143, %struct._object** %prefix214, align 8
  br label %if.end.215

if.end.215:                                       ; preds = %do.end.213, %cond.end.189
  br label %if.end.219

if.else.216:                                      ; preds = %if.end.95
  %call217 = call %struct._object* @PyUnicode_New(i64 0, i32 0)
  %145 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix218 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %145, i32 0, i32 2
  store %struct._object* %call217, %struct._object** %prefix218, align 8
  br label %if.end.219

if.end.219:                                       ; preds = %if.else.216, %if.end.215
  br label %do.body.220

do.body.220:                                      ; preds = %if.end.219
  %146 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp222, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp222, align 8
  %ob_refcnt223 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt223, align 8
  %dec224 = add i64 %148, -1
  store i64 %dec224, i64* %ob_refcnt223, align 8
  %cmp225 = icmp ne i64 %dec224, 0
  br i1 %cmp225, label %if.then.227, label %if.else.228

if.then.227:                                      ; preds = %do.body.220
  br label %if.end.231

if.else.228:                                      ; preds = %do.body.220
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp222, align 8
  %ob_type229 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type229, align 8
  %tp_dealloc230 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc230, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp222, align 8
  call void %151(%struct._object* %152)
  br label %if.end.231

if.end.231:                                       ; preds = %if.else.228, %if.then.227
  br label %do.end.232

do.end.232:                                       ; preds = %if.end.231
  store i32 0, i32* %retval
  br label %return

error:                                            ; preds = %if.then.198, %if.then.102, %if.then.90, %if.then.86, %if.then.79, %if.then.66, %if.then.63, %if.then.19, %if.then.13
  br label %do.body.233

do.body.233:                                      ; preds = %error
  %153 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp235, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  %ob_refcnt236 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt236, align 8
  %dec237 = add i64 %155, -1
  store i64 %dec237, i64* %ob_refcnt236, align 8
  %cmp238 = icmp ne i64 %dec237, 0
  br i1 %cmp238, label %if.then.240, label %if.else.241

if.then.240:                                      ; preds = %do.body.233
  br label %if.end.244

if.else.241:                                      ; preds = %do.body.233
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  %ob_type242 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type242, align 8
  %tp_dealloc243 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc243, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp235, align 8
  call void %158(%struct._object* %159)
  br label %if.end.244

if.end.244:                                       ; preds = %if.else.241, %if.then.240
  br label %do.end.245

do.end.245:                                       ; preds = %if.end.244
  br label %do.body.246

do.body.246:                                      ; preds = %do.end.245
  %160 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %160, %struct._object** %_py_xdecref_tmp, align 8
  %161 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp248 = icmp ne %struct._object* %161, null
  br i1 %cmp248, label %if.then.250, label %if.end.264

if.then.250:                                      ; preds = %do.body.246
  br label %do.body.251

do.body.251:                                      ; preds = %if.then.250
  %162 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %162, %struct._object** %_py_decref_tmp253, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_refcnt254 = getelementptr inbounds %struct._object, %struct._object* %163, i32 0, i32 0
  %164 = load i64, i64* %ob_refcnt254, align 8
  %dec255 = add i64 %164, -1
  store i64 %dec255, i64* %ob_refcnt254, align 8
  %cmp256 = icmp ne i64 %dec255, 0
  br i1 %cmp256, label %if.then.258, label %if.else.259

if.then.258:                                      ; preds = %do.body.251
  br label %if.end.262

if.else.259:                                      ; preds = %do.body.251
  %165 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_type260 = getelementptr inbounds %struct._object, %struct._object* %165, i32 0, i32 1
  %166 = load %struct._typeobject*, %struct._typeobject** %ob_type260, align 8
  %tp_dealloc261 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %166, i32 0, i32 4
  %167 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc261, align 8
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  call void %167(%struct._object* %168)
  br label %if.end.262

if.end.262:                                       ; preds = %if.else.259, %if.then.258
  br label %do.end.263

do.end.263:                                       ; preds = %if.end.262
  br label %if.end.264

if.end.264:                                       ; preds = %do.end.263, %do.body.246
  br label %do.end.265

do.end.265:                                       ; preds = %if.end.264
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.265, %do.end.232, %if.then.10, %if.then.6, %if.then
  %169 = load i32, i32* %retval
  ret i32 %169
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare void @PyObject_GC_Del(i8*) #1

declare void @PyObject_GC_UnTrack(i8*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  store %struct._object* null, %struct._object** %path, align 8
  store %struct._object* null, %struct._object** %namespace_portion, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), %struct._object** %fullname, %struct._object** %path)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %4 = load %struct._object*, %struct._object** %fullname, align 8
  %call1 = call i32 @find_loader(%struct._zipimporter* %3, %struct._object* %4, %struct._object** %namespace_portion)
  switch i32 %call1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 3, label %sw.bb.2
    i32 1, label %sw.bb.5
    i32 2, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %sw.bb.2
  %5 = load %struct._object*, %struct._object** %namespace_portion, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.3, label %if.else

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
  br label %sw.bb.5

sw.bb.5:                                          ; preds = %if.end, %do.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %result, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %12 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %13 = bitcast %struct._zipimporter* %12 to %struct._object*
  store %struct._object* %13, %struct._object** %result, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.6, %sw.bb.5
  %14 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt7 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt7, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt7, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %17 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %17
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  store %struct._object* null, %struct._object** %path, align 8
  store %struct._object* null, %struct._object** %result, align 8
  store %struct._object* null, %struct._object** %namespace_portion, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i32 0, i32 0), %struct._object** %fullname, %struct._object** %path)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %4 = load %struct._object*, %struct._object** %fullname, align 8
  %call1 = call i32 @find_loader(%struct._zipimporter* %3, %struct._object* %4, %struct._object** %namespace_portion)
  switch i32 %call1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb.2
    i32 2, label %sw.bb.4
    i32 3, label %sw.bb.6
  ]

sw.bb:                                            ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

sw.bb.2:                                          ; preds = %if.end
  %call3 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  store %struct._object* %call3, %struct._object** %result, align 8
  br label %sw.epilog

sw.bb.4:                                          ; preds = %if.end
  %5 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %call5 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), %struct._zipimporter* %5)
  store %struct._object* %call5, %struct._object** %result, align 8
  br label %sw.epilog

sw.bb.6:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %namespace_portion, align 8
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %struct._object* @_Py_NoneStruct, %struct._object* %6)
  store %struct._object* %call7, %struct._object** %result, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb.6
  %7 = load %struct._object*, %struct._object** %namespace_portion, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %14 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

sw.epilog:                                        ; preds = %if.end, %sw.bb.4, %sw.bb.2
  %15 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %15, %struct._object** %retval
  br label %return

return:                                           ; preds = %sw.epilog, %do.end, %sw.bb, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
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
  %pkgpath = alloca %struct._object*, align 8
  %fullpath = alloca %struct._object*, align 8
  %subname = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp37 = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp89 = alloca %struct._object*, align 8
  %_py_xdecref_tmp102 = alloca %struct._object*, align 8
  %_py_decref_tmp106 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  store %struct._object* null, %struct._object** %code, align 8
  store %struct._object* null, %struct._object** %modpath, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.22, i32 0, i32 0), %struct._object** %fullname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %fullname, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %fullname, align 8
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %cond.end
  %7 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %8 = load %struct._object*, %struct._object** %fullname, align 8
  %call5 = call %struct._object* @get_module_code(%struct._zipimporter* %7, %struct._object* %8, i32* %ispackage, %struct._object** %modpath)
  store %struct._object* %call5, %struct._object** %code, align 8
  %9 = load %struct._object*, %struct._object** %code, align 8
  %cmp6 = icmp eq %struct._object* %9, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %error

if.end.8:                                         ; preds = %if.end.4
  %10 = load %struct._object*, %struct._object** %fullname, align 8
  %call9 = call %struct._object* @PyImport_AddModuleObject(%struct._object* %10)
  store %struct._object* %call9, %struct._object** %mod, align 8
  %11 = load %struct._object*, %struct._object** %mod, align 8
  %cmp10 = icmp eq %struct._object* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  br label %error

if.end.12:                                        ; preds = %if.end.8
  %12 = load %struct._object*, %struct._object** %mod, align 8
  %call13 = call %struct._object* @PyModule_GetDict(%struct._object* %12)
  store %struct._object* %call13, %struct._object** %dict, align 8
  %13 = load %struct._object*, %struct._object** %dict, align 8
  %14 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %15 = bitcast %struct._zipimporter* %14 to %struct._object*
  %call14 = call i32 @PyDict_SetItemString(%struct._object* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i32 0, i32 0), %struct._object* %15)
  %cmp15 = icmp ne i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.12
  br label %error

if.end.17:                                        ; preds = %if.end.12
  %16 = load i32, i32* %ispackage, align 4
  %tobool18 = icmp ne i32 %16, 0
  br i1 %tobool18, label %if.then.19, label %if.end.50

if.then.19:                                       ; preds = %if.end.17
  %17 = load %struct._object*, %struct._object** %fullname, align 8
  %call20 = call %struct._object* @get_subname(%struct._object* %17)
  store %struct._object* %call20, %struct._object** %subname, align 8
  %18 = load %struct._object*, %struct._object** %subname, align 8
  %cmp21 = icmp eq %struct._object* %18, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.then.19
  br label %error

if.end.23:                                        ; preds = %if.then.19
  %19 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %archive, align 8
  %21 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %21, i32 0, i32 2
  %22 = load %struct._object*, %struct._object** %prefix, align 8
  %23 = load %struct._object*, %struct._object** %subname, align 8
  %call24 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* %20, i32 47, %struct._object* %22, %struct._object* %23)
  store %struct._object* %call24, %struct._object** %fullpath, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %24 = load %struct._object*, %struct._object** %subname, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %26, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp25 = icmp ne i64 %dec, 0
  br i1 %cmp25, label %if.then.26, label %if.else

if.then.26:                                       ; preds = %do.body
  br label %if.end.27

if.else:                                          ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %29(%struct._object* %30)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else, %if.then.26
  br label %do.end

do.end:                                           ; preds = %if.end.27
  %31 = load %struct._object*, %struct._object** %fullpath, align 8
  %cmp28 = icmp eq %struct._object* %31, null
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.end
  br label %error

if.end.30:                                        ; preds = %do.end
  %32 = load %struct._object*, %struct._object** %fullpath, align 8
  %call31 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i32 0, i32 0), %struct._object* %32)
  store %struct._object* %call31, %struct._object** %pkgpath, align 8
  %33 = load %struct._object*, %struct._object** %pkgpath, align 8
  %cmp32 = icmp eq %struct._object* %33, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.30
  br label %error

if.end.34:                                        ; preds = %if.end.30
  %34 = load %struct._object*, %struct._object** %dict, align 8
  %35 = load %struct._object*, %struct._object** %pkgpath, align 8
  %call35 = call i32 @PyDict_SetItemString(%struct._object* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), %struct._object* %35)
  store i32 %call35, i32* %err, align 4
  br label %do.body.36

do.body.36:                                       ; preds = %if.end.34
  %36 = load %struct._object*, %struct._object** %pkgpath, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp37, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt38, align 8
  %dec39 = add i64 %38, -1
  store i64 %dec39, i64* %ob_refcnt38, align 8
  %cmp40 = icmp ne i64 %dec39, 0
  br i1 %cmp40, label %if.then.41, label %if.else.42

if.then.41:                                       ; preds = %do.body.36
  br label %if.end.45

if.else.42:                                       ; preds = %do.body.36
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  %ob_type43 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type43, align 8
  %tp_dealloc44 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc44, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp37, align 8
  call void %41(%struct._object* %42)
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.42, %if.then.41
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %43 = load i32, i32* %err, align 4
  %cmp47 = icmp ne i32 %43, 0
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end.46
  br label %error

if.end.49:                                        ; preds = %do.end.46
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.end.17
  %44 = load %struct._object*, %struct._object** %fullname, align 8
  %45 = load %struct._object*, %struct._object** %code, align 8
  %46 = load %struct._object*, %struct._object** %modpath, align 8
  %call51 = call %struct._object* @PyImport_ExecCodeModuleObject(%struct._object* %44, %struct._object* %45, %struct._object* %46, %struct._object* null)
  store %struct._object* %call51, %struct._object** %mod, align 8
  br label %do.body.52

do.body.52:                                       ; preds = %if.end.50
  %47 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %47, %struct._object** %_py_tmp, align 8
  %48 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp53 = icmp ne %struct._object* %48, null
  br i1 %cmp53, label %if.then.54, label %if.end.66

if.then.54:                                       ; preds = %do.body.52
  store %struct._object* null, %struct._object** %code, align 8
  br label %do.body.55

do.body.55:                                       ; preds = %if.then.54
  %49 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp56, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %51, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.60, label %if.else.61

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64

if.else.61:                                       ; preds = %do.body.55
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %54(%struct._object* %55)
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  br label %do.end.65

do.end.65:                                        ; preds = %if.end.64
  br label %if.end.66

if.end.66:                                        ; preds = %do.end.65, %do.body.52
  br label %do.end.67

do.end.67:                                        ; preds = %if.end.66
  %56 = load %struct._object*, %struct._object** %mod, align 8
  %cmp68 = icmp eq %struct._object* %56, null
  br i1 %cmp68, label %if.then.69, label %if.end.70

if.then.69:                                       ; preds = %do.end.67
  br label %error

if.end.70:                                        ; preds = %do.end.67
  %57 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool71 = icmp ne i32 %57, 0
  br i1 %tobool71, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.70
  %58 = load %struct._object*, %struct._object** %fullname, align 8
  %59 = load %struct._object*, %struct._object** %modpath, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i32 0, i32 0), %struct._object* %58, %struct._object* %59)
  br label %if.end.73

if.end.73:                                        ; preds = %if.then.72, %if.end.70
  br label %do.body.74

do.body.74:                                       ; preds = %if.end.73
  %60 = load %struct._object*, %struct._object** %modpath, align 8
  store %struct._object* %60, %struct._object** %_py_decref_tmp75, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 0
  %62 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %62, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.79, label %if.else.80

if.then.79:                                       ; preds = %do.body.74
  br label %if.end.83

if.else.80:                                       ; preds = %do.body.74
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type81 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 1
  %64 = load %struct._typeobject*, %struct._typeobject** %ob_type81, align 8
  %tp_dealloc82 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %64, i32 0, i32 4
  %65 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc82, align 8
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %65(%struct._object* %66)
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.80, %if.then.79
  br label %do.end.84

do.end.84:                                        ; preds = %if.end.83
  %67 = load %struct._object*, %struct._object** %mod, align 8
  store %struct._object* %67, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.69, %if.then.48, %if.then.33, %if.then.29, %if.then.22, %if.then.16, %if.then.11, %if.then.7
  br label %do.body.85

do.body.85:                                       ; preds = %error
  %68 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %68, %struct._object** %_py_xdecref_tmp, align 8
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp86 = icmp ne %struct._object* %69, null
  br i1 %cmp86, label %if.then.87, label %if.end.99

if.then.87:                                       ; preds = %do.body.85
  br label %do.body.88

do.body.88:                                       ; preds = %if.then.87
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp89, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt90, align 8
  %dec91 = add i64 %72, -1
  store i64 %dec91, i64* %ob_refcnt90, align 8
  %cmp92 = icmp ne i64 %dec91, 0
  br i1 %cmp92, label %if.then.93, label %if.else.94

if.then.93:                                       ; preds = %do.body.88
  br label %if.end.97

if.else.94:                                       ; preds = %do.body.88
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  %ob_type95 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type95, align 8
  %tp_dealloc96 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp89, align 8
  call void %75(%struct._object* %76)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.94, %if.then.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %do.body.85
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %do.body.101

do.body.101:                                      ; preds = %do.end.100
  %77 = load %struct._object*, %struct._object** %modpath, align 8
  store %struct._object* %77, %struct._object** %_py_xdecref_tmp102, align 8
  %78 = load %struct._object*, %struct._object** %_py_xdecref_tmp102, align 8
  %cmp103 = icmp ne %struct._object* %78, null
  br i1 %cmp103, label %if.then.104, label %if.end.116

if.then.104:                                      ; preds = %do.body.101
  br label %do.body.105

do.body.105:                                      ; preds = %if.then.104
  %79 = load %struct._object*, %struct._object** %_py_xdecref_tmp102, align 8
  store %struct._object* %79, %struct._object** %_py_decref_tmp106, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  %ob_refcnt107 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 0
  %81 = load i64, i64* %ob_refcnt107, align 8
  %dec108 = add i64 %81, -1
  store i64 %dec108, i64* %ob_refcnt107, align 8
  %cmp109 = icmp ne i64 %dec108, 0
  br i1 %cmp109, label %if.then.110, label %if.else.111

if.then.110:                                      ; preds = %do.body.105
  br label %if.end.114

if.else.111:                                      ; preds = %do.body.105
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 1
  %83 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8
  %tp_dealloc113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %83, i32 0, i32 4
  %84 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp106, align 8
  call void %84(%struct._object* %85)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.111, %if.then.110
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %if.end.116

if.end.116:                                       ; preds = %do.end.115, %do.body.101
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.117, %do.end.84, %if.then.3, %if.then
  %86 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %86
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_decref_tmp127 = alloca %struct._object*, align 8
  %_py_decref_tmp141 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), %struct._object** %path)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %path, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %path, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool1 = icmp ne i32 %bf.clear, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %path, align 8
  %call2 = call i32 @_PyUnicode_Ready(%struct._object* %8)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call2, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %cond.end
  br label %error

if.end.4:                                         ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %path, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %10, i32 0, i32 1
  %11 = load i64, i64* %length, align 8
  store i64 %11, i64* %path_len, align 8
  %12 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %12, i32 0, i32 1
  %13 = load %struct._object*, %struct._object** %archive, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %length5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 1
  %15 = load i64, i64* %length5, align 8
  store i64 %15, i64* %len, align 8
  store i64 0, i64* %path_start, align 8
  %16 = load %struct._object*, %struct._object** %path, align 8
  %17 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %archive6 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %17, i32 0, i32 1
  %18 = load %struct._object*, %struct._object** %archive6, align 8
  %19 = load i64, i64* %len, align 8
  %call7 = call i64 @PyUnicode_Tailmatch(%struct._object* %16, %struct._object* %18, i64 0, i64 %19, i32 -1)
  %tobool8 = icmp ne i64 %call7, 0
  br i1 %tobool8, label %land.lhs.true, label %if.end.97

land.lhs.true:                                    ; preds = %if.end.4
  %20 = load %struct._object*, %struct._object** %path, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %state9 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 3
  %22 = bitcast %struct.anon* %state9 to i32*
  %bf.load10 = load i32, i32* %22, align 4
  %bf.lshr11 = lshr i32 %bf.load10, 2
  %bf.clear12 = and i32 %bf.lshr11, 7
  %cmp13 = icmp eq i32 %bf.clear12, 1
  br i1 %cmp13, label %cond.true.14, label %cond.false.34

cond.true.14:                                     ; preds = %land.lhs.true
  %23 = load i64, i64* %len, align 8
  %24 = load %struct._object*, %struct._object** %path, align 8
  %25 = bitcast %struct._object* %24 to %struct.PyASCIIObject*
  %state15 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %25, i32 0, i32 3
  %26 = bitcast %struct.anon* %state15 to i32*
  %bf.load16 = load i32, i32* %26, align 4
  %bf.lshr17 = lshr i32 %bf.load16, 5
  %bf.clear18 = and i32 %bf.lshr17, 1
  %tobool19 = icmp ne i32 %bf.clear18, 0
  br i1 %tobool19, label %cond.true.20, label %cond.false.31

cond.true.20:                                     ; preds = %cond.true.14
  %27 = load %struct._object*, %struct._object** %path, align 8
  %28 = bitcast %struct._object* %27 to %struct.PyASCIIObject*
  %state21 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %28, i32 0, i32 3
  %29 = bitcast %struct.anon* %state21 to i32*
  %bf.load22 = load i32, i32* %29, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 6
  %bf.clear24 = and i32 %bf.lshr23, 1
  %tobool25 = icmp ne i32 %bf.clear24, 0
  br i1 %tobool25, label %cond.true.26, label %cond.false.27

cond.true.26:                                     ; preds = %cond.true.20
  %30 = load %struct._object*, %struct._object** %path, align 8
  %31 = bitcast %struct._object* %30 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %31, i64 1
  %32 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.29

cond.false.27:                                    ; preds = %cond.true.20
  %33 = load %struct._object*, %struct._object** %path, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyCompactUnicodeObject*
  %add.ptr28 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %34, i64 1
  %35 = bitcast %struct.PyCompactUnicodeObject* %add.ptr28 to i8*
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.27, %cond.true.26
  %cond30 = phi i8* [ %32, %cond.true.26 ], [ %35, %cond.false.27 ]
  br label %cond.end.32

cond.false.31:                                    ; preds = %cond.true.14
  %36 = load %struct._object*, %struct._object** %path, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %37, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %38 = load i8*, i8** %any, align 8
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.31, %cond.end.29
  %cond33 = phi i8* [ %cond30, %cond.end.29 ], [ %38, %cond.false.31 ]
  %arrayidx = getelementptr i8, i8* %cond33, i64 %23
  %39 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %39 to i32
  br label %cond.end.92

cond.false.34:                                    ; preds = %land.lhs.true
  %40 = load %struct._object*, %struct._object** %path, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyASCIIObject*
  %state35 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %41, i32 0, i32 3
  %42 = bitcast %struct.anon* %state35 to i32*
  %bf.load36 = load i32, i32* %42, align 4
  %bf.lshr37 = lshr i32 %bf.load36, 2
  %bf.clear38 = and i32 %bf.lshr37, 7
  %cmp39 = icmp eq i32 %bf.clear38, 2
  br i1 %cmp39, label %cond.true.41, label %cond.false.66

cond.true.41:                                     ; preds = %cond.false.34
  %43 = load i64, i64* %len, align 8
  %44 = load %struct._object*, %struct._object** %path, align 8
  %45 = bitcast %struct._object* %44 to %struct.PyASCIIObject*
  %state42 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %45, i32 0, i32 3
  %46 = bitcast %struct.anon* %state42 to i32*
  %bf.load43 = load i32, i32* %46, align 4
  %bf.lshr44 = lshr i32 %bf.load43, 5
  %bf.clear45 = and i32 %bf.lshr44, 1
  %tobool46 = icmp ne i32 %bf.clear45, 0
  br i1 %tobool46, label %cond.true.47, label %cond.false.59

cond.true.47:                                     ; preds = %cond.true.41
  %47 = load %struct._object*, %struct._object** %path, align 8
  %48 = bitcast %struct._object* %47 to %struct.PyASCIIObject*
  %state48 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %48, i32 0, i32 3
  %49 = bitcast %struct.anon* %state48 to i32*
  %bf.load49 = load i32, i32* %49, align 4
  %bf.lshr50 = lshr i32 %bf.load49, 6
  %bf.clear51 = and i32 %bf.lshr50, 1
  %tobool52 = icmp ne i32 %bf.clear51, 0
  br i1 %tobool52, label %cond.true.53, label %cond.false.55

cond.true.53:                                     ; preds = %cond.true.47
  %50 = load %struct._object*, %struct._object** %path, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyASCIIObject*
  %add.ptr54 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %51, i64 1
  %52 = bitcast %struct.PyASCIIObject* %add.ptr54 to i8*
  br label %cond.end.57

cond.false.55:                                    ; preds = %cond.true.47
  %53 = load %struct._object*, %struct._object** %path, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyCompactUnicodeObject*
  %add.ptr56 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %54, i64 1
  %55 = bitcast %struct.PyCompactUnicodeObject* %add.ptr56 to i8*
  br label %cond.end.57

cond.end.57:                                      ; preds = %cond.false.55, %cond.true.53
  %cond58 = phi i8* [ %52, %cond.true.53 ], [ %55, %cond.false.55 ]
  br label %cond.end.62

cond.false.59:                                    ; preds = %cond.true.41
  %56 = load %struct._object*, %struct._object** %path, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyUnicodeObject*
  %data60 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %57, i32 0, i32 1
  %any61 = bitcast %union.anon* %data60 to i8**
  %58 = load i8*, i8** %any61, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.59, %cond.end.57
  %cond63 = phi i8* [ %cond58, %cond.end.57 ], [ %58, %cond.false.59 ]
  %59 = bitcast i8* %cond63 to i16*
  %arrayidx64 = getelementptr i16, i16* %59, i64 %43
  %60 = load i16, i16* %arrayidx64, align 2
  %conv65 = zext i16 %60 to i32
  br label %cond.end.90

cond.false.66:                                    ; preds = %cond.false.34
  %61 = load i64, i64* %len, align 8
  %62 = load %struct._object*, %struct._object** %path, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyASCIIObject*
  %state67 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %63, i32 0, i32 3
  %64 = bitcast %struct.anon* %state67 to i32*
  %bf.load68 = load i32, i32* %64, align 4
  %bf.lshr69 = lshr i32 %bf.load68, 5
  %bf.clear70 = and i32 %bf.lshr69, 1
  %tobool71 = icmp ne i32 %bf.clear70, 0
  br i1 %tobool71, label %cond.true.72, label %cond.false.84

cond.true.72:                                     ; preds = %cond.false.66
  %65 = load %struct._object*, %struct._object** %path, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyASCIIObject*
  %state73 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %66, i32 0, i32 3
  %67 = bitcast %struct.anon* %state73 to i32*
  %bf.load74 = load i32, i32* %67, align 4
  %bf.lshr75 = lshr i32 %bf.load74, 6
  %bf.clear76 = and i32 %bf.lshr75, 1
  %tobool77 = icmp ne i32 %bf.clear76, 0
  br i1 %tobool77, label %cond.true.78, label %cond.false.80

cond.true.78:                                     ; preds = %cond.true.72
  %68 = load %struct._object*, %struct._object** %path, align 8
  %69 = bitcast %struct._object* %68 to %struct.PyASCIIObject*
  %add.ptr79 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %69, i64 1
  %70 = bitcast %struct.PyASCIIObject* %add.ptr79 to i8*
  br label %cond.end.82

cond.false.80:                                    ; preds = %cond.true.72
  %71 = load %struct._object*, %struct._object** %path, align 8
  %72 = bitcast %struct._object* %71 to %struct.PyCompactUnicodeObject*
  %add.ptr81 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %72, i64 1
  %73 = bitcast %struct.PyCompactUnicodeObject* %add.ptr81 to i8*
  br label %cond.end.82

cond.end.82:                                      ; preds = %cond.false.80, %cond.true.78
  %cond83 = phi i8* [ %70, %cond.true.78 ], [ %73, %cond.false.80 ]
  br label %cond.end.87

cond.false.84:                                    ; preds = %cond.false.66
  %74 = load %struct._object*, %struct._object** %path, align 8
  %75 = bitcast %struct._object* %74 to %struct.PyUnicodeObject*
  %data85 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %75, i32 0, i32 1
  %any86 = bitcast %union.anon* %data85 to i8**
  %76 = load i8*, i8** %any86, align 8
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.false.84, %cond.end.82
  %cond88 = phi i8* [ %cond83, %cond.end.82 ], [ %76, %cond.false.84 ]
  %77 = bitcast i8* %cond88 to i32*
  %arrayidx89 = getelementptr i32, i32* %77, i64 %61
  %78 = load i32, i32* %arrayidx89, align 4
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.end.87, %cond.end.62
  %cond91 = phi i32 [ %conv65, %cond.end.62 ], [ %78, %cond.end.87 ]
  br label %cond.end.92

cond.end.92:                                      ; preds = %cond.end.90, %cond.end.32
  %cond93 = phi i32 [ %conv, %cond.end.32 ], [ %cond91, %cond.end.90 ]
  %cmp94 = icmp eq i32 %cond93, 47
  br i1 %cmp94, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %cond.end.92
  %79 = load i64, i64* %len, align 8
  %add = add i64 %79, 1
  store i64 %add, i64* %path_start, align 8
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.96, %cond.end.92, %if.end.4
  %80 = load %struct._object*, %struct._object** %path, align 8
  %81 = load i64, i64* %path_start, align 8
  %82 = load i64, i64* %path_len, align 8
  %call98 = call %struct._object* @PyUnicode_Substring(%struct._object* %80, i64 %81, i64 %82)
  store %struct._object* %call98, %struct._object** %key, align 8
  %83 = load %struct._object*, %struct._object** %key, align 8
  %cmp99 = icmp eq %struct._object* %83, null
  br i1 %cmp99, label %if.then.101, label %if.end.102

if.then.101:                                      ; preds = %if.end.97
  br label %error

if.end.102:                                       ; preds = %if.end.97
  %84 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %84, i32 0, i32 3
  %85 = load %struct._object*, %struct._object** %files, align 8
  %86 = load %struct._object*, %struct._object** %key, align 8
  %call103 = call %struct._object* @PyDict_GetItem(%struct._object* %85, %struct._object* %86)
  store %struct._object* %call103, %struct._object** %toc_entry, align 8
  %87 = load %struct._object*, %struct._object** %toc_entry, align 8
  %cmp104 = icmp eq %struct._object* %87, null
  br i1 %cmp104, label %if.then.106, label %if.end.113

if.then.106:                                      ; preds = %if.end.102
  %88 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %89 = load %struct._object*, %struct._object** %key, align 8
  %call107 = call %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object* %88, %struct._object* %89)
  br label %do.body

do.body:                                          ; preds = %if.then.106
  %90 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %90, %struct._object** %_py_decref_tmp, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 0
  %92 = load i64, i64* %ob_refcnt108, align 8
  %dec = add i64 %92, -1
  store i64 %dec, i64* %ob_refcnt108, align 8
  %cmp109 = icmp ne i64 %dec, 0
  br i1 %cmp109, label %if.then.111, label %if.else

if.then.111:                                      ; preds = %do.body
  br label %if.end.112

if.else:                                          ; preds = %do.body
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %93, i32 0, i32 1
  %94 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %94, i32 0, i32 4
  %95 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %95(%struct._object* %96)
  br label %if.end.112

if.end.112:                                       ; preds = %if.else, %if.then.111
  br label %do.end

do.end:                                           ; preds = %if.end.112
  br label %error

if.end.113:                                       ; preds = %if.end.102
  br label %do.body.114

do.body.114:                                      ; preds = %if.end.113
  %97 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp115, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %99, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.120, label %if.else.121

if.then.120:                                      ; preds = %do.body.114
  br label %if.end.124

if.else.121:                                      ; preds = %do.body.114
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type122 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type122, align 8
  %tp_dealloc123 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %102(%struct._object* %103)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.121, %if.then.120
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %do.body.126

do.body.126:                                      ; preds = %do.end.125
  %104 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp127, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_refcnt128 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt128, align 8
  %dec129 = add i64 %106, -1
  store i64 %dec129, i64* %ob_refcnt128, align 8
  %cmp130 = icmp ne i64 %dec129, 0
  br i1 %cmp130, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %do.body.126
  br label %if.end.136

if.else.133:                                      ; preds = %do.body.126
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp127, align 8
  call void %109(%struct._object* %110)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  %111 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %archive138 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %111, i32 0, i32 1
  %112 = load %struct._object*, %struct._object** %archive138, align 8
  %113 = load %struct._object*, %struct._object** %toc_entry, align 8
  %call139 = call %struct._object* @get_data(%struct._object* %112, %struct._object* %113)
  store %struct._object* %call139, %struct._object** %retval
  br label %return

error:                                            ; preds = %do.end, %if.then.101, %if.then.3
  br label %do.body.140

do.body.140:                                      ; preds = %error
  %114 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp141, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_refcnt142 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt142, align 8
  %dec143 = add i64 %116, -1
  store i64 %dec143, i64* %ob_refcnt142, align 8
  %cmp144 = icmp ne i64 %dec143, 0
  br i1 %cmp144, label %if.then.146, label %if.else.147

if.then.146:                                      ; preds = %do.body.140
  br label %if.end.150

if.else.147:                                      ; preds = %do.body.140
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  %ob_type148 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type148, align 8
  %tp_dealloc149 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc149, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp141, align 8
  call void %119(%struct._object* %120)
  br label %if.end.150

if.end.150:                                       ; preds = %if.else.147, %if.then.146
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.151, %do.end.137, %if.then
  %121 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %121
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @zipimporter_get_code(%struct._object* %obj, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self = alloca %struct._zipimporter*, align 8
  %fullname = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.49, i32 0, i32 0), %struct._object** %fullname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %4 = load %struct._object*, %struct._object** %fullname, align 8
  %call1 = call %struct._object* @get_module_code(%struct._zipimporter* %3, %struct._object* %4, i32* null, %struct._object** null)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp41 = alloca %struct._object*, align 8
  %res = alloca %struct._object*, align 8
  %bytes = alloca %struct._object*, align 8
  %_py_decref_tmp59 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.50, i32 0, i32 0), %struct._object** %fullname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %4 = load %struct._object*, %struct._object** %fullname, align 8
  %call1 = call i32 @get_module_info(%struct._zipimporter* %3, %struct._object* %4)
  store i32 %call1, i32* %mi, align 4
  %5 = load i32, i32* %mi, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %mi, align 4
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %8 = load %struct._object*, %struct._object** %fullname, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), %struct._object* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %fullname, align 8
  %call8 = call %struct._object* @get_subname(%struct._object* %9)
  store %struct._object* %call8, %struct._object** %subname, align 8
  %10 = load %struct._object*, %struct._object** %subname, align 8
  %cmp9 = icmp eq %struct._object* %10, null
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %11 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %11, i32 0, i32 2
  %12 = load %struct._object*, %struct._object** %prefix, align 8
  %13 = load %struct._object*, %struct._object** %subname, align 8
  %call12 = call %struct._object* @make_filename(%struct._object* %12, %struct._object* %13)
  store %struct._object* %call12, %struct._object** %path, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %14 = load %struct._object*, %struct._object** %subname, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %do.body
  br label %if.end.15

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %21 = load %struct._object*, %struct._object** %path, align 8
  %cmp16 = icmp eq %struct._object* %21, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %do.end
  %22 = load i32, i32* %mi, align 4
  %cmp19 = icmp eq i32 %22, 3
  br i1 %cmp19, label %if.then.20, label %if.else.22

if.then.20:                                       ; preds = %if.end.18
  %23 = load %struct._object*, %struct._object** %path, align 8
  %call21 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i32 0, i32 0), %struct._object* %23, i32 47)
  store %struct._object* %call21, %struct._object** %fullpath, align 8
  br label %if.end.24

if.else.22:                                       ; preds = %if.end.18
  %24 = load %struct._object*, %struct._object** %path, align 8
  %call23 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), %struct._object* %24)
  store %struct._object* %call23, %struct._object** %fullpath, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.22, %if.then.20
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %25 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp26, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %27, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %30(%struct._object* %31)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  %32 = load %struct._object*, %struct._object** %fullpath, align 8
  %cmp36 = icmp eq %struct._object* %32, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.end.35
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.38:                                        ; preds = %do.end.35
  %33 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %33, i32 0, i32 3
  %34 = load %struct._object*, %struct._object** %files, align 8
  %35 = load %struct._object*, %struct._object** %fullpath, align 8
  %call39 = call %struct._object* @PyDict_GetItem(%struct._object* %34, %struct._object* %35)
  store %struct._object* %call39, %struct._object** %toc_entry, align 8
  br label %do.body.40

do.body.40:                                       ; preds = %if.end.38
  %36 = load %struct._object*, %struct._object** %fullpath, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp41, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_refcnt42 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt42, align 8
  %dec43 = add i64 %38, -1
  store i64 %dec43, i64* %ob_refcnt42, align 8
  %cmp44 = icmp ne i64 %dec43, 0
  br i1 %cmp44, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.40
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.40
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp41, align 8
  call void %41(%struct._object* %42)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  %43 = load %struct._object*, %struct._object** %toc_entry, align 8
  %cmp51 = icmp ne %struct._object* %43, null
  br i1 %cmp51, label %if.then.52, label %if.end.69

if.then.52:                                       ; preds = %do.end.50
  %44 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %44, i32 0, i32 1
  %45 = load %struct._object*, %struct._object** %archive, align 8
  %46 = load %struct._object*, %struct._object** %toc_entry, align 8
  %call53 = call %struct._object* @get_data(%struct._object* %45, %struct._object* %46)
  store %struct._object* %call53, %struct._object** %bytes, align 8
  %47 = load %struct._object*, %struct._object** %bytes, align 8
  %cmp54 = icmp eq %struct._object* %47, null
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.56:                                        ; preds = %if.then.52
  %48 = load %struct._object*, %struct._object** %bytes, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %49, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  %50 = load %struct._object*, %struct._object** %bytes, align 8
  %51 = bitcast %struct._object* %50 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %51, i32 0, i32 1
  %52 = load i64, i64* %ob_size, align 8
  %call57 = call %struct._object* @PyUnicode_FromStringAndSize(i8* %arraydecay, i64 %52)
  store %struct._object* %call57, %struct._object** %res, align 8
  br label %do.body.58

do.body.58:                                       ; preds = %if.end.56
  %53 = load %struct._object*, %struct._object** %bytes, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp59, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_refcnt60 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt60, align 8
  %dec61 = add i64 %55, -1
  store i64 %dec61, i64* %ob_refcnt60, align 8
  %cmp62 = icmp ne i64 %dec61, 0
  br i1 %cmp62, label %if.then.63, label %if.else.64

if.then.63:                                       ; preds = %do.body.58
  br label %if.end.67

if.else.64:                                       ; preds = %do.body.58
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  %ob_type65 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type65, align 8
  %tp_dealloc66 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc66, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp59, align 8
  call void %58(%struct._object* %59)
  br label %if.end.67

if.end.67:                                        ; preds = %if.else.64, %if.then.63
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  %60 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %60, %struct._object** %retval
  br label %return

if.end.69:                                        ; preds = %do.end.50
  %61 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %61, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.69, %do.end.68, %if.then.55, %if.then.37, %if.then.17, %if.then.10, %if.then.5, %if.then.2, %if.then
  %62 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %62
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.53, i32 0, i32 0), %struct._object** %fullname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %4 = load %struct._object*, %struct._object** %fullname, align 8
  %call1 = call %struct._object* @get_module_code(%struct._zipimporter* %3, %struct._object* %4, i32* %ispackage, %struct._object** %modpath)
  store %struct._object* %call1, %struct._object** %code, align 8
  %5 = load %struct._object*, %struct._object** %code, align 8
  %cmp = icmp eq %struct._object* %5, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %modpath, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.2, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
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
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._zipimporter*
  store %struct._zipimporter* %1, %struct._zipimporter** %self, align 8
  %2 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %2, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.54, i32 0, i32 0), %struct._object** %fullname)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self, align 8
  %4 = load %struct._object*, %struct._object** %fullname, align 8
  %call1 = call i32 @get_module_info(%struct._zipimporter* %3, %struct._object* %4)
  store i32 %call1, i32* %mi, align 4
  %5 = load i32, i32* %mi, align 4
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load i32, i32* %mi, align 4
  %cmp4 = icmp eq i32 %6, 1
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end.3
  %7 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %8 = load %struct._object*, %struct._object** %fullname, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), %struct._object* %8)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %9 = load i32, i32* %mi, align 4
  %cmp8 = icmp eq i32 %9, 3
  %conv = zext i1 %cmp8 to i32
  %conv9 = sext i32 %conv to i64
  %call10 = call %struct._object* @PyBool_FromLong(i64 %conv9)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.5, %if.then.2, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @find_loader(%struct._zipimporter* %self, %struct._object* %fullname, %struct._object** %namespace_portion) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._zipimporter*, align 8
  %fullname.addr = alloca %struct._object*, align 8
  %namespace_portion.addr = alloca %struct._object**, align 8
  %mi = alloca i32, align 4
  %is_dir = alloca i32, align 4
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8
  store %struct._object** %namespace_portion, %struct._object*** %namespace_portion.addr, align 8
  %0 = load %struct._object**, %struct._object*** %namespace_portion.addr, align 8
  store %struct._object* null, %struct._object** %0, align 8
  %1 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %2 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %call = call i32 @get_module_info(%struct._zipimporter* %1, %struct._object* %2)
  store i32 %call, i32* %mi, align 4
  %3 = load i32, i32* %mi, align 4
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %mi, align 4
  %cmp1 = icmp eq i32 %4, 1
  br i1 %cmp1, label %if.then.2, label %if.end.14

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %6 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %6, i32 0, i32 2
  %7 = load %struct._object*, %struct._object** %prefix, align 8
  %8 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %call3 = call i32 @check_is_directory(%struct._zipimporter* %5, %struct._object* %7, %struct._object* %8)
  store i32 %call3, i32* %is_dir, align 4
  %9 = load i32, i32* %is_dir, align 4
  %cmp4 = icmp slt i32 %9, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %10 = load i32, i32* %is_dir, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.7, label %if.end.13

if.then.7:                                        ; preds = %if.end.6
  %11 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %archive, align 8
  %13 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix8 = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %prefix8, align 8
  %15 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %call9 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* %12, i32 47, %struct._object* %14, %struct._object* %15)
  %16 = load %struct._object**, %struct._object*** %namespace_portion.addr, align 8
  store %struct._object* %call9, %struct._object** %16, align 8
  %17 = load %struct._object**, %struct._object*** %namespace_portion.addr, align 8
  %18 = load %struct._object*, %struct._object** %17, align 8
  %cmp10 = icmp eq %struct._object* %18, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.then.7
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.then.7
  store i32 3, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  store i32 1, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end
  store i32 2, i32* %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.end.13, %if.end.12, %if.then.11, %if.then.5, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8
  %0 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %call = call %struct._object* @get_subname(%struct._object* %0)
  store %struct._object* %call, %struct._object** %subname, align 8
  %1 = load %struct._object*, %struct._object** %subname, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %prefix, align 8
  %4 = load %struct._object*, %struct._object** %subname, align 8
  %call1 = call %struct._object* @make_filename(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %path, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %subname, align 8
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
  %12 = load %struct._object*, %struct._object** %path, align 8
  %cmp5 = icmp eq %struct._object* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  store %struct.st_zip_searchorder* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0), %struct.st_zip_searchorder** %zso, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %13 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %suffix = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %suffix, i32 0, i32 0
  %14 = load i8, i8* %arraydecay, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load %struct._object*, %struct._object** %path, align 8
  %16 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %suffix8 = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %16, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [14 x i8], [14 x i8]* %suffix8, i32 0, i32 0
  %call10 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._object* %15, i8* %arraydecay9)
  store %struct._object* %call10, %struct._object** %fullpath, align 8
  %17 = load %struct._object*, %struct._object** %fullpath, align 8
  %cmp11 = icmp eq %struct._object* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %for.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %18 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp14, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %20, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %23(%struct._object* %24)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %for.body
  %25 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %25, i32 0, i32 3
  %26 = load %struct._object*, %struct._object** %files, align 8
  %27 = load %struct._object*, %struct._object** %fullpath, align 8
  %call25 = call %struct._object* @PyDict_GetItem(%struct._object* %26, %struct._object* %27)
  store %struct._object* %call25, %struct._object** %item, align 8
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.24
  %28 = load %struct._object*, %struct._object** %fullpath, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp27, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %30, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %33(%struct._object* %34)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %35 = load %struct._object*, %struct._object** %item, align 8
  %cmp37 = icmp ne %struct._object* %35, null
  br i1 %cmp37, label %if.then.38, label %if.end.53

if.then.38:                                       ; preds = %do.end.36
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %36 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp40, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %38, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %41(%struct._object* %42)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %43 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %type = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %43, i32 0, i32 1
  %44 = load i32, i32* %type, align 4
  %and = and i32 %44, 2
  %tobool50 = icmp ne i32 %and, 0
  br i1 %tobool50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.end.49
  store i32 3, i32* %retval
  br label %return

if.else.52:                                       ; preds = %do.end.49
  store i32 2, i32* %retval
  br label %return

if.end.53:                                        ; preds = %do.end.36
  br label %for.inc

for.inc:                                          ; preds = %if.end.53
  %45 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %incdec.ptr = getelementptr %struct.st_zip_searchorder, %struct.st_zip_searchorder* %45, i32 1
  store %struct.st_zip_searchorder* %incdec.ptr, %struct.st_zip_searchorder** %zso, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.54

do.body.54:                                       ; preds = %for.end
  %46 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp55, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %48, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %51(%struct._object* %52)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.64, %if.else.52, %if.then.51, %do.end.23, %if.then.6, %if.then
  %53 = load i32, i32* %retval
  ret i32 %53
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  store %struct._object* %prefix, %struct._object** %prefix.addr, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  %0 = load %struct._object*, %struct._object** %prefix.addr, align 8
  %1 = load %struct._object*, %struct._object** %path.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* %0, %struct._object* %1, i32 47)
  store %struct._object* %call, %struct._object** %dirpath, align 8
  %2 = load %struct._object*, %struct._object** %dirpath, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %3, i32 0, i32 3
  %4 = load %struct._object*, %struct._object** %files, align 8
  %5 = load %struct._object*, %struct._object** %dirpath, align 8
  %call1 = call i32 @PyDict_Contains(%struct._object* %4, %struct._object* %5)
  store i32 %call1, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %dirpath, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %13 = load i32, i32* %res, align 4
  store i32 %13, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_subname(%struct._object* %fullname) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %fullname.addr = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %dot = alloca i64, align 8
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8
  %0 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 3
  %2 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp slt i32 %cond, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 1
  %6 = load i64, i64* %length, align 8
  store i64 %6, i64* %len, align 8
  %7 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %8 = load i64, i64* %len, align 8
  %call1 = call i64 @PyUnicode_FindChar(%struct._object* %7, i32 46, i64 0, i64 %8, i32 -1)
  store i64 %call1, i64* %dot, align 8
  %9 = load i64, i64* %dot, align 8
  %cmp2 = icmp eq i64 %9, -1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._object*, %struct._object** %fullname.addr, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.end
  %13 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %14 = load i64, i64* %dot, align 8
  %add = add i64 %14, 1
  %15 = load i64, i64* %len, align 8
  %call4 = call %struct._object* @PyUnicode_Substring(%struct._object* %13, i64 %add, i64 %15)
  store %struct._object* %call4, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then.3, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
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
  store %struct._object* %prefix, %struct._object** %prefix.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._object*, %struct._object** %prefix.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 1
  %2 = load i64, i64* %length, align 8
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %length1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 1
  %5 = load i64, i64* %length1, align 8
  %add = add i64 %2, %5
  %add2 = add i64 %add, 1
  store i64 %add2, i64* %len, align 8
  %6 = load i64, i64* %len, align 8
  %mul = mul i64 4, %6
  %call = call i8* @PyMem_Malloc(i64 %mul)
  %7 = bitcast i8* %call to i32*
  store i32* %7, i32** %buf, align 8
  store i32* %7, i32** %p, align 8
  %8 = load i32*, i32** %buf, align 8
  %cmp = icmp eq i32* %8, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call3 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load %struct._object*, %struct._object** %prefix.addr, align 8
  %10 = load i32*, i32** %p, align 8
  %11 = load i64, i64* %len, align 8
  %call4 = call i32* @PyUnicode_AsUCS4(%struct._object* %9, i32* %10, i64 %11, i32 0)
  %tobool = icmp ne i32* %call4, null
  br i1 %tobool, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  %12 = load i32*, i32** %buf, align 8
  %13 = bitcast i32* %12 to i8*
  call void @PyMem_Free(i8* %13)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %prefix.addr, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyASCIIObject*
  %length7 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %15, i32 0, i32 1
  %16 = load i64, i64* %length7, align 8
  %17 = load i32*, i32** %p, align 8
  %add.ptr = getelementptr i32, i32* %17, i64 %16
  store i32* %add.ptr, i32** %p, align 8
  %18 = load %struct._object*, %struct._object** %prefix.addr, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyASCIIObject*
  %length8 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %19, i32 0, i32 1
  %20 = load i64, i64* %length8, align 8
  %21 = load i64, i64* %len, align 8
  %sub = sub i64 %21, %20
  store i64 %sub, i64* %len, align 8
  %22 = load %struct._object*, %struct._object** %name.addr, align 8
  %23 = load i32*, i32** %p, align 8
  %24 = load i64, i64* %len, align 8
  %call9 = call i32* @PyUnicode_AsUCS4(%struct._object* %22, i32* %23, i64 %24, i32 1)
  %tobool10 = icmp ne i32* %call9, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  %25 = load i32*, i32** %buf, align 8
  %26 = bitcast i32* %25 to i8*
  call void @PyMem_Free(i8* %26)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.6
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.12
  %27 = load i32*, i32** %p, align 8
  %28 = load i32, i32* %27, align 4
  %tobool13 = icmp ne i32 %28, 0
  br i1 %tobool13, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %29 = load i32*, i32** %p, align 8
  %30 = load i32, i32* %29, align 4
  %cmp14 = icmp eq i32 %30, 46
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %for.body
  %31 = load i32*, i32** %p, align 8
  store i32 47, i32* %31, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.16
  %32 = load i32*, i32** %p, align 8
  %incdec.ptr = getelementptr i32, i32* %32, i32 1
  store i32* %incdec.ptr, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %33 = load i32*, i32** %buf, align 8
  %34 = bitcast i32* %33 to i8*
  %35 = load i32*, i32** %p, align 8
  %36 = load i32*, i32** %buf, align 8
  %sub.ptr.lhs.cast = ptrtoint i32* %35 to i64
  %sub.ptr.rhs.cast = ptrtoint i32* %36 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call17 = call %struct._object* @PyUnicode_FromKindAndData(i32 4, i8* %34, i64 %sub.ptr.div)
  store %struct._object* %call17, %struct._object** %pathobj, align 8
  %37 = load i32*, i32** %buf, align 8
  %38 = bitcast i32* %37 to i8*
  call void @PyMem_Free(i8* %38)
  %39 = load %struct._object*, %struct._object** %pathobj, align 8
  store %struct._object* %39, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11, %if.then.5, %if.then
  %40 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %40
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare i32* @PyUnicode_AsUCS4(%struct._object*, i32*, i64, i32) #1

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyUnicode_FromKindAndData(i32, i8*, i64) #1

declare i32 @PyDict_Contains(%struct._object*, %struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %mtime = alloca i64, align 8
  %ispackage = alloca i32, align 4
  %isbytecode = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp107 = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  store %struct._object* %fullname, %struct._object** %fullname.addr, align 8
  store i32* %p_ispackage, i32** %p_ispackage.addr, align 8
  store %struct._object** %p_modpath, %struct._object*** %p_modpath.addr, align 8
  store %struct._object* null, %struct._object** %code, align 8
  store %struct._object* null, %struct._object** %fullpath, align 8
  %0 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %call = call %struct._object* @get_subname(%struct._object* %0)
  store %struct._object* %call, %struct._object** %subname, align 8
  %1 = load %struct._object*, %struct._object** %subname, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %prefix = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %prefix, align 8
  %4 = load %struct._object*, %struct._object** %subname, align 8
  %call1 = call %struct._object* @make_filename(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %path, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %subname, align 8
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
  %12 = load %struct._object*, %struct._object** %path, align 8
  %cmp5 = icmp eq %struct._object* %12, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %do.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %do.end
  store %struct.st_zip_searchorder* getelementptr inbounds ([7 x %struct.st_zip_searchorder], [7 x %struct.st_zip_searchorder]* @zip_searchorder, i32 0, i32 0), %struct.st_zip_searchorder** %zso, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.7
  %13 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %suffix = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %13, i32 0, i32 0
  %arraydecay = getelementptr inbounds [14 x i8], [14 x i8]* %suffix, i32 0, i32 0
  %14 = load i8, i8* %arraydecay, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store %struct._object* null, %struct._object** %code, align 8
  %15 = load %struct._object*, %struct._object** %path, align 8
  %16 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %suffix8 = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %16, i32 0, i32 0
  %arraydecay9 = getelementptr inbounds [14 x i8], [14 x i8]* %suffix8, i32 0, i32 0
  %call10 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), %struct._object* %15, i8* %arraydecay9)
  store %struct._object* %call10, %struct._object** %fullpath, align 8
  %17 = load %struct._object*, %struct._object** %fullpath, align 8
  %cmp11 = icmp eq %struct._object* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %for.body
  br label %exit

if.end.13:                                        ; preds = %for.body
  %18 = load i32, i32* @Py_VerboseFlag, align 4
  %cmp14 = icmp sgt i32 %18, 1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.13
  %19 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %19, i32 0, i32 1
  %20 = load %struct._object*, %struct._object** %archive, align 8
  %21 = load %struct._object*, %struct._object** %fullpath, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0), %struct._object* %20, i32 47, %struct._object* %21)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.end.13
  %22 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %22, i32 0, i32 3
  %23 = load %struct._object*, %struct._object** %files, align 8
  %24 = load %struct._object*, %struct._object** %fullpath, align 8
  %call17 = call %struct._object* @PyDict_GetItem(%struct._object* %23, %struct._object* %24)
  store %struct._object* %call17, %struct._object** %toc_entry, align 8
  %25 = load %struct._object*, %struct._object** %toc_entry, align 8
  %cmp18 = icmp ne %struct._object* %25, null
  br i1 %cmp18, label %if.then.19, label %if.else.72

if.then.19:                                       ; preds = %if.end.16
  store i64 0, i64* %mtime, align 8
  %26 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %type = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %26, i32 0, i32 1
  %27 = load i32, i32* %type, align 4
  %and = and i32 %27, 2
  store i32 %and, i32* %ispackage, align 4
  %28 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %type20 = getelementptr inbounds %struct.st_zip_searchorder, %struct.st_zip_searchorder* %28, i32 0, i32 1
  %29 = load i32, i32* %type20, align 4
  %and21 = and i32 %29, 1
  store i32 %and21, i32* %isbytecode, align 4
  %30 = load i32, i32* %isbytecode, align 4
  %tobool22 = icmp ne i32 %30, 0
  br i1 %tobool22, label %if.then.23, label %if.end.30

if.then.23:                                       ; preds = %if.then.19
  %31 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %32 = load %struct._object*, %struct._object** %fullpath, align 8
  %call24 = call i64 @get_mtime_of_source(%struct._zipimporter* %31, %struct._object* %32)
  store i64 %call24, i64* %mtime, align 8
  %33 = load i64, i64* %mtime, align 8
  %cmp25 = icmp eq i64 %33, -1
  br i1 %cmp25, label %land.lhs.true, label %if.end.29

land.lhs.true:                                    ; preds = %if.then.23
  %call26 = call %struct._object* @PyErr_Occurred()
  %tobool27 = icmp ne %struct._object* %call26, null
  br i1 %tobool27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %land.lhs.true
  br label %exit

if.end.29:                                        ; preds = %land.lhs.true, %if.then.23
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.then.19
  br label %do.body.31

do.body.31:                                       ; preds = %if.end.30
  %34 = load %struct._object*, %struct._object** %fullpath, align 8
  store %struct._object* %34, %struct._object** %_py_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp32 = icmp ne %struct._object* %35, null
  br i1 %cmp32, label %if.then.33, label %if.end.45

if.then.33:                                       ; preds = %do.body.31
  store %struct._object* null, %struct._object** %fullpath, align 8
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp35, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %38, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %41(%struct._object* %42)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %if.end.45

if.end.45:                                        ; preds = %do.end.44, %do.body.31
  br label %do.end.46

do.end.46:                                        ; preds = %if.end.45
  %43 = load i32*, i32** %p_ispackage.addr, align 8
  %cmp47 = icmp ne i32* %43, null
  br i1 %cmp47, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %do.end.46
  %44 = load i32, i32* %ispackage, align 4
  %45 = load i32*, i32** %p_ispackage.addr, align 8
  store i32 %44, i32* %45, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.then.48, %do.end.46
  %46 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %47 = load i32, i32* %ispackage, align 4
  %48 = load i32, i32* %isbytecode, align 4
  %49 = load i64, i64* %mtime, align 8
  %50 = load %struct._object*, %struct._object** %toc_entry, align 8
  %call50 = call %struct._object* @get_code_from_data(%struct._zipimporter* %46, i32 %47, i32 %48, i64 %49, %struct._object* %50)
  store %struct._object* %call50, %struct._object** %code, align 8
  %51 = load %struct._object*, %struct._object** %code, align 8
  %cmp51 = icmp eq %struct._object* %51, @_Py_NoneStruct
  br i1 %cmp51, label %if.then.52, label %if.end.64

if.then.52:                                       ; preds = %if.end.49
  br label %do.body.53

do.body.53:                                       ; preds = %if.then.52
  %52 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp54, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %54, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %57(%struct._object* %58)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %for.inc

if.end.64:                                        ; preds = %if.end.49
  %59 = load %struct._object*, %struct._object** %code, align 8
  %cmp65 = icmp ne %struct._object* %59, null
  br i1 %cmp65, label %land.lhs.true.66, label %if.end.71

land.lhs.true.66:                                 ; preds = %if.end.64
  %60 = load %struct._object**, %struct._object*** %p_modpath.addr, align 8
  %cmp67 = icmp ne %struct._object** %60, null
  br i1 %cmp67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %land.lhs.true.66
  %61 = load %struct._object*, %struct._object** %toc_entry, align 8
  %call69 = call %struct._object* @PyTuple_GetItem(%struct._object* %61, i64 0)
  %62 = load %struct._object**, %struct._object*** %p_modpath.addr, align 8
  store %struct._object* %call69, %struct._object** %62, align 8
  %63 = load %struct._object**, %struct._object*** %p_modpath.addr, align 8
  %64 = load %struct._object*, %struct._object** %63, align 8
  %ob_refcnt70 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt70, align 8
  %inc = add i64 %65, 1
  store i64 %inc, i64* %ob_refcnt70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %land.lhs.true.66, %if.end.64
  br label %exit

if.else.72:                                       ; preds = %if.end.16
  br label %do.body.73

do.body.73:                                       ; preds = %if.else.72
  %66 = load %struct._object*, %struct._object** %fullpath, align 8
  store %struct._object* %66, %struct._object** %_py_tmp74, align 8
  %67 = load %struct._object*, %struct._object** %_py_tmp74, align 8
  %cmp75 = icmp ne %struct._object* %67, null
  br i1 %cmp75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %do.body.73
  store %struct._object* null, %struct._object** %fullpath, align 8
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %68 = load %struct._object*, %struct._object** %_py_tmp74, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp78, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %70, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %73(%struct._object* %74)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %do.body.73
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89
  br label %for.inc

for.inc:                                          ; preds = %if.end.90, %do.end.63
  %75 = load %struct.st_zip_searchorder*, %struct.st_zip_searchorder** %zso, align 8
  %incdec.ptr = getelementptr %struct.st_zip_searchorder, %struct.st_zip_searchorder* %75, i32 1
  store %struct.st_zip_searchorder* %incdec.ptr, %struct.st_zip_searchorder** %zso, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %77 = load %struct._object*, %struct._object** %fullname.addr, align 8
  %call91 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.28, i32 0, i32 0), %struct._object* %77)
  br label %exit

exit:                                             ; preds = %for.end, %if.end.71, %if.then.28, %if.then.12
  br label %do.body.92

do.body.92:                                       ; preds = %exit
  %78 = load %struct._object*, %struct._object** %path, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp93, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt94, align 8
  %dec95 = add i64 %80, -1
  store i64 %dec95, i64* %ob_refcnt94, align 8
  %cmp96 = icmp ne i64 %dec95, 0
  br i1 %cmp96, label %if.then.97, label %if.else.98

if.then.97:                                       ; preds = %do.body.92
  br label %if.end.101

if.else.98:                                       ; preds = %do.body.92
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_type99 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type99, align 8
  %tp_dealloc100 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  call void %83(%struct._object* %84)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.98, %if.then.97
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %do.body.103

do.body.103:                                      ; preds = %do.end.102
  %85 = load %struct._object*, %struct._object** %fullpath, align 8
  store %struct._object* %85, %struct._object** %_py_xdecref_tmp, align 8
  %86 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp104 = icmp ne %struct._object* %86, null
  br i1 %cmp104, label %if.then.105, label %if.end.117

if.then.105:                                      ; preds = %do.body.103
  br label %do.body.106

do.body.106:                                      ; preds = %if.then.105
  %87 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %87, %struct._object** %_py_decref_tmp107, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 0
  %89 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %89, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.111, label %if.else.112

if.then.111:                                      ; preds = %do.body.106
  br label %if.end.115

if.else.112:                                      ; preds = %do.body.106
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type113 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 1
  %91 = load %struct._typeobject*, %struct._typeobject** %ob_type113, align 8
  %tp_dealloc114 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %91, i32 0, i32 4
  %92 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc114, align 8
  %93 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %92(%struct._object* %93)
  br label %if.end.115

if.end.115:                                       ; preds = %if.else.112, %if.then.111
  br label %do.end.116

do.end.116:                                       ; preds = %if.end.115
  br label %if.end.117

if.end.117:                                       ; preds = %do.end.116, %do.body.103
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  %94 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %94, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.118, %if.then.6, %if.then
  %95 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %95
}

declare %struct._object* @PyImport_AddModuleObject(%struct._object*) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyImport_ExecCodeModuleObject(%struct._object*, %struct._object*, %struct._object*, %struct._object*) #1

declare void @PySys_FormatStderr(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_mtime_of_source(%struct._zipimporter* %self, %struct._object* %path) #0 {
entry:
  %retval = alloca i64, align 8
  %self.addr = alloca %struct._zipimporter*, align 8
  %path.addr = alloca %struct._object*, align 8
  %toc_entry = alloca %struct._object*, align 8
  %stripped = alloca %struct._object*, align 8
  %mtime = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %time = alloca i32, align 4
  %date = alloca i32, align 4
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  store %struct._object* %path, %struct._object** %path.addr, align 8
  %0 = load %struct._object*, %struct._object** %path.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %1, i32 0, i32 3
  %2 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %2, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  br label %cond.end

cond.false:                                       ; preds = %entry
  %3 = load %struct._object*, %struct._object** %path.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %3)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp = icmp eq i32 %cond, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %4 = load %struct._object*, %struct._object** %path.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyASCIIObject*
  %state1 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %5, i32 0, i32 3
  %6 = bitcast %struct.anon* %state1 to i32*
  %bf.load2 = load i32, i32* %6, align 4
  %bf.lshr3 = lshr i32 %bf.load2, 2
  %bf.clear4 = and i32 %bf.lshr3, 7
  %7 = load %struct._object*, %struct._object** %path.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state5 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state5 to i32*
  %bf.load6 = load i32, i32* %9, align 4
  %bf.lshr7 = lshr i32 %bf.load6, 5
  %bf.clear8 = and i32 %bf.lshr7, 1
  %tobool9 = icmp ne i32 %bf.clear8, 0
  br i1 %tobool9, label %cond.true.10, label %cond.false.21

cond.true.10:                                     ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %path.addr, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyASCIIObject*
  %state11 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3
  %12 = bitcast %struct.anon* %state11 to i32*
  %bf.load12 = load i32, i32* %12, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 6
  %bf.clear14 = and i32 %bf.lshr13, 1
  %tobool15 = icmp ne i32 %bf.clear14, 0
  br i1 %tobool15, label %cond.true.16, label %cond.false.17

cond.true.16:                                     ; preds = %cond.true.10
  %13 = load %struct._object*, %struct._object** %path.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i64 1
  %15 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.19

cond.false.17:                                    ; preds = %cond.true.10
  %16 = load %struct._object*, %struct._object** %path.addr, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyCompactUnicodeObject*
  %add.ptr18 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %17, i64 1
  %18 = bitcast %struct.PyCompactUnicodeObject* %add.ptr18 to i8*
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.17, %cond.true.16
  %cond20 = phi i8* [ %15, %cond.true.16 ], [ %18, %cond.false.17 ]
  br label %cond.end.22

cond.false.21:                                    ; preds = %if.end
  %19 = load %struct._object*, %struct._object** %path.addr, align 8
  %20 = bitcast %struct._object* %19 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %20, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %21 = load i8*, i8** %any, align 8
  br label %cond.end.22

cond.end.22:                                      ; preds = %cond.false.21, %cond.end.19
  %cond23 = phi i8* [ %cond20, %cond.end.19 ], [ %21, %cond.false.21 ]
  %22 = load %struct._object*, %struct._object** %path.addr, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %23, i32 0, i32 1
  %24 = load i64, i64* %length, align 8
  %sub = sub i64 %24, 1
  %call24 = call %struct._object* @PyUnicode_FromKindAndData(i32 %bf.clear4, i8* %cond23, i64 %sub)
  store %struct._object* %call24, %struct._object** %stripped, align 8
  %25 = load %struct._object*, %struct._object** %stripped, align 8
  %cmp25 = icmp eq %struct._object* %25, null
  br i1 %cmp25, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %cond.end.22
  store i64 -1, i64* %retval
  br label %return

if.end.27:                                        ; preds = %cond.end.22
  %26 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %files = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %26, i32 0, i32 3
  %27 = load %struct._object*, %struct._object** %files, align 8
  %28 = load %struct._object*, %struct._object** %stripped, align 8
  %call28 = call %struct._object* @PyDict_GetItem(%struct._object* %27, %struct._object* %28)
  store %struct._object* %call28, %struct._object** %toc_entry, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.27
  %29 = load %struct._object*, %struct._object** %stripped, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %31, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp29 = icmp ne i64 %dec, 0
  br i1 %cmp29, label %if.then.30, label %if.else

if.then.30:                                       ; preds = %do.body
  br label %if.end.31

if.else:                                          ; preds = %do.body
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %34(%struct._object* %35)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else, %if.then.30
  br label %do.end

do.end:                                           ; preds = %if.end.31
  %36 = load %struct._object*, %struct._object** %toc_entry, align 8
  %cmp32 = icmp ne %struct._object* %36, null
  br i1 %cmp32, label %land.lhs.true, label %if.else.45

land.lhs.true:                                    ; preds = %do.end
  %37 = load %struct._object*, %struct._object** %toc_entry, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 19
  %39 = load i64, i64* %tp_flags, align 8
  %and = and i64 %39, 67108864
  %cmp34 = icmp ne i64 %and, 0
  br i1 %cmp34, label %land.lhs.true.35, label %if.else.45

land.lhs.true.35:                                 ; preds = %land.lhs.true
  %40 = load %struct._object*, %struct._object** %toc_entry, align 8
  %call36 = call i64 @PyTuple_Size(%struct._object* %40)
  %cmp37 = icmp eq i64 %call36, 8
  br i1 %cmp37, label %if.then.38, label %if.else.45

if.then.38:                                       ; preds = %land.lhs.true.35
  %41 = load %struct._object*, %struct._object** %toc_entry, align 8
  %call39 = call %struct._object* @PyTuple_GetItem(%struct._object* %41, i64 5)
  %call40 = call i64 @PyLong_AsLong(%struct._object* %call39)
  %conv = trunc i64 %call40 to i32
  store i32 %conv, i32* %time, align 4
  %42 = load %struct._object*, %struct._object** %toc_entry, align 8
  %call41 = call %struct._object* @PyTuple_GetItem(%struct._object* %42, i64 6)
  %call42 = call i64 @PyLong_AsLong(%struct._object* %call41)
  %conv43 = trunc i64 %call42 to i32
  store i32 %conv43, i32* %date, align 4
  %43 = load i32, i32* %time, align 4
  %44 = load i32, i32* %date, align 4
  %call44 = call i64 @parse_dostime(i32 %43, i32 %44)
  store i64 %call44, i64* %mtime, align 8
  br label %if.end.46

if.else.45:                                       ; preds = %land.lhs.true.35, %land.lhs.true, %do.end
  store i64 0, i64* %mtime, align 8
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.45, %if.then.38
  %45 = load i64, i64* %mtime, align 8
  store i64 %45, i64* %retval
  br label %return

return:                                           ; preds = %if.end.46, %if.then.26, %if.then
  %46 = load i64, i64* %retval
  ret i64 %46
}

declare %struct._object* @PyErr_Occurred() #1

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._zipimporter* %self, %struct._zipimporter** %self.addr, align 8
  store i32 %ispackage, i32* %ispackage.addr, align 4
  store i32 %isbytecode, i32* %isbytecode.addr, align 4
  store i64 %mtime, i64* %mtime.addr, align 8
  store %struct._object* %toc_entry, %struct._object** %toc_entry.addr, align 8
  %0 = load %struct._zipimporter*, %struct._zipimporter** %self.addr, align 8
  %archive = getelementptr inbounds %struct._zipimporter, %struct._zipimporter* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %archive, align 8
  %2 = load %struct._object*, %struct._object** %toc_entry.addr, align 8
  %call = call %struct._object* @get_data(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call, %struct._object** %data, align 8
  %3 = load %struct._object*, %struct._object** %data, align 8
  %cmp = icmp eq %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %toc_entry.addr, align 8
  %call1 = call %struct._object* @PyTuple_GetItem(%struct._object* %4, i64 0)
  store %struct._object* %call1, %struct._object** %modpath, align 8
  %5 = load i32, i32* %isbytecode.addr, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %modpath, align 8
  %7 = load %struct._object*, %struct._object** %data, align 8
  %8 = load i64, i64* %mtime.addr, align 8
  %call3 = call %struct._object* @unmarshal_code(%struct._object* %6, %struct._object* %7, i64 %8)
  store %struct._object* %call3, %struct._object** %code, align 8
  br label %if.end.5

if.else:                                          ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %modpath, align 8
  %10 = load %struct._object*, %struct._object** %data, align 8
  %call4 = call %struct._object* @compile_source(%struct._object* %9, %struct._object* %10)
  store %struct._object* %call4, %struct._object** %code, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp6 = icmp ne i64 %dec, 0
  br i1 %cmp6, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %do.body
  br label %if.end.9

if.else.8:                                        ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.8, %if.then.7
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %18 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %18, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i64 @PyTuple_Size(%struct._object*) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @parse_dostime(i32 %dostime, i32 %dosdate) #0 {
entry:
  %dostime.addr = alloca i32, align 4
  %dosdate.addr = alloca i32, align 4
  %stm = alloca %struct.tm, align 8
  store i32 %dostime, i32* %dostime.addr, align 4
  store i32 %dosdate, i32* %dosdate.addr, align 4
  %0 = bitcast %struct.tm* %stm to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 56, i32 1, i1 false)
  %1 = load i32, i32* %dostime.addr, align 4
  %and = and i32 %1, 31
  %mul = mul i32 %and, 2
  %tm_sec = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 0
  store i32 %mul, i32* %tm_sec, align 4
  %2 = load i32, i32* %dostime.addr, align 4
  %shr = ashr i32 %2, 5
  %and1 = and i32 %shr, 63
  %tm_min = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 1
  store i32 %and1, i32* %tm_min, align 4
  %3 = load i32, i32* %dostime.addr, align 4
  %shr2 = ashr i32 %3, 11
  %and3 = and i32 %shr2, 31
  %tm_hour = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 2
  store i32 %and3, i32* %tm_hour, align 4
  %4 = load i32, i32* %dosdate.addr, align 4
  %and4 = and i32 %4, 31
  %tm_mday = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 3
  store i32 %and4, i32* %tm_mday, align 4
  %5 = load i32, i32* %dosdate.addr, align 4
  %shr5 = ashr i32 %5, 5
  %and6 = and i32 %shr5, 15
  %sub = sub i32 %and6, 1
  %tm_mon = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 4
  store i32 %sub, i32* %tm_mon, align 4
  %6 = load i32, i32* %dosdate.addr, align 4
  %shr7 = ashr i32 %6, 9
  %and8 = and i32 %shr7, 127
  %add = add i32 %and8, 80
  %tm_year = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 5
  store i32 %add, i32* %tm_year, align 4
  %tm_isdst = getelementptr inbounds %struct.tm, %struct.tm* %stm, i32 0, i32 8
  store i32 -1, i32* %tm_isdst, align 4
  %call = call i64 @mktime(%struct.tm* %stm) #2
  ret i64 %call
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind
declare i64 @mktime(%struct.tm*) #3

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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  %_py_decref_tmp116 = alloca %struct._object*, align 8
  store %struct._object* %archive, %struct._object** %archive.addr, align 8
  store %struct._object* %toc_entry, %struct._object** %toc_entry.addr, align 8
  store %struct._object* null, %struct._object** %data, align 8
  store i64 0, i64* %bytes_read, align 8
  %0 = load %struct._object*, %struct._object** %toc_entry.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), %struct._object** %datapath, i64* %compress, i64* %data_size, i64* %file_size, i64* %file_offset, i64* %time, i64* %date, i64* %crc)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call1 = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %call1, %struct._IO_FILE** %fp, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %tobool2 = icmp ne %struct._IO_FILE* %2, null
  br i1 %tobool2, label %if.end.9, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_Occurred()
  %tobool5 = icmp ne %struct._object* %call4, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.then.3
  %3 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  %4 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0), %struct._object* %4)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %6 = load i64, i64* %file_offset, align 8
  %call10 = call i32 @fseek(%struct._IO_FILE* %5, i64 %6, i32 0)
  %cmp = icmp eq i32 %call10, -1
  br i1 %cmp, label %if.then.11, label %if.end.14

if.then.11:                                       ; preds = %if.end.9
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i32 @fclose(%struct._IO_FILE* %7)
  %8 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %9 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %9)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.9
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %10)
  store i64 %call15, i64* %l, align 8
  %11 = load i64, i64* %l, align 8
  %cmp16 = icmp ne i64 %11, 67324752
  br i1 %cmp16, label %if.then.17, label %if.end.24

if.then.17:                                       ; preds = %if.end.14
  %call18 = call %struct._object* @PyErr_Occurred()
  %tobool19 = icmp ne %struct._object* %call18, null
  br i1 %tobool19, label %if.end.22, label %if.then.20

if.then.20:                                       ; preds = %if.then.17
  %12 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %13 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call21 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), %struct._object* %13)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.then.17
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call23 = call i32 @fclose(%struct._IO_FILE* %14)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.14
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %16 = load i64, i64* %file_offset, align 8
  %add = add i64 %16, 26
  %call25 = call i32 @fseek(%struct._IO_FILE* %15, i64 %add, i32 0)
  %cmp26 = icmp eq i32 %call25, -1
  br i1 %cmp26, label %if.then.27, label %if.end.30

if.then.27:                                       ; preds = %if.end.24
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call28 = call i32 @fclose(%struct._IO_FILE* %17)
  %18 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %19 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call29 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %19)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.24
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call31 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %20)
  %add32 = add i32 30, %call31
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call33 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %21)
  %add34 = add i32 %add32, %call33
  %conv = sext i32 %add34 to i64
  store i64 %conv, i64* %l, align 8
  %call35 = call %struct._object* @PyErr_Occurred()
  %tobool36 = icmp ne %struct._object* %call35, null
  br i1 %tobool36, label %if.then.37, label %if.end.39

if.then.37:                                       ; preds = %if.end.30
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call38 = call i32 @fclose(%struct._IO_FILE* %22)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.39:                                        ; preds = %if.end.30
  %23 = load i64, i64* %l, align 8
  %24 = load i64, i64* %file_offset, align 8
  %add40 = add i64 %24, %23
  store i64 %add40, i64* %file_offset, align 8
  %25 = load i64, i64* %compress, align 8
  %cmp41 = icmp eq i64 %25, 0
  br i1 %cmp41, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.39
  %26 = load i64, i64* %data_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.39
  %27 = load i64, i64* %data_size, align 8
  %add43 = add i64 %27, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %26, %cond.true ], [ %add43, %cond.false ]
  store i64 %cond, i64* %bytes_size, align 8
  %28 = load i64, i64* %bytes_size, align 8
  %cmp44 = icmp eq i64 %28, 0
  br i1 %cmp44, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %cond.end
  %29 = load i64, i64* %bytes_size, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %bytes_size, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.46, %cond.end
  %30 = load i64, i64* %bytes_size, align 8
  %call48 = call %struct._object* @PyBytes_FromStringAndSize(i8* null, i64 %30)
  store %struct._object* %call48, %struct._object** %raw_data, align 8
  %31 = load %struct._object*, %struct._object** %raw_data, align 8
  %cmp49 = icmp eq %struct._object* %31, null
  br i1 %cmp49, label %if.then.51, label %if.end.53

if.then.51:                                       ; preds = %if.end.47
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call52 = call i32 @fclose(%struct._IO_FILE* %32)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.47
  %33 = load %struct._object*, %struct._object** %raw_data, align 8
  %call54 = call i8* @PyBytes_AsString(%struct._object* %33)
  store i8* %call54, i8** %buf, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %35 = load i64, i64* %file_offset, align 8
  %call55 = call i32 @fseek(%struct._IO_FILE* %34, i64 %35, i32 0)
  store i32 %call55, i32* %err, align 4
  %36 = load i32, i32* %err, align 4
  %cmp56 = icmp eq i32 %36, 0
  br i1 %cmp56, label %if.then.58, label %if.else

if.then.58:                                       ; preds = %if.end.53
  %37 = load i8*, i8** %buf, align 8
  %38 = load i64, i64* %data_size, align 8
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call59 = call i64 @fread(i8* %37, i64 1, i64 %38, %struct._IO_FILE* %39)
  store i64 %call59, i64* %bytes_read, align 8
  br label %if.end.62

if.else:                                          ; preds = %if.end.53
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call60 = call i32 @fclose(%struct._IO_FILE* %40)
  %41 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %42 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call61 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %41, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %42)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.62:                                        ; preds = %if.then.58
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call63 = call i32 @fclose(%struct._IO_FILE* %43)
  %44 = load i32, i32* %err, align 4
  %tobool64 = icmp ne i32 %44, 0
  br i1 %tobool64, label %if.then.67, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.62
  %45 = load i64, i64* %bytes_read, align 8
  %46 = load i64, i64* %data_size, align 8
  %cmp65 = icmp ne i64 %45, %46
  br i1 %cmp65, label %if.then.67, label %if.end.73

if.then.67:                                       ; preds = %lor.lhs.false, %if.end.62
  %47 = load %struct._object*, %struct._object** @PyExc_IOError, align 8
  call void @PyErr_SetString(%struct._object* %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.then.67
  %48 = load %struct._object*, %struct._object** %raw_data, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %50, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp68 = icmp ne i64 %dec, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body
  br label %if.end.72

if.else.71:                                       ; preds = %do.body
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %53(%struct._object* %54)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end

do.end:                                           ; preds = %if.end.72
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.73:                                        ; preds = %lor.lhs.false
  %55 = load i64, i64* %compress, align 8
  %cmp74 = icmp ne i64 %55, 0
  br i1 %cmp74, label %if.then.76, label %if.end.78

if.then.76:                                       ; preds = %if.end.73
  %56 = load i64, i64* %data_size, align 8
  %57 = load i8*, i8** %buf, align 8
  %arrayidx = getelementptr i8, i8* %57, i64 %56
  store i8 90, i8* %arrayidx, align 1
  %58 = load i64, i64* %data_size, align 8
  %inc77 = add i64 %58, 1
  store i64 %inc77, i64* %data_size, align 8
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.76, %if.end.73
  %59 = load i64, i64* %data_size, align 8
  %60 = load i8*, i8** %buf, align 8
  %arrayidx79 = getelementptr i8, i8* %60, i64 %59
  store i8 0, i8* %arrayidx79, align 1
  %61 = load i64, i64* %compress, align 8
  %cmp80 = icmp eq i64 %61, 0
  br i1 %cmp80, label %if.then.82, label %if.end.96

if.then.82:                                       ; preds = %if.end.78
  %62 = load i8*, i8** %buf, align 8
  %63 = load i64, i64* %data_size, align 8
  %call83 = call %struct._object* @PyBytes_FromStringAndSize(i8* %62, i64 %63)
  store %struct._object* %call83, %struct._object** %data, align 8
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.82
  %64 = load %struct._object*, %struct._object** %raw_data, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp85, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %66, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94

if.else.91:                                       ; preds = %do.body.84
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %69(%struct._object* %70)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  %71 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %71, %struct._object** %retval
  br label %return

if.end.96:                                        ; preds = %if.end.78
  %call97 = call %struct._object* @get_decompress_func()
  store %struct._object* %call97, %struct._object** %decompress, align 8
  %72 = load %struct._object*, %struct._object** %decompress, align 8
  %cmp98 = icmp eq %struct._object* %72, null
  br i1 %cmp98, label %if.then.100, label %if.end.101

if.then.100:                                      ; preds = %if.end.96
  %73 = load %struct._object*, %struct._object** @ZipImportError, align 8
  call void @PyErr_SetString(%struct._object* %73, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.35, i32 0, i32 0))
  br label %error

if.end.101:                                       ; preds = %if.end.96
  %74 = load %struct._object*, %struct._object** %decompress, align 8
  %75 = load %struct._object*, %struct._object** %raw_data, align 8
  %call102 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.36, i32 0, i32 0), %struct._object* %75, i32 -15)
  store %struct._object* %call102, %struct._object** %data, align 8
  br label %do.body.103

do.body.103:                                      ; preds = %if.end.101
  %76 = load %struct._object*, %struct._object** %decompress, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp104, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %78, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113

if.else.110:                                      ; preds = %do.body.103
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %81(%struct._object* %82)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %error

error:                                            ; preds = %do.end.114, %if.then.100
  br label %do.body.115

do.body.115:                                      ; preds = %error
  %83 = load %struct._object*, %struct._object** %raw_data, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp116, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_refcnt117 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt117, align 8
  %dec118 = add i64 %85, -1
  store i64 %dec118, i64* %ob_refcnt117, align 8
  %cmp119 = icmp ne i64 %dec118, 0
  br i1 %cmp119, label %if.then.121, label %if.else.122

if.then.121:                                      ; preds = %do.body.115
  br label %if.end.125

if.else.122:                                      ; preds = %do.body.115
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  %ob_type123 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type123, align 8
  %tp_dealloc124 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc124, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp116, align 8
  call void %88(%struct._object* %89)
  br label %if.end.125

if.end.125:                                       ; preds = %if.else.122, %if.then.121
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  %90 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %90, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.126, %do.end.95, %do.end, %if.else, %if.then.51, %if.then.37, %if.then.27, %if.end.22, %if.then.11, %if.end.8, %if.then
  %91 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %91
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %pathname, %struct._object** %pathname.addr, align 8
  store %struct._object* %data, %struct._object** %data.addr, align 8
  store i64 %mtime, i64* %mtime.addr, align 8
  %0 = load %struct._object*, %struct._object** %data.addr, align 8
  %call = call i8* @PyBytes_AsString(%struct._object* %0)
  store i8* %call, i8** %buf, align 8
  %1 = load %struct._object*, %struct._object** %data.addr, align 8
  %call1 = call i64 @PyBytes_Size(%struct._object* %1)
  store i64 %call1, i64* %size, align 8
  %2 = load i64, i64* %size, align 8
  %cmp = icmp sle i64 %2, 9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct._object*, %struct._object** @ZipImportError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.42, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %buf, align 8
  %call2 = call i64 @get_long(i8* %4)
  %call3 = call i64 @PyImport_GetMagicNumber()
  %cmp4 = icmp ne i64 %call2, %call3
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.5
  %6 = load %struct._object*, %struct._object** %pathname.addr, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.43, i32 0, i32 0), %struct._object* %6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.6, %if.then.5
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %8 = load i64, i64* %mtime.addr, align 8
  %cmp9 = icmp ne i64 %8, 0
  br i1 %cmp9, label %land.lhs.true, label %if.end.18

land.lhs.true:                                    ; preds = %if.end.8
  %9 = load i8*, i8** %buf, align 8
  %add.ptr = getelementptr i8, i8* %9, i64 4
  %call10 = call i64 @get_long(i8* %add.ptr)
  %10 = load i64, i64* %mtime.addr, align 8
  %call11 = call i32 @eq_mtime(i64 %call10, i64 %10)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.18, label %if.then.13

if.then.13:                                       ; preds = %land.lhs.true
  %11 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool14 = icmp ne i32 %11, 0
  br i1 %tobool14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.then.13
  %12 = load %struct._object*, %struct._object** %pathname.addr, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.44, i32 0, i32 0), %struct._object* %12)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %if.then.13
  %13 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc17 = add i64 %13, 1
  store i64 %inc17, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %land.lhs.true, %if.end.8
  %14 = load i8*, i8** %buf, align 8
  %add.ptr19 = getelementptr i8, i8* %14, i64 12
  %15 = load i64, i64* %size, align 8
  %sub = sub i64 %15, 12
  %call20 = call %struct._object* @PyMarshal_ReadObjectFromString(i8* %add.ptr19, i64 %sub)
  store %struct._object* %call20, %struct._object** %code, align 8
  %16 = load %struct._object*, %struct._object** %code, align 8
  %cmp21 = icmp eq %struct._object* %16, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %17 = load %struct._object*, %struct._object** %code, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp24 = icmp eq %struct._typeobject* %18, @PyCode_Type
  br i1 %cmp24, label %if.end.31, label %if.then.25

if.then.25:                                       ; preds = %if.end.23
  br label %do.body

do.body:                                          ; preds = %if.then.25
  %19 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %21, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp26 = icmp ne i64 %dec, 0
  br i1 %cmp26, label %if.then.27, label %if.else

if.then.27:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %24(%struct._object* %25)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.27
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %27 = load %struct._object*, %struct._object** %pathname.addr, align 8
  %call30 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i32 0, i32 0), %struct._object* %27)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.end.23
  %28 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %do.end, %if.then.22, %if.end.16, %if.end.7, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
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
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp12 = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store %struct._object* %pathname, %struct._object** %pathname.addr, align 8
  store %struct._object* %source, %struct._object** %source.addr, align 8
  %0 = load %struct._object*, %struct._object** %pathname.addr, align 8
  %call = call %struct._object* @PyUnicode_EncodeFSDefault(%struct._object* %0)
  store %struct._object* %call, %struct._object** %pathbytes, align 8
  %1 = load %struct._object*, %struct._object** %pathbytes, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %source.addr, align 8
  %call1 = call %struct._object* @normalize_line_endings(%struct._object* %2)
  store %struct._object* %call1, %struct._object** %fixed_source, align 8
  %3 = load %struct._object*, %struct._object** %fixed_source, align 8
  %cmp2 = icmp eq %struct._object* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %pathbytes, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %11 = load %struct._object*, %struct._object** %fixed_source, align 8
  %call8 = call i8* @PyBytes_AsString(%struct._object* %11)
  %12 = load %struct._object*, %struct._object** %pathbytes, align 8
  %call9 = call i8* @PyBytes_AsString(%struct._object* %12)
  %call10 = call %struct._object* @Py_CompileStringExFlags(i8* %call8, i8* %call9, i32 257, %struct.PyCompilerFlags* null, i32 -1)
  store %struct._object* %call10, %struct._object** %code, align 8
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** %pathbytes, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp12, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_refcnt13 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt13, align 8
  %dec14 = add i64 %15, -1
  store i64 %dec14, i64* %ob_refcnt13, align 8
  %cmp15 = icmp ne i64 %dec14, 0
  br i1 %cmp15, label %if.then.16, label %if.else.17

if.then.16:                                       ; preds = %do.body.11
  br label %if.end.20

if.else.17:                                       ; preds = %do.body.11
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  %ob_type18 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type18, align 8
  %tp_dealloc19 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc19, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp12, align 8
  call void %18(%struct._object* %19)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else.17, %if.then.16
  br label %do.end.21

do.end.21:                                        ; preds = %if.end.20
  br label %do.body.22

do.body.22:                                       ; preds = %do.end.21
  %20 = load %struct._object*, %struct._object** %fixed_source, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp23, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %22, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %25(%struct._object* %26)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  %27 = load %struct._object*, %struct._object** %code, align 8
  store %struct._object* %27, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.32, %do.end, %if.then
  %28 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %28
}

declare %struct._IO_FILE* @_Py_fopen_obj(%struct._object*, i8*) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE*) #1

declare i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_decompress_func() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %zlib = alloca %struct._object*, align 8
  %decompress = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = load i32, i32* @get_decompress_func.importing_zlib, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* @get_decompress_func.importing_zlib, align 4
  %call = call %struct._object* @PyImport_ImportModuleNoBlock(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %zlib, align 8
  store i32 0, i32* @get_decompress_func.importing_zlib, align 4
  %1 = load %struct._object*, %struct._object** %zlib, align 8
  %cmp1 = icmp ne %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.else.7

if.then.2:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %zlib, align 8
  %call3 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %2, %struct._Py_Identifier* @get_decompress_func.PyId_decompress)
  store %struct._object* %call3, %struct._object** %decompress, align 8
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load %struct._object*, %struct._object** %zlib, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.8

if.else.7:                                        ; preds = %if.end
  call void @PyErr_Clear()
  store %struct._object* null, %struct._object** %decompress, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %do.end
  %10 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.8
  %11 = load %struct._object*, %struct._object** %zlib, align 8
  %cmp10 = icmp ne %struct._object* %11, null
  %cond = select i1 %cmp10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.41, i32 0, i32 0)
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0), i8* %cond)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.9, %if.end.8
  %12 = load %struct._object*, %struct._object** %decompress, align 8
  store %struct._object* %12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare %struct._object* @PyImport_ImportModuleNoBlock(i8*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare void @PyErr_Clear() #1

declare void @PySys_WriteStderr(i8*, ...) #1

declare i64 @PyBytes_Size(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i64 @get_long(i8* %buf) #0 {
entry:
  %buf.addr = alloca i8*, align 8
  %x = alloca i64, align 8
  store i8* %buf, i8** %buf.addr, align 8
  %0 = load i8*, i8** %buf.addr, align 8
  %arrayidx = getelementptr i8, i8* %0, i64 0
  %1 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %1 to i64
  store i64 %conv, i64* %x, align 8
  %2 = load i8*, i8** %buf.addr, align 8
  %arrayidx1 = getelementptr i8, i8* %2, i64 1
  %3 = load i8, i8* %arrayidx1, align 1
  %conv2 = zext i8 %3 to i64
  %shl = shl i64 %conv2, 8
  %4 = load i64, i64* %x, align 8
  %or = or i64 %4, %shl
  store i64 %or, i64* %x, align 8
  %5 = load i8*, i8** %buf.addr, align 8
  %arrayidx3 = getelementptr i8, i8* %5, i64 2
  %6 = load i8, i8* %arrayidx3, align 1
  %conv4 = zext i8 %6 to i64
  %shl5 = shl i64 %conv4, 16
  %7 = load i64, i64* %x, align 8
  %or6 = or i64 %7, %shl5
  store i64 %or6, i64* %x, align 8
  %8 = load i8*, i8** %buf.addr, align 8
  %arrayidx7 = getelementptr i8, i8* %8, i64 3
  %9 = load i8, i8* %arrayidx7, align 1
  %conv8 = zext i8 %9 to i64
  %shl9 = shl i64 %conv8, 24
  %10 = load i64, i64* %x, align 8
  %or10 = or i64 %10, %shl9
  store i64 %or10, i64* %x, align 8
  %11 = load i64, i64* %x, align 8
  %and = and i64 %11, 2147483648
  %sub = sub i64 0, %and
  %12 = load i64, i64* %x, align 8
  %or11 = or i64 %12, %sub
  store i64 %or11, i64* %x, align 8
  %13 = load i64, i64* %x, align 8
  ret i64 %13
}

declare i64 @PyImport_GetMagicNumber() #1

; Function Attrs: nounwind uwtable
define internal i32 @eq_mtime(i64 %t1, i64 %t2) #0 {
entry:
  %t1.addr = alloca i64, align 8
  %t2.addr = alloca i64, align 8
  %d = alloca i64, align 8
  store i64 %t1, i64* %t1.addr, align 8
  store i64 %t2, i64* %t2.addr, align 8
  %0 = load i64, i64* %t1.addr, align 8
  %1 = load i64, i64* %t2.addr, align 8
  %sub = sub i64 %0, %1
  store i64 %sub, i64* %d, align 8
  %2 = load i64, i64* %d, align 8
  %cmp = icmp slt i64 %2, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i64, i64* %d, align 8
  %sub1 = sub i64 0, %3
  store i64 %sub1, i64* %d, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i64, i64* %d, align 8
  %cmp2 = icmp sle i64 %4, 1
  %conv = zext i1 %cmp2 to i32
  ret i32 %conv
}

declare %struct._object* @PyMarshal_ReadObjectFromString(i8*, i64) #1

declare %struct._object* @PyUnicode_EncodeFSDefault(%struct._object*) #1

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
  store %struct._object* %source, %struct._object** %source.addr, align 8
  store i32 0, i32* %len, align 4
  %0 = load %struct._object*, %struct._object** %source.addr, align 8
  %call = call i8* @PyBytes_AsString(%struct._object* %0)
  store i8* %call, i8** %p, align 8
  %1 = load i8*, i8** %p, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyBytes_FromStringAndSize(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i64 2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %source.addr, align 8
  %call2 = call i64 @PyBytes_Size(%struct._object* %2)
  %add = add i64 %call2, 2
  %call3 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call3, i8** %buf, align 8
  %3 = load i8*, i8** %buf, align 8
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_MemoryError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.47, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %5 = load i8*, i8** %buf, align 8
  store i8* %5, i8** %q, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %6 = load i8*, i8** %p, align 8
  %7 = load i8, i8* %6, align 1
  %conv = sext i8 %7 to i32
  %cmp7 = icmp ne i32 %conv, 0
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i8*, i8** %p, align 8
  %9 = load i8, i8* %8, align 1
  %conv9 = sext i8 %9 to i32
  %cmp10 = icmp eq i32 %conv9, 13
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %for.body
  %10 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %q, align 8
  store i8 10, i8* %10, align 1
  %11 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr i8, i8* %11, i64 1
  %12 = load i8, i8* %add.ptr, align 1
  %conv13 = sext i8 %12 to i32
  %cmp14 = icmp eq i32 %conv13, 10
  br i1 %cmp14, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.then.12
  %13 = load i8*, i8** %p, align 8
  %incdec.ptr17 = getelementptr i8, i8* %13, i32 1
  store i8* %incdec.ptr17, i8** %p, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.16, %if.then.12
  br label %if.end.20

if.else:                                          ; preds = %for.body
  %14 = load i8*, i8** %p, align 8
  %15 = load i8, i8* %14, align 1
  %16 = load i8*, i8** %q, align 8
  %incdec.ptr19 = getelementptr i8, i8* %16, i32 1
  store i8* %incdec.ptr19, i8** %q, align 8
  store i8 %15, i8* %16, align 1
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.18
  %17 = load i32, i32* %len, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.20
  %18 = load i8*, i8** %p, align 8
  %incdec.ptr21 = getelementptr i8, i8* %18, i32 1
  store i8* %incdec.ptr21, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8*, i8** %q, align 8
  %incdec.ptr22 = getelementptr i8, i8* %19, i32 1
  store i8* %incdec.ptr22, i8** %q, align 8
  store i8 10, i8* %19, align 1
  %20 = load i8*, i8** %q, align 8
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %buf, align 8
  %22 = load i32, i32* %len, align 4
  %add23 = add i32 %22, 2
  %conv24 = sext i32 %add23 to i64
  %call25 = call %struct._object* @PyBytes_FromStringAndSize(i8* %21, i64 %conv24)
  store %struct._object* %call25, %struct._object** %fixed_source, align 8
  %23 = load i8*, i8** %buf, align 8
  call void @PyMem_Free(i8* %23)
  %24 = load %struct._object*, %struct._object** %fixed_source, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

declare %struct._object* @Py_CompileStringExFlags(i8*, i8*, i32, %struct.PyCompilerFlags*, i32) #1

declare i64 @PyUnicode_Tailmatch(%struct._object*, %struct._object*, i64, i64, i32) #1

declare %struct._object* @PyErr_SetFromErrnoWithFilenameObject(%struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_FromStringAndSize(i8*, i64) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare i32 @_PyArg_NoKeywords(i8*, %struct._object*) #1

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #1

declare i32 @_Py_stat(%struct._object*, %struct.stat*) #1

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
  %t = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp198 = alloca %struct._object*, align 8
  %_py_xdecref_tmp213 = alloca %struct._object*, align 8
  %_py_decref_tmp219 = alloca %struct._object*, align 8
  %_py_xdecref_tmp236 = alloca %struct._object*, align 8
  %_py_decref_tmp242 = alloca %struct._object*, align 8
  %_py_xdecref_tmp257 = alloca %struct._object*, align 8
  %_py_decref_tmp263 = alloca %struct._object*, align 8
  store %struct._object* %archive, %struct._object** %archive.addr, align 8
  store %struct._object* null, %struct._object** %files, align 8
  store %struct._object* null, %struct._object** %nameobj, align 8
  %0 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call = call %struct._IO_FILE* @_Py_fopen_obj(%struct._object* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i32 0, i32 0))
  store %struct._IO_FILE* %call, %struct._IO_FILE** %fp, align 8
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call1, null
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %3 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call3 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.63, i32 0, i32 0), %struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then.2, %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call5 = call i32 @fseek(%struct._IO_FILE* %4, i64 -22, i32 2)
  %cmp6 = icmp eq i32 %call5, -1
  br i1 %cmp6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end.4
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call8 = call i32 @fclose(%struct._IO_FILE* %5)
  %6 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %7 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %7)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.4
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call11 = call i64 @ftell(%struct._IO_FILE* %8)
  store i64 %call11, i64* %header_position, align 8
  %arraydecay = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call12 = call i64 @fread(i8* %arraydecay, i64 1, i64 22, %struct._IO_FILE* %9)
  %cmp13 = icmp ne i64 %call12, 22
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.10
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call15 = call i32 @fclose(%struct._IO_FILE* %10)
  %11 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %12 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call16 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %12)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.10
  %arraydecay18 = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0
  %call19 = call i64 @get_long(i8* %arraydecay18)
  %cmp20 = icmp ne i64 %call19, 101010256
  br i1 %cmp20, label %if.then.21, label %if.end.24

if.then.21:                                       ; preds = %if.end.17
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call22 = call i32 @fclose(%struct._IO_FILE* %13)
  %14 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %15 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call23 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.64, i32 0, i32 0), %struct._object* %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  %arraydecay25 = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0
  %add.ptr = getelementptr i8, i8* %arraydecay25, i64 12
  %call26 = call i64 @get_long(i8* %add.ptr)
  store i64 %call26, i64* %header_size, align 8
  %arraydecay27 = getelementptr inbounds [22 x i8], [22 x i8]* %endof_central_dir, i32 0, i32 0
  %add.ptr28 = getelementptr i8, i8* %arraydecay27, i64 16
  %call29 = call i64 @get_long(i8* %add.ptr28)
  store i64 %call29, i64* %header_offset, align 8
  %16 = load i64, i64* %header_position, align 8
  %17 = load i64, i64* %header_offset, align 8
  %sub = sub i64 %16, %17
  %18 = load i64, i64* %header_size, align 8
  %sub30 = sub i64 %sub, %18
  store i64 %sub30, i64* %arc_offset, align 8
  %19 = load i64, i64* %arc_offset, align 8
  %20 = load i64, i64* %header_offset, align 8
  %add = add i64 %20, %19
  store i64 %add, i64* %header_offset, align 8
  %call31 = call %struct._object* @PyDict_New()
  store %struct._object* %call31, %struct._object** %files, align 8
  %21 = load %struct._object*, %struct._object** %files, align 8
  %cmp32 = icmp eq %struct._object* %21, null
  br i1 %cmp32, label %if.then.33, label %if.end.34

if.then.33:                                       ; preds = %if.end.24
  br label %error

if.end.34:                                        ; preds = %if.end.24
  store i64 0, i64* %count, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %23 = load i64, i64* %header_offset, align 8
  %call35 = call i32 @fseek(%struct._IO_FILE* %22, i64 %23, i32 0)
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.34
  br label %file_error

if.end.38:                                        ; preds = %if.end.34
  br label %for.cond

for.cond:                                         ; preds = %if.end.183, %if.end.38
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call39 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %24)
  store i64 %call39, i64* %l, align 8
  %25 = load i64, i64* %l, align 8
  %cmp40 = icmp eq i64 %25, -1
  br i1 %cmp40, label %land.lhs.true, label %if.end.44

land.lhs.true:                                    ; preds = %for.cond
  %call41 = call %struct._object* @PyErr_Occurred()
  %tobool42 = icmp ne %struct._object* %call41, null
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %land.lhs.true
  br label %error

if.end.44:                                        ; preds = %land.lhs.true, %for.cond
  %26 = load i64, i64* %l, align 8
  %cmp45 = icmp ne i64 %26, 33639248
  br i1 %cmp45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.end.44
  br label %for.end.185

if.end.47:                                        ; preds = %if.end.44
  %arraydecay48 = getelementptr inbounds [8 x i8], [8 x i8]* %dummy, i32 0, i32 0
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call49 = call i64 @fread(i8* %arraydecay48, i64 1, i64 4, %struct._IO_FILE* %27)
  %cmp50 = icmp ne i64 %call49, 4
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.47
  br label %file_error

if.end.52:                                        ; preds = %if.end.47
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call53 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %28)
  %conv = trunc i32 %call53 to i16
  store i16 %conv, i16* %flags, align 2
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call54 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %29)
  %conv55 = trunc i32 %call54 to i16
  store i16 %conv55, i16* %compress, align 2
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call56 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %30)
  %conv57 = trunc i32 %call56 to i16
  store i16 %conv57, i16* %time, align 2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call58 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %31)
  %conv59 = trunc i32 %call58 to i16
  store i16 %conv59, i16* %date, align 2
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call60 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %32)
  store i64 %call60, i64* %crc, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call61 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %33)
  store i64 %call61, i64* %data_size, align 8
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call62 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %34)
  store i64 %call62, i64* %file_size, align 8
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call63 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %35)
  %conv64 = trunc i32 %call63 to i16
  store i16 %conv64, i16* %name_size, align 2
  %36 = load i16, i16* %name_size, align 2
  %conv65 = sext i16 %36 to i32
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call66 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %37)
  %add67 = add i32 %conv65, %call66
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call68 = call i32 @PyMarshal_ReadShortFromFile(%struct._IO_FILE* %38)
  %add69 = add i32 %add67, %call68
  %conv70 = sext i32 %add69 to i64
  store i64 %conv70, i64* %header_size, align 8
  %arraydecay71 = getelementptr inbounds [8 x i8], [8 x i8]* %dummy, i32 0, i32 0
  %39 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call72 = call i64 @fread(i8* %arraydecay71, i64 1, i64 8, %struct._IO_FILE* %39)
  %cmp73 = icmp ne i64 %call72, 8
  br i1 %cmp73, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %if.end.52
  br label %file_error

if.end.76:                                        ; preds = %if.end.52
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call77 = call i64 @PyMarshal_ReadLongFromFile(%struct._IO_FILE* %40)
  %41 = load i64, i64* %arc_offset, align 8
  %add78 = add i64 %call77, %41
  store i64 %add78, i64* %file_offset, align 8
  %call79 = call %struct._object* @PyErr_Occurred()
  %tobool80 = icmp ne %struct._object* %call79, null
  br i1 %tobool80, label %if.then.81, label %if.end.82

if.then.81:                                       ; preds = %if.end.76
  br label %error

if.end.82:                                        ; preds = %if.end.76
  %42 = load i16, i16* %name_size, align 2
  %conv83 = sext i16 %42 to i32
  %cmp84 = icmp sgt i32 %conv83, 4096
  br i1 %cmp84, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.82
  store i16 4096, i16* %name_size, align 2
  br label %if.end.87

if.end.87:                                        ; preds = %if.then.86, %if.end.82
  %arraydecay88 = getelementptr inbounds [4101 x i8], [4101 x i8]* %name, i32 0, i32 0
  store i8* %arraydecay88, i8** %p, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.89

for.cond.89:                                      ; preds = %for.inc, %if.end.87
  %43 = load i64, i64* %i, align 8
  %44 = load i16, i16* %name_size, align 2
  %conv90 = sext i16 %44 to i64
  %cmp91 = icmp slt i64 %43, %conv90
  br i1 %cmp91, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond.89
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call93 = call i32 @_IO_getc(%struct._IO_FILE* %45)
  %conv94 = trunc i32 %call93 to i8
  %46 = load i8*, i8** %p, align 8
  store i8 %conv94, i8* %46, align 1
  %47 = load i8*, i8** %p, align 8
  %48 = load i8, i8* %47, align 1
  %conv95 = sext i8 %48 to i32
  %cmp96 = icmp eq i32 %conv95, 47
  br i1 %cmp96, label %if.then.98, label %if.end.99

if.then.98:                                       ; preds = %for.body
  %49 = load i8*, i8** %p, align 8
  store i8 47, i8* %49, align 1
  br label %if.end.99

if.end.99:                                        ; preds = %if.then.98, %for.body
  %50 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %50, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.99
  %51 = load i64, i64* %i, align 8
  %inc = add i64 %51, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.89

for.end:                                          ; preds = %for.cond.89
  %52 = load i8*, i8** %p, align 8
  store i8 0, i8* %52, align 1
  br label %for.cond.100

for.cond.100:                                     ; preds = %for.inc.109, %for.end
  %53 = load i64, i64* %i, align 8
  %54 = load i64, i64* %header_size, align 8
  %cmp101 = icmp slt i64 %53, %54
  br i1 %cmp101, label %for.body.103, label %for.end.111

for.body.103:                                     ; preds = %for.cond.100
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call104 = call i32 @_IO_getc(%struct._IO_FILE* %55)
  %cmp105 = icmp eq i32 %call104, -1
  br i1 %cmp105, label %if.then.107, label %if.end.108

if.then.107:                                      ; preds = %for.body.103
  br label %file_error

if.end.108:                                       ; preds = %for.body.103
  br label %for.inc.109

for.inc.109:                                      ; preds = %if.end.108
  %56 = load i64, i64* %i, align 8
  %inc110 = add i64 %56, 1
  store i64 %inc110, i64* %i, align 8
  br label %for.cond.100

for.end.111:                                      ; preds = %for.cond.100
  store i32 0, i32* %bootstrap, align 4
  %57 = load i16, i16* %flags, align 2
  %conv112 = zext i16 %57 to i32
  %and = and i32 %conv112, 2048
  %tobool113 = icmp ne i32 %and, 0
  br i1 %tobool113, label %if.then.114, label %if.else

if.then.114:                                      ; preds = %for.end.111
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8** %charset, align 8
  br label %if.end.122

if.else:                                          ; preds = %for.end.111
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %58 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %58, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %59 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %60 = bitcast %struct._Py_atomic_address* %59 to i8*
  %61 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %60, i32 %61)
  %62 = load i32, i32* %order, align 4
  switch i32 %62, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.else, %if.else, %if.else
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %63 = load i8**, i8*** %volatile_data, align 8
  %64 = load volatile i8*, i8** %63, align 8
  store i8* %64, i8** %result, align 8
  %65 = load i32, i32* %order, align 4
  switch i32 %65, label %sw.default.116 [
    i32 1, label %sw.bb.115
    i32 3, label %sw.bb.115
    i32 4, label %sw.bb.115
  ]

sw.bb.115:                                        ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.117

sw.default.116:                                   ; preds = %sw.epilog
  br label %sw.epilog.117

sw.epilog.117:                                    ; preds = %sw.default.116, %sw.bb.115
  %66 = load i8*, i8** %result, align 8
  store i8* %66, i8** %tmp
  %67 = load i8*, i8** %tmp
  %68 = bitcast i8* %67 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %68, i32 0, i32 2
  %69 = load %struct._is*, %struct._is** %interp, align 8
  %codecs_initialized = getelementptr inbounds %struct._is, %struct._is* %69, i32 0, i32 10
  %70 = load i32, i32* %codecs_initialized, align 4
  %tobool118 = icmp ne i32 %70, 0
  br i1 %tobool118, label %if.else.120, label %if.then.119

if.then.119:                                      ; preds = %sw.epilog.117
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8** %charset, align 8
  store i32 1, i32* %bootstrap, align 4
  br label %if.end.121

if.else.120:                                      ; preds = %sw.epilog.117
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8** %charset, align 8
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.120, %if.then.119
  br label %if.end.122

if.end.122:                                       ; preds = %if.end.121, %if.then.114
  %arraydecay123 = getelementptr inbounds [4101 x i8], [4101 x i8]* %name, i32 0, i32 0
  %71 = load i16, i16* %name_size, align 2
  %conv124 = sext i16 %71 to i64
  %72 = load i8*, i8** %charset, align 8
  %call125 = call %struct._object* @PyUnicode_Decode(i8* %arraydecay123, i64 %conv124, i8* %72, i8* null)
  store %struct._object* %call125, %struct._object** %nameobj, align 8
  %73 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp126 = icmp eq %struct._object* %73, null
  br i1 %cmp126, label %if.then.128, label %if.end.133

if.then.128:                                      ; preds = %if.end.122
  %74 = load i32, i32* %bootstrap, align 4
  %tobool129 = icmp ne i32 %74, 0
  br i1 %tobool129, label %if.then.130, label %if.end.132

if.then.130:                                      ; preds = %if.then.128
  %75 = load %struct._object*, %struct._object** @PyExc_NotImplementedError, align 8
  %call131 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %75, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.68, i32 0, i32 0), i32 3, i32 4)
  br label %if.end.132

if.end.132:                                       ; preds = %if.then.130, %if.then.128
  br label %error

if.end.133:                                       ; preds = %if.end.122
  %76 = load %struct._object*, %struct._object** %nameobj, align 8
  %77 = bitcast %struct._object* %76 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %77, i32 0, i32 3
  %78 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %78, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool134 = icmp ne i32 %bf.clear, 0
  br i1 %tobool134, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.133
  br label %cond.end

cond.false:                                       ; preds = %if.end.133
  %79 = load %struct._object*, %struct._object** %nameobj, align 8
  %call135 = call i32 @_PyUnicode_Ready(%struct._object* %79)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call135, %cond.false ]
  %cmp136 = icmp eq i32 %cond, -1
  br i1 %cmp136, label %if.then.138, label %if.end.139

if.then.138:                                      ; preds = %cond.end
  br label %error

if.end.139:                                       ; preds = %cond.end
  %80 = load %struct._object*, %struct._object** %archive.addr, align 8
  %81 = load %struct._object*, %struct._object** %nameobj, align 8
  %call140 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), %struct._object* %80, i32 47, %struct._object* %81)
  store %struct._object* %call140, %struct._object** %path, align 8
  %82 = load %struct._object*, %struct._object** %path, align 8
  %cmp141 = icmp eq %struct._object* %82, null
  br i1 %cmp141, label %if.then.143, label %if.end.144

if.then.143:                                      ; preds = %if.end.139
  br label %error

if.end.144:                                       ; preds = %if.end.139
  %83 = load %struct._object*, %struct._object** %path, align 8
  %84 = load i16, i16* %compress, align 2
  %conv145 = sext i16 %84 to i32
  %85 = load i64, i64* %data_size, align 8
  %86 = load i64, i64* %file_size, align 8
  %87 = load i64, i64* %file_offset, align 8
  %88 = load i16, i16* %time, align 2
  %conv146 = sext i16 %88 to i32
  %89 = load i16, i16* %date, align 2
  %conv147 = sext i16 %89 to i32
  %90 = load i64, i64* %crc, align 8
  %call148 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.70, i32 0, i32 0), %struct._object* %83, i32 %conv145, i64 %85, i64 %86, i64 %87, i32 %conv146, i32 %conv147, i64 %90)
  store %struct._object* %call148, %struct._object** %t, align 8
  %91 = load %struct._object*, %struct._object** %t, align 8
  %cmp149 = icmp eq %struct._object* %91, null
  br i1 %cmp149, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.144
  br label %error

if.end.152:                                       ; preds = %if.end.144
  %92 = load %struct._object*, %struct._object** %files, align 8
  %93 = load %struct._object*, %struct._object** %nameobj, align 8
  %94 = load %struct._object*, %struct._object** %t, align 8
  %call153 = call i32 @PyDict_SetItem(%struct._object* %92, %struct._object* %93, %struct._object* %94)
  store i32 %call153, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.152
  %95 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %95, %struct._object** %_py_tmp, align 8
  %96 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp155 = icmp ne %struct._object* %96, null
  br i1 %cmp155, label %if.then.157, label %if.end.165

if.then.157:                                      ; preds = %do.body
  store %struct._object* null, %struct._object** %nameobj, align 8
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %97 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %99, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp160 = icmp ne i64 %dec, 0
  br i1 %cmp160, label %if.then.162, label %if.else.163

if.then.162:                                      ; preds = %do.body.158
  br label %if.end.164

if.else.163:                                      ; preds = %do.body.158
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %102(%struct._object* %103)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.163, %if.then.162
  br label %do.end

do.end:                                           ; preds = %if.end.164
  br label %if.end.165

if.end.165:                                       ; preds = %do.end, %do.body
  br label %do.end.166

do.end.166:                                       ; preds = %if.end.165
  br label %do.body.167

do.body.167:                                      ; preds = %do.end.166
  %104 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp169, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %106, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.174, label %if.else.175

if.then.174:                                      ; preds = %do.body.167
  br label %if.end.178

if.else.175:                                      ; preds = %do.body.167
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type176 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type176, align 8
  %tp_dealloc177 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc177, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %109(%struct._object* %110)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.175, %if.then.174
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  %111 = load i32, i32* %err, align 4
  %cmp180 = icmp ne i32 %111, 0
  br i1 %cmp180, label %if.then.182, label %if.end.183

if.then.182:                                      ; preds = %do.end.179
  br label %error

if.end.183:                                       ; preds = %do.end.179
  %112 = load i64, i64* %count, align 8
  %inc184 = add i64 %112, 1
  store i64 %inc184, i64* %count, align 8
  br label %for.cond

for.end.185:                                      ; preds = %if.then.46
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call186 = call i32 @fclose(%struct._IO_FILE* %113)
  %114 = load i32, i32* @Py_VerboseFlag, align 4
  %tobool187 = icmp ne i32 %114, 0
  br i1 %tobool187, label %if.then.188, label %if.end.189

if.then.188:                                      ; preds = %for.end.185
  %115 = load i64, i64* %count, align 8
  %116 = load %struct._object*, %struct._object** %archive.addr, align 8
  call void (i8*, ...) @PySys_FormatStderr(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.71, i32 0, i32 0), i64 %115, %struct._object* %116)
  br label %if.end.189

if.end.189:                                       ; preds = %if.then.188, %for.end.185
  %117 = load %struct._object*, %struct._object** %files, align 8
  store %struct._object* %117, %struct._object** %retval
  br label %return

file_error:                                       ; preds = %if.then.107, %if.then.75, %if.then.51, %if.then.37
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call190 = call i32 @fclose(%struct._IO_FILE* %118)
  br label %do.body.191

do.body.191:                                      ; preds = %file_error
  %119 = load %struct._object*, %struct._object** %files, align 8
  store %struct._object* %119, %struct._object** %_py_xdecref_tmp, align 8
  %120 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp193 = icmp ne %struct._object* %120, null
  br i1 %cmp193, label %if.then.195, label %if.end.209

if.then.195:                                      ; preds = %do.body.191
  br label %do.body.196

do.body.196:                                      ; preds = %if.then.195
  %121 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %121, %struct._object** %_py_decref_tmp198, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_refcnt199 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 0
  %123 = load i64, i64* %ob_refcnt199, align 8
  %dec200 = add i64 %123, -1
  store i64 %dec200, i64* %ob_refcnt199, align 8
  %cmp201 = icmp ne i64 %dec200, 0
  br i1 %cmp201, label %if.then.203, label %if.else.204

if.then.203:                                      ; preds = %do.body.196
  br label %if.end.207

if.else.204:                                      ; preds = %do.body.196
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  %ob_type205 = getelementptr inbounds %struct._object, %struct._object* %124, i32 0, i32 1
  %125 = load %struct._typeobject*, %struct._typeobject** %ob_type205, align 8
  %tp_dealloc206 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %125, i32 0, i32 4
  %126 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc206, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp198, align 8
  call void %126(%struct._object* %127)
  br label %if.end.207

if.end.207:                                       ; preds = %if.else.204, %if.then.203
  br label %do.end.208

do.end.208:                                       ; preds = %if.end.207
  br label %if.end.209

if.end.209:                                       ; preds = %do.end.208, %do.body.191
  br label %do.end.210

do.end.210:                                       ; preds = %if.end.209
  br label %do.body.211

do.body.211:                                      ; preds = %do.end.210
  %128 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %128, %struct._object** %_py_xdecref_tmp213, align 8
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp213, align 8
  %cmp214 = icmp ne %struct._object* %129, null
  br i1 %cmp214, label %if.then.216, label %if.end.230

if.then.216:                                      ; preds = %do.body.211
  br label %do.body.217

do.body.217:                                      ; preds = %if.then.216
  %130 = load %struct._object*, %struct._object** %_py_xdecref_tmp213, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp219, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  %ob_refcnt220 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt220, align 8
  %dec221 = add i64 %132, -1
  store i64 %dec221, i64* %ob_refcnt220, align 8
  %cmp222 = icmp ne i64 %dec221, 0
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %do.body.217
  br label %if.end.228

if.else.225:                                      ; preds = %do.body.217
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  %ob_type226 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type226, align 8
  %tp_dealloc227 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc227, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  call void %135(%struct._object* %136)
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.225, %if.then.224
  br label %do.end.229

do.end.229:                                       ; preds = %if.end.228
  br label %if.end.230

if.end.230:                                       ; preds = %do.end.229, %do.body.211
  br label %do.end.231

do.end.231:                                       ; preds = %if.end.230
  %137 = load %struct._object*, %struct._object** @ZipImportError, align 8
  %138 = load %struct._object*, %struct._object** %archive.addr, align 8
  %call232 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %137, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i32 0, i32 0), %struct._object* %138)
  store %struct._object* null, %struct._object** %retval
  br label %return

error:                                            ; preds = %if.then.182, %if.then.151, %if.then.143, %if.then.138, %if.end.132, %if.then.81, %if.then.43, %if.then.33
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %call233 = call i32 @fclose(%struct._IO_FILE* %139)
  br label %do.body.234

do.body.234:                                      ; preds = %error
  %140 = load %struct._object*, %struct._object** %files, align 8
  store %struct._object* %140, %struct._object** %_py_xdecref_tmp236, align 8
  %141 = load %struct._object*, %struct._object** %_py_xdecref_tmp236, align 8
  %cmp237 = icmp ne %struct._object* %141, null
  br i1 %cmp237, label %if.then.239, label %if.end.253

if.then.239:                                      ; preds = %do.body.234
  br label %do.body.240

do.body.240:                                      ; preds = %if.then.239
  %142 = load %struct._object*, %struct._object** %_py_xdecref_tmp236, align 8
  store %struct._object* %142, %struct._object** %_py_decref_tmp242, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_refcnt243 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 0
  %144 = load i64, i64* %ob_refcnt243, align 8
  %dec244 = add i64 %144, -1
  store i64 %dec244, i64* %ob_refcnt243, align 8
  %cmp245 = icmp ne i64 %dec244, 0
  br i1 %cmp245, label %if.then.247, label %if.else.248

if.then.247:                                      ; preds = %do.body.240
  br label %if.end.251

if.else.248:                                      ; preds = %do.body.240
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_type249 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 1
  %146 = load %struct._typeobject*, %struct._typeobject** %ob_type249, align 8
  %tp_dealloc250 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %146, i32 0, i32 4
  %147 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc250, align 8
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  call void %147(%struct._object* %148)
  br label %if.end.251

if.end.251:                                       ; preds = %if.else.248, %if.then.247
  br label %do.end.252

do.end.252:                                       ; preds = %if.end.251
  br label %if.end.253

if.end.253:                                       ; preds = %do.end.252, %do.body.234
  br label %do.end.254

do.end.254:                                       ; preds = %if.end.253
  br label %do.body.255

do.body.255:                                      ; preds = %do.end.254
  %149 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %149, %struct._object** %_py_xdecref_tmp257, align 8
  %150 = load %struct._object*, %struct._object** %_py_xdecref_tmp257, align 8
  %cmp258 = icmp ne %struct._object* %150, null
  br i1 %cmp258, label %if.then.260, label %if.end.274

if.then.260:                                      ; preds = %do.body.255
  br label %do.body.261

do.body.261:                                      ; preds = %if.then.260
  %151 = load %struct._object*, %struct._object** %_py_xdecref_tmp257, align 8
  store %struct._object* %151, %struct._object** %_py_decref_tmp263, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp263, align 8
  %ob_refcnt264 = getelementptr inbounds %struct._object, %struct._object* %152, i32 0, i32 0
  %153 = load i64, i64* %ob_refcnt264, align 8
  %dec265 = add i64 %153, -1
  store i64 %dec265, i64* %ob_refcnt264, align 8
  %cmp266 = icmp ne i64 %dec265, 0
  br i1 %cmp266, label %if.then.268, label %if.else.269

if.then.268:                                      ; preds = %do.body.261
  br label %if.end.272

if.else.269:                                      ; preds = %do.body.261
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp263, align 8
  %ob_type270 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 1
  %155 = load %struct._typeobject*, %struct._typeobject** %ob_type270, align 8
  %tp_dealloc271 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %155, i32 0, i32 4
  %156 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc271, align 8
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp263, align 8
  call void %156(%struct._object* %157)
  br label %if.end.272

if.end.272:                                       ; preds = %if.else.269, %if.then.268
  br label %do.end.273

do.end.273:                                       ; preds = %if.end.272
  br label %if.end.274

if.end.274:                                       ; preds = %do.end.273, %do.body.255
  br label %do.end.275

do.end.275:                                       ; preds = %if.end.274
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.275, %do.end.231, %if.end.189, %if.then.21, %if.then.14, %if.then.7, %if.end
  %158 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %158
}

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyUnicode_New(i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #4 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139700}
!2 = !{i32 139540}
