; ModuleID = './pyexpat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyExpat_CAPI = type { i8*, i32, i32, i32, i32, i8* (i32)*, i32 (%struct.XML_ParserStruct*)*, i64 (%struct.XML_ParserStruct*)*, i64 (%struct.XML_ParserStruct*)*, i32 (%struct.XML_ParserStruct*, i8*, i32, i32)*, %struct.XML_ParserStruct* (i8*, %struct.XML_Memory_Handling_Suite*, i8*)*, void (%struct.XML_ParserStruct*)*, void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)*, void (%struct.XML_ParserStruct*, void (i8*, i8*)*)*, void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)*, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8**)*, void (i8*, i8*)*)*, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*, void (i8*, i8*)*)*, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*)*, void (%struct.XML_ParserStruct*, i32 (i8*, i8*, %struct.XML_Encoding*)*, i8*)*, void (%struct.XML_ParserStruct*, i8*)*, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i32)*)*, i32 (%struct.XML_ParserStruct*, i8*)*, i32 (i8*, i8*, %struct.XML_Encoding*)* }
%struct.XML_ParserStruct = type opaque
%struct.XML_Memory_Handling_Suite = type { i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }
%struct.XML_Encoding = type { [256 x i32], i8*, i32 (i8*, i8*)*, void (i8*)* }
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.HandlerInfo = type { i8*, void (%struct.XML_ParserStruct*, i8*)*, i8*, %struct.PyCodeObject*, %struct._object* }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct._Py_atomic_address = type { i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%union._Py_HashSecret_t = type { %struct.anon.2 }
%struct.anon.2 = type { [16 x i8], i64 }
%struct.XML_Expat_Version = type { i32, i32, i32 }
%struct.XML_Feature = type { i32, i8*, i64 }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%union.anon = type { i8* }
%struct.xmlparseobject = type { %struct._object, %struct.XML_ParserStruct*, i32, i32, i32, i32, i8*, i32, i32, %struct._object*, %struct._object** }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.XML_cp = type { i32, i32, i8*, i32, %struct.XML_cp* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }
%struct.PyByteArrayObject = type { %struct.PyVarObject, i64, i8*, i8*, i32 }
%struct.anon.3 = type { [16 x i8], i64 }

@.str = private unnamed_addr constant [15 x i8] c"pyexpat.errors\00", align 1
@PyInit_pyexpat.capi = internal global %struct.PyExpat_CAPI zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"pyexpat.model\00", align 1
@Xmlparsetype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.74, i32 0, i32 0), i64 72, i64 0, void (%struct._object*)* bitcast (void (%struct.xmlparseobject*)* @xmlparse_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_getattro to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.xmlparseobject*, %struct._object*, %struct._object*)* @xmlparse_setattro to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct.PyBufferProcs* null, i64 278528, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @Xmlparsetype__doc__, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.xmlparseobject*, i32 (%struct._object*, i8*)*, i8*)* @xmlparse_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.xmlparseobject*)* @xmlparse_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([10 x %struct.PyMethodDef], [10 x %struct.PyMethodDef]* @xmlparse_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@pyexpatmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.179, i32 0, i32 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @pyexpat_module_documentation, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @pyexpat_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@ErrorObject = internal global %struct._object* null, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"xml.parsers.expat.ExpatError\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"ExpatError\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"XMLParserType\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"EXPAT_VERSION\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"version_info\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"(iii)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"native_encoding\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"modules\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"errors\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"si\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"features\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"XML_ERROR_NO_MEMORY\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"XML_ERROR_SYNTAX\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"XML_ERROR_NO_ELEMENTS\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"XML_ERROR_INVALID_TOKEN\00", align 1
@.str.20 = private unnamed_addr constant [25 x i8] c"XML_ERROR_UNCLOSED_TOKEN\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"XML_ERROR_PARTIAL_CHAR\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"XML_ERROR_TAG_MISMATCH\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"XML_ERROR_DUPLICATE_ATTRIBUTE\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"XML_ERROR_JUNK_AFTER_DOC_ELEMENT\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"XML_ERROR_PARAM_ENTITY_REF\00", align 1
@.str.26 = private unnamed_addr constant [27 x i8] c"XML_ERROR_UNDEFINED_ENTITY\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"XML_ERROR_RECURSIVE_ENTITY_REF\00", align 1
@.str.28 = private unnamed_addr constant [23 x i8] c"XML_ERROR_ASYNC_ENTITY\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"XML_ERROR_BAD_CHAR_REF\00", align 1
@.str.30 = private unnamed_addr constant [28 x i8] c"XML_ERROR_BINARY_ENTITY_REF\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"XML_ERROR_ATTRIBUTE_EXTERNAL_ENTITY_REF\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"XML_ERROR_MISPLACED_XML_PI\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"XML_ERROR_UNKNOWN_ENCODING\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"XML_ERROR_INCORRECT_ENCODING\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"XML_ERROR_UNCLOSED_CDATA_SECTION\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"XML_ERROR_EXTERNAL_ENTITY_HANDLING\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"XML_ERROR_NOT_STANDALONE\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"XML_ERROR_UNEXPECTED_STATE\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"XML_ERROR_ENTITY_DECLARED_IN_PE\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"XML_ERROR_FEATURE_REQUIRES_XML_DTD\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"XML_ERROR_CANT_CHANGE_FEATURE_ONCE_PARSING\00", align 1
@.str.42 = private unnamed_addr constant [25 x i8] c"XML_ERROR_UNBOUND_PREFIX\00", align 1
@.str.43 = private unnamed_addr constant [29 x i8] c"XML_ERROR_UNDECLARING_PREFIX\00", align 1
@.str.44 = private unnamed_addr constant [24 x i8] c"XML_ERROR_INCOMPLETE_PE\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"XML_ERROR_XML_DECL\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"XML_ERROR_TEXT_DECL\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"XML_ERROR_PUBLICID\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"XML_ERROR_SUSPENDED\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"XML_ERROR_NOT_SUSPENDED\00", align 1
@.str.50 = private unnamed_addr constant [18 x i8] c"XML_ERROR_ABORTED\00", align 1
@.str.51 = private unnamed_addr constant [19 x i8] c"XML_ERROR_FINISHED\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"XML_ERROR_SUSPEND_PE\00", align 1
@.str.53 = private unnamed_addr constant [8 x i8] c"__doc__\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"Constants used to describe error conditions.\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"codes\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"messages\00", align 1
@.str.57 = private unnamed_addr constant [31 x i8] c"XML_PARAM_ENTITY_PARSING_NEVER\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"XML_PARAM_ENTITY_PARSING_UNLESS_STANDALONE\00", align 1
@.str.59 = private unnamed_addr constant [32 x i8] c"XML_PARAM_ENTITY_PARSING_ALWAYS\00", align 1
@.str.60 = private unnamed_addr constant [55 x i8] c"Constants used to interpret content model information.\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"XML_CTYPE_EMPTY\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"XML_CTYPE_ANY\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"XML_CTYPE_MIXED\00", align 1
@.str.64 = private unnamed_addr constant [15 x i8] c"XML_CTYPE_NAME\00", align 1
@.str.65 = private unnamed_addr constant [17 x i8] c"XML_CTYPE_CHOICE\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"XML_CTYPE_SEQ\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"XML_CQUANT_NONE\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"XML_CQUANT_OPT\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"XML_CQUANT_REP\00", align 1
@.str.70 = private unnamed_addr constant [16 x i8] c"XML_CQUANT_PLUS\00", align 1
@.str.71 = private unnamed_addr constant [23 x i8] c"pyexpat.expat_CAPI 1.0\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"pyexpat.expat_CAPI\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"expat_CAPI\00", align 1
@.str.74 = private unnamed_addr constant [18 x i8] c"pyexpat.xmlparser\00", align 1
@Xmlparsetype__doc__ = internal global [11 x i8] c"XML parser\00", align 1
@xmlparse_methods = internal global [10 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.153, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_Parse to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @xmlparse_Parse__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_ParseFile to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @xmlparse_ParseFile__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.155, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_SetBase to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @xmlparse_SetBase__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_GetBase to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @xmlparse_GetBase__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.157, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_ExternalEntityParserCreate to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([160 x i8], [160 x i8]* @xmlparse_ExternalEntityParserCreate__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.158, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_SetParamEntityParsing to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([301 x i8], [301 x i8]* @xmlparse_SetParamEntityParsing__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_GetInputContext to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @xmlparse_GetInputContext__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.160, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.xmlparseobject*, %struct._object*)* @xmlparse_UseForeignDTD to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([362 x i8], [362 x i8]* @xmlparse_UseForeignDTD__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.161, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @xmlparse_dir, i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@handler_info = internal global [64 x %struct.HandlerInfo] [%struct.HandlerInfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.75, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8**)*)* @PyExpat_XML_SetStartElementHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8**)* @my_StartElementHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.76, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*)*)* @PyExpat_XML_SetEndElementHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*)* @my_EndElementHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.77, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*)* @PyExpat_XML_SetProcessingInstructionHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8*)* @my_ProcessingInstructionHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)* @PyExpat_XML_SetCharacterDataHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i32)* @my_CharacterDataHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.79, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i8*, i8*)*)* @PyExpat_XML_SetUnparsedEntityDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i8*)* @my_UnparsedEntityDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.80, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i8*)*)* @PyExpat_XML_SetNotationDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8*, i8*, i8*)* @my_NotationDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.81, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*)* @PyExpat_XML_SetStartNamespaceDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8*)* @my_StartNamespaceDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.82, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*)*)* @PyExpat_XML_SetEndNamespaceDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*)* @my_EndNamespaceDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.83, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*)*)* @PyExpat_XML_SetCommentHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*)* @my_CommentHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*)*)* @PyExpat_XML_SetStartCdataSectionHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*)* @my_StartCdataSectionHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.85, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*)*)* @PyExpat_XML_SetEndCdataSectionHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*)* @my_EndCdataSectionHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.86, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)* @PyExpat_XML_SetDefaultHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i32)* @my_DefaultHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)* @PyExpat_XML_SetDefaultHandlerExpand to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i32)* @my_DefaultHandlerExpandHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.88, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, i32 (i8*)*)* @PyExpat_XML_SetNotStandaloneHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (i32 (i8*)* @my_NotStandaloneHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.89, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)*)* @PyExpat_XML_SetExternalEntityRefHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)* @my_ExternalEntityRefHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.90, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i32)*)* @PyExpat_XML_SetStartDoctypeDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8*, i8*, i32)* @my_StartDoctypeDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*)*)* @PyExpat_XML_SetEndDoctypeDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*)* @my_EndDoctypeDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.92, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*)*)* @PyExpat_XML_SetEntityDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*)* @my_EntityDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.93, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i32)*)* @PyExpat_XML_SetXmlDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8*, i32)* @my_XmlDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.94, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, %struct.XML_cp*)*)* @PyExpat_XML_SetElementDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, %struct.XML_cp*)* @my_ElementDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.95, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i8*, i32)*)* @PyExpat_XML_SetAttlistDeclHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i8*, i8*, i8*, i32)* @my_AttlistDeclHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.96, i32 0, i32 0), void (%struct.XML_ParserStruct*, i8*)* bitcast (void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)* @PyExpat_XML_SetSkippedEntityHandler to void (%struct.XML_ParserStruct*, i8*)*), i8* bitcast (void (i8*, i8*, i32)* @my_SkippedEntityHandler to i8*), %struct.PyCodeObject* null, %struct._object* null }, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer, %struct.HandlerInfo zeroinitializer], align 16
@.str.75 = private unnamed_addr constant [20 x i8] c"StartElementHandler\00", align 1
@.str.76 = private unnamed_addr constant [18 x i8] c"EndElementHandler\00", align 1
@.str.77 = private unnamed_addr constant [29 x i8] c"ProcessingInstructionHandler\00", align 1
@.str.78 = private unnamed_addr constant [21 x i8] c"CharacterDataHandler\00", align 1
@.str.79 = private unnamed_addr constant [26 x i8] c"UnparsedEntityDeclHandler\00", align 1
@.str.80 = private unnamed_addr constant [20 x i8] c"NotationDeclHandler\00", align 1
@.str.81 = private unnamed_addr constant [26 x i8] c"StartNamespaceDeclHandler\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"EndNamespaceDeclHandler\00", align 1
@.str.83 = private unnamed_addr constant [15 x i8] c"CommentHandler\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"StartCdataSectionHandler\00", align 1
@.str.85 = private unnamed_addr constant [23 x i8] c"EndCdataSectionHandler\00", align 1
@.str.86 = private unnamed_addr constant [15 x i8] c"DefaultHandler\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"DefaultHandlerExpand\00", align 1
@.str.88 = private unnamed_addr constant [21 x i8] c"NotStandaloneHandler\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"ExternalEntityRefHandler\00", align 1
@.str.90 = private unnamed_addr constant [24 x i8] c"StartDoctypeDeclHandler\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"EndDoctypeDeclHandler\00", align 1
@.str.92 = private unnamed_addr constant [18 x i8] c"EntityDeclHandler\00", align 1
@.str.93 = private unnamed_addr constant [15 x i8] c"XmlDeclHandler\00", align 1
@.str.94 = private unnamed_addr constant [19 x i8] c"ElementDeclHandler\00", align 1
@.str.95 = private unnamed_addr constant [19 x i8] c"AttlistDeclHandler\00", align 1
@.str.96 = private unnamed_addr constant [21 x i8] c"SkippedEntityHandler\00", align 1
@.str.97 = private unnamed_addr constant [5 x i8] c"(NN)\00", align 1
@.str.98 = private unnamed_addr constant [13 x i8] c"StartElement\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"CharacterData\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.100 = private unnamed_addr constant [7 x i8] c"strict\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.101 = private unnamed_addr constant [55 x i8] c"/home/juneyoung.lee/tmp/Python-3.4.1/Modules/pyexpat.c\00", align 1
@.str.102 = private unnamed_addr constant [4 x i8] c"(N)\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"EndElement\00", align 1
@.str.104 = private unnamed_addr constant [6 x i8] c"(NO&)\00", align 1
@.str.105 = private unnamed_addr constant [22 x i8] c"ProcessingInstruction\00", align 1
@.str.106 = private unnamed_addr constant [8 x i8] c"(NNNNN)\00", align 1
@.str.107 = private unnamed_addr constant [19 x i8] c"UnparsedEntityDecl\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"(NNNN)\00", align 1
@.str.109 = private unnamed_addr constant [13 x i8] c"NotationDecl\00", align 1
@.str.110 = private unnamed_addr constant [19 x i8] c"StartNamespaceDecl\00", align 1
@.str.111 = private unnamed_addr constant [17 x i8] c"EndNamespaceDecl\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"(O&)\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"Comment\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.115 = private unnamed_addr constant [18 x i8] c"StartCdataSection\00", align 1
@.str.116 = private unnamed_addr constant [16 x i8] c"EndCdataSection\00", align 1
@.str.117 = private unnamed_addr constant [8 x i8] c"Default\00", align 1
@.str.118 = private unnamed_addr constant [14 x i8] c"NotStandalone\00", align 1
@.str.119 = private unnamed_addr constant [8 x i8] c"(O&NNN)\00", align 1
@.str.120 = private unnamed_addr constant [18 x i8] c"ExternalEntityRef\00", align 1
@.str.121 = private unnamed_addr constant [7 x i8] c"(NNNi)\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"StartDoctypeDecl\00", align 1
@.str.123 = private unnamed_addr constant [15 x i8] c"EndDoctypeDecl\00", align 1
@.str.124 = private unnamed_addr constant [8 x i8] c"NiNNNNN\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"EntityDecl\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"(O&O&i)\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"XmlDecl\00", align 1
@.str.128 = private unnamed_addr constant [3 x i8] c"NN\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"ElementDecl\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"(iiO&N)\00", align 1
@.str.131 = private unnamed_addr constant [10 x i8] c"(NNO&O&i)\00", align 1
@.str.132 = private unnamed_addr constant [12 x i8] c"AttlistDecl\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"Ni\00", align 1
@.str.134 = private unnamed_addr constant [14 x i8] c"SkippedEntity\00", align 1
@.str.135 = private unnamed_addr constant [10 x i8] c"ErrorCode\00", align 1
@.str.136 = private unnamed_addr constant [16 x i8] c"ErrorLineNumber\00", align 1
@.str.137 = private unnamed_addr constant [18 x i8] c"ErrorColumnNumber\00", align 1
@.str.138 = private unnamed_addr constant [15 x i8] c"ErrorByteIndex\00", align 1
@.str.139 = private unnamed_addr constant [18 x i8] c"CurrentLineNumber\00", align 1
@.str.140 = private unnamed_addr constant [20 x i8] c"CurrentColumnNumber\00", align 1
@.str.141 = private unnamed_addr constant [17 x i8] c"CurrentByteIndex\00", align 1
@.str.142 = private unnamed_addr constant [12 x i8] c"buffer_size\00", align 1
@.str.143 = private unnamed_addr constant [12 x i8] c"buffer_text\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"buffer_used\00", align 1
@.str.145 = private unnamed_addr constant [19 x i8] c"namespace_prefixes\00", align 1
@.str.146 = private unnamed_addr constant [19 x i8] c"ordered_attributes\00", align 1
@.str.147 = private unnamed_addr constant [21 x i8] c"specified_attributes\00", align 1
@.str.148 = private unnamed_addr constant [7 x i8] c"intern\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.149 = private unnamed_addr constant [24 x i8] c"Cannot delete attribute\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.150 = private unnamed_addr constant [31 x i8] c"buffer_size must be an integer\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.151 = private unnamed_addr constant [38 x i8] c"buffer_size must be greater than zero\00", align 1
@.str.152 = private unnamed_addr constant [40 x i8] c"buffer_size must not be greater than %i\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.153 = private unnamed_addr constant [6 x i8] c"Parse\00", align 1
@xmlparse_Parse__doc__ = internal global [82 x i8] c"Parse(data[, isfinal])\0AParse XML data.  `isfinal' should be true at end of input.\00", align 16
@.str.154 = private unnamed_addr constant [10 x i8] c"ParseFile\00", align 1
@xmlparse_ParseFile__doc__ = internal global [54 x i8] c"ParseFile(file)\0AParse XML data from file-like object.\00", align 16
@.str.155 = private unnamed_addr constant [8 x i8] c"SetBase\00", align 1
@xmlparse_SetBase__doc__ = internal global [51 x i8] c"SetBase(base_url)\0ASet the base URL for the parser.\00", align 16
@.str.156 = private unnamed_addr constant [8 x i8] c"GetBase\00", align 1
@xmlparse_GetBase__doc__ = internal global [56 x i8] c"GetBase() -> url\0AReturn base URL string for the parser.\00", align 16
@.str.157 = private unnamed_addr constant [27 x i8] c"ExternalEntityParserCreate\00", align 1
@xmlparse_ExternalEntityParserCreate__doc__ = internal global [160 x i8] c"ExternalEntityParserCreate(context[, encoding])\0ACreate a parser for parsing an external entity based on the\0Ainformation passed to the ExternalEntityRefHandler.\00", align 16
@.str.158 = private unnamed_addr constant [22 x i8] c"SetParamEntityParsing\00", align 1
@xmlparse_SetParamEntityParsing__doc__ = internal global [301 x i8] c"SetParamEntityParsing(flag) -> success\0AControls parsing of parameter entities (including the external DTD\0Asubset). Possible flag values are XML_PARAM_ENTITY_PARSING_NEVER,\0AXML_PARAM_ENTITY_PARSING_UNLESS_STANDALONE and\0AXML_PARAM_ENTITY_PARSING_ALWAYS. Returns true if setting the flag\0Awas successful.\00", align 16
@.str.159 = private unnamed_addr constant [16 x i8] c"GetInputContext\00", align 1
@xmlparse_GetInputContext__doc__ = internal global [251 x i8] c"GetInputContext() -> string\0AReturn the untranslated text of the input that caused the current event.\0AIf the event was generated by a large amount of text (such as a start tag\0Afor an element with many attributes), not all of the text may be available.\00", align 16
@.str.160 = private unnamed_addr constant [14 x i8] c"UseForeignDTD\00", align 1
@xmlparse_UseForeignDTD__doc__ = internal global [362 x i8] c"UseForeignDTD([flag])\0AAllows the application to provide an artificial external subset if one is\0Anot specified as part of the document instance.  This readily allows the\0Ause of a 'default' document type controlled by the application, while still\0Agetting the advantage of providing document type information to the parser.\0A'flag' defaults to True if not provided.\00", align 16
@.str.161 = private unnamed_addr constant [8 x i8] c"__dir__\00", align 1
@.str.162 = private unnamed_addr constant [10 x i8] c"O|i:Parse\00", align 1
@.str.163 = private unnamed_addr constant [6 x i8] c"utf-8\00", align 1
@.str.164 = private unnamed_addr constant [23 x i8] c"%s: line %i, column %i\00", align 1
@.str.165 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.166 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@.str.167 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.168 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@xmlparse_ParseFile.PyId_read = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.169, i32 0, i32 0), %struct._object* null }, align 8
@.str.169 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.170 = private unnamed_addr constant [36 x i8] c"argument must have 'read' attribute\00", align 1
@.str.171 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@PyByteArray_Type = external global %struct._typeobject, align 8
@_PyByteArray_empty_string = external global [0 x i8], align 1
@.str.172 = private unnamed_addr constant [51 x i8] c"read() did not return a bytes object (type=%.400s)\00", align 1
@.str.173 = private unnamed_addr constant [64 x i8] c"read() returned too much data: %i bytes requested, %zd returned\00", align 1
@.str.174 = private unnamed_addr constant [10 x i8] c"s:SetBase\00", align 1
@.str.175 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.176 = private unnamed_addr constant [31 x i8] c"z|s:ExternalEntityParserCreate\00", align 1
@.str.177 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.178 = private unnamed_addr constant [17 x i8] c"|p:UseForeignDTD\00", align 1
@.str.179 = private unnamed_addr constant [8 x i8] c"pyexpat\00", align 1
@pyexpat_module_documentation = internal global [33 x i8] c"Python wrapper for Expat parser.\00", align 16
@pyexpat_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.180, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @pyexpat_ParserCreate to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @pyexpat_ParserCreate__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.181, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @pyexpat_ErrorString, i32 1, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @pyexpat_ErrorString__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.180 = private unnamed_addr constant [13 x i8] c"ParserCreate\00", align 1
@pyexpat_ParserCreate__doc__ = internal global [90 x i8] c"ParserCreate([encoding[, namespace_separator]]) -> parser\0AReturn a new XML parser object.\00", align 16
@.str.181 = private unnamed_addr constant [12 x i8] c"ErrorString\00", align 1
@pyexpat_ErrorString__doc__ = internal global [68 x i8] c"ErrorString(errno) -> string\0AReturns string error for given number.\00", align 16
@pyexpat_ParserCreate.kwlist = internal global [4 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.182, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.183, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0), i8* null], align 16
@.str.182 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.183 = private unnamed_addr constant [20 x i8] c"namespace_separator\00", align 1
@.str.184 = private unnamed_addr constant [18 x i8] c"|zzO:ParserCreate\00", align 1
@.str.185 = private unnamed_addr constant [68 x i8] c"namespace_separator must be at most one character, omitted, or None\00", align 1
@.str.186 = private unnamed_addr constant [28 x i8] c"intern must be a dictionary\00", align 1
@ExpatMemoryHandler = internal global %struct.XML_Memory_Handling_Suite { i8* (i64)* @PyObject_Malloc, i8* (i8*, i64)* @PyObject_Realloc, void (i8*)* @PyObject_Free }, align 8
@.str.187 = private unnamed_addr constant [24 x i8] c"XML_ParserCreate failed\00", align 1
@_Py_HashSecret = external global %union._Py_HashSecret_t, align 8
@.str.188 = private unnamed_addr constant [14 x i8] c"l:ErrorString\00", align 1
@PyUnknownEncodingHandler.template_buffer = internal global [256 x i8] zeroinitializer, align 16
@.str.189 = private unnamed_addr constant [8 x i8] c"replace\00", align 1
@.str.190 = private unnamed_addr constant [39 x i8] c"multi-byte encodings are not supported\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_pyexpat() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %errmod_name = alloca %struct._object*, align 8
  %errors_module = alloca %struct._object*, align 8
  %modelmod_name = alloca %struct._object*, align 8
  %model_module = alloca %struct._object*, align 8
  %sys_modules = alloca %struct._object*, align 8
  %tmpnum = alloca %struct._object*, align 8
  %tmpstr = alloca %struct._object*, align 8
  %codes_dict = alloca %struct._object*, align 8
  %rev_codes_dict = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %capi_object = alloca %struct._object*, align 8
  %info = alloca %struct.XML_Expat_Version, align 4
  %tmp = alloca { i64, i32 }, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %features = alloca %struct.XML_Feature*, align 8
  %list = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %ok = alloca i32, align 4
  %item = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp140 = alloca %struct._object*, align 8
  %_py_xdecref_tmp154 = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  %_py_decref_tmp194 = alloca %struct._object*, align 8
  %_py_decref_tmp206 = alloca %struct._object*, align 8
  %_py_decref_tmp241 = alloca %struct._object*, align 8
  %_py_decref_tmp253 = alloca %struct._object*, align 8
  %_py_decref_tmp288 = alloca %struct._object*, align 8
  %_py_decref_tmp300 = alloca %struct._object*, align 8
  %_py_decref_tmp335 = alloca %struct._object*, align 8
  %_py_decref_tmp347 = alloca %struct._object*, align 8
  %_py_decref_tmp382 = alloca %struct._object*, align 8
  %_py_decref_tmp394 = alloca %struct._object*, align 8
  %_py_decref_tmp429 = alloca %struct._object*, align 8
  %_py_decref_tmp441 = alloca %struct._object*, align 8
  %_py_decref_tmp476 = alloca %struct._object*, align 8
  %_py_decref_tmp488 = alloca %struct._object*, align 8
  %_py_decref_tmp523 = alloca %struct._object*, align 8
  %_py_decref_tmp535 = alloca %struct._object*, align 8
  %_py_decref_tmp570 = alloca %struct._object*, align 8
  %_py_decref_tmp582 = alloca %struct._object*, align 8
  %_py_decref_tmp617 = alloca %struct._object*, align 8
  %_py_decref_tmp629 = alloca %struct._object*, align 8
  %_py_decref_tmp664 = alloca %struct._object*, align 8
  %_py_decref_tmp676 = alloca %struct._object*, align 8
  %_py_decref_tmp711 = alloca %struct._object*, align 8
  %_py_decref_tmp723 = alloca %struct._object*, align 8
  %_py_decref_tmp758 = alloca %struct._object*, align 8
  %_py_decref_tmp770 = alloca %struct._object*, align 8
  %_py_decref_tmp805 = alloca %struct._object*, align 8
  %_py_decref_tmp817 = alloca %struct._object*, align 8
  %_py_decref_tmp852 = alloca %struct._object*, align 8
  %_py_decref_tmp864 = alloca %struct._object*, align 8
  %_py_decref_tmp899 = alloca %struct._object*, align 8
  %_py_decref_tmp911 = alloca %struct._object*, align 8
  %_py_decref_tmp946 = alloca %struct._object*, align 8
  %_py_decref_tmp958 = alloca %struct._object*, align 8
  %_py_decref_tmp993 = alloca %struct._object*, align 8
  %_py_decref_tmp1005 = alloca %struct._object*, align 8
  %_py_decref_tmp1040 = alloca %struct._object*, align 8
  %_py_decref_tmp1052 = alloca %struct._object*, align 8
  %_py_decref_tmp1087 = alloca %struct._object*, align 8
  %_py_decref_tmp1099 = alloca %struct._object*, align 8
  %_py_decref_tmp1134 = alloca %struct._object*, align 8
  %_py_decref_tmp1146 = alloca %struct._object*, align 8
  %_py_decref_tmp1181 = alloca %struct._object*, align 8
  %_py_decref_tmp1193 = alloca %struct._object*, align 8
  %_py_decref_tmp1228 = alloca %struct._object*, align 8
  %_py_decref_tmp1240 = alloca %struct._object*, align 8
  %_py_decref_tmp1275 = alloca %struct._object*, align 8
  %_py_decref_tmp1287 = alloca %struct._object*, align 8
  %_py_decref_tmp1322 = alloca %struct._object*, align 8
  %_py_decref_tmp1334 = alloca %struct._object*, align 8
  %_py_decref_tmp1369 = alloca %struct._object*, align 8
  %_py_decref_tmp1381 = alloca %struct._object*, align 8
  %_py_decref_tmp1416 = alloca %struct._object*, align 8
  %_py_decref_tmp1428 = alloca %struct._object*, align 8
  %_py_decref_tmp1463 = alloca %struct._object*, align 8
  %_py_decref_tmp1475 = alloca %struct._object*, align 8
  %_py_decref_tmp1510 = alloca %struct._object*, align 8
  %_py_decref_tmp1522 = alloca %struct._object*, align 8
  %_py_decref_tmp1557 = alloca %struct._object*, align 8
  %_py_decref_tmp1569 = alloca %struct._object*, align 8
  %_py_decref_tmp1604 = alloca %struct._object*, align 8
  %_py_decref_tmp1616 = alloca %struct._object*, align 8
  %_py_decref_tmp1651 = alloca %struct._object*, align 8
  %_py_decref_tmp1663 = alloca %struct._object*, align 8
  %_py_decref_tmp1698 = alloca %struct._object*, align 8
  %_py_decref_tmp1710 = alloca %struct._object*, align 8
  %_py_decref_tmp1745 = alloca %struct._object*, align 8
  %_py_decref_tmp1757 = alloca %struct._object*, align 8
  %_py_decref_tmp1792 = alloca %struct._object*, align 8
  %_py_decref_tmp1804 = alloca %struct._object*, align 8
  %_py_decref_tmp1839 = alloca %struct._object*, align 8
  %_py_decref_tmp1851 = alloca %struct._object*, align 8
  %_py_decref_tmp1886 = alloca %struct._object*, align 8
  %_py_decref_tmp1898 = alloca %struct._object*, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %errmod_name, align 8
  %0 = load %struct._object*, %struct._object** %errmod_name, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %modelmod_name, align 8
  %1 = load %struct._object*, %struct._object** %modelmod_name, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @PyType_Ready(%struct._typeobject* @Xmlparsetype)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @pyexpatmodule, i32 1013)
  store %struct._object* %call9, %struct._object** %m, align 8
  %2 = load %struct._object*, %struct._object** %m, align 8
  %cmp10 = icmp eq %struct._object* %2, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %3 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %cmp13 = icmp eq %struct._object* %3, null
  br i1 %cmp13, label %if.then.14, label %if.end.19

if.then.14:                                       ; preds = %if.end.12
  %call15 = call %struct._object* @PyErr_NewException(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), %struct._object* null, %struct._object* null)
  store %struct._object* %call15, %struct._object** @ErrorObject, align 8
  %4 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %cmp16 = icmp eq %struct._object* %4, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.then.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.then.14
  br label %if.end.19

if.end.19:                                        ; preds = %if.end.18, %if.end.12
  %5 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %m, align 8
  %8 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %call20 = call i32 @PyModule_AddObject(%struct._object* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* %8)
  %9 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt21, align 8
  %inc22 = add i64 %10, 1
  store i64 %inc22, i64* %ob_refcnt21, align 8
  %11 = load %struct._object*, %struct._object** %m, align 8
  %12 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %call23 = call i32 @PyModule_AddObject(%struct._object* %11, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), %struct._object* %12)
  %13 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Xmlparsetype, i32 0, i32 0, i32 0, i32 0), align 8
  %inc24 = add i64 %13, 1
  store i64 %inc24, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Xmlparsetype, i32 0, i32 0, i32 0, i32 0), align 8
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call25 = call i32 @PyModule_AddObject(%struct._object* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Xmlparsetype, i32 0, i32 0, i32 0))
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call26 = call i8* @PyExpat_XML_ExpatVersion()
  %call27 = call i32 @PyModule_AddStringConstant(%struct._object* %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0), i8* %call26)
  %call28 = call { i64, i32 } @PyExpat_XML_ExpatVersionInfo()
  store { i64, i32 } %call28, { i64, i32 }* %tmp, align 4
  %16 = bitcast { i64, i32 }* %tmp to i8*
  %17 = bitcast %struct.XML_Expat_Version* %info to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %17, i8* %16, i64 12, i32 4, i1 false)
  %18 = load %struct._object*, %struct._object** %m, align 8
  %major = getelementptr inbounds %struct.XML_Expat_Version, %struct.XML_Expat_Version* %info, i32 0, i32 0
  %19 = load i32, i32* %major, align 4
  %minor = getelementptr inbounds %struct.XML_Expat_Version, %struct.XML_Expat_Version* %info, i32 0, i32 1
  %20 = load i32, i32* %minor, align 4
  %micro = getelementptr inbounds %struct.XML_Expat_Version, %struct.XML_Expat_Version* %info, i32 0, i32 2
  %21 = load i32, i32* %micro, align 4
  %call29 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), i32 %19, i32 %20, i32 %21)
  %call30 = call i32 @PyModule_AddObject(%struct._object* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), %struct._object* %call29)
  %22 = load %struct._object*, %struct._object** %m, align 8
  %call31 = call i32 @PyModule_AddStringConstant(%struct._object* %22, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0))
  %call32 = call %struct._object* @PySys_GetObject(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i32 0, i32 0))
  store %struct._object* %call32, %struct._object** %sys_modules, align 8
  %23 = load %struct._object*, %struct._object** %m, align 8
  %call33 = call %struct._object* @PyModule_GetDict(%struct._object* %23)
  store %struct._object* %call33, %struct._object** %d, align 8
  %24 = load %struct._object*, %struct._object** %d, align 8
  %25 = load %struct._object*, %struct._object** %errmod_name, align 8
  %call34 = call %struct._object* @PyDict_GetItem(%struct._object* %24, %struct._object* %25)
  store %struct._object* %call34, %struct._object** %errors_module, align 8
  %26 = load %struct._object*, %struct._object** %errors_module, align 8
  %cmp35 = icmp eq %struct._object* %26, null
  br i1 %cmp35, label %if.then.36, label %if.end.43

if.then.36:                                       ; preds = %if.end.19
  %call37 = call %struct._object* @PyModule_New(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0))
  store %struct._object* %call37, %struct._object** %errors_module, align 8
  %27 = load %struct._object*, %struct._object** %errors_module, align 8
  %cmp38 = icmp ne %struct._object* %27, null
  br i1 %cmp38, label %if.then.39, label %if.end.42

if.then.39:                                       ; preds = %if.then.36
  %28 = load %struct._object*, %struct._object** %sys_modules, align 8
  %29 = load %struct._object*, %struct._object** %errmod_name, align 8
  %30 = load %struct._object*, %struct._object** %errors_module, align 8
  %call40 = call i32 @PyDict_SetItem(%struct._object* %28, %struct._object* %29, %struct._object* %30)
  %31 = load %struct._object*, %struct._object** %m, align 8
  %32 = load %struct._object*, %struct._object** %errors_module, align 8
  %call41 = call i32 @PyModule_AddObject(%struct._object* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), %struct._object* %32)
  br label %if.end.42

if.end.42:                                        ; preds = %if.then.39, %if.then.36
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.19
  br label %do.body

do.body:                                          ; preds = %if.end.43
  %33 = load %struct._object*, %struct._object** %errmod_name, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt45, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt45, align 8
  %cmp46 = icmp ne i64 %dec, 0
  br i1 %cmp46, label %if.then.47, label %if.else

if.then.47:                                       ; preds = %do.body
  br label %if.end.48

if.else:                                          ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else, %if.then.47
  br label %do.end

do.end:                                           ; preds = %if.end.48
  %40 = load %struct._object*, %struct._object** %d, align 8
  %41 = load %struct._object*, %struct._object** %modelmod_name, align 8
  %call49 = call %struct._object* @PyDict_GetItem(%struct._object* %40, %struct._object* %41)
  store %struct._object* %call49, %struct._object** %model_module, align 8
  %42 = load %struct._object*, %struct._object** %model_module, align 8
  %cmp50 = icmp eq %struct._object* %42, null
  br i1 %cmp50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.end
  %call52 = call %struct._object* @PyModule_New(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call52, %struct._object** %model_module, align 8
  %43 = load %struct._object*, %struct._object** %model_module, align 8
  %cmp53 = icmp ne %struct._object* %43, null
  br i1 %cmp53, label %if.then.54, label %if.end.57

if.then.54:                                       ; preds = %if.then.51
  %44 = load %struct._object*, %struct._object** %sys_modules, align 8
  %45 = load %struct._object*, %struct._object** %modelmod_name, align 8
  %46 = load %struct._object*, %struct._object** %model_module, align 8
  %call55 = call i32 @PyDict_SetItem(%struct._object* %44, %struct._object* %45, %struct._object* %46)
  %47 = load %struct._object*, %struct._object** %m, align 8
  %48 = load %struct._object*, %struct._object** %model_module, align 8
  %call56 = call i32 @PyModule_AddObject(%struct._object* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), %struct._object* %48)
  br label %if.end.57

if.end.57:                                        ; preds = %if.then.54, %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.end
  br label %do.body.59

do.body.59:                                       ; preds = %if.end.58
  %49 = load %struct._object*, %struct._object** %modelmod_name, align 8
  store %struct._object* %49, %struct._object** %_py_decref_tmp61, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0
  %51 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %51, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.59
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.59
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %54(%struct._object* %55)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  %56 = load %struct._object*, %struct._object** %errors_module, align 8
  %cmp71 = icmp eq %struct._object* %56, null
  br i1 %cmp71, label %if.then.73, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.70
  %57 = load %struct._object*, %struct._object** %model_module, align 8
  %cmp72 = icmp eq %struct._object* %57, null
  br i1 %cmp72, label %if.then.73, label %if.end.74

if.then.73:                                       ; preds = %lor.lhs.false, %do.end.70
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.74:                                        ; preds = %lor.lhs.false
  %call76 = call %struct.XML_Feature* @PyExpat_XML_GetFeatureList()
  store %struct.XML_Feature* %call76, %struct.XML_Feature** %features, align 8
  %call78 = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call78, %struct._object** %list, align 8
  %58 = load %struct._object*, %struct._object** %list, align 8
  %cmp79 = icmp eq %struct._object* %58, null
  br i1 %cmp79, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.end.74
  call void @PyErr_Clear()
  br label %if.end.127

if.else.81:                                       ; preds = %if.end.74
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.81
  %59 = load i32, i32* %i, align 4
  %idxprom = sext i32 %59 to i64
  %60 = load %struct.XML_Feature*, %struct.XML_Feature** %features, align 8
  %arrayidx = getelementptr %struct.XML_Feature, %struct.XML_Feature* %60, i64 %idxprom
  %feature = getelementptr inbounds %struct.XML_Feature, %struct.XML_Feature* %arrayidx, i32 0, i32 0
  %61 = load i32, i32* %feature, align 4
  %cmp83 = icmp ne i32 %61, 0
  br i1 %cmp83, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %62 = load i32, i32* %i, align 4
  %idxprom86 = sext i32 %62 to i64
  %63 = load %struct.XML_Feature*, %struct.XML_Feature** %features, align 8
  %arrayidx87 = getelementptr %struct.XML_Feature, %struct.XML_Feature* %63, i64 %idxprom86
  %name = getelementptr inbounds %struct.XML_Feature, %struct.XML_Feature* %arrayidx87, i32 0, i32 1
  %64 = load i8*, i8** %name, align 8
  %65 = load i32, i32* %i, align 4
  %idxprom88 = sext i32 %65 to i64
  %66 = load %struct.XML_Feature*, %struct.XML_Feature** %features, align 8
  %arrayidx89 = getelementptr %struct.XML_Feature, %struct.XML_Feature* %66, i64 %idxprom88
  %value = getelementptr inbounds %struct.XML_Feature, %struct.XML_Feature* %arrayidx89, i32 0, i32 2
  %67 = load i64, i64* %value, align 8
  %call90 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* %64, i64 %67)
  store %struct._object* %call90, %struct._object** %item, align 8
  %68 = load %struct._object*, %struct._object** %item, align 8
  %cmp91 = icmp eq %struct._object* %68, null
  br i1 %cmp91, label %if.then.92, label %if.end.105

if.then.92:                                       ; preds = %for.body
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  %69 = load %struct._object*, %struct._object** %list, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp95, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %71, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.93
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %74(%struct._object* %75)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  store %struct._object* null, %struct._object** %list, align 8
  br label %for.end

if.end.105:                                       ; preds = %for.body
  %76 = load %struct._object*, %struct._object** %list, align 8
  %77 = load %struct._object*, %struct._object** %item, align 8
  %call106 = call i32 @PyList_Append(%struct._object* %76, %struct._object* %77)
  store i32 %call106, i32* %ok, align 4
  br label %do.body.107

do.body.107:                                      ; preds = %if.end.105
  %78 = load %struct._object*, %struct._object** %item, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp109, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %80, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.113, label %if.else.114

if.then.113:                                      ; preds = %do.body.107
  br label %if.end.117

if.else.114:                                      ; preds = %do.body.107
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type115 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type115, align 8
  %tp_dealloc116 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc116, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %83(%struct._object* %84)
  br label %if.end.117

if.end.117:                                       ; preds = %if.else.114, %if.then.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  %85 = load i32, i32* %ok, align 4
  %cmp119 = icmp slt i32 %85, 0
  br i1 %cmp119, label %if.then.120, label %if.end.121

if.then.120:                                      ; preds = %do.end.118
  call void @PyErr_Clear()
  br label %for.end

if.end.121:                                       ; preds = %do.end.118
  br label %for.inc

for.inc:                                          ; preds = %if.end.121
  %86 = load i32, i32* %i, align 4
  %inc122 = add i32 %86, 1
  store i32 %inc122, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.120, %do.end.104, %for.cond
  %87 = load %struct._object*, %struct._object** %list, align 8
  %cmp123 = icmp ne %struct._object* %87, null
  br i1 %cmp123, label %if.then.124, label %if.end.126

if.then.124:                                      ; preds = %for.end
  %88 = load %struct._object*, %struct._object** %m, align 8
  %89 = load %struct._object*, %struct._object** %list, align 8
  %call125 = call i32 @PyModule_AddObject(%struct._object* %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), %struct._object* %89)
  br label %if.end.126

if.end.126:                                       ; preds = %if.then.124, %for.end
  br label %if.end.127

if.end.127:                                       ; preds = %if.end.126, %if.then.80
  %call128 = call %struct._object* @PyDict_New()
  store %struct._object* %call128, %struct._object** %codes_dict, align 8
  %call129 = call %struct._object* @PyDict_New()
  store %struct._object* %call129, %struct._object** %rev_codes_dict, align 8
  %90 = load %struct._object*, %struct._object** %codes_dict, align 8
  %cmp130 = icmp eq %struct._object* %90, null
  br i1 %cmp130, label %if.then.133, label %lor.lhs.false.131

lor.lhs.false.131:                                ; preds = %if.end.127
  %91 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %cmp132 = icmp eq %struct._object* %91, null
  br i1 %cmp132, label %if.then.133, label %if.end.171

if.then.133:                                      ; preds = %lor.lhs.false.131, %if.end.127
  br label %do.body.134

do.body.134:                                      ; preds = %if.then.133
  %92 = load %struct._object*, %struct._object** %codes_dict, align 8
  store %struct._object* %92, %struct._object** %_py_xdecref_tmp, align 8
  %93 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp136 = icmp ne %struct._object* %93, null
  br i1 %cmp136, label %if.then.137, label %if.end.150

if.then.137:                                      ; preds = %do.body.134
  br label %do.body.138

do.body.138:                                      ; preds = %if.then.137
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %94, %struct._object** %_py_decref_tmp140, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_refcnt141 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt141, align 8
  %dec142 = add i64 %96, -1
  store i64 %dec142, i64* %ob_refcnt141, align 8
  %cmp143 = icmp ne i64 %dec142, 0
  br i1 %cmp143, label %if.then.144, label %if.else.145

if.then.144:                                      ; preds = %do.body.138
  br label %if.end.148

if.else.145:                                      ; preds = %do.body.138
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  %ob_type146 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type146, align 8
  %tp_dealloc147 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc147, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp140, align 8
  call void %99(%struct._object* %100)
  br label %if.end.148

if.end.148:                                       ; preds = %if.else.145, %if.then.144
  br label %do.end.149

do.end.149:                                       ; preds = %if.end.148
  br label %if.end.150

if.end.150:                                       ; preds = %do.end.149, %do.body.134
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  br label %do.body.152

do.body.152:                                      ; preds = %do.end.151
  %101 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  store %struct._object* %101, %struct._object** %_py_xdecref_tmp154, align 8
  %102 = load %struct._object*, %struct._object** %_py_xdecref_tmp154, align 8
  %cmp155 = icmp ne %struct._object* %102, null
  br i1 %cmp155, label %if.then.156, label %if.end.169

if.then.156:                                      ; preds = %do.body.152
  br label %do.body.157

do.body.157:                                      ; preds = %if.then.156
  %103 = load %struct._object*, %struct._object** %_py_xdecref_tmp154, align 8
  store %struct._object* %103, %struct._object** %_py_decref_tmp159, align 8
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 0
  %105 = load i64, i64* %ob_refcnt160, align 8
  %dec161 = add i64 %105, -1
  store i64 %dec161, i64* %ob_refcnt160, align 8
  %cmp162 = icmp ne i64 %dec161, 0
  br i1 %cmp162, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %do.body.157
  br label %if.end.167

if.else.164:                                      ; preds = %do.body.157
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type165 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type165, align 8
  %tp_dealloc166 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 4
  %108 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc166, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %108(%struct._object* %109)
  br label %if.end.167

if.end.167:                                       ; preds = %if.else.164, %if.then.163
  br label %do.end.168

do.end.168:                                       ; preds = %if.end.167
  br label %if.end.169

if.end.169:                                       ; preds = %do.end.168, %do.body.152
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.171:                                       ; preds = %lor.lhs.false.131
  %110 = load %struct._object*, %struct._object** %errors_module, align 8
  %call172 = call i8* @PyExpat_XML_ErrorString(i32 1)
  %call173 = call i32 @PyModule_AddStringConstant(%struct._object* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i32 0, i32 0), i8* %call172)
  %cmp174 = icmp slt i32 %call173, 0
  br i1 %cmp174, label %if.then.175, label %if.end.176

if.then.175:                                      ; preds = %if.end.171
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.176:                                       ; preds = %if.end.171
  %call177 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call177, %struct._object** %tmpnum, align 8
  %111 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp178 = icmp eq %struct._object* %111, null
  br i1 %cmp178, label %if.then.179, label %if.end.180

if.then.179:                                      ; preds = %if.end.176
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.180:                                       ; preds = %if.end.176
  %112 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call181 = call i8* @PyExpat_XML_ErrorString(i32 1)
  %113 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call182 = call i32 @PyDict_SetItemString(%struct._object* %112, i8* %call181, %struct._object* %113)
  store i32 %call182, i32* %res, align 4
  %114 = load i32, i32* %res, align 4
  %cmp183 = icmp slt i32 %114, 0
  br i1 %cmp183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.end.180
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.185:                                       ; preds = %if.end.180
  %call186 = call i8* @PyExpat_XML_ErrorString(i32 1)
  %call187 = call %struct._object* @PyUnicode_FromString(i8* %call186)
  store %struct._object* %call187, %struct._object** %tmpstr, align 8
  %115 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp188 = icmp eq %struct._object* %115, null
  br i1 %cmp188, label %if.then.189, label %if.end.190

if.then.189:                                      ; preds = %if.end.185
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.190:                                       ; preds = %if.end.185
  %116 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %117 = load %struct._object*, %struct._object** %tmpnum, align 8
  %118 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call191 = call i32 @PyDict_SetItem(%struct._object* %116, %struct._object* %117, %struct._object* %118)
  store i32 %call191, i32* %res, align 4
  br label %do.body.192

do.body.192:                                      ; preds = %if.end.190
  %119 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %119, %struct._object** %_py_decref_tmp194, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_refcnt195 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0
  %121 = load i64, i64* %ob_refcnt195, align 8
  %dec196 = add i64 %121, -1
  store i64 %dec196, i64* %ob_refcnt195, align 8
  %cmp197 = icmp ne i64 %dec196, 0
  br i1 %cmp197, label %if.then.198, label %if.else.199

if.then.198:                                      ; preds = %do.body.192
  br label %if.end.202

if.else.199:                                      ; preds = %do.body.192
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  %ob_type200 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type200, align 8
  %tp_dealloc201 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %123, i32 0, i32 4
  %124 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc201, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp194, align 8
  call void %124(%struct._object* %125)
  br label %if.end.202

if.end.202:                                       ; preds = %if.else.199, %if.then.198
  br label %do.end.203

do.end.203:                                       ; preds = %if.end.202
  br label %do.body.204

do.body.204:                                      ; preds = %do.end.203
  %126 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp206, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  %ob_refcnt207 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt207, align 8
  %dec208 = add i64 %128, -1
  store i64 %dec208, i64* %ob_refcnt207, align 8
  %cmp209 = icmp ne i64 %dec208, 0
  br i1 %cmp209, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %do.body.204
  br label %if.end.214

if.else.211:                                      ; preds = %do.body.204
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  %ob_type212 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type212, align 8
  %tp_dealloc213 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc213, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  call void %131(%struct._object* %132)
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.211, %if.then.210
  br label %do.end.215

do.end.215:                                       ; preds = %if.end.214
  %133 = load i32, i32* %res, align 4
  %cmp216 = icmp slt i32 %133, 0
  br i1 %cmp216, label %if.then.217, label %if.end.218

if.then.217:                                      ; preds = %do.end.215
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.218:                                       ; preds = %do.end.215
  %134 = load %struct._object*, %struct._object** %errors_module, align 8
  %call219 = call i8* @PyExpat_XML_ErrorString(i32 2)
  %call220 = call i32 @PyModule_AddStringConstant(%struct._object* %134, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0), i8* %call219)
  %cmp221 = icmp slt i32 %call220, 0
  br i1 %cmp221, label %if.then.222, label %if.end.223

if.then.222:                                      ; preds = %if.end.218
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.223:                                       ; preds = %if.end.218
  %call224 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call224, %struct._object** %tmpnum, align 8
  %135 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp225 = icmp eq %struct._object* %135, null
  br i1 %cmp225, label %if.then.226, label %if.end.227

if.then.226:                                      ; preds = %if.end.223
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.227:                                       ; preds = %if.end.223
  %136 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call228 = call i8* @PyExpat_XML_ErrorString(i32 2)
  %137 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call229 = call i32 @PyDict_SetItemString(%struct._object* %136, i8* %call228, %struct._object* %137)
  store i32 %call229, i32* %res, align 4
  %138 = load i32, i32* %res, align 4
  %cmp230 = icmp slt i32 %138, 0
  br i1 %cmp230, label %if.then.231, label %if.end.232

if.then.231:                                      ; preds = %if.end.227
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.232:                                       ; preds = %if.end.227
  %call233 = call i8* @PyExpat_XML_ErrorString(i32 2)
  %call234 = call %struct._object* @PyUnicode_FromString(i8* %call233)
  store %struct._object* %call234, %struct._object** %tmpstr, align 8
  %139 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp235 = icmp eq %struct._object* %139, null
  br i1 %cmp235, label %if.then.236, label %if.end.237

if.then.236:                                      ; preds = %if.end.232
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.237:                                       ; preds = %if.end.232
  %140 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %141 = load %struct._object*, %struct._object** %tmpnum, align 8
  %142 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call238 = call i32 @PyDict_SetItem(%struct._object* %140, %struct._object* %141, %struct._object* %142)
  store i32 %call238, i32* %res, align 4
  br label %do.body.239

do.body.239:                                      ; preds = %if.end.237
  %143 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %143, %struct._object** %_py_decref_tmp241, align 8
  %144 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  %ob_refcnt242 = getelementptr inbounds %struct._object, %struct._object* %144, i32 0, i32 0
  %145 = load i64, i64* %ob_refcnt242, align 8
  %dec243 = add i64 %145, -1
  store i64 %dec243, i64* %ob_refcnt242, align 8
  %cmp244 = icmp ne i64 %dec243, 0
  br i1 %cmp244, label %if.then.245, label %if.else.246

if.then.245:                                      ; preds = %do.body.239
  br label %if.end.249

if.else.246:                                      ; preds = %do.body.239
  %146 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  %ob_type247 = getelementptr inbounds %struct._object, %struct._object* %146, i32 0, i32 1
  %147 = load %struct._typeobject*, %struct._typeobject** %ob_type247, align 8
  %tp_dealloc248 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %147, i32 0, i32 4
  %148 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc248, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp241, align 8
  call void %148(%struct._object* %149)
  br label %if.end.249

if.end.249:                                       ; preds = %if.else.246, %if.then.245
  br label %do.end.250

do.end.250:                                       ; preds = %if.end.249
  br label %do.body.251

do.body.251:                                      ; preds = %do.end.250
  %150 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %150, %struct._object** %_py_decref_tmp253, align 8
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_refcnt254 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 0
  %152 = load i64, i64* %ob_refcnt254, align 8
  %dec255 = add i64 %152, -1
  store i64 %dec255, i64* %ob_refcnt254, align 8
  %cmp256 = icmp ne i64 %dec255, 0
  br i1 %cmp256, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %do.body.251
  br label %if.end.261

if.else.258:                                      ; preds = %do.body.251
  %153 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_type259 = getelementptr inbounds %struct._object, %struct._object* %153, i32 0, i32 1
  %154 = load %struct._typeobject*, %struct._typeobject** %ob_type259, align 8
  %tp_dealloc260 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %154, i32 0, i32 4
  %155 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc260, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  call void %155(%struct._object* %156)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.257
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  %157 = load i32, i32* %res, align 4
  %cmp263 = icmp slt i32 %157, 0
  br i1 %cmp263, label %if.then.264, label %if.end.265

if.then.264:                                      ; preds = %do.end.262
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.265:                                       ; preds = %do.end.262
  %158 = load %struct._object*, %struct._object** %errors_module, align 8
  %call266 = call i8* @PyExpat_XML_ErrorString(i32 3)
  %call267 = call i32 @PyModule_AddStringConstant(%struct._object* %158, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i32 0, i32 0), i8* %call266)
  %cmp268 = icmp slt i32 %call267, 0
  br i1 %cmp268, label %if.then.269, label %if.end.270

if.then.269:                                      ; preds = %if.end.265
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.270:                                       ; preds = %if.end.265
  %call271 = call %struct._object* @PyLong_FromLong(i64 3)
  store %struct._object* %call271, %struct._object** %tmpnum, align 8
  %159 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp272 = icmp eq %struct._object* %159, null
  br i1 %cmp272, label %if.then.273, label %if.end.274

if.then.273:                                      ; preds = %if.end.270
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.274:                                       ; preds = %if.end.270
  %160 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call275 = call i8* @PyExpat_XML_ErrorString(i32 3)
  %161 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call276 = call i32 @PyDict_SetItemString(%struct._object* %160, i8* %call275, %struct._object* %161)
  store i32 %call276, i32* %res, align 4
  %162 = load i32, i32* %res, align 4
  %cmp277 = icmp slt i32 %162, 0
  br i1 %cmp277, label %if.then.278, label %if.end.279

if.then.278:                                      ; preds = %if.end.274
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.279:                                       ; preds = %if.end.274
  %call280 = call i8* @PyExpat_XML_ErrorString(i32 3)
  %call281 = call %struct._object* @PyUnicode_FromString(i8* %call280)
  store %struct._object* %call281, %struct._object** %tmpstr, align 8
  %163 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp282 = icmp eq %struct._object* %163, null
  br i1 %cmp282, label %if.then.283, label %if.end.284

if.then.283:                                      ; preds = %if.end.279
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.284:                                       ; preds = %if.end.279
  %164 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %165 = load %struct._object*, %struct._object** %tmpnum, align 8
  %166 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call285 = call i32 @PyDict_SetItem(%struct._object* %164, %struct._object* %165, %struct._object* %166)
  store i32 %call285, i32* %res, align 4
  br label %do.body.286

do.body.286:                                      ; preds = %if.end.284
  %167 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %167, %struct._object** %_py_decref_tmp288, align 8
  %168 = load %struct._object*, %struct._object** %_py_decref_tmp288, align 8
  %ob_refcnt289 = getelementptr inbounds %struct._object, %struct._object* %168, i32 0, i32 0
  %169 = load i64, i64* %ob_refcnt289, align 8
  %dec290 = add i64 %169, -1
  store i64 %dec290, i64* %ob_refcnt289, align 8
  %cmp291 = icmp ne i64 %dec290, 0
  br i1 %cmp291, label %if.then.292, label %if.else.293

if.then.292:                                      ; preds = %do.body.286
  br label %if.end.296

if.else.293:                                      ; preds = %do.body.286
  %170 = load %struct._object*, %struct._object** %_py_decref_tmp288, align 8
  %ob_type294 = getelementptr inbounds %struct._object, %struct._object* %170, i32 0, i32 1
  %171 = load %struct._typeobject*, %struct._typeobject** %ob_type294, align 8
  %tp_dealloc295 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %171, i32 0, i32 4
  %172 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc295, align 8
  %173 = load %struct._object*, %struct._object** %_py_decref_tmp288, align 8
  call void %172(%struct._object* %173)
  br label %if.end.296

if.end.296:                                       ; preds = %if.else.293, %if.then.292
  br label %do.end.297

do.end.297:                                       ; preds = %if.end.296
  br label %do.body.298

do.body.298:                                      ; preds = %do.end.297
  %174 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %174, %struct._object** %_py_decref_tmp300, align 8
  %175 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  %ob_refcnt301 = getelementptr inbounds %struct._object, %struct._object* %175, i32 0, i32 0
  %176 = load i64, i64* %ob_refcnt301, align 8
  %dec302 = add i64 %176, -1
  store i64 %dec302, i64* %ob_refcnt301, align 8
  %cmp303 = icmp ne i64 %dec302, 0
  br i1 %cmp303, label %if.then.304, label %if.else.305

if.then.304:                                      ; preds = %do.body.298
  br label %if.end.308

if.else.305:                                      ; preds = %do.body.298
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  %ob_type306 = getelementptr inbounds %struct._object, %struct._object* %177, i32 0, i32 1
  %178 = load %struct._typeobject*, %struct._typeobject** %ob_type306, align 8
  %tp_dealloc307 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %178, i32 0, i32 4
  %179 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc307, align 8
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  call void %179(%struct._object* %180)
  br label %if.end.308

if.end.308:                                       ; preds = %if.else.305, %if.then.304
  br label %do.end.309

do.end.309:                                       ; preds = %if.end.308
  %181 = load i32, i32* %res, align 4
  %cmp310 = icmp slt i32 %181, 0
  br i1 %cmp310, label %if.then.311, label %if.end.312

if.then.311:                                      ; preds = %do.end.309
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.312:                                       ; preds = %do.end.309
  %182 = load %struct._object*, %struct._object** %errors_module, align 8
  %call313 = call i8* @PyExpat_XML_ErrorString(i32 4)
  %call314 = call i32 @PyModule_AddStringConstant(%struct._object* %182, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i32 0, i32 0), i8* %call313)
  %cmp315 = icmp slt i32 %call314, 0
  br i1 %cmp315, label %if.then.316, label %if.end.317

if.then.316:                                      ; preds = %if.end.312
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.317:                                       ; preds = %if.end.312
  %call318 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call318, %struct._object** %tmpnum, align 8
  %183 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp319 = icmp eq %struct._object* %183, null
  br i1 %cmp319, label %if.then.320, label %if.end.321

if.then.320:                                      ; preds = %if.end.317
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.321:                                       ; preds = %if.end.317
  %184 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call322 = call i8* @PyExpat_XML_ErrorString(i32 4)
  %185 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call323 = call i32 @PyDict_SetItemString(%struct._object* %184, i8* %call322, %struct._object* %185)
  store i32 %call323, i32* %res, align 4
  %186 = load i32, i32* %res, align 4
  %cmp324 = icmp slt i32 %186, 0
  br i1 %cmp324, label %if.then.325, label %if.end.326

if.then.325:                                      ; preds = %if.end.321
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.326:                                       ; preds = %if.end.321
  %call327 = call i8* @PyExpat_XML_ErrorString(i32 4)
  %call328 = call %struct._object* @PyUnicode_FromString(i8* %call327)
  store %struct._object* %call328, %struct._object** %tmpstr, align 8
  %187 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp329 = icmp eq %struct._object* %187, null
  br i1 %cmp329, label %if.then.330, label %if.end.331

if.then.330:                                      ; preds = %if.end.326
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.331:                                       ; preds = %if.end.326
  %188 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %189 = load %struct._object*, %struct._object** %tmpnum, align 8
  %190 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call332 = call i32 @PyDict_SetItem(%struct._object* %188, %struct._object* %189, %struct._object* %190)
  store i32 %call332, i32* %res, align 4
  br label %do.body.333

do.body.333:                                      ; preds = %if.end.331
  %191 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %191, %struct._object** %_py_decref_tmp335, align 8
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  %ob_refcnt336 = getelementptr inbounds %struct._object, %struct._object* %192, i32 0, i32 0
  %193 = load i64, i64* %ob_refcnt336, align 8
  %dec337 = add i64 %193, -1
  store i64 %dec337, i64* %ob_refcnt336, align 8
  %cmp338 = icmp ne i64 %dec337, 0
  br i1 %cmp338, label %if.then.339, label %if.else.340

if.then.339:                                      ; preds = %do.body.333
  br label %if.end.343

if.else.340:                                      ; preds = %do.body.333
  %194 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  %ob_type341 = getelementptr inbounds %struct._object, %struct._object* %194, i32 0, i32 1
  %195 = load %struct._typeobject*, %struct._typeobject** %ob_type341, align 8
  %tp_dealloc342 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %195, i32 0, i32 4
  %196 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc342, align 8
  %197 = load %struct._object*, %struct._object** %_py_decref_tmp335, align 8
  call void %196(%struct._object* %197)
  br label %if.end.343

if.end.343:                                       ; preds = %if.else.340, %if.then.339
  br label %do.end.344

do.end.344:                                       ; preds = %if.end.343
  br label %do.body.345

do.body.345:                                      ; preds = %do.end.344
  %198 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %198, %struct._object** %_py_decref_tmp347, align 8
  %199 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  %ob_refcnt348 = getelementptr inbounds %struct._object, %struct._object* %199, i32 0, i32 0
  %200 = load i64, i64* %ob_refcnt348, align 8
  %dec349 = add i64 %200, -1
  store i64 %dec349, i64* %ob_refcnt348, align 8
  %cmp350 = icmp ne i64 %dec349, 0
  br i1 %cmp350, label %if.then.351, label %if.else.352

if.then.351:                                      ; preds = %do.body.345
  br label %if.end.355

if.else.352:                                      ; preds = %do.body.345
  %201 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  %ob_type353 = getelementptr inbounds %struct._object, %struct._object* %201, i32 0, i32 1
  %202 = load %struct._typeobject*, %struct._typeobject** %ob_type353, align 8
  %tp_dealloc354 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %202, i32 0, i32 4
  %203 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc354, align 8
  %204 = load %struct._object*, %struct._object** %_py_decref_tmp347, align 8
  call void %203(%struct._object* %204)
  br label %if.end.355

if.end.355:                                       ; preds = %if.else.352, %if.then.351
  br label %do.end.356

do.end.356:                                       ; preds = %if.end.355
  %205 = load i32, i32* %res, align 4
  %cmp357 = icmp slt i32 %205, 0
  br i1 %cmp357, label %if.then.358, label %if.end.359

if.then.358:                                      ; preds = %do.end.356
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.359:                                       ; preds = %do.end.356
  %206 = load %struct._object*, %struct._object** %errors_module, align 8
  %call360 = call i8* @PyExpat_XML_ErrorString(i32 5)
  %call361 = call i32 @PyModule_AddStringConstant(%struct._object* %206, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.20, i32 0, i32 0), i8* %call360)
  %cmp362 = icmp slt i32 %call361, 0
  br i1 %cmp362, label %if.then.363, label %if.end.364

if.then.363:                                      ; preds = %if.end.359
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.364:                                       ; preds = %if.end.359
  %call365 = call %struct._object* @PyLong_FromLong(i64 5)
  store %struct._object* %call365, %struct._object** %tmpnum, align 8
  %207 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp366 = icmp eq %struct._object* %207, null
  br i1 %cmp366, label %if.then.367, label %if.end.368

if.then.367:                                      ; preds = %if.end.364
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.368:                                       ; preds = %if.end.364
  %208 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call369 = call i8* @PyExpat_XML_ErrorString(i32 5)
  %209 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call370 = call i32 @PyDict_SetItemString(%struct._object* %208, i8* %call369, %struct._object* %209)
  store i32 %call370, i32* %res, align 4
  %210 = load i32, i32* %res, align 4
  %cmp371 = icmp slt i32 %210, 0
  br i1 %cmp371, label %if.then.372, label %if.end.373

if.then.372:                                      ; preds = %if.end.368
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.373:                                       ; preds = %if.end.368
  %call374 = call i8* @PyExpat_XML_ErrorString(i32 5)
  %call375 = call %struct._object* @PyUnicode_FromString(i8* %call374)
  store %struct._object* %call375, %struct._object** %tmpstr, align 8
  %211 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp376 = icmp eq %struct._object* %211, null
  br i1 %cmp376, label %if.then.377, label %if.end.378

if.then.377:                                      ; preds = %if.end.373
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.378:                                       ; preds = %if.end.373
  %212 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %213 = load %struct._object*, %struct._object** %tmpnum, align 8
  %214 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call379 = call i32 @PyDict_SetItem(%struct._object* %212, %struct._object* %213, %struct._object* %214)
  store i32 %call379, i32* %res, align 4
  br label %do.body.380

do.body.380:                                      ; preds = %if.end.378
  %215 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %215, %struct._object** %_py_decref_tmp382, align 8
  %216 = load %struct._object*, %struct._object** %_py_decref_tmp382, align 8
  %ob_refcnt383 = getelementptr inbounds %struct._object, %struct._object* %216, i32 0, i32 0
  %217 = load i64, i64* %ob_refcnt383, align 8
  %dec384 = add i64 %217, -1
  store i64 %dec384, i64* %ob_refcnt383, align 8
  %cmp385 = icmp ne i64 %dec384, 0
  br i1 %cmp385, label %if.then.386, label %if.else.387

if.then.386:                                      ; preds = %do.body.380
  br label %if.end.390

if.else.387:                                      ; preds = %do.body.380
  %218 = load %struct._object*, %struct._object** %_py_decref_tmp382, align 8
  %ob_type388 = getelementptr inbounds %struct._object, %struct._object* %218, i32 0, i32 1
  %219 = load %struct._typeobject*, %struct._typeobject** %ob_type388, align 8
  %tp_dealloc389 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %219, i32 0, i32 4
  %220 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc389, align 8
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp382, align 8
  call void %220(%struct._object* %221)
  br label %if.end.390

if.end.390:                                       ; preds = %if.else.387, %if.then.386
  br label %do.end.391

do.end.391:                                       ; preds = %if.end.390
  br label %do.body.392

do.body.392:                                      ; preds = %do.end.391
  %222 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %222, %struct._object** %_py_decref_tmp394, align 8
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp394, align 8
  %ob_refcnt395 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 0
  %224 = load i64, i64* %ob_refcnt395, align 8
  %dec396 = add i64 %224, -1
  store i64 %dec396, i64* %ob_refcnt395, align 8
  %cmp397 = icmp ne i64 %dec396, 0
  br i1 %cmp397, label %if.then.398, label %if.else.399

if.then.398:                                      ; preds = %do.body.392
  br label %if.end.402

if.else.399:                                      ; preds = %do.body.392
  %225 = load %struct._object*, %struct._object** %_py_decref_tmp394, align 8
  %ob_type400 = getelementptr inbounds %struct._object, %struct._object* %225, i32 0, i32 1
  %226 = load %struct._typeobject*, %struct._typeobject** %ob_type400, align 8
  %tp_dealloc401 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %226, i32 0, i32 4
  %227 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc401, align 8
  %228 = load %struct._object*, %struct._object** %_py_decref_tmp394, align 8
  call void %227(%struct._object* %228)
  br label %if.end.402

if.end.402:                                       ; preds = %if.else.399, %if.then.398
  br label %do.end.403

do.end.403:                                       ; preds = %if.end.402
  %229 = load i32, i32* %res, align 4
  %cmp404 = icmp slt i32 %229, 0
  br i1 %cmp404, label %if.then.405, label %if.end.406

if.then.405:                                      ; preds = %do.end.403
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.406:                                       ; preds = %do.end.403
  %230 = load %struct._object*, %struct._object** %errors_module, align 8
  %call407 = call i8* @PyExpat_XML_ErrorString(i32 6)
  %call408 = call i32 @PyModule_AddStringConstant(%struct._object* %230, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i32 0, i32 0), i8* %call407)
  %cmp409 = icmp slt i32 %call408, 0
  br i1 %cmp409, label %if.then.410, label %if.end.411

if.then.410:                                      ; preds = %if.end.406
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.411:                                       ; preds = %if.end.406
  %call412 = call %struct._object* @PyLong_FromLong(i64 6)
  store %struct._object* %call412, %struct._object** %tmpnum, align 8
  %231 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp413 = icmp eq %struct._object* %231, null
  br i1 %cmp413, label %if.then.414, label %if.end.415

if.then.414:                                      ; preds = %if.end.411
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.415:                                       ; preds = %if.end.411
  %232 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call416 = call i8* @PyExpat_XML_ErrorString(i32 6)
  %233 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call417 = call i32 @PyDict_SetItemString(%struct._object* %232, i8* %call416, %struct._object* %233)
  store i32 %call417, i32* %res, align 4
  %234 = load i32, i32* %res, align 4
  %cmp418 = icmp slt i32 %234, 0
  br i1 %cmp418, label %if.then.419, label %if.end.420

if.then.419:                                      ; preds = %if.end.415
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.420:                                       ; preds = %if.end.415
  %call421 = call i8* @PyExpat_XML_ErrorString(i32 6)
  %call422 = call %struct._object* @PyUnicode_FromString(i8* %call421)
  store %struct._object* %call422, %struct._object** %tmpstr, align 8
  %235 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp423 = icmp eq %struct._object* %235, null
  br i1 %cmp423, label %if.then.424, label %if.end.425

if.then.424:                                      ; preds = %if.end.420
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.425:                                       ; preds = %if.end.420
  %236 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %237 = load %struct._object*, %struct._object** %tmpnum, align 8
  %238 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call426 = call i32 @PyDict_SetItem(%struct._object* %236, %struct._object* %237, %struct._object* %238)
  store i32 %call426, i32* %res, align 4
  br label %do.body.427

do.body.427:                                      ; preds = %if.end.425
  %239 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %239, %struct._object** %_py_decref_tmp429, align 8
  %240 = load %struct._object*, %struct._object** %_py_decref_tmp429, align 8
  %ob_refcnt430 = getelementptr inbounds %struct._object, %struct._object* %240, i32 0, i32 0
  %241 = load i64, i64* %ob_refcnt430, align 8
  %dec431 = add i64 %241, -1
  store i64 %dec431, i64* %ob_refcnt430, align 8
  %cmp432 = icmp ne i64 %dec431, 0
  br i1 %cmp432, label %if.then.433, label %if.else.434

if.then.433:                                      ; preds = %do.body.427
  br label %if.end.437

if.else.434:                                      ; preds = %do.body.427
  %242 = load %struct._object*, %struct._object** %_py_decref_tmp429, align 8
  %ob_type435 = getelementptr inbounds %struct._object, %struct._object* %242, i32 0, i32 1
  %243 = load %struct._typeobject*, %struct._typeobject** %ob_type435, align 8
  %tp_dealloc436 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %243, i32 0, i32 4
  %244 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc436, align 8
  %245 = load %struct._object*, %struct._object** %_py_decref_tmp429, align 8
  call void %244(%struct._object* %245)
  br label %if.end.437

if.end.437:                                       ; preds = %if.else.434, %if.then.433
  br label %do.end.438

do.end.438:                                       ; preds = %if.end.437
  br label %do.body.439

do.body.439:                                      ; preds = %do.end.438
  %246 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %246, %struct._object** %_py_decref_tmp441, align 8
  %247 = load %struct._object*, %struct._object** %_py_decref_tmp441, align 8
  %ob_refcnt442 = getelementptr inbounds %struct._object, %struct._object* %247, i32 0, i32 0
  %248 = load i64, i64* %ob_refcnt442, align 8
  %dec443 = add i64 %248, -1
  store i64 %dec443, i64* %ob_refcnt442, align 8
  %cmp444 = icmp ne i64 %dec443, 0
  br i1 %cmp444, label %if.then.445, label %if.else.446

if.then.445:                                      ; preds = %do.body.439
  br label %if.end.449

if.else.446:                                      ; preds = %do.body.439
  %249 = load %struct._object*, %struct._object** %_py_decref_tmp441, align 8
  %ob_type447 = getelementptr inbounds %struct._object, %struct._object* %249, i32 0, i32 1
  %250 = load %struct._typeobject*, %struct._typeobject** %ob_type447, align 8
  %tp_dealloc448 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %250, i32 0, i32 4
  %251 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc448, align 8
  %252 = load %struct._object*, %struct._object** %_py_decref_tmp441, align 8
  call void %251(%struct._object* %252)
  br label %if.end.449

if.end.449:                                       ; preds = %if.else.446, %if.then.445
  br label %do.end.450

do.end.450:                                       ; preds = %if.end.449
  %253 = load i32, i32* %res, align 4
  %cmp451 = icmp slt i32 %253, 0
  br i1 %cmp451, label %if.then.452, label %if.end.453

if.then.452:                                      ; preds = %do.end.450
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.453:                                       ; preds = %do.end.450
  %254 = load %struct._object*, %struct._object** %errors_module, align 8
  %call454 = call i8* @PyExpat_XML_ErrorString(i32 7)
  %call455 = call i32 @PyModule_AddStringConstant(%struct._object* %254, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i32 0, i32 0), i8* %call454)
  %cmp456 = icmp slt i32 %call455, 0
  br i1 %cmp456, label %if.then.457, label %if.end.458

if.then.457:                                      ; preds = %if.end.453
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.458:                                       ; preds = %if.end.453
  %call459 = call %struct._object* @PyLong_FromLong(i64 7)
  store %struct._object* %call459, %struct._object** %tmpnum, align 8
  %255 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp460 = icmp eq %struct._object* %255, null
  br i1 %cmp460, label %if.then.461, label %if.end.462

if.then.461:                                      ; preds = %if.end.458
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.462:                                       ; preds = %if.end.458
  %256 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call463 = call i8* @PyExpat_XML_ErrorString(i32 7)
  %257 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call464 = call i32 @PyDict_SetItemString(%struct._object* %256, i8* %call463, %struct._object* %257)
  store i32 %call464, i32* %res, align 4
  %258 = load i32, i32* %res, align 4
  %cmp465 = icmp slt i32 %258, 0
  br i1 %cmp465, label %if.then.466, label %if.end.467

if.then.466:                                      ; preds = %if.end.462
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.467:                                       ; preds = %if.end.462
  %call468 = call i8* @PyExpat_XML_ErrorString(i32 7)
  %call469 = call %struct._object* @PyUnicode_FromString(i8* %call468)
  store %struct._object* %call469, %struct._object** %tmpstr, align 8
  %259 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp470 = icmp eq %struct._object* %259, null
  br i1 %cmp470, label %if.then.471, label %if.end.472

if.then.471:                                      ; preds = %if.end.467
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.472:                                       ; preds = %if.end.467
  %260 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %261 = load %struct._object*, %struct._object** %tmpnum, align 8
  %262 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call473 = call i32 @PyDict_SetItem(%struct._object* %260, %struct._object* %261, %struct._object* %262)
  store i32 %call473, i32* %res, align 4
  br label %do.body.474

do.body.474:                                      ; preds = %if.end.472
  %263 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %263, %struct._object** %_py_decref_tmp476, align 8
  %264 = load %struct._object*, %struct._object** %_py_decref_tmp476, align 8
  %ob_refcnt477 = getelementptr inbounds %struct._object, %struct._object* %264, i32 0, i32 0
  %265 = load i64, i64* %ob_refcnt477, align 8
  %dec478 = add i64 %265, -1
  store i64 %dec478, i64* %ob_refcnt477, align 8
  %cmp479 = icmp ne i64 %dec478, 0
  br i1 %cmp479, label %if.then.480, label %if.else.481

if.then.480:                                      ; preds = %do.body.474
  br label %if.end.484

if.else.481:                                      ; preds = %do.body.474
  %266 = load %struct._object*, %struct._object** %_py_decref_tmp476, align 8
  %ob_type482 = getelementptr inbounds %struct._object, %struct._object* %266, i32 0, i32 1
  %267 = load %struct._typeobject*, %struct._typeobject** %ob_type482, align 8
  %tp_dealloc483 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %267, i32 0, i32 4
  %268 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc483, align 8
  %269 = load %struct._object*, %struct._object** %_py_decref_tmp476, align 8
  call void %268(%struct._object* %269)
  br label %if.end.484

if.end.484:                                       ; preds = %if.else.481, %if.then.480
  br label %do.end.485

do.end.485:                                       ; preds = %if.end.484
  br label %do.body.486

do.body.486:                                      ; preds = %do.end.485
  %270 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %270, %struct._object** %_py_decref_tmp488, align 8
  %271 = load %struct._object*, %struct._object** %_py_decref_tmp488, align 8
  %ob_refcnt489 = getelementptr inbounds %struct._object, %struct._object* %271, i32 0, i32 0
  %272 = load i64, i64* %ob_refcnt489, align 8
  %dec490 = add i64 %272, -1
  store i64 %dec490, i64* %ob_refcnt489, align 8
  %cmp491 = icmp ne i64 %dec490, 0
  br i1 %cmp491, label %if.then.492, label %if.else.493

if.then.492:                                      ; preds = %do.body.486
  br label %if.end.496

if.else.493:                                      ; preds = %do.body.486
  %273 = load %struct._object*, %struct._object** %_py_decref_tmp488, align 8
  %ob_type494 = getelementptr inbounds %struct._object, %struct._object* %273, i32 0, i32 1
  %274 = load %struct._typeobject*, %struct._typeobject** %ob_type494, align 8
  %tp_dealloc495 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %274, i32 0, i32 4
  %275 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc495, align 8
  %276 = load %struct._object*, %struct._object** %_py_decref_tmp488, align 8
  call void %275(%struct._object* %276)
  br label %if.end.496

if.end.496:                                       ; preds = %if.else.493, %if.then.492
  br label %do.end.497

do.end.497:                                       ; preds = %if.end.496
  %277 = load i32, i32* %res, align 4
  %cmp498 = icmp slt i32 %277, 0
  br i1 %cmp498, label %if.then.499, label %if.end.500

if.then.499:                                      ; preds = %do.end.497
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.500:                                       ; preds = %do.end.497
  %278 = load %struct._object*, %struct._object** %errors_module, align 8
  %call501 = call i8* @PyExpat_XML_ErrorString(i32 8)
  %call502 = call i32 @PyModule_AddStringConstant(%struct._object* %278, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i8* %call501)
  %cmp503 = icmp slt i32 %call502, 0
  br i1 %cmp503, label %if.then.504, label %if.end.505

if.then.504:                                      ; preds = %if.end.500
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.505:                                       ; preds = %if.end.500
  %call506 = call %struct._object* @PyLong_FromLong(i64 8)
  store %struct._object* %call506, %struct._object** %tmpnum, align 8
  %279 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp507 = icmp eq %struct._object* %279, null
  br i1 %cmp507, label %if.then.508, label %if.end.509

if.then.508:                                      ; preds = %if.end.505
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.509:                                       ; preds = %if.end.505
  %280 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call510 = call i8* @PyExpat_XML_ErrorString(i32 8)
  %281 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call511 = call i32 @PyDict_SetItemString(%struct._object* %280, i8* %call510, %struct._object* %281)
  store i32 %call511, i32* %res, align 4
  %282 = load i32, i32* %res, align 4
  %cmp512 = icmp slt i32 %282, 0
  br i1 %cmp512, label %if.then.513, label %if.end.514

if.then.513:                                      ; preds = %if.end.509
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.514:                                       ; preds = %if.end.509
  %call515 = call i8* @PyExpat_XML_ErrorString(i32 8)
  %call516 = call %struct._object* @PyUnicode_FromString(i8* %call515)
  store %struct._object* %call516, %struct._object** %tmpstr, align 8
  %283 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp517 = icmp eq %struct._object* %283, null
  br i1 %cmp517, label %if.then.518, label %if.end.519

if.then.518:                                      ; preds = %if.end.514
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.519:                                       ; preds = %if.end.514
  %284 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %285 = load %struct._object*, %struct._object** %tmpnum, align 8
  %286 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call520 = call i32 @PyDict_SetItem(%struct._object* %284, %struct._object* %285, %struct._object* %286)
  store i32 %call520, i32* %res, align 4
  br label %do.body.521

do.body.521:                                      ; preds = %if.end.519
  %287 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %287, %struct._object** %_py_decref_tmp523, align 8
  %288 = load %struct._object*, %struct._object** %_py_decref_tmp523, align 8
  %ob_refcnt524 = getelementptr inbounds %struct._object, %struct._object* %288, i32 0, i32 0
  %289 = load i64, i64* %ob_refcnt524, align 8
  %dec525 = add i64 %289, -1
  store i64 %dec525, i64* %ob_refcnt524, align 8
  %cmp526 = icmp ne i64 %dec525, 0
  br i1 %cmp526, label %if.then.527, label %if.else.528

if.then.527:                                      ; preds = %do.body.521
  br label %if.end.531

if.else.528:                                      ; preds = %do.body.521
  %290 = load %struct._object*, %struct._object** %_py_decref_tmp523, align 8
  %ob_type529 = getelementptr inbounds %struct._object, %struct._object* %290, i32 0, i32 1
  %291 = load %struct._typeobject*, %struct._typeobject** %ob_type529, align 8
  %tp_dealloc530 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %291, i32 0, i32 4
  %292 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc530, align 8
  %293 = load %struct._object*, %struct._object** %_py_decref_tmp523, align 8
  call void %292(%struct._object* %293)
  br label %if.end.531

if.end.531:                                       ; preds = %if.else.528, %if.then.527
  br label %do.end.532

do.end.532:                                       ; preds = %if.end.531
  br label %do.body.533

do.body.533:                                      ; preds = %do.end.532
  %294 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %294, %struct._object** %_py_decref_tmp535, align 8
  %295 = load %struct._object*, %struct._object** %_py_decref_tmp535, align 8
  %ob_refcnt536 = getelementptr inbounds %struct._object, %struct._object* %295, i32 0, i32 0
  %296 = load i64, i64* %ob_refcnt536, align 8
  %dec537 = add i64 %296, -1
  store i64 %dec537, i64* %ob_refcnt536, align 8
  %cmp538 = icmp ne i64 %dec537, 0
  br i1 %cmp538, label %if.then.539, label %if.else.540

if.then.539:                                      ; preds = %do.body.533
  br label %if.end.543

if.else.540:                                      ; preds = %do.body.533
  %297 = load %struct._object*, %struct._object** %_py_decref_tmp535, align 8
  %ob_type541 = getelementptr inbounds %struct._object, %struct._object* %297, i32 0, i32 1
  %298 = load %struct._typeobject*, %struct._typeobject** %ob_type541, align 8
  %tp_dealloc542 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %298, i32 0, i32 4
  %299 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc542, align 8
  %300 = load %struct._object*, %struct._object** %_py_decref_tmp535, align 8
  call void %299(%struct._object* %300)
  br label %if.end.543

if.end.543:                                       ; preds = %if.else.540, %if.then.539
  br label %do.end.544

do.end.544:                                       ; preds = %if.end.543
  %301 = load i32, i32* %res, align 4
  %cmp545 = icmp slt i32 %301, 0
  br i1 %cmp545, label %if.then.546, label %if.end.547

if.then.546:                                      ; preds = %do.end.544
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.547:                                       ; preds = %do.end.544
  %302 = load %struct._object*, %struct._object** %errors_module, align 8
  %call548 = call i8* @PyExpat_XML_ErrorString(i32 9)
  %call549 = call i32 @PyModule_AddStringConstant(%struct._object* %302, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0), i8* %call548)
  %cmp550 = icmp slt i32 %call549, 0
  br i1 %cmp550, label %if.then.551, label %if.end.552

if.then.551:                                      ; preds = %if.end.547
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.552:                                       ; preds = %if.end.547
  %call553 = call %struct._object* @PyLong_FromLong(i64 9)
  store %struct._object* %call553, %struct._object** %tmpnum, align 8
  %303 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp554 = icmp eq %struct._object* %303, null
  br i1 %cmp554, label %if.then.555, label %if.end.556

if.then.555:                                      ; preds = %if.end.552
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.556:                                       ; preds = %if.end.552
  %304 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call557 = call i8* @PyExpat_XML_ErrorString(i32 9)
  %305 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call558 = call i32 @PyDict_SetItemString(%struct._object* %304, i8* %call557, %struct._object* %305)
  store i32 %call558, i32* %res, align 4
  %306 = load i32, i32* %res, align 4
  %cmp559 = icmp slt i32 %306, 0
  br i1 %cmp559, label %if.then.560, label %if.end.561

if.then.560:                                      ; preds = %if.end.556
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.561:                                       ; preds = %if.end.556
  %call562 = call i8* @PyExpat_XML_ErrorString(i32 9)
  %call563 = call %struct._object* @PyUnicode_FromString(i8* %call562)
  store %struct._object* %call563, %struct._object** %tmpstr, align 8
  %307 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp564 = icmp eq %struct._object* %307, null
  br i1 %cmp564, label %if.then.565, label %if.end.566

if.then.565:                                      ; preds = %if.end.561
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.566:                                       ; preds = %if.end.561
  %308 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %309 = load %struct._object*, %struct._object** %tmpnum, align 8
  %310 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call567 = call i32 @PyDict_SetItem(%struct._object* %308, %struct._object* %309, %struct._object* %310)
  store i32 %call567, i32* %res, align 4
  br label %do.body.568

do.body.568:                                      ; preds = %if.end.566
  %311 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %311, %struct._object** %_py_decref_tmp570, align 8
  %312 = load %struct._object*, %struct._object** %_py_decref_tmp570, align 8
  %ob_refcnt571 = getelementptr inbounds %struct._object, %struct._object* %312, i32 0, i32 0
  %313 = load i64, i64* %ob_refcnt571, align 8
  %dec572 = add i64 %313, -1
  store i64 %dec572, i64* %ob_refcnt571, align 8
  %cmp573 = icmp ne i64 %dec572, 0
  br i1 %cmp573, label %if.then.574, label %if.else.575

if.then.574:                                      ; preds = %do.body.568
  br label %if.end.578

if.else.575:                                      ; preds = %do.body.568
  %314 = load %struct._object*, %struct._object** %_py_decref_tmp570, align 8
  %ob_type576 = getelementptr inbounds %struct._object, %struct._object* %314, i32 0, i32 1
  %315 = load %struct._typeobject*, %struct._typeobject** %ob_type576, align 8
  %tp_dealloc577 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %315, i32 0, i32 4
  %316 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc577, align 8
  %317 = load %struct._object*, %struct._object** %_py_decref_tmp570, align 8
  call void %316(%struct._object* %317)
  br label %if.end.578

if.end.578:                                       ; preds = %if.else.575, %if.then.574
  br label %do.end.579

do.end.579:                                       ; preds = %if.end.578
  br label %do.body.580

do.body.580:                                      ; preds = %do.end.579
  %318 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %318, %struct._object** %_py_decref_tmp582, align 8
  %319 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  %ob_refcnt583 = getelementptr inbounds %struct._object, %struct._object* %319, i32 0, i32 0
  %320 = load i64, i64* %ob_refcnt583, align 8
  %dec584 = add i64 %320, -1
  store i64 %dec584, i64* %ob_refcnt583, align 8
  %cmp585 = icmp ne i64 %dec584, 0
  br i1 %cmp585, label %if.then.586, label %if.else.587

if.then.586:                                      ; preds = %do.body.580
  br label %if.end.590

if.else.587:                                      ; preds = %do.body.580
  %321 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  %ob_type588 = getelementptr inbounds %struct._object, %struct._object* %321, i32 0, i32 1
  %322 = load %struct._typeobject*, %struct._typeobject** %ob_type588, align 8
  %tp_dealloc589 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %322, i32 0, i32 4
  %323 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc589, align 8
  %324 = load %struct._object*, %struct._object** %_py_decref_tmp582, align 8
  call void %323(%struct._object* %324)
  br label %if.end.590

if.end.590:                                       ; preds = %if.else.587, %if.then.586
  br label %do.end.591

do.end.591:                                       ; preds = %if.end.590
  %325 = load i32, i32* %res, align 4
  %cmp592 = icmp slt i32 %325, 0
  br i1 %cmp592, label %if.then.593, label %if.end.594

if.then.593:                                      ; preds = %do.end.591
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.594:                                       ; preds = %do.end.591
  %326 = load %struct._object*, %struct._object** %errors_module, align 8
  %call595 = call i8* @PyExpat_XML_ErrorString(i32 10)
  %call596 = call i32 @PyModule_AddStringConstant(%struct._object* %326, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.25, i32 0, i32 0), i8* %call595)
  %cmp597 = icmp slt i32 %call596, 0
  br i1 %cmp597, label %if.then.598, label %if.end.599

if.then.598:                                      ; preds = %if.end.594
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.599:                                       ; preds = %if.end.594
  %call600 = call %struct._object* @PyLong_FromLong(i64 10)
  store %struct._object* %call600, %struct._object** %tmpnum, align 8
  %327 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp601 = icmp eq %struct._object* %327, null
  br i1 %cmp601, label %if.then.602, label %if.end.603

if.then.602:                                      ; preds = %if.end.599
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.603:                                       ; preds = %if.end.599
  %328 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call604 = call i8* @PyExpat_XML_ErrorString(i32 10)
  %329 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call605 = call i32 @PyDict_SetItemString(%struct._object* %328, i8* %call604, %struct._object* %329)
  store i32 %call605, i32* %res, align 4
  %330 = load i32, i32* %res, align 4
  %cmp606 = icmp slt i32 %330, 0
  br i1 %cmp606, label %if.then.607, label %if.end.608

if.then.607:                                      ; preds = %if.end.603
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.608:                                       ; preds = %if.end.603
  %call609 = call i8* @PyExpat_XML_ErrorString(i32 10)
  %call610 = call %struct._object* @PyUnicode_FromString(i8* %call609)
  store %struct._object* %call610, %struct._object** %tmpstr, align 8
  %331 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp611 = icmp eq %struct._object* %331, null
  br i1 %cmp611, label %if.then.612, label %if.end.613

if.then.612:                                      ; preds = %if.end.608
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.613:                                       ; preds = %if.end.608
  %332 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %333 = load %struct._object*, %struct._object** %tmpnum, align 8
  %334 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call614 = call i32 @PyDict_SetItem(%struct._object* %332, %struct._object* %333, %struct._object* %334)
  store i32 %call614, i32* %res, align 4
  br label %do.body.615

do.body.615:                                      ; preds = %if.end.613
  %335 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %335, %struct._object** %_py_decref_tmp617, align 8
  %336 = load %struct._object*, %struct._object** %_py_decref_tmp617, align 8
  %ob_refcnt618 = getelementptr inbounds %struct._object, %struct._object* %336, i32 0, i32 0
  %337 = load i64, i64* %ob_refcnt618, align 8
  %dec619 = add i64 %337, -1
  store i64 %dec619, i64* %ob_refcnt618, align 8
  %cmp620 = icmp ne i64 %dec619, 0
  br i1 %cmp620, label %if.then.621, label %if.else.622

if.then.621:                                      ; preds = %do.body.615
  br label %if.end.625

if.else.622:                                      ; preds = %do.body.615
  %338 = load %struct._object*, %struct._object** %_py_decref_tmp617, align 8
  %ob_type623 = getelementptr inbounds %struct._object, %struct._object* %338, i32 0, i32 1
  %339 = load %struct._typeobject*, %struct._typeobject** %ob_type623, align 8
  %tp_dealloc624 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %339, i32 0, i32 4
  %340 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc624, align 8
  %341 = load %struct._object*, %struct._object** %_py_decref_tmp617, align 8
  call void %340(%struct._object* %341)
  br label %if.end.625

if.end.625:                                       ; preds = %if.else.622, %if.then.621
  br label %do.end.626

do.end.626:                                       ; preds = %if.end.625
  br label %do.body.627

do.body.627:                                      ; preds = %do.end.626
  %342 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %342, %struct._object** %_py_decref_tmp629, align 8
  %343 = load %struct._object*, %struct._object** %_py_decref_tmp629, align 8
  %ob_refcnt630 = getelementptr inbounds %struct._object, %struct._object* %343, i32 0, i32 0
  %344 = load i64, i64* %ob_refcnt630, align 8
  %dec631 = add i64 %344, -1
  store i64 %dec631, i64* %ob_refcnt630, align 8
  %cmp632 = icmp ne i64 %dec631, 0
  br i1 %cmp632, label %if.then.633, label %if.else.634

if.then.633:                                      ; preds = %do.body.627
  br label %if.end.637

if.else.634:                                      ; preds = %do.body.627
  %345 = load %struct._object*, %struct._object** %_py_decref_tmp629, align 8
  %ob_type635 = getelementptr inbounds %struct._object, %struct._object* %345, i32 0, i32 1
  %346 = load %struct._typeobject*, %struct._typeobject** %ob_type635, align 8
  %tp_dealloc636 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %346, i32 0, i32 4
  %347 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc636, align 8
  %348 = load %struct._object*, %struct._object** %_py_decref_tmp629, align 8
  call void %347(%struct._object* %348)
  br label %if.end.637

if.end.637:                                       ; preds = %if.else.634, %if.then.633
  br label %do.end.638

do.end.638:                                       ; preds = %if.end.637
  %349 = load i32, i32* %res, align 4
  %cmp639 = icmp slt i32 %349, 0
  br i1 %cmp639, label %if.then.640, label %if.end.641

if.then.640:                                      ; preds = %do.end.638
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.641:                                       ; preds = %do.end.638
  %350 = load %struct._object*, %struct._object** %errors_module, align 8
  %call642 = call i8* @PyExpat_XML_ErrorString(i32 11)
  %call643 = call i32 @PyModule_AddStringConstant(%struct._object* %350, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.26, i32 0, i32 0), i8* %call642)
  %cmp644 = icmp slt i32 %call643, 0
  br i1 %cmp644, label %if.then.645, label %if.end.646

if.then.645:                                      ; preds = %if.end.641
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.646:                                       ; preds = %if.end.641
  %call647 = call %struct._object* @PyLong_FromLong(i64 11)
  store %struct._object* %call647, %struct._object** %tmpnum, align 8
  %351 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp648 = icmp eq %struct._object* %351, null
  br i1 %cmp648, label %if.then.649, label %if.end.650

if.then.649:                                      ; preds = %if.end.646
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.650:                                       ; preds = %if.end.646
  %352 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call651 = call i8* @PyExpat_XML_ErrorString(i32 11)
  %353 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call652 = call i32 @PyDict_SetItemString(%struct._object* %352, i8* %call651, %struct._object* %353)
  store i32 %call652, i32* %res, align 4
  %354 = load i32, i32* %res, align 4
  %cmp653 = icmp slt i32 %354, 0
  br i1 %cmp653, label %if.then.654, label %if.end.655

if.then.654:                                      ; preds = %if.end.650
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.655:                                       ; preds = %if.end.650
  %call656 = call i8* @PyExpat_XML_ErrorString(i32 11)
  %call657 = call %struct._object* @PyUnicode_FromString(i8* %call656)
  store %struct._object* %call657, %struct._object** %tmpstr, align 8
  %355 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp658 = icmp eq %struct._object* %355, null
  br i1 %cmp658, label %if.then.659, label %if.end.660

if.then.659:                                      ; preds = %if.end.655
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.660:                                       ; preds = %if.end.655
  %356 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %357 = load %struct._object*, %struct._object** %tmpnum, align 8
  %358 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call661 = call i32 @PyDict_SetItem(%struct._object* %356, %struct._object* %357, %struct._object* %358)
  store i32 %call661, i32* %res, align 4
  br label %do.body.662

do.body.662:                                      ; preds = %if.end.660
  %359 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %359, %struct._object** %_py_decref_tmp664, align 8
  %360 = load %struct._object*, %struct._object** %_py_decref_tmp664, align 8
  %ob_refcnt665 = getelementptr inbounds %struct._object, %struct._object* %360, i32 0, i32 0
  %361 = load i64, i64* %ob_refcnt665, align 8
  %dec666 = add i64 %361, -1
  store i64 %dec666, i64* %ob_refcnt665, align 8
  %cmp667 = icmp ne i64 %dec666, 0
  br i1 %cmp667, label %if.then.668, label %if.else.669

if.then.668:                                      ; preds = %do.body.662
  br label %if.end.672

if.else.669:                                      ; preds = %do.body.662
  %362 = load %struct._object*, %struct._object** %_py_decref_tmp664, align 8
  %ob_type670 = getelementptr inbounds %struct._object, %struct._object* %362, i32 0, i32 1
  %363 = load %struct._typeobject*, %struct._typeobject** %ob_type670, align 8
  %tp_dealloc671 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %363, i32 0, i32 4
  %364 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc671, align 8
  %365 = load %struct._object*, %struct._object** %_py_decref_tmp664, align 8
  call void %364(%struct._object* %365)
  br label %if.end.672

if.end.672:                                       ; preds = %if.else.669, %if.then.668
  br label %do.end.673

do.end.673:                                       ; preds = %if.end.672
  br label %do.body.674

do.body.674:                                      ; preds = %do.end.673
  %366 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %366, %struct._object** %_py_decref_tmp676, align 8
  %367 = load %struct._object*, %struct._object** %_py_decref_tmp676, align 8
  %ob_refcnt677 = getelementptr inbounds %struct._object, %struct._object* %367, i32 0, i32 0
  %368 = load i64, i64* %ob_refcnt677, align 8
  %dec678 = add i64 %368, -1
  store i64 %dec678, i64* %ob_refcnt677, align 8
  %cmp679 = icmp ne i64 %dec678, 0
  br i1 %cmp679, label %if.then.680, label %if.else.681

if.then.680:                                      ; preds = %do.body.674
  br label %if.end.684

if.else.681:                                      ; preds = %do.body.674
  %369 = load %struct._object*, %struct._object** %_py_decref_tmp676, align 8
  %ob_type682 = getelementptr inbounds %struct._object, %struct._object* %369, i32 0, i32 1
  %370 = load %struct._typeobject*, %struct._typeobject** %ob_type682, align 8
  %tp_dealloc683 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %370, i32 0, i32 4
  %371 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc683, align 8
  %372 = load %struct._object*, %struct._object** %_py_decref_tmp676, align 8
  call void %371(%struct._object* %372)
  br label %if.end.684

if.end.684:                                       ; preds = %if.else.681, %if.then.680
  br label %do.end.685

do.end.685:                                       ; preds = %if.end.684
  %373 = load i32, i32* %res, align 4
  %cmp686 = icmp slt i32 %373, 0
  br i1 %cmp686, label %if.then.687, label %if.end.688

if.then.687:                                      ; preds = %do.end.685
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.688:                                       ; preds = %do.end.685
  %374 = load %struct._object*, %struct._object** %errors_module, align 8
  %call689 = call i8* @PyExpat_XML_ErrorString(i32 12)
  %call690 = call i32 @PyModule_AddStringConstant(%struct._object* %374, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0), i8* %call689)
  %cmp691 = icmp slt i32 %call690, 0
  br i1 %cmp691, label %if.then.692, label %if.end.693

if.then.692:                                      ; preds = %if.end.688
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.693:                                       ; preds = %if.end.688
  %call694 = call %struct._object* @PyLong_FromLong(i64 12)
  store %struct._object* %call694, %struct._object** %tmpnum, align 8
  %375 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp695 = icmp eq %struct._object* %375, null
  br i1 %cmp695, label %if.then.696, label %if.end.697

if.then.696:                                      ; preds = %if.end.693
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.697:                                       ; preds = %if.end.693
  %376 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call698 = call i8* @PyExpat_XML_ErrorString(i32 12)
  %377 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call699 = call i32 @PyDict_SetItemString(%struct._object* %376, i8* %call698, %struct._object* %377)
  store i32 %call699, i32* %res, align 4
  %378 = load i32, i32* %res, align 4
  %cmp700 = icmp slt i32 %378, 0
  br i1 %cmp700, label %if.then.701, label %if.end.702

if.then.701:                                      ; preds = %if.end.697
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.702:                                       ; preds = %if.end.697
  %call703 = call i8* @PyExpat_XML_ErrorString(i32 12)
  %call704 = call %struct._object* @PyUnicode_FromString(i8* %call703)
  store %struct._object* %call704, %struct._object** %tmpstr, align 8
  %379 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp705 = icmp eq %struct._object* %379, null
  br i1 %cmp705, label %if.then.706, label %if.end.707

if.then.706:                                      ; preds = %if.end.702
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.707:                                       ; preds = %if.end.702
  %380 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %381 = load %struct._object*, %struct._object** %tmpnum, align 8
  %382 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call708 = call i32 @PyDict_SetItem(%struct._object* %380, %struct._object* %381, %struct._object* %382)
  store i32 %call708, i32* %res, align 4
  br label %do.body.709

do.body.709:                                      ; preds = %if.end.707
  %383 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %383, %struct._object** %_py_decref_tmp711, align 8
  %384 = load %struct._object*, %struct._object** %_py_decref_tmp711, align 8
  %ob_refcnt712 = getelementptr inbounds %struct._object, %struct._object* %384, i32 0, i32 0
  %385 = load i64, i64* %ob_refcnt712, align 8
  %dec713 = add i64 %385, -1
  store i64 %dec713, i64* %ob_refcnt712, align 8
  %cmp714 = icmp ne i64 %dec713, 0
  br i1 %cmp714, label %if.then.715, label %if.else.716

if.then.715:                                      ; preds = %do.body.709
  br label %if.end.719

if.else.716:                                      ; preds = %do.body.709
  %386 = load %struct._object*, %struct._object** %_py_decref_tmp711, align 8
  %ob_type717 = getelementptr inbounds %struct._object, %struct._object* %386, i32 0, i32 1
  %387 = load %struct._typeobject*, %struct._typeobject** %ob_type717, align 8
  %tp_dealloc718 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %387, i32 0, i32 4
  %388 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc718, align 8
  %389 = load %struct._object*, %struct._object** %_py_decref_tmp711, align 8
  call void %388(%struct._object* %389)
  br label %if.end.719

if.end.719:                                       ; preds = %if.else.716, %if.then.715
  br label %do.end.720

do.end.720:                                       ; preds = %if.end.719
  br label %do.body.721

do.body.721:                                      ; preds = %do.end.720
  %390 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %390, %struct._object** %_py_decref_tmp723, align 8
  %391 = load %struct._object*, %struct._object** %_py_decref_tmp723, align 8
  %ob_refcnt724 = getelementptr inbounds %struct._object, %struct._object* %391, i32 0, i32 0
  %392 = load i64, i64* %ob_refcnt724, align 8
  %dec725 = add i64 %392, -1
  store i64 %dec725, i64* %ob_refcnt724, align 8
  %cmp726 = icmp ne i64 %dec725, 0
  br i1 %cmp726, label %if.then.727, label %if.else.728

if.then.727:                                      ; preds = %do.body.721
  br label %if.end.731

if.else.728:                                      ; preds = %do.body.721
  %393 = load %struct._object*, %struct._object** %_py_decref_tmp723, align 8
  %ob_type729 = getelementptr inbounds %struct._object, %struct._object* %393, i32 0, i32 1
  %394 = load %struct._typeobject*, %struct._typeobject** %ob_type729, align 8
  %tp_dealloc730 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %394, i32 0, i32 4
  %395 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc730, align 8
  %396 = load %struct._object*, %struct._object** %_py_decref_tmp723, align 8
  call void %395(%struct._object* %396)
  br label %if.end.731

if.end.731:                                       ; preds = %if.else.728, %if.then.727
  br label %do.end.732

do.end.732:                                       ; preds = %if.end.731
  %397 = load i32, i32* %res, align 4
  %cmp733 = icmp slt i32 %397, 0
  br i1 %cmp733, label %if.then.734, label %if.end.735

if.then.734:                                      ; preds = %do.end.732
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.735:                                       ; preds = %do.end.732
  %398 = load %struct._object*, %struct._object** %errors_module, align 8
  %call736 = call i8* @PyExpat_XML_ErrorString(i32 13)
  %call737 = call i32 @PyModule_AddStringConstant(%struct._object* %398, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.28, i32 0, i32 0), i8* %call736)
  %cmp738 = icmp slt i32 %call737, 0
  br i1 %cmp738, label %if.then.739, label %if.end.740

if.then.739:                                      ; preds = %if.end.735
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.740:                                       ; preds = %if.end.735
  %call741 = call %struct._object* @PyLong_FromLong(i64 13)
  store %struct._object* %call741, %struct._object** %tmpnum, align 8
  %399 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp742 = icmp eq %struct._object* %399, null
  br i1 %cmp742, label %if.then.743, label %if.end.744

if.then.743:                                      ; preds = %if.end.740
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.744:                                       ; preds = %if.end.740
  %400 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call745 = call i8* @PyExpat_XML_ErrorString(i32 13)
  %401 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call746 = call i32 @PyDict_SetItemString(%struct._object* %400, i8* %call745, %struct._object* %401)
  store i32 %call746, i32* %res, align 4
  %402 = load i32, i32* %res, align 4
  %cmp747 = icmp slt i32 %402, 0
  br i1 %cmp747, label %if.then.748, label %if.end.749

if.then.748:                                      ; preds = %if.end.744
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.749:                                       ; preds = %if.end.744
  %call750 = call i8* @PyExpat_XML_ErrorString(i32 13)
  %call751 = call %struct._object* @PyUnicode_FromString(i8* %call750)
  store %struct._object* %call751, %struct._object** %tmpstr, align 8
  %403 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp752 = icmp eq %struct._object* %403, null
  br i1 %cmp752, label %if.then.753, label %if.end.754

if.then.753:                                      ; preds = %if.end.749
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.754:                                       ; preds = %if.end.749
  %404 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %405 = load %struct._object*, %struct._object** %tmpnum, align 8
  %406 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call755 = call i32 @PyDict_SetItem(%struct._object* %404, %struct._object* %405, %struct._object* %406)
  store i32 %call755, i32* %res, align 4
  br label %do.body.756

do.body.756:                                      ; preds = %if.end.754
  %407 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %407, %struct._object** %_py_decref_tmp758, align 8
  %408 = load %struct._object*, %struct._object** %_py_decref_tmp758, align 8
  %ob_refcnt759 = getelementptr inbounds %struct._object, %struct._object* %408, i32 0, i32 0
  %409 = load i64, i64* %ob_refcnt759, align 8
  %dec760 = add i64 %409, -1
  store i64 %dec760, i64* %ob_refcnt759, align 8
  %cmp761 = icmp ne i64 %dec760, 0
  br i1 %cmp761, label %if.then.762, label %if.else.763

if.then.762:                                      ; preds = %do.body.756
  br label %if.end.766

if.else.763:                                      ; preds = %do.body.756
  %410 = load %struct._object*, %struct._object** %_py_decref_tmp758, align 8
  %ob_type764 = getelementptr inbounds %struct._object, %struct._object* %410, i32 0, i32 1
  %411 = load %struct._typeobject*, %struct._typeobject** %ob_type764, align 8
  %tp_dealloc765 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %411, i32 0, i32 4
  %412 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc765, align 8
  %413 = load %struct._object*, %struct._object** %_py_decref_tmp758, align 8
  call void %412(%struct._object* %413)
  br label %if.end.766

if.end.766:                                       ; preds = %if.else.763, %if.then.762
  br label %do.end.767

do.end.767:                                       ; preds = %if.end.766
  br label %do.body.768

do.body.768:                                      ; preds = %do.end.767
  %414 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %414, %struct._object** %_py_decref_tmp770, align 8
  %415 = load %struct._object*, %struct._object** %_py_decref_tmp770, align 8
  %ob_refcnt771 = getelementptr inbounds %struct._object, %struct._object* %415, i32 0, i32 0
  %416 = load i64, i64* %ob_refcnt771, align 8
  %dec772 = add i64 %416, -1
  store i64 %dec772, i64* %ob_refcnt771, align 8
  %cmp773 = icmp ne i64 %dec772, 0
  br i1 %cmp773, label %if.then.774, label %if.else.775

if.then.774:                                      ; preds = %do.body.768
  br label %if.end.778

if.else.775:                                      ; preds = %do.body.768
  %417 = load %struct._object*, %struct._object** %_py_decref_tmp770, align 8
  %ob_type776 = getelementptr inbounds %struct._object, %struct._object* %417, i32 0, i32 1
  %418 = load %struct._typeobject*, %struct._typeobject** %ob_type776, align 8
  %tp_dealloc777 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %418, i32 0, i32 4
  %419 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc777, align 8
  %420 = load %struct._object*, %struct._object** %_py_decref_tmp770, align 8
  call void %419(%struct._object* %420)
  br label %if.end.778

if.end.778:                                       ; preds = %if.else.775, %if.then.774
  br label %do.end.779

do.end.779:                                       ; preds = %if.end.778
  %421 = load i32, i32* %res, align 4
  %cmp780 = icmp slt i32 %421, 0
  br i1 %cmp780, label %if.then.781, label %if.end.782

if.then.781:                                      ; preds = %do.end.779
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.782:                                       ; preds = %do.end.779
  %422 = load %struct._object*, %struct._object** %errors_module, align 8
  %call783 = call i8* @PyExpat_XML_ErrorString(i32 14)
  %call784 = call i32 @PyModule_AddStringConstant(%struct._object* %422, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i32 0, i32 0), i8* %call783)
  %cmp785 = icmp slt i32 %call784, 0
  br i1 %cmp785, label %if.then.786, label %if.end.787

if.then.786:                                      ; preds = %if.end.782
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.787:                                       ; preds = %if.end.782
  %call788 = call %struct._object* @PyLong_FromLong(i64 14)
  store %struct._object* %call788, %struct._object** %tmpnum, align 8
  %423 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp789 = icmp eq %struct._object* %423, null
  br i1 %cmp789, label %if.then.790, label %if.end.791

if.then.790:                                      ; preds = %if.end.787
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.791:                                       ; preds = %if.end.787
  %424 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call792 = call i8* @PyExpat_XML_ErrorString(i32 14)
  %425 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call793 = call i32 @PyDict_SetItemString(%struct._object* %424, i8* %call792, %struct._object* %425)
  store i32 %call793, i32* %res, align 4
  %426 = load i32, i32* %res, align 4
  %cmp794 = icmp slt i32 %426, 0
  br i1 %cmp794, label %if.then.795, label %if.end.796

if.then.795:                                      ; preds = %if.end.791
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.796:                                       ; preds = %if.end.791
  %call797 = call i8* @PyExpat_XML_ErrorString(i32 14)
  %call798 = call %struct._object* @PyUnicode_FromString(i8* %call797)
  store %struct._object* %call798, %struct._object** %tmpstr, align 8
  %427 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp799 = icmp eq %struct._object* %427, null
  br i1 %cmp799, label %if.then.800, label %if.end.801

if.then.800:                                      ; preds = %if.end.796
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.801:                                       ; preds = %if.end.796
  %428 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %429 = load %struct._object*, %struct._object** %tmpnum, align 8
  %430 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call802 = call i32 @PyDict_SetItem(%struct._object* %428, %struct._object* %429, %struct._object* %430)
  store i32 %call802, i32* %res, align 4
  br label %do.body.803

do.body.803:                                      ; preds = %if.end.801
  %431 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %431, %struct._object** %_py_decref_tmp805, align 8
  %432 = load %struct._object*, %struct._object** %_py_decref_tmp805, align 8
  %ob_refcnt806 = getelementptr inbounds %struct._object, %struct._object* %432, i32 0, i32 0
  %433 = load i64, i64* %ob_refcnt806, align 8
  %dec807 = add i64 %433, -1
  store i64 %dec807, i64* %ob_refcnt806, align 8
  %cmp808 = icmp ne i64 %dec807, 0
  br i1 %cmp808, label %if.then.809, label %if.else.810

if.then.809:                                      ; preds = %do.body.803
  br label %if.end.813

if.else.810:                                      ; preds = %do.body.803
  %434 = load %struct._object*, %struct._object** %_py_decref_tmp805, align 8
  %ob_type811 = getelementptr inbounds %struct._object, %struct._object* %434, i32 0, i32 1
  %435 = load %struct._typeobject*, %struct._typeobject** %ob_type811, align 8
  %tp_dealloc812 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %435, i32 0, i32 4
  %436 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc812, align 8
  %437 = load %struct._object*, %struct._object** %_py_decref_tmp805, align 8
  call void %436(%struct._object* %437)
  br label %if.end.813

if.end.813:                                       ; preds = %if.else.810, %if.then.809
  br label %do.end.814

do.end.814:                                       ; preds = %if.end.813
  br label %do.body.815

do.body.815:                                      ; preds = %do.end.814
  %438 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %438, %struct._object** %_py_decref_tmp817, align 8
  %439 = load %struct._object*, %struct._object** %_py_decref_tmp817, align 8
  %ob_refcnt818 = getelementptr inbounds %struct._object, %struct._object* %439, i32 0, i32 0
  %440 = load i64, i64* %ob_refcnt818, align 8
  %dec819 = add i64 %440, -1
  store i64 %dec819, i64* %ob_refcnt818, align 8
  %cmp820 = icmp ne i64 %dec819, 0
  br i1 %cmp820, label %if.then.821, label %if.else.822

if.then.821:                                      ; preds = %do.body.815
  br label %if.end.825

if.else.822:                                      ; preds = %do.body.815
  %441 = load %struct._object*, %struct._object** %_py_decref_tmp817, align 8
  %ob_type823 = getelementptr inbounds %struct._object, %struct._object* %441, i32 0, i32 1
  %442 = load %struct._typeobject*, %struct._typeobject** %ob_type823, align 8
  %tp_dealloc824 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %442, i32 0, i32 4
  %443 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc824, align 8
  %444 = load %struct._object*, %struct._object** %_py_decref_tmp817, align 8
  call void %443(%struct._object* %444)
  br label %if.end.825

if.end.825:                                       ; preds = %if.else.822, %if.then.821
  br label %do.end.826

do.end.826:                                       ; preds = %if.end.825
  %445 = load i32, i32* %res, align 4
  %cmp827 = icmp slt i32 %445, 0
  br i1 %cmp827, label %if.then.828, label %if.end.829

if.then.828:                                      ; preds = %do.end.826
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.829:                                       ; preds = %do.end.826
  %446 = load %struct._object*, %struct._object** %errors_module, align 8
  %call830 = call i8* @PyExpat_XML_ErrorString(i32 15)
  %call831 = call i32 @PyModule_AddStringConstant(%struct._object* %446, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.30, i32 0, i32 0), i8* %call830)
  %cmp832 = icmp slt i32 %call831, 0
  br i1 %cmp832, label %if.then.833, label %if.end.834

if.then.833:                                      ; preds = %if.end.829
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.834:                                       ; preds = %if.end.829
  %call835 = call %struct._object* @PyLong_FromLong(i64 15)
  store %struct._object* %call835, %struct._object** %tmpnum, align 8
  %447 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp836 = icmp eq %struct._object* %447, null
  br i1 %cmp836, label %if.then.837, label %if.end.838

if.then.837:                                      ; preds = %if.end.834
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.838:                                       ; preds = %if.end.834
  %448 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call839 = call i8* @PyExpat_XML_ErrorString(i32 15)
  %449 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call840 = call i32 @PyDict_SetItemString(%struct._object* %448, i8* %call839, %struct._object* %449)
  store i32 %call840, i32* %res, align 4
  %450 = load i32, i32* %res, align 4
  %cmp841 = icmp slt i32 %450, 0
  br i1 %cmp841, label %if.then.842, label %if.end.843

if.then.842:                                      ; preds = %if.end.838
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.843:                                       ; preds = %if.end.838
  %call844 = call i8* @PyExpat_XML_ErrorString(i32 15)
  %call845 = call %struct._object* @PyUnicode_FromString(i8* %call844)
  store %struct._object* %call845, %struct._object** %tmpstr, align 8
  %451 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp846 = icmp eq %struct._object* %451, null
  br i1 %cmp846, label %if.then.847, label %if.end.848

if.then.847:                                      ; preds = %if.end.843
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.848:                                       ; preds = %if.end.843
  %452 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %453 = load %struct._object*, %struct._object** %tmpnum, align 8
  %454 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call849 = call i32 @PyDict_SetItem(%struct._object* %452, %struct._object* %453, %struct._object* %454)
  store i32 %call849, i32* %res, align 4
  br label %do.body.850

do.body.850:                                      ; preds = %if.end.848
  %455 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %455, %struct._object** %_py_decref_tmp852, align 8
  %456 = load %struct._object*, %struct._object** %_py_decref_tmp852, align 8
  %ob_refcnt853 = getelementptr inbounds %struct._object, %struct._object* %456, i32 0, i32 0
  %457 = load i64, i64* %ob_refcnt853, align 8
  %dec854 = add i64 %457, -1
  store i64 %dec854, i64* %ob_refcnt853, align 8
  %cmp855 = icmp ne i64 %dec854, 0
  br i1 %cmp855, label %if.then.856, label %if.else.857

if.then.856:                                      ; preds = %do.body.850
  br label %if.end.860

if.else.857:                                      ; preds = %do.body.850
  %458 = load %struct._object*, %struct._object** %_py_decref_tmp852, align 8
  %ob_type858 = getelementptr inbounds %struct._object, %struct._object* %458, i32 0, i32 1
  %459 = load %struct._typeobject*, %struct._typeobject** %ob_type858, align 8
  %tp_dealloc859 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %459, i32 0, i32 4
  %460 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc859, align 8
  %461 = load %struct._object*, %struct._object** %_py_decref_tmp852, align 8
  call void %460(%struct._object* %461)
  br label %if.end.860

if.end.860:                                       ; preds = %if.else.857, %if.then.856
  br label %do.end.861

do.end.861:                                       ; preds = %if.end.860
  br label %do.body.862

do.body.862:                                      ; preds = %do.end.861
  %462 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %462, %struct._object** %_py_decref_tmp864, align 8
  %463 = load %struct._object*, %struct._object** %_py_decref_tmp864, align 8
  %ob_refcnt865 = getelementptr inbounds %struct._object, %struct._object* %463, i32 0, i32 0
  %464 = load i64, i64* %ob_refcnt865, align 8
  %dec866 = add i64 %464, -1
  store i64 %dec866, i64* %ob_refcnt865, align 8
  %cmp867 = icmp ne i64 %dec866, 0
  br i1 %cmp867, label %if.then.868, label %if.else.869

if.then.868:                                      ; preds = %do.body.862
  br label %if.end.872

if.else.869:                                      ; preds = %do.body.862
  %465 = load %struct._object*, %struct._object** %_py_decref_tmp864, align 8
  %ob_type870 = getelementptr inbounds %struct._object, %struct._object* %465, i32 0, i32 1
  %466 = load %struct._typeobject*, %struct._typeobject** %ob_type870, align 8
  %tp_dealloc871 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %466, i32 0, i32 4
  %467 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc871, align 8
  %468 = load %struct._object*, %struct._object** %_py_decref_tmp864, align 8
  call void %467(%struct._object* %468)
  br label %if.end.872

if.end.872:                                       ; preds = %if.else.869, %if.then.868
  br label %do.end.873

do.end.873:                                       ; preds = %if.end.872
  %469 = load i32, i32* %res, align 4
  %cmp874 = icmp slt i32 %469, 0
  br i1 %cmp874, label %if.then.875, label %if.end.876

if.then.875:                                      ; preds = %do.end.873
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.876:                                       ; preds = %do.end.873
  %470 = load %struct._object*, %struct._object** %errors_module, align 8
  %call877 = call i8* @PyExpat_XML_ErrorString(i32 16)
  %call878 = call i32 @PyModule_AddStringConstant(%struct._object* %470, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i32 0, i32 0), i8* %call877)
  %cmp879 = icmp slt i32 %call878, 0
  br i1 %cmp879, label %if.then.880, label %if.end.881

if.then.880:                                      ; preds = %if.end.876
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.881:                                       ; preds = %if.end.876
  %call882 = call %struct._object* @PyLong_FromLong(i64 16)
  store %struct._object* %call882, %struct._object** %tmpnum, align 8
  %471 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp883 = icmp eq %struct._object* %471, null
  br i1 %cmp883, label %if.then.884, label %if.end.885

if.then.884:                                      ; preds = %if.end.881
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.885:                                       ; preds = %if.end.881
  %472 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call886 = call i8* @PyExpat_XML_ErrorString(i32 16)
  %473 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call887 = call i32 @PyDict_SetItemString(%struct._object* %472, i8* %call886, %struct._object* %473)
  store i32 %call887, i32* %res, align 4
  %474 = load i32, i32* %res, align 4
  %cmp888 = icmp slt i32 %474, 0
  br i1 %cmp888, label %if.then.889, label %if.end.890

if.then.889:                                      ; preds = %if.end.885
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.890:                                       ; preds = %if.end.885
  %call891 = call i8* @PyExpat_XML_ErrorString(i32 16)
  %call892 = call %struct._object* @PyUnicode_FromString(i8* %call891)
  store %struct._object* %call892, %struct._object** %tmpstr, align 8
  %475 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp893 = icmp eq %struct._object* %475, null
  br i1 %cmp893, label %if.then.894, label %if.end.895

if.then.894:                                      ; preds = %if.end.890
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.895:                                       ; preds = %if.end.890
  %476 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %477 = load %struct._object*, %struct._object** %tmpnum, align 8
  %478 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call896 = call i32 @PyDict_SetItem(%struct._object* %476, %struct._object* %477, %struct._object* %478)
  store i32 %call896, i32* %res, align 4
  br label %do.body.897

do.body.897:                                      ; preds = %if.end.895
  %479 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %479, %struct._object** %_py_decref_tmp899, align 8
  %480 = load %struct._object*, %struct._object** %_py_decref_tmp899, align 8
  %ob_refcnt900 = getelementptr inbounds %struct._object, %struct._object* %480, i32 0, i32 0
  %481 = load i64, i64* %ob_refcnt900, align 8
  %dec901 = add i64 %481, -1
  store i64 %dec901, i64* %ob_refcnt900, align 8
  %cmp902 = icmp ne i64 %dec901, 0
  br i1 %cmp902, label %if.then.903, label %if.else.904

if.then.903:                                      ; preds = %do.body.897
  br label %if.end.907

if.else.904:                                      ; preds = %do.body.897
  %482 = load %struct._object*, %struct._object** %_py_decref_tmp899, align 8
  %ob_type905 = getelementptr inbounds %struct._object, %struct._object* %482, i32 0, i32 1
  %483 = load %struct._typeobject*, %struct._typeobject** %ob_type905, align 8
  %tp_dealloc906 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %483, i32 0, i32 4
  %484 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc906, align 8
  %485 = load %struct._object*, %struct._object** %_py_decref_tmp899, align 8
  call void %484(%struct._object* %485)
  br label %if.end.907

if.end.907:                                       ; preds = %if.else.904, %if.then.903
  br label %do.end.908

do.end.908:                                       ; preds = %if.end.907
  br label %do.body.909

do.body.909:                                      ; preds = %do.end.908
  %486 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %486, %struct._object** %_py_decref_tmp911, align 8
  %487 = load %struct._object*, %struct._object** %_py_decref_tmp911, align 8
  %ob_refcnt912 = getelementptr inbounds %struct._object, %struct._object* %487, i32 0, i32 0
  %488 = load i64, i64* %ob_refcnt912, align 8
  %dec913 = add i64 %488, -1
  store i64 %dec913, i64* %ob_refcnt912, align 8
  %cmp914 = icmp ne i64 %dec913, 0
  br i1 %cmp914, label %if.then.915, label %if.else.916

if.then.915:                                      ; preds = %do.body.909
  br label %if.end.919

if.else.916:                                      ; preds = %do.body.909
  %489 = load %struct._object*, %struct._object** %_py_decref_tmp911, align 8
  %ob_type917 = getelementptr inbounds %struct._object, %struct._object* %489, i32 0, i32 1
  %490 = load %struct._typeobject*, %struct._typeobject** %ob_type917, align 8
  %tp_dealloc918 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %490, i32 0, i32 4
  %491 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc918, align 8
  %492 = load %struct._object*, %struct._object** %_py_decref_tmp911, align 8
  call void %491(%struct._object* %492)
  br label %if.end.919

if.end.919:                                       ; preds = %if.else.916, %if.then.915
  br label %do.end.920

do.end.920:                                       ; preds = %if.end.919
  %493 = load i32, i32* %res, align 4
  %cmp921 = icmp slt i32 %493, 0
  br i1 %cmp921, label %if.then.922, label %if.end.923

if.then.922:                                      ; preds = %do.end.920
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.923:                                       ; preds = %do.end.920
  %494 = load %struct._object*, %struct._object** %errors_module, align 8
  %call924 = call i8* @PyExpat_XML_ErrorString(i32 17)
  %call925 = call i32 @PyModule_AddStringConstant(%struct._object* %494, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i32 0, i32 0), i8* %call924)
  %cmp926 = icmp slt i32 %call925, 0
  br i1 %cmp926, label %if.then.927, label %if.end.928

if.then.927:                                      ; preds = %if.end.923
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.928:                                       ; preds = %if.end.923
  %call929 = call %struct._object* @PyLong_FromLong(i64 17)
  store %struct._object* %call929, %struct._object** %tmpnum, align 8
  %495 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp930 = icmp eq %struct._object* %495, null
  br i1 %cmp930, label %if.then.931, label %if.end.932

if.then.931:                                      ; preds = %if.end.928
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.932:                                       ; preds = %if.end.928
  %496 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call933 = call i8* @PyExpat_XML_ErrorString(i32 17)
  %497 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call934 = call i32 @PyDict_SetItemString(%struct._object* %496, i8* %call933, %struct._object* %497)
  store i32 %call934, i32* %res, align 4
  %498 = load i32, i32* %res, align 4
  %cmp935 = icmp slt i32 %498, 0
  br i1 %cmp935, label %if.then.936, label %if.end.937

if.then.936:                                      ; preds = %if.end.932
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.937:                                       ; preds = %if.end.932
  %call938 = call i8* @PyExpat_XML_ErrorString(i32 17)
  %call939 = call %struct._object* @PyUnicode_FromString(i8* %call938)
  store %struct._object* %call939, %struct._object** %tmpstr, align 8
  %499 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp940 = icmp eq %struct._object* %499, null
  br i1 %cmp940, label %if.then.941, label %if.end.942

if.then.941:                                      ; preds = %if.end.937
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.942:                                       ; preds = %if.end.937
  %500 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %501 = load %struct._object*, %struct._object** %tmpnum, align 8
  %502 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call943 = call i32 @PyDict_SetItem(%struct._object* %500, %struct._object* %501, %struct._object* %502)
  store i32 %call943, i32* %res, align 4
  br label %do.body.944

do.body.944:                                      ; preds = %if.end.942
  %503 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %503, %struct._object** %_py_decref_tmp946, align 8
  %504 = load %struct._object*, %struct._object** %_py_decref_tmp946, align 8
  %ob_refcnt947 = getelementptr inbounds %struct._object, %struct._object* %504, i32 0, i32 0
  %505 = load i64, i64* %ob_refcnt947, align 8
  %dec948 = add i64 %505, -1
  store i64 %dec948, i64* %ob_refcnt947, align 8
  %cmp949 = icmp ne i64 %dec948, 0
  br i1 %cmp949, label %if.then.950, label %if.else.951

if.then.950:                                      ; preds = %do.body.944
  br label %if.end.954

if.else.951:                                      ; preds = %do.body.944
  %506 = load %struct._object*, %struct._object** %_py_decref_tmp946, align 8
  %ob_type952 = getelementptr inbounds %struct._object, %struct._object* %506, i32 0, i32 1
  %507 = load %struct._typeobject*, %struct._typeobject** %ob_type952, align 8
  %tp_dealloc953 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %507, i32 0, i32 4
  %508 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc953, align 8
  %509 = load %struct._object*, %struct._object** %_py_decref_tmp946, align 8
  call void %508(%struct._object* %509)
  br label %if.end.954

if.end.954:                                       ; preds = %if.else.951, %if.then.950
  br label %do.end.955

do.end.955:                                       ; preds = %if.end.954
  br label %do.body.956

do.body.956:                                      ; preds = %do.end.955
  %510 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %510, %struct._object** %_py_decref_tmp958, align 8
  %511 = load %struct._object*, %struct._object** %_py_decref_tmp958, align 8
  %ob_refcnt959 = getelementptr inbounds %struct._object, %struct._object* %511, i32 0, i32 0
  %512 = load i64, i64* %ob_refcnt959, align 8
  %dec960 = add i64 %512, -1
  store i64 %dec960, i64* %ob_refcnt959, align 8
  %cmp961 = icmp ne i64 %dec960, 0
  br i1 %cmp961, label %if.then.962, label %if.else.963

if.then.962:                                      ; preds = %do.body.956
  br label %if.end.966

if.else.963:                                      ; preds = %do.body.956
  %513 = load %struct._object*, %struct._object** %_py_decref_tmp958, align 8
  %ob_type964 = getelementptr inbounds %struct._object, %struct._object* %513, i32 0, i32 1
  %514 = load %struct._typeobject*, %struct._typeobject** %ob_type964, align 8
  %tp_dealloc965 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %514, i32 0, i32 4
  %515 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc965, align 8
  %516 = load %struct._object*, %struct._object** %_py_decref_tmp958, align 8
  call void %515(%struct._object* %516)
  br label %if.end.966

if.end.966:                                       ; preds = %if.else.963, %if.then.962
  br label %do.end.967

do.end.967:                                       ; preds = %if.end.966
  %517 = load i32, i32* %res, align 4
  %cmp968 = icmp slt i32 %517, 0
  br i1 %cmp968, label %if.then.969, label %if.end.970

if.then.969:                                      ; preds = %do.end.967
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.970:                                       ; preds = %do.end.967
  %518 = load %struct._object*, %struct._object** %errors_module, align 8
  %call971 = call i8* @PyExpat_XML_ErrorString(i32 18)
  %call972 = call i32 @PyModule_AddStringConstant(%struct._object* %518, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.33, i32 0, i32 0), i8* %call971)
  %cmp973 = icmp slt i32 %call972, 0
  br i1 %cmp973, label %if.then.974, label %if.end.975

if.then.974:                                      ; preds = %if.end.970
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.975:                                       ; preds = %if.end.970
  %call976 = call %struct._object* @PyLong_FromLong(i64 18)
  store %struct._object* %call976, %struct._object** %tmpnum, align 8
  %519 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp977 = icmp eq %struct._object* %519, null
  br i1 %cmp977, label %if.then.978, label %if.end.979

if.then.978:                                      ; preds = %if.end.975
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.979:                                       ; preds = %if.end.975
  %520 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call980 = call i8* @PyExpat_XML_ErrorString(i32 18)
  %521 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call981 = call i32 @PyDict_SetItemString(%struct._object* %520, i8* %call980, %struct._object* %521)
  store i32 %call981, i32* %res, align 4
  %522 = load i32, i32* %res, align 4
  %cmp982 = icmp slt i32 %522, 0
  br i1 %cmp982, label %if.then.983, label %if.end.984

if.then.983:                                      ; preds = %if.end.979
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.984:                                       ; preds = %if.end.979
  %call985 = call i8* @PyExpat_XML_ErrorString(i32 18)
  %call986 = call %struct._object* @PyUnicode_FromString(i8* %call985)
  store %struct._object* %call986, %struct._object** %tmpstr, align 8
  %523 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp987 = icmp eq %struct._object* %523, null
  br i1 %cmp987, label %if.then.988, label %if.end.989

if.then.988:                                      ; preds = %if.end.984
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.989:                                       ; preds = %if.end.984
  %524 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %525 = load %struct._object*, %struct._object** %tmpnum, align 8
  %526 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call990 = call i32 @PyDict_SetItem(%struct._object* %524, %struct._object* %525, %struct._object* %526)
  store i32 %call990, i32* %res, align 4
  br label %do.body.991

do.body.991:                                      ; preds = %if.end.989
  %527 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %527, %struct._object** %_py_decref_tmp993, align 8
  %528 = load %struct._object*, %struct._object** %_py_decref_tmp993, align 8
  %ob_refcnt994 = getelementptr inbounds %struct._object, %struct._object* %528, i32 0, i32 0
  %529 = load i64, i64* %ob_refcnt994, align 8
  %dec995 = add i64 %529, -1
  store i64 %dec995, i64* %ob_refcnt994, align 8
  %cmp996 = icmp ne i64 %dec995, 0
  br i1 %cmp996, label %if.then.997, label %if.else.998

if.then.997:                                      ; preds = %do.body.991
  br label %if.end.1001

if.else.998:                                      ; preds = %do.body.991
  %530 = load %struct._object*, %struct._object** %_py_decref_tmp993, align 8
  %ob_type999 = getelementptr inbounds %struct._object, %struct._object* %530, i32 0, i32 1
  %531 = load %struct._typeobject*, %struct._typeobject** %ob_type999, align 8
  %tp_dealloc1000 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %531, i32 0, i32 4
  %532 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1000, align 8
  %533 = load %struct._object*, %struct._object** %_py_decref_tmp993, align 8
  call void %532(%struct._object* %533)
  br label %if.end.1001

if.end.1001:                                      ; preds = %if.else.998, %if.then.997
  br label %do.end.1002

do.end.1002:                                      ; preds = %if.end.1001
  br label %do.body.1003

do.body.1003:                                     ; preds = %do.end.1002
  %534 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %534, %struct._object** %_py_decref_tmp1005, align 8
  %535 = load %struct._object*, %struct._object** %_py_decref_tmp1005, align 8
  %ob_refcnt1006 = getelementptr inbounds %struct._object, %struct._object* %535, i32 0, i32 0
  %536 = load i64, i64* %ob_refcnt1006, align 8
  %dec1007 = add i64 %536, -1
  store i64 %dec1007, i64* %ob_refcnt1006, align 8
  %cmp1008 = icmp ne i64 %dec1007, 0
  br i1 %cmp1008, label %if.then.1009, label %if.else.1010

if.then.1009:                                     ; preds = %do.body.1003
  br label %if.end.1013

if.else.1010:                                     ; preds = %do.body.1003
  %537 = load %struct._object*, %struct._object** %_py_decref_tmp1005, align 8
  %ob_type1011 = getelementptr inbounds %struct._object, %struct._object* %537, i32 0, i32 1
  %538 = load %struct._typeobject*, %struct._typeobject** %ob_type1011, align 8
  %tp_dealloc1012 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %538, i32 0, i32 4
  %539 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1012, align 8
  %540 = load %struct._object*, %struct._object** %_py_decref_tmp1005, align 8
  call void %539(%struct._object* %540)
  br label %if.end.1013

if.end.1013:                                      ; preds = %if.else.1010, %if.then.1009
  br label %do.end.1014

do.end.1014:                                      ; preds = %if.end.1013
  %541 = load i32, i32* %res, align 4
  %cmp1015 = icmp slt i32 %541, 0
  br i1 %cmp1015, label %if.then.1016, label %if.end.1017

if.then.1016:                                     ; preds = %do.end.1014
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1017:                                      ; preds = %do.end.1014
  %542 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1018 = call i8* @PyExpat_XML_ErrorString(i32 19)
  %call1019 = call i32 @PyModule_AddStringConstant(%struct._object* %542, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i32 0, i32 0), i8* %call1018)
  %cmp1020 = icmp slt i32 %call1019, 0
  br i1 %cmp1020, label %if.then.1021, label %if.end.1022

if.then.1021:                                     ; preds = %if.end.1017
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1022:                                      ; preds = %if.end.1017
  %call1023 = call %struct._object* @PyLong_FromLong(i64 19)
  store %struct._object* %call1023, %struct._object** %tmpnum, align 8
  %543 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1024 = icmp eq %struct._object* %543, null
  br i1 %cmp1024, label %if.then.1025, label %if.end.1026

if.then.1025:                                     ; preds = %if.end.1022
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1026:                                      ; preds = %if.end.1022
  %544 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1027 = call i8* @PyExpat_XML_ErrorString(i32 19)
  %545 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1028 = call i32 @PyDict_SetItemString(%struct._object* %544, i8* %call1027, %struct._object* %545)
  store i32 %call1028, i32* %res, align 4
  %546 = load i32, i32* %res, align 4
  %cmp1029 = icmp slt i32 %546, 0
  br i1 %cmp1029, label %if.then.1030, label %if.end.1031

if.then.1030:                                     ; preds = %if.end.1026
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1031:                                      ; preds = %if.end.1026
  %call1032 = call i8* @PyExpat_XML_ErrorString(i32 19)
  %call1033 = call %struct._object* @PyUnicode_FromString(i8* %call1032)
  store %struct._object* %call1033, %struct._object** %tmpstr, align 8
  %547 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1034 = icmp eq %struct._object* %547, null
  br i1 %cmp1034, label %if.then.1035, label %if.end.1036

if.then.1035:                                     ; preds = %if.end.1031
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1036:                                      ; preds = %if.end.1031
  %548 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %549 = load %struct._object*, %struct._object** %tmpnum, align 8
  %550 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1037 = call i32 @PyDict_SetItem(%struct._object* %548, %struct._object* %549, %struct._object* %550)
  store i32 %call1037, i32* %res, align 4
  br label %do.body.1038

do.body.1038:                                     ; preds = %if.end.1036
  %551 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %551, %struct._object** %_py_decref_tmp1040, align 8
  %552 = load %struct._object*, %struct._object** %_py_decref_tmp1040, align 8
  %ob_refcnt1041 = getelementptr inbounds %struct._object, %struct._object* %552, i32 0, i32 0
  %553 = load i64, i64* %ob_refcnt1041, align 8
  %dec1042 = add i64 %553, -1
  store i64 %dec1042, i64* %ob_refcnt1041, align 8
  %cmp1043 = icmp ne i64 %dec1042, 0
  br i1 %cmp1043, label %if.then.1044, label %if.else.1045

if.then.1044:                                     ; preds = %do.body.1038
  br label %if.end.1048

if.else.1045:                                     ; preds = %do.body.1038
  %554 = load %struct._object*, %struct._object** %_py_decref_tmp1040, align 8
  %ob_type1046 = getelementptr inbounds %struct._object, %struct._object* %554, i32 0, i32 1
  %555 = load %struct._typeobject*, %struct._typeobject** %ob_type1046, align 8
  %tp_dealloc1047 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %555, i32 0, i32 4
  %556 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1047, align 8
  %557 = load %struct._object*, %struct._object** %_py_decref_tmp1040, align 8
  call void %556(%struct._object* %557)
  br label %if.end.1048

if.end.1048:                                      ; preds = %if.else.1045, %if.then.1044
  br label %do.end.1049

do.end.1049:                                      ; preds = %if.end.1048
  br label %do.body.1050

do.body.1050:                                     ; preds = %do.end.1049
  %558 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %558, %struct._object** %_py_decref_tmp1052, align 8
  %559 = load %struct._object*, %struct._object** %_py_decref_tmp1052, align 8
  %ob_refcnt1053 = getelementptr inbounds %struct._object, %struct._object* %559, i32 0, i32 0
  %560 = load i64, i64* %ob_refcnt1053, align 8
  %dec1054 = add i64 %560, -1
  store i64 %dec1054, i64* %ob_refcnt1053, align 8
  %cmp1055 = icmp ne i64 %dec1054, 0
  br i1 %cmp1055, label %if.then.1056, label %if.else.1057

if.then.1056:                                     ; preds = %do.body.1050
  br label %if.end.1060

if.else.1057:                                     ; preds = %do.body.1050
  %561 = load %struct._object*, %struct._object** %_py_decref_tmp1052, align 8
  %ob_type1058 = getelementptr inbounds %struct._object, %struct._object* %561, i32 0, i32 1
  %562 = load %struct._typeobject*, %struct._typeobject** %ob_type1058, align 8
  %tp_dealloc1059 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %562, i32 0, i32 4
  %563 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1059, align 8
  %564 = load %struct._object*, %struct._object** %_py_decref_tmp1052, align 8
  call void %563(%struct._object* %564)
  br label %if.end.1060

if.end.1060:                                      ; preds = %if.else.1057, %if.then.1056
  br label %do.end.1061

do.end.1061:                                      ; preds = %if.end.1060
  %565 = load i32, i32* %res, align 4
  %cmp1062 = icmp slt i32 %565, 0
  br i1 %cmp1062, label %if.then.1063, label %if.end.1064

if.then.1063:                                     ; preds = %do.end.1061
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1064:                                      ; preds = %do.end.1061
  %566 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1065 = call i8* @PyExpat_XML_ErrorString(i32 20)
  %call1066 = call i32 @PyModule_AddStringConstant(%struct._object* %566, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0), i8* %call1065)
  %cmp1067 = icmp slt i32 %call1066, 0
  br i1 %cmp1067, label %if.then.1068, label %if.end.1069

if.then.1068:                                     ; preds = %if.end.1064
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1069:                                      ; preds = %if.end.1064
  %call1070 = call %struct._object* @PyLong_FromLong(i64 20)
  store %struct._object* %call1070, %struct._object** %tmpnum, align 8
  %567 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1071 = icmp eq %struct._object* %567, null
  br i1 %cmp1071, label %if.then.1072, label %if.end.1073

if.then.1072:                                     ; preds = %if.end.1069
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1073:                                      ; preds = %if.end.1069
  %568 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1074 = call i8* @PyExpat_XML_ErrorString(i32 20)
  %569 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1075 = call i32 @PyDict_SetItemString(%struct._object* %568, i8* %call1074, %struct._object* %569)
  store i32 %call1075, i32* %res, align 4
  %570 = load i32, i32* %res, align 4
  %cmp1076 = icmp slt i32 %570, 0
  br i1 %cmp1076, label %if.then.1077, label %if.end.1078

if.then.1077:                                     ; preds = %if.end.1073
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1078:                                      ; preds = %if.end.1073
  %call1079 = call i8* @PyExpat_XML_ErrorString(i32 20)
  %call1080 = call %struct._object* @PyUnicode_FromString(i8* %call1079)
  store %struct._object* %call1080, %struct._object** %tmpstr, align 8
  %571 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1081 = icmp eq %struct._object* %571, null
  br i1 %cmp1081, label %if.then.1082, label %if.end.1083

if.then.1082:                                     ; preds = %if.end.1078
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1083:                                      ; preds = %if.end.1078
  %572 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %573 = load %struct._object*, %struct._object** %tmpnum, align 8
  %574 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1084 = call i32 @PyDict_SetItem(%struct._object* %572, %struct._object* %573, %struct._object* %574)
  store i32 %call1084, i32* %res, align 4
  br label %do.body.1085

do.body.1085:                                     ; preds = %if.end.1083
  %575 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %575, %struct._object** %_py_decref_tmp1087, align 8
  %576 = load %struct._object*, %struct._object** %_py_decref_tmp1087, align 8
  %ob_refcnt1088 = getelementptr inbounds %struct._object, %struct._object* %576, i32 0, i32 0
  %577 = load i64, i64* %ob_refcnt1088, align 8
  %dec1089 = add i64 %577, -1
  store i64 %dec1089, i64* %ob_refcnt1088, align 8
  %cmp1090 = icmp ne i64 %dec1089, 0
  br i1 %cmp1090, label %if.then.1091, label %if.else.1092

if.then.1091:                                     ; preds = %do.body.1085
  br label %if.end.1095

if.else.1092:                                     ; preds = %do.body.1085
  %578 = load %struct._object*, %struct._object** %_py_decref_tmp1087, align 8
  %ob_type1093 = getelementptr inbounds %struct._object, %struct._object* %578, i32 0, i32 1
  %579 = load %struct._typeobject*, %struct._typeobject** %ob_type1093, align 8
  %tp_dealloc1094 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %579, i32 0, i32 4
  %580 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1094, align 8
  %581 = load %struct._object*, %struct._object** %_py_decref_tmp1087, align 8
  call void %580(%struct._object* %581)
  br label %if.end.1095

if.end.1095:                                      ; preds = %if.else.1092, %if.then.1091
  br label %do.end.1096

do.end.1096:                                      ; preds = %if.end.1095
  br label %do.body.1097

do.body.1097:                                     ; preds = %do.end.1096
  %582 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %582, %struct._object** %_py_decref_tmp1099, align 8
  %583 = load %struct._object*, %struct._object** %_py_decref_tmp1099, align 8
  %ob_refcnt1100 = getelementptr inbounds %struct._object, %struct._object* %583, i32 0, i32 0
  %584 = load i64, i64* %ob_refcnt1100, align 8
  %dec1101 = add i64 %584, -1
  store i64 %dec1101, i64* %ob_refcnt1100, align 8
  %cmp1102 = icmp ne i64 %dec1101, 0
  br i1 %cmp1102, label %if.then.1103, label %if.else.1104

if.then.1103:                                     ; preds = %do.body.1097
  br label %if.end.1107

if.else.1104:                                     ; preds = %do.body.1097
  %585 = load %struct._object*, %struct._object** %_py_decref_tmp1099, align 8
  %ob_type1105 = getelementptr inbounds %struct._object, %struct._object* %585, i32 0, i32 1
  %586 = load %struct._typeobject*, %struct._typeobject** %ob_type1105, align 8
  %tp_dealloc1106 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %586, i32 0, i32 4
  %587 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1106, align 8
  %588 = load %struct._object*, %struct._object** %_py_decref_tmp1099, align 8
  call void %587(%struct._object* %588)
  br label %if.end.1107

if.end.1107:                                      ; preds = %if.else.1104, %if.then.1103
  br label %do.end.1108

do.end.1108:                                      ; preds = %if.end.1107
  %589 = load i32, i32* %res, align 4
  %cmp1109 = icmp slt i32 %589, 0
  br i1 %cmp1109, label %if.then.1110, label %if.end.1111

if.then.1110:                                     ; preds = %do.end.1108
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1111:                                      ; preds = %do.end.1108
  %590 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1112 = call i8* @PyExpat_XML_ErrorString(i32 21)
  %call1113 = call i32 @PyModule_AddStringConstant(%struct._object* %590, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.36, i32 0, i32 0), i8* %call1112)
  %cmp1114 = icmp slt i32 %call1113, 0
  br i1 %cmp1114, label %if.then.1115, label %if.end.1116

if.then.1115:                                     ; preds = %if.end.1111
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1116:                                      ; preds = %if.end.1111
  %call1117 = call %struct._object* @PyLong_FromLong(i64 21)
  store %struct._object* %call1117, %struct._object** %tmpnum, align 8
  %591 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1118 = icmp eq %struct._object* %591, null
  br i1 %cmp1118, label %if.then.1119, label %if.end.1120

if.then.1119:                                     ; preds = %if.end.1116
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1120:                                      ; preds = %if.end.1116
  %592 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1121 = call i8* @PyExpat_XML_ErrorString(i32 21)
  %593 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1122 = call i32 @PyDict_SetItemString(%struct._object* %592, i8* %call1121, %struct._object* %593)
  store i32 %call1122, i32* %res, align 4
  %594 = load i32, i32* %res, align 4
  %cmp1123 = icmp slt i32 %594, 0
  br i1 %cmp1123, label %if.then.1124, label %if.end.1125

if.then.1124:                                     ; preds = %if.end.1120
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1125:                                      ; preds = %if.end.1120
  %call1126 = call i8* @PyExpat_XML_ErrorString(i32 21)
  %call1127 = call %struct._object* @PyUnicode_FromString(i8* %call1126)
  store %struct._object* %call1127, %struct._object** %tmpstr, align 8
  %595 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1128 = icmp eq %struct._object* %595, null
  br i1 %cmp1128, label %if.then.1129, label %if.end.1130

if.then.1129:                                     ; preds = %if.end.1125
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1130:                                      ; preds = %if.end.1125
  %596 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %597 = load %struct._object*, %struct._object** %tmpnum, align 8
  %598 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1131 = call i32 @PyDict_SetItem(%struct._object* %596, %struct._object* %597, %struct._object* %598)
  store i32 %call1131, i32* %res, align 4
  br label %do.body.1132

do.body.1132:                                     ; preds = %if.end.1130
  %599 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %599, %struct._object** %_py_decref_tmp1134, align 8
  %600 = load %struct._object*, %struct._object** %_py_decref_tmp1134, align 8
  %ob_refcnt1135 = getelementptr inbounds %struct._object, %struct._object* %600, i32 0, i32 0
  %601 = load i64, i64* %ob_refcnt1135, align 8
  %dec1136 = add i64 %601, -1
  store i64 %dec1136, i64* %ob_refcnt1135, align 8
  %cmp1137 = icmp ne i64 %dec1136, 0
  br i1 %cmp1137, label %if.then.1138, label %if.else.1139

if.then.1138:                                     ; preds = %do.body.1132
  br label %if.end.1142

if.else.1139:                                     ; preds = %do.body.1132
  %602 = load %struct._object*, %struct._object** %_py_decref_tmp1134, align 8
  %ob_type1140 = getelementptr inbounds %struct._object, %struct._object* %602, i32 0, i32 1
  %603 = load %struct._typeobject*, %struct._typeobject** %ob_type1140, align 8
  %tp_dealloc1141 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %603, i32 0, i32 4
  %604 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1141, align 8
  %605 = load %struct._object*, %struct._object** %_py_decref_tmp1134, align 8
  call void %604(%struct._object* %605)
  br label %if.end.1142

if.end.1142:                                      ; preds = %if.else.1139, %if.then.1138
  br label %do.end.1143

do.end.1143:                                      ; preds = %if.end.1142
  br label %do.body.1144

do.body.1144:                                     ; preds = %do.end.1143
  %606 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %606, %struct._object** %_py_decref_tmp1146, align 8
  %607 = load %struct._object*, %struct._object** %_py_decref_tmp1146, align 8
  %ob_refcnt1147 = getelementptr inbounds %struct._object, %struct._object* %607, i32 0, i32 0
  %608 = load i64, i64* %ob_refcnt1147, align 8
  %dec1148 = add i64 %608, -1
  store i64 %dec1148, i64* %ob_refcnt1147, align 8
  %cmp1149 = icmp ne i64 %dec1148, 0
  br i1 %cmp1149, label %if.then.1150, label %if.else.1151

if.then.1150:                                     ; preds = %do.body.1144
  br label %if.end.1154

if.else.1151:                                     ; preds = %do.body.1144
  %609 = load %struct._object*, %struct._object** %_py_decref_tmp1146, align 8
  %ob_type1152 = getelementptr inbounds %struct._object, %struct._object* %609, i32 0, i32 1
  %610 = load %struct._typeobject*, %struct._typeobject** %ob_type1152, align 8
  %tp_dealloc1153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %610, i32 0, i32 4
  %611 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1153, align 8
  %612 = load %struct._object*, %struct._object** %_py_decref_tmp1146, align 8
  call void %611(%struct._object* %612)
  br label %if.end.1154

if.end.1154:                                      ; preds = %if.else.1151, %if.then.1150
  br label %do.end.1155

do.end.1155:                                      ; preds = %if.end.1154
  %613 = load i32, i32* %res, align 4
  %cmp1156 = icmp slt i32 %613, 0
  br i1 %cmp1156, label %if.then.1157, label %if.end.1158

if.then.1157:                                     ; preds = %do.end.1155
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1158:                                      ; preds = %do.end.1155
  %614 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1159 = call i8* @PyExpat_XML_ErrorString(i32 22)
  %call1160 = call i32 @PyModule_AddStringConstant(%struct._object* %614, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0), i8* %call1159)
  %cmp1161 = icmp slt i32 %call1160, 0
  br i1 %cmp1161, label %if.then.1162, label %if.end.1163

if.then.1162:                                     ; preds = %if.end.1158
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1163:                                      ; preds = %if.end.1158
  %call1164 = call %struct._object* @PyLong_FromLong(i64 22)
  store %struct._object* %call1164, %struct._object** %tmpnum, align 8
  %615 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1165 = icmp eq %struct._object* %615, null
  br i1 %cmp1165, label %if.then.1166, label %if.end.1167

if.then.1166:                                     ; preds = %if.end.1163
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1167:                                      ; preds = %if.end.1163
  %616 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1168 = call i8* @PyExpat_XML_ErrorString(i32 22)
  %617 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1169 = call i32 @PyDict_SetItemString(%struct._object* %616, i8* %call1168, %struct._object* %617)
  store i32 %call1169, i32* %res, align 4
  %618 = load i32, i32* %res, align 4
  %cmp1170 = icmp slt i32 %618, 0
  br i1 %cmp1170, label %if.then.1171, label %if.end.1172

if.then.1171:                                     ; preds = %if.end.1167
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1172:                                      ; preds = %if.end.1167
  %call1173 = call i8* @PyExpat_XML_ErrorString(i32 22)
  %call1174 = call %struct._object* @PyUnicode_FromString(i8* %call1173)
  store %struct._object* %call1174, %struct._object** %tmpstr, align 8
  %619 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1175 = icmp eq %struct._object* %619, null
  br i1 %cmp1175, label %if.then.1176, label %if.end.1177

if.then.1176:                                     ; preds = %if.end.1172
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1177:                                      ; preds = %if.end.1172
  %620 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %621 = load %struct._object*, %struct._object** %tmpnum, align 8
  %622 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1178 = call i32 @PyDict_SetItem(%struct._object* %620, %struct._object* %621, %struct._object* %622)
  store i32 %call1178, i32* %res, align 4
  br label %do.body.1179

do.body.1179:                                     ; preds = %if.end.1177
  %623 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %623, %struct._object** %_py_decref_tmp1181, align 8
  %624 = load %struct._object*, %struct._object** %_py_decref_tmp1181, align 8
  %ob_refcnt1182 = getelementptr inbounds %struct._object, %struct._object* %624, i32 0, i32 0
  %625 = load i64, i64* %ob_refcnt1182, align 8
  %dec1183 = add i64 %625, -1
  store i64 %dec1183, i64* %ob_refcnt1182, align 8
  %cmp1184 = icmp ne i64 %dec1183, 0
  br i1 %cmp1184, label %if.then.1185, label %if.else.1186

if.then.1185:                                     ; preds = %do.body.1179
  br label %if.end.1189

if.else.1186:                                     ; preds = %do.body.1179
  %626 = load %struct._object*, %struct._object** %_py_decref_tmp1181, align 8
  %ob_type1187 = getelementptr inbounds %struct._object, %struct._object* %626, i32 0, i32 1
  %627 = load %struct._typeobject*, %struct._typeobject** %ob_type1187, align 8
  %tp_dealloc1188 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %627, i32 0, i32 4
  %628 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1188, align 8
  %629 = load %struct._object*, %struct._object** %_py_decref_tmp1181, align 8
  call void %628(%struct._object* %629)
  br label %if.end.1189

if.end.1189:                                      ; preds = %if.else.1186, %if.then.1185
  br label %do.end.1190

do.end.1190:                                      ; preds = %if.end.1189
  br label %do.body.1191

do.body.1191:                                     ; preds = %do.end.1190
  %630 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %630, %struct._object** %_py_decref_tmp1193, align 8
  %631 = load %struct._object*, %struct._object** %_py_decref_tmp1193, align 8
  %ob_refcnt1194 = getelementptr inbounds %struct._object, %struct._object* %631, i32 0, i32 0
  %632 = load i64, i64* %ob_refcnt1194, align 8
  %dec1195 = add i64 %632, -1
  store i64 %dec1195, i64* %ob_refcnt1194, align 8
  %cmp1196 = icmp ne i64 %dec1195, 0
  br i1 %cmp1196, label %if.then.1197, label %if.else.1198

if.then.1197:                                     ; preds = %do.body.1191
  br label %if.end.1201

if.else.1198:                                     ; preds = %do.body.1191
  %633 = load %struct._object*, %struct._object** %_py_decref_tmp1193, align 8
  %ob_type1199 = getelementptr inbounds %struct._object, %struct._object* %633, i32 0, i32 1
  %634 = load %struct._typeobject*, %struct._typeobject** %ob_type1199, align 8
  %tp_dealloc1200 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %634, i32 0, i32 4
  %635 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1200, align 8
  %636 = load %struct._object*, %struct._object** %_py_decref_tmp1193, align 8
  call void %635(%struct._object* %636)
  br label %if.end.1201

if.end.1201:                                      ; preds = %if.else.1198, %if.then.1197
  br label %do.end.1202

do.end.1202:                                      ; preds = %if.end.1201
  %637 = load i32, i32* %res, align 4
  %cmp1203 = icmp slt i32 %637, 0
  br i1 %cmp1203, label %if.then.1204, label %if.end.1205

if.then.1204:                                     ; preds = %do.end.1202
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1205:                                      ; preds = %do.end.1202
  %638 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1206 = call i8* @PyExpat_XML_ErrorString(i32 23)
  %call1207 = call i32 @PyModule_AddStringConstant(%struct._object* %638, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i8* %call1206)
  %cmp1208 = icmp slt i32 %call1207, 0
  br i1 %cmp1208, label %if.then.1209, label %if.end.1210

if.then.1209:                                     ; preds = %if.end.1205
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1210:                                      ; preds = %if.end.1205
  %call1211 = call %struct._object* @PyLong_FromLong(i64 23)
  store %struct._object* %call1211, %struct._object** %tmpnum, align 8
  %639 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1212 = icmp eq %struct._object* %639, null
  br i1 %cmp1212, label %if.then.1213, label %if.end.1214

if.then.1213:                                     ; preds = %if.end.1210
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1214:                                      ; preds = %if.end.1210
  %640 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1215 = call i8* @PyExpat_XML_ErrorString(i32 23)
  %641 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1216 = call i32 @PyDict_SetItemString(%struct._object* %640, i8* %call1215, %struct._object* %641)
  store i32 %call1216, i32* %res, align 4
  %642 = load i32, i32* %res, align 4
  %cmp1217 = icmp slt i32 %642, 0
  br i1 %cmp1217, label %if.then.1218, label %if.end.1219

if.then.1218:                                     ; preds = %if.end.1214
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1219:                                      ; preds = %if.end.1214
  %call1220 = call i8* @PyExpat_XML_ErrorString(i32 23)
  %call1221 = call %struct._object* @PyUnicode_FromString(i8* %call1220)
  store %struct._object* %call1221, %struct._object** %tmpstr, align 8
  %643 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1222 = icmp eq %struct._object* %643, null
  br i1 %cmp1222, label %if.then.1223, label %if.end.1224

if.then.1223:                                     ; preds = %if.end.1219
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1224:                                      ; preds = %if.end.1219
  %644 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %645 = load %struct._object*, %struct._object** %tmpnum, align 8
  %646 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1225 = call i32 @PyDict_SetItem(%struct._object* %644, %struct._object* %645, %struct._object* %646)
  store i32 %call1225, i32* %res, align 4
  br label %do.body.1226

do.body.1226:                                     ; preds = %if.end.1224
  %647 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %647, %struct._object** %_py_decref_tmp1228, align 8
  %648 = load %struct._object*, %struct._object** %_py_decref_tmp1228, align 8
  %ob_refcnt1229 = getelementptr inbounds %struct._object, %struct._object* %648, i32 0, i32 0
  %649 = load i64, i64* %ob_refcnt1229, align 8
  %dec1230 = add i64 %649, -1
  store i64 %dec1230, i64* %ob_refcnt1229, align 8
  %cmp1231 = icmp ne i64 %dec1230, 0
  br i1 %cmp1231, label %if.then.1232, label %if.else.1233

if.then.1232:                                     ; preds = %do.body.1226
  br label %if.end.1236

if.else.1233:                                     ; preds = %do.body.1226
  %650 = load %struct._object*, %struct._object** %_py_decref_tmp1228, align 8
  %ob_type1234 = getelementptr inbounds %struct._object, %struct._object* %650, i32 0, i32 1
  %651 = load %struct._typeobject*, %struct._typeobject** %ob_type1234, align 8
  %tp_dealloc1235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %651, i32 0, i32 4
  %652 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1235, align 8
  %653 = load %struct._object*, %struct._object** %_py_decref_tmp1228, align 8
  call void %652(%struct._object* %653)
  br label %if.end.1236

if.end.1236:                                      ; preds = %if.else.1233, %if.then.1232
  br label %do.end.1237

do.end.1237:                                      ; preds = %if.end.1236
  br label %do.body.1238

do.body.1238:                                     ; preds = %do.end.1237
  %654 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %654, %struct._object** %_py_decref_tmp1240, align 8
  %655 = load %struct._object*, %struct._object** %_py_decref_tmp1240, align 8
  %ob_refcnt1241 = getelementptr inbounds %struct._object, %struct._object* %655, i32 0, i32 0
  %656 = load i64, i64* %ob_refcnt1241, align 8
  %dec1242 = add i64 %656, -1
  store i64 %dec1242, i64* %ob_refcnt1241, align 8
  %cmp1243 = icmp ne i64 %dec1242, 0
  br i1 %cmp1243, label %if.then.1244, label %if.else.1245

if.then.1244:                                     ; preds = %do.body.1238
  br label %if.end.1248

if.else.1245:                                     ; preds = %do.body.1238
  %657 = load %struct._object*, %struct._object** %_py_decref_tmp1240, align 8
  %ob_type1246 = getelementptr inbounds %struct._object, %struct._object* %657, i32 0, i32 1
  %658 = load %struct._typeobject*, %struct._typeobject** %ob_type1246, align 8
  %tp_dealloc1247 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %658, i32 0, i32 4
  %659 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1247, align 8
  %660 = load %struct._object*, %struct._object** %_py_decref_tmp1240, align 8
  call void %659(%struct._object* %660)
  br label %if.end.1248

if.end.1248:                                      ; preds = %if.else.1245, %if.then.1244
  br label %do.end.1249

do.end.1249:                                      ; preds = %if.end.1248
  %661 = load i32, i32* %res, align 4
  %cmp1250 = icmp slt i32 %661, 0
  br i1 %cmp1250, label %if.then.1251, label %if.end.1252

if.then.1251:                                     ; preds = %do.end.1249
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1252:                                      ; preds = %do.end.1249
  %662 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1253 = call i8* @PyExpat_XML_ErrorString(i32 24)
  %call1254 = call i32 @PyModule_AddStringConstant(%struct._object* %662, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.39, i32 0, i32 0), i8* %call1253)
  %cmp1255 = icmp slt i32 %call1254, 0
  br i1 %cmp1255, label %if.then.1256, label %if.end.1257

if.then.1256:                                     ; preds = %if.end.1252
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1257:                                      ; preds = %if.end.1252
  %call1258 = call %struct._object* @PyLong_FromLong(i64 24)
  store %struct._object* %call1258, %struct._object** %tmpnum, align 8
  %663 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1259 = icmp eq %struct._object* %663, null
  br i1 %cmp1259, label %if.then.1260, label %if.end.1261

if.then.1260:                                     ; preds = %if.end.1257
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1261:                                      ; preds = %if.end.1257
  %664 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1262 = call i8* @PyExpat_XML_ErrorString(i32 24)
  %665 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1263 = call i32 @PyDict_SetItemString(%struct._object* %664, i8* %call1262, %struct._object* %665)
  store i32 %call1263, i32* %res, align 4
  %666 = load i32, i32* %res, align 4
  %cmp1264 = icmp slt i32 %666, 0
  br i1 %cmp1264, label %if.then.1265, label %if.end.1266

if.then.1265:                                     ; preds = %if.end.1261
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1266:                                      ; preds = %if.end.1261
  %call1267 = call i8* @PyExpat_XML_ErrorString(i32 24)
  %call1268 = call %struct._object* @PyUnicode_FromString(i8* %call1267)
  store %struct._object* %call1268, %struct._object** %tmpstr, align 8
  %667 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1269 = icmp eq %struct._object* %667, null
  br i1 %cmp1269, label %if.then.1270, label %if.end.1271

if.then.1270:                                     ; preds = %if.end.1266
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1271:                                      ; preds = %if.end.1266
  %668 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %669 = load %struct._object*, %struct._object** %tmpnum, align 8
  %670 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1272 = call i32 @PyDict_SetItem(%struct._object* %668, %struct._object* %669, %struct._object* %670)
  store i32 %call1272, i32* %res, align 4
  br label %do.body.1273

do.body.1273:                                     ; preds = %if.end.1271
  %671 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %671, %struct._object** %_py_decref_tmp1275, align 8
  %672 = load %struct._object*, %struct._object** %_py_decref_tmp1275, align 8
  %ob_refcnt1276 = getelementptr inbounds %struct._object, %struct._object* %672, i32 0, i32 0
  %673 = load i64, i64* %ob_refcnt1276, align 8
  %dec1277 = add i64 %673, -1
  store i64 %dec1277, i64* %ob_refcnt1276, align 8
  %cmp1278 = icmp ne i64 %dec1277, 0
  br i1 %cmp1278, label %if.then.1279, label %if.else.1280

if.then.1279:                                     ; preds = %do.body.1273
  br label %if.end.1283

if.else.1280:                                     ; preds = %do.body.1273
  %674 = load %struct._object*, %struct._object** %_py_decref_tmp1275, align 8
  %ob_type1281 = getelementptr inbounds %struct._object, %struct._object* %674, i32 0, i32 1
  %675 = load %struct._typeobject*, %struct._typeobject** %ob_type1281, align 8
  %tp_dealloc1282 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %675, i32 0, i32 4
  %676 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1282, align 8
  %677 = load %struct._object*, %struct._object** %_py_decref_tmp1275, align 8
  call void %676(%struct._object* %677)
  br label %if.end.1283

if.end.1283:                                      ; preds = %if.else.1280, %if.then.1279
  br label %do.end.1284

do.end.1284:                                      ; preds = %if.end.1283
  br label %do.body.1285

do.body.1285:                                     ; preds = %do.end.1284
  %678 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %678, %struct._object** %_py_decref_tmp1287, align 8
  %679 = load %struct._object*, %struct._object** %_py_decref_tmp1287, align 8
  %ob_refcnt1288 = getelementptr inbounds %struct._object, %struct._object* %679, i32 0, i32 0
  %680 = load i64, i64* %ob_refcnt1288, align 8
  %dec1289 = add i64 %680, -1
  store i64 %dec1289, i64* %ob_refcnt1288, align 8
  %cmp1290 = icmp ne i64 %dec1289, 0
  br i1 %cmp1290, label %if.then.1291, label %if.else.1292

if.then.1291:                                     ; preds = %do.body.1285
  br label %if.end.1295

if.else.1292:                                     ; preds = %do.body.1285
  %681 = load %struct._object*, %struct._object** %_py_decref_tmp1287, align 8
  %ob_type1293 = getelementptr inbounds %struct._object, %struct._object* %681, i32 0, i32 1
  %682 = load %struct._typeobject*, %struct._typeobject** %ob_type1293, align 8
  %tp_dealloc1294 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %682, i32 0, i32 4
  %683 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1294, align 8
  %684 = load %struct._object*, %struct._object** %_py_decref_tmp1287, align 8
  call void %683(%struct._object* %684)
  br label %if.end.1295

if.end.1295:                                      ; preds = %if.else.1292, %if.then.1291
  br label %do.end.1296

do.end.1296:                                      ; preds = %if.end.1295
  %685 = load i32, i32* %res, align 4
  %cmp1297 = icmp slt i32 %685, 0
  br i1 %cmp1297, label %if.then.1298, label %if.end.1299

if.then.1298:                                     ; preds = %do.end.1296
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1299:                                      ; preds = %do.end.1296
  %686 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1300 = call i8* @PyExpat_XML_ErrorString(i32 25)
  %call1301 = call i32 @PyModule_AddStringConstant(%struct._object* %686, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i32 0, i32 0), i8* %call1300)
  %cmp1302 = icmp slt i32 %call1301, 0
  br i1 %cmp1302, label %if.then.1303, label %if.end.1304

if.then.1303:                                     ; preds = %if.end.1299
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1304:                                      ; preds = %if.end.1299
  %call1305 = call %struct._object* @PyLong_FromLong(i64 25)
  store %struct._object* %call1305, %struct._object** %tmpnum, align 8
  %687 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1306 = icmp eq %struct._object* %687, null
  br i1 %cmp1306, label %if.then.1307, label %if.end.1308

if.then.1307:                                     ; preds = %if.end.1304
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1308:                                      ; preds = %if.end.1304
  %688 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1309 = call i8* @PyExpat_XML_ErrorString(i32 25)
  %689 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1310 = call i32 @PyDict_SetItemString(%struct._object* %688, i8* %call1309, %struct._object* %689)
  store i32 %call1310, i32* %res, align 4
  %690 = load i32, i32* %res, align 4
  %cmp1311 = icmp slt i32 %690, 0
  br i1 %cmp1311, label %if.then.1312, label %if.end.1313

if.then.1312:                                     ; preds = %if.end.1308
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1313:                                      ; preds = %if.end.1308
  %call1314 = call i8* @PyExpat_XML_ErrorString(i32 25)
  %call1315 = call %struct._object* @PyUnicode_FromString(i8* %call1314)
  store %struct._object* %call1315, %struct._object** %tmpstr, align 8
  %691 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1316 = icmp eq %struct._object* %691, null
  br i1 %cmp1316, label %if.then.1317, label %if.end.1318

if.then.1317:                                     ; preds = %if.end.1313
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1318:                                      ; preds = %if.end.1313
  %692 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %693 = load %struct._object*, %struct._object** %tmpnum, align 8
  %694 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1319 = call i32 @PyDict_SetItem(%struct._object* %692, %struct._object* %693, %struct._object* %694)
  store i32 %call1319, i32* %res, align 4
  br label %do.body.1320

do.body.1320:                                     ; preds = %if.end.1318
  %695 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %695, %struct._object** %_py_decref_tmp1322, align 8
  %696 = load %struct._object*, %struct._object** %_py_decref_tmp1322, align 8
  %ob_refcnt1323 = getelementptr inbounds %struct._object, %struct._object* %696, i32 0, i32 0
  %697 = load i64, i64* %ob_refcnt1323, align 8
  %dec1324 = add i64 %697, -1
  store i64 %dec1324, i64* %ob_refcnt1323, align 8
  %cmp1325 = icmp ne i64 %dec1324, 0
  br i1 %cmp1325, label %if.then.1326, label %if.else.1327

if.then.1326:                                     ; preds = %do.body.1320
  br label %if.end.1330

if.else.1327:                                     ; preds = %do.body.1320
  %698 = load %struct._object*, %struct._object** %_py_decref_tmp1322, align 8
  %ob_type1328 = getelementptr inbounds %struct._object, %struct._object* %698, i32 0, i32 1
  %699 = load %struct._typeobject*, %struct._typeobject** %ob_type1328, align 8
  %tp_dealloc1329 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %699, i32 0, i32 4
  %700 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1329, align 8
  %701 = load %struct._object*, %struct._object** %_py_decref_tmp1322, align 8
  call void %700(%struct._object* %701)
  br label %if.end.1330

if.end.1330:                                      ; preds = %if.else.1327, %if.then.1326
  br label %do.end.1331

do.end.1331:                                      ; preds = %if.end.1330
  br label %do.body.1332

do.body.1332:                                     ; preds = %do.end.1331
  %702 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %702, %struct._object** %_py_decref_tmp1334, align 8
  %703 = load %struct._object*, %struct._object** %_py_decref_tmp1334, align 8
  %ob_refcnt1335 = getelementptr inbounds %struct._object, %struct._object* %703, i32 0, i32 0
  %704 = load i64, i64* %ob_refcnt1335, align 8
  %dec1336 = add i64 %704, -1
  store i64 %dec1336, i64* %ob_refcnt1335, align 8
  %cmp1337 = icmp ne i64 %dec1336, 0
  br i1 %cmp1337, label %if.then.1338, label %if.else.1339

if.then.1338:                                     ; preds = %do.body.1332
  br label %if.end.1342

if.else.1339:                                     ; preds = %do.body.1332
  %705 = load %struct._object*, %struct._object** %_py_decref_tmp1334, align 8
  %ob_type1340 = getelementptr inbounds %struct._object, %struct._object* %705, i32 0, i32 1
  %706 = load %struct._typeobject*, %struct._typeobject** %ob_type1340, align 8
  %tp_dealloc1341 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %706, i32 0, i32 4
  %707 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1341, align 8
  %708 = load %struct._object*, %struct._object** %_py_decref_tmp1334, align 8
  call void %707(%struct._object* %708)
  br label %if.end.1342

if.end.1342:                                      ; preds = %if.else.1339, %if.then.1338
  br label %do.end.1343

do.end.1343:                                      ; preds = %if.end.1342
  %709 = load i32, i32* %res, align 4
  %cmp1344 = icmp slt i32 %709, 0
  br i1 %cmp1344, label %if.then.1345, label %if.end.1346

if.then.1345:                                     ; preds = %do.end.1343
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1346:                                      ; preds = %do.end.1343
  %710 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1347 = call i8* @PyExpat_XML_ErrorString(i32 26)
  %call1348 = call i32 @PyModule_AddStringConstant(%struct._object* %710, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.41, i32 0, i32 0), i8* %call1347)
  %cmp1349 = icmp slt i32 %call1348, 0
  br i1 %cmp1349, label %if.then.1350, label %if.end.1351

if.then.1350:                                     ; preds = %if.end.1346
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1351:                                      ; preds = %if.end.1346
  %call1352 = call %struct._object* @PyLong_FromLong(i64 26)
  store %struct._object* %call1352, %struct._object** %tmpnum, align 8
  %711 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1353 = icmp eq %struct._object* %711, null
  br i1 %cmp1353, label %if.then.1354, label %if.end.1355

if.then.1354:                                     ; preds = %if.end.1351
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1355:                                      ; preds = %if.end.1351
  %712 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1356 = call i8* @PyExpat_XML_ErrorString(i32 26)
  %713 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1357 = call i32 @PyDict_SetItemString(%struct._object* %712, i8* %call1356, %struct._object* %713)
  store i32 %call1357, i32* %res, align 4
  %714 = load i32, i32* %res, align 4
  %cmp1358 = icmp slt i32 %714, 0
  br i1 %cmp1358, label %if.then.1359, label %if.end.1360

if.then.1359:                                     ; preds = %if.end.1355
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1360:                                      ; preds = %if.end.1355
  %call1361 = call i8* @PyExpat_XML_ErrorString(i32 26)
  %call1362 = call %struct._object* @PyUnicode_FromString(i8* %call1361)
  store %struct._object* %call1362, %struct._object** %tmpstr, align 8
  %715 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1363 = icmp eq %struct._object* %715, null
  br i1 %cmp1363, label %if.then.1364, label %if.end.1365

if.then.1364:                                     ; preds = %if.end.1360
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1365:                                      ; preds = %if.end.1360
  %716 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %717 = load %struct._object*, %struct._object** %tmpnum, align 8
  %718 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1366 = call i32 @PyDict_SetItem(%struct._object* %716, %struct._object* %717, %struct._object* %718)
  store i32 %call1366, i32* %res, align 4
  br label %do.body.1367

do.body.1367:                                     ; preds = %if.end.1365
  %719 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %719, %struct._object** %_py_decref_tmp1369, align 8
  %720 = load %struct._object*, %struct._object** %_py_decref_tmp1369, align 8
  %ob_refcnt1370 = getelementptr inbounds %struct._object, %struct._object* %720, i32 0, i32 0
  %721 = load i64, i64* %ob_refcnt1370, align 8
  %dec1371 = add i64 %721, -1
  store i64 %dec1371, i64* %ob_refcnt1370, align 8
  %cmp1372 = icmp ne i64 %dec1371, 0
  br i1 %cmp1372, label %if.then.1373, label %if.else.1374

if.then.1373:                                     ; preds = %do.body.1367
  br label %if.end.1377

if.else.1374:                                     ; preds = %do.body.1367
  %722 = load %struct._object*, %struct._object** %_py_decref_tmp1369, align 8
  %ob_type1375 = getelementptr inbounds %struct._object, %struct._object* %722, i32 0, i32 1
  %723 = load %struct._typeobject*, %struct._typeobject** %ob_type1375, align 8
  %tp_dealloc1376 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %723, i32 0, i32 4
  %724 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1376, align 8
  %725 = load %struct._object*, %struct._object** %_py_decref_tmp1369, align 8
  call void %724(%struct._object* %725)
  br label %if.end.1377

if.end.1377:                                      ; preds = %if.else.1374, %if.then.1373
  br label %do.end.1378

do.end.1378:                                      ; preds = %if.end.1377
  br label %do.body.1379

do.body.1379:                                     ; preds = %do.end.1378
  %726 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %726, %struct._object** %_py_decref_tmp1381, align 8
  %727 = load %struct._object*, %struct._object** %_py_decref_tmp1381, align 8
  %ob_refcnt1382 = getelementptr inbounds %struct._object, %struct._object* %727, i32 0, i32 0
  %728 = load i64, i64* %ob_refcnt1382, align 8
  %dec1383 = add i64 %728, -1
  store i64 %dec1383, i64* %ob_refcnt1382, align 8
  %cmp1384 = icmp ne i64 %dec1383, 0
  br i1 %cmp1384, label %if.then.1385, label %if.else.1386

if.then.1385:                                     ; preds = %do.body.1379
  br label %if.end.1389

if.else.1386:                                     ; preds = %do.body.1379
  %729 = load %struct._object*, %struct._object** %_py_decref_tmp1381, align 8
  %ob_type1387 = getelementptr inbounds %struct._object, %struct._object* %729, i32 0, i32 1
  %730 = load %struct._typeobject*, %struct._typeobject** %ob_type1387, align 8
  %tp_dealloc1388 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %730, i32 0, i32 4
  %731 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1388, align 8
  %732 = load %struct._object*, %struct._object** %_py_decref_tmp1381, align 8
  call void %731(%struct._object* %732)
  br label %if.end.1389

if.end.1389:                                      ; preds = %if.else.1386, %if.then.1385
  br label %do.end.1390

do.end.1390:                                      ; preds = %if.end.1389
  %733 = load i32, i32* %res, align 4
  %cmp1391 = icmp slt i32 %733, 0
  br i1 %cmp1391, label %if.then.1392, label %if.end.1393

if.then.1392:                                     ; preds = %do.end.1390
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1393:                                      ; preds = %do.end.1390
  %734 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1394 = call i8* @PyExpat_XML_ErrorString(i32 27)
  %call1395 = call i32 @PyModule_AddStringConstant(%struct._object* %734, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.42, i32 0, i32 0), i8* %call1394)
  %cmp1396 = icmp slt i32 %call1395, 0
  br i1 %cmp1396, label %if.then.1397, label %if.end.1398

if.then.1397:                                     ; preds = %if.end.1393
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1398:                                      ; preds = %if.end.1393
  %call1399 = call %struct._object* @PyLong_FromLong(i64 27)
  store %struct._object* %call1399, %struct._object** %tmpnum, align 8
  %735 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1400 = icmp eq %struct._object* %735, null
  br i1 %cmp1400, label %if.then.1401, label %if.end.1402

if.then.1401:                                     ; preds = %if.end.1398
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1402:                                      ; preds = %if.end.1398
  %736 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1403 = call i8* @PyExpat_XML_ErrorString(i32 27)
  %737 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1404 = call i32 @PyDict_SetItemString(%struct._object* %736, i8* %call1403, %struct._object* %737)
  store i32 %call1404, i32* %res, align 4
  %738 = load i32, i32* %res, align 4
  %cmp1405 = icmp slt i32 %738, 0
  br i1 %cmp1405, label %if.then.1406, label %if.end.1407

if.then.1406:                                     ; preds = %if.end.1402
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1407:                                      ; preds = %if.end.1402
  %call1408 = call i8* @PyExpat_XML_ErrorString(i32 27)
  %call1409 = call %struct._object* @PyUnicode_FromString(i8* %call1408)
  store %struct._object* %call1409, %struct._object** %tmpstr, align 8
  %739 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1410 = icmp eq %struct._object* %739, null
  br i1 %cmp1410, label %if.then.1411, label %if.end.1412

if.then.1411:                                     ; preds = %if.end.1407
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1412:                                      ; preds = %if.end.1407
  %740 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %741 = load %struct._object*, %struct._object** %tmpnum, align 8
  %742 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1413 = call i32 @PyDict_SetItem(%struct._object* %740, %struct._object* %741, %struct._object* %742)
  store i32 %call1413, i32* %res, align 4
  br label %do.body.1414

do.body.1414:                                     ; preds = %if.end.1412
  %743 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %743, %struct._object** %_py_decref_tmp1416, align 8
  %744 = load %struct._object*, %struct._object** %_py_decref_tmp1416, align 8
  %ob_refcnt1417 = getelementptr inbounds %struct._object, %struct._object* %744, i32 0, i32 0
  %745 = load i64, i64* %ob_refcnt1417, align 8
  %dec1418 = add i64 %745, -1
  store i64 %dec1418, i64* %ob_refcnt1417, align 8
  %cmp1419 = icmp ne i64 %dec1418, 0
  br i1 %cmp1419, label %if.then.1420, label %if.else.1421

if.then.1420:                                     ; preds = %do.body.1414
  br label %if.end.1424

if.else.1421:                                     ; preds = %do.body.1414
  %746 = load %struct._object*, %struct._object** %_py_decref_tmp1416, align 8
  %ob_type1422 = getelementptr inbounds %struct._object, %struct._object* %746, i32 0, i32 1
  %747 = load %struct._typeobject*, %struct._typeobject** %ob_type1422, align 8
  %tp_dealloc1423 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %747, i32 0, i32 4
  %748 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1423, align 8
  %749 = load %struct._object*, %struct._object** %_py_decref_tmp1416, align 8
  call void %748(%struct._object* %749)
  br label %if.end.1424

if.end.1424:                                      ; preds = %if.else.1421, %if.then.1420
  br label %do.end.1425

do.end.1425:                                      ; preds = %if.end.1424
  br label %do.body.1426

do.body.1426:                                     ; preds = %do.end.1425
  %750 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %750, %struct._object** %_py_decref_tmp1428, align 8
  %751 = load %struct._object*, %struct._object** %_py_decref_tmp1428, align 8
  %ob_refcnt1429 = getelementptr inbounds %struct._object, %struct._object* %751, i32 0, i32 0
  %752 = load i64, i64* %ob_refcnt1429, align 8
  %dec1430 = add i64 %752, -1
  store i64 %dec1430, i64* %ob_refcnt1429, align 8
  %cmp1431 = icmp ne i64 %dec1430, 0
  br i1 %cmp1431, label %if.then.1432, label %if.else.1433

if.then.1432:                                     ; preds = %do.body.1426
  br label %if.end.1436

if.else.1433:                                     ; preds = %do.body.1426
  %753 = load %struct._object*, %struct._object** %_py_decref_tmp1428, align 8
  %ob_type1434 = getelementptr inbounds %struct._object, %struct._object* %753, i32 0, i32 1
  %754 = load %struct._typeobject*, %struct._typeobject** %ob_type1434, align 8
  %tp_dealloc1435 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %754, i32 0, i32 4
  %755 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1435, align 8
  %756 = load %struct._object*, %struct._object** %_py_decref_tmp1428, align 8
  call void %755(%struct._object* %756)
  br label %if.end.1436

if.end.1436:                                      ; preds = %if.else.1433, %if.then.1432
  br label %do.end.1437

do.end.1437:                                      ; preds = %if.end.1436
  %757 = load i32, i32* %res, align 4
  %cmp1438 = icmp slt i32 %757, 0
  br i1 %cmp1438, label %if.then.1439, label %if.end.1440

if.then.1439:                                     ; preds = %do.end.1437
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1440:                                      ; preds = %do.end.1437
  %758 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1441 = call i8* @PyExpat_XML_ErrorString(i32 28)
  %call1442 = call i32 @PyModule_AddStringConstant(%struct._object* %758, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.43, i32 0, i32 0), i8* %call1441)
  %cmp1443 = icmp slt i32 %call1442, 0
  br i1 %cmp1443, label %if.then.1444, label %if.end.1445

if.then.1444:                                     ; preds = %if.end.1440
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1445:                                      ; preds = %if.end.1440
  %call1446 = call %struct._object* @PyLong_FromLong(i64 28)
  store %struct._object* %call1446, %struct._object** %tmpnum, align 8
  %759 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1447 = icmp eq %struct._object* %759, null
  br i1 %cmp1447, label %if.then.1448, label %if.end.1449

if.then.1448:                                     ; preds = %if.end.1445
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1449:                                      ; preds = %if.end.1445
  %760 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1450 = call i8* @PyExpat_XML_ErrorString(i32 28)
  %761 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1451 = call i32 @PyDict_SetItemString(%struct._object* %760, i8* %call1450, %struct._object* %761)
  store i32 %call1451, i32* %res, align 4
  %762 = load i32, i32* %res, align 4
  %cmp1452 = icmp slt i32 %762, 0
  br i1 %cmp1452, label %if.then.1453, label %if.end.1454

if.then.1453:                                     ; preds = %if.end.1449
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1454:                                      ; preds = %if.end.1449
  %call1455 = call i8* @PyExpat_XML_ErrorString(i32 28)
  %call1456 = call %struct._object* @PyUnicode_FromString(i8* %call1455)
  store %struct._object* %call1456, %struct._object** %tmpstr, align 8
  %763 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1457 = icmp eq %struct._object* %763, null
  br i1 %cmp1457, label %if.then.1458, label %if.end.1459

if.then.1458:                                     ; preds = %if.end.1454
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1459:                                      ; preds = %if.end.1454
  %764 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %765 = load %struct._object*, %struct._object** %tmpnum, align 8
  %766 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1460 = call i32 @PyDict_SetItem(%struct._object* %764, %struct._object* %765, %struct._object* %766)
  store i32 %call1460, i32* %res, align 4
  br label %do.body.1461

do.body.1461:                                     ; preds = %if.end.1459
  %767 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %767, %struct._object** %_py_decref_tmp1463, align 8
  %768 = load %struct._object*, %struct._object** %_py_decref_tmp1463, align 8
  %ob_refcnt1464 = getelementptr inbounds %struct._object, %struct._object* %768, i32 0, i32 0
  %769 = load i64, i64* %ob_refcnt1464, align 8
  %dec1465 = add i64 %769, -1
  store i64 %dec1465, i64* %ob_refcnt1464, align 8
  %cmp1466 = icmp ne i64 %dec1465, 0
  br i1 %cmp1466, label %if.then.1467, label %if.else.1468

if.then.1467:                                     ; preds = %do.body.1461
  br label %if.end.1471

if.else.1468:                                     ; preds = %do.body.1461
  %770 = load %struct._object*, %struct._object** %_py_decref_tmp1463, align 8
  %ob_type1469 = getelementptr inbounds %struct._object, %struct._object* %770, i32 0, i32 1
  %771 = load %struct._typeobject*, %struct._typeobject** %ob_type1469, align 8
  %tp_dealloc1470 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %771, i32 0, i32 4
  %772 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1470, align 8
  %773 = load %struct._object*, %struct._object** %_py_decref_tmp1463, align 8
  call void %772(%struct._object* %773)
  br label %if.end.1471

if.end.1471:                                      ; preds = %if.else.1468, %if.then.1467
  br label %do.end.1472

do.end.1472:                                      ; preds = %if.end.1471
  br label %do.body.1473

do.body.1473:                                     ; preds = %do.end.1472
  %774 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %774, %struct._object** %_py_decref_tmp1475, align 8
  %775 = load %struct._object*, %struct._object** %_py_decref_tmp1475, align 8
  %ob_refcnt1476 = getelementptr inbounds %struct._object, %struct._object* %775, i32 0, i32 0
  %776 = load i64, i64* %ob_refcnt1476, align 8
  %dec1477 = add i64 %776, -1
  store i64 %dec1477, i64* %ob_refcnt1476, align 8
  %cmp1478 = icmp ne i64 %dec1477, 0
  br i1 %cmp1478, label %if.then.1479, label %if.else.1480

if.then.1479:                                     ; preds = %do.body.1473
  br label %if.end.1483

if.else.1480:                                     ; preds = %do.body.1473
  %777 = load %struct._object*, %struct._object** %_py_decref_tmp1475, align 8
  %ob_type1481 = getelementptr inbounds %struct._object, %struct._object* %777, i32 0, i32 1
  %778 = load %struct._typeobject*, %struct._typeobject** %ob_type1481, align 8
  %tp_dealloc1482 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %778, i32 0, i32 4
  %779 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1482, align 8
  %780 = load %struct._object*, %struct._object** %_py_decref_tmp1475, align 8
  call void %779(%struct._object* %780)
  br label %if.end.1483

if.end.1483:                                      ; preds = %if.else.1480, %if.then.1479
  br label %do.end.1484

do.end.1484:                                      ; preds = %if.end.1483
  %781 = load i32, i32* %res, align 4
  %cmp1485 = icmp slt i32 %781, 0
  br i1 %cmp1485, label %if.then.1486, label %if.end.1487

if.then.1486:                                     ; preds = %do.end.1484
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1487:                                      ; preds = %do.end.1484
  %782 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1488 = call i8* @PyExpat_XML_ErrorString(i32 29)
  %call1489 = call i32 @PyModule_AddStringConstant(%struct._object* %782, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.44, i32 0, i32 0), i8* %call1488)
  %cmp1490 = icmp slt i32 %call1489, 0
  br i1 %cmp1490, label %if.then.1491, label %if.end.1492

if.then.1491:                                     ; preds = %if.end.1487
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1492:                                      ; preds = %if.end.1487
  %call1493 = call %struct._object* @PyLong_FromLong(i64 29)
  store %struct._object* %call1493, %struct._object** %tmpnum, align 8
  %783 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1494 = icmp eq %struct._object* %783, null
  br i1 %cmp1494, label %if.then.1495, label %if.end.1496

if.then.1495:                                     ; preds = %if.end.1492
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1496:                                      ; preds = %if.end.1492
  %784 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1497 = call i8* @PyExpat_XML_ErrorString(i32 29)
  %785 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1498 = call i32 @PyDict_SetItemString(%struct._object* %784, i8* %call1497, %struct._object* %785)
  store i32 %call1498, i32* %res, align 4
  %786 = load i32, i32* %res, align 4
  %cmp1499 = icmp slt i32 %786, 0
  br i1 %cmp1499, label %if.then.1500, label %if.end.1501

if.then.1500:                                     ; preds = %if.end.1496
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1501:                                      ; preds = %if.end.1496
  %call1502 = call i8* @PyExpat_XML_ErrorString(i32 29)
  %call1503 = call %struct._object* @PyUnicode_FromString(i8* %call1502)
  store %struct._object* %call1503, %struct._object** %tmpstr, align 8
  %787 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1504 = icmp eq %struct._object* %787, null
  br i1 %cmp1504, label %if.then.1505, label %if.end.1506

if.then.1505:                                     ; preds = %if.end.1501
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1506:                                      ; preds = %if.end.1501
  %788 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %789 = load %struct._object*, %struct._object** %tmpnum, align 8
  %790 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1507 = call i32 @PyDict_SetItem(%struct._object* %788, %struct._object* %789, %struct._object* %790)
  store i32 %call1507, i32* %res, align 4
  br label %do.body.1508

do.body.1508:                                     ; preds = %if.end.1506
  %791 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %791, %struct._object** %_py_decref_tmp1510, align 8
  %792 = load %struct._object*, %struct._object** %_py_decref_tmp1510, align 8
  %ob_refcnt1511 = getelementptr inbounds %struct._object, %struct._object* %792, i32 0, i32 0
  %793 = load i64, i64* %ob_refcnt1511, align 8
  %dec1512 = add i64 %793, -1
  store i64 %dec1512, i64* %ob_refcnt1511, align 8
  %cmp1513 = icmp ne i64 %dec1512, 0
  br i1 %cmp1513, label %if.then.1514, label %if.else.1515

if.then.1514:                                     ; preds = %do.body.1508
  br label %if.end.1518

if.else.1515:                                     ; preds = %do.body.1508
  %794 = load %struct._object*, %struct._object** %_py_decref_tmp1510, align 8
  %ob_type1516 = getelementptr inbounds %struct._object, %struct._object* %794, i32 0, i32 1
  %795 = load %struct._typeobject*, %struct._typeobject** %ob_type1516, align 8
  %tp_dealloc1517 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %795, i32 0, i32 4
  %796 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1517, align 8
  %797 = load %struct._object*, %struct._object** %_py_decref_tmp1510, align 8
  call void %796(%struct._object* %797)
  br label %if.end.1518

if.end.1518:                                      ; preds = %if.else.1515, %if.then.1514
  br label %do.end.1519

do.end.1519:                                      ; preds = %if.end.1518
  br label %do.body.1520

do.body.1520:                                     ; preds = %do.end.1519
  %798 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %798, %struct._object** %_py_decref_tmp1522, align 8
  %799 = load %struct._object*, %struct._object** %_py_decref_tmp1522, align 8
  %ob_refcnt1523 = getelementptr inbounds %struct._object, %struct._object* %799, i32 0, i32 0
  %800 = load i64, i64* %ob_refcnt1523, align 8
  %dec1524 = add i64 %800, -1
  store i64 %dec1524, i64* %ob_refcnt1523, align 8
  %cmp1525 = icmp ne i64 %dec1524, 0
  br i1 %cmp1525, label %if.then.1526, label %if.else.1527

if.then.1526:                                     ; preds = %do.body.1520
  br label %if.end.1530

if.else.1527:                                     ; preds = %do.body.1520
  %801 = load %struct._object*, %struct._object** %_py_decref_tmp1522, align 8
  %ob_type1528 = getelementptr inbounds %struct._object, %struct._object* %801, i32 0, i32 1
  %802 = load %struct._typeobject*, %struct._typeobject** %ob_type1528, align 8
  %tp_dealloc1529 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %802, i32 0, i32 4
  %803 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1529, align 8
  %804 = load %struct._object*, %struct._object** %_py_decref_tmp1522, align 8
  call void %803(%struct._object* %804)
  br label %if.end.1530

if.end.1530:                                      ; preds = %if.else.1527, %if.then.1526
  br label %do.end.1531

do.end.1531:                                      ; preds = %if.end.1530
  %805 = load i32, i32* %res, align 4
  %cmp1532 = icmp slt i32 %805, 0
  br i1 %cmp1532, label %if.then.1533, label %if.end.1534

if.then.1533:                                     ; preds = %do.end.1531
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1534:                                      ; preds = %do.end.1531
  %806 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1535 = call i8* @PyExpat_XML_ErrorString(i32 30)
  %call1536 = call i32 @PyModule_AddStringConstant(%struct._object* %806, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i8* %call1535)
  %cmp1537 = icmp slt i32 %call1536, 0
  br i1 %cmp1537, label %if.then.1538, label %if.end.1539

if.then.1538:                                     ; preds = %if.end.1534
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1539:                                      ; preds = %if.end.1534
  %call1540 = call %struct._object* @PyLong_FromLong(i64 30)
  store %struct._object* %call1540, %struct._object** %tmpnum, align 8
  %807 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1541 = icmp eq %struct._object* %807, null
  br i1 %cmp1541, label %if.then.1542, label %if.end.1543

if.then.1542:                                     ; preds = %if.end.1539
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1543:                                      ; preds = %if.end.1539
  %808 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1544 = call i8* @PyExpat_XML_ErrorString(i32 30)
  %809 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1545 = call i32 @PyDict_SetItemString(%struct._object* %808, i8* %call1544, %struct._object* %809)
  store i32 %call1545, i32* %res, align 4
  %810 = load i32, i32* %res, align 4
  %cmp1546 = icmp slt i32 %810, 0
  br i1 %cmp1546, label %if.then.1547, label %if.end.1548

if.then.1547:                                     ; preds = %if.end.1543
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1548:                                      ; preds = %if.end.1543
  %call1549 = call i8* @PyExpat_XML_ErrorString(i32 30)
  %call1550 = call %struct._object* @PyUnicode_FromString(i8* %call1549)
  store %struct._object* %call1550, %struct._object** %tmpstr, align 8
  %811 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1551 = icmp eq %struct._object* %811, null
  br i1 %cmp1551, label %if.then.1552, label %if.end.1553

if.then.1552:                                     ; preds = %if.end.1548
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1553:                                      ; preds = %if.end.1548
  %812 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %813 = load %struct._object*, %struct._object** %tmpnum, align 8
  %814 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1554 = call i32 @PyDict_SetItem(%struct._object* %812, %struct._object* %813, %struct._object* %814)
  store i32 %call1554, i32* %res, align 4
  br label %do.body.1555

do.body.1555:                                     ; preds = %if.end.1553
  %815 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %815, %struct._object** %_py_decref_tmp1557, align 8
  %816 = load %struct._object*, %struct._object** %_py_decref_tmp1557, align 8
  %ob_refcnt1558 = getelementptr inbounds %struct._object, %struct._object* %816, i32 0, i32 0
  %817 = load i64, i64* %ob_refcnt1558, align 8
  %dec1559 = add i64 %817, -1
  store i64 %dec1559, i64* %ob_refcnt1558, align 8
  %cmp1560 = icmp ne i64 %dec1559, 0
  br i1 %cmp1560, label %if.then.1561, label %if.else.1562

if.then.1561:                                     ; preds = %do.body.1555
  br label %if.end.1565

if.else.1562:                                     ; preds = %do.body.1555
  %818 = load %struct._object*, %struct._object** %_py_decref_tmp1557, align 8
  %ob_type1563 = getelementptr inbounds %struct._object, %struct._object* %818, i32 0, i32 1
  %819 = load %struct._typeobject*, %struct._typeobject** %ob_type1563, align 8
  %tp_dealloc1564 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %819, i32 0, i32 4
  %820 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1564, align 8
  %821 = load %struct._object*, %struct._object** %_py_decref_tmp1557, align 8
  call void %820(%struct._object* %821)
  br label %if.end.1565

if.end.1565:                                      ; preds = %if.else.1562, %if.then.1561
  br label %do.end.1566

do.end.1566:                                      ; preds = %if.end.1565
  br label %do.body.1567

do.body.1567:                                     ; preds = %do.end.1566
  %822 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %822, %struct._object** %_py_decref_tmp1569, align 8
  %823 = load %struct._object*, %struct._object** %_py_decref_tmp1569, align 8
  %ob_refcnt1570 = getelementptr inbounds %struct._object, %struct._object* %823, i32 0, i32 0
  %824 = load i64, i64* %ob_refcnt1570, align 8
  %dec1571 = add i64 %824, -1
  store i64 %dec1571, i64* %ob_refcnt1570, align 8
  %cmp1572 = icmp ne i64 %dec1571, 0
  br i1 %cmp1572, label %if.then.1573, label %if.else.1574

if.then.1573:                                     ; preds = %do.body.1567
  br label %if.end.1577

if.else.1574:                                     ; preds = %do.body.1567
  %825 = load %struct._object*, %struct._object** %_py_decref_tmp1569, align 8
  %ob_type1575 = getelementptr inbounds %struct._object, %struct._object* %825, i32 0, i32 1
  %826 = load %struct._typeobject*, %struct._typeobject** %ob_type1575, align 8
  %tp_dealloc1576 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %826, i32 0, i32 4
  %827 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1576, align 8
  %828 = load %struct._object*, %struct._object** %_py_decref_tmp1569, align 8
  call void %827(%struct._object* %828)
  br label %if.end.1577

if.end.1577:                                      ; preds = %if.else.1574, %if.then.1573
  br label %do.end.1578

do.end.1578:                                      ; preds = %if.end.1577
  %829 = load i32, i32* %res, align 4
  %cmp1579 = icmp slt i32 %829, 0
  br i1 %cmp1579, label %if.then.1580, label %if.end.1581

if.then.1580:                                     ; preds = %do.end.1578
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1581:                                      ; preds = %do.end.1578
  %830 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1582 = call i8* @PyExpat_XML_ErrorString(i32 31)
  %call1583 = call i32 @PyModule_AddStringConstant(%struct._object* %830, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0), i8* %call1582)
  %cmp1584 = icmp slt i32 %call1583, 0
  br i1 %cmp1584, label %if.then.1585, label %if.end.1586

if.then.1585:                                     ; preds = %if.end.1581
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1586:                                      ; preds = %if.end.1581
  %call1587 = call %struct._object* @PyLong_FromLong(i64 31)
  store %struct._object* %call1587, %struct._object** %tmpnum, align 8
  %831 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1588 = icmp eq %struct._object* %831, null
  br i1 %cmp1588, label %if.then.1589, label %if.end.1590

if.then.1589:                                     ; preds = %if.end.1586
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1590:                                      ; preds = %if.end.1586
  %832 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1591 = call i8* @PyExpat_XML_ErrorString(i32 31)
  %833 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1592 = call i32 @PyDict_SetItemString(%struct._object* %832, i8* %call1591, %struct._object* %833)
  store i32 %call1592, i32* %res, align 4
  %834 = load i32, i32* %res, align 4
  %cmp1593 = icmp slt i32 %834, 0
  br i1 %cmp1593, label %if.then.1594, label %if.end.1595

if.then.1594:                                     ; preds = %if.end.1590
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1595:                                      ; preds = %if.end.1590
  %call1596 = call i8* @PyExpat_XML_ErrorString(i32 31)
  %call1597 = call %struct._object* @PyUnicode_FromString(i8* %call1596)
  store %struct._object* %call1597, %struct._object** %tmpstr, align 8
  %835 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1598 = icmp eq %struct._object* %835, null
  br i1 %cmp1598, label %if.then.1599, label %if.end.1600

if.then.1599:                                     ; preds = %if.end.1595
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1600:                                      ; preds = %if.end.1595
  %836 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %837 = load %struct._object*, %struct._object** %tmpnum, align 8
  %838 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1601 = call i32 @PyDict_SetItem(%struct._object* %836, %struct._object* %837, %struct._object* %838)
  store i32 %call1601, i32* %res, align 4
  br label %do.body.1602

do.body.1602:                                     ; preds = %if.end.1600
  %839 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %839, %struct._object** %_py_decref_tmp1604, align 8
  %840 = load %struct._object*, %struct._object** %_py_decref_tmp1604, align 8
  %ob_refcnt1605 = getelementptr inbounds %struct._object, %struct._object* %840, i32 0, i32 0
  %841 = load i64, i64* %ob_refcnt1605, align 8
  %dec1606 = add i64 %841, -1
  store i64 %dec1606, i64* %ob_refcnt1605, align 8
  %cmp1607 = icmp ne i64 %dec1606, 0
  br i1 %cmp1607, label %if.then.1608, label %if.else.1609

if.then.1608:                                     ; preds = %do.body.1602
  br label %if.end.1612

if.else.1609:                                     ; preds = %do.body.1602
  %842 = load %struct._object*, %struct._object** %_py_decref_tmp1604, align 8
  %ob_type1610 = getelementptr inbounds %struct._object, %struct._object* %842, i32 0, i32 1
  %843 = load %struct._typeobject*, %struct._typeobject** %ob_type1610, align 8
  %tp_dealloc1611 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %843, i32 0, i32 4
  %844 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1611, align 8
  %845 = load %struct._object*, %struct._object** %_py_decref_tmp1604, align 8
  call void %844(%struct._object* %845)
  br label %if.end.1612

if.end.1612:                                      ; preds = %if.else.1609, %if.then.1608
  br label %do.end.1613

do.end.1613:                                      ; preds = %if.end.1612
  br label %do.body.1614

do.body.1614:                                     ; preds = %do.end.1613
  %846 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %846, %struct._object** %_py_decref_tmp1616, align 8
  %847 = load %struct._object*, %struct._object** %_py_decref_tmp1616, align 8
  %ob_refcnt1617 = getelementptr inbounds %struct._object, %struct._object* %847, i32 0, i32 0
  %848 = load i64, i64* %ob_refcnt1617, align 8
  %dec1618 = add i64 %848, -1
  store i64 %dec1618, i64* %ob_refcnt1617, align 8
  %cmp1619 = icmp ne i64 %dec1618, 0
  br i1 %cmp1619, label %if.then.1620, label %if.else.1621

if.then.1620:                                     ; preds = %do.body.1614
  br label %if.end.1624

if.else.1621:                                     ; preds = %do.body.1614
  %849 = load %struct._object*, %struct._object** %_py_decref_tmp1616, align 8
  %ob_type1622 = getelementptr inbounds %struct._object, %struct._object* %849, i32 0, i32 1
  %850 = load %struct._typeobject*, %struct._typeobject** %ob_type1622, align 8
  %tp_dealloc1623 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %850, i32 0, i32 4
  %851 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1623, align 8
  %852 = load %struct._object*, %struct._object** %_py_decref_tmp1616, align 8
  call void %851(%struct._object* %852)
  br label %if.end.1624

if.end.1624:                                      ; preds = %if.else.1621, %if.then.1620
  br label %do.end.1625

do.end.1625:                                      ; preds = %if.end.1624
  %853 = load i32, i32* %res, align 4
  %cmp1626 = icmp slt i32 %853, 0
  br i1 %cmp1626, label %if.then.1627, label %if.end.1628

if.then.1627:                                     ; preds = %do.end.1625
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1628:                                      ; preds = %do.end.1625
  %854 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1629 = call i8* @PyExpat_XML_ErrorString(i32 32)
  %call1630 = call i32 @PyModule_AddStringConstant(%struct._object* %854, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.47, i32 0, i32 0), i8* %call1629)
  %cmp1631 = icmp slt i32 %call1630, 0
  br i1 %cmp1631, label %if.then.1632, label %if.end.1633

if.then.1632:                                     ; preds = %if.end.1628
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1633:                                      ; preds = %if.end.1628
  %call1634 = call %struct._object* @PyLong_FromLong(i64 32)
  store %struct._object* %call1634, %struct._object** %tmpnum, align 8
  %855 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1635 = icmp eq %struct._object* %855, null
  br i1 %cmp1635, label %if.then.1636, label %if.end.1637

if.then.1636:                                     ; preds = %if.end.1633
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1637:                                      ; preds = %if.end.1633
  %856 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1638 = call i8* @PyExpat_XML_ErrorString(i32 32)
  %857 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1639 = call i32 @PyDict_SetItemString(%struct._object* %856, i8* %call1638, %struct._object* %857)
  store i32 %call1639, i32* %res, align 4
  %858 = load i32, i32* %res, align 4
  %cmp1640 = icmp slt i32 %858, 0
  br i1 %cmp1640, label %if.then.1641, label %if.end.1642

if.then.1641:                                     ; preds = %if.end.1637
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1642:                                      ; preds = %if.end.1637
  %call1643 = call i8* @PyExpat_XML_ErrorString(i32 32)
  %call1644 = call %struct._object* @PyUnicode_FromString(i8* %call1643)
  store %struct._object* %call1644, %struct._object** %tmpstr, align 8
  %859 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1645 = icmp eq %struct._object* %859, null
  br i1 %cmp1645, label %if.then.1646, label %if.end.1647

if.then.1646:                                     ; preds = %if.end.1642
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1647:                                      ; preds = %if.end.1642
  %860 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %861 = load %struct._object*, %struct._object** %tmpnum, align 8
  %862 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1648 = call i32 @PyDict_SetItem(%struct._object* %860, %struct._object* %861, %struct._object* %862)
  store i32 %call1648, i32* %res, align 4
  br label %do.body.1649

do.body.1649:                                     ; preds = %if.end.1647
  %863 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %863, %struct._object** %_py_decref_tmp1651, align 8
  %864 = load %struct._object*, %struct._object** %_py_decref_tmp1651, align 8
  %ob_refcnt1652 = getelementptr inbounds %struct._object, %struct._object* %864, i32 0, i32 0
  %865 = load i64, i64* %ob_refcnt1652, align 8
  %dec1653 = add i64 %865, -1
  store i64 %dec1653, i64* %ob_refcnt1652, align 8
  %cmp1654 = icmp ne i64 %dec1653, 0
  br i1 %cmp1654, label %if.then.1655, label %if.else.1656

if.then.1655:                                     ; preds = %do.body.1649
  br label %if.end.1659

if.else.1656:                                     ; preds = %do.body.1649
  %866 = load %struct._object*, %struct._object** %_py_decref_tmp1651, align 8
  %ob_type1657 = getelementptr inbounds %struct._object, %struct._object* %866, i32 0, i32 1
  %867 = load %struct._typeobject*, %struct._typeobject** %ob_type1657, align 8
  %tp_dealloc1658 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %867, i32 0, i32 4
  %868 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1658, align 8
  %869 = load %struct._object*, %struct._object** %_py_decref_tmp1651, align 8
  call void %868(%struct._object* %869)
  br label %if.end.1659

if.end.1659:                                      ; preds = %if.else.1656, %if.then.1655
  br label %do.end.1660

do.end.1660:                                      ; preds = %if.end.1659
  br label %do.body.1661

do.body.1661:                                     ; preds = %do.end.1660
  %870 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %870, %struct._object** %_py_decref_tmp1663, align 8
  %871 = load %struct._object*, %struct._object** %_py_decref_tmp1663, align 8
  %ob_refcnt1664 = getelementptr inbounds %struct._object, %struct._object* %871, i32 0, i32 0
  %872 = load i64, i64* %ob_refcnt1664, align 8
  %dec1665 = add i64 %872, -1
  store i64 %dec1665, i64* %ob_refcnt1664, align 8
  %cmp1666 = icmp ne i64 %dec1665, 0
  br i1 %cmp1666, label %if.then.1667, label %if.else.1668

if.then.1667:                                     ; preds = %do.body.1661
  br label %if.end.1671

if.else.1668:                                     ; preds = %do.body.1661
  %873 = load %struct._object*, %struct._object** %_py_decref_tmp1663, align 8
  %ob_type1669 = getelementptr inbounds %struct._object, %struct._object* %873, i32 0, i32 1
  %874 = load %struct._typeobject*, %struct._typeobject** %ob_type1669, align 8
  %tp_dealloc1670 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %874, i32 0, i32 4
  %875 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1670, align 8
  %876 = load %struct._object*, %struct._object** %_py_decref_tmp1663, align 8
  call void %875(%struct._object* %876)
  br label %if.end.1671

if.end.1671:                                      ; preds = %if.else.1668, %if.then.1667
  br label %do.end.1672

do.end.1672:                                      ; preds = %if.end.1671
  %877 = load i32, i32* %res, align 4
  %cmp1673 = icmp slt i32 %877, 0
  br i1 %cmp1673, label %if.then.1674, label %if.end.1675

if.then.1674:                                     ; preds = %do.end.1672
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1675:                                      ; preds = %do.end.1672
  %878 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1676 = call i8* @PyExpat_XML_ErrorString(i32 33)
  %call1677 = call i32 @PyModule_AddStringConstant(%struct._object* %878, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0), i8* %call1676)
  %cmp1678 = icmp slt i32 %call1677, 0
  br i1 %cmp1678, label %if.then.1679, label %if.end.1680

if.then.1679:                                     ; preds = %if.end.1675
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1680:                                      ; preds = %if.end.1675
  %call1681 = call %struct._object* @PyLong_FromLong(i64 33)
  store %struct._object* %call1681, %struct._object** %tmpnum, align 8
  %879 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1682 = icmp eq %struct._object* %879, null
  br i1 %cmp1682, label %if.then.1683, label %if.end.1684

if.then.1683:                                     ; preds = %if.end.1680
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1684:                                      ; preds = %if.end.1680
  %880 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1685 = call i8* @PyExpat_XML_ErrorString(i32 33)
  %881 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1686 = call i32 @PyDict_SetItemString(%struct._object* %880, i8* %call1685, %struct._object* %881)
  store i32 %call1686, i32* %res, align 4
  %882 = load i32, i32* %res, align 4
  %cmp1687 = icmp slt i32 %882, 0
  br i1 %cmp1687, label %if.then.1688, label %if.end.1689

if.then.1688:                                     ; preds = %if.end.1684
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1689:                                      ; preds = %if.end.1684
  %call1690 = call i8* @PyExpat_XML_ErrorString(i32 33)
  %call1691 = call %struct._object* @PyUnicode_FromString(i8* %call1690)
  store %struct._object* %call1691, %struct._object** %tmpstr, align 8
  %883 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1692 = icmp eq %struct._object* %883, null
  br i1 %cmp1692, label %if.then.1693, label %if.end.1694

if.then.1693:                                     ; preds = %if.end.1689
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1694:                                      ; preds = %if.end.1689
  %884 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %885 = load %struct._object*, %struct._object** %tmpnum, align 8
  %886 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1695 = call i32 @PyDict_SetItem(%struct._object* %884, %struct._object* %885, %struct._object* %886)
  store i32 %call1695, i32* %res, align 4
  br label %do.body.1696

do.body.1696:                                     ; preds = %if.end.1694
  %887 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %887, %struct._object** %_py_decref_tmp1698, align 8
  %888 = load %struct._object*, %struct._object** %_py_decref_tmp1698, align 8
  %ob_refcnt1699 = getelementptr inbounds %struct._object, %struct._object* %888, i32 0, i32 0
  %889 = load i64, i64* %ob_refcnt1699, align 8
  %dec1700 = add i64 %889, -1
  store i64 %dec1700, i64* %ob_refcnt1699, align 8
  %cmp1701 = icmp ne i64 %dec1700, 0
  br i1 %cmp1701, label %if.then.1702, label %if.else.1703

if.then.1702:                                     ; preds = %do.body.1696
  br label %if.end.1706

if.else.1703:                                     ; preds = %do.body.1696
  %890 = load %struct._object*, %struct._object** %_py_decref_tmp1698, align 8
  %ob_type1704 = getelementptr inbounds %struct._object, %struct._object* %890, i32 0, i32 1
  %891 = load %struct._typeobject*, %struct._typeobject** %ob_type1704, align 8
  %tp_dealloc1705 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %891, i32 0, i32 4
  %892 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1705, align 8
  %893 = load %struct._object*, %struct._object** %_py_decref_tmp1698, align 8
  call void %892(%struct._object* %893)
  br label %if.end.1706

if.end.1706:                                      ; preds = %if.else.1703, %if.then.1702
  br label %do.end.1707

do.end.1707:                                      ; preds = %if.end.1706
  br label %do.body.1708

do.body.1708:                                     ; preds = %do.end.1707
  %894 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %894, %struct._object** %_py_decref_tmp1710, align 8
  %895 = load %struct._object*, %struct._object** %_py_decref_tmp1710, align 8
  %ob_refcnt1711 = getelementptr inbounds %struct._object, %struct._object* %895, i32 0, i32 0
  %896 = load i64, i64* %ob_refcnt1711, align 8
  %dec1712 = add i64 %896, -1
  store i64 %dec1712, i64* %ob_refcnt1711, align 8
  %cmp1713 = icmp ne i64 %dec1712, 0
  br i1 %cmp1713, label %if.then.1714, label %if.else.1715

if.then.1714:                                     ; preds = %do.body.1708
  br label %if.end.1718

if.else.1715:                                     ; preds = %do.body.1708
  %897 = load %struct._object*, %struct._object** %_py_decref_tmp1710, align 8
  %ob_type1716 = getelementptr inbounds %struct._object, %struct._object* %897, i32 0, i32 1
  %898 = load %struct._typeobject*, %struct._typeobject** %ob_type1716, align 8
  %tp_dealloc1717 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %898, i32 0, i32 4
  %899 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1717, align 8
  %900 = load %struct._object*, %struct._object** %_py_decref_tmp1710, align 8
  call void %899(%struct._object* %900)
  br label %if.end.1718

if.end.1718:                                      ; preds = %if.else.1715, %if.then.1714
  br label %do.end.1719

do.end.1719:                                      ; preds = %if.end.1718
  %901 = load i32, i32* %res, align 4
  %cmp1720 = icmp slt i32 %901, 0
  br i1 %cmp1720, label %if.then.1721, label %if.end.1722

if.then.1721:                                     ; preds = %do.end.1719
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1722:                                      ; preds = %do.end.1719
  %902 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1723 = call i8* @PyExpat_XML_ErrorString(i32 34)
  %call1724 = call i32 @PyModule_AddStringConstant(%struct._object* %902, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.49, i32 0, i32 0), i8* %call1723)
  %cmp1725 = icmp slt i32 %call1724, 0
  br i1 %cmp1725, label %if.then.1726, label %if.end.1727

if.then.1726:                                     ; preds = %if.end.1722
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1727:                                      ; preds = %if.end.1722
  %call1728 = call %struct._object* @PyLong_FromLong(i64 34)
  store %struct._object* %call1728, %struct._object** %tmpnum, align 8
  %903 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1729 = icmp eq %struct._object* %903, null
  br i1 %cmp1729, label %if.then.1730, label %if.end.1731

if.then.1730:                                     ; preds = %if.end.1727
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1731:                                      ; preds = %if.end.1727
  %904 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1732 = call i8* @PyExpat_XML_ErrorString(i32 34)
  %905 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1733 = call i32 @PyDict_SetItemString(%struct._object* %904, i8* %call1732, %struct._object* %905)
  store i32 %call1733, i32* %res, align 4
  %906 = load i32, i32* %res, align 4
  %cmp1734 = icmp slt i32 %906, 0
  br i1 %cmp1734, label %if.then.1735, label %if.end.1736

if.then.1735:                                     ; preds = %if.end.1731
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1736:                                      ; preds = %if.end.1731
  %call1737 = call i8* @PyExpat_XML_ErrorString(i32 34)
  %call1738 = call %struct._object* @PyUnicode_FromString(i8* %call1737)
  store %struct._object* %call1738, %struct._object** %tmpstr, align 8
  %907 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1739 = icmp eq %struct._object* %907, null
  br i1 %cmp1739, label %if.then.1740, label %if.end.1741

if.then.1740:                                     ; preds = %if.end.1736
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1741:                                      ; preds = %if.end.1736
  %908 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %909 = load %struct._object*, %struct._object** %tmpnum, align 8
  %910 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1742 = call i32 @PyDict_SetItem(%struct._object* %908, %struct._object* %909, %struct._object* %910)
  store i32 %call1742, i32* %res, align 4
  br label %do.body.1743

do.body.1743:                                     ; preds = %if.end.1741
  %911 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %911, %struct._object** %_py_decref_tmp1745, align 8
  %912 = load %struct._object*, %struct._object** %_py_decref_tmp1745, align 8
  %ob_refcnt1746 = getelementptr inbounds %struct._object, %struct._object* %912, i32 0, i32 0
  %913 = load i64, i64* %ob_refcnt1746, align 8
  %dec1747 = add i64 %913, -1
  store i64 %dec1747, i64* %ob_refcnt1746, align 8
  %cmp1748 = icmp ne i64 %dec1747, 0
  br i1 %cmp1748, label %if.then.1749, label %if.else.1750

if.then.1749:                                     ; preds = %do.body.1743
  br label %if.end.1753

if.else.1750:                                     ; preds = %do.body.1743
  %914 = load %struct._object*, %struct._object** %_py_decref_tmp1745, align 8
  %ob_type1751 = getelementptr inbounds %struct._object, %struct._object* %914, i32 0, i32 1
  %915 = load %struct._typeobject*, %struct._typeobject** %ob_type1751, align 8
  %tp_dealloc1752 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %915, i32 0, i32 4
  %916 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1752, align 8
  %917 = load %struct._object*, %struct._object** %_py_decref_tmp1745, align 8
  call void %916(%struct._object* %917)
  br label %if.end.1753

if.end.1753:                                      ; preds = %if.else.1750, %if.then.1749
  br label %do.end.1754

do.end.1754:                                      ; preds = %if.end.1753
  br label %do.body.1755

do.body.1755:                                     ; preds = %do.end.1754
  %918 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %918, %struct._object** %_py_decref_tmp1757, align 8
  %919 = load %struct._object*, %struct._object** %_py_decref_tmp1757, align 8
  %ob_refcnt1758 = getelementptr inbounds %struct._object, %struct._object* %919, i32 0, i32 0
  %920 = load i64, i64* %ob_refcnt1758, align 8
  %dec1759 = add i64 %920, -1
  store i64 %dec1759, i64* %ob_refcnt1758, align 8
  %cmp1760 = icmp ne i64 %dec1759, 0
  br i1 %cmp1760, label %if.then.1761, label %if.else.1762

if.then.1761:                                     ; preds = %do.body.1755
  br label %if.end.1765

if.else.1762:                                     ; preds = %do.body.1755
  %921 = load %struct._object*, %struct._object** %_py_decref_tmp1757, align 8
  %ob_type1763 = getelementptr inbounds %struct._object, %struct._object* %921, i32 0, i32 1
  %922 = load %struct._typeobject*, %struct._typeobject** %ob_type1763, align 8
  %tp_dealloc1764 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %922, i32 0, i32 4
  %923 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1764, align 8
  %924 = load %struct._object*, %struct._object** %_py_decref_tmp1757, align 8
  call void %923(%struct._object* %924)
  br label %if.end.1765

if.end.1765:                                      ; preds = %if.else.1762, %if.then.1761
  br label %do.end.1766

do.end.1766:                                      ; preds = %if.end.1765
  %925 = load i32, i32* %res, align 4
  %cmp1767 = icmp slt i32 %925, 0
  br i1 %cmp1767, label %if.then.1768, label %if.end.1769

if.then.1768:                                     ; preds = %do.end.1766
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1769:                                      ; preds = %do.end.1766
  %926 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1770 = call i8* @PyExpat_XML_ErrorString(i32 35)
  %call1771 = call i32 @PyModule_AddStringConstant(%struct._object* %926, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.50, i32 0, i32 0), i8* %call1770)
  %cmp1772 = icmp slt i32 %call1771, 0
  br i1 %cmp1772, label %if.then.1773, label %if.end.1774

if.then.1773:                                     ; preds = %if.end.1769
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1774:                                      ; preds = %if.end.1769
  %call1775 = call %struct._object* @PyLong_FromLong(i64 35)
  store %struct._object* %call1775, %struct._object** %tmpnum, align 8
  %927 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1776 = icmp eq %struct._object* %927, null
  br i1 %cmp1776, label %if.then.1777, label %if.end.1778

if.then.1777:                                     ; preds = %if.end.1774
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1778:                                      ; preds = %if.end.1774
  %928 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1779 = call i8* @PyExpat_XML_ErrorString(i32 35)
  %929 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1780 = call i32 @PyDict_SetItemString(%struct._object* %928, i8* %call1779, %struct._object* %929)
  store i32 %call1780, i32* %res, align 4
  %930 = load i32, i32* %res, align 4
  %cmp1781 = icmp slt i32 %930, 0
  br i1 %cmp1781, label %if.then.1782, label %if.end.1783

if.then.1782:                                     ; preds = %if.end.1778
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1783:                                      ; preds = %if.end.1778
  %call1784 = call i8* @PyExpat_XML_ErrorString(i32 35)
  %call1785 = call %struct._object* @PyUnicode_FromString(i8* %call1784)
  store %struct._object* %call1785, %struct._object** %tmpstr, align 8
  %931 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1786 = icmp eq %struct._object* %931, null
  br i1 %cmp1786, label %if.then.1787, label %if.end.1788

if.then.1787:                                     ; preds = %if.end.1783
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1788:                                      ; preds = %if.end.1783
  %932 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %933 = load %struct._object*, %struct._object** %tmpnum, align 8
  %934 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1789 = call i32 @PyDict_SetItem(%struct._object* %932, %struct._object* %933, %struct._object* %934)
  store i32 %call1789, i32* %res, align 4
  br label %do.body.1790

do.body.1790:                                     ; preds = %if.end.1788
  %935 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %935, %struct._object** %_py_decref_tmp1792, align 8
  %936 = load %struct._object*, %struct._object** %_py_decref_tmp1792, align 8
  %ob_refcnt1793 = getelementptr inbounds %struct._object, %struct._object* %936, i32 0, i32 0
  %937 = load i64, i64* %ob_refcnt1793, align 8
  %dec1794 = add i64 %937, -1
  store i64 %dec1794, i64* %ob_refcnt1793, align 8
  %cmp1795 = icmp ne i64 %dec1794, 0
  br i1 %cmp1795, label %if.then.1796, label %if.else.1797

if.then.1796:                                     ; preds = %do.body.1790
  br label %if.end.1800

if.else.1797:                                     ; preds = %do.body.1790
  %938 = load %struct._object*, %struct._object** %_py_decref_tmp1792, align 8
  %ob_type1798 = getelementptr inbounds %struct._object, %struct._object* %938, i32 0, i32 1
  %939 = load %struct._typeobject*, %struct._typeobject** %ob_type1798, align 8
  %tp_dealloc1799 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %939, i32 0, i32 4
  %940 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1799, align 8
  %941 = load %struct._object*, %struct._object** %_py_decref_tmp1792, align 8
  call void %940(%struct._object* %941)
  br label %if.end.1800

if.end.1800:                                      ; preds = %if.else.1797, %if.then.1796
  br label %do.end.1801

do.end.1801:                                      ; preds = %if.end.1800
  br label %do.body.1802

do.body.1802:                                     ; preds = %do.end.1801
  %942 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %942, %struct._object** %_py_decref_tmp1804, align 8
  %943 = load %struct._object*, %struct._object** %_py_decref_tmp1804, align 8
  %ob_refcnt1805 = getelementptr inbounds %struct._object, %struct._object* %943, i32 0, i32 0
  %944 = load i64, i64* %ob_refcnt1805, align 8
  %dec1806 = add i64 %944, -1
  store i64 %dec1806, i64* %ob_refcnt1805, align 8
  %cmp1807 = icmp ne i64 %dec1806, 0
  br i1 %cmp1807, label %if.then.1808, label %if.else.1809

if.then.1808:                                     ; preds = %do.body.1802
  br label %if.end.1812

if.else.1809:                                     ; preds = %do.body.1802
  %945 = load %struct._object*, %struct._object** %_py_decref_tmp1804, align 8
  %ob_type1810 = getelementptr inbounds %struct._object, %struct._object* %945, i32 0, i32 1
  %946 = load %struct._typeobject*, %struct._typeobject** %ob_type1810, align 8
  %tp_dealloc1811 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %946, i32 0, i32 4
  %947 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1811, align 8
  %948 = load %struct._object*, %struct._object** %_py_decref_tmp1804, align 8
  call void %947(%struct._object* %948)
  br label %if.end.1812

if.end.1812:                                      ; preds = %if.else.1809, %if.then.1808
  br label %do.end.1813

do.end.1813:                                      ; preds = %if.end.1812
  %949 = load i32, i32* %res, align 4
  %cmp1814 = icmp slt i32 %949, 0
  br i1 %cmp1814, label %if.then.1815, label %if.end.1816

if.then.1815:                                     ; preds = %do.end.1813
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1816:                                      ; preds = %do.end.1813
  %950 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1817 = call i8* @PyExpat_XML_ErrorString(i32 36)
  %call1818 = call i32 @PyModule_AddStringConstant(%struct._object* %950, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.51, i32 0, i32 0), i8* %call1817)
  %cmp1819 = icmp slt i32 %call1818, 0
  br i1 %cmp1819, label %if.then.1820, label %if.end.1821

if.then.1820:                                     ; preds = %if.end.1816
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1821:                                      ; preds = %if.end.1816
  %call1822 = call %struct._object* @PyLong_FromLong(i64 36)
  store %struct._object* %call1822, %struct._object** %tmpnum, align 8
  %951 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1823 = icmp eq %struct._object* %951, null
  br i1 %cmp1823, label %if.then.1824, label %if.end.1825

if.then.1824:                                     ; preds = %if.end.1821
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1825:                                      ; preds = %if.end.1821
  %952 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1826 = call i8* @PyExpat_XML_ErrorString(i32 36)
  %953 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1827 = call i32 @PyDict_SetItemString(%struct._object* %952, i8* %call1826, %struct._object* %953)
  store i32 %call1827, i32* %res, align 4
  %954 = load i32, i32* %res, align 4
  %cmp1828 = icmp slt i32 %954, 0
  br i1 %cmp1828, label %if.then.1829, label %if.end.1830

if.then.1829:                                     ; preds = %if.end.1825
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1830:                                      ; preds = %if.end.1825
  %call1831 = call i8* @PyExpat_XML_ErrorString(i32 36)
  %call1832 = call %struct._object* @PyUnicode_FromString(i8* %call1831)
  store %struct._object* %call1832, %struct._object** %tmpstr, align 8
  %955 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1833 = icmp eq %struct._object* %955, null
  br i1 %cmp1833, label %if.then.1834, label %if.end.1835

if.then.1834:                                     ; preds = %if.end.1830
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1835:                                      ; preds = %if.end.1830
  %956 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %957 = load %struct._object*, %struct._object** %tmpnum, align 8
  %958 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1836 = call i32 @PyDict_SetItem(%struct._object* %956, %struct._object* %957, %struct._object* %958)
  store i32 %call1836, i32* %res, align 4
  br label %do.body.1837

do.body.1837:                                     ; preds = %if.end.1835
  %959 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %959, %struct._object** %_py_decref_tmp1839, align 8
  %960 = load %struct._object*, %struct._object** %_py_decref_tmp1839, align 8
  %ob_refcnt1840 = getelementptr inbounds %struct._object, %struct._object* %960, i32 0, i32 0
  %961 = load i64, i64* %ob_refcnt1840, align 8
  %dec1841 = add i64 %961, -1
  store i64 %dec1841, i64* %ob_refcnt1840, align 8
  %cmp1842 = icmp ne i64 %dec1841, 0
  br i1 %cmp1842, label %if.then.1843, label %if.else.1844

if.then.1843:                                     ; preds = %do.body.1837
  br label %if.end.1847

if.else.1844:                                     ; preds = %do.body.1837
  %962 = load %struct._object*, %struct._object** %_py_decref_tmp1839, align 8
  %ob_type1845 = getelementptr inbounds %struct._object, %struct._object* %962, i32 0, i32 1
  %963 = load %struct._typeobject*, %struct._typeobject** %ob_type1845, align 8
  %tp_dealloc1846 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %963, i32 0, i32 4
  %964 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1846, align 8
  %965 = load %struct._object*, %struct._object** %_py_decref_tmp1839, align 8
  call void %964(%struct._object* %965)
  br label %if.end.1847

if.end.1847:                                      ; preds = %if.else.1844, %if.then.1843
  br label %do.end.1848

do.end.1848:                                      ; preds = %if.end.1847
  br label %do.body.1849

do.body.1849:                                     ; preds = %do.end.1848
  %966 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %966, %struct._object** %_py_decref_tmp1851, align 8
  %967 = load %struct._object*, %struct._object** %_py_decref_tmp1851, align 8
  %ob_refcnt1852 = getelementptr inbounds %struct._object, %struct._object* %967, i32 0, i32 0
  %968 = load i64, i64* %ob_refcnt1852, align 8
  %dec1853 = add i64 %968, -1
  store i64 %dec1853, i64* %ob_refcnt1852, align 8
  %cmp1854 = icmp ne i64 %dec1853, 0
  br i1 %cmp1854, label %if.then.1855, label %if.else.1856

if.then.1855:                                     ; preds = %do.body.1849
  br label %if.end.1859

if.else.1856:                                     ; preds = %do.body.1849
  %969 = load %struct._object*, %struct._object** %_py_decref_tmp1851, align 8
  %ob_type1857 = getelementptr inbounds %struct._object, %struct._object* %969, i32 0, i32 1
  %970 = load %struct._typeobject*, %struct._typeobject** %ob_type1857, align 8
  %tp_dealloc1858 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %970, i32 0, i32 4
  %971 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1858, align 8
  %972 = load %struct._object*, %struct._object** %_py_decref_tmp1851, align 8
  call void %971(%struct._object* %972)
  br label %if.end.1859

if.end.1859:                                      ; preds = %if.else.1856, %if.then.1855
  br label %do.end.1860

do.end.1860:                                      ; preds = %if.end.1859
  %973 = load i32, i32* %res, align 4
  %cmp1861 = icmp slt i32 %973, 0
  br i1 %cmp1861, label %if.then.1862, label %if.end.1863

if.then.1862:                                     ; preds = %do.end.1860
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1863:                                      ; preds = %do.end.1860
  %974 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1864 = call i8* @PyExpat_XML_ErrorString(i32 37)
  %call1865 = call i32 @PyModule_AddStringConstant(%struct._object* %974, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.52, i32 0, i32 0), i8* %call1864)
  %cmp1866 = icmp slt i32 %call1865, 0
  br i1 %cmp1866, label %if.then.1867, label %if.end.1868

if.then.1867:                                     ; preds = %if.end.1863
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1868:                                      ; preds = %if.end.1863
  %call1869 = call %struct._object* @PyLong_FromLong(i64 37)
  store %struct._object* %call1869, %struct._object** %tmpnum, align 8
  %975 = load %struct._object*, %struct._object** %tmpnum, align 8
  %cmp1870 = icmp eq %struct._object* %975, null
  br i1 %cmp1870, label %if.then.1871, label %if.end.1872

if.then.1871:                                     ; preds = %if.end.1868
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1872:                                      ; preds = %if.end.1868
  %976 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1873 = call i8* @PyExpat_XML_ErrorString(i32 37)
  %977 = load %struct._object*, %struct._object** %tmpnum, align 8
  %call1874 = call i32 @PyDict_SetItemString(%struct._object* %976, i8* %call1873, %struct._object* %977)
  store i32 %call1874, i32* %res, align 4
  %978 = load i32, i32* %res, align 4
  %cmp1875 = icmp slt i32 %978, 0
  br i1 %cmp1875, label %if.then.1876, label %if.end.1877

if.then.1876:                                     ; preds = %if.end.1872
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1877:                                      ; preds = %if.end.1872
  %call1878 = call i8* @PyExpat_XML_ErrorString(i32 37)
  %call1879 = call %struct._object* @PyUnicode_FromString(i8* %call1878)
  store %struct._object* %call1879, %struct._object** %tmpstr, align 8
  %979 = load %struct._object*, %struct._object** %tmpstr, align 8
  %cmp1880 = icmp eq %struct._object* %979, null
  br i1 %cmp1880, label %if.then.1881, label %if.end.1882

if.then.1881:                                     ; preds = %if.end.1877
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1882:                                      ; preds = %if.end.1877
  %980 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %981 = load %struct._object*, %struct._object** %tmpnum, align 8
  %982 = load %struct._object*, %struct._object** %tmpstr, align 8
  %call1883 = call i32 @PyDict_SetItem(%struct._object* %980, %struct._object* %981, %struct._object* %982)
  store i32 %call1883, i32* %res, align 4
  br label %do.body.1884

do.body.1884:                                     ; preds = %if.end.1882
  %983 = load %struct._object*, %struct._object** %tmpstr, align 8
  store %struct._object* %983, %struct._object** %_py_decref_tmp1886, align 8
  %984 = load %struct._object*, %struct._object** %_py_decref_tmp1886, align 8
  %ob_refcnt1887 = getelementptr inbounds %struct._object, %struct._object* %984, i32 0, i32 0
  %985 = load i64, i64* %ob_refcnt1887, align 8
  %dec1888 = add i64 %985, -1
  store i64 %dec1888, i64* %ob_refcnt1887, align 8
  %cmp1889 = icmp ne i64 %dec1888, 0
  br i1 %cmp1889, label %if.then.1890, label %if.else.1891

if.then.1890:                                     ; preds = %do.body.1884
  br label %if.end.1894

if.else.1891:                                     ; preds = %do.body.1884
  %986 = load %struct._object*, %struct._object** %_py_decref_tmp1886, align 8
  %ob_type1892 = getelementptr inbounds %struct._object, %struct._object* %986, i32 0, i32 1
  %987 = load %struct._typeobject*, %struct._typeobject** %ob_type1892, align 8
  %tp_dealloc1893 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %987, i32 0, i32 4
  %988 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1893, align 8
  %989 = load %struct._object*, %struct._object** %_py_decref_tmp1886, align 8
  call void %988(%struct._object* %989)
  br label %if.end.1894

if.end.1894:                                      ; preds = %if.else.1891, %if.then.1890
  br label %do.end.1895

do.end.1895:                                      ; preds = %if.end.1894
  br label %do.body.1896

do.body.1896:                                     ; preds = %do.end.1895
  %990 = load %struct._object*, %struct._object** %tmpnum, align 8
  store %struct._object* %990, %struct._object** %_py_decref_tmp1898, align 8
  %991 = load %struct._object*, %struct._object** %_py_decref_tmp1898, align 8
  %ob_refcnt1899 = getelementptr inbounds %struct._object, %struct._object* %991, i32 0, i32 0
  %992 = load i64, i64* %ob_refcnt1899, align 8
  %dec1900 = add i64 %992, -1
  store i64 %dec1900, i64* %ob_refcnt1899, align 8
  %cmp1901 = icmp ne i64 %dec1900, 0
  br i1 %cmp1901, label %if.then.1902, label %if.else.1903

if.then.1902:                                     ; preds = %do.body.1896
  br label %if.end.1906

if.else.1903:                                     ; preds = %do.body.1896
  %993 = load %struct._object*, %struct._object** %_py_decref_tmp1898, align 8
  %ob_type1904 = getelementptr inbounds %struct._object, %struct._object* %993, i32 0, i32 1
  %994 = load %struct._typeobject*, %struct._typeobject** %ob_type1904, align 8
  %tp_dealloc1905 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %994, i32 0, i32 4
  %995 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc1905, align 8
  %996 = load %struct._object*, %struct._object** %_py_decref_tmp1898, align 8
  call void %995(%struct._object* %996)
  br label %if.end.1906

if.end.1906:                                      ; preds = %if.else.1903, %if.then.1902
  br label %do.end.1907

do.end.1907:                                      ; preds = %if.end.1906
  %997 = load i32, i32* %res, align 4
  %cmp1908 = icmp slt i32 %997, 0
  br i1 %cmp1908, label %if.then.1909, label %if.end.1910

if.then.1909:                                     ; preds = %do.end.1907
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1910:                                      ; preds = %do.end.1907
  %998 = load %struct._object*, %struct._object** %errors_module, align 8
  %call1911 = call i32 @PyModule_AddStringConstant(%struct._object* %998, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.54, i32 0, i32 0))
  %cmp1912 = icmp slt i32 %call1911, 0
  br i1 %cmp1912, label %if.then.1913, label %if.end.1914

if.then.1913:                                     ; preds = %if.end.1910
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1914:                                      ; preds = %if.end.1910
  %999 = load %struct._object*, %struct._object** %errors_module, align 8
  %1000 = load %struct._object*, %struct._object** %codes_dict, align 8
  %call1915 = call i32 @PyModule_AddObject(%struct._object* %999, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), %struct._object* %1000)
  %cmp1916 = icmp slt i32 %call1915, 0
  br i1 %cmp1916, label %if.then.1917, label %if.end.1918

if.then.1917:                                     ; preds = %if.end.1914
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1918:                                      ; preds = %if.end.1914
  %1001 = load %struct._object*, %struct._object** %errors_module, align 8
  %1002 = load %struct._object*, %struct._object** %rev_codes_dict, align 8
  %call1919 = call i32 @PyModule_AddObject(%struct._object* %1001, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i32 0, i32 0), %struct._object* %1002)
  %cmp1920 = icmp slt i32 %call1919, 0
  br i1 %cmp1920, label %if.then.1921, label %if.end.1922

if.then.1921:                                     ; preds = %if.end.1918
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.1922:                                      ; preds = %if.end.1918
  %1003 = load %struct._object*, %struct._object** %m, align 8
  %call1923 = call i32 @PyModule_AddIntConstant(%struct._object* %1003, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.57, i32 0, i32 0), i64 0)
  %1004 = load %struct._object*, %struct._object** %m, align 8
  %call1924 = call i32 @PyModule_AddIntConstant(%struct._object* %1004, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.58, i32 0, i32 0), i64 1)
  %1005 = load %struct._object*, %struct._object** %m, align 8
  %call1925 = call i32 @PyModule_AddIntConstant(%struct._object* %1005, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.59, i32 0, i32 0), i64 2)
  %1006 = load %struct._object*, %struct._object** %model_module, align 8
  %call1926 = call i32 @PyModule_AddStringConstant(%struct._object* %1006, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.60, i32 0, i32 0))
  %1007 = load %struct._object*, %struct._object** %model_module, align 8
  %call1927 = call i32 @PyModule_AddIntConstant(%struct._object* %1007, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.61, i32 0, i32 0), i64 1)
  %1008 = load %struct._object*, %struct._object** %model_module, align 8
  %call1928 = call i32 @PyModule_AddIntConstant(%struct._object* %1008, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i64 2)
  %1009 = load %struct._object*, %struct._object** %model_module, align 8
  %call1929 = call i32 @PyModule_AddIntConstant(%struct._object* %1009, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.63, i32 0, i32 0), i64 3)
  %1010 = load %struct._object*, %struct._object** %model_module, align 8
  %call1930 = call i32 @PyModule_AddIntConstant(%struct._object* %1010, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.64, i32 0, i32 0), i64 4)
  %1011 = load %struct._object*, %struct._object** %model_module, align 8
  %call1931 = call i32 @PyModule_AddIntConstant(%struct._object* %1011, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.65, i32 0, i32 0), i64 5)
  %1012 = load %struct._object*, %struct._object** %model_module, align 8
  %call1932 = call i32 @PyModule_AddIntConstant(%struct._object* %1012, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.66, i32 0, i32 0), i64 6)
  %1013 = load %struct._object*, %struct._object** %model_module, align 8
  %call1933 = call i32 @PyModule_AddIntConstant(%struct._object* %1013, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.67, i32 0, i32 0), i64 0)
  %1014 = load %struct._object*, %struct._object** %model_module, align 8
  %call1934 = call i32 @PyModule_AddIntConstant(%struct._object* %1014, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.68, i32 0, i32 0), i64 1)
  %1015 = load %struct._object*, %struct._object** %model_module, align 8
  %call1935 = call i32 @PyModule_AddIntConstant(%struct._object* %1015, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), i64 2)
  %1016 = load %struct._object*, %struct._object** %model_module, align 8
  %call1936 = call i32 @PyModule_AddIntConstant(%struct._object* %1016, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.70, i32 0, i32 0), i64 3)
  store i32 168, i32* getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 1), align 4
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.71, i32 0, i32 0), i8** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 0), align 8
  store i32 2, i32* getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 2), align 4
  store i32 1, i32* getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 3), align 4
  store i32 0, i32* getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 4), align 4
  store i8* (i32)* @PyExpat_XML_ErrorString, i8* (i32)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 5), align 8
  store i32 (%struct.XML_ParserStruct*)* @PyExpat_XML_GetErrorCode, i32 (%struct.XML_ParserStruct*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 6), align 8
  store i64 (%struct.XML_ParserStruct*)* @PyExpat_XML_GetCurrentColumnNumber, i64 (%struct.XML_ParserStruct*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 7), align 8
  store i64 (%struct.XML_ParserStruct*)* @PyExpat_XML_GetCurrentLineNumber, i64 (%struct.XML_ParserStruct*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 8), align 8
  store i32 (%struct.XML_ParserStruct*, i8*, i32, i32)* @PyExpat_XML_Parse, i32 (%struct.XML_ParserStruct*, i8*, i32, i32)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 9), align 8
  store %struct.XML_ParserStruct* (i8*, %struct.XML_Memory_Handling_Suite*, i8*)* @PyExpat_XML_ParserCreate_MM, %struct.XML_ParserStruct* (i8*, %struct.XML_Memory_Handling_Suite*, i8*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 10), align 8
  store void (%struct.XML_ParserStruct*)* @PyExpat_XML_ParserFree, void (%struct.XML_ParserStruct*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 11), align 8
  store void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)* @PyExpat_XML_SetCharacterDataHandler, void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 12), align 8
  store void (%struct.XML_ParserStruct*, void (i8*, i8*)*)* @PyExpat_XML_SetCommentHandler, void (%struct.XML_ParserStruct*, void (i8*, i8*)*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 13), align 8
  store void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)* @PyExpat_XML_SetDefaultHandlerExpand, void (%struct.XML_ParserStruct*, void (i8*, i8*, i32)*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 14), align 8
  store void (%struct.XML_ParserStruct*, void (i8*, i8*, i8**)*, void (i8*, i8*)*)* @PyExpat_XML_SetElementHandler, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8**)*, void (i8*, i8*)*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 15), align 8
  store void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*, void (i8*, i8*)*)* @PyExpat_XML_SetNamespaceDeclHandler, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*, void (i8*, i8*)*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 16), align 8
  store void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*)* @PyExpat_XML_SetProcessingInstructionHandler, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 17), align 8
  store void (%struct.XML_ParserStruct*, i32 (i8*, i8*, %struct.XML_Encoding*)*, i8*)* @PyExpat_XML_SetUnknownEncodingHandler, void (%struct.XML_ParserStruct*, i32 (i8*, i8*, %struct.XML_Encoding*)*, i8*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 18), align 8
  store void (%struct.XML_ParserStruct*, i8*)* @PyExpat_XML_SetUserData, void (%struct.XML_ParserStruct*, i8*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 19), align 8
  store void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i32)*)* @PyExpat_XML_SetStartDoctypeDeclHandler, void (%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i32)*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 20), align 8
  store i32 (%struct.XML_ParserStruct*, i8*)* @PyExpat_XML_SetEncoding, i32 (%struct.XML_ParserStruct*, i8*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 21), align 8
  store i32 (i8*, i8*, %struct.XML_Encoding*)* @PyUnknownEncodingHandler, i32 (i8*, i8*, %struct.XML_Encoding*)** getelementptr inbounds (%struct.PyExpat_CAPI, %struct.PyExpat_CAPI* @PyInit_pyexpat.capi, i32 0, i32 22), align 8
  %call1937 = call %struct._object* @PyCapsule_New(i8* bitcast (%struct.PyExpat_CAPI* @PyInit_pyexpat.capi to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i32 0, i32 0), void (%struct._object*)* null)
  store %struct._object* %call1937, %struct._object** %capi_object, align 8
  %1017 = load %struct._object*, %struct._object** %capi_object, align 8
  %tobool = icmp ne %struct._object* %1017, null
  br i1 %tobool, label %if.then.1938, label %if.end.1940

if.then.1938:                                     ; preds = %if.end.1922
  %1018 = load %struct._object*, %struct._object** %m, align 8
  %1019 = load %struct._object*, %struct._object** %capi_object, align 8
  %call1939 = call i32 @PyModule_AddObject(%struct._object* %1018, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), %struct._object* %1019)
  br label %if.end.1940

if.end.1940:                                      ; preds = %if.then.1938, %if.end.1922
  %1020 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %1020, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.1940, %if.then.1921, %if.then.1917, %if.then.1913, %if.then.1909, %if.then.1881, %if.then.1876, %if.then.1871, %if.then.1867, %if.then.1862, %if.then.1834, %if.then.1829, %if.then.1824, %if.then.1820, %if.then.1815, %if.then.1787, %if.then.1782, %if.then.1777, %if.then.1773, %if.then.1768, %if.then.1740, %if.then.1735, %if.then.1730, %if.then.1726, %if.then.1721, %if.then.1693, %if.then.1688, %if.then.1683, %if.then.1679, %if.then.1674, %if.then.1646, %if.then.1641, %if.then.1636, %if.then.1632, %if.then.1627, %if.then.1599, %if.then.1594, %if.then.1589, %if.then.1585, %if.then.1580, %if.then.1552, %if.then.1547, %if.then.1542, %if.then.1538, %if.then.1533, %if.then.1505, %if.then.1500, %if.then.1495, %if.then.1491, %if.then.1486, %if.then.1458, %if.then.1453, %if.then.1448, %if.then.1444, %if.then.1439, %if.then.1411, %if.then.1406, %if.then.1401, %if.then.1397, %if.then.1392, %if.then.1364, %if.then.1359, %if.then.1354, %if.then.1350, %if.then.1345, %if.then.1317, %if.then.1312, %if.then.1307, %if.then.1303, %if.then.1298, %if.then.1270, %if.then.1265, %if.then.1260, %if.then.1256, %if.then.1251, %if.then.1223, %if.then.1218, %if.then.1213, %if.then.1209, %if.then.1204, %if.then.1176, %if.then.1171, %if.then.1166, %if.then.1162, %if.then.1157, %if.then.1129, %if.then.1124, %if.then.1119, %if.then.1115, %if.then.1110, %if.then.1082, %if.then.1077, %if.then.1072, %if.then.1068, %if.then.1063, %if.then.1035, %if.then.1030, %if.then.1025, %if.then.1021, %if.then.1016, %if.then.988, %if.then.983, %if.then.978, %if.then.974, %if.then.969, %if.then.941, %if.then.936, %if.then.931, %if.then.927, %if.then.922, %if.then.894, %if.then.889, %if.then.884, %if.then.880, %if.then.875, %if.then.847, %if.then.842, %if.then.837, %if.then.833, %if.then.828, %if.then.800, %if.then.795, %if.then.790, %if.then.786, %if.then.781, %if.then.753, %if.then.748, %if.then.743, %if.then.739, %if.then.734, %if.then.706, %if.then.701, %if.then.696, %if.then.692, %if.then.687, %if.then.659, %if.then.654, %if.then.649, %if.then.645, %if.then.640, %if.then.612, %if.then.607, %if.then.602, %if.then.598, %if.then.593, %if.then.565, %if.then.560, %if.then.555, %if.then.551, %if.then.546, %if.then.518, %if.then.513, %if.then.508, %if.then.504, %if.then.499, %if.then.471, %if.then.466, %if.then.461, %if.then.457, %if.then.452, %if.then.424, %if.then.419, %if.then.414, %if.then.410, %if.then.405, %if.then.377, %if.then.372, %if.then.367, %if.then.363, %if.then.358, %if.then.330, %if.then.325, %if.then.320, %if.then.316, %if.then.311, %if.then.283, %if.then.278, %if.then.273, %if.then.269, %if.then.264, %if.then.236, %if.then.231, %if.then.226, %if.then.222, %if.then.217, %if.then.189, %if.then.184, %if.then.179, %if.then.175, %do.end.170, %if.then.73, %if.then.17, %if.then.11, %if.then.7, %if.then.3, %if.then
  %1021 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %1021
}

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyErr_NewException(i8*, %struct._object*, %struct._object*) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddStringConstant(%struct._object*, i8*, i8*) #1

declare i8* @PyExpat_XML_ExpatVersion() #1

declare { i64, i32 } @PyExpat_XML_ExpatVersionInfo() #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare %struct._object* @PySys_GetObject(i8*) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyModule_New(i8*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct.XML_Feature* @PyExpat_XML_GetFeatureList() #1

declare %struct._object* @PyList_New(i64) #1

declare void @PyErr_Clear() #1

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare i8* @PyExpat_XML_ErrorString(i32) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare i32 @PyExpat_XML_GetErrorCode(%struct.XML_ParserStruct*) #1

declare i64 @PyExpat_XML_GetCurrentColumnNumber(%struct.XML_ParserStruct*) #1

declare i64 @PyExpat_XML_GetCurrentLineNumber(%struct.XML_ParserStruct*) #1

declare i32 @PyExpat_XML_Parse(%struct.XML_ParserStruct*, i8*, i32, i32) #1

declare %struct.XML_ParserStruct* @PyExpat_XML_ParserCreate_MM(i8*, %struct.XML_Memory_Handling_Suite*, i8*) #1

declare void @PyExpat_XML_ParserFree(%struct.XML_ParserStruct*) #1

declare void @PyExpat_XML_SetCharacterDataHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i32)*) #1

declare void @PyExpat_XML_SetCommentHandler(%struct.XML_ParserStruct*, void (i8*, i8*)*) #1

declare void @PyExpat_XML_SetDefaultHandlerExpand(%struct.XML_ParserStruct*, void (i8*, i8*, i32)*) #1

declare void @PyExpat_XML_SetElementHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8**)*, void (i8*, i8*)*) #1

declare void @PyExpat_XML_SetNamespaceDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*, void (i8*, i8*)*) #1

declare void @PyExpat_XML_SetProcessingInstructionHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*) #1

declare void @PyExpat_XML_SetUnknownEncodingHandler(%struct.XML_ParserStruct*, i32 (i8*, i8*, %struct.XML_Encoding*)*, i8*) #1

declare void @PyExpat_XML_SetUserData(%struct.XML_ParserStruct*, i8*) #1

declare void @PyExpat_XML_SetStartDoctypeDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i32)*) #1

declare i32 @PyExpat_XML_SetEncoding(%struct.XML_ParserStruct*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @PyUnknownEncodingHandler(i8* %encodingHandlerData, i8* %name, %struct.XML_Encoding* %info) #0 {
entry:
  %retval = alloca i32, align 4
  %encodingHandlerData.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %info.addr = alloca %struct.XML_Encoding*, align 8
  %u = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %data = alloca i8*, align 8
  %kind = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp29 = alloca %struct._object*, align 8
  %ch = alloca i32, align 4
  %_py_decref_tmp104 = alloca %struct._object*, align 8
  store i8* %encodingHandlerData, i8** %encodingHandlerData.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.XML_Encoding* %info, %struct.XML_Encoding** %info.addr, align 8
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PyUnknownEncodingHandler.template_buffer, i32 0, i64 1), align 1
  %conv = zext i8 %0 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.end.6

if.then.2:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.2
  %1 = load i32, i32* %i, align 4
  %cmp3 = icmp slt i32 %1, 256
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4
  %conv5 = trunc i32 %2 to i8
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @PyUnknownEncodingHandler.template_buffer, i32 0, i64 %idxprom
  store i8 %conv5, i8* %arrayidx, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4
  %inc = add i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.6

if.end.6:                                         ; preds = %for.end, %if.end
  %5 = load i8*, i8** %name.addr, align 8
  %call7 = call %struct._object* @PyUnicode_Decode(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @PyUnknownEncodingHandler.template_buffer, i32 0, i32 0), i64 256, i8* %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.189, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %u, align 8
  %6 = load %struct._object*, %struct._object** %u, align 8
  %cmp8 = icmp eq %struct._object* %6, null
  br i1 %cmp8, label %if.then.13, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.6
  %7 = load %struct._object*, %struct._object** %u, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 3
  %9 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %9, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool10 = icmp ne i32 %bf.clear, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %10 = load %struct._object*, %struct._object** %u, align 8
  %call11 = call i32 @_PyUnicode_Ready(%struct._object* %10)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call11, %cond.false ]
  %tobool12 = icmp ne i32 %cond, 0
  br i1 %tobool12, label %if.then.13, label %if.end.24

if.then.13:                                       ; preds = %cond.end, %if.end.6
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %11 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp14 = icmp ne %struct._object* %12, null
  br i1 %cmp14, label %if.then.16, label %if.end.22

if.then.16:                                       ; preds = %do.body
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body.17
  br label %if.end.21

if.else:                                          ; preds = %do.body.17
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
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %do.body
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store i32 0, i32* %retval
  br label %return

if.end.24:                                        ; preds = %cond.end
  %20 = load %struct._object*, %struct._object** %u, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 1
  %22 = load i64, i64* %length, align 8
  %cmp25 = icmp ne i64 %22, 256
  br i1 %cmp25, label %if.then.27, label %if.end.40

if.then.27:                                       ; preds = %if.end.24
  br label %do.body.28

do.body.28:                                       ; preds = %if.then.27
  %23 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp29, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_refcnt30 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt30, align 8
  %dec31 = add i64 %25, -1
  store i64 %dec31, i64* %ob_refcnt30, align 8
  %cmp32 = icmp ne i64 %dec31, 0
  br i1 %cmp32, label %if.then.34, label %if.else.35

if.then.34:                                       ; preds = %do.body.28
  br label %if.end.38

if.else.35:                                       ; preds = %do.body.28
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  %ob_type36 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type36, align 8
  %tp_dealloc37 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc37, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp29, align 8
  call void %28(%struct._object* %29)
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.35, %if.then.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %30 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.190, i32 0, i32 0))
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %if.end.24
  %31 = load %struct._object*, %struct._object** %u, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyASCIIObject*
  %state41 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i32 0, i32 3
  %33 = bitcast %struct.anon* %state41 to i32*
  %bf.load42 = load i32, i32* %33, align 4
  %bf.lshr43 = lshr i32 %bf.load42, 2
  %bf.clear44 = and i32 %bf.lshr43, 7
  store i32 %bf.clear44, i32* %kind, align 4
  %34 = load %struct._object*, %struct._object** %u, align 8
  %35 = bitcast %struct._object* %34 to %struct.PyASCIIObject*
  %state45 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %35, i32 0, i32 3
  %36 = bitcast %struct.anon* %state45 to i32*
  %bf.load46 = load i32, i32* %36, align 4
  %bf.lshr47 = lshr i32 %bf.load46, 5
  %bf.clear48 = and i32 %bf.lshr47, 1
  %tobool49 = icmp ne i32 %bf.clear48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.61

cond.true.50:                                     ; preds = %if.end.40
  %37 = load %struct._object*, %struct._object** %u, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*
  %state51 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3
  %39 = bitcast %struct.anon* %state51 to i32*
  %bf.load52 = load i32, i32* %39, align 4
  %bf.lshr53 = lshr i32 %bf.load52, 6
  %bf.clear54 = and i32 %bf.lshr53, 1
  %tobool55 = icmp ne i32 %bf.clear54, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.57

cond.true.56:                                     ; preds = %cond.true.50
  %40 = load %struct._object*, %struct._object** %u, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %41, i64 1
  %42 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.59

cond.false.57:                                    ; preds = %cond.true.50
  %43 = load %struct._object*, %struct._object** %u, align 8
  %44 = bitcast %struct._object* %43 to %struct.PyCompactUnicodeObject*
  %add.ptr58 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %44, i64 1
  %45 = bitcast %struct.PyCompactUnicodeObject* %add.ptr58 to i8*
  br label %cond.end.59

cond.end.59:                                      ; preds = %cond.false.57, %cond.true.56
  %cond60 = phi i8* [ %42, %cond.true.56 ], [ %45, %cond.false.57 ]
  br label %cond.end.63

cond.false.61:                                    ; preds = %if.end.40
  %46 = load %struct._object*, %struct._object** %u, align 8
  %47 = bitcast %struct._object* %46 to %struct.PyUnicodeObject*
  %data62 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %47, i32 0, i32 1
  %any = bitcast %union.anon* %data62 to i8**
  %48 = load i8*, i8** %any, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.end.59
  %cond64 = phi i8* [ %cond60, %cond.end.59 ], [ %48, %cond.false.61 ]
  store i8* %cond64, i8** %data, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.65

for.cond.65:                                      ; preds = %for.inc.99, %cond.end.63
  %49 = load i32, i32* %i, align 4
  %cmp66 = icmp slt i32 %49, 256
  br i1 %cmp66, label %for.body.68, label %for.end.101

for.body.68:                                      ; preds = %for.cond.65
  %50 = load i32, i32* %kind, align 4
  %cmp69 = icmp eq i32 %50, 1
  br i1 %cmp69, label %cond.true.71, label %cond.false.75

cond.true.71:                                     ; preds = %for.body.68
  %51 = load i32, i32* %i, align 4
  %idxprom72 = sext i32 %51 to i64
  %52 = load i8*, i8** %data, align 8
  %arrayidx73 = getelementptr i8, i8* %52, i64 %idxprom72
  %53 = load i8, i8* %arrayidx73, align 1
  %conv74 = zext i8 %53 to i32
  br label %cond.end.87

cond.false.75:                                    ; preds = %for.body.68
  %54 = load i32, i32* %kind, align 4
  %cmp76 = icmp eq i32 %54, 2
  br i1 %cmp76, label %cond.true.78, label %cond.false.82

cond.true.78:                                     ; preds = %cond.false.75
  %55 = load i32, i32* %i, align 4
  %idxprom79 = sext i32 %55 to i64
  %56 = load i8*, i8** %data, align 8
  %57 = bitcast i8* %56 to i16*
  %arrayidx80 = getelementptr i16, i16* %57, i64 %idxprom79
  %58 = load i16, i16* %arrayidx80, align 2
  %conv81 = zext i16 %58 to i32
  br label %cond.end.85

cond.false.82:                                    ; preds = %cond.false.75
  %59 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %59 to i64
  %60 = load i8*, i8** %data, align 8
  %61 = bitcast i8* %60 to i32*
  %arrayidx84 = getelementptr i32, i32* %61, i64 %idxprom83
  %62 = load i32, i32* %arrayidx84, align 4
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.82, %cond.true.78
  %cond86 = phi i32 [ %conv81, %cond.true.78 ], [ %62, %cond.false.82 ]
  br label %cond.end.87

cond.end.87:                                      ; preds = %cond.end.85, %cond.true.71
  %cond88 = phi i32 [ %conv74, %cond.true.71 ], [ %cond86, %cond.end.85 ]
  store i32 %cond88, i32* %ch, align 4
  %63 = load i32, i32* %ch, align 4
  %cmp89 = icmp ne i32 %63, 65533
  br i1 %cmp89, label %if.then.91, label %if.else.94

if.then.91:                                       ; preds = %cond.end.87
  %64 = load i32, i32* %ch, align 4
  %65 = load i32, i32* %i, align 4
  %idxprom92 = sext i32 %65 to i64
  %66 = load %struct.XML_Encoding*, %struct.XML_Encoding** %info.addr, align 8
  %map = getelementptr inbounds %struct.XML_Encoding, %struct.XML_Encoding* %66, i32 0, i32 0
  %arrayidx93 = getelementptr [256 x i32], [256 x i32]* %map, i32 0, i64 %idxprom92
  store i32 %64, i32* %arrayidx93, align 4
  br label %if.end.98

if.else.94:                                       ; preds = %cond.end.87
  %67 = load i32, i32* %i, align 4
  %idxprom95 = sext i32 %67 to i64
  %68 = load %struct.XML_Encoding*, %struct.XML_Encoding** %info.addr, align 8
  %map96 = getelementptr inbounds %struct.XML_Encoding, %struct.XML_Encoding* %68, i32 0, i32 0
  %arrayidx97 = getelementptr [256 x i32], [256 x i32]* %map96, i32 0, i64 %idxprom95
  store i32 -1, i32* %arrayidx97, align 4
  br label %if.end.98

if.end.98:                                        ; preds = %if.else.94, %if.then.91
  br label %for.inc.99

for.inc.99:                                       ; preds = %if.end.98
  %69 = load i32, i32* %i, align 4
  %inc100 = add i32 %69, 1
  store i32 %inc100, i32* %i, align 4
  br label %for.cond.65

for.end.101:                                      ; preds = %for.cond.65
  %70 = load %struct.XML_Encoding*, %struct.XML_Encoding** %info.addr, align 8
  %data102 = getelementptr inbounds %struct.XML_Encoding, %struct.XML_Encoding* %70, i32 0, i32 1
  store i8* null, i8** %data102, align 8
  %71 = load %struct.XML_Encoding*, %struct.XML_Encoding** %info.addr, align 8
  %convert = getelementptr inbounds %struct.XML_Encoding, %struct.XML_Encoding* %71, i32 0, i32 2
  store i32 (i8*, i8*)* null, i32 (i8*, i8*)** %convert, align 8
  %72 = load %struct.XML_Encoding*, %struct.XML_Encoding** %info.addr, align 8
  %release = getelementptr inbounds %struct.XML_Encoding, %struct.XML_Encoding* %72, i32 0, i32 3
  store void (i8*)* null, void (i8*)** %release, align 8
  br label %do.body.103

do.body.103:                                      ; preds = %for.end.101
  %73 = load %struct._object*, %struct._object** %u, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp104, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_refcnt105 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt105, align 8
  %dec106 = add i64 %75, -1
  store i64 %dec106, i64* %ob_refcnt105, align 8
  %cmp107 = icmp ne i64 %dec106, 0
  br i1 %cmp107, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.103
  br label %if.end.113

if.else.110:                                      ; preds = %do.body.103
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc112, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp104, align 8
  call void %78(%struct._object* %79)
  br label %if.end.113

if.end.113:                                       ; preds = %if.else.110, %if.then.109
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.114, %do.end.39, %do.end.23, %if.then
  %80 = load i32, i32* %retval
  ret i32 %80
}

declare %struct._object* @PyCapsule_New(i8*, i8*, void (%struct._object*)*) #1

; Function Attrs: nounwind uwtable
define internal void @xmlparse_dealloc(%struct.xmlparseobject* %self) #0 {
entry:
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %i = alloca i32, align 4
  %temp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %1 = bitcast %struct.xmlparseobject* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %2, i32 0, i32 1
  %3 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %cmp = icmp ne %struct.XML_ParserStruct* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself1 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %4, i32 0, i32 1
  %5 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself1, align 8
  call void @PyExpat_XML_ParserFree(%struct.XML_ParserStruct* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself2 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 1
  store %struct.XML_ParserStruct* null, %struct.XML_ParserStruct** %itself2, align 8
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 10
  %8 = load %struct._object**, %struct._object*** %handlers, align 8
  %cmp3 = icmp ne %struct._object** %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.22

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.4
  %9 = load i32, i32* %i, align 4
  %idxprom = sext i32 %9 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 0
  %10 = load i8*, i8** %name, align 8
  %cmp5 = icmp ne i8* %10, null
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers7 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %12, i32 0, i32 10
  %13 = load %struct._object**, %struct._object*** %handlers7, align 8
  %arrayidx8 = getelementptr %struct._object*, %struct._object** %13, i64 %idxprom6
  %14 = load %struct._object*, %struct._object** %arrayidx8, align 8
  store %struct._object* %14, %struct._object** %temp, align 8
  %15 = load i32, i32* %i, align 4
  %idxprom9 = sext i32 %15 to i64
  %16 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers10 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %16, i32 0, i32 10
  %17 = load %struct._object**, %struct._object*** %handlers10, align 8
  %arrayidx11 = getelementptr %struct._object*, %struct._object** %17, i64 %idxprom9
  store %struct._object* null, %struct._object** %arrayidx11, align 8
  br label %do.body

do.body:                                          ; preds = %for.body
  %18 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %19, null
  br i1 %cmp12, label %if.then.13, label %if.end.18

if.then.13:                                       ; preds = %do.body
  br label %do.body.14

do.body.14:                                       ; preds = %if.then.13
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body.14
  br label %if.end.17

if.else:                                          ; preds = %do.body.14
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  br label %if.end.18

if.end.18:                                        ; preds = %do.end, %do.body
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %for.inc

for.inc:                                          ; preds = %do.end.19
  %27 = load i32, i32* %i, align 4
  %inc = add i32 %27, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %28 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers20 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %28, i32 0, i32 10
  %29 = load %struct._object**, %struct._object*** %handlers20, align 8
  %30 = bitcast %struct._object** %29 to i8*
  call void @PyMem_Free(i8* %30)
  %31 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers21 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %31, i32 0, i32 10
  store %struct._object** null, %struct._object*** %handlers21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %for.end, %if.end
  %32 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %32, i32 0, i32 6
  %33 = load i8*, i8** %buffer, align 8
  %cmp23 = icmp ne i8* %33, null
  br i1 %cmp23, label %if.then.24, label %if.end.27

if.then.24:                                       ; preds = %if.end.22
  %34 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer25 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %34, i32 0, i32 6
  %35 = load i8*, i8** %buffer25, align 8
  call void @PyMem_Free(i8* %35)
  %36 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer26 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %36, i32 0, i32 6
  store i8* null, i8** %buffer26, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.24, %if.end.22
  br label %do.body.28

do.body.28:                                       ; preds = %if.end.27
  %37 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %37, i32 0, i32 9
  %38 = load %struct._object*, %struct._object** %intern, align 8
  store %struct._object* %38, %struct._object** %_py_xdecref_tmp29, align 8
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8
  %cmp30 = icmp ne %struct._object* %39, null
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %do.body.28
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %40 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8
  store %struct._object* %40, %struct._object** %_py_decref_tmp33, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %42, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 1
  %44 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %44, i32 0, i32 4
  %45 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %45(%struct._object* %46)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.28
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %47 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %48 = bitcast %struct.xmlparseobject* %47 to i8*
  call void @PyObject_GC_Del(i8* %48)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_getattro(%struct.xmlparseobject* %self, %struct._object* %nameobj) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %nameobj.addr = alloca %struct._object*, align 8
  %first_char = alloca i32, align 4
  %handlernum = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %nameobj, %struct._object** %nameobj.addr, align 8
  store i32 -1, i32* %handlernum, align 4
  %0 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 19
  %2 = load i64, i64* %tp_flags, align 8
  %and = and i64 %2, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %generic

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %4, i32 0, i32 3
  %5 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %5, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call = call i32 @_PyUnicode_Ready(%struct._object* %6)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %tobool1 = icmp ne i32 %cond, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %cond.end
  %7 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call4 = call i32 @handlername2int(%struct._object* %7)
  store i32 %call4, i32* %handlernum, align 4
  %8 = load i32, i32* %handlernum, align 4
  %cmp5 = icmp ne i32 %8, -1
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  %9 = load i32, i32* %handlernum, align 4
  %idxprom = sext i32 %9 to i64
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 10
  %11 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 %idxprom
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %12, %struct._object** %result, align 8
  %13 = load %struct._object*, %struct._object** %result, align 8
  %cmp7 = icmp eq %struct._object* %13, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.6
  store %struct._object* @_Py_NoneStruct, %struct._object** %result, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  %14 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %15, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %16 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %16, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %17 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyASCIIObject*
  %state11 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %18, i32 0, i32 3
  %19 = bitcast %struct.anon* %state11 to i32*
  %bf.load12 = load i32, i32* %19, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 2
  %bf.clear14 = and i32 %bf.lshr13, 7
  %cmp15 = icmp eq i32 %bf.clear14, 1
  br i1 %cmp15, label %cond.true.16, label %cond.false.37

cond.true.16:                                     ; preds = %if.end.10
  %20 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyASCIIObject*
  %state17 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %21, i32 0, i32 3
  %22 = bitcast %struct.anon* %state17 to i32*
  %bf.load18 = load i32, i32* %22, align 4
  %bf.lshr19 = lshr i32 %bf.load18, 5
  %bf.clear20 = and i32 %bf.lshr19, 1
  %tobool21 = icmp ne i32 %bf.clear20, 0
  br i1 %tobool21, label %cond.true.22, label %cond.false.33

cond.true.22:                                     ; preds = %cond.true.16
  %23 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %24 = bitcast %struct._object* %23 to %struct.PyASCIIObject*
  %state23 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %24, i32 0, i32 3
  %25 = bitcast %struct.anon* %state23 to i32*
  %bf.load24 = load i32, i32* %25, align 4
  %bf.lshr25 = lshr i32 %bf.load24, 6
  %bf.clear26 = and i32 %bf.lshr25, 1
  %tobool27 = icmp ne i32 %bf.clear26, 0
  br i1 %tobool27, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %cond.true.22
  %26 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %27 = bitcast %struct._object* %26 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %27, i64 1
  %28 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.31

cond.false.29:                                    ; preds = %cond.true.22
  %29 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyCompactUnicodeObject*
  %add.ptr30 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %30, i64 1
  %31 = bitcast %struct.PyCompactUnicodeObject* %add.ptr30 to i8*
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.29, %cond.true.28
  %cond32 = phi i8* [ %28, %cond.true.28 ], [ %31, %cond.false.29 ]
  br label %cond.end.34

cond.false.33:                                    ; preds = %cond.true.16
  %32 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %33 = bitcast %struct._object* %32 to %struct.PyUnicodeObject*
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %33, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %34 = load i8*, i8** %any, align 8
  br label %cond.end.34

cond.end.34:                                      ; preds = %cond.false.33, %cond.end.31
  %cond35 = phi i8* [ %cond32, %cond.end.31 ], [ %34, %cond.false.33 ]
  %arrayidx36 = getelementptr i8, i8* %cond35, i64 0
  %35 = load i8, i8* %arrayidx36, align 1
  %conv = zext i8 %35 to i32
  br label %cond.end.95

cond.false.37:                                    ; preds = %if.end.10
  %36 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %37 = bitcast %struct._object* %36 to %struct.PyASCIIObject*
  %state38 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %37, i32 0, i32 3
  %38 = bitcast %struct.anon* %state38 to i32*
  %bf.load39 = load i32, i32* %38, align 4
  %bf.lshr40 = lshr i32 %bf.load39, 2
  %bf.clear41 = and i32 %bf.lshr40, 7
  %cmp42 = icmp eq i32 %bf.clear41, 2
  br i1 %cmp42, label %cond.true.44, label %cond.false.69

cond.true.44:                                     ; preds = %cond.false.37
  %39 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %40 = bitcast %struct._object* %39 to %struct.PyASCIIObject*
  %state45 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %40, i32 0, i32 3
  %41 = bitcast %struct.anon* %state45 to i32*
  %bf.load46 = load i32, i32* %41, align 4
  %bf.lshr47 = lshr i32 %bf.load46, 5
  %bf.clear48 = and i32 %bf.lshr47, 1
  %tobool49 = icmp ne i32 %bf.clear48, 0
  br i1 %tobool49, label %cond.true.50, label %cond.false.62

cond.true.50:                                     ; preds = %cond.true.44
  %42 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %43 = bitcast %struct._object* %42 to %struct.PyASCIIObject*
  %state51 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %43, i32 0, i32 3
  %44 = bitcast %struct.anon* %state51 to i32*
  %bf.load52 = load i32, i32* %44, align 4
  %bf.lshr53 = lshr i32 %bf.load52, 6
  %bf.clear54 = and i32 %bf.lshr53, 1
  %tobool55 = icmp ne i32 %bf.clear54, 0
  br i1 %tobool55, label %cond.true.56, label %cond.false.58

cond.true.56:                                     ; preds = %cond.true.50
  %45 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %46 = bitcast %struct._object* %45 to %struct.PyASCIIObject*
  %add.ptr57 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %46, i64 1
  %47 = bitcast %struct.PyASCIIObject* %add.ptr57 to i8*
  br label %cond.end.60

cond.false.58:                                    ; preds = %cond.true.50
  %48 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyCompactUnicodeObject*
  %add.ptr59 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %49, i64 1
  %50 = bitcast %struct.PyCompactUnicodeObject* %add.ptr59 to i8*
  br label %cond.end.60

cond.end.60:                                      ; preds = %cond.false.58, %cond.true.56
  %cond61 = phi i8* [ %47, %cond.true.56 ], [ %50, %cond.false.58 ]
  br label %cond.end.65

cond.false.62:                                    ; preds = %cond.true.44
  %51 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %52 = bitcast %struct._object* %51 to %struct.PyUnicodeObject*
  %data63 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %52, i32 0, i32 1
  %any64 = bitcast %union.anon* %data63 to i8**
  %53 = load i8*, i8** %any64, align 8
  br label %cond.end.65

cond.end.65:                                      ; preds = %cond.false.62, %cond.end.60
  %cond66 = phi i8* [ %cond61, %cond.end.60 ], [ %53, %cond.false.62 ]
  %54 = bitcast i8* %cond66 to i16*
  %arrayidx67 = getelementptr i16, i16* %54, i64 0
  %55 = load i16, i16* %arrayidx67, align 2
  %conv68 = zext i16 %55 to i32
  br label %cond.end.93

cond.false.69:                                    ; preds = %cond.false.37
  %56 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyASCIIObject*
  %state70 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %57, i32 0, i32 3
  %58 = bitcast %struct.anon* %state70 to i32*
  %bf.load71 = load i32, i32* %58, align 4
  %bf.lshr72 = lshr i32 %bf.load71, 5
  %bf.clear73 = and i32 %bf.lshr72, 1
  %tobool74 = icmp ne i32 %bf.clear73, 0
  br i1 %tobool74, label %cond.true.75, label %cond.false.87

cond.true.75:                                     ; preds = %cond.false.69
  %59 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %60 = bitcast %struct._object* %59 to %struct.PyASCIIObject*
  %state76 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %60, i32 0, i32 3
  %61 = bitcast %struct.anon* %state76 to i32*
  %bf.load77 = load i32, i32* %61, align 4
  %bf.lshr78 = lshr i32 %bf.load77, 6
  %bf.clear79 = and i32 %bf.lshr78, 1
  %tobool80 = icmp ne i32 %bf.clear79, 0
  br i1 %tobool80, label %cond.true.81, label %cond.false.83

cond.true.81:                                     ; preds = %cond.true.75
  %62 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %63 = bitcast %struct._object* %62 to %struct.PyASCIIObject*
  %add.ptr82 = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %63, i64 1
  %64 = bitcast %struct.PyASCIIObject* %add.ptr82 to i8*
  br label %cond.end.85

cond.false.83:                                    ; preds = %cond.true.75
  %65 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %66 = bitcast %struct._object* %65 to %struct.PyCompactUnicodeObject*
  %add.ptr84 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %66, i64 1
  %67 = bitcast %struct.PyCompactUnicodeObject* %add.ptr84 to i8*
  br label %cond.end.85

cond.end.85:                                      ; preds = %cond.false.83, %cond.true.81
  %cond86 = phi i8* [ %64, %cond.true.81 ], [ %67, %cond.false.83 ]
  br label %cond.end.90

cond.false.87:                                    ; preds = %cond.false.69
  %68 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %69 = bitcast %struct._object* %68 to %struct.PyUnicodeObject*
  %data88 = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %69, i32 0, i32 1
  %any89 = bitcast %union.anon* %data88 to i8**
  %70 = load i8*, i8** %any89, align 8
  br label %cond.end.90

cond.end.90:                                      ; preds = %cond.false.87, %cond.end.85
  %cond91 = phi i8* [ %cond86, %cond.end.85 ], [ %70, %cond.false.87 ]
  %71 = bitcast i8* %cond91 to i32*
  %arrayidx92 = getelementptr i32, i32* %71, i64 0
  %72 = load i32, i32* %arrayidx92, align 4
  br label %cond.end.93

cond.end.93:                                      ; preds = %cond.end.90, %cond.end.65
  %cond94 = phi i32 [ %conv68, %cond.end.65 ], [ %72, %cond.end.90 ]
  br label %cond.end.95

cond.end.95:                                      ; preds = %cond.end.93, %cond.end.34
  %cond96 = phi i32 [ %conv, %cond.end.34 ], [ %cond94, %cond.end.93 ]
  store i32 %cond96, i32* %first_char, align 4
  %73 = load i32, i32* %first_char, align 4
  %cmp97 = icmp eq i32 %73, 69
  br i1 %cmp97, label %if.then.99, label %if.end.132

if.then.99:                                       ; preds = %cond.end.95
  %74 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call100 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0))
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.107

if.then.103:                                      ; preds = %if.then.99
  %75 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %75, i32 0, i32 1
  %76 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call104 = call i32 @PyExpat_XML_GetErrorCode(%struct.XML_ParserStruct* %76)
  %conv105 = zext i32 %call104 to i64
  %call106 = call %struct._object* @PyLong_FromLong(i64 %conv105)
  store %struct._object* %call106, %struct._object** %retval
  br label %return

if.end.107:                                       ; preds = %if.then.99
  %77 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call108 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %77, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0))
  %cmp109 = icmp eq i32 %call108, 0
  br i1 %cmp109, label %if.then.111, label %if.end.115

if.then.111:                                      ; preds = %if.end.107
  %78 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself112 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %78, i32 0, i32 1
  %79 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself112, align 8
  %call113 = call i64 @PyExpat_XML_GetCurrentLineNumber(%struct.XML_ParserStruct* %79)
  %call114 = call %struct._object* @PyLong_FromLong(i64 %call113)
  store %struct._object* %call114, %struct._object** %retval
  br label %return

if.end.115:                                       ; preds = %if.end.107
  %80 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call116 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %80, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0))
  %cmp117 = icmp eq i32 %call116, 0
  br i1 %cmp117, label %if.then.119, label %if.end.123

if.then.119:                                      ; preds = %if.end.115
  %81 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself120 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %81, i32 0, i32 1
  %82 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself120, align 8
  %call121 = call i64 @PyExpat_XML_GetCurrentColumnNumber(%struct.XML_ParserStruct* %82)
  %call122 = call %struct._object* @PyLong_FromLong(i64 %call121)
  store %struct._object* %call122, %struct._object** %retval
  br label %return

if.end.123:                                       ; preds = %if.end.115
  %83 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call124 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %83, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.138, i32 0, i32 0))
  %cmp125 = icmp eq i32 %call124, 0
  br i1 %cmp125, label %if.then.127, label %if.end.131

if.then.127:                                      ; preds = %if.end.123
  %84 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself128 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %84, i32 0, i32 1
  %85 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself128, align 8
  %call129 = call i64 @PyExpat_XML_GetCurrentByteIndex(%struct.XML_ParserStruct* %85)
  %call130 = call %struct._object* @PyLong_FromLong(i64 %call129)
  store %struct._object* %call130, %struct._object** %retval
  br label %return

if.end.131:                                       ; preds = %if.end.123
  br label %if.end.132

if.end.132:                                       ; preds = %if.end.131, %cond.end.95
  %86 = load i32, i32* %first_char, align 4
  %cmp133 = icmp eq i32 %86, 67
  br i1 %cmp133, label %if.then.135, label %if.end.160

if.then.135:                                      ; preds = %if.end.132
  %87 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call136 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %87, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0))
  %cmp137 = icmp eq i32 %call136, 0
  br i1 %cmp137, label %if.then.139, label %if.end.143

if.then.139:                                      ; preds = %if.then.135
  %88 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself140 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %88, i32 0, i32 1
  %89 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself140, align 8
  %call141 = call i64 @PyExpat_XML_GetCurrentLineNumber(%struct.XML_ParserStruct* %89)
  %call142 = call %struct._object* @PyLong_FromLong(i64 %call141)
  store %struct._object* %call142, %struct._object** %retval
  br label %return

if.end.143:                                       ; preds = %if.then.135
  %90 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call144 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i32 0, i32 0))
  %cmp145 = icmp eq i32 %call144, 0
  br i1 %cmp145, label %if.then.147, label %if.end.151

if.then.147:                                      ; preds = %if.end.143
  %91 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself148 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %91, i32 0, i32 1
  %92 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself148, align 8
  %call149 = call i64 @PyExpat_XML_GetCurrentColumnNumber(%struct.XML_ParserStruct* %92)
  %call150 = call %struct._object* @PyLong_FromLong(i64 %call149)
  store %struct._object* %call150, %struct._object** %retval
  br label %return

if.end.151:                                       ; preds = %if.end.143
  %93 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call152 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0))
  %cmp153 = icmp eq i32 %call152, 0
  br i1 %cmp153, label %if.then.155, label %if.end.159

if.then.155:                                      ; preds = %if.end.151
  %94 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself156 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %94, i32 0, i32 1
  %95 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself156, align 8
  %call157 = call i64 @PyExpat_XML_GetCurrentByteIndex(%struct.XML_ParserStruct* %95)
  %call158 = call %struct._object* @PyLong_FromLong(i64 %call157)
  store %struct._object* %call158, %struct._object** %retval
  br label %return

if.end.159:                                       ; preds = %if.end.151
  br label %if.end.160

if.end.160:                                       ; preds = %if.end.159, %if.end.132
  %96 = load i32, i32* %first_char, align 4
  %cmp161 = icmp eq i32 %96, 98
  br i1 %cmp161, label %if.then.163, label %if.end.186

if.then.163:                                      ; preds = %if.end.160
  %97 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call164 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0))
  %cmp165 = icmp eq i32 %call164, 0
  br i1 %cmp165, label %if.then.167, label %if.end.170

if.then.167:                                      ; preds = %if.then.163
  %98 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %98, i32 0, i32 7
  %99 = load i32, i32* %buffer_size, align 4
  %conv168 = sext i32 %99 to i64
  %call169 = call %struct._object* @PyLong_FromLong(i64 %conv168)
  store %struct._object* %call169, %struct._object** %retval
  br label %return

if.end.170:                                       ; preds = %if.then.163
  %100 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call171 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0))
  %cmp172 = icmp eq i32 %call171, 0
  br i1 %cmp172, label %if.then.174, label %if.end.178

if.then.174:                                      ; preds = %if.end.170
  %101 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %101, i32 0, i32 6
  %102 = load i8*, i8** %buffer, align 8
  %cmp175 = icmp ne i8* %102, null
  %conv176 = zext i1 %cmp175 to i32
  %call177 = call %struct._object* @get_pybool(i32 %conv176)
  store %struct._object* %call177, %struct._object** %retval
  br label %return

if.end.178:                                       ; preds = %if.end.170
  %103 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call179 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %103, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0))
  %cmp180 = icmp eq i32 %call179, 0
  br i1 %cmp180, label %if.then.182, label %if.end.185

if.then.182:                                      ; preds = %if.end.178
  %104 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_used = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %104, i32 0, i32 8
  %105 = load i32, i32* %buffer_used, align 4
  %conv183 = sext i32 %105 to i64
  %call184 = call %struct._object* @PyLong_FromLong(i64 %conv183)
  store %struct._object* %call184, %struct._object** %retval
  br label %return

if.end.185:                                       ; preds = %if.end.178
  br label %if.end.186

if.end.186:                                       ; preds = %if.end.185, %if.end.160
  %106 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call187 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0))
  %cmp188 = icmp eq i32 %call187, 0
  br i1 %cmp188, label %if.then.190, label %if.end.192

if.then.190:                                      ; preds = %if.end.186
  %107 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %ns_prefixes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %107, i32 0, i32 5
  %108 = load i32, i32* %ns_prefixes, align 4
  %call191 = call %struct._object* @get_pybool(i32 %108)
  store %struct._object* %call191, %struct._object** %retval
  br label %return

if.end.192:                                       ; preds = %if.end.186
  %109 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call193 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %109, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0))
  %cmp194 = icmp eq i32 %call193, 0
  br i1 %cmp194, label %if.then.196, label %if.end.198

if.then.196:                                      ; preds = %if.end.192
  %110 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %ordered_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %110, i32 0, i32 2
  %111 = load i32, i32* %ordered_attributes, align 4
  %call197 = call %struct._object* @get_pybool(i32 %111)
  store %struct._object* %call197, %struct._object** %retval
  br label %return

if.end.198:                                       ; preds = %if.end.192
  %112 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call199 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.147, i32 0, i32 0))
  %cmp200 = icmp eq i32 %call199, 0
  br i1 %cmp200, label %if.then.202, label %if.end.206

if.then.202:                                      ; preds = %if.end.198
  %113 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %specified_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %113, i32 0, i32 3
  %114 = load i32, i32* %specified_attributes, align 4
  %conv203 = sext i32 %114 to i64
  %conv204 = trunc i64 %conv203 to i32
  %call205 = call %struct._object* @get_pybool(i32 %conv204)
  store %struct._object* %call205, %struct._object** %retval
  br label %return

if.end.206:                                       ; preds = %if.end.198
  %115 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call207 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %115, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0))
  %cmp208 = icmp eq i32 %call207, 0
  br i1 %cmp208, label %if.then.210, label %if.end.219

if.then.210:                                      ; preds = %if.end.206
  %116 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %116, i32 0, i32 9
  %117 = load %struct._object*, %struct._object** %intern, align 8
  %cmp211 = icmp eq %struct._object* %117, null
  br i1 %cmp211, label %if.then.213, label %if.else

if.then.213:                                      ; preds = %if.then.210
  %118 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc214 = add i64 %118, 1
  store i64 %inc214, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.210
  %119 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern215 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %119, i32 0, i32 9
  %120 = load %struct._object*, %struct._object** %intern215, align 8
  %ob_refcnt216 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 0
  %121 = load i64, i64* %ob_refcnt216, align 8
  %inc217 = add i64 %121, 1
  store i64 %inc217, i64* %ob_refcnt216, align 8
  %122 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern218 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %122, i32 0, i32 9
  %123 = load %struct._object*, %struct._object** %intern218, align 8
  store %struct._object* %123, %struct._object** %retval
  br label %return

if.end.219:                                       ; preds = %if.end.206
  br label %generic

generic:                                          ; preds = %if.end.219, %if.then
  %124 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %125 = bitcast %struct.xmlparseobject* %124 to %struct._object*
  %126 = load %struct._object*, %struct._object** %nameobj.addr, align 8
  %call220 = call %struct._object* @PyObject_GenericGetAttr(%struct._object* %125, %struct._object* %126)
  store %struct._object* %call220, %struct._object** %retval
  br label %return

return:                                           ; preds = %generic, %if.else, %if.then.213, %if.then.202, %if.then.196, %if.then.190, %if.then.182, %if.then.174, %if.then.167, %if.then.155, %if.then.147, %if.then.139, %if.then.127, %if.then.119, %if.then.111, %if.then.103, %if.end.9, %if.then.2
  %127 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %127
}

; Function Attrs: nounwind uwtable
define internal i32 @xmlparse_setattro(%struct.xmlparseobject* %self, %struct._object* %name, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %name.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %b = alloca i32, align 4
  %b37 = alloca i32, align 4
  %b49 = alloca i32, align 4
  %b60 = alloca i32, align 4
  %new_buffer_size = alloca i64, align 8
  %errmsg = alloca [100 x i8], align 16
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.149, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0))
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then.2, label %if.end.32

if.then.2:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %v.addr, align 8
  %call3 = call i32 @PyObject_IsTrue(%struct._object* %3)
  store i32 %call3, i32* %b, align 4
  %4 = load i32, i32* %b, align 4
  %cmp4 = icmp slt i32 %4, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  %5 = load i32, i32* %b, align 4
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then.7, label %if.else

if.then.7:                                        ; preds = %if.end.6
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 6
  %7 = load i8*, i8** %buffer, align 8
  %cmp8 = icmp eq i8* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.18

if.then.9:                                        ; preds = %if.then.7
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 7
  %9 = load i32, i32* %buffer_size, align 4
  %conv = sext i32 %9 to i64
  %call10 = call i8* @PyMem_Malloc(i64 %conv)
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer11 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 6
  store i8* %call10, i8** %buffer11, align 8
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer12 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %11, i32 0, i32 6
  %12 = load i8*, i8** %buffer12, align 8
  %cmp13 = icmp eq i8* %12, null
  br i1 %cmp13, label %if.then.15, label %if.end.17

if.then.15:                                       ; preds = %if.then.9
  %call16 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.9
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_used = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %13, i32 0, i32 8
  store i32 0, i32* %buffer_used, align 4
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.7
  br label %if.end.31

if.else:                                          ; preds = %if.end.6
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer19 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 6
  %15 = load i8*, i8** %buffer19, align 8
  %cmp20 = icmp ne i8* %15, null
  br i1 %cmp20, label %if.then.22, label %if.end.30

if.then.22:                                       ; preds = %if.else
  %16 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %call23 = call i32 @flush_character_buffer(%struct.xmlparseobject* %16)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.then.22
  store i32 -1, i32* %retval
  br label %return

if.end.27:                                        ; preds = %if.then.22
  %17 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer28 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %17, i32 0, i32 6
  %18 = load i8*, i8** %buffer28, align 8
  call void @PyMem_Free(i8* %18)
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer29 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %19, i32 0, i32 6
  store i8* null, i8** %buffer29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.27, %if.else
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.end.18
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end
  %20 = load %struct._object*, %struct._object** %name.addr, align 8
  %call33 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0))
  %cmp34 = icmp eq i32 %call33, 0
  br i1 %cmp34, label %if.then.36, label %if.end.44

if.then.36:                                       ; preds = %if.end.32
  %21 = load %struct._object*, %struct._object** %v.addr, align 8
  %call38 = call i32 @PyObject_IsTrue(%struct._object* %21)
  store i32 %call38, i32* %b37, align 4
  %22 = load i32, i32* %b37, align 4
  %cmp39 = icmp slt i32 %22, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %if.then.36
  store i32 -1, i32* %retval
  br label %return

if.end.42:                                        ; preds = %if.then.36
  %23 = load i32, i32* %b37, align 4
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %ns_prefixes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %24, i32 0, i32 5
  store i32 %23, i32* %ns_prefixes, align 4
  %25 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %25, i32 0, i32 1
  %26 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %27 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %ns_prefixes43 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %27, i32 0, i32 5
  %28 = load i32, i32* %ns_prefixes43, align 4
  call void @PyExpat_XML_SetReturnNSTriplet(%struct.XML_ParserStruct* %26, i32 %28)
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.32
  %29 = load %struct._object*, %struct._object** %name.addr, align 8
  %call45 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0))
  %cmp46 = icmp eq i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.55

if.then.48:                                       ; preds = %if.end.44
  %30 = load %struct._object*, %struct._object** %v.addr, align 8
  %call50 = call i32 @PyObject_IsTrue(%struct._object* %30)
  store i32 %call50, i32* %b49, align 4
  %31 = load i32, i32* %b49, align 4
  %cmp51 = icmp slt i32 %31, 0
  br i1 %cmp51, label %if.then.53, label %if.end.54

if.then.53:                                       ; preds = %if.then.48
  store i32 -1, i32* %retval
  br label %return

if.end.54:                                        ; preds = %if.then.48
  %32 = load i32, i32* %b49, align 4
  %33 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %ordered_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %33, i32 0, i32 2
  store i32 %32, i32* %ordered_attributes, align 4
  store i32 0, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.44
  %34 = load %struct._object*, %struct._object** %name.addr, align 8
  %call56 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.147, i32 0, i32 0))
  %cmp57 = icmp eq i32 %call56, 0
  br i1 %cmp57, label %if.then.59, label %if.end.66

if.then.59:                                       ; preds = %if.end.55
  %35 = load %struct._object*, %struct._object** %v.addr, align 8
  %call61 = call i32 @PyObject_IsTrue(%struct._object* %35)
  store i32 %call61, i32* %b60, align 4
  %36 = load i32, i32* %b60, align 4
  %cmp62 = icmp slt i32 %36, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.59
  store i32 -1, i32* %retval
  br label %return

if.end.65:                                        ; preds = %if.then.59
  %37 = load i32, i32* %b60, align 4
  %38 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %specified_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %38, i32 0, i32 3
  store i32 %37, i32* %specified_attributes, align 4
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.55
  %39 = load %struct._object*, %struct._object** %name.addr, align 8
  %call67 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0))
  %cmp68 = icmp eq i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.118

if.then.70:                                       ; preds = %if.end.66
  %40 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 19
  %42 = load i64, i64* %tp_flags, align 8
  %and = and i64 %42, 16777216
  %cmp71 = icmp ne i64 %and, 0
  br i1 %cmp71, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %if.then.70
  %43 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.150, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.74:                                        ; preds = %if.then.70
  %44 = load %struct._object*, %struct._object** %v.addr, align 8
  %call75 = call i64 @PyLong_AsLong(%struct._object* %44)
  store i64 %call75, i64* %new_buffer_size, align 8
  %45 = load i64, i64* %new_buffer_size, align 8
  %46 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_size76 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %46, i32 0, i32 7
  %47 = load i32, i32* %buffer_size76, align 4
  %conv77 = sext i32 %47 to i64
  %cmp78 = icmp eq i64 %45, %conv77
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %if.end.74
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.74
  %48 = load i64, i64* %new_buffer_size, align 8
  %cmp82 = icmp sle i64 %48, 0
  br i1 %cmp82, label %if.then.84, label %if.end.85

if.then.84:                                       ; preds = %if.end.81
  %49 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.151, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.85:                                        ; preds = %if.end.81
  %50 = load i64, i64* %new_buffer_size, align 8
  %cmp86 = icmp sgt i64 %50, 2147483647
  br i1 %cmp86, label %if.then.88, label %if.end.91

if.then.88:                                       ; preds = %if.end.85
  %arraydecay = getelementptr inbounds [100 x i8], [100 x i8]* %errmsg, i32 0, i32 0
  %call89 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.152, i32 0, i32 0), i32 2147483647) #2
  %51 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %arraydecay90 = getelementptr inbounds [100 x i8], [100 x i8]* %errmsg, i32 0, i32 0
  call void @PyErr_SetString(%struct._object* %51, i8* %arraydecay90)
  store i32 -1, i32* %retval
  br label %return

if.end.91:                                        ; preds = %if.end.85
  %52 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer92 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %52, i32 0, i32 6
  %53 = load i8*, i8** %buffer92, align 8
  %cmp93 = icmp ne i8* %53, null
  br i1 %cmp93, label %if.then.95, label %if.end.107

if.then.95:                                       ; preds = %if.end.91
  %54 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_used96 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %54, i32 0, i32 8
  %55 = load i32, i32* %buffer_used96, align 4
  %cmp97 = icmp ne i32 %55, 0
  br i1 %cmp97, label %if.then.99, label %if.end.105

if.then.99:                                       ; preds = %if.then.95
  %56 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %call100 = call i32 @flush_character_buffer(%struct.xmlparseobject* %56)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.then.103, label %if.end.104

if.then.103:                                      ; preds = %if.then.99
  store i32 -1, i32* %retval
  br label %return

if.end.104:                                       ; preds = %if.then.99
  br label %if.end.105

if.end.105:                                       ; preds = %if.end.104, %if.then.95
  %57 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer106 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %57, i32 0, i32 6
  %58 = load i8*, i8** %buffer106, align 8
  call void @PyMem_Free(i8* %58)
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.105, %if.end.91
  %59 = load i64, i64* %new_buffer_size, align 8
  %call108 = call i8* @PyMem_Malloc(i64 %59)
  %60 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer109 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %60, i32 0, i32 6
  store i8* %call108, i8** %buffer109, align 8
  %61 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer110 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %61, i32 0, i32 6
  %62 = load i8*, i8** %buffer110, align 8
  %cmp111 = icmp eq i8* %62, null
  br i1 %cmp111, label %if.then.113, label %if.end.115

if.then.113:                                      ; preds = %if.end.107
  %call114 = call %struct._object* @PyErr_NoMemory()
  store i32 -1, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.end.107
  %63 = load i64, i64* %new_buffer_size, align 8
  %conv116 = trunc i64 %63 to i32
  %64 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_size117 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %64, i32 0, i32 7
  store i32 %conv116, i32* %buffer_size117, align 4
  store i32 0, i32* %retval
  br label %return

if.end.118:                                       ; preds = %if.end.66
  %65 = load %struct._object*, %struct._object** %name.addr, align 8
  %call119 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.78, i32 0, i32 0))
  %cmp120 = icmp eq i32 %call119, 0
  br i1 %cmp120, label %if.then.122, label %if.end.128

if.then.122:                                      ; preds = %if.end.118
  %66 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %call123 = call i32 @flush_character_buffer(%struct.xmlparseobject* %66)
  %cmp124 = icmp slt i32 %call123, 0
  br i1 %cmp124, label %if.then.126, label %if.end.127

if.then.126:                                      ; preds = %if.then.122
  store i32 -1, i32* %retval
  br label %return

if.end.127:                                       ; preds = %if.then.122
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %if.end.118
  %67 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %68 = load %struct._object*, %struct._object** %name.addr, align 8
  %69 = load %struct._object*, %struct._object** %v.addr, align 8
  %call129 = call i32 @sethandler(%struct.xmlparseobject* %67, %struct._object* %68, %struct._object* %69)
  %tobool130 = icmp ne i32 %call129, 0
  br i1 %tobool130, label %if.then.131, label %if.end.132

if.then.131:                                      ; preds = %if.end.128
  store i32 0, i32* %retval
  br label %return

if.end.132:                                       ; preds = %if.end.128
  %70 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %71 = load %struct._object*, %struct._object** %name.addr, align 8
  call void @PyErr_SetObject(%struct._object* %70, %struct._object* %71)
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.132, %if.then.131, %if.then.126, %if.end.115, %if.then.113, %if.then.103, %if.then.88, %if.then.84, %if.then.80, %if.then.73, %if.end.65, %if.then.64, %if.end.54, %if.then.53, %if.end.42, %if.then.41, %if.end.31, %if.then.26, %if.then.15, %if.then.5, %if.then
  %72 = load i32, i32* %retval
  ret i32 %72
}

; Function Attrs: nounwind uwtable
define internal i32 @xmlparse_traverse(%struct.xmlparseobject* %op, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %op.addr = alloca %struct.xmlparseobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %vret = alloca i32, align 4
  store %struct.xmlparseobject* %op, %struct.xmlparseobject** %op.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %2 to i64
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %op.addr, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %3, i32 0, i32 10
  %4 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx2 = getelementptr %struct._object*, %struct._object** %4, i64 %idxprom1
  %5 = load %struct._object*, %struct._object** %arrayidx2, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then, label %if.end.8

if.then:                                          ; preds = %do.body
  %6 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %7 to i64
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %op.addr, align 8
  %handlers4 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 10
  %9 = load %struct._object**, %struct._object*** %handlers4, align 8
  %arrayidx5 = getelementptr %struct._object*, %struct._object** %9, i64 %idxprom3
  %10 = load %struct._object*, %struct._object** %arrayidx5, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %6(%struct._object* %10, i8* %11)
  store i32 %call, i32* %vret, align 4
  %12 = load i32, i32* %vret, align 4
  %tobool6 = icmp ne i32 %12, 0
  br i1 %tobool6, label %if.then.7, label %if.end

if.then.7:                                        ; preds = %if.then
  %13 = load i32, i32* %vret, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %for.inc

for.inc:                                          ; preds = %do.end
  %14 = load i32, i32* %i, align 4
  %inc = add i32 %14, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.7
  %15 = load i32, i32* %retval
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define internal i32 @xmlparse_clear(%struct.xmlparseobject* %op) #0 {
entry:
  %op.addr = alloca %struct.xmlparseobject*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %op, %struct.xmlparseobject** %op.addr, align 8
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %op.addr, align 8
  call void @clear_handlers(%struct.xmlparseobject* %0, i32 0)
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %op.addr, align 8
  %intern = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %1, i32 0, i32 9
  %2 = load %struct._object*, %struct._object** %intern, align 8
  store %struct._object* %2, %struct._object** %_py_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %op.addr, align 8
  %intern1 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %4, i32 0, i32 9
  store %struct._object* null, %struct._object** %intern1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  ret i32 0
}

declare void @PyObject_GC_UnTrack(i8*) #1

declare void @PyMem_Free(i8*) #1

declare void @PyObject_GC_Del(i8*) #1

declare void @PyExpat_XML_SetStartElementHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8**)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_StartElementHandler(i8* %userData, i8* %name, i8** %atts) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %atts.addr = alloca i8**, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %container = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %n = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  %_py_decref_tmp82 = alloca %struct._object*, align 8
  %_py_decref_tmp94 = alloca %struct._object*, align 8
  %_py_decref_tmp107 = alloca %struct._object*, align 8
  %_py_decref_tmp119 = alloca %struct._object*, align 8
  %_py_decref_tmp143 = alloca %struct._object*, align 8
  %_py_decref_tmp160 = alloca %struct._object*, align 8
  %_py_decref_tmp176 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i8** %atts, i8*** %atts.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.187

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %if.end.187

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %if.end.187

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %specified_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %4, i32 0, i32 3
  %5 = load i32, i32* %specified_attributes, align 4
  %tobool7 = icmp ne i32 %5, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.end.6
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 1
  %7 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call9 = call i32 @PyExpat_XML_GetSpecifiedAttributeCount(%struct.XML_ParserStruct* %7)
  store i32 %call9, i32* %max, align 4
  br label %if.end.11

if.else:                                          ; preds = %if.end.6
  store i32 0, i32* %max, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.else
  %8 = load i32, i32* %max, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load i8**, i8*** %atts.addr, align 8
  %arrayidx = getelementptr i8*, i8** %9, i64 %idxprom
  %10 = load i8*, i8** %arrayidx, align 8
  %cmp10 = icmp ne i8* %10, null
  br i1 %cmp10, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %max, align 4
  %add = add i32 %11, 2
  store i32 %add, i32* %max, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.11

if.end.11:                                        ; preds = %while.end, %if.then.8
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %ordered_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %12, i32 0, i32 2
  %13 = load i32, i32* %ordered_attributes, align 4
  %tobool12 = icmp ne i32 %13, 0
  br i1 %tobool12, label %if.then.13, label %if.else.15

if.then.13:                                       ; preds = %if.end.11
  %14 = load i32, i32* %max, align 4
  %conv = sext i32 %14 to i64
  %call14 = call %struct._object* @PyList_New(i64 %conv)
  store %struct._object* %call14, %struct._object** %container, align 8
  br label %if.end.17

if.else.15:                                       ; preds = %if.end.11
  %call16 = call %struct._object* @PyDict_New()
  store %struct._object* %call16, %struct._object** %container, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.15, %if.then.13
  %15 = load %struct._object*, %struct._object** %container, align 8
  %cmp18 = icmp eq %struct._object* %15, null
  br i1 %cmp18, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %if.end.17
  %16 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %16)
  br label %if.end.187

if.end.21:                                        ; preds = %if.end.17
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.21
  %17 = load i32, i32* %i, align 4
  %18 = load i32, i32* %max, align 4
  %cmp22 = icmp slt i32 %17, %18
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %20 = load i32, i32* %i, align 4
  %idxprom24 = sext i32 %20 to i64
  %21 = load i8**, i8*** %atts.addr, align 8
  %arrayidx25 = getelementptr i8*, i8** %21, i64 %idxprom24
  %22 = load i8*, i8** %arrayidx25, align 8
  %call26 = call %struct._object* @string_intern(%struct.xmlparseobject* %19, i8* %22)
  store %struct._object* %call26, %struct._object** %n, align 8
  %23 = load %struct._object*, %struct._object** %n, align 8
  %cmp27 = icmp eq %struct._object* %23, null
  br i1 %cmp27, label %if.then.29, label %if.end.35

if.then.29:                                       ; preds = %for.body
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %24)
  br label %do.body

do.body:                                          ; preds = %if.then.29
  %25 = load %struct._object*, %struct._object** %container, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp30 = icmp ne i64 %dec, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body
  br label %if.end.34

if.else.33:                                       ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end

do.end:                                           ; preds = %if.end.34
  br label %if.end.187

if.end.35:                                        ; preds = %for.body
  %32 = load i32, i32* %i, align 4
  %add36 = add i32 %32, 1
  %idxprom37 = sext i32 %add36 to i64
  %33 = load i8**, i8*** %atts.addr, align 8
  %arrayidx38 = getelementptr i8*, i8** %33, i64 %idxprom37
  %34 = load i8*, i8** %arrayidx38, align 8
  %call39 = call %struct._object* @conv_string_to_unicode(i8* %34)
  store %struct._object* %call39, %struct._object** %v, align 8
  %35 = load %struct._object*, %struct._object** %v, align 8
  %cmp40 = icmp eq %struct._object* %35, null
  br i1 %cmp40, label %if.then.42, label %if.end.67

if.then.42:                                       ; preds = %if.end.35
  %36 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %36)
  br label %do.body.43

do.body.43:                                       ; preds = %if.then.42
  %37 = load %struct._object*, %struct._object** %container, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp44, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %39, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.43
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.43
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %42(%struct._object* %43)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %do.body.55

do.body.55:                                       ; preds = %do.end.54
  %44 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp56, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt57, align 8
  %dec58 = add i64 %46, -1
  store i64 %dec58, i64* %ob_refcnt57, align 8
  %cmp59 = icmp ne i64 %dec58, 0
  br i1 %cmp59, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.55
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.55
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8
  call void %49(%struct._object* %50)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.187

if.end.67:                                        ; preds = %if.end.35
  %51 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %ordered_attributes68 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %51, i32 0, i32 2
  %52 = load i32, i32* %ordered_attributes68, align 4
  %tobool69 = icmp ne i32 %52, 0
  br i1 %tobool69, label %if.then.70, label %if.else.77

if.then.70:                                       ; preds = %if.end.67
  %53 = load %struct._object*, %struct._object** %n, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom71 = sext i32 %54 to i64
  %55 = load %struct._object*, %struct._object** %container, align 8
  %56 = bitcast %struct._object* %55 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %56, i32 0, i32 1
  %57 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx72 = getelementptr %struct._object*, %struct._object** %57, i64 %idxprom71
  store %struct._object* %53, %struct._object** %arrayidx72, align 8
  %58 = load %struct._object*, %struct._object** %v, align 8
  %59 = load i32, i32* %i, align 4
  %add73 = add i32 %59, 1
  %idxprom74 = sext i32 %add73 to i64
  %60 = load %struct._object*, %struct._object** %container, align 8
  %61 = bitcast %struct._object* %60 to %struct.PyListObject*
  %ob_item75 = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %61, i32 0, i32 1
  %62 = load %struct._object**, %struct._object*** %ob_item75, align 8
  %arrayidx76 = getelementptr %struct._object*, %struct._object** %62, i64 %idxprom74
  store %struct._object* %58, %struct._object** %arrayidx76, align 8
  br label %if.end.131

if.else.77:                                       ; preds = %if.end.67
  %63 = load %struct._object*, %struct._object** %container, align 8
  %64 = load %struct._object*, %struct._object** %n, align 8
  %65 = load %struct._object*, %struct._object** %v, align 8
  %call78 = call i32 @PyDict_SetItem(%struct._object* %63, %struct._object* %64, %struct._object* %65)
  %tobool79 = icmp ne i32 %call78, 0
  br i1 %tobool79, label %if.then.80, label %if.else.105

if.then.80:                                       ; preds = %if.else.77
  %66 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %66)
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %67 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp82, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_refcnt83 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt83, align 8
  %dec84 = add i64 %69, -1
  store i64 %dec84, i64* %ob_refcnt83, align 8
  %cmp85 = icmp ne i64 %dec84, 0
  br i1 %cmp85, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.81
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.81
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp82, align 8
  call void %72(%struct._object* %73)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %do.body.93

do.body.93:                                       ; preds = %do.end.92
  %74 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp94, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt95, align 8
  %dec96 = add i64 %76, -1
  store i64 %dec96, i64* %ob_refcnt95, align 8
  %cmp97 = icmp ne i64 %dec96, 0
  br i1 %cmp97, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.93
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp94, align 8
  call void %79(%struct._object* %80)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  br label %if.end.187

if.else.105:                                      ; preds = %if.else.77
  br label %do.body.106

do.body.106:                                      ; preds = %if.else.105
  %81 = load %struct._object*, %struct._object** %n, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp107, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_refcnt108 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt108, align 8
  %dec109 = add i64 %83, -1
  store i64 %dec109, i64* %ob_refcnt108, align 8
  %cmp110 = icmp ne i64 %dec109, 0
  br i1 %cmp110, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.106
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.106
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp107, align 8
  call void %86(%struct._object* %87)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  br label %do.body.118

do.body.118:                                      ; preds = %do.end.117
  %88 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp119, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_refcnt120 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt120, align 8
  %dec121 = add i64 %90, -1
  store i64 %dec121, i64* %ob_refcnt120, align 8
  %cmp122 = icmp ne i64 %dec121, 0
  br i1 %cmp122, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.118
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.118
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp119, align 8
  call void %93(%struct._object* %94)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %if.end.130

if.end.130:                                       ; preds = %do.end.129
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.130, %if.then.70
  br label %for.inc

for.inc:                                          ; preds = %if.end.131
  %95 = load i32, i32* %i, align 4
  %add132 = add i32 %95, 2
  store i32 %add132, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %96 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %97 = load i8*, i8** %name.addr, align 8
  %call133 = call %struct._object* @string_intern(%struct.xmlparseobject* %96, i8* %97)
  store %struct._object* %call133, %struct._object** %args, align 8
  %98 = load %struct._object*, %struct._object** %args, align 8
  %cmp134 = icmp ne %struct._object* %98, null
  br i1 %cmp134, label %if.then.136, label %if.end.138

if.then.136:                                      ; preds = %for.end
  %99 = load %struct._object*, %struct._object** %args, align 8
  %100 = load %struct._object*, %struct._object** %container, align 8
  %call137 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), %struct._object* %99, %struct._object* %100)
  store %struct._object* %call137, %struct._object** %args, align 8
  br label %if.end.138

if.end.138:                                       ; preds = %if.then.136, %for.end
  %101 = load %struct._object*, %struct._object** %args, align 8
  %cmp139 = icmp eq %struct._object* %101, null
  br i1 %cmp139, label %if.then.141, label %if.end.154

if.then.141:                                      ; preds = %if.end.138
  br label %do.body.142

do.body.142:                                      ; preds = %if.then.141
  %102 = load %struct._object*, %struct._object** %container, align 8
  store %struct._object* %102, %struct._object** %_py_decref_tmp143, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_refcnt144 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 0
  %104 = load i64, i64* %ob_refcnt144, align 8
  %dec145 = add i64 %104, -1
  store i64 %dec145, i64* %ob_refcnt144, align 8
  %cmp146 = icmp ne i64 %dec145, 0
  br i1 %cmp146, label %if.then.148, label %if.else.149

if.then.148:                                      ; preds = %do.body.142
  br label %if.end.152

if.else.149:                                      ; preds = %do.body.142
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  %ob_type150 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 1
  %106 = load %struct._typeobject*, %struct._typeobject** %ob_type150, align 8
  %tp_dealloc151 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %106, i32 0, i32 4
  %107 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc151, align 8
  %108 = load %struct._object*, %struct._object** %_py_decref_tmp143, align 8
  call void %107(%struct._object* %108)
  br label %if.end.152

if.end.152:                                       ; preds = %if.else.149, %if.then.148
  br label %do.end.153

do.end.153:                                       ; preds = %if.end.152
  br label %if.end.187

if.end.154:                                       ; preds = %if.end.138
  %109 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %109, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call155 = call %struct.PyCodeObject* @getcode(i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.98, i32 0, i32 0), i32 511)
  %110 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %110, i32 0, i32 10
  %111 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx156 = getelementptr %struct._object*, %struct._object** %111, i64 0
  %112 = load %struct._object*, %struct._object** %arrayidx156, align 8
  %113 = load %struct._object*, %struct._object** %args, align 8
  %114 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call157 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call155, %struct._object* %112, %struct._object* %113, %struct.xmlparseobject* %114)
  store %struct._object* %call157, %struct._object** %rv, align 8
  %115 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback158 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %115, i32 0, i32 4
  store i32 0, i32* %in_callback158, align 4
  br label %do.body.159

do.body.159:                                      ; preds = %if.end.154
  %116 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %116, %struct._object** %_py_decref_tmp160, align 8
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_refcnt161 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt161, align 8
  %dec162 = add i64 %118, -1
  store i64 %dec162, i64* %ob_refcnt161, align 8
  %cmp163 = icmp ne i64 %dec162, 0
  br i1 %cmp163, label %if.then.165, label %if.else.166

if.then.165:                                      ; preds = %do.body.159
  br label %if.end.169

if.else.166:                                      ; preds = %do.body.159
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  %ob_type167 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 1
  %120 = load %struct._typeobject*, %struct._typeobject** %ob_type167, align 8
  %tp_dealloc168 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %120, i32 0, i32 4
  %121 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc168, align 8
  %122 = load %struct._object*, %struct._object** %_py_decref_tmp160, align 8
  call void %121(%struct._object* %122)
  br label %if.end.169

if.end.169:                                       ; preds = %if.else.166, %if.then.165
  br label %do.end.170

do.end.170:                                       ; preds = %if.end.169
  %123 = load %struct._object*, %struct._object** %rv, align 8
  %cmp171 = icmp eq %struct._object* %123, null
  br i1 %cmp171, label %if.then.173, label %if.end.174

if.then.173:                                      ; preds = %do.end.170
  %124 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %124)
  br label %if.end.187

if.end.174:                                       ; preds = %do.end.170
  br label %do.body.175

do.body.175:                                      ; preds = %if.end.174
  %125 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp176, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_refcnt177 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt177, align 8
  %dec178 = add i64 %127, -1
  store i64 %dec178, i64* %ob_refcnt177, align 8
  %cmp179 = icmp ne i64 %dec178, 0
  br i1 %cmp179, label %if.then.181, label %if.else.182

if.then.181:                                      ; preds = %do.body.175
  br label %if.end.185

if.else.182:                                      ; preds = %do.body.175
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  %ob_type183 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type183, align 8
  %tp_dealloc184 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc184, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp176, align 8
  call void %130(%struct._object* %131)
  br label %if.end.185

if.end.185:                                       ; preds = %if.else.182, %if.then.181
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  br label %if.end.187

if.end.187:                                       ; preds = %if.then.3, %if.then.5, %if.then.20, %do.end, %do.end.66, %do.end.104, %do.end.153, %if.then.173, %do.end.186, %entry
  ret void
}

declare void @PyExpat_XML_SetEndElementHandler(%struct.XML_ParserStruct*, void (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_EndElementHandler(i8* %userData, i8* %name) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 1)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %name.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), %struct._object* %call7)
  store %struct._object* %call8, %struct._object** %args, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %tobool9 = icmp ne %struct._object* %6, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %7)
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call12 = call %struct.PyCodeObject* @getcode(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i32 565)
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 10
  %10 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %10, i64 1
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  %12 = load %struct._object*, %struct._object** %args, align 8
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call13 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call12, %struct._object* %11, %struct._object* %12, %struct.xmlparseobject* %13)
  store %struct._object* %call13, %struct._object** %rv, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 4
  store i32 0, i32* %in_callback14, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %15 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %rv, align 8
  %cmp18 = icmp eq %struct._object* %22, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %23)
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %24 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %26, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %29(%struct._object* %30)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.10, %if.then.5, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @my_ProcessingInstructionHandler(i8* %userData, i8* %target, i8* %data) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %target.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %target, i8** %target.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %target.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load i8*, i8** %data.addr, align 8
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.104, i32 0, i32 0), %struct._object* %call7, %struct._object* (i8*)* @conv_string_to_unicode, i8* %6)
  store %struct._object* %call8, %struct._object** %args, align 8
  %7 = load %struct._object*, %struct._object** %args, align 8
  %tobool9 = icmp ne %struct._object* %7, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %8)
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call12 = call %struct.PyCodeObject* @getcode(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.105, i32 0, i32 0), i32 571)
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 10
  %11 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 2
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load %struct._object*, %struct._object** %args, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call13 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call12, %struct._object* %12, %struct._object* %13, %struct.xmlparseobject* %14)
  store %struct._object* %call13, %struct._object** %rv, align 8
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %15, i32 0, i32 4
  store i32 0, i32* %in_callback14, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %16 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
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
  %23 = load %struct._object*, %struct._object** %rv, align 8
  %cmp18 = icmp eq %struct._object* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %24)
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp22, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %27, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %30(%struct._object* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.10, %if.then.5, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @my_CharacterDataHandler(i8* %userData, i8* %data, i32 %len) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.25

if.end:                                           ; preds = %entry
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %2, i32 0, i32 6
  %3 = load i8*, i8** %buffer, align 8
  %cmp = icmp eq i8* %3, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %6 = load i32, i32* %len.addr, align 4
  %call2 = call i32 @call_character_handler(%struct.xmlparseobject* %4, i8* %5, i32 %6)
  br label %if.end.25

if.else:                                          ; preds = %if.end
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_used = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 8
  %8 = load i32, i32* %buffer_used, align 4
  %9 = load i32, i32* %len.addr, align 4
  %add = add i32 %8, %9
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_size = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 7
  %11 = load i32, i32* %buffer_size, align 4
  %cmp3 = icmp sgt i32 %add, %11
  br i1 %cmp3, label %if.then.4, label %if.end.13

if.then.4:                                        ; preds = %if.else
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call5 = call i32 @flush_character_buffer(%struct.xmlparseobject* %12)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.then.4
  br label %if.end.25

if.end.8:                                         ; preds = %if.then.4
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call9 = call i32 @have_handler(%struct.xmlparseobject* %13, i32 3)
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %if.end.25

if.end.12:                                        ; preds = %if.end.8
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.else
  %14 = load i32, i32* %len.addr, align 4
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_size14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %15, i32 0, i32 7
  %16 = load i32, i32* %buffer_size14, align 4
  %cmp15 = icmp sgt i32 %14, %16
  br i1 %cmp15, label %if.then.16, label %if.else.19

if.then.16:                                       ; preds = %if.end.13
  %17 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %18 = load i8*, i8** %data.addr, align 8
  %19 = load i32, i32* %len.addr, align 4
  %call17 = call i32 @call_character_handler(%struct.xmlparseobject* %17, i8* %18, i32 %19)
  %20 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_used18 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %20, i32 0, i32 8
  store i32 0, i32* %buffer_used18, align 4
  br label %if.end.24

if.else.19:                                       ; preds = %if.end.13
  %21 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer20 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %21, i32 0, i32 6
  %22 = load i8*, i8** %buffer20, align 8
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_used21 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %23, i32 0, i32 8
  %24 = load i32, i32* %buffer_used21, align 4
  %idx.ext = sext i32 %24 to i64
  %add.ptr = getelementptr i8, i8* %22, i64 %idx.ext
  %25 = load i8*, i8** %data.addr, align 8
  %26 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %26 to i64
  %mul = mul i64 %conv, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %25, i64 %mul, i32 1, i1 false)
  %27 = load i32, i32* %len.addr, align 4
  %28 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_used22 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %28, i32 0, i32 8
  %29 = load i32, i32* %buffer_used22, align 4
  %add23 = add i32 %29, %27
  store i32 %add23, i32* %buffer_used22, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.19, %if.then.16
  br label %if.end.25

if.end.25:                                        ; preds = %if.then, %if.then.7, %if.then.11, %if.end.24, %if.then.1
  ret void
}

declare void @PyExpat_XML_SetUnparsedEntityDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_UnparsedEntityDeclHandler(i8* %userData, i8* %entityName, i8* %base, i8* %systemId, i8* %publicId, i8* %notationName) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %entityName.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %publicId.addr = alloca i8*, align 8
  %notationName.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp26 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %entityName, i8** %entityName.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8* %publicId, i8** %publicId.addr, align 8
  store i8* %notationName, i8** %notationName.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 4)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %entityName.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %7 = load i8*, i8** %base.addr, align 8
  %call8 = call %struct._object* @string_intern(%struct.xmlparseobject* %6, i8* %7)
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %9 = load i8*, i8** %systemId.addr, align 8
  %call9 = call %struct._object* @string_intern(%struct.xmlparseobject* %8, i8* %9)
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %11 = load i8*, i8** %publicId.addr, align 8
  %call10 = call %struct._object* @string_intern(%struct.xmlparseobject* %10, i8* %11)
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %13 = load i8*, i8** %notationName.addr, align 8
  %call11 = call %struct._object* @string_intern(%struct.xmlparseobject* %12, i8* %13)
  %call12 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.106, i32 0, i32 0), %struct._object* %call7, %struct._object* %call8, %struct._object* %call9, %struct._object* %call10, %struct._object* %call11)
  store %struct._object* %call12, %struct._object** %args, align 8
  %14 = load %struct._object*, %struct._object** %args, align 8
  %tobool13 = icmp ne %struct._object* %14, null
  br i1 %tobool13, label %if.end.15, label %if.then.14

if.then.14:                                       ; preds = %if.end.6
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %15)
  br label %return

if.end.15:                                        ; preds = %if.end.6
  %16 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %16, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call16 = call %struct.PyCodeObject* @getcode(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.107, i32 0, i32 0), i32 583)
  %17 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %17, i32 0, i32 10
  %18 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %18, i64 4
  %19 = load %struct._object*, %struct._object** %arrayidx, align 8
  %20 = load %struct._object*, %struct._object** %args, align 8
  %21 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call17 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call16, %struct._object* %19, %struct._object* %20, %struct.xmlparseobject* %21)
  store %struct._object* %call17, %struct._object** %rv, align 8
  %22 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback18 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %22, i32 0, i32 4
  store i32 0, i32* %in_callback18, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %23 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp19 = icmp ne i64 %dec, 0
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %do.body
  br label %if.end.21

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.20
  br label %do.end

do.end:                                           ; preds = %if.end.21
  %30 = load %struct._object*, %struct._object** %rv, align 8
  %cmp22 = icmp eq %struct._object* %30, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.end
  %31 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %31)
  br label %return

if.end.24:                                        ; preds = %do.end
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %32 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp26, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt27, align 8
  %dec28 = add i64 %34, -1
  store i64 %dec28, i64* %ob_refcnt27, align 8
  %cmp29 = icmp ne i64 %dec28, 0
  br i1 %cmp29, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.25
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.25
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp26, align 8
  call void %37(%struct._object* %38)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %entry
  br label %return

return:                                           ; preds = %if.end.36, %if.then.23, %if.then.14, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetNotationDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_NotationDeclHandler(i8* %userData, i8* %notationName, i8* %base, i8* %systemId, i8* %publicId) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %notationName.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %publicId.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %notationName, i8** %notationName.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8* %publicId, i8** %publicId.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 5)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.35

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %notationName.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %7 = load i8*, i8** %base.addr, align 8
  %call8 = call %struct._object* @string_intern(%struct.xmlparseobject* %6, i8* %7)
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %9 = load i8*, i8** %systemId.addr, align 8
  %call9 = call %struct._object* @string_intern(%struct.xmlparseobject* %8, i8* %9)
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %11 = load i8*, i8** %publicId.addr, align 8
  %call10 = call %struct._object* @string_intern(%struct.xmlparseobject* %10, i8* %11)
  %call11 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0), %struct._object* %call7, %struct._object* %call8, %struct._object* %call9, %struct._object* %call10)
  store %struct._object* %call11, %struct._object** %args, align 8
  %12 = load %struct._object*, %struct._object** %args, align 8
  %tobool12 = icmp ne %struct._object* %12, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.6
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %13)
  br label %return

if.end.14:                                        ; preds = %if.end.6
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call15 = call %struct.PyCodeObject* @getcode(i32 5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.109, i32 0, i32 0), i32 716)
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %15, i32 0, i32 10
  %16 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %16, i64 5
  %17 = load %struct._object*, %struct._object** %arrayidx, align 8
  %18 = load %struct._object*, %struct._object** %args, align 8
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call16 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call15, %struct._object* %17, %struct._object* %18, %struct.xmlparseobject* %19)
  store %struct._object* %call16, %struct._object** %rv, align 8
  %20 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback17 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %20, i32 0, i32 4
  store i32 0, i32* %in_callback17, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.14
  %21 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %28 = load %struct._object*, %struct._object** %rv, align 8
  %cmp21 = icmp eq %struct._object* %28, null
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.end
  %29 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %29)
  br label %return

if.end.23:                                        ; preds = %do.end
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.23
  %30 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp25, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %32, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.24
  br label %if.end.33

if.else.30:                                       ; preds = %do.body.24
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type31 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type31, align 8
  %tp_dealloc32 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc32, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %35(%struct._object* %36)
  br label %if.end.33

if.end.33:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  br label %if.end.35

if.end.35:                                        ; preds = %do.end.34, %entry
  br label %return

return:                                           ; preds = %if.end.35, %if.then.22, %if.then.13, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetStartNamespaceDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_StartNamespaceDeclHandler(i8* %userData, i8* %prefix, i8* %uri) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %uri.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  store i8* %uri, i8** %uri.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 6)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %prefix.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %7 = load i8*, i8** %uri.addr, align 8
  %call8 = call %struct._object* @string_intern(%struct.xmlparseobject* %6, i8* %7)
  %call9 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.97, i32 0, i32 0), %struct._object* %call7, %struct._object* %call8)
  store %struct._object* %call9, %struct._object** %args, align 8
  %8 = load %struct._object*, %struct._object** %args, align 8
  %tobool10 = icmp ne %struct._object* %8, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %9)
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call13 = call %struct.PyCodeObject* @getcode(i32 6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.110, i32 0, i32 0), i32 723)
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %11, i32 0, i32 10
  %12 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %12, i64 6
  %13 = load %struct._object*, %struct._object** %arrayidx, align 8
  %14 = load %struct._object*, %struct._object** %args, align 8
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call14 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call13, %struct._object* %13, %struct._object* %14, %struct.xmlparseobject* %15)
  store %struct._object* %call14, %struct._object** %rv, align 8
  %16 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback15 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %16, i32 0, i32 4
  store i32 0, i32* %in_callback15, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %17 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %24 = load %struct._object*, %struct._object** %rv, align 8
  %cmp19 = icmp eq %struct._object* %24, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  %25 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %25)
  br label %return

if.end.21:                                        ; preds = %do.end
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %26 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp23, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %28, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %31(%struct._object* %32)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %entry
  br label %return

return:                                           ; preds = %if.end.33, %if.then.20, %if.then.11, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetEndNamespaceDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_EndNamespaceDeclHandler(i8* %userData, i8* %prefix) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %prefix.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %prefix, i8** %prefix.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 7)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %prefix.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), %struct._object* %call7)
  store %struct._object* %call8, %struct._object** %args, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %tobool9 = icmp ne %struct._object* %6, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %7)
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call12 = call %struct.PyCodeObject* @getcode(i32 7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.111, i32 0, i32 0), i32 728)
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 10
  %10 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %10, i64 7
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  %12 = load %struct._object*, %struct._object** %args, align 8
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call13 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call12, %struct._object* %11, %struct._object* %12, %struct.xmlparseobject* %13)
  store %struct._object* %call13, %struct._object** %rv, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 4
  store i32 0, i32* %in_callback14, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %15 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %rv, align 8
  %cmp18 = icmp eq %struct._object* %22, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %23)
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %24 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %26, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %29(%struct._object* %30)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.10, %if.then.5, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @my_CommentHandler(i8* %userData, i8* %data) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 8)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i8*, i8** %data.addr, align 8
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0), %struct._object* (i8*)* @conv_string_to_unicode, i8* %4)
  store %struct._object* %call7, %struct._object** %args, align 8
  %5 = load %struct._object*, %struct._object** %args, align 8
  %tobool8 = icmp ne %struct._object* %5, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %6)
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call11 = call %struct.PyCodeObject* @getcode(i32 8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0), i32 732)
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 10
  %9 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %9, i64 8
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  %11 = load %struct._object*, %struct._object** %args, align 8
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call12 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call11, %struct._object* %10, %struct._object* %11, %struct.xmlparseobject* %12)
  store %struct._object* %call12, %struct._object** %rv, align 8
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback13 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %13, i32 0, i32 4
  store i32 0, i32* %in_callback13, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %14 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %16, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %19(%struct._object* %20)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %21 = load %struct._object*, %struct._object** %rv, align 8
  %cmp17 = icmp eq %struct._object* %21, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %22 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %22)
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %23 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp21, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %25, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %28(%struct._object* %29)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  br label %return

return:                                           ; preds = %if.end.31, %if.then.18, %if.then.9, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetStartCdataSectionHandler(%struct.XML_ParserStruct*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_StartCdataSectionHandler(i8* %userData) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 9)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %args, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %tobool8 = icmp ne %struct._object* %4, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %5 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %5)
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call11 = call %struct.PyCodeObject* @getcode(i32 9, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.115, i32 0, i32 0), i32 736)
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 10
  %8 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %8, i64 9
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  %10 = load %struct._object*, %struct._object** %args, align 8
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call12 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call11, %struct._object* %9, %struct._object* %10, %struct.xmlparseobject* %11)
  store %struct._object* %call12, %struct._object** %rv, align 8
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback13 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %12, i32 0, i32 4
  store i32 0, i32* %in_callback13, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %20 = load %struct._object*, %struct._object** %rv, align 8
  %cmp17 = icmp eq %struct._object* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %21 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %21)
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %22 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %24, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %27(%struct._object* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  br label %return

return:                                           ; preds = %if.end.31, %if.then.18, %if.then.9, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetEndCdataSectionHandler(%struct.XML_ParserStruct*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_EndCdataSectionHandler(i8* %userData) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 10)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %args, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %tobool8 = icmp ne %struct._object* %4, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %5 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %5)
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call11 = call %struct.PyCodeObject* @getcode(i32 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.116, i32 0, i32 0), i32 740)
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 10
  %8 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %8, i64 10
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  %10 = load %struct._object*, %struct._object** %args, align 8
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call12 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call11, %struct._object* %9, %struct._object* %10, %struct.xmlparseobject* %11)
  store %struct._object* %call12, %struct._object** %rv, align 8
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback13 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %12, i32 0, i32 4
  store i32 0, i32* %in_callback13, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %20 = load %struct._object*, %struct._object** %rv, align 8
  %cmp17 = icmp eq %struct._object* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %21 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %21)
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %22 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %24, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %27(%struct._object* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  br label %return

return:                                           ; preds = %if.end.31, %if.then.18, %if.then.9, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetDefaultHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_DefaultHandler(i8* %userData, i8* %s, i32 %len) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 11)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %call7 = call %struct._object* @conv_string_len_to_unicode(i8* %4, i32 %5)
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), %struct._object* %call7)
  store %struct._object* %call8, %struct._object** %args, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %tobool9 = icmp ne %struct._object* %6, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %7)
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call12 = call %struct.PyCodeObject* @getcode(i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.117, i32 0, i32 0), i32 744)
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 10
  %10 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %10, i64 11
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  %12 = load %struct._object*, %struct._object** %args, align 8
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call13 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call12, %struct._object* %11, %struct._object* %12, %struct.xmlparseobject* %13)
  store %struct._object* %call13, %struct._object** %rv, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 4
  store i32 0, i32* %in_callback14, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %15 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %rv, align 8
  %cmp18 = icmp eq %struct._object* %22, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %23)
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %24 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %26, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %29(%struct._object* %30)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.10, %if.then.5, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @my_DefaultHandlerExpandHandler(i8* %userData, i8* %s, i32 %len) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %s.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %s, i8** %s.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 12)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i8*, i8** %s.addr, align 8
  %5 = load i32, i32* %len.addr, align 4
  %call7 = call %struct._object* @conv_string_len_to_unicode(i8* %4, i32 %5)
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.102, i32 0, i32 0), %struct._object* %call7)
  store %struct._object* %call8, %struct._object** %args, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %tobool9 = icmp ne %struct._object* %6, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %7)
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call12 = call %struct.PyCodeObject* @getcode(i32 12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i32 0, i32 0), i32 748)
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 10
  %10 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %10, i64 12
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  %12 = load %struct._object*, %struct._object** %args, align 8
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call13 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call12, %struct._object* %11, %struct._object* %12, %struct.xmlparseobject* %13)
  store %struct._object* %call13, %struct._object** %rv, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 4
  store i32 0, i32* %in_callback14, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %15 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %22 = load %struct._object*, %struct._object** %rv, align 8
  %cmp18 = icmp eq %struct._object* %22, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %23)
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %24 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp22, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %26, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %29(%struct._object* %30)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.10, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetNotStandaloneHandler(%struct.XML_ParserStruct*, i32 (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @my_NotStandaloneHandler(i8* %userData) #0 {
entry:
  %retval = alloca i32, align 4
  %userData.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  store i32 0, i32* %rc, align 4
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 13)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %3 = load i32, i32* %rc, align 4
  store i32 %3, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %5 = load i32, i32* %rc, align 4
  store i32 %5, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %args, align 8
  %6 = load %struct._object*, %struct._object** %args, align 8
  %tobool8 = icmp ne %struct._object* %6, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %7)
  %8 = load i32, i32* %rc, align 4
  store i32 %8, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call11 = call %struct.PyCodeObject* @getcode(i32 13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.118, i32 0, i32 0), i32 752)
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 10
  %11 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 13
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load %struct._object*, %struct._object** %args, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call12 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call11, %struct._object* %12, %struct._object* %13, %struct.xmlparseobject* %14)
  store %struct._object* %call12, %struct._object** %rv, align 8
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback13 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %15, i32 0, i32 4
  store i32 0, i32* %in_callback13, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %rv, align 8
  %cmp17 = icmp eq %struct._object* %23, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %24)
  %25 = load i32, i32* %rc, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.19:                                        ; preds = %do.end
  %26 = load %struct._object*, %struct._object** %rv, align 8
  %call20 = call i64 @PyLong_AsLong(%struct._object* %26)
  %conv = trunc i64 %call20 to i32
  store i32 %conv, i32* %rc, align 4
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.19
  %27 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp22, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %29, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %32(%struct._object* %33)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %entry
  %34 = load i32, i32* %rc, align 4
  store i32 %34, i32* %retval
  br label %return

return:                                           ; preds = %if.end.33, %if.then.18, %if.then.9, %if.then.5, %if.then.3
  %35 = load i32, i32* %retval
  ret i32 %35
}

declare void @PyExpat_XML_SetExternalEntityRefHandler(%struct.XML_ParserStruct*, i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @my_ExternalEntityRefHandler(%struct.XML_ParserStruct* %parser, i8* %context, i8* %base, i8* %systemId, i8* %publicId) #0 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct.XML_ParserStruct*, align 8
  %context.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %publicId.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp25 = alloca %struct._object*, align 8
  store %struct.XML_ParserStruct* %parser, %struct.XML_ParserStruct** %parser.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8* %publicId, i8** %publicId.addr, align 8
  %0 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %parser.addr, align 8
  %1 = bitcast %struct.XML_ParserStruct* %0 to i8**
  %2 = load i8*, i8** %1, align 8
  %3 = bitcast i8* %2 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %3, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  store i32 0, i32* %rc, align 4
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %4, i32 14)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.36

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %5 = load i32, i32* %rc, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %6)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  %7 = load i32, i32* %rc, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %8 = load i8*, i8** %context.addr, align 8
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %10 = load i8*, i8** %base.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %9, i8* %10)
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %12 = load i8*, i8** %systemId.addr, align 8
  %call8 = call %struct._object* @string_intern(%struct.xmlparseobject* %11, i8* %12)
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %14 = load i8*, i8** %publicId.addr, align 8
  %call9 = call %struct._object* @string_intern(%struct.xmlparseobject* %13, i8* %14)
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.119, i32 0, i32 0), %struct._object* (i8*)* @conv_string_to_unicode, i8* %8, %struct._object* %call7, %struct._object* %call8, %struct._object* %call9)
  store %struct._object* %call10, %struct._object** %args, align 8
  %15 = load %struct._object*, %struct._object** %args, align 8
  %tobool11 = icmp ne %struct._object* %15, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  %16 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %16)
  %17 = load i32, i32* %rc, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %18 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %18, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call14 = call %struct.PyCodeObject* @getcode(i32 14, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.120, i32 0, i32 0), i32 765)
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %19, i32 0, i32 10
  %20 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %20, i64 14
  %21 = load %struct._object*, %struct._object** %arrayidx, align 8
  %22 = load %struct._object*, %struct._object** %args, align 8
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call15 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call14, %struct._object* %21, %struct._object* %22, %struct.xmlparseobject* %23)
  store %struct._object* %call15, %struct._object** %rv, align 8
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback16 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %24, i32 0, i32 4
  store i32 0, i32* %in_callback16, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %25 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %27, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %30(%struct._object* %31)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %32 = load %struct._object*, %struct._object** %rv, align 8
  %cmp20 = icmp eq %struct._object* %32, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  %33 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %33)
  %34 = load i32, i32* %rc, align 4
  store i32 %34, i32* %retval
  br label %return

if.end.22:                                        ; preds = %do.end
  %35 = load %struct._object*, %struct._object** %rv, align 8
  %call23 = call i64 @PyLong_AsLong(%struct._object* %35)
  %conv = trunc i64 %call23 to i32
  store i32 %conv, i32* %rc, align 4
  br label %do.body.24

do.body.24:                                       ; preds = %if.end.22
  %36 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp25, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %38, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.30, label %if.else.31

if.then.30:                                       ; preds = %do.body.24
  br label %if.end.34

if.else.31:                                       ; preds = %do.body.24
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  %ob_type32 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type32, align 8
  %tp_dealloc33 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc33, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp25, align 8
  call void %41(%struct._object* %42)
  br label %if.end.34

if.end.34:                                        ; preds = %if.else.31, %if.then.30
  br label %do.end.35

do.end.35:                                        ; preds = %if.end.34
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.35, %entry
  %43 = load i32, i32* %rc, align 4
  store i32 %43, i32* %retval
  br label %return

return:                                           ; preds = %if.end.36, %if.then.21, %if.then.12, %if.then.5, %if.then.3
  %44 = load i32, i32* %retval
  ret i32 %44
}

; Function Attrs: nounwind uwtable
define internal void @my_StartDoctypeDeclHandler(i8* %userData, i8* %doctypeName, i8* %sysid, i8* %pubid, i32 %has_internal_subset) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %doctypeName.addr = alloca i8*, align 8
  %sysid.addr = alloca i8*, align 8
  %pubid.addr = alloca i8*, align 8
  %has_internal_subset.addr = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp24 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %doctypeName, i8** %doctypeName.addr, align 8
  store i8* %sysid, i8** %sysid.addr, align 8
  store i8* %pubid, i8** %pubid.addr, align 8
  store i32 %has_internal_subset, i32* %has_internal_subset.addr, align 4
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 15)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.34

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %doctypeName.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %7 = load i8*, i8** %sysid.addr, align 8
  %call8 = call %struct._object* @string_intern(%struct.xmlparseobject* %6, i8* %7)
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %9 = load i8*, i8** %pubid.addr, align 8
  %call9 = call %struct._object* @string_intern(%struct.xmlparseobject* %8, i8* %9)
  %10 = load i32, i32* %has_internal_subset.addr, align 4
  %call10 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.121, i32 0, i32 0), %struct._object* %call7, %struct._object* %call8, %struct._object* %call9, i32 %10)
  store %struct._object* %call10, %struct._object** %args, align 8
  %11 = load %struct._object*, %struct._object** %args, align 8
  %tobool11 = icmp ne %struct._object* %11, null
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.6
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %12)
  br label %return

if.end.13:                                        ; preds = %if.end.6
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %13, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call14 = call %struct.PyCodeObject* @getcode(i32 15, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i32 0, i32 0), i32 775)
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 10
  %15 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %15, i64 15
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  %17 = load %struct._object*, %struct._object** %args, align 8
  %18 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call15 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call14, %struct._object* %16, %struct._object* %17, %struct.xmlparseobject* %18)
  store %struct._object* %call15, %struct._object** %rv, align 8
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback16 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %19, i32 0, i32 4
  store i32 0, i32* %in_callback16, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.13
  %20 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  %27 = load %struct._object*, %struct._object** %rv, align 8
  %cmp20 = icmp eq %struct._object* %27, null
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %do.end
  %28 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %28)
  br label %return

if.end.22:                                        ; preds = %do.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %29 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp24, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_refcnt25 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt25, align 8
  %dec26 = add i64 %31, -1
  store i64 %dec26, i64* %ob_refcnt25, align 8
  %cmp27 = icmp ne i64 %dec26, 0
  br i1 %cmp27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %do.body.23
  br label %if.end.32

if.else.29:                                       ; preds = %do.body.23
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_dealloc31 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc31, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp24, align 8
  call void %34(%struct._object* %35)
  br label %if.end.32

if.end.32:                                        ; preds = %if.else.29, %if.then.28
  br label %do.end.33

do.end.33:                                        ; preds = %if.end.32
  br label %if.end.34

if.end.34:                                        ; preds = %do.end.33, %entry
  br label %return

return:                                           ; preds = %if.end.34, %if.then.21, %if.then.12, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetEndDoctypeDeclHandler(%struct.XML_ParserStruct*, void (i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_EndDoctypeDeclHandler(i8* %userData) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.114, i32 0, i32 0))
  store %struct._object* %call7, %struct._object** %args, align 8
  %4 = load %struct._object*, %struct._object** %args, align 8
  %tobool8 = icmp ne %struct._object* %4, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %5 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %5)
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call11 = call %struct.PyCodeObject* @getcode(i32 16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.123, i32 0, i32 0), i32 777)
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 10
  %8 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %8, i64 16
  %9 = load %struct._object*, %struct._object** %arrayidx, align 8
  %10 = load %struct._object*, %struct._object** %args, align 8
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call12 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call11, %struct._object* %9, %struct._object* %10, %struct.xmlparseobject* %11)
  store %struct._object* %call12, %struct._object** %rv, align 8
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback13 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %12, i32 0, i32 4
  store i32 0, i32* %in_callback13, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %20 = load %struct._object*, %struct._object** %rv, align 8
  %cmp17 = icmp eq %struct._object* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %21 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %21)
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %22 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp21, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %24, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %27(%struct._object* %28)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  br label %return

return:                                           ; preds = %if.end.31, %if.then.18, %if.then.9, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetEntityDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_EntityDeclHandler(i8* %userData, i8* %entityName, i32 %is_parameter_entity, i8* %value, i32 %value_length, i8* %base, i8* %systemId, i8* %publicId, i8* %notationName) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %entityName.addr = alloca i8*, align 8
  %is_parameter_entity.addr = alloca i32, align 4
  %value.addr = alloca i8*, align 8
  %value_length.addr = alloca i32, align 4
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %publicId.addr = alloca i8*, align 8
  %notationName.addr = alloca i8*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %entityName, i8** %entityName.addr, align 8
  store i32 %is_parameter_entity, i32* %is_parameter_entity.addr, align 4
  store i8* %value, i8** %value.addr, align 8
  store i32 %value_length, i32* %value_length.addr, align 4
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8* %publicId, i8** %publicId.addr, align 8
  store i8* %notationName, i8** %notationName.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 17)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.37

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %entityName.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load i32, i32* %is_parameter_entity.addr, align 4
  %7 = load i8*, i8** %value.addr, align 8
  %8 = load i32, i32* %value_length.addr, align 4
  %call8 = call %struct._object* @conv_string_len_to_unicode(i8* %7, i32 %8)
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %10 = load i8*, i8** %base.addr, align 8
  %call9 = call %struct._object* @string_intern(%struct.xmlparseobject* %9, i8* %10)
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %12 = load i8*, i8** %systemId.addr, align 8
  %call10 = call %struct._object* @string_intern(%struct.xmlparseobject* %11, i8* %12)
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %14 = load i8*, i8** %publicId.addr, align 8
  %call11 = call %struct._object* @string_intern(%struct.xmlparseobject* %13, i8* %14)
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %16 = load i8*, i8** %notationName.addr, align 8
  %call12 = call %struct._object* @string_intern(%struct.xmlparseobject* %15, i8* %16)
  %call13 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.124, i32 0, i32 0), %struct._object* %call7, i32 %6, %struct._object* %call8, %struct._object* %call9, %struct._object* %call10, %struct._object* %call11, %struct._object* %call12)
  store %struct._object* %call13, %struct._object** %args, align 8
  %17 = load %struct._object*, %struct._object** %args, align 8
  %tobool14 = icmp ne %struct._object* %17, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.6
  %18 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %18)
  br label %return

if.end.16:                                        ; preds = %if.end.6
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %19, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call17 = call %struct.PyCodeObject* @getcode(i32 17, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0), i32 600)
  %20 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %20, i32 0, i32 10
  %21 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %21, i64 17
  %22 = load %struct._object*, %struct._object** %arrayidx, align 8
  %23 = load %struct._object*, %struct._object** %args, align 8
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call18 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call17, %struct._object* %22, %struct._object* %23, %struct.xmlparseobject* %24)
  store %struct._object* %call18, %struct._object** %rv, align 8
  %25 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback19 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %25, i32 0, i32 4
  store i32 0, i32* %in_callback19, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %26 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body
  br label %if.end.22

if.else:                                          ; preds = %do.body
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  %33 = load %struct._object*, %struct._object** %rv, align 8
  %cmp23 = icmp eq %struct._object* %33, null
  br i1 %cmp23, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %do.end
  %34 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %34)
  br label %return

if.end.25:                                        ; preds = %do.end
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %35 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp27, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %37, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %40(%struct._object* %41)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  br label %if.end.37

if.end.37:                                        ; preds = %do.end.36, %entry
  br label %return

return:                                           ; preds = %if.end.37, %if.then.24, %if.then.15, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetXmlDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_XmlDeclHandler(i8* %userData, i8* %version, i8* %encoding, i32 %standalone) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %version.addr = alloca i8*, align 8
  %encoding.addr = alloca i8*, align 8
  %standalone.addr = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %version, i8** %version.addr, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i32 %standalone, i32* %standalone.addr, align 4
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 18)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load i8*, i8** %version.addr, align 8
  %5 = load i8*, i8** %encoding.addr, align 8
  %6 = load i32, i32* %standalone.addr, align 4
  %call7 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.126, i32 0, i32 0), %struct._object* (i8*)* @conv_string_to_unicode, i8* %4, %struct._object* (i8*)* @conv_string_to_unicode, i8* %5, i32 %6)
  store %struct._object* %call7, %struct._object** %args, align 8
  %7 = load %struct._object*, %struct._object** %args, align 8
  %tobool8 = icmp ne %struct._object* %7, null
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %8)
  br label %return

if.end.10:                                        ; preds = %if.end.6
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call11 = call %struct.PyCodeObject* @getcode(i32 18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i32 0, i32 0), i32 609)
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 10
  %11 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 18
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load %struct._object*, %struct._object** %args, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call12 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call11, %struct._object* %12, %struct._object* %13, %struct.xmlparseobject* %14)
  store %struct._object* %call12, %struct._object** %rv, align 8
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback13 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %15, i32 0, i32 4
  store i32 0, i32* %in_callback13, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %rv, align 8
  %cmp17 = icmp eq %struct._object* %23, null
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %do.end
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %24)
  br label %return

if.end.19:                                        ; preds = %do.end
  br label %do.body.20

do.body.20:                                       ; preds = %if.end.19
  %25 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp21, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %27, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %30(%struct._object* %31)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %do.end.30, %entry
  br label %return

return:                                           ; preds = %if.end.31, %if.then.18, %if.then.9, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetElementDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, %struct.XML_cp*)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_ElementDeclHandler(i8* %userData, i8* %name, %struct.XML_cp* %model) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %name.addr = alloca i8*, align 8
  %model.addr = alloca %struct.XML_cp*, align 8
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %modelobj = alloca %struct._object*, align 8
  %nameobj = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store %struct.XML_cp* %model, %struct.XML_cp** %model.addr, align 8
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 19)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.50

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %rv, align 8
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %finally

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  %call7 = call %struct._object* @conv_content_model(%struct.XML_cp* %4, %struct._object* (i8*)* @conv_string_to_unicode)
  store %struct._object* %call7, %struct._object** %modelobj, align 8
  %5 = load %struct._object*, %struct._object** %modelobj, align 8
  %cmp8 = icmp eq %struct._object* %5, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end.6
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %6)
  br label %finally

if.end.10:                                        ; preds = %if.end.6
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %8 = load i8*, i8** %name.addr, align 8
  %call11 = call %struct._object* @string_intern(%struct.xmlparseobject* %7, i8* %8)
  store %struct._object* %call11, %struct._object** %nameobj, align 8
  %9 = load %struct._object*, %struct._object** %nameobj, align 8
  %cmp12 = icmp eq %struct._object* %9, null
  br i1 %cmp12, label %if.then.13, label %if.end.17

if.then.13:                                       ; preds = %if.end.10
  br label %do.body

do.body:                                          ; preds = %if.then.13
  %10 = load %struct._object*, %struct._object** %modelobj, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %17 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %17)
  br label %finally

if.end.17:                                        ; preds = %if.end.10
  %18 = load %struct._object*, %struct._object** %nameobj, align 8
  %19 = load %struct._object*, %struct._object** %modelobj, align 8
  %call18 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.128, i32 0, i32 0), %struct._object* %18, %struct._object* %19)
  store %struct._object* %call18, %struct._object** %args, align 8
  %20 = load %struct._object*, %struct._object** %args, align 8
  %cmp19 = icmp eq %struct._object* %20, null
  br i1 %cmp19, label %if.then.20, label %if.end.32

if.then.20:                                       ; preds = %if.end.17
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.20
  %21 = load %struct._object*, %struct._object** %modelobj, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp22, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %23, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %26(%struct._object* %27)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %28 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %28)
  br label %finally

if.end.32:                                        ; preds = %if.end.17
  %29 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %29, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call33 = call %struct.PyCodeObject* @getcode(i32 19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.129, i32 0, i32 0), i32 672)
  %30 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %30, i32 0, i32 10
  %31 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %31, i64 19
  %32 = load %struct._object*, %struct._object** %arrayidx, align 8
  %33 = load %struct._object*, %struct._object** %args, align 8
  %34 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call34 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call33, %struct._object* %32, %struct._object* %33, %struct.xmlparseobject* %34)
  store %struct._object* %call34, %struct._object** %rv, align 8
  %35 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback35 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %35, i32 0, i32 4
  store i32 0, i32* %in_callback35, align 4
  %36 = load %struct._object*, %struct._object** %rv, align 8
  %cmp36 = icmp eq %struct._object* %36, null
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  %37 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %37)
  br label %finally

if.end.38:                                        ; preds = %if.end.32
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.38
  %38 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp40, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %40, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %43(%struct._object* %44)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %entry
  br label %finally

finally:                                          ; preds = %if.end.50, %if.then.37, %do.end.31, %do.end, %if.then.9, %if.then.5
  br label %do.body.51

do.body.51:                                       ; preds = %finally
  %45 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %45, %struct._object** %_py_xdecref_tmp, align 8
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp52 = icmp ne %struct._object* %46, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.51
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %47, %struct._object** %_py_decref_tmp55, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %49, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %52(%struct._object* %53)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.51
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  %54 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %54, i32 0, i32 1
  %55 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %56 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  call void @PyExpat_XML_FreeContentModel(%struct.XML_ParserStruct* %55, %struct.XML_cp* %56)
  br label %return

return:                                           ; preds = %do.end.66, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetAttlistDeclHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i8*, i8*, i8*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_AttlistDeclHandler(i8* %userData, i8* %elname, i8* %attname, i8* %att_type, i8* %dflt, i32 %isrequired) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %elname.addr = alloca i8*, align 8
  %attname.addr = alloca i8*, align 8
  %att_type.addr = alloca i8*, align 8
  %dflt.addr = alloca i8*, align 8
  %isrequired.addr = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %elname, i8** %elname.addr, align 8
  store i8* %attname, i8** %attname.addr, align 8
  store i8* %att_type, i8** %att_type.addr, align 8
  store i8* %dflt, i8** %dflt.addr, align 8
  store i32 %isrequired, i32* %isrequired.addr, align 4
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.33

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %elname.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %7 = load i8*, i8** %attname.addr, align 8
  %call8 = call %struct._object* @string_intern(%struct.xmlparseobject* %6, i8* %7)
  %8 = load i8*, i8** %att_type.addr, align 8
  %9 = load i8*, i8** %dflt.addr, align 8
  %10 = load i32, i32* %isrequired.addr, align 4
  %call9 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.131, i32 0, i32 0), %struct._object* %call7, %struct._object* %call8, %struct._object* (i8*)* @conv_string_to_unicode, i8* %8, %struct._object* (i8*)* @conv_string_to_unicode, i8* %9, i32 %10)
  store %struct._object* %call9, %struct._object** %args, align 8
  %11 = load %struct._object*, %struct._object** %args, align 8
  %tobool10 = icmp ne %struct._object* %11, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.6
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %12)
  br label %return

if.end.12:                                        ; preds = %if.end.6
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %13, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call13 = call %struct.PyCodeObject* @getcode(i32 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.132, i32 0, i32 0), i32 697)
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 10
  %15 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %15, i64 20
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  %17 = load %struct._object*, %struct._object** %args, align 8
  %18 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call14 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call13, %struct._object* %16, %struct._object* %17, %struct.xmlparseobject* %18)
  store %struct._object* %call14, %struct._object** %rv, align 8
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback15 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %19, i32 0, i32 4
  store i32 0, i32* %in_callback15, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %20 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %do.body
  br label %if.end.18

if.else:                                          ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.18
  %27 = load %struct._object*, %struct._object** %rv, align 8
  %cmp19 = icmp eq %struct._object* %27, null
  br i1 %cmp19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %do.end
  %28 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %28)
  br label %return

if.end.21:                                        ; preds = %do.end
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %29 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp23, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %31, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %34(%struct._object* %35)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %entry
  br label %return

return:                                           ; preds = %if.end.33, %if.then.20, %if.then.11, %if.then.5, %if.then.3
  ret void
}

declare void @PyExpat_XML_SetSkippedEntityHandler(%struct.XML_ParserStruct*, void (i8*, i8*, i32)*) #1

; Function Attrs: nounwind uwtable
define internal void @my_SkippedEntityHandler(i8* %userData, i8* %entityName, i32 %is_parameter_entity) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %entityName.addr = alloca i8*, align 8
  %is_parameter_entity.addr = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  %args = alloca %struct._object*, align 8
  %rv = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %entityName, i8** %entityName.addr, align 8
  store i32 %is_parameter_entity, i32* %is_parameter_entity.addr, align 4
  %0 = load i8*, i8** %userData.addr, align 8
  %1 = bitcast i8* %0 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %self, align 8
  store %struct._object* null, %struct._object** %args, align 8
  store %struct._object* null, %struct._object** %rv, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %2, i32 21)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end.32

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_Occurred()
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  br label %return

if.end:                                           ; preds = %if.then
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call4 = call i32 @flush_character_buffer(%struct.xmlparseobject* %3)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  br label %return

if.end.6:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %5 = load i8*, i8** %entityName.addr, align 8
  %call7 = call %struct._object* @string_intern(%struct.xmlparseobject* %4, i8* %5)
  %6 = load i32, i32* %is_parameter_entity.addr, align 4
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.133, i32 0, i32 0), %struct._object* %call7, i32 %6)
  store %struct._object* %call8, %struct._object** %args, align 8
  %7 = load %struct._object*, %struct._object** %args, align 8
  %tobool9 = icmp ne %struct._object* %7, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.6
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %8)
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call12 = call %struct.PyCodeObject* @getcode(i32 21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.134, i32 0, i32 0), i32 705)
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 10
  %11 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %11, i64 21
  %12 = load %struct._object*, %struct._object** %arrayidx, align 8
  %13 = load %struct._object*, %struct._object** %args, align 8
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %call13 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call12, %struct._object* %12, %struct._object* %13, %struct.xmlparseobject* %14)
  store %struct._object* %call13, %struct._object** %rv, align 8
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %15, i32 0, i32 4
  store i32 0, i32* %in_callback14, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %16 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp15 = icmp ne i64 %dec, 0
  br i1 %cmp15, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body
  br label %if.end.17

if.else:                                          ; preds = %do.body
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
  %23 = load %struct._object*, %struct._object** %rv, align 8
  %cmp18 = icmp eq %struct._object* %23, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @flag_error(%struct.xmlparseobject* %24)
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %25 = load %struct._object*, %struct._object** %rv, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp22, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %27, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %30(%struct._object* %31)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %do.end.31, %entry
  br label %return

return:                                           ; preds = %if.end.32, %if.then.19, %if.then.10, %if.then.5, %if.then.3
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @have_handler(%struct.xmlparseobject* %self, i32 %type) #0 {
entry:
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %type.addr = alloca i32, align 4
  %handler = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  %0 = load i32, i32* %type.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %1, i32 0, i32 10
  %2 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %2, i64 %idxprom
  %3 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %3, %struct._object** %handler, align 8
  %4 = load %struct._object*, %struct._object** %handler, align 8
  %cmp = icmp ne %struct._object* %4, null
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal i32 @flush_character_buffer(%struct.xmlparseobject* %self) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %rc = alloca i32, align 4
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %0, i32 0, i32 6
  %1 = load i8*, i8** %buffer, align 8
  %cmp = icmp eq i8* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_used = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %2, i32 0, i32 8
  %3 = load i32, i32* %buffer_used, align 4
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %5 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer2 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %5, i32 0, i32 6
  %6 = load i8*, i8** %buffer2, align 8
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_used3 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 8
  %8 = load i32, i32* %buffer_used3, align 4
  %call = call i32 @call_character_handler(%struct.xmlparseobject* %4, i8* %6, i32 %8)
  store i32 %call, i32* %rc, align 4
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_used4 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 8
  store i32 0, i32* %buffer_used4, align 4
  %10 = load i32, i32* %rc, align 4
  store i32 %10, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

declare i32 @PyExpat_XML_GetSpecifiedAttributeCount(%struct.XML_ParserStruct*) #1

; Function Attrs: nounwind uwtable
define internal void @flag_error(%struct.xmlparseobject* %self) #0 {
entry:
  %self.addr = alloca %struct.xmlparseobject*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  call void @clear_handlers(%struct.xmlparseobject* %0, i32 0)
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %1, i32 0, i32 1
  %2 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  call void @PyExpat_XML_SetExternalEntityRefHandler(%struct.XML_ParserStruct* %2, i32 (%struct.XML_ParserStruct*, i8*, i8*, i8*, i8*)* @error_external_entity_ref_handler)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @string_intern(%struct.xmlparseobject* %self, i8* %str) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %str.addr = alloca i8*, align 8
  %result = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %call = call %struct._object* @conv_string_to_unicode(i8* %0)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %2, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %3, i32 0, i32 9
  %4 = load %struct._object*, %struct._object** %intern, align 8
  %tobool1 = icmp ne %struct._object* %4, null
  br i1 %tobool1, label %if.end.3, label %if.then.2

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern4 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 9
  %7 = load %struct._object*, %struct._object** %intern4, align 8
  %8 = load %struct._object*, %struct._object** %result, align 8
  %call5 = call %struct._object* @PyDict_GetItem(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call5, %struct._object** %value, align 8
  %9 = load %struct._object*, %struct._object** %value, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.end.11, label %if.then.7

if.then.7:                                        ; preds = %if.end.3
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern8 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 9
  %11 = load %struct._object*, %struct._object** %intern8, align 8
  %12 = load %struct._object*, %struct._object** %result, align 8
  %13 = load %struct._object*, %struct._object** %result, align 8
  %call9 = call i32 @PyDict_SetItem(%struct._object* %11, %struct._object* %12, %struct._object* %13)
  %cmp = icmp eq i32 %call9, 0
  br i1 %cmp, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %if.then.7
  %14 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %14, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then.7
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %17 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %17, %struct._object** %_py_decref_tmp, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0
  %19 = load i64, i64* %ob_refcnt12, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %ob_refcnt12, align 8
  %cmp13 = icmp ne i64 %dec, 0
  br i1 %cmp13, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 1
  %21 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %21, i32 0, i32 4
  %22 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %22(%struct._object* %23)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %24 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %24, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.else, %if.then.10, %if.then.2, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @conv_string_to_unicode(i8* %str) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  store i8* %str, i8** %str.addr, align 8
  %0 = load i8*, i8** %str.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i8*, i8** %str.addr, align 8
  %call = call i64 @strlen(i8* %3) #6
  %call1 = call %struct._object* @PyUnicode_DecodeUTF8(i8* %2, i64 %call, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0))
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @call_with_frame(%struct.PyCodeObject* %c, %struct._object* %func, %struct._object* %args, %struct.xmlparseobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %c.addr = alloca %struct.PyCodeObject*, align 8
  %func.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %f = alloca %struct._frame*, align 8
  %res = alloca %struct._object*, align 8
  %globals = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct.PyCodeObject* %c, %struct.PyCodeObject** %c.addr, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
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
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct.PyCodeObject*, %struct.PyCodeObject** %c.addr, align 8
  %cmp = icmp eq %struct.PyCodeObject* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %call = call %struct._object* @PyEval_GetGlobals()
  store %struct._object* %call, %struct._object** %globals, align 8
  %12 = load %struct._object*, %struct._object** %globals, align 8
  %cmp7 = icmp eq %struct._object* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %13 = load %struct._ts*, %struct._ts** %tstate, align 8
  %14 = load %struct.PyCodeObject*, %struct.PyCodeObject** %c.addr, align 8
  %15 = load %struct._object*, %struct._object** %globals, align 8
  %call10 = call %struct._frame* @PyFrame_New(%struct._ts* %13, %struct.PyCodeObject* %14, %struct._object* %15, %struct._object* null)
  store %struct._frame* %call10, %struct._frame** %f, align 8
  %16 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp11 = icmp eq %struct._frame* %16, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %17 = load %struct._frame*, %struct._frame** %f, align 8
  %18 = load %struct._ts*, %struct._ts** %tstate, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %18, i32 0, i32 3
  store %struct._frame* %17, %struct._frame** %frame, align 8
  %19 = load %struct._ts*, %struct._ts** %tstate, align 8
  %20 = load %struct._frame*, %struct._frame** %f, align 8
  %call14 = call i32 @trace_frame(%struct._ts* %19, %struct._frame* %20, i32 0, %struct._object* @_Py_NoneStruct)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.13
  %21 = load %struct._object*, %struct._object** %func.addr, align 8
  %22 = load %struct._object*, %struct._object** %args.addr, align 8
  %call18 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %21, %struct._object* %22, %struct._object* null)
  store %struct._object* %call18, %struct._object** %res, align 8
  %23 = load %struct._object*, %struct._object** %res, align 8
  %cmp19 = icmp eq %struct._object* %23, null
  br i1 %cmp19, label %if.then.20, label %if.else

if.then.20:                                       ; preds = %if.end.17
  %24 = load %struct._ts*, %struct._ts** %tstate, align 8
  %curexc_traceback = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 15
  %25 = load %struct._object*, %struct._object** %curexc_traceback, align 8
  %cmp21 = icmp eq %struct._object* %25, null
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.20
  %26 = load %struct._frame*, %struct._frame** %f, align 8
  %call23 = call i32 @PyTraceBack_Here(%struct._frame* %26)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.20
  %27 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %27, i32 0, i32 1
  %28 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call25 = call i32 @PyExpat_XML_StopParser(%struct.XML_ParserStruct* %28, i8 zeroext 0)
  %29 = load %struct._ts*, %struct._ts** %tstate, align 8
  %30 = load %struct._frame*, %struct._frame** %f, align 8
  %call26 = call i32 @trace_frame_exc(%struct._ts* %29, %struct._frame* %30)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then.28, label %if.end.29

if.then.28:                                       ; preds = %if.end.24
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.24
  br label %if.end.45

if.else:                                          ; preds = %if.end.17
  %31 = load %struct._ts*, %struct._ts** %tstate, align 8
  %32 = load %struct._frame*, %struct._frame** %f, align 8
  %33 = load %struct._object*, %struct._object** %res, align 8
  %call30 = call i32 @trace_frame(%struct._ts* %31, %struct._frame* %32, i32 3, %struct._object* %33)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.32
  %34 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %34, %struct._object** %_py_tmp, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp34 = icmp ne %struct._object* %35, null
  br i1 %cmp34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %res, align 8
  br label %do.body.36

do.body.36:                                       ; preds = %if.then.35
  %36 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %38, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp38 = icmp ne i64 %dec, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.36
  br label %if.end.41

if.else.40:                                       ; preds = %do.body.36
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %41(%struct._object* %42)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.41
  br label %if.end.42

if.end.42:                                        ; preds = %do.end, %do.body
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %if.else
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.end.29
  %43 = load %struct._frame*, %struct._frame** %f, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %43, i32 0, i32 1
  %44 = load %struct._frame*, %struct._frame** %f_back, align 8
  %45 = load %struct._ts*, %struct._ts** %tstate, align 8
  %frame46 = getelementptr inbounds %struct._ts, %struct._ts* %45, i32 0, i32 3
  store %struct._frame* %44, %struct._frame** %frame46, align 8
  br label %do.body.47

do.body.47:                                       ; preds = %if.end.45
  %46 = load %struct._frame*, %struct._frame** %f, align 8
  %47 = bitcast %struct._frame* %46 to %struct._object*
  store %struct._object* %47, %struct._object** %_py_decref_tmp49, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0
  %49 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %49, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.47
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.47
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %52(%struct._object* %53)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  %54 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %54, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.58, %if.then.28, %if.then.16, %if.then.12, %if.then.8, %if.then
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind uwtable
define internal %struct.PyCodeObject* @getcode(i32 %slot, i8* %func_name, i32 %lineno) #0 {
entry:
  %slot.addr = alloca i32, align 4
  %func_name.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  store i32 %slot, i32* %slot.addr, align 4
  store i8* %func_name, i8** %func_name.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load i32, i32* %slot.addr, align 4
  %idxprom = zext i32 %0 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %tb_code = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 3
  %1 = load %struct.PyCodeObject*, %struct.PyCodeObject** %tb_code, align 8
  %cmp = icmp eq %struct.PyCodeObject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i8*, i8** %func_name.addr, align 8
  %3 = load i32, i32* %lineno.addr, align 4
  %call = call %struct.PyCodeObject* @PyCode_NewEmpty(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.101, i32 0, i32 0), i8* %2, i32 %3)
  %4 = load i32, i32* %slot.addr, align 4
  %idxprom1 = zext i32 %4 to i64
  %arrayidx2 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom1
  %tb_code3 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx2, i32 0, i32 3
  store %struct.PyCodeObject* %call, %struct.PyCodeObject** %tb_code3, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %slot.addr, align 4
  %idxprom4 = zext i32 %5 to i64
  %arrayidx5 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom4
  %tb_code6 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx5, i32 0, i32 3
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %tb_code6, align 8
  ret %struct.PyCodeObject* %6
}

; Function Attrs: nounwind uwtable
define internal i32 @call_character_handler(%struct.xmlparseobject* %self, i8* %buffer, i32 %len) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %buffer.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %args = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store i8* %buffer, i8** %buffer.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %call = call i32 @have_handler(%struct.xmlparseobject* %0, i32 3)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyTuple_New(i64 1)
  store %struct._object* %call1, %struct._object** %args, align 8
  %1 = load %struct._object*, %struct._object** %args, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %2 = load i8*, i8** %buffer.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %call4 = call %struct._object* @conv_string_len_to_unicode(i8* %2, i32 %3)
  store %struct._object* %call4, %struct._object** %temp, align 8
  %4 = load %struct._object*, %struct._object** %temp, align 8
  %cmp5 = icmp eq %struct._object* %4, null
  br i1 %cmp5, label %if.then.6, label %if.end.10

if.then.6:                                        ; preds = %if.end.3
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %5 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  call void @flag_error(%struct.xmlparseobject* %12)
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %13, i32 0, i32 1
  %14 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  call void @PyExpat_XML_SetCharacterDataHandler(%struct.XML_ParserStruct* %14, void (i8*, i8*, i32)* @noop_character_data_handler)
  store i32 -1, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %temp, align 8
  %16 = load %struct._object*, %struct._object** %args, align 8
  %17 = bitcast %struct._object* %16 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %17, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  store %struct._object* %15, %struct._object** %arrayidx, align 8
  %18 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %18, i32 0, i32 4
  store i32 1, i32* %in_callback, align 4
  %call11 = call %struct.PyCodeObject* @getcode(i32 3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.99, i32 0, i32 0), i32 379)
  %19 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %19, i32 0, i32 10
  %20 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx12 = getelementptr %struct._object*, %struct._object** %20, i64 3
  %21 = load %struct._object*, %struct._object** %arrayidx12, align 8
  %22 = load %struct._object*, %struct._object** %args, align 8
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %call13 = call %struct._object* @call_with_frame(%struct.PyCodeObject* %call11, %struct._object* %21, %struct._object* %22, %struct.xmlparseobject* %23)
  store %struct._object* %call13, %struct._object** %temp, align 8
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %in_callback14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %24, i32 0, i32 4
  store i32 0, i32* %in_callback14, align 4
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.10
  %25 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp16, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %27, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.20, label %if.else.21

if.then.20:                                       ; preds = %do.body.15
  br label %if.end.24

if.else.21:                                       ; preds = %do.body.15
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type22 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type22, align 8
  %tp_dealloc23 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc23, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %30(%struct._object* %31)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.then.20
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %32 = load %struct._object*, %struct._object** %temp, align 8
  %cmp26 = icmp eq %struct._object* %32, null
  br i1 %cmp26, label %if.then.27, label %if.end.29

if.then.27:                                       ; preds = %do.end.25
  %33 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  call void @flag_error(%struct.xmlparseobject* %33)
  %34 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself28 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %34, i32 0, i32 1
  %35 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself28, align 8
  call void @PyExpat_XML_SetCharacterDataHandler(%struct.XML_ParserStruct* %35, void (i8*, i8*, i32)* @noop_character_data_handler)
  store i32 -1, i32* %retval
  br label %return

if.end.29:                                        ; preds = %do.end.25
  br label %do.body.30

do.body.30:                                       ; preds = %if.end.29
  %36 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp31, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %38, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %41(%struct._object* %42)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.40, %if.then.27, %do.end, %if.then.2, %if.then
  %43 = load i32, i32* %retval
  ret i32 %43
}

declare %struct._object* @PyTuple_New(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @conv_string_len_to_unicode(i8* %str, i32 %len) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %str.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  %0 = load i8*, i8** %str.addr, align 8
  %cmp = icmp eq i8* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %str.addr, align 8
  %3 = load i32, i32* %len.addr, align 4
  %conv = sext i32 %3 to i64
  %call = call %struct._object* @PyUnicode_DecodeUTF8(i8* %2, i64 %conv, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0))
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal void @noop_character_data_handler(i8* %userData, i8* %data, i32 %len) #0 {
entry:
  %userData.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  store i8* %userData, i8** %userData.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %len, i32* %len.addr, align 4
  ret void
}

declare %struct._object* @PyUnicode_DecodeUTF8(i8*, i64, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @clear_handlers(%struct.xmlparseobject* %self, i32 %initial) #0 {
entry:
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %initial.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store i32 %initial, i32* %initial.addr, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %initial.addr, align 4
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %4, i32 0, i32 10
  %5 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx2 = getelementptr %struct._object*, %struct._object** %5, i64 %idxprom1
  store %struct._object* null, %struct._object** %arrayidx2, align 8
  br label %if.end.19

if.else:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4
  %idxprom3 = sext i32 %6 to i64
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers4 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 10
  %8 = load %struct._object**, %struct._object*** %handlers4, align 8
  %arrayidx5 = getelementptr %struct._object*, %struct._object** %8, i64 %idxprom3
  %9 = load %struct._object*, %struct._object** %arrayidx5, align 8
  store %struct._object* %9, %struct._object** %temp, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers7 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %11, i32 0, i32 10
  %12 = load %struct._object**, %struct._object*** %handlers7, align 8
  %arrayidx8 = getelementptr %struct._object*, %struct._object** %12, i64 %idxprom6
  store %struct._object* null, %struct._object** %arrayidx8, align 8
  br label %do.body

do.body:                                          ; preds = %if.else
  %13 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %13, %struct._object** %_py_xdecref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp9 = icmp ne %struct._object* %14, null
  br i1 %cmp9, label %if.then.10, label %if.end.15

if.then.10:                                       ; preds = %do.body
  br label %do.body.11

do.body.11:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.11
  br label %if.end

if.else.14:                                       ; preds = %do.body.11
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end

if.end:                                           ; preds = %if.else.14, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.15

if.end.15:                                        ; preds = %do.end, %do.body
  br label %do.end.16

do.end.16:                                        ; preds = %if.end.15
  %22 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %22 to i64
  %arrayidx18 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom17
  %setter = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx18, i32 0, i32 1
  %23 = load void (%struct.XML_ParserStruct*, i8*)*, void (%struct.XML_ParserStruct*, i8*)** %setter, align 8
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %24, i32 0, i32 1
  %25 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  call void %23(%struct.XML_ParserStruct* %25, i8* null)
  br label %if.end.19

if.end.19:                                        ; preds = %do.end.16, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @error_external_entity_ref_handler(%struct.XML_ParserStruct* %parser, i8* %context, i8* %base, i8* %systemId, i8* %publicId) #0 {
entry:
  %parser.addr = alloca %struct.XML_ParserStruct*, align 8
  %context.addr = alloca i8*, align 8
  %base.addr = alloca i8*, align 8
  %systemId.addr = alloca i8*, align 8
  %publicId.addr = alloca i8*, align 8
  store %struct.XML_ParserStruct* %parser, %struct.XML_ParserStruct** %parser.addr, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %base, i8** %base.addr, align 8
  store i8* %systemId, i8** %systemId.addr, align 8
  store i8* %publicId, i8** %publicId.addr, align 8
  ret i32 0
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

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
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._object* @PyEval_GetGlobals() #1

declare %struct._frame* @PyFrame_New(%struct._ts*, %struct.PyCodeObject*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @trace_frame(%struct._ts* %tstate, %struct._frame* %f, i32 %code, %struct._object* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %tstate.addr = alloca %struct._ts*, align 8
  %f.addr = alloca %struct._frame*, align 8
  %code.addr = alloca i32, align 4
  %val.addr = alloca %struct._object*, align 8
  %result = alloca i32, align 4
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  store %struct._object* %val, %struct._object** %val.addr, align 8
  store i32 0, i32* %result, align 4
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %use_tracing = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 8
  %1 = load i32, i32* %use_tracing, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %tracing = getelementptr inbounds %struct._ts, %struct._ts* %2, i32 0, i32 7
  %3 = load i32, i32* %tracing, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profilefunc = getelementptr inbounds %struct._ts, %struct._ts* %4, i32 0, i32 9
  %5 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_profilefunc, align 8
  %cmp = icmp ne i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* %5, null
  br i1 %cmp, label %if.then.2, label %if.end.13

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %tracing3 = getelementptr inbounds %struct._ts, %struct._ts* %6, i32 0, i32 7
  %7 = load i32, i32* %tracing3, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %tracing3, align 4
  %8 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profilefunc4 = getelementptr inbounds %struct._ts, %struct._ts* %8, i32 0, i32 9
  %9 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_profilefunc4, align 8
  %10 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profileobj = getelementptr inbounds %struct._ts, %struct._ts* %10, i32 0, i32 11
  %11 = load %struct._object*, %struct._object** %c_profileobj, align 8
  %12 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %13 = load i32, i32* %code.addr, align 4
  %14 = load %struct._object*, %struct._object** %val.addr, align 8
  %call = call i32 %9(%struct._object* %11, %struct._frame* %12, i32 %13, %struct._object* %14)
  store i32 %call, i32* %result, align 4
  %15 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_tracefunc = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 10
  %16 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_tracefunc, align 8
  %cmp5 = icmp ne i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* %16, null
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %if.then.2
  %17 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profilefunc6 = getelementptr inbounds %struct._ts, %struct._ts* %17, i32 0, i32 9
  %18 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_profilefunc6, align 8
  %cmp7 = icmp ne i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* %18, null
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.then.2
  %19 = phi i1 [ true, %if.then.2 ], [ %cmp7, %lor.rhs ]
  %lor.ext = zext i1 %19 to i32
  %20 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %use_tracing8 = getelementptr inbounds %struct._ts, %struct._ts* %20, i32 0, i32 8
  store i32 %lor.ext, i32* %use_tracing8, align 4
  %21 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %tracing9 = getelementptr inbounds %struct._ts, %struct._ts* %21, i32 0, i32 7
  %22 = load i32, i32* %tracing9, align 4
  %dec = add i32 %22, -1
  store i32 %dec, i32* %tracing9, align 4
  %23 = load i32, i32* %result, align 4
  %tobool10 = icmp ne i32 %23, 0
  br i1 %tobool10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %lor.end
  %24 = load i32, i32* %result, align 4
  store i32 %24, i32* %retval
  br label %return

if.end.12:                                        ; preds = %lor.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.end
  %25 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_tracefunc14 = getelementptr inbounds %struct._ts, %struct._ts* %25, i32 0, i32 10
  %26 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_tracefunc14, align 8
  %cmp15 = icmp ne i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* %26, null
  br i1 %cmp15, label %if.then.16, label %if.end.31

if.then.16:                                       ; preds = %if.end.13
  %27 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %tracing17 = getelementptr inbounds %struct._ts, %struct._ts* %27, i32 0, i32 7
  %28 = load i32, i32* %tracing17, align 4
  %inc18 = add i32 %28, 1
  store i32 %inc18, i32* %tracing17, align 4
  %29 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_tracefunc19 = getelementptr inbounds %struct._ts, %struct._ts* %29, i32 0, i32 10
  %30 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_tracefunc19, align 8
  %31 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_traceobj = getelementptr inbounds %struct._ts, %struct._ts* %31, i32 0, i32 12
  %32 = load %struct._object*, %struct._object** %c_traceobj, align 8
  %33 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %34 = load i32, i32* %code.addr, align 4
  %35 = load %struct._object*, %struct._object** %val.addr, align 8
  %call20 = call i32 %30(%struct._object* %32, %struct._frame* %33, i32 %34, %struct._object* %35)
  store i32 %call20, i32* %result, align 4
  %36 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_tracefunc21 = getelementptr inbounds %struct._ts, %struct._ts* %36, i32 0, i32 10
  %37 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_tracefunc21, align 8
  %cmp22 = icmp ne i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* %37, null
  br i1 %cmp22, label %lor.end.26, label %lor.rhs.23

lor.rhs.23:                                       ; preds = %if.then.16
  %38 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_profilefunc24 = getelementptr inbounds %struct._ts, %struct._ts* %38, i32 0, i32 9
  %39 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_profilefunc24, align 8
  %cmp25 = icmp ne i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* %39, null
  br label %lor.end.26

lor.end.26:                                       ; preds = %lor.rhs.23, %if.then.16
  %40 = phi i1 [ true, %if.then.16 ], [ %cmp25, %lor.rhs.23 ]
  %lor.ext27 = zext i1 %40 to i32
  %41 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %use_tracing28 = getelementptr inbounds %struct._ts, %struct._ts* %41, i32 0, i32 8
  store i32 %lor.ext27, i32* %use_tracing28, align 4
  %42 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %tracing29 = getelementptr inbounds %struct._ts, %struct._ts* %42, i32 0, i32 7
  %43 = load i32, i32* %tracing29, align 4
  %dec30 = add i32 %43, -1
  store i32 %dec30, i32* %tracing29, align 4
  br label %if.end.31

if.end.31:                                        ; preds = %lor.end.26, %if.end.13
  %44 = load i32, i32* %result, align 4
  store i32 %44, i32* %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.11, %if.then
  %45 = load i32, i32* %retval
  ret i32 %45
}

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyTraceBack_Here(%struct._frame*) #1

declare i32 @PyExpat_XML_StopParser(%struct.XML_ParserStruct*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal i32 @trace_frame_exc(%struct._ts* %tstate, %struct._frame* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %tstate.addr = alloca %struct._ts*, align 8
  %f.addr = alloca %struct._frame*, align 8
  %type = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %traceback = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  %_py_xdecref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp36 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %c_tracefunc = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 10
  %1 = load i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)** %c_tracefunc, align 8
  %cmp = icmp eq i32 (%struct._object*, %struct._frame*, i32, %struct._object*)* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %type, %struct._object** %value, %struct._object** %traceback)
  %2 = load %struct._object*, %struct._object** %value, align 8
  %cmp1 = icmp eq %struct._object* %2, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8
  %3 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %5 = load %struct._object*, %struct._object** %type, align 8
  %6 = load %struct._object*, %struct._object** %value, align 8
  %7 = load %struct._object*, %struct._object** %traceback, align 8
  %call = call %struct._object* (i64, ...) @PyTuple_Pack(i64 3, %struct._object* %5, %struct._object* %6, %struct._object* %7)
  store %struct._object* %call, %struct._object** %arg, align 8
  %8 = load %struct._object*, %struct._object** %arg, align 8
  %cmp4 = icmp eq %struct._object* %8, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %type, align 8
  %10 = load %struct._object*, %struct._object** %value, align 8
  %11 = load %struct._object*, %struct._object** %traceback, align 8
  call void @PyErr_Restore(%struct._object* %9, %struct._object* %10, %struct._object* %11)
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end.3
  %12 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %13 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %14 = load %struct._object*, %struct._object** %arg, align 8
  %call7 = call i32 @trace_frame(%struct._ts* %12, %struct._frame* %13, i32 1, %struct._object* %14)
  store i32 %call7, i32* %err, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %15 = load %struct._object*, %struct._object** %arg, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt8, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt8, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.10, label %if.else

if.then.10:                                       ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %20(%struct._object* %21)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.10
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %22 = load i32, i32* %err, align 4
  %cmp12 = icmp eq i32 %22, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.end
  %23 = load %struct._object*, %struct._object** %type, align 8
  %24 = load %struct._object*, %struct._object** %value, align 8
  %25 = load %struct._object*, %struct._object** %traceback, align 8
  call void @PyErr_Restore(%struct._object* %23, %struct._object* %24, %struct._object* %25)
  br label %if.end.65

if.else.14:                                       ; preds = %do.end
  br label %do.body.15

do.body.15:                                       ; preds = %if.else.14
  %26 = load %struct._object*, %struct._object** %type, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp16 = icmp ne %struct._object* %27, null
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %do.body.15
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp19, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %30, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %33(%struct._object* %34)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.15
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %35 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %35, %struct._object** %_py_xdecref_tmp32, align 8
  %36 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8
  %cmp33 = icmp ne %struct._object* %36, null
  br i1 %cmp33, label %if.then.34, label %if.end.46

if.then.34:                                       ; preds = %do.body.31
  br label %do.body.35

do.body.35:                                       ; preds = %if.then.34
  %37 = load %struct._object*, %struct._object** %_py_xdecref_tmp32, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp36, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt37, align 8
  %dec38 = add i64 %39, -1
  store i64 %dec38, i64* %ob_refcnt37, align 8
  %cmp39 = icmp ne i64 %dec38, 0
  br i1 %cmp39, label %if.then.40, label %if.else.41

if.then.40:                                       ; preds = %do.body.35
  br label %if.end.44

if.else.41:                                       ; preds = %do.body.35
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp36, align 8
  call void %42(%struct._object* %43)
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
  %44 = load %struct._object*, %struct._object** %traceback, align 8
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp49, align 8
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  %cmp50 = icmp ne %struct._object* %45, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp53, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %48, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %51(%struct._object* %52)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.48
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %if.then.13
  %53 = load i32, i32* %err, align 4
  store i32 %53, i32* %retval
  br label %return

return:                                           ; preds = %if.end.65, %if.then.5, %if.then
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @PyTuple_Pack(i64, ...) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct.PyCodeObject* @PyCode_NewEmpty(i8*, i8*, i32) #1

declare i64 @PyLong_AsLong(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @conv_content_model(%struct.XML_cp* %model, %struct._object* (i8*)* %conv_string) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %model.addr = alloca %struct.XML_cp*, align 8
  %conv_string.addr = alloca %struct._object* (i8*)*, align 8
  %result = alloca %struct._object*, align 8
  %children = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %child = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.XML_cp* %model, %struct.XML_cp** %model.addr, align 8
  store %struct._object* (i8*)* %conv_string, %struct._object* (i8*)** %conv_string.addr, align 8
  store %struct._object* null, %struct._object** %result, align 8
  %0 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  %numchildren = getelementptr inbounds %struct.XML_cp, %struct.XML_cp* %0, i32 0, i32 3
  %1 = load i32, i32* %numchildren, align 4
  %conv = zext i32 %1 to i64
  %call = call %struct._object* @PyTuple_New(i64 %conv)
  store %struct._object* %call, %struct._object** %children, align 8
  %2 = load %struct._object*, %struct._object** %children, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.23

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4
  %4 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  %numchildren2 = getelementptr inbounds %struct.XML_cp, %struct.XML_cp* %4, i32 0, i32 3
  %5 = load i32, i32* %numchildren2, align 4
  %cmp3 = icmp slt i32 %3, %5
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4
  %idxprom = sext i32 %6 to i64
  %7 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  %children5 = getelementptr inbounds %struct.XML_cp, %struct.XML_cp* %7, i32 0, i32 4
  %8 = load %struct.XML_cp*, %struct.XML_cp** %children5, align 8
  %arrayidx = getelementptr %struct.XML_cp, %struct.XML_cp* %8, i64 %idxprom
  %9 = load %struct._object* (i8*)*, %struct._object* (i8*)** %conv_string.addr, align 8
  %call6 = call %struct._object* @conv_content_model(%struct.XML_cp* %arrayidx, %struct._object* (i8*)* %9)
  store %struct._object* %call6, %struct._object** %child, align 8
  %10 = load %struct._object*, %struct._object** %child, align 8
  %cmp7 = icmp eq %struct._object* %10, null
  br i1 %cmp7, label %if.then.9, label %if.end.19

if.then.9:                                        ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %11 = load %struct._object*, %struct._object** %children, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp10 = icmp ne %struct._object* %12, null
  br i1 %cmp10, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.16, label %if.else

if.then.16:                                       ; preds = %do.body.13
  br label %if.end

if.else:                                          ; preds = %do.body.13
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.16
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %for.body
  %20 = load %struct._object*, %struct._object** %child, align 8
  %21 = load i32, i32* %i, align 4
  %idxprom20 = sext i32 %21 to i64
  %22 = load %struct._object*, %struct._object** %children, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %23, i32 0, i32 1
  %arrayidx21 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %idxprom20
  store %struct._object* %20, %struct._object** %arrayidx21, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.19
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  %type = getelementptr inbounds %struct.XML_cp, %struct.XML_cp* %25, i32 0, i32 0
  %26 = load i32, i32* %type, align 4
  %27 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  %quant = getelementptr inbounds %struct.XML_cp, %struct.XML_cp* %27, i32 0, i32 1
  %28 = load i32, i32* %quant, align 4
  %29 = load %struct._object* (i8*)*, %struct._object* (i8*)** %conv_string.addr, align 8
  %30 = load %struct.XML_cp*, %struct.XML_cp** %model.addr, align 8
  %name = getelementptr inbounds %struct.XML_cp, %struct.XML_cp* %30, i32 0, i32 2
  %31 = load i8*, i8** %name, align 8
  %32 = load %struct._object*, %struct._object** %children, align 8
  %call22 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.130, i32 0, i32 0), i32 %26, i32 %28, %struct._object* (i8*)* %29, i8* %31, %struct._object* %32)
  store %struct._object* %call22, %struct._object** %result, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %for.end, %entry
  %33 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %33, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.23, %do.end.18
  %34 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %34
}

declare void @PyExpat_XML_FreeContentModel(%struct.XML_ParserStruct*, %struct.XML_cp*) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @handlername2int(%struct._object* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %name1 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 0
  %1 = load i8*, i8** %name1, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %3 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom2
  %name4 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx3, i32 0, i32 0
  %4 = load i8*, i8** %name4, align 8
  %call = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %2, i8* %4)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  store i32 %5, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, i32* %i, align 4
  %inc = add i32 %6, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare i64 @PyExpat_XML_GetCurrentByteIndex(%struct.XML_ParserStruct*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_pybool(i32 %istrue) #0 {
entry:
  %istrue.addr = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  store i32 %istrue, i32* %istrue.addr, align 4
  %0 = load i32, i32* %istrue.addr, align 4
  %tobool = icmp ne i32 %0, 0
  %cond = select i1 %tobool, %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0)
  store %struct._object* %cond, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 0
  %2 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %3 = load %struct._object*, %struct._object** %result, align 8
  ret %struct._object* %3
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyExpat_XML_SetReturnNSTriplet(%struct.XML_ParserStruct*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

; Function Attrs: nounwind uwtable
define internal i32 @sethandler(%struct.xmlparseobject* %self, %struct._object* %name, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %name.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %handlernum = alloca i32, align 4
  %c_handler = alloca i8*, align 8
  %temp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call i32 @handlername2int(%struct._object* %0)
  store i32 %call, i32* %handlernum, align 4
  %1 = load i32, i32* %handlernum, align 4
  %cmp = icmp sge i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end.26

if.then:                                          ; preds = %entry
  store i8* null, i8** %c_handler, align 8
  %2 = load i32, i32* %handlernum, align 4
  %idxprom = sext i32 %2 to i64
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %3, i32 0, i32 10
  %4 = load %struct._object**, %struct._object*** %handlers, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %4, i64 %idxprom
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %5, %struct._object** %temp, align 8
  %6 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp1 = icmp eq %struct._object* %6, @_Py_NoneStruct
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.then
  %7 = load i32, i32* %handlernum, align 4
  %cmp3 = icmp eq i32 %7, 3
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.then.2
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 4
  %9 = load i32, i32* %in_callback, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %land.lhs.true
  store i8* bitcast (void (i8*, i8*, i32)* @noop_character_data_handler to i8*), i8** %c_handler, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %land.lhs.true, %if.then.2
  store %struct._object* null, %struct._object** %v.addr, align 8
  br label %if.end.10

if.else:                                          ; preds = %if.then
  %10 = load %struct._object*, %struct._object** %v.addr, align 8
  %cmp5 = icmp ne %struct._object* %10, null
  br i1 %cmp5, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %if.else
  %11 = load %struct._object*, %struct._object** %v.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %13 = load i32, i32* %handlernum, align 4
  %idxprom7 = sext i32 %13 to i64
  %arrayidx8 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom7
  %handler = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx8, i32 0, i32 2
  %14 = load i8*, i8** %handler, align 8
  store i8* %14, i8** %c_handler, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %if.else
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %16 = load i32, i32* %handlernum, align 4
  %idxprom11 = sext i32 %16 to i64
  %17 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers12 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %17, i32 0, i32 10
  %18 = load %struct._object**, %struct._object*** %handlers12, align 8
  %arrayidx13 = getelementptr %struct._object*, %struct._object** %18, i64 %idxprom11
  store %struct._object* %15, %struct._object** %arrayidx13, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %19 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp14 = icmp ne %struct._object* %20, null
  br i1 %cmp14, label %if.then.15, label %if.end.22

if.then.15:                                       ; preds = %do.body
  br label %do.body.16

do.body.16:                                       ; preds = %if.then.15
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt17, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt17, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else.20

if.then.19:                                       ; preds = %do.body.16
  br label %if.end.21

if.else.20:                                       ; preds = %do.body.16
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.20, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.21
  br label %if.end.22

if.end.22:                                        ; preds = %do.end, %do.body
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  %28 = load i32, i32* %handlernum, align 4
  %idxprom24 = sext i32 %28 to i64
  %arrayidx25 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom24
  %setter = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx25, i32 0, i32 1
  %29 = load void (%struct.XML_ParserStruct*, i8*)*, void (%struct.XML_ParserStruct*, i8*)** %setter, align 8
  %30 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %30, i32 0, i32 1
  %31 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %32 = load i8*, i8** %c_handler, align 8
  call void %29(%struct.XML_ParserStruct* %31, i8* %32)
  store i32 1, i32* %retval
  br label %return

if.end.26:                                        ; preds = %entry
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.26, %do.end.23
  %33 = load i32, i32* %retval
  ret i32 %33
}

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_Parse(%struct.xmlparseobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %data = alloca %struct._object*, align 8
  %isFinal = alloca i32, align 4
  %s = alloca i8*, align 8
  %slen = alloca i64, align 8
  %view = alloca %struct.bufferinfo, align 8
  %rc = alloca i32, align 4
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 0, i32* %isFinal, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.162, i32 0, i32 0), %struct._object** %data, i32* %isFinal)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %data, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 19
  %3 = load i64, i64* %tp_flags, align 8
  %and = and i64 %3, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.end
  %buf = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  store i8* null, i8** %buf, align 8
  %4 = load %struct._object*, %struct._object** %data, align 8
  %call2 = call i8* @PyUnicode_AsUTF8AndSize(%struct._object* %4, i64* %slen)
  store i8* %call2, i8** %s, align 8
  %5 = load i8*, i8** %s, align 8
  %cmp3 = icmp eq i8* %5, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.then.1
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.then.1
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 1
  %7 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call6 = call i32 @PyExpat_XML_SetEncoding(%struct.XML_ParserStruct* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.163, i32 0, i32 0))
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %data, align 8
  %call7 = call i32 @PyObject_GetBuffer(%struct._object* %8, %struct.bufferinfo* %view, i32 0)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.else
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.else
  %buf11 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  %9 = load i8*, i8** %buf11, align 8
  store i8* %9, i8** %s, align 8
  %len = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 2
  %10 = load i64, i64* %len, align 8
  store i64 %10, i64* %slen, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.10, %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %if.end.18, %if.end.12
  %11 = load i64, i64* %slen, align 8
  %cmp13 = icmp sgt i64 %11, 1048576
  br i1 %cmp13, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself14 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %12, i32 0, i32 1
  %13 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself14, align 8
  %14 = load i8*, i8** %s, align 8
  %call15 = call i32 @PyExpat_XML_Parse(%struct.XML_ParserStruct* %13, i8* %14, i32 1048576, i32 0)
  store i32 %call15, i32* %rc, align 4
  %15 = load i32, i32* %rc, align 4
  %tobool16 = icmp ne i32 %15, 0
  br i1 %tobool16, label %if.end.18, label %if.then.17

if.then.17:                                       ; preds = %while.body
  br label %done

if.end.18:                                        ; preds = %while.body
  %16 = load i8*, i8** %s, align 8
  %add.ptr = getelementptr i8, i8* %16, i64 1048576
  store i8* %add.ptr, i8** %s, align 8
  %17 = load i64, i64* %slen, align 8
  %sub = sub i64 %17, 1048576
  store i64 %sub, i64* %slen, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %18 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself19 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %18, i32 0, i32 1
  %19 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself19, align 8
  %20 = load i8*, i8** %s, align 8
  %21 = load i64, i64* %slen, align 8
  %conv = trunc i64 %21 to i32
  %22 = load i32, i32* %isFinal, align 4
  %call20 = call i32 @PyExpat_XML_Parse(%struct.XML_ParserStruct* %19, i8* %20, i32 %conv, i32 %22)
  store i32 %call20, i32* %rc, align 4
  br label %done

done:                                             ; preds = %while.end, %if.then.17
  %buf21 = getelementptr inbounds %struct.bufferinfo, %struct.bufferinfo* %view, i32 0, i32 0
  %23 = load i8*, i8** %buf21, align 8
  %cmp22 = icmp ne i8* %23, null
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %done
  call void @PyBuffer_Release(%struct.bufferinfo* %view)
  br label %if.end.25

if.end.25:                                        ; preds = %if.then.24, %done
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %25 = load i32, i32* %rc, align 4
  %call26 = call %struct._object* @get_parse_result(%struct.xmlparseobject* %24, i32 %25)
  store %struct._object* %call26, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.25, %if.then.9, %if.then.4, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_ParseFile(%struct.xmlparseobject* %self, %struct._object* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %f.addr = alloca %struct._object*, align 8
  %rv = alloca i32, align 4
  %readmethod = alloca %struct._object*, align 8
  %bytes_read = alloca i32, align 4
  %buf = alloca i8*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp18 = alloca %struct._object*, align 8
  %_py_xdecref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_xdecref_tmp60 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %f, %struct._object** %f.addr, align 8
  store i32 1, i32* %rv, align 4
  store %struct._object* null, %struct._object** %readmethod, align 8
  %0 = load %struct._object*, %struct._object** %f.addr, align 8
  %call = call %struct._object* @_PyObject_GetAttrId(%struct._object* %0, %struct._Py_Identifier* @xmlparse_ParseFile.PyId_read)
  store %struct._object* %call, %struct._object** %readmethod, align 8
  %1 = load %struct._object*, %struct._object** %readmethod, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.170, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %for.cond

for.cond:                                         ; preds = %if.end.58, %if.end
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %3, i32 0, i32 1
  %4 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call1 = call i8* @PyExpat_XML_GetBuffer(%struct.XML_ParserStruct* %4, i32 2048)
  store i8* %call1, i8** %buf, align 8
  %5 = load i8*, i8** %buf, align 8
  %cmp2 = icmp eq i8* %5, null
  br i1 %cmp2, label %if.then.3, label %if.end.13

if.then.3:                                        ; preds = %for.cond
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %6 = load %struct._object*, %struct._object** %readmethod, align 8
  store %struct._object* %6, %struct._object** %_py_xdecref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp4 = icmp ne %struct._object* %7, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %do.body
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.6
  br label %if.end.9

if.else:                                          ; preds = %do.body.6
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %do.body
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %call12 = call %struct._object* @get_parse_result(%struct.xmlparseobject* %15, i32 0)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %for.cond
  %16 = load i8*, i8** %buf, align 8
  %17 = load %struct._object*, %struct._object** %readmethod, align 8
  %call14 = call i32 @readinst(i8* %16, i32 2048, %struct._object* %17)
  store i32 %call14, i32* %bytes_read, align 4
  %18 = load i32, i32* %bytes_read, align 4
  %cmp15 = icmp slt i32 %18, 0
  br i1 %cmp15, label %if.then.16, label %if.end.28

if.then.16:                                       ; preds = %if.end.13
  br label %do.body.17

do.body.17:                                       ; preds = %if.then.16
  %19 = load %struct._object*, %struct._object** %readmethod, align 8
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
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.28:                                        ; preds = %if.end.13
  %26 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself29 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %26, i32 0, i32 1
  %27 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself29, align 8
  %28 = load i32, i32* %bytes_read, align 4
  %29 = load i32, i32* %bytes_read, align 4
  %cmp30 = icmp eq i32 %29, 0
  %conv = zext i1 %cmp30 to i32
  %call31 = call i32 @PyExpat_XML_ParseBuffer(%struct.XML_ParserStruct* %27, i32 %28, i32 %conv)
  store i32 %call31, i32* %rv, align 4
  %call32 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call32, null
  br i1 %tobool, label %if.then.33, label %if.end.53

if.then.33:                                       ; preds = %if.end.28
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %30 = load %struct._object*, %struct._object** %readmethod, align 8
  store %struct._object* %30, %struct._object** %_py_xdecref_tmp35, align 8
  %31 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  %cmp36 = icmp ne %struct._object* %31, null
  br i1 %cmp36, label %if.then.38, label %if.end.51

if.then.38:                                       ; preds = %do.body.34
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp35, align 8
  store %struct._object* %32, %struct._object** %_py_decref_tmp40, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %34, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.45, label %if.else.46

if.then.45:                                       ; preds = %do.body.39
  br label %if.end.49

if.else.46:                                       ; preds = %do.body.39
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type47 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type47, align 8
  %tp_dealloc48 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 4
  %37 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc48, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %37(%struct._object* %38)
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.45
  br label %do.end.50

do.end.50:                                        ; preds = %if.end.49
  br label %if.end.51

if.end.51:                                        ; preds = %do.end.50, %do.body.34
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.53:                                        ; preds = %if.end.28
  %39 = load i32, i32* %rv, align 4
  %tobool54 = icmp ne i32 %39, 0
  br i1 %tobool54, label %lor.lhs.false, label %if.then.57

lor.lhs.false:                                    ; preds = %if.end.53
  %40 = load i32, i32* %bytes_read, align 4
  %cmp55 = icmp eq i32 %40, 0
  br i1 %cmp55, label %if.then.57, label %if.end.58

if.then.57:                                       ; preds = %lor.lhs.false, %if.end.53
  br label %for.end

if.end.58:                                        ; preds = %lor.lhs.false
  br label %for.cond

for.end:                                          ; preds = %if.then.57
  br label %do.body.59

do.body.59:                                       ; preds = %for.end
  %41 = load %struct._object*, %struct._object** %readmethod, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp60, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp60, align 8
  %cmp61 = icmp ne %struct._object* %42, null
  br i1 %cmp61, label %if.then.63, label %if.end.76

if.then.63:                                       ; preds = %do.body.59
  br label %do.body.64

do.body.64:                                       ; preds = %if.then.63
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp60, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp65, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %45, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.64
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.64
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %48(%struct._object* %49)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %do.body.59
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  %50 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %51 = load i32, i32* %rv, align 4
  %call78 = call %struct._object* @get_parse_result(%struct.xmlparseobject* %50, i32 %51)
  store %struct._object* %call78, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.77, %do.end.52, %do.end.27, %do.end.11, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_SetBase(%struct.xmlparseobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %base = alloca i8*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.174, i32 0, i32 0), i8** %base)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %1, i32 0, i32 1
  %2 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %3 = load i8*, i8** %base, align 8
  %call1 = call i32 @PyExpat_XML_SetBase(%struct.XML_ParserStruct* %2, i8* %3)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.5, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call4, %struct._object** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.5, %if.then.3, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_GetBase(%struct.xmlparseobject* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %0, i32 0, i32 1
  %1 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call = call i8* @PyExpat_XML_GetBase(%struct.XML_ParserStruct* %1)
  %call1 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0), i8* %call)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_ExternalEntityParserCreate(%struct.xmlparseobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %context = alloca i8*, align 8
  %encoding = alloca i8*, align 8
  %new_parser = alloca %struct.xmlparseobject*, align 8
  %i = alloca i32, align 4
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp63 = alloca %struct._object*, align 8
  %handler = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %encoding, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.176, i32 0, i32 0), i8** %context, i8** %encoding)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @Xmlparsetype)
  %1 = bitcast %struct._object* %call1 to %struct.xmlparseobject*
  store %struct.xmlparseobject* %1, %struct.xmlparseobject** %new_parser, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %cmp = icmp eq %struct.xmlparseobject* %2, null
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer_size = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %3, i32 0, i32 7
  %4 = load i32, i32* %buffer_size, align 4
  %5 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %buffer_size4 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %5, i32 0, i32 7
  store i32 %4, i32* %buffer_size4, align 4
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %buffer_used = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 8
  store i32 0, i32* %buffer_used, align 4
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %buffer = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 6
  store i8* null, i8** %buffer, align 8
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %ordered_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 2
  %9 = load i32, i32* %ordered_attributes, align 4
  %10 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %ordered_attributes5 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %10, i32 0, i32 2
  store i32 %9, i32* %ordered_attributes5, align 4
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %specified_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %11, i32 0, i32 3
  %12 = load i32, i32* %specified_attributes, align 4
  %13 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %specified_attributes6 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %13, i32 0, i32 3
  store i32 %12, i32* %specified_attributes6, align 4
  %14 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %14, i32 0, i32 4
  store i32 0, i32* %in_callback, align 4
  %15 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %ns_prefixes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %15, i32 0, i32 5
  %16 = load i32, i32* %ns_prefixes, align 4
  %17 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %ns_prefixes7 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %17, i32 0, i32 5
  store i32 %16, i32* %ns_prefixes7, align 4
  %18 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %18, i32 0, i32 1
  %19 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %20 = load i8*, i8** %context, align 8
  %21 = load i8*, i8** %encoding, align 8
  %call8 = call %struct.XML_ParserStruct* @PyExpat_XML_ExternalEntityParserCreate(%struct.XML_ParserStruct* %19, i8* %20, i8* %21)
  %22 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %itself9 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %22, i32 0, i32 1
  store %struct.XML_ParserStruct* %call8, %struct.XML_ParserStruct** %itself9, align 8
  %23 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %23, i32 0, i32 10
  store %struct._object** null, %struct._object*** %handlers, align 8
  %24 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %intern = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %24, i32 0, i32 9
  %25 = load %struct._object*, %struct._object** %intern, align 8
  %26 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %intern10 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %26, i32 0, i32 9
  store %struct._object* %25, %struct._object** %intern10, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %27 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %intern11 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %27, i32 0, i32 9
  %28 = load %struct._object*, %struct._object** %intern11, align 8
  store %struct._object* %28, %struct._object** %_py_xincref_tmp, align 8
  %29 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp12 = icmp ne %struct._object* %29, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.13, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.14
  %32 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %33 = bitcast %struct.xmlparseobject* %32 to i8*
  call void @PyObject_GC_Track(i8* %33)
  %34 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %buffer15 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %34, i32 0, i32 6
  %35 = load i8*, i8** %buffer15, align 8
  %cmp16 = icmp ne i8* %35, null
  br i1 %cmp16, label %if.then.17, label %if.end.34

if.then.17:                                       ; preds = %do.end
  %36 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %buffer_size18 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %36, i32 0, i32 7
  %37 = load i32, i32* %buffer_size18, align 4
  %conv = sext i32 %37 to i64
  %call19 = call i8* @PyMem_Malloc(i64 %conv)
  %38 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %buffer20 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %38, i32 0, i32 6
  store i8* %call19, i8** %buffer20, align 8
  %39 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %buffer21 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %39, i32 0, i32 6
  %40 = load i8*, i8** %buffer21, align 8
  %cmp22 = icmp eq i8* %40, null
  br i1 %cmp22, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %if.then.17
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %41 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %42 = bitcast %struct.xmlparseobject* %41 to %struct._object*
  store %struct._object* %42, %struct._object** %_py_decref_tmp, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt26, align 8
  %dec = add i64 %44, -1
  store i64 %dec, i64* %ob_refcnt26, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %do.body.25
  br label %if.end.30

if.else:                                          ; preds = %do.body.25
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %47(%struct._object* %48)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.29
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %call32 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call32, %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %if.then.17
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %do.end
  %49 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %itself35 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %49, i32 0, i32 1
  %50 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself35, align 8
  %tobool36 = icmp ne %struct.XML_ParserStruct* %50, null
  br i1 %tobool36, label %if.end.51, label %if.then.37

if.then.37:                                       ; preds = %if.end.34
  br label %do.body.38

do.body.38:                                       ; preds = %if.then.37
  %51 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %52 = bitcast %struct.xmlparseobject* %51 to %struct._object*
  store %struct._object* %52, %struct._object** %_py_decref_tmp39, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt40, align 8
  %dec41 = add i64 %54, -1
  store i64 %dec41, i64* %ob_refcnt40, align 8
  %cmp42 = icmp ne i64 %dec41, 0
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.38
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.38
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp39, align 8
  call void %57(%struct._object* %58)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %call50 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call50, %struct._object** %retval
  br label %return

if.end.51:                                        ; preds = %if.end.34
  %59 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %itself52 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %59, i32 0, i32 1
  %60 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself52, align 8
  %61 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %62 = bitcast %struct.xmlparseobject* %61 to i8*
  call void @PyExpat_XML_SetUserData(%struct.XML_ParserStruct* %60, i8* %62)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.51
  %63 = load i32, i32* %i, align 4
  %idxprom = sext i32 %63 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 0
  %64 = load i8*, i8** %name, align 8
  %cmp53 = icmp ne i8* %64, null
  br i1 %cmp53, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %65 = load i32, i32* %i, align 4
  %inc55 = add i32 %65, 1
  store i32 %inc55, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %66 = load i32, i32* %i, align 4
  %conv56 = sext i32 %66 to i64
  %mul = mul i64 8, %conv56
  %call57 = call i8* @PyMem_Malloc(i64 %mul)
  %67 = bitcast i8* %call57 to %struct._object**
  %68 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %handlers58 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %68, i32 0, i32 10
  store %struct._object** %67, %struct._object*** %handlers58, align 8
  %69 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %handlers59 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %69, i32 0, i32 10
  %70 = load %struct._object**, %struct._object*** %handlers59, align 8
  %tobool60 = icmp ne %struct._object** %70, null
  br i1 %tobool60, label %if.end.75, label %if.then.61

if.then.61:                                       ; preds = %for.end
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %71 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %72 = bitcast %struct.xmlparseobject* %71 to %struct._object*
  store %struct._object* %72, %struct._object** %_py_decref_tmp63, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_refcnt64 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt64, align 8
  %dec65 = add i64 %74, -1
  store i64 %dec65, i64* %ob_refcnt64, align 8
  %cmp66 = icmp ne i64 %dec65, 0
  br i1 %cmp66, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.72

if.else.69:                                       ; preds = %do.body.62
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc71, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp63, align 8
  call void %77(%struct._object* %78)
  br label %if.end.72

if.end.72:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  %call74 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call74, %struct._object** %retval
  br label %return

if.end.75:                                        ; preds = %for.end
  %79 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  call void @clear_handlers(%struct.xmlparseobject* %79, i32 1)
  store i32 0, i32* %i, align 4
  br label %for.cond.76

for.cond.76:                                      ; preds = %for.inc.101, %if.end.75
  %80 = load i32, i32* %i, align 4
  %idxprom77 = sext i32 %80 to i64
  %arrayidx78 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom77
  %name79 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx78, i32 0, i32 0
  %81 = load i8*, i8** %name79, align 8
  %cmp80 = icmp ne i8* %81, null
  br i1 %cmp80, label %for.body.82, label %for.end.103

for.body.82:                                      ; preds = %for.cond.76
  %82 = load i32, i32* %i, align 4
  %idxprom83 = sext i32 %82 to i64
  %83 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %handlers84 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %83, i32 0, i32 10
  %84 = load %struct._object**, %struct._object*** %handlers84, align 8
  %arrayidx85 = getelementptr %struct._object*, %struct._object** %84, i64 %idxprom83
  %85 = load %struct._object*, %struct._object** %arrayidx85, align 8
  store %struct._object* %85, %struct._object** %handler, align 8
  %86 = load %struct._object*, %struct._object** %handler, align 8
  %cmp86 = icmp ne %struct._object* %86, null
  br i1 %cmp86, label %if.then.88, label %if.end.100

if.then.88:                                       ; preds = %for.body.82
  %87 = load %struct._object*, %struct._object** %handler, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 0
  %88 = load i64, i64* %ob_refcnt89, align 8
  %inc90 = add i64 %88, 1
  store i64 %inc90, i64* %ob_refcnt89, align 8
  %89 = load %struct._object*, %struct._object** %handler, align 8
  %90 = load i32, i32* %i, align 4
  %idxprom91 = sext i32 %90 to i64
  %91 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %handlers92 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %91, i32 0, i32 10
  %92 = load %struct._object**, %struct._object*** %handlers92, align 8
  %arrayidx93 = getelementptr %struct._object*, %struct._object** %92, i64 %idxprom91
  store %struct._object* %89, %struct._object** %arrayidx93, align 8
  %93 = load i32, i32* %i, align 4
  %idxprom94 = sext i32 %93 to i64
  %arrayidx95 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom94
  %setter = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx95, i32 0, i32 1
  %94 = load void (%struct.XML_ParserStruct*, i8*)*, void (%struct.XML_ParserStruct*, i8*)** %setter, align 8
  %95 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %itself96 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %95, i32 0, i32 1
  %96 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself96, align 8
  %97 = load i32, i32* %i, align 4
  %idxprom97 = sext i32 %97 to i64
  %arrayidx98 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom97
  %handler99 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx98, i32 0, i32 2
  %98 = load i8*, i8** %handler99, align 8
  call void %94(%struct.XML_ParserStruct* %96, i8* %98)
  br label %if.end.100

if.end.100:                                       ; preds = %if.then.88, %for.body.82
  br label %for.inc.101

for.inc.101:                                      ; preds = %if.end.100
  %99 = load i32, i32* %i, align 4
  %inc102 = add i32 %99, 1
  store i32 %inc102, i32* %i, align 4
  br label %for.cond.76

for.end.103:                                      ; preds = %for.cond.76
  %100 = load %struct.xmlparseobject*, %struct.xmlparseobject** %new_parser, align 8
  %101 = bitcast %struct.xmlparseobject* %100 to %struct._object*
  store %struct._object* %101, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end.103, %do.end.73, %do.end.49, %do.end.31, %if.then.2, %if.then
  %102 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %102
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_SetParamEntityParsing(%struct.xmlparseobject* %p, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %p.addr = alloca %struct.xmlparseobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  store %struct.xmlparseobject* %p, %struct.xmlparseobject** %p.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.177, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %p.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %1, i32 0, i32 1
  %2 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %3 = load i32, i32* %flag, align 4
  %call1 = call i32 @PyExpat_XML_SetParamEntityParsing(%struct.XML_ParserStruct* %2, i32 %3)
  store i32 %call1, i32* %flag, align 4
  %4 = load i32, i32* %flag, align 4
  %conv = sext i32 %4 to i64
  %call2 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_GetInputContext(%struct.xmlparseobject* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %offset = alloca i32, align 4
  %size = alloca i32, align 4
  %buffer = alloca i8*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %0, i32 0, i32 4
  %1 = load i32, i32* %in_callback, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.else.3

if.then:                                          ; preds = %entry
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %2, i32 0, i32 1
  %3 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call = call i8* @PyExpat_XML_GetInputContext(%struct.XML_ParserStruct* %3, i32* %offset, i32* %size)
  store i8* %call, i8** %buffer, align 8
  %4 = load i8*, i8** %buffer, align 8
  %cmp = icmp ne i8* %4, null
  br i1 %cmp, label %if.then.1, label %if.else

if.then.1:                                        ; preds = %if.then
  %5 = load i8*, i8** %buffer, align 8
  %6 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %6 to i64
  %add.ptr = getelementptr i8, i8* %5, i64 %idx.ext
  %7 = load i32, i32* %size, align 4
  %8 = load i32, i32* %offset, align 4
  %sub = sub i32 %7, %8
  %conv = sext i32 %sub to i64
  %call2 = call %struct._object* @PyBytes_FromStringAndSize(i8* %add.ptr, i64 %conv)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %9 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.else.3:                                        ; preds = %entry
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc4 = add i64 %10, 1
  store i64 %inc4, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.else, %if.then.1
  %11 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_UseForeignDTD(%struct.xmlparseobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %flag = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 1, i32* %flag, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.178, i32 0, i32 0), i32* %flag)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %1, i32 0, i32 1
  %2 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %3 = load i32, i32* %flag, align 4
  %tobool1 = icmp ne i32 %3, 0
  %cond = select i1 %tobool1, i32 1, i32 0
  %conv = trunc i32 %cond to i8
  %call2 = call i32 @PyExpat_XML_UseForeignDTD(%struct.XML_ParserStruct* %2, i8 zeroext %conv)
  store i32 %call2, i32* %rc, align 4
  %4 = load i32, i32* %rc, align 4
  %cmp = icmp ne i32 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %5 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %6 = load i32, i32* %rc, align 4
  %call5 = call %struct._object* @set_error(%struct.xmlparseobject* %5, i32 %6)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.4, %if.then
  %8 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %8
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @xmlparse_dir(%struct._object* %self, %struct._object* %noargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %noargs.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %rc = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %o17 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %o42 = alloca %struct._object*, align 8
  %_py_xdecref_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %o67 = alloca %struct._object*, align 8
  %_py_xdecref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %o92 = alloca %struct._object*, align 8
  %_py_xdecref_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  %o117 = alloca %struct._object*, align 8
  %_py_xdecref_tmp124 = alloca %struct._object*, align 8
  %_py_decref_tmp128 = alloca %struct._object*, align 8
  %o142 = alloca %struct._object*, align 8
  %_py_xdecref_tmp149 = alloca %struct._object*, align 8
  %_py_decref_tmp153 = alloca %struct._object*, align 8
  %o167 = alloca %struct._object*, align 8
  %_py_xdecref_tmp174 = alloca %struct._object*, align 8
  %_py_decref_tmp178 = alloca %struct._object*, align 8
  %o192 = alloca %struct._object*, align 8
  %_py_xdecref_tmp199 = alloca %struct._object*, align 8
  %_py_decref_tmp203 = alloca %struct._object*, align 8
  %o217 = alloca %struct._object*, align 8
  %_py_xdecref_tmp224 = alloca %struct._object*, align 8
  %_py_decref_tmp228 = alloca %struct._object*, align 8
  %o242 = alloca %struct._object*, align 8
  %_py_xdecref_tmp249 = alloca %struct._object*, align 8
  %_py_decref_tmp253 = alloca %struct._object*, align 8
  %o267 = alloca %struct._object*, align 8
  %_py_xdecref_tmp274 = alloca %struct._object*, align 8
  %_py_decref_tmp278 = alloca %struct._object*, align 8
  %o292 = alloca %struct._object*, align 8
  %_py_xdecref_tmp299 = alloca %struct._object*, align 8
  %_py_decref_tmp303 = alloca %struct._object*, align 8
  %o317 = alloca %struct._object*, align 8
  %_py_xdecref_tmp324 = alloca %struct._object*, align 8
  %_py_decref_tmp328 = alloca %struct._object*, align 8
  %o342 = alloca %struct._object*, align 8
  %_py_xdecref_tmp349 = alloca %struct._object*, align 8
  %_py_decref_tmp353 = alloca %struct._object*, align 8
  %_py_decref_tmp370 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %noargs, %struct._object** %noargs.addr, align 8
  %call = call %struct._object* @PyList_New(i64 0)
  store %struct._object* %call, %struct._object** %rc, align 8
  %0 = load %struct._object*, %struct._object** %rc, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 0
  %2 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom1
  %call3 = call %struct._object* @get_handler_name(%struct.HandlerInfo* %arrayidx2)
  store %struct._object* %call3, %struct._object** %o, align 8
  %4 = load %struct._object*, %struct._object** %o, align 8
  %cmp4 = icmp ne %struct._object* %4, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %for.body
  %5 = load %struct._object*, %struct._object** %rc, align 8
  %6 = load %struct._object*, %struct._object** %o, align 8
  %call6 = call i32 @PyList_Append(%struct._object* %5, %struct._object* %6)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %for.body
  br label %do.body

do.body:                                          ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %7, %struct._object** %_py_xdecref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp8 = icmp ne %struct._object* %8, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.body
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %do.body.10
  br label %if.end.13

if.else:                                          ; preds = %do.body.10
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.13
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %do.end.15
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %do.body.16

do.body.16:                                       ; preds = %for.end
  %call18 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.135, i32 0, i32 0))
  store %struct._object* %call18, %struct._object** %o17, align 8
  %17 = load %struct._object*, %struct._object** %o17, align 8
  %cmp19 = icmp ne %struct._object* %17, null
  br i1 %cmp19, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %do.body.16
  %18 = load %struct._object*, %struct._object** %rc, align 8
  %19 = load %struct._object*, %struct._object** %o17, align 8
  %call21 = call i32 @PyList_Append(%struct._object* %18, %struct._object* %19)
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %do.body.16
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %20 = load %struct._object*, %struct._object** %o17, align 8
  store %struct._object* %20, %struct._object** %_py_xdecref_tmp24, align 8
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %21, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp28, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %24, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %27(%struct._object* %28)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.end.40

do.end.40:                                        ; preds = %do.end.39
  br label %do.body.41

do.body.41:                                       ; preds = %do.end.40
  %call43 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.136, i32 0, i32 0))
  store %struct._object* %call43, %struct._object** %o42, align 8
  %29 = load %struct._object*, %struct._object** %o42, align 8
  %cmp44 = icmp ne %struct._object* %29, null
  br i1 %cmp44, label %if.then.45, label %if.end.47

if.then.45:                                       ; preds = %do.body.41
  %30 = load %struct._object*, %struct._object** %rc, align 8
  %31 = load %struct._object*, %struct._object** %o42, align 8
  %call46 = call i32 @PyList_Append(%struct._object* %30, %struct._object* %31)
  br label %if.end.47

if.end.47:                                        ; preds = %if.then.45, %do.body.41
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.47
  %32 = load %struct._object*, %struct._object** %o42, align 8
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp49, align 8
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  %cmp50 = icmp ne %struct._object* %33, null
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %do.body.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp49, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp53, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %36, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %39(%struct._object* %40)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %if.end.63

if.end.63:                                        ; preds = %do.end.62, %do.body.48
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %do.end.65

do.end.65:                                        ; preds = %do.end.64
  br label %do.body.66

do.body.66:                                       ; preds = %do.end.65
  %call68 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.137, i32 0, i32 0))
  store %struct._object* %call68, %struct._object** %o67, align 8
  %41 = load %struct._object*, %struct._object** %o67, align 8
  %cmp69 = icmp ne %struct._object* %41, null
  br i1 %cmp69, label %if.then.70, label %if.end.72

if.then.70:                                       ; preds = %do.body.66
  %42 = load %struct._object*, %struct._object** %rc, align 8
  %43 = load %struct._object*, %struct._object** %o67, align 8
  %call71 = call i32 @PyList_Append(%struct._object* %42, %struct._object* %43)
  br label %if.end.72

if.end.72:                                        ; preds = %if.then.70, %do.body.66
  br label %do.body.73

do.body.73:                                       ; preds = %if.end.72
  %44 = load %struct._object*, %struct._object** %o67, align 8
  store %struct._object* %44, %struct._object** %_py_xdecref_tmp74, align 8
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp74, align 8
  %cmp75 = icmp ne %struct._object* %45, null
  br i1 %cmp75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %do.body.73
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %46 = load %struct._object*, %struct._object** %_py_xdecref_tmp74, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp78, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %48, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %51(%struct._object* %52)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %do.body.73
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %do.end.90

do.end.90:                                        ; preds = %do.end.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.end.90
  %call93 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.138, i32 0, i32 0))
  store %struct._object* %call93, %struct._object** %o92, align 8
  %53 = load %struct._object*, %struct._object** %o92, align 8
  %cmp94 = icmp ne %struct._object* %53, null
  br i1 %cmp94, label %if.then.95, label %if.end.97

if.then.95:                                       ; preds = %do.body.91
  %54 = load %struct._object*, %struct._object** %rc, align 8
  %55 = load %struct._object*, %struct._object** %o92, align 8
  %call96 = call i32 @PyList_Append(%struct._object* %54, %struct._object* %55)
  br label %if.end.97

if.end.97:                                        ; preds = %if.then.95, %do.body.91
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.97
  %56 = load %struct._object*, %struct._object** %o92, align 8
  store %struct._object* %56, %struct._object** %_py_xdecref_tmp99, align 8
  %57 = load %struct._object*, %struct._object** %_py_xdecref_tmp99, align 8
  %cmp100 = icmp ne %struct._object* %57, null
  br i1 %cmp100, label %if.then.101, label %if.end.113

if.then.101:                                      ; preds = %do.body.98
  br label %do.body.102

do.body.102:                                      ; preds = %if.then.101
  %58 = load %struct._object*, %struct._object** %_py_xdecref_tmp99, align 8
  store %struct._object* %58, %struct._object** %_py_decref_tmp103, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 0
  %60 = load i64, i64* %ob_refcnt104, align 8
  %dec105 = add i64 %60, -1
  store i64 %dec105, i64* %ob_refcnt104, align 8
  %cmp106 = icmp ne i64 %dec105, 0
  br i1 %cmp106, label %if.then.107, label %if.else.108

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111

if.else.108:                                      ; preds = %do.body.102
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %61, i32 0, i32 1
  %62 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %62, i32 0, i32 4
  %63 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8
  call void %63(%struct._object* %64)
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  br label %do.end.112

do.end.112:                                       ; preds = %if.end.111
  br label %if.end.113

if.end.113:                                       ; preds = %do.end.112, %do.body.98
  br label %do.end.114

do.end.114:                                       ; preds = %if.end.113
  br label %do.end.115

do.end.115:                                       ; preds = %do.end.114
  br label %do.body.116

do.body.116:                                      ; preds = %do.end.115
  %call118 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.139, i32 0, i32 0))
  store %struct._object* %call118, %struct._object** %o117, align 8
  %65 = load %struct._object*, %struct._object** %o117, align 8
  %cmp119 = icmp ne %struct._object* %65, null
  br i1 %cmp119, label %if.then.120, label %if.end.122

if.then.120:                                      ; preds = %do.body.116
  %66 = load %struct._object*, %struct._object** %rc, align 8
  %67 = load %struct._object*, %struct._object** %o117, align 8
  %call121 = call i32 @PyList_Append(%struct._object* %66, %struct._object* %67)
  br label %if.end.122

if.end.122:                                       ; preds = %if.then.120, %do.body.116
  br label %do.body.123

do.body.123:                                      ; preds = %if.end.122
  %68 = load %struct._object*, %struct._object** %o117, align 8
  store %struct._object* %68, %struct._object** %_py_xdecref_tmp124, align 8
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp124, align 8
  %cmp125 = icmp ne %struct._object* %69, null
  br i1 %cmp125, label %if.then.126, label %if.end.138

if.then.126:                                      ; preds = %do.body.123
  br label %do.body.127

do.body.127:                                      ; preds = %if.then.126
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp124, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp128, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt129, align 8
  %dec130 = add i64 %72, -1
  store i64 %dec130, i64* %ob_refcnt129, align 8
  %cmp131 = icmp ne i64 %dec130, 0
  br i1 %cmp131, label %if.then.132, label %if.else.133

if.then.132:                                      ; preds = %do.body.127
  br label %if.end.136

if.else.133:                                      ; preds = %do.body.127
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  %ob_type134 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type134, align 8
  %tp_dealloc135 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc135, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp128, align 8
  call void %75(%struct._object* %76)
  br label %if.end.136

if.end.136:                                       ; preds = %if.else.133, %if.then.132
  br label %do.end.137

do.end.137:                                       ; preds = %if.end.136
  br label %if.end.138

if.end.138:                                       ; preds = %do.end.137, %do.body.123
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  br label %do.end.140

do.end.140:                                       ; preds = %do.end.139
  br label %do.body.141

do.body.141:                                      ; preds = %do.end.140
  %call143 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.140, i32 0, i32 0))
  store %struct._object* %call143, %struct._object** %o142, align 8
  %77 = load %struct._object*, %struct._object** %o142, align 8
  %cmp144 = icmp ne %struct._object* %77, null
  br i1 %cmp144, label %if.then.145, label %if.end.147

if.then.145:                                      ; preds = %do.body.141
  %78 = load %struct._object*, %struct._object** %rc, align 8
  %79 = load %struct._object*, %struct._object** %o142, align 8
  %call146 = call i32 @PyList_Append(%struct._object* %78, %struct._object* %79)
  br label %if.end.147

if.end.147:                                       ; preds = %if.then.145, %do.body.141
  br label %do.body.148

do.body.148:                                      ; preds = %if.end.147
  %80 = load %struct._object*, %struct._object** %o142, align 8
  store %struct._object* %80, %struct._object** %_py_xdecref_tmp149, align 8
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp149, align 8
  %cmp150 = icmp ne %struct._object* %81, null
  br i1 %cmp150, label %if.then.151, label %if.end.163

if.then.151:                                      ; preds = %do.body.148
  br label %do.body.152

do.body.152:                                      ; preds = %if.then.151
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp149, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp153, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  %ob_refcnt154 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt154, align 8
  %dec155 = add i64 %84, -1
  store i64 %dec155, i64* %ob_refcnt154, align 8
  %cmp156 = icmp ne i64 %dec155, 0
  br i1 %cmp156, label %if.then.157, label %if.else.158

if.then.157:                                      ; preds = %do.body.152
  br label %if.end.161

if.else.158:                                      ; preds = %do.body.152
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  %ob_type159 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type159, align 8
  %tp_dealloc160 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc160, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp153, align 8
  call void %87(%struct._object* %88)
  br label %if.end.161

if.end.161:                                       ; preds = %if.else.158, %if.then.157
  br label %do.end.162

do.end.162:                                       ; preds = %if.end.161
  br label %if.end.163

if.end.163:                                       ; preds = %do.end.162, %do.body.148
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %do.end.165

do.end.165:                                       ; preds = %do.end.164
  br label %do.body.166

do.body.166:                                      ; preds = %do.end.165
  %call168 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.141, i32 0, i32 0))
  store %struct._object* %call168, %struct._object** %o167, align 8
  %89 = load %struct._object*, %struct._object** %o167, align 8
  %cmp169 = icmp ne %struct._object* %89, null
  br i1 %cmp169, label %if.then.170, label %if.end.172

if.then.170:                                      ; preds = %do.body.166
  %90 = load %struct._object*, %struct._object** %rc, align 8
  %91 = load %struct._object*, %struct._object** %o167, align 8
  %call171 = call i32 @PyList_Append(%struct._object* %90, %struct._object* %91)
  br label %if.end.172

if.end.172:                                       ; preds = %if.then.170, %do.body.166
  br label %do.body.173

do.body.173:                                      ; preds = %if.end.172
  %92 = load %struct._object*, %struct._object** %o167, align 8
  store %struct._object* %92, %struct._object** %_py_xdecref_tmp174, align 8
  %93 = load %struct._object*, %struct._object** %_py_xdecref_tmp174, align 8
  %cmp175 = icmp ne %struct._object* %93, null
  br i1 %cmp175, label %if.then.176, label %if.end.188

if.then.176:                                      ; preds = %do.body.173
  br label %do.body.177

do.body.177:                                      ; preds = %if.then.176
  %94 = load %struct._object*, %struct._object** %_py_xdecref_tmp174, align 8
  store %struct._object* %94, %struct._object** %_py_decref_tmp178, align 8
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_refcnt179 = getelementptr inbounds %struct._object, %struct._object* %95, i32 0, i32 0
  %96 = load i64, i64* %ob_refcnt179, align 8
  %dec180 = add i64 %96, -1
  store i64 %dec180, i64* %ob_refcnt179, align 8
  %cmp181 = icmp ne i64 %dec180, 0
  br i1 %cmp181, label %if.then.182, label %if.else.183

if.then.182:                                      ; preds = %do.body.177
  br label %if.end.186

if.else.183:                                      ; preds = %do.body.177
  %97 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  %ob_type184 = getelementptr inbounds %struct._object, %struct._object* %97, i32 0, i32 1
  %98 = load %struct._typeobject*, %struct._typeobject** %ob_type184, align 8
  %tp_dealloc185 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %98, i32 0, i32 4
  %99 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc185, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp178, align 8
  call void %99(%struct._object* %100)
  br label %if.end.186

if.end.186:                                       ; preds = %if.else.183, %if.then.182
  br label %do.end.187

do.end.187:                                       ; preds = %if.end.186
  br label %if.end.188

if.end.188:                                       ; preds = %do.end.187, %do.body.173
  br label %do.end.189

do.end.189:                                       ; preds = %if.end.188
  br label %do.end.190

do.end.190:                                       ; preds = %do.end.189
  br label %do.body.191

do.body.191:                                      ; preds = %do.end.190
  %call193 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.142, i32 0, i32 0))
  store %struct._object* %call193, %struct._object** %o192, align 8
  %101 = load %struct._object*, %struct._object** %o192, align 8
  %cmp194 = icmp ne %struct._object* %101, null
  br i1 %cmp194, label %if.then.195, label %if.end.197

if.then.195:                                      ; preds = %do.body.191
  %102 = load %struct._object*, %struct._object** %rc, align 8
  %103 = load %struct._object*, %struct._object** %o192, align 8
  %call196 = call i32 @PyList_Append(%struct._object* %102, %struct._object* %103)
  br label %if.end.197

if.end.197:                                       ; preds = %if.then.195, %do.body.191
  br label %do.body.198

do.body.198:                                      ; preds = %if.end.197
  %104 = load %struct._object*, %struct._object** %o192, align 8
  store %struct._object* %104, %struct._object** %_py_xdecref_tmp199, align 8
  %105 = load %struct._object*, %struct._object** %_py_xdecref_tmp199, align 8
  %cmp200 = icmp ne %struct._object* %105, null
  br i1 %cmp200, label %if.then.201, label %if.end.213

if.then.201:                                      ; preds = %do.body.198
  br label %do.body.202

do.body.202:                                      ; preds = %if.then.201
  %106 = load %struct._object*, %struct._object** %_py_xdecref_tmp199, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp203, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp203, align 8
  %ob_refcnt204 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt204, align 8
  %dec205 = add i64 %108, -1
  store i64 %dec205, i64* %ob_refcnt204, align 8
  %cmp206 = icmp ne i64 %dec205, 0
  br i1 %cmp206, label %if.then.207, label %if.else.208

if.then.207:                                      ; preds = %do.body.202
  br label %if.end.211

if.else.208:                                      ; preds = %do.body.202
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp203, align 8
  %ob_type209 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type209, align 8
  %tp_dealloc210 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc210, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp203, align 8
  call void %111(%struct._object* %112)
  br label %if.end.211

if.end.211:                                       ; preds = %if.else.208, %if.then.207
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  br label %if.end.213

if.end.213:                                       ; preds = %do.end.212, %do.body.198
  br label %do.end.214

do.end.214:                                       ; preds = %if.end.213
  br label %do.end.215

do.end.215:                                       ; preds = %do.end.214
  br label %do.body.216

do.body.216:                                      ; preds = %do.end.215
  %call218 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.143, i32 0, i32 0))
  store %struct._object* %call218, %struct._object** %o217, align 8
  %113 = load %struct._object*, %struct._object** %o217, align 8
  %cmp219 = icmp ne %struct._object* %113, null
  br i1 %cmp219, label %if.then.220, label %if.end.222

if.then.220:                                      ; preds = %do.body.216
  %114 = load %struct._object*, %struct._object** %rc, align 8
  %115 = load %struct._object*, %struct._object** %o217, align 8
  %call221 = call i32 @PyList_Append(%struct._object* %114, %struct._object* %115)
  br label %if.end.222

if.end.222:                                       ; preds = %if.then.220, %do.body.216
  br label %do.body.223

do.body.223:                                      ; preds = %if.end.222
  %116 = load %struct._object*, %struct._object** %o217, align 8
  store %struct._object* %116, %struct._object** %_py_xdecref_tmp224, align 8
  %117 = load %struct._object*, %struct._object** %_py_xdecref_tmp224, align 8
  %cmp225 = icmp ne %struct._object* %117, null
  br i1 %cmp225, label %if.then.226, label %if.end.238

if.then.226:                                      ; preds = %do.body.223
  br label %do.body.227

do.body.227:                                      ; preds = %if.then.226
  %118 = load %struct._object*, %struct._object** %_py_xdecref_tmp224, align 8
  store %struct._object* %118, %struct._object** %_py_decref_tmp228, align 8
  %119 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  %ob_refcnt229 = getelementptr inbounds %struct._object, %struct._object* %119, i32 0, i32 0
  %120 = load i64, i64* %ob_refcnt229, align 8
  %dec230 = add i64 %120, -1
  store i64 %dec230, i64* %ob_refcnt229, align 8
  %cmp231 = icmp ne i64 %dec230, 0
  br i1 %cmp231, label %if.then.232, label %if.else.233

if.then.232:                                      ; preds = %do.body.227
  br label %if.end.236

if.else.233:                                      ; preds = %do.body.227
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  %ob_type234 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 1
  %122 = load %struct._typeobject*, %struct._typeobject** %ob_type234, align 8
  %tp_dealloc235 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %122, i32 0, i32 4
  %123 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc235, align 8
  %124 = load %struct._object*, %struct._object** %_py_decref_tmp228, align 8
  call void %123(%struct._object* %124)
  br label %if.end.236

if.end.236:                                       ; preds = %if.else.233, %if.then.232
  br label %do.end.237

do.end.237:                                       ; preds = %if.end.236
  br label %if.end.238

if.end.238:                                       ; preds = %do.end.237, %do.body.223
  br label %do.end.239

do.end.239:                                       ; preds = %if.end.238
  br label %do.end.240

do.end.240:                                       ; preds = %do.end.239
  br label %do.body.241

do.body.241:                                      ; preds = %do.end.240
  %call243 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0))
  store %struct._object* %call243, %struct._object** %o242, align 8
  %125 = load %struct._object*, %struct._object** %o242, align 8
  %cmp244 = icmp ne %struct._object* %125, null
  br i1 %cmp244, label %if.then.245, label %if.end.247

if.then.245:                                      ; preds = %do.body.241
  %126 = load %struct._object*, %struct._object** %rc, align 8
  %127 = load %struct._object*, %struct._object** %o242, align 8
  %call246 = call i32 @PyList_Append(%struct._object* %126, %struct._object* %127)
  br label %if.end.247

if.end.247:                                       ; preds = %if.then.245, %do.body.241
  br label %do.body.248

do.body.248:                                      ; preds = %if.end.247
  %128 = load %struct._object*, %struct._object** %o242, align 8
  store %struct._object* %128, %struct._object** %_py_xdecref_tmp249, align 8
  %129 = load %struct._object*, %struct._object** %_py_xdecref_tmp249, align 8
  %cmp250 = icmp ne %struct._object* %129, null
  br i1 %cmp250, label %if.then.251, label %if.end.263

if.then.251:                                      ; preds = %do.body.248
  br label %do.body.252

do.body.252:                                      ; preds = %if.then.251
  %130 = load %struct._object*, %struct._object** %_py_xdecref_tmp249, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp253, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_refcnt254 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt254, align 8
  %dec255 = add i64 %132, -1
  store i64 %dec255, i64* %ob_refcnt254, align 8
  %cmp256 = icmp ne i64 %dec255, 0
  br i1 %cmp256, label %if.then.257, label %if.else.258

if.then.257:                                      ; preds = %do.body.252
  br label %if.end.261

if.else.258:                                      ; preds = %do.body.252
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  %ob_type259 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type259, align 8
  %tp_dealloc260 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc260, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp253, align 8
  call void %135(%struct._object* %136)
  br label %if.end.261

if.end.261:                                       ; preds = %if.else.258, %if.then.257
  br label %do.end.262

do.end.262:                                       ; preds = %if.end.261
  br label %if.end.263

if.end.263:                                       ; preds = %do.end.262, %do.body.248
  br label %do.end.264

do.end.264:                                       ; preds = %if.end.263
  br label %do.end.265

do.end.265:                                       ; preds = %do.end.264
  br label %do.body.266

do.body.266:                                      ; preds = %do.end.265
  %call268 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.145, i32 0, i32 0))
  store %struct._object* %call268, %struct._object** %o267, align 8
  %137 = load %struct._object*, %struct._object** %o267, align 8
  %cmp269 = icmp ne %struct._object* %137, null
  br i1 %cmp269, label %if.then.270, label %if.end.272

if.then.270:                                      ; preds = %do.body.266
  %138 = load %struct._object*, %struct._object** %rc, align 8
  %139 = load %struct._object*, %struct._object** %o267, align 8
  %call271 = call i32 @PyList_Append(%struct._object* %138, %struct._object* %139)
  br label %if.end.272

if.end.272:                                       ; preds = %if.then.270, %do.body.266
  br label %do.body.273

do.body.273:                                      ; preds = %if.end.272
  %140 = load %struct._object*, %struct._object** %o267, align 8
  store %struct._object* %140, %struct._object** %_py_xdecref_tmp274, align 8
  %141 = load %struct._object*, %struct._object** %_py_xdecref_tmp274, align 8
  %cmp275 = icmp ne %struct._object* %141, null
  br i1 %cmp275, label %if.then.276, label %if.end.288

if.then.276:                                      ; preds = %do.body.273
  br label %do.body.277

do.body.277:                                      ; preds = %if.then.276
  %142 = load %struct._object*, %struct._object** %_py_xdecref_tmp274, align 8
  store %struct._object* %142, %struct._object** %_py_decref_tmp278, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  %ob_refcnt279 = getelementptr inbounds %struct._object, %struct._object* %143, i32 0, i32 0
  %144 = load i64, i64* %ob_refcnt279, align 8
  %dec280 = add i64 %144, -1
  store i64 %dec280, i64* %ob_refcnt279, align 8
  %cmp281 = icmp ne i64 %dec280, 0
  br i1 %cmp281, label %if.then.282, label %if.else.283

if.then.282:                                      ; preds = %do.body.277
  br label %if.end.286

if.else.283:                                      ; preds = %do.body.277
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  %ob_type284 = getelementptr inbounds %struct._object, %struct._object* %145, i32 0, i32 1
  %146 = load %struct._typeobject*, %struct._typeobject** %ob_type284, align 8
  %tp_dealloc285 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %146, i32 0, i32 4
  %147 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc285, align 8
  %148 = load %struct._object*, %struct._object** %_py_decref_tmp278, align 8
  call void %147(%struct._object* %148)
  br label %if.end.286

if.end.286:                                       ; preds = %if.else.283, %if.then.282
  br label %do.end.287

do.end.287:                                       ; preds = %if.end.286
  br label %if.end.288

if.end.288:                                       ; preds = %do.end.287, %do.body.273
  br label %do.end.289

do.end.289:                                       ; preds = %if.end.288
  br label %do.end.290

do.end.290:                                       ; preds = %do.end.289
  br label %do.body.291

do.body.291:                                      ; preds = %do.end.290
  %call293 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.146, i32 0, i32 0))
  store %struct._object* %call293, %struct._object** %o292, align 8
  %149 = load %struct._object*, %struct._object** %o292, align 8
  %cmp294 = icmp ne %struct._object* %149, null
  br i1 %cmp294, label %if.then.295, label %if.end.297

if.then.295:                                      ; preds = %do.body.291
  %150 = load %struct._object*, %struct._object** %rc, align 8
  %151 = load %struct._object*, %struct._object** %o292, align 8
  %call296 = call i32 @PyList_Append(%struct._object* %150, %struct._object* %151)
  br label %if.end.297

if.end.297:                                       ; preds = %if.then.295, %do.body.291
  br label %do.body.298

do.body.298:                                      ; preds = %if.end.297
  %152 = load %struct._object*, %struct._object** %o292, align 8
  store %struct._object* %152, %struct._object** %_py_xdecref_tmp299, align 8
  %153 = load %struct._object*, %struct._object** %_py_xdecref_tmp299, align 8
  %cmp300 = icmp ne %struct._object* %153, null
  br i1 %cmp300, label %if.then.301, label %if.end.313

if.then.301:                                      ; preds = %do.body.298
  br label %do.body.302

do.body.302:                                      ; preds = %if.then.301
  %154 = load %struct._object*, %struct._object** %_py_xdecref_tmp299, align 8
  store %struct._object* %154, %struct._object** %_py_decref_tmp303, align 8
  %155 = load %struct._object*, %struct._object** %_py_decref_tmp303, align 8
  %ob_refcnt304 = getelementptr inbounds %struct._object, %struct._object* %155, i32 0, i32 0
  %156 = load i64, i64* %ob_refcnt304, align 8
  %dec305 = add i64 %156, -1
  store i64 %dec305, i64* %ob_refcnt304, align 8
  %cmp306 = icmp ne i64 %dec305, 0
  br i1 %cmp306, label %if.then.307, label %if.else.308

if.then.307:                                      ; preds = %do.body.302
  br label %if.end.311

if.else.308:                                      ; preds = %do.body.302
  %157 = load %struct._object*, %struct._object** %_py_decref_tmp303, align 8
  %ob_type309 = getelementptr inbounds %struct._object, %struct._object* %157, i32 0, i32 1
  %158 = load %struct._typeobject*, %struct._typeobject** %ob_type309, align 8
  %tp_dealloc310 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %158, i32 0, i32 4
  %159 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc310, align 8
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp303, align 8
  call void %159(%struct._object* %160)
  br label %if.end.311

if.end.311:                                       ; preds = %if.else.308, %if.then.307
  br label %do.end.312

do.end.312:                                       ; preds = %if.end.311
  br label %if.end.313

if.end.313:                                       ; preds = %do.end.312, %do.body.298
  br label %do.end.314

do.end.314:                                       ; preds = %if.end.313
  br label %do.end.315

do.end.315:                                       ; preds = %do.end.314
  br label %do.body.316

do.body.316:                                      ; preds = %do.end.315
  %call318 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.147, i32 0, i32 0))
  store %struct._object* %call318, %struct._object** %o317, align 8
  %161 = load %struct._object*, %struct._object** %o317, align 8
  %cmp319 = icmp ne %struct._object* %161, null
  br i1 %cmp319, label %if.then.320, label %if.end.322

if.then.320:                                      ; preds = %do.body.316
  %162 = load %struct._object*, %struct._object** %rc, align 8
  %163 = load %struct._object*, %struct._object** %o317, align 8
  %call321 = call i32 @PyList_Append(%struct._object* %162, %struct._object* %163)
  br label %if.end.322

if.end.322:                                       ; preds = %if.then.320, %do.body.316
  br label %do.body.323

do.body.323:                                      ; preds = %if.end.322
  %164 = load %struct._object*, %struct._object** %o317, align 8
  store %struct._object* %164, %struct._object** %_py_xdecref_tmp324, align 8
  %165 = load %struct._object*, %struct._object** %_py_xdecref_tmp324, align 8
  %cmp325 = icmp ne %struct._object* %165, null
  br i1 %cmp325, label %if.then.326, label %if.end.338

if.then.326:                                      ; preds = %do.body.323
  br label %do.body.327

do.body.327:                                      ; preds = %if.then.326
  %166 = load %struct._object*, %struct._object** %_py_xdecref_tmp324, align 8
  store %struct._object* %166, %struct._object** %_py_decref_tmp328, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_refcnt329 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 0
  %168 = load i64, i64* %ob_refcnt329, align 8
  %dec330 = add i64 %168, -1
  store i64 %dec330, i64* %ob_refcnt329, align 8
  %cmp331 = icmp ne i64 %dec330, 0
  br i1 %cmp331, label %if.then.332, label %if.else.333

if.then.332:                                      ; preds = %do.body.327
  br label %if.end.336

if.else.333:                                      ; preds = %do.body.327
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  %ob_type334 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 1
  %170 = load %struct._typeobject*, %struct._typeobject** %ob_type334, align 8
  %tp_dealloc335 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %170, i32 0, i32 4
  %171 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc335, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp328, align 8
  call void %171(%struct._object* %172)
  br label %if.end.336

if.end.336:                                       ; preds = %if.else.333, %if.then.332
  br label %do.end.337

do.end.337:                                       ; preds = %if.end.336
  br label %if.end.338

if.end.338:                                       ; preds = %do.end.337, %do.body.323
  br label %do.end.339

do.end.339:                                       ; preds = %if.end.338
  br label %do.end.340

do.end.340:                                       ; preds = %do.end.339
  br label %do.body.341

do.body.341:                                      ; preds = %do.end.340
  %call343 = call %struct._object* @PyUnicode_FromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.148, i32 0, i32 0))
  store %struct._object* %call343, %struct._object** %o342, align 8
  %173 = load %struct._object*, %struct._object** %o342, align 8
  %cmp344 = icmp ne %struct._object* %173, null
  br i1 %cmp344, label %if.then.345, label %if.end.347

if.then.345:                                      ; preds = %do.body.341
  %174 = load %struct._object*, %struct._object** %rc, align 8
  %175 = load %struct._object*, %struct._object** %o342, align 8
  %call346 = call i32 @PyList_Append(%struct._object* %174, %struct._object* %175)
  br label %if.end.347

if.end.347:                                       ; preds = %if.then.345, %do.body.341
  br label %do.body.348

do.body.348:                                      ; preds = %if.end.347
  %176 = load %struct._object*, %struct._object** %o342, align 8
  store %struct._object* %176, %struct._object** %_py_xdecref_tmp349, align 8
  %177 = load %struct._object*, %struct._object** %_py_xdecref_tmp349, align 8
  %cmp350 = icmp ne %struct._object* %177, null
  br i1 %cmp350, label %if.then.351, label %if.end.363

if.then.351:                                      ; preds = %do.body.348
  br label %do.body.352

do.body.352:                                      ; preds = %if.then.351
  %178 = load %struct._object*, %struct._object** %_py_xdecref_tmp349, align 8
  store %struct._object* %178, %struct._object** %_py_decref_tmp353, align 8
  %179 = load %struct._object*, %struct._object** %_py_decref_tmp353, align 8
  %ob_refcnt354 = getelementptr inbounds %struct._object, %struct._object* %179, i32 0, i32 0
  %180 = load i64, i64* %ob_refcnt354, align 8
  %dec355 = add i64 %180, -1
  store i64 %dec355, i64* %ob_refcnt354, align 8
  %cmp356 = icmp ne i64 %dec355, 0
  br i1 %cmp356, label %if.then.357, label %if.else.358

if.then.357:                                      ; preds = %do.body.352
  br label %if.end.361

if.else.358:                                      ; preds = %do.body.352
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp353, align 8
  %ob_type359 = getelementptr inbounds %struct._object, %struct._object* %181, i32 0, i32 1
  %182 = load %struct._typeobject*, %struct._typeobject** %ob_type359, align 8
  %tp_dealloc360 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %182, i32 0, i32 4
  %183 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc360, align 8
  %184 = load %struct._object*, %struct._object** %_py_decref_tmp353, align 8
  call void %183(%struct._object* %184)
  br label %if.end.361

if.end.361:                                       ; preds = %if.else.358, %if.then.357
  br label %do.end.362

do.end.362:                                       ; preds = %if.end.361
  br label %if.end.363

if.end.363:                                       ; preds = %do.end.362, %do.body.348
  br label %do.end.364

do.end.364:                                       ; preds = %if.end.363
  br label %do.end.365

do.end.365:                                       ; preds = %do.end.364
  %call366 = call %struct._object* @PyErr_Occurred()
  %tobool367 = icmp ne %struct._object* %call366, null
  br i1 %tobool367, label %if.then.368, label %if.end.380

if.then.368:                                      ; preds = %do.end.365
  br label %do.body.369

do.body.369:                                      ; preds = %if.then.368
  %185 = load %struct._object*, %struct._object** %rc, align 8
  store %struct._object* %185, %struct._object** %_py_decref_tmp370, align 8
  %186 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  %ob_refcnt371 = getelementptr inbounds %struct._object, %struct._object* %186, i32 0, i32 0
  %187 = load i64, i64* %ob_refcnt371, align 8
  %dec372 = add i64 %187, -1
  store i64 %dec372, i64* %ob_refcnt371, align 8
  %cmp373 = icmp ne i64 %dec372, 0
  br i1 %cmp373, label %if.then.374, label %if.else.375

if.then.374:                                      ; preds = %do.body.369
  br label %if.end.378

if.else.375:                                      ; preds = %do.body.369
  %188 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  %ob_type376 = getelementptr inbounds %struct._object, %struct._object* %188, i32 0, i32 1
  %189 = load %struct._typeobject*, %struct._typeobject** %ob_type376, align 8
  %tp_dealloc377 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %189, i32 0, i32 4
  %190 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc377, align 8
  %191 = load %struct._object*, %struct._object** %_py_decref_tmp370, align 8
  call void %190(%struct._object* %191)
  br label %if.end.378

if.end.378:                                       ; preds = %if.else.375, %if.then.374
  br label %do.end.379

do.end.379:                                       ; preds = %if.end.378
  store %struct._object* null, %struct._object** %rc, align 8
  br label %if.end.380

if.end.380:                                       ; preds = %do.end.379, %do.end.365
  %192 = load %struct._object*, %struct._object** %rc, align 8
  store %struct._object* %192, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.380, %if.then
  %193 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %193
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i8* @PyUnicode_AsUTF8AndSize(%struct._object*, i64*) #1

declare i32 @PyObject_GetBuffer(%struct._object*, %struct.bufferinfo*, i32) #1

declare void @PyBuffer_Release(%struct.bufferinfo*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_parse_result(%struct.xmlparseobject* %self, i32 %rv) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %rv.addr = alloca i32, align 4
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store i32 %rv, i32* %rv.addr, align 4
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i32, i32* %rv.addr, align 4
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then.1, label %if.end.4

if.then.1:                                        ; preds = %if.end
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %2, i32 0, i32 1
  %3 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  %call2 = call i32 @PyExpat_XML_GetErrorCode(%struct.XML_ParserStruct* %3)
  %call3 = call %struct._object* @set_error(%struct.xmlparseobject* %1, i32 %call2)
  store %struct._object* %call3, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %call5 = call i32 @flush_character_buffer(%struct.xmlparseobject* %4)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %5 = load i32, i32* %rv.addr, align 4
  %conv = sext i32 %5 to i64
  %call9 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call9, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.1, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @set_error(%struct.xmlparseobject* %self, i32 %code) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.xmlparseobject*, align 8
  %code.addr = alloca i32, align 4
  %err = alloca %struct._object*, align 8
  %buffer = alloca %struct._object*, align 8
  %parser = alloca %struct.XML_ParserStruct*, align 8
  %lineno = alloca i32, align 4
  %column = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store %struct.xmlparseobject* %self, %struct.xmlparseobject** %self.addr, align 8
  store i32 %code, i32* %code.addr, align 4
  %0 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self.addr, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %0, i32 0, i32 1
  %1 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself, align 8
  store %struct.XML_ParserStruct* %1, %struct.XML_ParserStruct** %parser, align 8
  %2 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %parser, align 8
  %call = call i64 @PyExpat_XML_GetCurrentLineNumber(%struct.XML_ParserStruct* %2)
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %lineno, align 4
  %3 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %parser, align 8
  %call1 = call i64 @PyExpat_XML_GetCurrentColumnNumber(%struct.XML_ParserStruct* %3)
  %conv2 = trunc i64 %call1 to i32
  store i32 %conv2, i32* %column, align 4
  %4 = load i32, i32* %code.addr, align 4
  %call3 = call i8* @PyExpat_XML_ErrorString(i32 %4)
  %5 = load i32, i32* %lineno, align 4
  %6 = load i32, i32* %column, align 4
  %call4 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.164, i32 0, i32 0), i8* %call3, i32 %5, i32 %6)
  store %struct._object* %call4, %struct._object** %buffer, align 8
  %7 = load %struct._object*, %struct._object** %buffer, align 8
  %cmp = icmp eq %struct._object* %7, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %9 = load %struct._object*, %struct._object** %buffer, align 8
  %call6 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.165, i32 0, i32 0), %struct._object* %9)
  store %struct._object* %call6, %struct._object** %err, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct._object*, %struct._object** %buffer, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  %17 = load %struct._object*, %struct._object** %err, align 8
  %cmp11 = icmp ne %struct._object* %17, null
  br i1 %cmp11, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %do.end
  %18 = load %struct._object*, %struct._object** %err, align 8
  %19 = load i32, i32* %code.addr, align 4
  %call13 = call i32 @set_error_attr(%struct._object* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.166, i32 0, i32 0), i32 %19)
  %tobool = icmp ne i32 %call13, 0
  br i1 %tobool, label %land.lhs.true.14, label %if.end.21

land.lhs.true.14:                                 ; preds = %land.lhs.true
  %20 = load %struct._object*, %struct._object** %err, align 8
  %21 = load i32, i32* %column, align 4
  %call15 = call i32 @set_error_attr(%struct._object* %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.167, i32 0, i32 0), i32 %21)
  %tobool16 = icmp ne i32 %call15, 0
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.21

land.lhs.true.17:                                 ; preds = %land.lhs.true.14
  %22 = load %struct._object*, %struct._object** %err, align 8
  %23 = load i32, i32* %lineno, align 4
  %call18 = call i32 @set_error_attr(%struct._object* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.168, i32 0, i32 0), i32 %23)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.then.20, label %if.end.21

if.then.20:                                       ; preds = %land.lhs.true.17
  %24 = load %struct._object*, %struct._object** @ErrorObject, align 8
  %25 = load %struct._object*, %struct._object** %err, align 8
  call void @PyErr_SetObject(%struct._object* %24, %struct._object* %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.20, %land.lhs.true.17, %land.lhs.true.14, %land.lhs.true, %do.end
  br label %do.body.22

do.body.22:                                       ; preds = %if.end.21
  %26 = load %struct._object*, %struct._object** %err, align 8
  store %struct._object* %26, %struct._object** %_py_xdecref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp23 = icmp ne %struct._object* %27, null
  br i1 %cmp23, label %if.then.25, label %if.end.38

if.then.25:                                       ; preds = %do.body.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp27, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %30, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.26
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.26
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %33(%struct._object* %34)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.22
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.then
  %35 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %35
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @set_error_attr(%struct._object* %err, i8* %name, i32 %value) #0 {
entry:
  %retval = alloca i32, align 4
  %err.addr = alloca %struct._object*, align 8
  %name.addr = alloca i8*, align 8
  %value.addr = alloca i32, align 4
  %v = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp16 = alloca %struct._object*, align 8
  store %struct._object* %err, %struct._object** %err.addr, align 8
  store i8* %name, i8** %name.addr, align 8
  store i32 %value, i32* %value.addr, align 4
  %0 = load i32, i32* %value.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call, %struct._object** %v, align 8
  %1 = load %struct._object*, %struct._object** %v, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._object*, %struct._object** %err.addr, align 8
  %3 = load i8*, i8** %name.addr, align 8
  %4 = load %struct._object*, %struct._object** %v, align 8
  %call2 = call i32 @PyObject_SetAttrString(%struct._object* %2, i8* %3, %struct._object* %4)
  %cmp3 = icmp eq i32 %call2, -1
  br i1 %cmp3, label %if.then, label %if.end.14

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %5, %struct._object** %_py_xdecref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp5 = icmp ne %struct._object* %6, null
  br i1 %cmp5, label %if.then.7, label %if.end.12

if.then.7:                                        ; preds = %do.body
  br label %do.body.8

do.body.8:                                        ; preds = %if.then.7
  %7 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp9 = icmp ne i64 %dec, 0
  br i1 %cmp9, label %if.then.11, label %if.else

if.then.11:                                       ; preds = %do.body.8
  br label %if.end

if.else:                                          ; preds = %do.body.8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %do.body
  br label %do.end.13

do.end.13:                                        ; preds = %if.end.12
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %lor.lhs.false
  br label %do.body.15

do.body.15:                                       ; preds = %if.end.14
  %14 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp16, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt17, align 8
  %dec18 = add i64 %16, -1
  store i64 %dec18, i64* %ob_refcnt17, align 8
  %cmp19 = icmp ne i64 %dec18, 0
  br i1 %cmp19, label %if.then.21, label %if.else.22

if.then.21:                                       ; preds = %do.body.15
  br label %if.end.25

if.else.22:                                       ; preds = %do.body.15
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  %ob_type23 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type23, align 8
  %tp_dealloc24 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc24, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp16, align 8
  call void %19(%struct._object* %20)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.22, %if.then.21
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %do.end.13
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare i32 @PyObject_SetAttrString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare i8* @PyExpat_XML_GetBuffer(%struct.XML_ParserStruct*, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @readinst(i8* %buf, i32 %buf_size, %struct._object* %meth) #0 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %buf_size.addr = alloca i32, align 4
  %meth.addr = alloca %struct._object*, align 8
  %str = alloca %struct._object*, align 8
  %len = alloca i64, align 8
  %ptr = alloca i8*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  store i8* %buf, i8** %buf.addr, align 8
  store i32 %buf_size, i32* %buf_size.addr, align 4
  store %struct._object* %meth, %struct._object** %meth.addr, align 8
  %0 = load %struct._object*, %struct._object** %meth.addr, align 8
  %1 = load i32, i32* %buf_size.addr, align 4
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.171, i32 0, i32 0), i32 %1)
  store %struct._object* %call, %struct._object** %str, align 8
  %2 = load %struct._object*, %struct._object** %str, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %str, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 134217728
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %str, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %7, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %ptr, align 8
  br label %if.end.13

if.else:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %str, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %cmp4 = icmp eq %struct._typeobject* %9, @PyByteArray_Type
  br i1 %cmp4, label %if.then.7, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %str, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call6 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyByteArray_Type)
  %tobool = icmp ne i32 %call6, 0
  br i1 %tobool, label %if.then.7, label %if.else.9

if.then.7:                                        ; preds = %lor.lhs.false, %if.else
  %12 = load %struct._object*, %struct._object** %str, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  %tobool8 = icmp ne i64 %14, 0
  br i1 %tobool8, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then.7
  %15 = load %struct._object*, %struct._object** %str, align 8
  %16 = bitcast %struct._object* %15 to %struct.PyByteArrayObject*
  %ob_start = getelementptr inbounds %struct.PyByteArrayObject, %struct.PyByteArrayObject* %16, i32 0, i32 3
  %17 = load i8*, i8** %ob_start, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.then.7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %17, %cond.true ], [ getelementptr inbounds ([0 x i8], [0 x i8]* @_PyByteArray_empty_string, i32 0, i32 0), %cond.false ]
  store i8* %cond, i8** %ptr, align 8
  br label %if.end.12

if.else.9:                                        ; preds = %lor.lhs.false
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %19 = load %struct._object*, %struct._object** %str, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %tp_name, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.172, i32 0, i32 0), i8* %21)
  br label %error

if.end.12:                                        ; preds = %cond.end
  br label %if.end.13

if.end.13:                                        ; preds = %if.end.12, %if.then.2
  %22 = load %struct._object*, %struct._object** %str, align 8
  %23 = bitcast %struct._object* %22 to %struct.PyVarObject*
  %ob_size14 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %23, i32 0, i32 1
  %24 = load i64, i64* %ob_size14, align 8
  store i64 %24, i64* %len, align 8
  %25 = load i64, i64* %len, align 8
  %26 = load i32, i32* %buf_size.addr, align 4
  %conv = sext i32 %26 to i64
  %cmp15 = icmp sgt i64 %25, %conv
  br i1 %cmp15, label %if.then.17, label %if.end.19

if.then.17:                                       ; preds = %if.end.13
  %27 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %28 = load i32, i32* %buf_size.addr, align 4
  %29 = load i64, i64* %len, align 8
  %call18 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %27, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.173, i32 0, i32 0), i32 %28, i64 %29)
  br label %error

if.end.19:                                        ; preds = %if.end.13
  %30 = load i8*, i8** %buf.addr, align 8
  %31 = load i8*, i8** %ptr, align 8
  %32 = load i64, i64* %len, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %30, i8* %31, i64 %32, i32 1, i1 false)
  br label %do.body

do.body:                                          ; preds = %if.end.19
  %33 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %35, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.22, label %if.else.23

if.then.22:                                       ; preds = %do.body
  br label %if.end.25

if.else.23:                                       ; preds = %do.body
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type24 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type24, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.23, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.25
  %40 = load i64, i64* %len, align 8
  %conv26 = trunc i64 %40 to i32
  store i32 %conv26, i32* %retval
  br label %return

error:                                            ; preds = %if.then.17, %if.else.9, %if.then
  br label %do.body.27

do.body.27:                                       ; preds = %error
  %41 = load %struct._object*, %struct._object** %str, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp28 = icmp ne %struct._object* %42, null
  br i1 %cmp28, label %if.then.30, label %if.end.43

if.then.30:                                       ; preds = %do.body.27
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.30
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp32, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %45, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.31
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.31
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %48(%struct._object* %49)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.27
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.44, %do.end
  %50 = load i32, i32* %retval
  ret i32 %50
}

declare i32 @PyExpat_XML_ParseBuffer(%struct.XML_ParserStruct*, i32, i32) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @PyExpat_XML_SetBase(%struct.XML_ParserStruct*, i8*) #1

declare i8* @PyExpat_XML_GetBase(%struct.XML_ParserStruct*) #1

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

declare %struct.XML_ParserStruct* @PyExpat_XML_ExternalEntityParserCreate(%struct.XML_ParserStruct*, i8*, i8*) #1

declare void @PyObject_GC_Track(i8*) #1

declare i32 @PyExpat_XML_SetParamEntityParsing(%struct.XML_ParserStruct*, i32) #1

declare i8* @PyExpat_XML_GetInputContext(%struct.XML_ParserStruct*, i32*, i32*) #1

declare %struct._object* @PyBytes_FromStringAndSize(i8*, i64) #1

declare i32 @PyExpat_XML_UseForeignDTD(%struct.XML_ParserStruct*, i8 zeroext) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @get_handler_name(%struct.HandlerInfo* %hinfo) #0 {
entry:
  %hinfo.addr = alloca %struct.HandlerInfo*, align 8
  %name = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct.HandlerInfo* %hinfo, %struct.HandlerInfo** %hinfo.addr, align 8
  %0 = load %struct.HandlerInfo*, %struct.HandlerInfo** %hinfo.addr, align 8
  %nameobj = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %nameobj, align 8
  store %struct._object* %1, %struct._object** %name, align 8
  %2 = load %struct._object*, %struct._object** %name, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load %struct.HandlerInfo*, %struct.HandlerInfo** %hinfo.addr, align 8
  %name1 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %3, i32 0, i32 0
  %4 = load i8*, i8** %name1, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %4)
  store %struct._object* %call, %struct._object** %name, align 8
  %5 = load %struct._object*, %struct._object** %name, align 8
  %6 = load %struct.HandlerInfo*, %struct.HandlerInfo** %hinfo.addr, align 8
  %nameobj2 = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %6, i32 0, i32 4
  store %struct._object* %5, %struct._object** %nameobj2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %7, %struct._object** %_py_xincref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp3 = icmp ne %struct._object* %8, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %name, align 8
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyexpat_ParserCreate(%struct._object* %notused, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %notused.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %encoding = alloca i8*, align 8
  %namespace_separator = alloca i8*, align 8
  %intern = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %intern_decref = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %notused, %struct._object** %notused.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store i8* null, i8** %encoding, align 8
  store i8* null, i8** %namespace_separator, align 8
  store %struct._object* null, %struct._object** %intern, align 8
  store i32 0, i32* %intern_decref, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.184, i32 0, i32 0), i8** getelementptr inbounds ([4 x i8*], [4 x i8*]* @pyexpat_ParserCreate.kwlist, i32 0, i32 0), i8** %encoding, i8** %namespace_separator, %struct._object** %intern)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %namespace_separator, align 8
  %cmp = icmp ne i8* %2, null
  br i1 %cmp, label %land.lhs.true, label %if.end.4

land.lhs.true:                                    ; preds = %if.end
  %3 = load i8*, i8** %namespace_separator, align 8
  %call1 = call i64 @strlen(i8* %3) #6
  %cmp2 = icmp ugt i64 %call1, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.185, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %land.lhs.true, %if.end
  %5 = load %struct._object*, %struct._object** %intern, align 8
  %cmp5 = icmp eq %struct._object* %5, @_Py_NoneStruct
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %intern, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %intern, align 8
  %cmp7 = icmp eq %struct._object* %6, null
  br i1 %cmp7, label %if.then.8, label %if.else.13

if.then.8:                                        ; preds = %if.else
  %call9 = call %struct._object* @PyDict_New()
  store %struct._object* %call9, %struct._object** %intern, align 8
  %7 = load %struct._object*, %struct._object** %intern, align 8
  %tobool10 = icmp ne %struct._object* %7, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.then.8
  store i32 1, i32* %intern_decref, align 4
  br label %if.end.17

if.else.13:                                       ; preds = %if.else
  %8 = load %struct._object*, %struct._object** %intern, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags, align 8
  %and = and i64 %10, 536870912
  %cmp14 = icmp ne i64 %and, 0
  br i1 %cmp14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.else.13
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.186, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.6
  %12 = load i8*, i8** %encoding, align 8
  %13 = load i8*, i8** %namespace_separator, align 8
  %14 = load %struct._object*, %struct._object** %intern, align 8
  %call19 = call %struct._object* @newxmlparseobject(i8* %12, i8* %13, %struct._object* %14)
  store %struct._object* %call19, %struct._object** %result, align 8
  %15 = load i32, i32* %intern_decref, align 4
  %tobool20 = icmp ne i32 %15, 0
  br i1 %tobool20, label %if.then.21, label %if.end.27

if.then.21:                                       ; preds = %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.then.21
  %16 = load %struct._object*, %struct._object** %intern, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body
  br label %if.end.26

if.else.24:                                       ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.26

if.end.26:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.26
  br label %if.end.27

if.end.27:                                        ; preds = %do.end, %if.end.18
  %23 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.15, %if.then.11, %if.then.3, %if.then
  %24 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %24
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @pyexpat_ErrorString(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %code = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %code, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.188, i32 0, i32 0), i64* %code)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %code, align 8
  %conv = trunc i64 %1 to i32
  %call1 = call i8* @PyExpat_XML_ErrorString(i32 %conv)
  %call2 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.175, i32 0, i32 0), i8* %call1)
  store %struct._object* %call2, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %2
}

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @newxmlparseobject(i8* %encoding, i8* %namespace_separator, %struct._object* %intern) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %encoding.addr = alloca i8*, align 8
  %namespace_separator.addr = alloca i8*, align 8
  %intern.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %self = alloca %struct.xmlparseobject*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store i8* %encoding, i8** %encoding.addr, align 8
  store i8* %namespace_separator, i8** %namespace_separator.addr, align 8
  store %struct._object* %intern, %struct._object** %intern.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* @Xmlparsetype)
  %0 = bitcast %struct._object* %call to %struct.xmlparseobject*
  store %struct.xmlparseobject* %0, %struct.xmlparseobject** %self, align 8
  %1 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %cmp = icmp eq %struct.xmlparseobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %2, i32 0, i32 6
  store i8* null, i8** %buffer, align 8
  %3 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_size = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %3, i32 0, i32 7
  store i32 8192, i32* %buffer_size, align 4
  %4 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %buffer_used = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %4, i32 0, i32 8
  store i32 0, i32* %buffer_used, align 4
  %5 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %ordered_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %5, i32 0, i32 2
  store i32 0, i32* %ordered_attributes, align 4
  %6 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %specified_attributes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %6, i32 0, i32 3
  store i32 0, i32* %specified_attributes, align 4
  %7 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %in_callback = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %7, i32 0, i32 4
  store i32 0, i32* %in_callback, align 4
  %8 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %ns_prefixes = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %8, i32 0, i32 5
  store i32 0, i32* %ns_prefixes, align 4
  %9 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %9, i32 0, i32 10
  store %struct._object** null, %struct._object*** %handlers, align 8
  %10 = load %struct._object*, %struct._object** %intern.addr, align 8
  %11 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %intern1 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %11, i32 0, i32 9
  store %struct._object* %10, %struct._object** %intern1, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %12 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %intern2 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %12, i32 0, i32 9
  %13 = load %struct._object*, %struct._object** %intern2, align 8
  store %struct._object* %13, %struct._object** %_py_xincref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp3 = icmp ne %struct._object* %14, null
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.4, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.5
  %17 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %18 = bitcast %struct.xmlparseobject* %17 to i8*
  call void @PyObject_GC_Track(i8* %18)
  %19 = load i8*, i8** %encoding.addr, align 8
  %20 = load i8*, i8** %namespace_separator.addr, align 8
  %call6 = call %struct.XML_ParserStruct* @PyExpat_XML_ParserCreate_MM(i8* %19, %struct.XML_Memory_Handling_Suite* @ExpatMemoryHandler, i8* %20)
  %21 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %itself = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %21, i32 0, i32 1
  store %struct.XML_ParserStruct* %call6, %struct.XML_ParserStruct** %itself, align 8
  %22 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %itself7 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %22, i32 0, i32 1
  %23 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself7, align 8
  %cmp8 = icmp eq %struct.XML_ParserStruct* %23, null
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %do.end
  %24 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.187, i32 0, i32 0))
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %25 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %26 = bitcast %struct.xmlparseobject* %25 to %struct._object*
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt11, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt11, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.10
  br label %if.end.14

if.else:                                          ; preds = %do.body.10
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.then.13
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %do.end
  %33 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %itself17 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %33, i32 0, i32 1
  %34 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself17, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.anon.3, %struct.anon.3* bitcast (%union._Py_HashSecret_t* @_Py_HashSecret to %struct.anon.3*), i32 0, i32 1), align 8
  %call18 = call i32 @PyExpat_XML_SetHashSalt(%struct.XML_ParserStruct* %34, i64 %35)
  %36 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %itself19 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %36, i32 0, i32 1
  %37 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself19, align 8
  %38 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %39 = bitcast %struct.xmlparseobject* %38 to i8*
  call void @PyExpat_XML_SetUserData(%struct.XML_ParserStruct* %37, i8* %39)
  %40 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %itself20 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %40, i32 0, i32 1
  %41 = load %struct.XML_ParserStruct*, %struct.XML_ParserStruct** %itself20, align 8
  call void @PyExpat_XML_SetUnknownEncodingHandler(%struct.XML_ParserStruct* %41, i32 (i8*, i8*, %struct.XML_Encoding*)* @PyUnknownEncodingHandler, i8* null)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %42 = load i32, i32* %i, align 4
  %idxprom = sext i32 %42 to i64
  %arrayidx = getelementptr [64 x %struct.HandlerInfo], [64 x %struct.HandlerInfo]* @handler_info, i32 0, i64 %idxprom
  %name = getelementptr inbounds %struct.HandlerInfo, %struct.HandlerInfo* %arrayidx, i32 0, i32 0
  %43 = load i8*, i8** %name, align 8
  %cmp21 = icmp ne i8* %43, null
  br i1 %cmp21, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %i, align 4
  %inc22 = add i32 %44, 1
  store i32 %inc22, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %45 = load i32, i32* %i, align 4
  %conv = sext i32 %45 to i64
  %mul = mul i64 8, %conv
  %call23 = call i8* @PyMem_Malloc(i64 %mul)
  %46 = bitcast i8* %call23 to %struct._object**
  %47 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers24 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %47, i32 0, i32 10
  store %struct._object** %46, %struct._object*** %handlers24, align 8
  %48 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %handlers25 = getelementptr inbounds %struct.xmlparseobject, %struct.xmlparseobject* %48, i32 0, i32 10
  %49 = load %struct._object**, %struct._object*** %handlers25, align 8
  %tobool = icmp ne %struct._object** %49, null
  br i1 %tobool, label %if.end.40, label %if.then.26

if.then.26:                                       ; preds = %for.end
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %50 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %51 = bitcast %struct.xmlparseobject* %50 to %struct._object*
  store %struct._object* %51, %struct._object** %_py_decref_tmp28, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %53, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.33, label %if.else.34

if.then.33:                                       ; preds = %do.body.27
  br label %if.end.37

if.else.34:                                       ; preds = %do.body.27
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type35 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 1
  %55 = load %struct._typeobject*, %struct._typeobject** %ob_type35, align 8
  %tp_dealloc36 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %55, i32 0, i32 4
  %56 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc36, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %56(%struct._object* %57)
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.34, %if.then.33
  br label %do.end.38

do.end.38:                                        ; preds = %if.end.37
  %call39 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call39, %struct._object** %retval
  br label %return

if.end.40:                                        ; preds = %for.end
  %58 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  call void @clear_handlers(%struct.xmlparseobject* %58, i32 1)
  %59 = load %struct.xmlparseobject*, %struct.xmlparseobject** %self, align 8
  %60 = bitcast %struct.xmlparseobject* %59 to %struct._object*
  store %struct._object* %60, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.40, %do.end.38, %do.end.15, %if.then
  %61 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %61
}

declare i32 @PyExpat_XML_SetHashSalt(%struct.XML_ParserStruct*, i64) #1

declare i8* @PyObject_Malloc(i64) #1

declare i8* @PyObject_Realloc(i8*, i64) #1

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyUnicode_Decode(i8*, i64, i8*, i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!2 = !{i32 139836}
!3 = !{i32 139676}
