; ModuleID = './symtable.bc'
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
%struct._Py_atomic_address = type { i8* }
%struct._symtable_entry = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.symtable* }
%struct.symtable = type { %struct._object*, %struct._symtable_entry*, %struct._symtable_entry*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, %struct.PyFutureFeatures*, i32, i32 }
%struct.PyFutureFeatures = type { i32, i32 }
%struct._mod = type { i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { %struct.asdl_seq* }
%struct.asdl_seq = type { i64, [1 x i8*] }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._stmt = type { i32, %union.anon.33, i32, i32 }
%union.anon.33 = type { %struct.anon.35 }
%struct.anon.35 = type { %struct._object*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct._expr = type { i32, %union.anon.2, i32, i32 }
%union.anon.2 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr*, %struct._expr* }
%struct.anon.1 = type { %struct._expr* }
%struct.anon.0 = type { %struct.asdl_seq* }
%struct._keyword = type { %struct._object*, %struct._expr* }
%struct._excepthandler = type { i32, %union.anon.52, i32, i32 }
%union.anon.52 = type { %struct.anon.53 }
%struct.anon.53 = type { %struct._expr*, %struct._object*, %struct.asdl_seq* }
%struct._alias = type { %struct._object*, %struct._object* }
%struct._withitem = type { %struct._expr*, %struct._expr* }
%struct.anon.34 = type { %struct._object*, %struct._arguments*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._expr* }
%struct._arguments = type { %struct.asdl_seq*, %struct._arg*, %struct.asdl_seq*, %struct.asdl_seq*, %struct._arg*, %struct.asdl_seq* }
%struct._arg = type { %struct._object*, %struct._expr*, i32, i32 }
%struct.anon.36 = type { %struct._expr* }
%struct.anon.37 = type { %struct.asdl_seq* }
%struct.anon.38 = type { %struct.asdl_seq*, %struct._expr* }
%struct.anon.39 = type { %struct._expr*, i32, %struct._expr* }
%struct.anon.40 = type { %struct._expr*, %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.41 = type { %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.42 = type { %struct._expr*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.44 = type { %struct._expr*, %struct._expr* }
%struct.anon.45 = type { %struct.asdl_seq*, %struct.asdl_seq*, %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.46 = type { %struct._expr*, %struct._expr* }
%struct.anon.47 = type { %struct.asdl_seq* }
%struct.anon.48 = type { %struct._object*, %struct.asdl_seq*, i32 }
%struct.anon.49 = type { %struct.asdl_seq* }
%struct.anon.50 = type { %struct.asdl_seq* }
%struct.anon.51 = type { %struct._expr* }
%struct.anon.43 = type { %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.3 = type { i32, %struct.asdl_seq* }
%struct.anon.4 = type { %struct._expr*, i32, %struct._expr* }
%struct.anon.5 = type { i32, %struct._expr* }
%struct.anon.6 = type { %struct._arguments*, %struct._expr* }
%struct.anon.7 = type { %struct._expr*, %struct._expr*, %struct._expr* }
%struct.anon.8 = type { %struct.asdl_seq*, %struct.asdl_seq* }
%struct.anon.9 = type { %struct.asdl_seq* }
%struct.anon.14 = type { %struct._expr* }
%struct.anon.15 = type { %struct._expr* }
%struct.anon.16 = type { %struct._expr*, %struct.asdl_int_seq*, %struct.asdl_seq* }
%struct.asdl_int_seq = type { i64, [1 x i32] }
%struct.anon.22 = type { %struct._expr*, %struct._object*, i32 }
%struct.anon.23 = type { %struct._expr*, %struct._slice*, i32 }
%struct._slice = type { i32, %union.anon.24 }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { %struct._expr*, %struct._expr*, %struct._expr* }
%struct.anon.28 = type { %struct._expr*, i32 }
%struct.anon.29 = type { %struct._object*, i32 }
%struct.anon.30 = type { %struct.asdl_seq*, i32 }
%struct.anon.31 = type { %struct.asdl_seq*, i32 }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon.54, i32* }
%struct.anon.54 = type { i32 }
%struct.anon.13 = type { %struct._expr*, %struct.asdl_seq* }
%struct.anon.10 = type { %struct._expr*, %struct.asdl_seq* }
%struct.anon.11 = type { %struct._expr*, %struct.asdl_seq* }
%struct.anon.12 = type { %struct._expr*, %struct._expr*, %struct.asdl_seq* }
%struct.anon.26 = type { %struct.asdl_seq* }
%struct.anon.27 = type { %struct._expr* }
%struct._comprehension = type { %struct._expr*, %struct._expr*, %struct.asdl_seq* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [15 x i8] c"symtable entry\00", align 1
@ste_memberlist = internal global [10 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i32 6, i64 40, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), i32 6, i64 48, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0), i32 1, i64 68, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 1, i64 72, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 1, i64 64, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i32 1, i64 80, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@PySTEntry_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i64 112, i64 0, void (%struct._object*)* bitcast (void (%struct._symtable_entry*)* @ste_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct._symtable_entry*)* @ste_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* getelementptr inbounds ([10 x %struct.PyMemberDef], [10 x %struct.PyMemberDef]* @ste_memberlist, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@top = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"top\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"this compiler does not handle Suites\00", align 1
@PyExc_KeyError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"unknown symbol table entry\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"<symtable entry %U(%ld), line %d>\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"varnames\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"optimized\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"nested\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"lineno\00", align 1
@__class__ = internal global %struct._object* null, align 8
@.str.14 = private unnamed_addr constant [10 x i8] c"__class__\00", align 1
@PyExc_SyntaxError = external global %struct._object*, align 8
@.str.15 = private unnamed_addr constant [34 x i8] c"name '%U' is parameter and global\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c"name '%U' is nonlocal and global\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"name '%U' is parameter and nonlocal\00", align 1
@.str.18 = private unnamed_addr constant [49 x i8] c"nonlocal declaration not allowed at module level\00", align 1
@.str.19 = private unnamed_addr constant [35 x i8] c"no binding for nonlocal '%U' found\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"contains a nested function with free variables\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"is a nested function\00", align 1
@.str.22 = private unnamed_addr constant [55 x i8] c"import * is not allowed in function '%U' because it %s\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"maximum recursion depth exceeded during compilation\00", align 1
@.str.24 = private unnamed_addr constant [55 x i8] c"name '%.400s' is assigned to before global declaration\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"name '%.400s' is used prior to global declaration\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"name '%.400s' is assigned to before nonlocal declaration\00", align 1
@.str.27 = private unnamed_addr constant [52 x i8] c"name '%.400s' is used prior to nonlocal declaration\00", align 1
@.str.28 = private unnamed_addr constant [47 x i8] c"duplicate argument '%U' in function definition\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"import * only allowed at module level\00", align 1
@PyExc_SyntaxWarning = external global %struct._object*, align 8
@.str.31 = private unnamed_addr constant [6 x i8] c"(Oii)\00", align 1
@lambda = internal global %struct._object* null, align 8
@.str.32 = private unnamed_addr constant [7 x i8] c"lambda\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"super\00", align 1
@genexpr = internal global %struct._object* null, align 8
@.str.34 = private unnamed_addr constant [8 x i8] c"genexpr\00", align 1
@.str.35 = private unnamed_addr constant [4 x i8] c".%d\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"_[%d]\00", align 1
@listcomp = internal global %struct._object* null, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"listcomp\00", align 1
@setcomp = internal global %struct._object* null, align 8
@.str.38 = private unnamed_addr constant [8 x i8] c"setcomp\00", align 1
@dictcomp = internal global %struct._object* null, align 8
@.str.39 = private unnamed_addr constant [9 x i8] c"dictcomp\00", align 1

; Function Attrs: nounwind uwtable
define internal void @ste_dealloc(%struct._symtable_entry* %ste) #0 {
entry:
  %ste.addr = alloca %struct._symtable_entry*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_xdecref_tmp41 = alloca %struct._object*, align 8
  %_py_decref_tmp45 = alloca %struct._object*, align 8
  %_py_xdecref_tmp58 = alloca %struct._object*, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_xdecref_tmp75 = alloca %struct._object*, align 8
  %_py_decref_tmp79 = alloca %struct._object*, align 8
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  %0 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_table = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %0, i32 0, i32 16
  store %struct.symtable* null, %struct.symtable** %ste_table, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %1 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_id = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %ste_id, align 8
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
  br label %do.body.6

do.body.6:                                        ; preds = %do.end.5
  %11 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_name = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %ste_name, align 8
  store %struct._object* %12, %struct._object** %_py_xdecref_tmp7, align 8
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %13, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %14 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %14, %struct._object** %_py_decref_tmp11, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %16, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %19(%struct._object* %20)
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
  %21 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_symbols = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %21, i32 0, i32 2
  %22 = load %struct._object*, %struct._object** %ste_symbols, align 8
  store %struct._object* %22, %struct._object** %_py_xdecref_tmp24, align 8
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %23, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %24 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp28, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %26, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %29(%struct._object* %30)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %31 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_varnames = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %31, i32 0, i32 4
  %32 = load %struct._object*, %struct._object** %ste_varnames, align 8
  store %struct._object* %32, %struct._object** %_py_xdecref_tmp41, align 8
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %33, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp45, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt46, align 8
  %dec47 = add i64 %36, -1
  store i64 %dec47, i64* %ob_refcnt46, align 8
  %cmp48 = icmp ne i64 %dec47, 0
  br i1 %cmp48, label %if.then.49, label %if.else.50

if.then.49:                                       ; preds = %do.body.44
  br label %if.end.53

if.else.50:                                       ; preds = %do.body.44
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  %ob_type51 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type51, align 8
  %tp_dealloc52 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp45, align 8
  call void %39(%struct._object* %40)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.50, %if.then.49
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.40
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %41 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_children = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %41, i32 0, i32 5
  %42 = load %struct._object*, %struct._object** %ste_children, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp58, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp58, align 8
  %cmp59 = icmp ne %struct._object* %43, null
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %do.body.57
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp58, align 8
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
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %do.body.57
  br label %do.end.73

do.end.73:                                        ; preds = %if.end.72
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %51 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_directives = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %51, i32 0, i32 6
  %52 = load %struct._object*, %struct._object** %ste_directives, align 8
  store %struct._object* %52, %struct._object** %_py_xdecref_tmp75, align 8
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp75, align 8
  %cmp76 = icmp ne %struct._object* %53, null
  br i1 %cmp76, label %if.then.77, label %if.end.89

if.then.77:                                       ; preds = %do.body.74
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp75, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp79, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %56, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.78
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  call void %59(%struct._object* %60)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88, %do.body.74
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  %61 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %62 = bitcast %struct._symtable_entry* %61 to i8*
  call void @PyObject_Free(i8* %62)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @ste_repr(%struct._symtable_entry* %ste) #0 {
entry:
  %ste.addr = alloca %struct._symtable_entry*, align 8
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  %0 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_name = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %ste_name, align 8
  %2 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_id = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %2, i32 0, i32 1
  %3 = load %struct._object*, %struct._object** %ste_id, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %3)
  %4 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %4, i32 0, i32 11
  %5 = load i32, i32* %ste_lineno, align 4
  %call1 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0), %struct._object* %1, i64 %call, i32 %5)
  ret %struct._object* %call1
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct.symtable* @PySymtable_BuildObject(%struct._mod* %mod, %struct._object* %filename, %struct.PyFutureFeatures* %future) #0 {
entry:
  %retval = alloca %struct.symtable*, align 8
  %mod.addr = alloca %struct._mod*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %future.addr = alloca %struct.PyFutureFeatures*, align 8
  %st = alloca %struct.symtable*, align 8
  %seq = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  %recursion_limit = alloca i32, align 4
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  store %struct._mod* %mod, %struct._mod** %mod.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store %struct.PyFutureFeatures* %future, %struct.PyFutureFeatures** %future.addr, align 8
  %call = call %struct.symtable* @symtable_new()
  store %struct.symtable* %call, %struct.symtable** %st, align 8
  %call1 = call i32 @Py_GetRecursionLimit()
  store i32 %call1, i32* %recursion_limit, align 4
  %0 = load %struct.symtable*, %struct.symtable** %st, align 8
  %cmp = icmp eq %struct.symtable* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp2 = icmp eq %struct._object* %1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %2 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %2)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %filename.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %filename.addr, align 8
  %6 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %6, i32 0, i32 0
  store %struct._object* %5, %struct._object** %st_filename, align 8
  %7 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %future.addr, align 8
  %8 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_future = getelementptr inbounds %struct.symtable, %struct.symtable* %8, i32 0, i32 8
  store %struct.PyFutureFeatures* %7, %struct.PyFutureFeatures** %st_future, align 8
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

sw.bb:                                            ; preds = %if.end.4, %if.end.4, %if.end.4
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %14 = load i8**, i8*** %volatile_data, align 8
  %15 = load volatile i8*, i8** %14, align 8
  store i8* %15, i8** %result, align 8
  %16 = load i32, i32* %order, align 4
  switch i32 %16, label %sw.default.6 [
    i32 1, label %sw.bb.5
    i32 3, label %sw.bb.5
    i32 4, label %sw.bb.5
  ]

sw.bb.5:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.7

sw.default.6:                                     ; preds = %sw.epilog
  br label %sw.epilog.7

sw.epilog.7:                                      ; preds = %sw.default.6, %sw.bb.5
  %17 = load i8*, i8** %result, align 8
  store i8* %17, i8** %tmp
  %18 = load i8*, i8** %tmp
  %19 = bitcast i8* %18 to %struct._ts*
  store %struct._ts* %19, %struct._ts** %tstate, align 8
  %20 = load %struct._ts*, %struct._ts** %tstate, align 8
  %tobool = icmp ne %struct._ts* %20, null
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %sw.epilog.7
  %21 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %21)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end.9:                                         ; preds = %sw.epilog.7
  %22 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_depth = getelementptr inbounds %struct._ts, %struct._ts* %22, i32 0, i32 4
  %23 = load i32, i32* %recursion_depth, align 4
  %cmp10 = icmp slt i32 %23, 715827882
  br i1 %cmp10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.9
  %24 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_depth11 = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 4
  %25 = load i32, i32* %recursion_depth11, align 4
  %mul = mul i32 %25, 3
  br label %cond.end

cond.false:                                       ; preds = %if.end.9
  %26 = load %struct._ts*, %struct._ts** %tstate, align 8
  %recursion_depth12 = getelementptr inbounds %struct._ts, %struct._ts* %26, i32 0, i32 4
  %27 = load i32, i32* %recursion_depth12, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %27, %cond.false ]
  %28 = load %struct.symtable*, %struct.symtable** %st, align 8
  %recursion_depth13 = getelementptr inbounds %struct.symtable, %struct.symtable* %28, i32 0, i32 9
  store i32 %cond, i32* %recursion_depth13, align 4
  %29 = load i32, i32* %recursion_limit, align 4
  %cmp14 = icmp slt i32 %29, 715827882
  br i1 %cmp14, label %cond.true.15, label %cond.false.17

cond.true.15:                                     ; preds = %cond.end
  %30 = load i32, i32* %recursion_limit, align 4
  %mul16 = mul i32 %30, 3
  br label %cond.end.18

cond.false.17:                                    ; preds = %cond.end
  %31 = load i32, i32* %recursion_limit, align 4
  br label %cond.end.18

cond.end.18:                                      ; preds = %cond.false.17, %cond.true.15
  %cond19 = phi i32 [ %mul16, %cond.true.15 ], [ %31, %cond.false.17 ]
  %32 = load %struct.symtable*, %struct.symtable** %st, align 8
  %recursion_limit20 = getelementptr inbounds %struct.symtable, %struct.symtable* %32, i32 0, i32 10
  store i32 %cond19, i32* %recursion_limit20, align 4
  %33 = load %struct._object*, %struct._object** @top, align 8
  %tobool21 = icmp ne %struct._object* %33, null
  br i1 %tobool21, label %cond.true.22, label %cond.false.24

cond.true.22:                                     ; preds = %cond.end.18
  %34 = load %struct._object*, %struct._object** @top, align 8
  %tobool23 = icmp ne %struct._object* %34, null
  br i1 %tobool23, label %lor.lhs.false, label %if.then.29

cond.false.24:                                    ; preds = %cond.end.18
  %call25 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call25, %struct._object** @top, align 8
  %tobool26 = icmp ne %struct._object* %call25, null
  br i1 %tobool26, label %lor.lhs.false, label %if.then.29

lor.lhs.false:                                    ; preds = %cond.false.24, %cond.true.22
  %35 = load %struct.symtable*, %struct.symtable** %st, align 8
  %36 = load %struct._object*, %struct._object** @top, align 8
  %37 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %38 = bitcast %struct._mod* %37 to i8*
  %call27 = call i32 @symtable_enter_block(%struct.symtable* %35, %struct._object* %36, i32 2, i8* %38, i32 0, i32 0)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %lor.lhs.false, %cond.false.24, %cond.true.22
  %39 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %39)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end.30:                                        ; preds = %lor.lhs.false
  %40 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %40, i32 0, i32 1
  %41 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %42 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_top = getelementptr inbounds %struct.symtable, %struct.symtable* %42, i32 0, i32 2
  store %struct._symtable_entry* %41, %struct._symtable_entry** %st_top, align 8
  %43 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_cur31 = getelementptr inbounds %struct.symtable, %struct.symtable* %43, i32 0, i32 1
  %44 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur31, align 8
  %ste_unoptimized = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %44, i32 0, i32 8
  store i32 2, i32* %ste_unoptimized, align 4
  %45 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %kind = getelementptr inbounds %struct._mod, %struct._mod* %45, i32 0, i32 0
  %46 = load i32, i32* %kind, align 4
  switch i32 %46, label %sw.epilog.79 [
    i32 1, label %sw.bb.32
    i32 3, label %sw.bb.46
    i32 2, label %sw.bb.53
    i32 4, label %sw.bb.78
  ]

sw.bb.32:                                         ; preds = %if.end.30
  %47 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v = getelementptr inbounds %struct._mod, %struct._mod* %47, i32 0, i32 1
  %Module = bitcast %union.anon* %v to %struct.anon*
  %body = getelementptr inbounds %struct.anon, %struct.anon* %Module, i32 0, i32 0
  %48 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  store %struct.asdl_seq* %48, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.32
  %49 = load i32, i32* %i, align 4
  %conv = sext i32 %49 to i64
  %50 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp33 = icmp eq %struct.asdl_seq* %50, null
  br i1 %cmp33, label %cond.true.35, label %cond.false.36

cond.true.35:                                     ; preds = %for.cond
  br label %cond.end.37

cond.false.36:                                    ; preds = %for.cond
  %51 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %51, i32 0, i32 0
  %52 = load i64, i64* %size, align 8
  br label %cond.end.37

cond.end.37:                                      ; preds = %cond.false.36, %cond.true.35
  %cond38 = phi i64 [ 0, %cond.true.35 ], [ %52, %cond.false.36 ]
  %cmp39 = icmp slt i64 %conv, %cond38
  br i1 %cmp39, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.37
  %53 = load %struct.symtable*, %struct.symtable** %st, align 8
  %54 = load i32, i32* %i, align 4
  %idxprom = sext i32 %54 to i64
  %55 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %55, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %56 = load i8*, i8** %arrayidx, align 8
  %57 = bitcast i8* %56 to %struct._stmt*
  %call41 = call i32 @symtable_visit_stmt(%struct.symtable* %53, %struct._stmt* %57)
  %tobool42 = icmp ne i32 %call41, 0
  br i1 %tobool42, label %if.end.44, label %if.then.43

if.then.43:                                       ; preds = %for.body
  br label %error

if.end.44:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.44
  %58 = load i32, i32* %i, align 4
  %inc45 = add i32 %58, 1
  store i32 %inc45, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end.37
  br label %sw.epilog.79

sw.bb.46:                                         ; preds = %if.end.30
  %59 = load %struct.symtable*, %struct.symtable** %st, align 8
  %60 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v47 = getelementptr inbounds %struct._mod, %struct._mod* %60, i32 0, i32 1
  %Expression = bitcast %union.anon* %v47 to %struct.anon.1*
  %body48 = getelementptr inbounds %struct.anon.1, %struct.anon.1* %Expression, i32 0, i32 0
  %61 = load %struct._expr*, %struct._expr** %body48, align 8
  %call49 = call i32 @symtable_visit_expr(%struct.symtable* %59, %struct._expr* %61)
  %tobool50 = icmp ne i32 %call49, 0
  br i1 %tobool50, label %if.end.52, label %if.then.51

if.then.51:                                       ; preds = %sw.bb.46
  br label %error

if.end.52:                                        ; preds = %sw.bb.46
  br label %sw.epilog.79

sw.bb.53:                                         ; preds = %if.end.30
  %62 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %v54 = getelementptr inbounds %struct._mod, %struct._mod* %62, i32 0, i32 1
  %Interactive = bitcast %union.anon* %v54 to %struct.anon.0*
  %body55 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %Interactive, i32 0, i32 0
  %63 = load %struct.asdl_seq*, %struct.asdl_seq** %body55, align 8
  store %struct.asdl_seq* %63, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond.56

for.cond.56:                                      ; preds = %for.inc.75, %sw.bb.53
  %64 = load i32, i32* %i, align 4
  %conv57 = sext i32 %64 to i64
  %65 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp58 = icmp eq %struct.asdl_seq* %65, null
  br i1 %cmp58, label %cond.true.60, label %cond.false.61

cond.true.60:                                     ; preds = %for.cond.56
  br label %cond.end.63

cond.false.61:                                    ; preds = %for.cond.56
  %66 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size62 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %66, i32 0, i32 0
  %67 = load i64, i64* %size62, align 8
  br label %cond.end.63

cond.end.63:                                      ; preds = %cond.false.61, %cond.true.60
  %cond64 = phi i64 [ 0, %cond.true.60 ], [ %67, %cond.false.61 ]
  %cmp65 = icmp slt i64 %conv57, %cond64
  br i1 %cmp65, label %for.body.67, label %for.end.77

for.body.67:                                      ; preds = %cond.end.63
  %68 = load %struct.symtable*, %struct.symtable** %st, align 8
  %69 = load i32, i32* %i, align 4
  %idxprom68 = sext i32 %69 to i64
  %70 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements69 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %70, i32 0, i32 1
  %arrayidx70 = getelementptr [1 x i8*], [1 x i8*]* %elements69, i32 0, i64 %idxprom68
  %71 = load i8*, i8** %arrayidx70, align 8
  %72 = bitcast i8* %71 to %struct._stmt*
  %call71 = call i32 @symtable_visit_stmt(%struct.symtable* %68, %struct._stmt* %72)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.74, label %if.then.73

if.then.73:                                       ; preds = %for.body.67
  br label %error

if.end.74:                                        ; preds = %for.body.67
  br label %for.inc.75

for.inc.75:                                       ; preds = %if.end.74
  %73 = load i32, i32* %i, align 4
  %inc76 = add i32 %73, 1
  store i32 %inc76, i32* %i, align 4
  br label %for.cond.56

for.end.77:                                       ; preds = %cond.end.63
  br label %sw.epilog.79

sw.bb.78:                                         ; preds = %if.end.30
  %74 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %74, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i32 0, i32 0))
  br label %error

sw.epilog.79:                                     ; preds = %if.end.30, %for.end.77, %if.end.52, %for.end
  %75 = load %struct.symtable*, %struct.symtable** %st, align 8
  %76 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %77 = bitcast %struct._mod* %76 to i8*
  %call80 = call i32 @symtable_exit_block(%struct.symtable* %75, i8* %77)
  %tobool81 = icmp ne i32 %call80, 0
  br i1 %tobool81, label %if.end.83, label %if.then.82

if.then.82:                                       ; preds = %sw.epilog.79
  %78 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %78)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end.83:                                        ; preds = %sw.epilog.79
  %79 = load %struct.symtable*, %struct.symtable** %st, align 8
  %call84 = call i32 @symtable_analyze(%struct.symtable* %79)
  %tobool85 = icmp ne i32 %call84, 0
  br i1 %tobool85, label %if.then.86, label %if.end.87

if.then.86:                                       ; preds = %if.end.83
  %80 = load %struct.symtable*, %struct.symtable** %st, align 8
  store %struct.symtable* %80, %struct.symtable** %retval
  br label %return

if.end.87:                                        ; preds = %if.end.83
  %81 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %81)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

error:                                            ; preds = %sw.bb.78, %if.then.73, %if.then.51, %if.then.43
  %82 = load %struct.symtable*, %struct.symtable** %st, align 8
  %83 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %84 = bitcast %struct._mod* %83 to i8*
  %call88 = call i32 @symtable_exit_block(%struct.symtable* %82, i8* %84)
  %85 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %85)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

return:                                           ; preds = %error, %if.end.87, %if.then.86, %if.then.82, %if.then.29, %if.then.8, %if.then.3, %if.then
  %86 = load %struct.symtable*, %struct.symtable** %retval
  ret %struct.symtable* %86
}

; Function Attrs: nounwind uwtable
define internal %struct.symtable* @symtable_new() #0 {
entry:
  %retval = alloca %struct.symtable*, align 8
  %st = alloca %struct.symtable*, align 8
  %call = call i8* @PyMem_Malloc(i64 80)
  %0 = bitcast i8* %call to %struct.symtable*
  store %struct.symtable* %0, %struct.symtable** %st, align 8
  %1 = load %struct.symtable*, %struct.symtable** %st, align 8
  %cmp = icmp eq %struct.symtable* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %2, i32 0, i32 0
  store %struct._object* null, %struct._object** %st_filename, align 8
  %3 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_blocks = getelementptr inbounds %struct.symtable, %struct.symtable* %3, i32 0, i32 3
  store %struct._object* null, %struct._object** %st_blocks, align 8
  %call1 = call %struct._object* @PyList_New(i64 0)
  %4 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_stack = getelementptr inbounds %struct.symtable, %struct.symtable* %4, i32 0, i32 4
  store %struct._object* %call1, %struct._object** %st_stack, align 8
  %cmp2 = icmp eq %struct._object* %call1, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %fail

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PyDict_New()
  %5 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_blocks6 = getelementptr inbounds %struct.symtable, %struct.symtable* %5, i32 0, i32 3
  store %struct._object* %call5, %struct._object** %st_blocks6, align 8
  %cmp7 = icmp eq %struct._object* %call5, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.4
  br label %fail

if.end.9:                                         ; preds = %if.end.4
  %6 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %6, i32 0, i32 1
  store %struct._symtable_entry* null, %struct._symtable_entry** %st_cur, align 8
  %7 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_private = getelementptr inbounds %struct.symtable, %struct.symtable* %7, i32 0, i32 7
  store %struct._object* null, %struct._object** %st_private, align 8
  %8 = load %struct.symtable*, %struct.symtable** %st, align 8
  store %struct.symtable* %8, %struct.symtable** %retval
  br label %return

fail:                                             ; preds = %if.then.8, %if.then.3
  %9 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %9)
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

return:                                           ; preds = %fail, %if.end.9, %if.then
  %10 = load %struct.symtable*, %struct.symtable** %retval
  ret %struct.symtable* %10
}

declare i32 @Py_GetRecursionLimit() #1

; Function Attrs: nounwind uwtable
define void @PySymtable_Free(%struct.symtable* %st) #0 {
entry:
  %st.addr = alloca %struct.symtable*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp11 = alloca %struct._object*, align 8
  %_py_xdecref_tmp24 = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 0
  %1 = load %struct._object*, %struct._object** %st_filename, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  br label %do.body.1

do.body.1:                                        ; preds = %if.then
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp2 = icmp ne i64 %dec, 0
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %do.body.1
  br label %if.end

if.else:                                          ; preds = %do.body.1
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
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
  %10 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_blocks = getelementptr inbounds %struct.symtable, %struct.symtable* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %st_blocks, align 8
  store %struct._object* %11, %struct._object** %_py_xdecref_tmp7, align 8
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  %cmp8 = icmp ne %struct._object* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.21

if.then.9:                                        ; preds = %do.body.6
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %13 = load %struct._object*, %struct._object** %_py_xdecref_tmp7, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp11, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_refcnt12 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt12, align 8
  %dec13 = add i64 %15, -1
  store i64 %dec13, i64* %ob_refcnt12, align 8
  %cmp14 = icmp ne i64 %dec13, 0
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %do.body.10
  br label %if.end.19

if.else.16:                                       ; preds = %do.body.10
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %tp_dealloc18 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc18, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp11, align 8
  call void %18(%struct._object* %19)
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
  %20 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_stack = getelementptr inbounds %struct.symtable, %struct.symtable* %20, i32 0, i32 4
  %21 = load %struct._object*, %struct._object** %st_stack, align 8
  store %struct._object* %21, %struct._object** %_py_xdecref_tmp24, align 8
  %22 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  %cmp25 = icmp ne %struct._object* %22, null
  br i1 %cmp25, label %if.then.26, label %if.end.38

if.then.26:                                       ; preds = %do.body.23
  br label %do.body.27

do.body.27:                                       ; preds = %if.then.26
  %23 = load %struct._object*, %struct._object** %_py_xdecref_tmp24, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp28, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %25, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.27
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.27
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %28(%struct._object* %29)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  %30 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %31 = bitcast %struct.symtable* %30 to i8*
  call void @PyMem_Free(i8* %31)
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #2 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #2 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4
  %0 = load i32, i32* %order.addr, align 4
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @symtable_enter_block(%struct.symtable* %st, %struct._object* %name, i32 %block, i8* %ast, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %name.addr = alloca %struct._object*, align 8
  %block.addr = alloca i32, align 4
  %ast.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %prev = alloca %struct._symtable_entry*, align 8
  %ste = alloca %struct._symtable_entry*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i32 %block, i32* %block.addr, align 4
  store i8* %ast, i8** %ast.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  store %struct._symtable_entry* null, %struct._symtable_entry** %prev, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._object*, %struct._object** %name.addr, align 8
  %2 = load i32, i32* %block.addr, align 4
  %3 = load i8*, i8** %ast.addr, align 8
  %4 = load i32, i32* %lineno.addr, align 4
  %5 = load i32, i32* %col_offset.addr, align 4
  %call = call %struct._symtable_entry* @ste_new(%struct.symtable* %0, %struct._object* %1, i32 %2, i8* %3, i32 %4, i32 %5)
  store %struct._symtable_entry* %call, %struct._symtable_entry** %ste, align 8
  %6 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %cmp = icmp eq %struct._symtable_entry* %6, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_stack = getelementptr inbounds %struct.symtable, %struct.symtable* %7, i32 0, i32 4
  %8 = load %struct._object*, %struct._object** %st_stack, align 8
  %9 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %10 = bitcast %struct._symtable_entry* %9 to %struct._object*
  %call1 = call i32 @PyList_Append(%struct._object* %8, %struct._object* %10)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %11 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %12 = bitcast %struct._symtable_entry* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end
  %19 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %19, i32 0, i32 1
  %20 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  store %struct._symtable_entry* %20, %struct._symtable_entry** %prev, align 8
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.7
  %21 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %22 = bitcast %struct._symtable_entry* %21 to %struct._object*
  store %struct._object* %22, %struct._object** %_py_decref_tmp9, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %24, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %27(%struct._object* %28)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %29 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %30 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur19 = getelementptr inbounds %struct.symtable, %struct.symtable* %30, i32 0, i32 1
  store %struct._symtable_entry* %29, %struct._symtable_entry** %st_cur19, align 8
  %31 = load i32, i32* %block.addr, align 4
  %cmp20 = icmp eq i32 %31, 2
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %do.end.18
  %32 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur22 = getelementptr inbounds %struct.symtable, %struct.symtable* %32, i32 0, i32 1
  %33 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur22, align 8
  %ste_symbols = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %33, i32 0, i32 2
  %34 = load %struct._object*, %struct._object** %ste_symbols, align 8
  %35 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_global = getelementptr inbounds %struct.symtable, %struct.symtable* %35, i32 0, i32 5
  store %struct._object* %34, %struct._object** %st_global, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.then.21, %do.end.18
  %36 = load %struct._symtable_entry*, %struct._symtable_entry** %prev, align 8
  %tobool = icmp ne %struct._symtable_entry* %36, null
  br i1 %tobool, label %if.then.24, label %if.end.29

if.then.24:                                       ; preds = %if.end.23
  %37 = load %struct._symtable_entry*, %struct._symtable_entry** %prev, align 8
  %ste_children = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %37, i32 0, i32 5
  %38 = load %struct._object*, %struct._object** %ste_children, align 8
  %39 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %40 = bitcast %struct._symtable_entry* %39 to %struct._object*
  %call25 = call i32 @PyList_Append(%struct._object* %38, %struct._object* %40)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.24
  store i32 0, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.24
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %if.end.23
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.29, %if.then.27, %do.end, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_stmt(%struct.symtable* %st, %struct._stmt* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %s.addr = alloca %struct._stmt*, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.asdl_seq*, align 8
  %elt = alloca %struct._expr*, align 8
  %i31 = alloca i32, align 4
  %seq32 = alloca %struct.asdl_seq*, align 8
  %elt49 = alloca %struct._expr*, align 8
  %i76 = alloca i32, align 4
  %seq77 = alloca %struct.asdl_seq*, align 8
  %elt93 = alloca %struct._expr*, align 8
  %i125 = alloca i32, align 4
  %seq126 = alloca %struct.asdl_seq*, align 8
  %elt141 = alloca %struct._stmt*, align 8
  %tmp = alloca %struct._object*, align 8
  %i170 = alloca i32, align 4
  %seq172 = alloca %struct.asdl_seq*, align 8
  %elt188 = alloca %struct._expr*, align 8
  %i202 = alloca i32, align 4
  %seq204 = alloca %struct.asdl_seq*, align 8
  %elt220 = alloca %struct._keyword*, align 8
  %i267 = alloca i32, align 4
  %seq269 = alloca %struct.asdl_seq*, align 8
  %elt286 = alloca %struct._expr*, align 8
  %i316 = alloca i32, align 4
  %seq318 = alloca %struct.asdl_seq*, align 8
  %elt335 = alloca %struct._stmt*, align 8
  %i371 = alloca i32, align 4
  %seq373 = alloca %struct.asdl_seq*, align 8
  %elt388 = alloca %struct._expr*, align 8
  %i403 = alloca i32, align 4
  %seq405 = alloca %struct.asdl_seq*, align 8
  %elt421 = alloca %struct._expr*, align 8
  %i478 = alloca i32, align 4
  %seq480 = alloca %struct.asdl_seq*, align 8
  %elt497 = alloca %struct._stmt*, align 8
  %i515 = alloca i32, align 4
  %seq517 = alloca %struct.asdl_seq*, align 8
  %elt534 = alloca %struct._stmt*, align 8
  %i557 = alloca i32, align 4
  %seq559 = alloca %struct.asdl_seq*, align 8
  %elt576 = alloca %struct._stmt*, align 8
  %i595 = alloca i32, align 4
  %seq597 = alloca %struct.asdl_seq*, align 8
  %elt614 = alloca %struct._stmt*, align 8
  %i638 = alloca i32, align 4
  %seq640 = alloca %struct.asdl_seq*, align 8
  %elt657 = alloca %struct._stmt*, align 8
  %i676 = alloca i32, align 4
  %seq678 = alloca %struct.asdl_seq*, align 8
  %elt695 = alloca %struct._stmt*, align 8
  %i739 = alloca i32, align 4
  %seq741 = alloca %struct.asdl_seq*, align 8
  %elt757 = alloca %struct._stmt*, align 8
  %i771 = alloca i32, align 4
  %seq773 = alloca %struct.asdl_seq*, align 8
  %elt790 = alloca %struct._stmt*, align 8
  %i804 = alloca i32, align 4
  %seq806 = alloca %struct.asdl_seq*, align 8
  %elt822 = alloca %struct._excepthandler*, align 8
  %i836 = alloca i32, align 4
  %seq838 = alloca %struct.asdl_seq*, align 8
  %elt854 = alloca %struct._stmt*, align 8
  %i892 = alloca i32, align 4
  %seq894 = alloca %struct.asdl_seq*, align 8
  %elt909 = alloca %struct._alias*, align 8
  %i935 = alloca i32, align 4
  %seq937 = alloca %struct.asdl_seq*, align 8
  %elt953 = alloca %struct._alias*, align 8
  %i983 = alloca i32, align 4
  %seq985 = alloca %struct.asdl_seq*, align 8
  %name1001 = alloca %struct._object*, align 8
  %cur = alloca i64, align 8
  %buf = alloca [256 x i8], align 16
  %c_name = alloca i8*, align 8
  %i1054 = alloca i32, align 4
  %seq1056 = alloca %struct.asdl_seq*, align 8
  %name1072 = alloca %struct._object*, align 8
  %cur1077 = alloca i64, align 8
  %buf1089 = alloca [256 x i8], align 16
  %c_name1091 = alloca i8*, align 8
  %i1141 = alloca i32, align 4
  %seq1143 = alloca %struct.asdl_seq*, align 8
  %elt1158 = alloca %struct._withitem*, align 8
  %i1172 = alloca i32, align 4
  %seq1174 = alloca %struct.asdl_seq*, align 8
  %elt1191 = alloca %struct._stmt*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._stmt* %s, %struct._stmt** %s.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 9
  %1 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %2 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_limit = getelementptr inbounds %struct.symtable, %struct.symtable* %2, i32 0, i32 10
  %3 = load i32, i32* %recursion_limit, align 4
  %cmp = icmp sgt i32 %inc, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0))
  %5 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1 = getelementptr inbounds %struct.symtable, %struct.symtable* %5, i32 0, i32 9
  %6 = load i32, i32* %recursion_depth1, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %recursion_depth1, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %kind = getelementptr inbounds %struct._stmt, %struct._stmt* %7, i32 0, i32 0
  %8 = load i32, i32* %kind, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.160
    i32 3, label %sw.bb.355
    i32 4, label %sw.bb.369
    i32 5, label %sw.bb.401
    i32 6, label %sw.bb.443
    i32 7, label %sw.bb.460
    i32 8, label %sw.bb.548
    i32 9, label %sw.bb.628
    i32 11, label %sw.bb.709
    i32 12, label %sw.bb.737
    i32 13, label %sw.bb.867
    i32 14, label %sw.bb.890
    i32 15, label %sw.bb.933
    i32 16, label %sw.bb.981
    i32 17, label %sw.bb.1052
    i32 18, label %sw.bb.1129
    i32 19, label %sw.bb.1138
    i32 20, label %sw.bb.1138
    i32 21, label %sw.bb.1138
    i32 10, label %sw.bb.1139
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %10 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v = getelementptr inbounds %struct._stmt, %struct._stmt* %10, i32 0, i32 1
  %FunctionDef = bitcast %union.anon.33* %v to %struct.anon.34*
  %name = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %name, align 8
  %call = call i32 @symtable_add_def(%struct.symtable* %9, %struct._object* %11, i32 2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.5, label %if.then.2

if.then.2:                                        ; preds = %sw.bb
  %12 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth3 = getelementptr inbounds %struct.symtable, %struct.symtable* %12, i32 0, i32 9
  %13 = load i32, i32* %recursion_depth3, align 4
  %dec4 = add i32 %13, -1
  store i32 %dec4, i32* %recursion_depth3, align 4
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %sw.bb
  %14 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v6 = getelementptr inbounds %struct._stmt, %struct._stmt* %14, i32 0, i32 1
  %FunctionDef7 = bitcast %union.anon.33* %v6 to %struct.anon.34*
  %args = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef7, i32 0, i32 1
  %15 = load %struct._arguments*, %struct._arguments** %args, align 8
  %defaults = getelementptr inbounds %struct._arguments, %struct._arguments* %15, i32 0, i32 5
  %16 = load %struct.asdl_seq*, %struct.asdl_seq** %defaults, align 8
  %tobool8 = icmp ne %struct.asdl_seq* %16, null
  br i1 %tobool8, label %if.then.9, label %if.end.25

if.then.9:                                        ; preds = %if.end.5
  %17 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v10 = getelementptr inbounds %struct._stmt, %struct._stmt* %17, i32 0, i32 1
  %FunctionDef11 = bitcast %union.anon.33* %v10 to %struct.anon.34*
  %args12 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef11, i32 0, i32 1
  %18 = load %struct._arguments*, %struct._arguments** %args12, align 8
  %defaults13 = getelementptr inbounds %struct._arguments, %struct._arguments* %18, i32 0, i32 5
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %defaults13, align 8
  store %struct.asdl_seq* %19, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.9
  %20 = load i32, i32* %i, align 4
  %conv = sext i32 %20 to i64
  %21 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp14 = icmp eq %struct.asdl_seq* %21, null
  br i1 %cmp14, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %22 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %22, i32 0, i32 0
  %23 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %23, %cond.false ]
  %cmp16 = icmp slt i64 %conv, %cond
  br i1 %cmp16, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %24 = load i32, i32* %i, align 4
  %idxprom = sext i32 %24 to i64
  %25 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %25, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %26 = load i8*, i8** %arrayidx, align 8
  %27 = bitcast i8* %26 to %struct._expr*
  store %struct._expr* %27, %struct._expr** %elt, align 8
  %28 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %29 = load %struct._expr*, %struct._expr** %elt, align 8
  %call18 = call i32 @symtable_visit_expr(%struct.symtable* %28, %struct._expr* %29)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %for.body
  %30 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth21 = getelementptr inbounds %struct.symtable, %struct.symtable* %30, i32 0, i32 9
  %31 = load i32, i32* %recursion_depth21, align 4
  %dec22 = add i32 %31, -1
  store i32 %dec22, i32* %recursion_depth21, align 4
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.23
  %32 = load i32, i32* %i, align 4
  %inc24 = add i32 %32, 1
  store i32 %inc24, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %if.end.25

if.end.25:                                        ; preds = %for.end, %if.end.5
  %33 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v26 = getelementptr inbounds %struct._stmt, %struct._stmt* %33, i32 0, i32 1
  %FunctionDef27 = bitcast %union.anon.33* %v26 to %struct.anon.34*
  %args28 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef27, i32 0, i32 1
  %34 = load %struct._arguments*, %struct._arguments** %args28, align 8
  %kw_defaults = getelementptr inbounds %struct._arguments, %struct._arguments* %34, i32 0, i32 3
  %35 = load %struct.asdl_seq*, %struct.asdl_seq** %kw_defaults, align 8
  %tobool29 = icmp ne %struct.asdl_seq* %35, null
  br i1 %tobool29, label %if.then.30, label %if.end.65

if.then.30:                                       ; preds = %if.end.25
  store i32 0, i32* %i31, align 4
  %36 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v33 = getelementptr inbounds %struct._stmt, %struct._stmt* %36, i32 0, i32 1
  %FunctionDef34 = bitcast %union.anon.33* %v33 to %struct.anon.34*
  %args35 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef34, i32 0, i32 1
  %37 = load %struct._arguments*, %struct._arguments** %args35, align 8
  %kw_defaults36 = getelementptr inbounds %struct._arguments, %struct._arguments* %37, i32 0, i32 3
  %38 = load %struct.asdl_seq*, %struct.asdl_seq** %kw_defaults36, align 8
  store %struct.asdl_seq* %38, %struct.asdl_seq** %seq32, align 8
  store i32 0, i32* %i31, align 4
  br label %for.cond.37

for.cond.37:                                      ; preds = %for.inc.62, %if.then.30
  %39 = load i32, i32* %i31, align 4
  %conv38 = sext i32 %39 to i64
  %40 = load %struct.asdl_seq*, %struct.asdl_seq** %seq32, align 8
  %cmp39 = icmp eq %struct.asdl_seq* %40, null
  br i1 %cmp39, label %cond.true.41, label %cond.false.42

cond.true.41:                                     ; preds = %for.cond.37
  br label %cond.end.44

cond.false.42:                                    ; preds = %for.cond.37
  %41 = load %struct.asdl_seq*, %struct.asdl_seq** %seq32, align 8
  %size43 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %41, i32 0, i32 0
  %42 = load i64, i64* %size43, align 8
  br label %cond.end.44

cond.end.44:                                      ; preds = %cond.false.42, %cond.true.41
  %cond45 = phi i64 [ 0, %cond.true.41 ], [ %42, %cond.false.42 ]
  %cmp46 = icmp slt i64 %conv38, %cond45
  br i1 %cmp46, label %for.body.48, label %for.end.64

for.body.48:                                      ; preds = %cond.end.44
  %43 = load i32, i32* %i31, align 4
  %idxprom50 = sext i32 %43 to i64
  %44 = load %struct.asdl_seq*, %struct.asdl_seq** %seq32, align 8
  %elements51 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %44, i32 0, i32 1
  %arrayidx52 = getelementptr [1 x i8*], [1 x i8*]* %elements51, i32 0, i64 %idxprom50
  %45 = load i8*, i8** %arrayidx52, align 8
  %46 = bitcast i8* %45 to %struct._expr*
  store %struct._expr* %46, %struct._expr** %elt49, align 8
  %47 = load %struct._expr*, %struct._expr** %elt49, align 8
  %tobool53 = icmp ne %struct._expr* %47, null
  br i1 %tobool53, label %if.end.55, label %if.then.54

if.then.54:                                       ; preds = %for.body.48
  br label %for.inc.62

if.end.55:                                        ; preds = %for.body.48
  %48 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %49 = load %struct._expr*, %struct._expr** %elt49, align 8
  %call56 = call i32 @symtable_visit_expr(%struct.symtable* %48, %struct._expr* %49)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.61, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  %50 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth59 = getelementptr inbounds %struct.symtable, %struct.symtable* %50, i32 0, i32 9
  %51 = load i32, i32* %recursion_depth59, align 4
  %dec60 = add i32 %51, -1
  store i32 %dec60, i32* %recursion_depth59, align 4
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.55
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61, %if.then.54
  %52 = load i32, i32* %i31, align 4
  %inc63 = add i32 %52, 1
  store i32 %inc63, i32* %i31, align 4
  br label %for.cond.37

for.end.64:                                       ; preds = %cond.end.44
  br label %if.end.65

if.end.65:                                        ; preds = %for.end.64, %if.end.25
  %53 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %54 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %call66 = call i32 @symtable_visit_annotations(%struct.symtable* %53, %struct._stmt* %54)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.end.71, label %if.then.68

if.then.68:                                       ; preds = %if.end.65
  %55 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth69 = getelementptr inbounds %struct.symtable, %struct.symtable* %55, i32 0, i32 9
  %56 = load i32, i32* %recursion_depth69, align 4
  %dec70 = add i32 %56, -1
  store i32 %dec70, i32* %recursion_depth69, align 4
  store i32 0, i32* %retval
  br label %return

if.end.71:                                        ; preds = %if.end.65
  %57 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v72 = getelementptr inbounds %struct._stmt, %struct._stmt* %57, i32 0, i32 1
  %FunctionDef73 = bitcast %union.anon.33* %v72 to %struct.anon.34*
  %decorator_list = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef73, i32 0, i32 3
  %58 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_list, align 8
  %tobool74 = icmp ne %struct.asdl_seq* %58, null
  br i1 %tobool74, label %if.then.75, label %if.end.106

if.then.75:                                       ; preds = %if.end.71
  %59 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v78 = getelementptr inbounds %struct._stmt, %struct._stmt* %59, i32 0, i32 1
  %FunctionDef79 = bitcast %union.anon.33* %v78 to %struct.anon.34*
  %decorator_list80 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef79, i32 0, i32 3
  %60 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_list80, align 8
  store %struct.asdl_seq* %60, %struct.asdl_seq** %seq77, align 8
  store i32 0, i32* %i76, align 4
  br label %for.cond.81

for.cond.81:                                      ; preds = %for.inc.103, %if.then.75
  %61 = load i32, i32* %i76, align 4
  %conv82 = sext i32 %61 to i64
  %62 = load %struct.asdl_seq*, %struct.asdl_seq** %seq77, align 8
  %cmp83 = icmp eq %struct.asdl_seq* %62, null
  br i1 %cmp83, label %cond.true.85, label %cond.false.86

cond.true.85:                                     ; preds = %for.cond.81
  br label %cond.end.88

cond.false.86:                                    ; preds = %for.cond.81
  %63 = load %struct.asdl_seq*, %struct.asdl_seq** %seq77, align 8
  %size87 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %63, i32 0, i32 0
  %64 = load i64, i64* %size87, align 8
  br label %cond.end.88

cond.end.88:                                      ; preds = %cond.false.86, %cond.true.85
  %cond89 = phi i64 [ 0, %cond.true.85 ], [ %64, %cond.false.86 ]
  %cmp90 = icmp slt i64 %conv82, %cond89
  br i1 %cmp90, label %for.body.92, label %for.end.105

for.body.92:                                      ; preds = %cond.end.88
  %65 = load i32, i32* %i76, align 4
  %idxprom94 = sext i32 %65 to i64
  %66 = load %struct.asdl_seq*, %struct.asdl_seq** %seq77, align 8
  %elements95 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %66, i32 0, i32 1
  %arrayidx96 = getelementptr [1 x i8*], [1 x i8*]* %elements95, i32 0, i64 %idxprom94
  %67 = load i8*, i8** %arrayidx96, align 8
  %68 = bitcast i8* %67 to %struct._expr*
  store %struct._expr* %68, %struct._expr** %elt93, align 8
  %69 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %70 = load %struct._expr*, %struct._expr** %elt93, align 8
  %call97 = call i32 @symtable_visit_expr(%struct.symtable* %69, %struct._expr* %70)
  %tobool98 = icmp ne i32 %call97, 0
  br i1 %tobool98, label %if.end.102, label %if.then.99

if.then.99:                                       ; preds = %for.body.92
  %71 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth100 = getelementptr inbounds %struct.symtable, %struct.symtable* %71, i32 0, i32 9
  %72 = load i32, i32* %recursion_depth100, align 4
  %dec101 = add i32 %72, -1
  store i32 %dec101, i32* %recursion_depth100, align 4
  store i32 0, i32* %retval
  br label %return

if.end.102:                                       ; preds = %for.body.92
  br label %for.inc.103

for.inc.103:                                      ; preds = %if.end.102
  %73 = load i32, i32* %i76, align 4
  %inc104 = add i32 %73, 1
  store i32 %inc104, i32* %i76, align 4
  br label %for.cond.81

for.end.105:                                      ; preds = %cond.end.88
  br label %if.end.106

if.end.106:                                       ; preds = %for.end.105, %if.end.71
  %74 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %75 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v107 = getelementptr inbounds %struct._stmt, %struct._stmt* %75, i32 0, i32 1
  %FunctionDef108 = bitcast %union.anon.33* %v107 to %struct.anon.34*
  %name109 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef108, i32 0, i32 0
  %76 = load %struct._object*, %struct._object** %name109, align 8
  %77 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %78 = bitcast %struct._stmt* %77 to i8*
  %79 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno = getelementptr inbounds %struct._stmt, %struct._stmt* %79, i32 0, i32 2
  %80 = load i32, i32* %lineno, align 4
  %81 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %col_offset = getelementptr inbounds %struct._stmt, %struct._stmt* %81, i32 0, i32 3
  %82 = load i32, i32* %col_offset, align 4
  %call110 = call i32 @symtable_enter_block(%struct.symtable* %74, %struct._object* %76, i32 0, i8* %78, i32 %80, i32 %82)
  %tobool111 = icmp ne i32 %call110, 0
  br i1 %tobool111, label %if.end.115, label %if.then.112

if.then.112:                                      ; preds = %if.end.106
  %83 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth113 = getelementptr inbounds %struct.symtable, %struct.symtable* %83, i32 0, i32 9
  %84 = load i32, i32* %recursion_depth113, align 4
  %dec114 = add i32 %84, -1
  store i32 %dec114, i32* %recursion_depth113, align 4
  store i32 0, i32* %retval
  br label %return

if.end.115:                                       ; preds = %if.end.106
  %85 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %86 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v116 = getelementptr inbounds %struct._stmt, %struct._stmt* %86, i32 0, i32 1
  %FunctionDef117 = bitcast %union.anon.33* %v116 to %struct.anon.34*
  %args118 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef117, i32 0, i32 1
  %87 = load %struct._arguments*, %struct._arguments** %args118, align 8
  %call119 = call i32 @symtable_visit_arguments(%struct.symtable* %85, %struct._arguments* %87)
  %tobool120 = icmp ne i32 %call119, 0
  br i1 %tobool120, label %if.end.124, label %if.then.121

if.then.121:                                      ; preds = %if.end.115
  %88 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth122 = getelementptr inbounds %struct.symtable, %struct.symtable* %88, i32 0, i32 9
  %89 = load i32, i32* %recursion_depth122, align 4
  %dec123 = add i32 %89, -1
  store i32 %dec123, i32* %recursion_depth122, align 4
  store i32 0, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.end.115
  %90 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v127 = getelementptr inbounds %struct._stmt, %struct._stmt* %90, i32 0, i32 1
  %FunctionDef128 = bitcast %union.anon.33* %v127 to %struct.anon.34*
  %body = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef128, i32 0, i32 2
  %91 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  store %struct.asdl_seq* %91, %struct.asdl_seq** %seq126, align 8
  store i32 0, i32* %i125, align 4
  br label %for.cond.129

for.cond.129:                                     ; preds = %for.inc.151, %if.end.124
  %92 = load i32, i32* %i125, align 4
  %conv130 = sext i32 %92 to i64
  %93 = load %struct.asdl_seq*, %struct.asdl_seq** %seq126, align 8
  %cmp131 = icmp eq %struct.asdl_seq* %93, null
  br i1 %cmp131, label %cond.true.133, label %cond.false.134

cond.true.133:                                    ; preds = %for.cond.129
  br label %cond.end.136

cond.false.134:                                   ; preds = %for.cond.129
  %94 = load %struct.asdl_seq*, %struct.asdl_seq** %seq126, align 8
  %size135 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %94, i32 0, i32 0
  %95 = load i64, i64* %size135, align 8
  br label %cond.end.136

cond.end.136:                                     ; preds = %cond.false.134, %cond.true.133
  %cond137 = phi i64 [ 0, %cond.true.133 ], [ %95, %cond.false.134 ]
  %cmp138 = icmp slt i64 %conv130, %cond137
  br i1 %cmp138, label %for.body.140, label %for.end.153

for.body.140:                                     ; preds = %cond.end.136
  %96 = load i32, i32* %i125, align 4
  %idxprom142 = sext i32 %96 to i64
  %97 = load %struct.asdl_seq*, %struct.asdl_seq** %seq126, align 8
  %elements143 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %97, i32 0, i32 1
  %arrayidx144 = getelementptr [1 x i8*], [1 x i8*]* %elements143, i32 0, i64 %idxprom142
  %98 = load i8*, i8** %arrayidx144, align 8
  %99 = bitcast i8* %98 to %struct._stmt*
  store %struct._stmt* %99, %struct._stmt** %elt141, align 8
  %100 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %101 = load %struct._stmt*, %struct._stmt** %elt141, align 8
  %call145 = call i32 @symtable_visit_stmt(%struct.symtable* %100, %struct._stmt* %101)
  %tobool146 = icmp ne i32 %call145, 0
  br i1 %tobool146, label %if.end.150, label %if.then.147

if.then.147:                                      ; preds = %for.body.140
  %102 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth148 = getelementptr inbounds %struct.symtable, %struct.symtable* %102, i32 0, i32 9
  %103 = load i32, i32* %recursion_depth148, align 4
  %dec149 = add i32 %103, -1
  store i32 %dec149, i32* %recursion_depth148, align 4
  store i32 0, i32* %retval
  br label %return

if.end.150:                                       ; preds = %for.body.140
  br label %for.inc.151

for.inc.151:                                      ; preds = %if.end.150
  %104 = load i32, i32* %i125, align 4
  %inc152 = add i32 %104, 1
  store i32 %inc152, i32* %i125, align 4
  br label %for.cond.129

for.end.153:                                      ; preds = %cond.end.136
  %105 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %106 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %107 = bitcast %struct._stmt* %106 to i8*
  %call154 = call i32 @symtable_exit_block(%struct.symtable* %105, i8* %107)
  %tobool155 = icmp ne i32 %call154, 0
  br i1 %tobool155, label %if.end.159, label %if.then.156

if.then.156:                                      ; preds = %for.end.153
  %108 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth157 = getelementptr inbounds %struct.symtable, %struct.symtable* %108, i32 0, i32 9
  %109 = load i32, i32* %recursion_depth157, align 4
  %dec158 = add i32 %109, -1
  store i32 %dec158, i32* %recursion_depth157, align 4
  store i32 0, i32* %retval
  br label %return

if.end.159:                                       ; preds = %for.end.153
  br label %sw.epilog

sw.bb.160:                                        ; preds = %if.end
  %110 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %111 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v161 = getelementptr inbounds %struct._stmt, %struct._stmt* %111, i32 0, i32 1
  %ClassDef = bitcast %union.anon.33* %v161 to %struct.anon.35*
  %name162 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef, i32 0, i32 0
  %112 = load %struct._object*, %struct._object** %name162, align 8
  %call163 = call i32 @symtable_add_def(%struct.symtable* %110, %struct._object* %112, i32 2)
  %tobool164 = icmp ne i32 %call163, 0
  br i1 %tobool164, label %if.end.168, label %if.then.165

if.then.165:                                      ; preds = %sw.bb.160
  %113 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth166 = getelementptr inbounds %struct.symtable, %struct.symtable* %113, i32 0, i32 9
  %114 = load i32, i32* %recursion_depth166, align 4
  %dec167 = add i32 %114, -1
  store i32 %dec167, i32* %recursion_depth166, align 4
  store i32 0, i32* %retval
  br label %return

if.end.168:                                       ; preds = %sw.bb.160
  %115 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v173 = getelementptr inbounds %struct._stmt, %struct._stmt* %115, i32 0, i32 1
  %ClassDef174 = bitcast %union.anon.33* %v173 to %struct.anon.35*
  %bases = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef174, i32 0, i32 1
  %116 = load %struct.asdl_seq*, %struct.asdl_seq** %bases, align 8
  store %struct.asdl_seq* %116, %struct.asdl_seq** %seq172, align 8
  store i32 0, i32* %i170, align 4
  br label %for.cond.175

for.cond.175:                                     ; preds = %for.inc.198, %if.end.168
  %117 = load i32, i32* %i170, align 4
  %conv176 = sext i32 %117 to i64
  %118 = load %struct.asdl_seq*, %struct.asdl_seq** %seq172, align 8
  %cmp177 = icmp eq %struct.asdl_seq* %118, null
  br i1 %cmp177, label %cond.true.179, label %cond.false.180

cond.true.179:                                    ; preds = %for.cond.175
  br label %cond.end.182

cond.false.180:                                   ; preds = %for.cond.175
  %119 = load %struct.asdl_seq*, %struct.asdl_seq** %seq172, align 8
  %size181 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %119, i32 0, i32 0
  %120 = load i64, i64* %size181, align 8
  br label %cond.end.182

cond.end.182:                                     ; preds = %cond.false.180, %cond.true.179
  %cond183 = phi i64 [ 0, %cond.true.179 ], [ %120, %cond.false.180 ]
  %cmp184 = icmp slt i64 %conv176, %cond183
  br i1 %cmp184, label %for.body.186, label %for.end.200

for.body.186:                                     ; preds = %cond.end.182
  %121 = load i32, i32* %i170, align 4
  %idxprom189 = sext i32 %121 to i64
  %122 = load %struct.asdl_seq*, %struct.asdl_seq** %seq172, align 8
  %elements190 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %122, i32 0, i32 1
  %arrayidx191 = getelementptr [1 x i8*], [1 x i8*]* %elements190, i32 0, i64 %idxprom189
  %123 = load i8*, i8** %arrayidx191, align 8
  %124 = bitcast i8* %123 to %struct._expr*
  store %struct._expr* %124, %struct._expr** %elt188, align 8
  %125 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %126 = load %struct._expr*, %struct._expr** %elt188, align 8
  %call192 = call i32 @symtable_visit_expr(%struct.symtable* %125, %struct._expr* %126)
  %tobool193 = icmp ne i32 %call192, 0
  br i1 %tobool193, label %if.end.197, label %if.then.194

if.then.194:                                      ; preds = %for.body.186
  %127 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth195 = getelementptr inbounds %struct.symtable, %struct.symtable* %127, i32 0, i32 9
  %128 = load i32, i32* %recursion_depth195, align 4
  %dec196 = add i32 %128, -1
  store i32 %dec196, i32* %recursion_depth195, align 4
  store i32 0, i32* %retval
  br label %return

if.end.197:                                       ; preds = %for.body.186
  br label %for.inc.198

for.inc.198:                                      ; preds = %if.end.197
  %129 = load i32, i32* %i170, align 4
  %inc199 = add i32 %129, 1
  store i32 %inc199, i32* %i170, align 4
  br label %for.cond.175

for.end.200:                                      ; preds = %cond.end.182
  %130 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v205 = getelementptr inbounds %struct._stmt, %struct._stmt* %130, i32 0, i32 1
  %ClassDef206 = bitcast %union.anon.33* %v205 to %struct.anon.35*
  %keywords = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef206, i32 0, i32 2
  %131 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  store %struct.asdl_seq* %131, %struct.asdl_seq** %seq204, align 8
  store i32 0, i32* %i202, align 4
  br label %for.cond.207

for.cond.207:                                     ; preds = %for.inc.230, %for.end.200
  %132 = load i32, i32* %i202, align 4
  %conv208 = sext i32 %132 to i64
  %133 = load %struct.asdl_seq*, %struct.asdl_seq** %seq204, align 8
  %cmp209 = icmp eq %struct.asdl_seq* %133, null
  br i1 %cmp209, label %cond.true.211, label %cond.false.212

cond.true.211:                                    ; preds = %for.cond.207
  br label %cond.end.214

cond.false.212:                                   ; preds = %for.cond.207
  %134 = load %struct.asdl_seq*, %struct.asdl_seq** %seq204, align 8
  %size213 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %134, i32 0, i32 0
  %135 = load i64, i64* %size213, align 8
  br label %cond.end.214

cond.end.214:                                     ; preds = %cond.false.212, %cond.true.211
  %cond215 = phi i64 [ 0, %cond.true.211 ], [ %135, %cond.false.212 ]
  %cmp216 = icmp slt i64 %conv208, %cond215
  br i1 %cmp216, label %for.body.218, label %for.end.232

for.body.218:                                     ; preds = %cond.end.214
  %136 = load i32, i32* %i202, align 4
  %idxprom221 = sext i32 %136 to i64
  %137 = load %struct.asdl_seq*, %struct.asdl_seq** %seq204, align 8
  %elements222 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %137, i32 0, i32 1
  %arrayidx223 = getelementptr [1 x i8*], [1 x i8*]* %elements222, i32 0, i64 %idxprom221
  %138 = load i8*, i8** %arrayidx223, align 8
  %139 = bitcast i8* %138 to %struct._keyword*
  store %struct._keyword* %139, %struct._keyword** %elt220, align 8
  %140 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %141 = load %struct._keyword*, %struct._keyword** %elt220, align 8
  %call224 = call i32 @symtable_visit_keyword(%struct.symtable* %140, %struct._keyword* %141)
  %tobool225 = icmp ne i32 %call224, 0
  br i1 %tobool225, label %if.end.229, label %if.then.226

if.then.226:                                      ; preds = %for.body.218
  %142 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth227 = getelementptr inbounds %struct.symtable, %struct.symtable* %142, i32 0, i32 9
  %143 = load i32, i32* %recursion_depth227, align 4
  %dec228 = add i32 %143, -1
  store i32 %dec228, i32* %recursion_depth227, align 4
  store i32 0, i32* %retval
  br label %return

if.end.229:                                       ; preds = %for.body.218
  br label %for.inc.230

for.inc.230:                                      ; preds = %if.end.229
  %144 = load i32, i32* %i202, align 4
  %inc231 = add i32 %144, 1
  store i32 %inc231, i32* %i202, align 4
  br label %for.cond.207

for.end.232:                                      ; preds = %cond.end.214
  %145 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v233 = getelementptr inbounds %struct._stmt, %struct._stmt* %145, i32 0, i32 1
  %ClassDef234 = bitcast %union.anon.33* %v233 to %struct.anon.35*
  %starargs = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef234, i32 0, i32 3
  %146 = load %struct._expr*, %struct._expr** %starargs, align 8
  %tobool235 = icmp ne %struct._expr* %146, null
  br i1 %tobool235, label %if.then.236, label %if.end.246

if.then.236:                                      ; preds = %for.end.232
  %147 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %148 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v237 = getelementptr inbounds %struct._stmt, %struct._stmt* %148, i32 0, i32 1
  %ClassDef238 = bitcast %union.anon.33* %v237 to %struct.anon.35*
  %starargs239 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef238, i32 0, i32 3
  %149 = load %struct._expr*, %struct._expr** %starargs239, align 8
  %call240 = call i32 @symtable_visit_expr(%struct.symtable* %147, %struct._expr* %149)
  %tobool241 = icmp ne i32 %call240, 0
  br i1 %tobool241, label %if.end.245, label %if.then.242

if.then.242:                                      ; preds = %if.then.236
  %150 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth243 = getelementptr inbounds %struct.symtable, %struct.symtable* %150, i32 0, i32 9
  %151 = load i32, i32* %recursion_depth243, align 4
  %dec244 = add i32 %151, -1
  store i32 %dec244, i32* %recursion_depth243, align 4
  store i32 0, i32* %retval
  br label %return

if.end.245:                                       ; preds = %if.then.236
  br label %if.end.246

if.end.246:                                       ; preds = %if.end.245, %for.end.232
  %152 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v247 = getelementptr inbounds %struct._stmt, %struct._stmt* %152, i32 0, i32 1
  %ClassDef248 = bitcast %union.anon.33* %v247 to %struct.anon.35*
  %kwargs = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef248, i32 0, i32 4
  %153 = load %struct._expr*, %struct._expr** %kwargs, align 8
  %tobool249 = icmp ne %struct._expr* %153, null
  br i1 %tobool249, label %if.then.250, label %if.end.260

if.then.250:                                      ; preds = %if.end.246
  %154 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %155 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v251 = getelementptr inbounds %struct._stmt, %struct._stmt* %155, i32 0, i32 1
  %ClassDef252 = bitcast %union.anon.33* %v251 to %struct.anon.35*
  %kwargs253 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef252, i32 0, i32 4
  %156 = load %struct._expr*, %struct._expr** %kwargs253, align 8
  %call254 = call i32 @symtable_visit_expr(%struct.symtable* %154, %struct._expr* %156)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.end.259, label %if.then.256

if.then.256:                                      ; preds = %if.then.250
  %157 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth257 = getelementptr inbounds %struct.symtable, %struct.symtable* %157, i32 0, i32 9
  %158 = load i32, i32* %recursion_depth257, align 4
  %dec258 = add i32 %158, -1
  store i32 %dec258, i32* %recursion_depth257, align 4
  store i32 0, i32* %retval
  br label %return

if.end.259:                                       ; preds = %if.then.250
  br label %if.end.260

if.end.260:                                       ; preds = %if.end.259, %if.end.246
  %159 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v261 = getelementptr inbounds %struct._stmt, %struct._stmt* %159, i32 0, i32 1
  %ClassDef262 = bitcast %union.anon.33* %v261 to %struct.anon.35*
  %decorator_list263 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef262, i32 0, i32 6
  %160 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_list263, align 8
  %tobool264 = icmp ne %struct.asdl_seq* %160, null
  br i1 %tobool264, label %if.then.265, label %if.end.299

if.then.265:                                      ; preds = %if.end.260
  %161 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v270 = getelementptr inbounds %struct._stmt, %struct._stmt* %161, i32 0, i32 1
  %ClassDef271 = bitcast %union.anon.33* %v270 to %struct.anon.35*
  %decorator_list272 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef271, i32 0, i32 6
  %162 = load %struct.asdl_seq*, %struct.asdl_seq** %decorator_list272, align 8
  store %struct.asdl_seq* %162, %struct.asdl_seq** %seq269, align 8
  store i32 0, i32* %i267, align 4
  br label %for.cond.273

for.cond.273:                                     ; preds = %for.inc.296, %if.then.265
  %163 = load i32, i32* %i267, align 4
  %conv274 = sext i32 %163 to i64
  %164 = load %struct.asdl_seq*, %struct.asdl_seq** %seq269, align 8
  %cmp275 = icmp eq %struct.asdl_seq* %164, null
  br i1 %cmp275, label %cond.true.277, label %cond.false.278

cond.true.277:                                    ; preds = %for.cond.273
  br label %cond.end.280

cond.false.278:                                   ; preds = %for.cond.273
  %165 = load %struct.asdl_seq*, %struct.asdl_seq** %seq269, align 8
  %size279 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %165, i32 0, i32 0
  %166 = load i64, i64* %size279, align 8
  br label %cond.end.280

cond.end.280:                                     ; preds = %cond.false.278, %cond.true.277
  %cond281 = phi i64 [ 0, %cond.true.277 ], [ %166, %cond.false.278 ]
  %cmp282 = icmp slt i64 %conv274, %cond281
  br i1 %cmp282, label %for.body.284, label %for.end.298

for.body.284:                                     ; preds = %cond.end.280
  %167 = load i32, i32* %i267, align 4
  %idxprom287 = sext i32 %167 to i64
  %168 = load %struct.asdl_seq*, %struct.asdl_seq** %seq269, align 8
  %elements288 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %168, i32 0, i32 1
  %arrayidx289 = getelementptr [1 x i8*], [1 x i8*]* %elements288, i32 0, i64 %idxprom287
  %169 = load i8*, i8** %arrayidx289, align 8
  %170 = bitcast i8* %169 to %struct._expr*
  store %struct._expr* %170, %struct._expr** %elt286, align 8
  %171 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %172 = load %struct._expr*, %struct._expr** %elt286, align 8
  %call290 = call i32 @symtable_visit_expr(%struct.symtable* %171, %struct._expr* %172)
  %tobool291 = icmp ne i32 %call290, 0
  br i1 %tobool291, label %if.end.295, label %if.then.292

if.then.292:                                      ; preds = %for.body.284
  %173 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth293 = getelementptr inbounds %struct.symtable, %struct.symtable* %173, i32 0, i32 9
  %174 = load i32, i32* %recursion_depth293, align 4
  %dec294 = add i32 %174, -1
  store i32 %dec294, i32* %recursion_depth293, align 4
  store i32 0, i32* %retval
  br label %return

if.end.295:                                       ; preds = %for.body.284
  br label %for.inc.296

for.inc.296:                                      ; preds = %if.end.295
  %175 = load i32, i32* %i267, align 4
  %inc297 = add i32 %175, 1
  store i32 %inc297, i32* %i267, align 4
  br label %for.cond.273

for.end.298:                                      ; preds = %cond.end.280
  br label %if.end.299

if.end.299:                                       ; preds = %for.end.298, %if.end.260
  %176 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %177 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v300 = getelementptr inbounds %struct._stmt, %struct._stmt* %177, i32 0, i32 1
  %ClassDef301 = bitcast %union.anon.33* %v300 to %struct.anon.35*
  %name302 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef301, i32 0, i32 0
  %178 = load %struct._object*, %struct._object** %name302, align 8
  %179 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %180 = bitcast %struct._stmt* %179 to i8*
  %181 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno303 = getelementptr inbounds %struct._stmt, %struct._stmt* %181, i32 0, i32 2
  %182 = load i32, i32* %lineno303, align 4
  %183 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %col_offset304 = getelementptr inbounds %struct._stmt, %struct._stmt* %183, i32 0, i32 3
  %184 = load i32, i32* %col_offset304, align 4
  %call305 = call i32 @symtable_enter_block(%struct.symtable* %176, %struct._object* %178, i32 1, i8* %180, i32 %182, i32 %184)
  %tobool306 = icmp ne i32 %call305, 0
  br i1 %tobool306, label %if.end.310, label %if.then.307

if.then.307:                                      ; preds = %if.end.299
  %185 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth308 = getelementptr inbounds %struct.symtable, %struct.symtable* %185, i32 0, i32 9
  %186 = load i32, i32* %recursion_depth308, align 4
  %dec309 = add i32 %186, -1
  store i32 %dec309, i32* %recursion_depth308, align 4
  store i32 0, i32* %retval
  br label %return

if.end.310:                                       ; preds = %if.end.299
  %187 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_private = getelementptr inbounds %struct.symtable, %struct.symtable* %187, i32 0, i32 7
  %188 = load %struct._object*, %struct._object** %st_private, align 8
  store %struct._object* %188, %struct._object** %tmp, align 8
  %189 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v311 = getelementptr inbounds %struct._stmt, %struct._stmt* %189, i32 0, i32 1
  %ClassDef312 = bitcast %union.anon.33* %v311 to %struct.anon.35*
  %name313 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef312, i32 0, i32 0
  %190 = load %struct._object*, %struct._object** %name313, align 8
  %191 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_private314 = getelementptr inbounds %struct.symtable, %struct.symtable* %191, i32 0, i32 7
  store %struct._object* %190, %struct._object** %st_private314, align 8
  %192 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v319 = getelementptr inbounds %struct._stmt, %struct._stmt* %192, i32 0, i32 1
  %ClassDef320 = bitcast %union.anon.33* %v319 to %struct.anon.35*
  %body321 = getelementptr inbounds %struct.anon.35, %struct.anon.35* %ClassDef320, i32 0, i32 5
  %193 = load %struct.asdl_seq*, %struct.asdl_seq** %body321, align 8
  store %struct.asdl_seq* %193, %struct.asdl_seq** %seq318, align 8
  store i32 0, i32* %i316, align 4
  br label %for.cond.322

for.cond.322:                                     ; preds = %for.inc.345, %if.end.310
  %194 = load i32, i32* %i316, align 4
  %conv323 = sext i32 %194 to i64
  %195 = load %struct.asdl_seq*, %struct.asdl_seq** %seq318, align 8
  %cmp324 = icmp eq %struct.asdl_seq* %195, null
  br i1 %cmp324, label %cond.true.326, label %cond.false.327

cond.true.326:                                    ; preds = %for.cond.322
  br label %cond.end.329

cond.false.327:                                   ; preds = %for.cond.322
  %196 = load %struct.asdl_seq*, %struct.asdl_seq** %seq318, align 8
  %size328 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %196, i32 0, i32 0
  %197 = load i64, i64* %size328, align 8
  br label %cond.end.329

cond.end.329:                                     ; preds = %cond.false.327, %cond.true.326
  %cond330 = phi i64 [ 0, %cond.true.326 ], [ %197, %cond.false.327 ]
  %cmp331 = icmp slt i64 %conv323, %cond330
  br i1 %cmp331, label %for.body.333, label %for.end.347

for.body.333:                                     ; preds = %cond.end.329
  %198 = load i32, i32* %i316, align 4
  %idxprom336 = sext i32 %198 to i64
  %199 = load %struct.asdl_seq*, %struct.asdl_seq** %seq318, align 8
  %elements337 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %199, i32 0, i32 1
  %arrayidx338 = getelementptr [1 x i8*], [1 x i8*]* %elements337, i32 0, i64 %idxprom336
  %200 = load i8*, i8** %arrayidx338, align 8
  %201 = bitcast i8* %200 to %struct._stmt*
  store %struct._stmt* %201, %struct._stmt** %elt335, align 8
  %202 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %203 = load %struct._stmt*, %struct._stmt** %elt335, align 8
  %call339 = call i32 @symtable_visit_stmt(%struct.symtable* %202, %struct._stmt* %203)
  %tobool340 = icmp ne i32 %call339, 0
  br i1 %tobool340, label %if.end.344, label %if.then.341

if.then.341:                                      ; preds = %for.body.333
  %204 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth342 = getelementptr inbounds %struct.symtable, %struct.symtable* %204, i32 0, i32 9
  %205 = load i32, i32* %recursion_depth342, align 4
  %dec343 = add i32 %205, -1
  store i32 %dec343, i32* %recursion_depth342, align 4
  store i32 0, i32* %retval
  br label %return

if.end.344:                                       ; preds = %for.body.333
  br label %for.inc.345

for.inc.345:                                      ; preds = %if.end.344
  %206 = load i32, i32* %i316, align 4
  %inc346 = add i32 %206, 1
  store i32 %inc346, i32* %i316, align 4
  br label %for.cond.322

for.end.347:                                      ; preds = %cond.end.329
  %207 = load %struct._object*, %struct._object** %tmp, align 8
  %208 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_private348 = getelementptr inbounds %struct.symtable, %struct.symtable* %208, i32 0, i32 7
  store %struct._object* %207, %struct._object** %st_private348, align 8
  %209 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %210 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %211 = bitcast %struct._stmt* %210 to i8*
  %call349 = call i32 @symtable_exit_block(%struct.symtable* %209, i8* %211)
  %tobool350 = icmp ne i32 %call349, 0
  br i1 %tobool350, label %if.end.354, label %if.then.351

if.then.351:                                      ; preds = %for.end.347
  %212 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth352 = getelementptr inbounds %struct.symtable, %struct.symtable* %212, i32 0, i32 9
  %213 = load i32, i32* %recursion_depth352, align 4
  %dec353 = add i32 %213, -1
  store i32 %dec353, i32* %recursion_depth352, align 4
  store i32 0, i32* %retval
  br label %return

if.end.354:                                       ; preds = %for.end.347
  br label %sw.epilog

sw.bb.355:                                        ; preds = %if.end
  %214 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v356 = getelementptr inbounds %struct._stmt, %struct._stmt* %214, i32 0, i32 1
  %Return = bitcast %union.anon.33* %v356 to %struct.anon.36*
  %value = getelementptr inbounds %struct.anon.36, %struct.anon.36* %Return, i32 0, i32 0
  %215 = load %struct._expr*, %struct._expr** %value, align 8
  %tobool357 = icmp ne %struct._expr* %215, null
  br i1 %tobool357, label %if.then.358, label %if.end.368

if.then.358:                                      ; preds = %sw.bb.355
  %216 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %217 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v359 = getelementptr inbounds %struct._stmt, %struct._stmt* %217, i32 0, i32 1
  %Return360 = bitcast %union.anon.33* %v359 to %struct.anon.36*
  %value361 = getelementptr inbounds %struct.anon.36, %struct.anon.36* %Return360, i32 0, i32 0
  %218 = load %struct._expr*, %struct._expr** %value361, align 8
  %call362 = call i32 @symtable_visit_expr(%struct.symtable* %216, %struct._expr* %218)
  %tobool363 = icmp ne i32 %call362, 0
  br i1 %tobool363, label %if.end.367, label %if.then.364

if.then.364:                                      ; preds = %if.then.358
  %219 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth365 = getelementptr inbounds %struct.symtable, %struct.symtable* %219, i32 0, i32 9
  %220 = load i32, i32* %recursion_depth365, align 4
  %dec366 = add i32 %220, -1
  store i32 %dec366, i32* %recursion_depth365, align 4
  store i32 0, i32* %retval
  br label %return

if.end.367:                                       ; preds = %if.then.358
  %221 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %221, i32 0, i32 1
  %222 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_returns_value = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %222, i32 0, i32 10
  %bf.load = load i8, i8* %ste_returns_value, align 4
  %bf.clear = and i8 %bf.load, -33
  %bf.set = or i8 %bf.clear, 32
  store i8 %bf.set, i8* %ste_returns_value, align 4
  br label %if.end.368

if.end.368:                                       ; preds = %if.end.367, %sw.bb.355
  br label %sw.epilog

sw.bb.369:                                        ; preds = %if.end
  %223 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v374 = getelementptr inbounds %struct._stmt, %struct._stmt* %223, i32 0, i32 1
  %Delete = bitcast %union.anon.33* %v374 to %struct.anon.37*
  %targets = getelementptr inbounds %struct.anon.37, %struct.anon.37* %Delete, i32 0, i32 0
  %224 = load %struct.asdl_seq*, %struct.asdl_seq** %targets, align 8
  store %struct.asdl_seq* %224, %struct.asdl_seq** %seq373, align 8
  store i32 0, i32* %i371, align 4
  br label %for.cond.375

for.cond.375:                                     ; preds = %for.inc.398, %sw.bb.369
  %225 = load i32, i32* %i371, align 4
  %conv376 = sext i32 %225 to i64
  %226 = load %struct.asdl_seq*, %struct.asdl_seq** %seq373, align 8
  %cmp377 = icmp eq %struct.asdl_seq* %226, null
  br i1 %cmp377, label %cond.true.379, label %cond.false.380

cond.true.379:                                    ; preds = %for.cond.375
  br label %cond.end.382

cond.false.380:                                   ; preds = %for.cond.375
  %227 = load %struct.asdl_seq*, %struct.asdl_seq** %seq373, align 8
  %size381 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %227, i32 0, i32 0
  %228 = load i64, i64* %size381, align 8
  br label %cond.end.382

cond.end.382:                                     ; preds = %cond.false.380, %cond.true.379
  %cond383 = phi i64 [ 0, %cond.true.379 ], [ %228, %cond.false.380 ]
  %cmp384 = icmp slt i64 %conv376, %cond383
  br i1 %cmp384, label %for.body.386, label %for.end.400

for.body.386:                                     ; preds = %cond.end.382
  %229 = load i32, i32* %i371, align 4
  %idxprom389 = sext i32 %229 to i64
  %230 = load %struct.asdl_seq*, %struct.asdl_seq** %seq373, align 8
  %elements390 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %230, i32 0, i32 1
  %arrayidx391 = getelementptr [1 x i8*], [1 x i8*]* %elements390, i32 0, i64 %idxprom389
  %231 = load i8*, i8** %arrayidx391, align 8
  %232 = bitcast i8* %231 to %struct._expr*
  store %struct._expr* %232, %struct._expr** %elt388, align 8
  %233 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %234 = load %struct._expr*, %struct._expr** %elt388, align 8
  %call392 = call i32 @symtable_visit_expr(%struct.symtable* %233, %struct._expr* %234)
  %tobool393 = icmp ne i32 %call392, 0
  br i1 %tobool393, label %if.end.397, label %if.then.394

if.then.394:                                      ; preds = %for.body.386
  %235 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth395 = getelementptr inbounds %struct.symtable, %struct.symtable* %235, i32 0, i32 9
  %236 = load i32, i32* %recursion_depth395, align 4
  %dec396 = add i32 %236, -1
  store i32 %dec396, i32* %recursion_depth395, align 4
  store i32 0, i32* %retval
  br label %return

if.end.397:                                       ; preds = %for.body.386
  br label %for.inc.398

for.inc.398:                                      ; preds = %if.end.397
  %237 = load i32, i32* %i371, align 4
  %inc399 = add i32 %237, 1
  store i32 %inc399, i32* %i371, align 4
  br label %for.cond.375

for.end.400:                                      ; preds = %cond.end.382
  br label %sw.epilog

sw.bb.401:                                        ; preds = %if.end
  %238 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v406 = getelementptr inbounds %struct._stmt, %struct._stmt* %238, i32 0, i32 1
  %Assign = bitcast %union.anon.33* %v406 to %struct.anon.38*
  %targets407 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %Assign, i32 0, i32 0
  %239 = load %struct.asdl_seq*, %struct.asdl_seq** %targets407, align 8
  store %struct.asdl_seq* %239, %struct.asdl_seq** %seq405, align 8
  store i32 0, i32* %i403, align 4
  br label %for.cond.408

for.cond.408:                                     ; preds = %for.inc.431, %sw.bb.401
  %240 = load i32, i32* %i403, align 4
  %conv409 = sext i32 %240 to i64
  %241 = load %struct.asdl_seq*, %struct.asdl_seq** %seq405, align 8
  %cmp410 = icmp eq %struct.asdl_seq* %241, null
  br i1 %cmp410, label %cond.true.412, label %cond.false.413

cond.true.412:                                    ; preds = %for.cond.408
  br label %cond.end.415

cond.false.413:                                   ; preds = %for.cond.408
  %242 = load %struct.asdl_seq*, %struct.asdl_seq** %seq405, align 8
  %size414 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %242, i32 0, i32 0
  %243 = load i64, i64* %size414, align 8
  br label %cond.end.415

cond.end.415:                                     ; preds = %cond.false.413, %cond.true.412
  %cond416 = phi i64 [ 0, %cond.true.412 ], [ %243, %cond.false.413 ]
  %cmp417 = icmp slt i64 %conv409, %cond416
  br i1 %cmp417, label %for.body.419, label %for.end.433

for.body.419:                                     ; preds = %cond.end.415
  %244 = load i32, i32* %i403, align 4
  %idxprom422 = sext i32 %244 to i64
  %245 = load %struct.asdl_seq*, %struct.asdl_seq** %seq405, align 8
  %elements423 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %245, i32 0, i32 1
  %arrayidx424 = getelementptr [1 x i8*], [1 x i8*]* %elements423, i32 0, i64 %idxprom422
  %246 = load i8*, i8** %arrayidx424, align 8
  %247 = bitcast i8* %246 to %struct._expr*
  store %struct._expr* %247, %struct._expr** %elt421, align 8
  %248 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %249 = load %struct._expr*, %struct._expr** %elt421, align 8
  %call425 = call i32 @symtable_visit_expr(%struct.symtable* %248, %struct._expr* %249)
  %tobool426 = icmp ne i32 %call425, 0
  br i1 %tobool426, label %if.end.430, label %if.then.427

if.then.427:                                      ; preds = %for.body.419
  %250 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth428 = getelementptr inbounds %struct.symtable, %struct.symtable* %250, i32 0, i32 9
  %251 = load i32, i32* %recursion_depth428, align 4
  %dec429 = add i32 %251, -1
  store i32 %dec429, i32* %recursion_depth428, align 4
  store i32 0, i32* %retval
  br label %return

if.end.430:                                       ; preds = %for.body.419
  br label %for.inc.431

for.inc.431:                                      ; preds = %if.end.430
  %252 = load i32, i32* %i403, align 4
  %inc432 = add i32 %252, 1
  store i32 %inc432, i32* %i403, align 4
  br label %for.cond.408

for.end.433:                                      ; preds = %cond.end.415
  %253 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %254 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v434 = getelementptr inbounds %struct._stmt, %struct._stmt* %254, i32 0, i32 1
  %Assign435 = bitcast %union.anon.33* %v434 to %struct.anon.38*
  %value436 = getelementptr inbounds %struct.anon.38, %struct.anon.38* %Assign435, i32 0, i32 1
  %255 = load %struct._expr*, %struct._expr** %value436, align 8
  %call437 = call i32 @symtable_visit_expr(%struct.symtable* %253, %struct._expr* %255)
  %tobool438 = icmp ne i32 %call437, 0
  br i1 %tobool438, label %if.end.442, label %if.then.439

if.then.439:                                      ; preds = %for.end.433
  %256 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth440 = getelementptr inbounds %struct.symtable, %struct.symtable* %256, i32 0, i32 9
  %257 = load i32, i32* %recursion_depth440, align 4
  %dec441 = add i32 %257, -1
  store i32 %dec441, i32* %recursion_depth440, align 4
  store i32 0, i32* %retval
  br label %return

if.end.442:                                       ; preds = %for.end.433
  br label %sw.epilog

sw.bb.443:                                        ; preds = %if.end
  %258 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %259 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v444 = getelementptr inbounds %struct._stmt, %struct._stmt* %259, i32 0, i32 1
  %AugAssign = bitcast %union.anon.33* %v444 to %struct.anon.39*
  %target = getelementptr inbounds %struct.anon.39, %struct.anon.39* %AugAssign, i32 0, i32 0
  %260 = load %struct._expr*, %struct._expr** %target, align 8
  %call445 = call i32 @symtable_visit_expr(%struct.symtable* %258, %struct._expr* %260)
  %tobool446 = icmp ne i32 %call445, 0
  br i1 %tobool446, label %if.end.450, label %if.then.447

if.then.447:                                      ; preds = %sw.bb.443
  %261 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth448 = getelementptr inbounds %struct.symtable, %struct.symtable* %261, i32 0, i32 9
  %262 = load i32, i32* %recursion_depth448, align 4
  %dec449 = add i32 %262, -1
  store i32 %dec449, i32* %recursion_depth448, align 4
  store i32 0, i32* %retval
  br label %return

if.end.450:                                       ; preds = %sw.bb.443
  %263 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %264 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v451 = getelementptr inbounds %struct._stmt, %struct._stmt* %264, i32 0, i32 1
  %AugAssign452 = bitcast %union.anon.33* %v451 to %struct.anon.39*
  %value453 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %AugAssign452, i32 0, i32 2
  %265 = load %struct._expr*, %struct._expr** %value453, align 8
  %call454 = call i32 @symtable_visit_expr(%struct.symtable* %263, %struct._expr* %265)
  %tobool455 = icmp ne i32 %call454, 0
  br i1 %tobool455, label %if.end.459, label %if.then.456

if.then.456:                                      ; preds = %if.end.450
  %266 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth457 = getelementptr inbounds %struct.symtable, %struct.symtable* %266, i32 0, i32 9
  %267 = load i32, i32* %recursion_depth457, align 4
  %dec458 = add i32 %267, -1
  store i32 %dec458, i32* %recursion_depth457, align 4
  store i32 0, i32* %retval
  br label %return

if.end.459:                                       ; preds = %if.end.450
  br label %sw.epilog

sw.bb.460:                                        ; preds = %if.end
  %268 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %269 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v461 = getelementptr inbounds %struct._stmt, %struct._stmt* %269, i32 0, i32 1
  %For = bitcast %union.anon.33* %v461 to %struct.anon.40*
  %target462 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For, i32 0, i32 0
  %270 = load %struct._expr*, %struct._expr** %target462, align 8
  %call463 = call i32 @symtable_visit_expr(%struct.symtable* %268, %struct._expr* %270)
  %tobool464 = icmp ne i32 %call463, 0
  br i1 %tobool464, label %if.end.468, label %if.then.465

if.then.465:                                      ; preds = %sw.bb.460
  %271 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth466 = getelementptr inbounds %struct.symtable, %struct.symtable* %271, i32 0, i32 9
  %272 = load i32, i32* %recursion_depth466, align 4
  %dec467 = add i32 %272, -1
  store i32 %dec467, i32* %recursion_depth466, align 4
  store i32 0, i32* %retval
  br label %return

if.end.468:                                       ; preds = %sw.bb.460
  %273 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %274 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v469 = getelementptr inbounds %struct._stmt, %struct._stmt* %274, i32 0, i32 1
  %For470 = bitcast %union.anon.33* %v469 to %struct.anon.40*
  %iter = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For470, i32 0, i32 1
  %275 = load %struct._expr*, %struct._expr** %iter, align 8
  %call471 = call i32 @symtable_visit_expr(%struct.symtable* %273, %struct._expr* %275)
  %tobool472 = icmp ne i32 %call471, 0
  br i1 %tobool472, label %if.end.476, label %if.then.473

if.then.473:                                      ; preds = %if.end.468
  %276 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth474 = getelementptr inbounds %struct.symtable, %struct.symtable* %276, i32 0, i32 9
  %277 = load i32, i32* %recursion_depth474, align 4
  %dec475 = add i32 %277, -1
  store i32 %dec475, i32* %recursion_depth474, align 4
  store i32 0, i32* %retval
  br label %return

if.end.476:                                       ; preds = %if.end.468
  %278 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v481 = getelementptr inbounds %struct._stmt, %struct._stmt* %278, i32 0, i32 1
  %For482 = bitcast %union.anon.33* %v481 to %struct.anon.40*
  %body483 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For482, i32 0, i32 2
  %279 = load %struct.asdl_seq*, %struct.asdl_seq** %body483, align 8
  store %struct.asdl_seq* %279, %struct.asdl_seq** %seq480, align 8
  store i32 0, i32* %i478, align 4
  br label %for.cond.484

for.cond.484:                                     ; preds = %for.inc.507, %if.end.476
  %280 = load i32, i32* %i478, align 4
  %conv485 = sext i32 %280 to i64
  %281 = load %struct.asdl_seq*, %struct.asdl_seq** %seq480, align 8
  %cmp486 = icmp eq %struct.asdl_seq* %281, null
  br i1 %cmp486, label %cond.true.488, label %cond.false.489

cond.true.488:                                    ; preds = %for.cond.484
  br label %cond.end.491

cond.false.489:                                   ; preds = %for.cond.484
  %282 = load %struct.asdl_seq*, %struct.asdl_seq** %seq480, align 8
  %size490 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %282, i32 0, i32 0
  %283 = load i64, i64* %size490, align 8
  br label %cond.end.491

cond.end.491:                                     ; preds = %cond.false.489, %cond.true.488
  %cond492 = phi i64 [ 0, %cond.true.488 ], [ %283, %cond.false.489 ]
  %cmp493 = icmp slt i64 %conv485, %cond492
  br i1 %cmp493, label %for.body.495, label %for.end.509

for.body.495:                                     ; preds = %cond.end.491
  %284 = load i32, i32* %i478, align 4
  %idxprom498 = sext i32 %284 to i64
  %285 = load %struct.asdl_seq*, %struct.asdl_seq** %seq480, align 8
  %elements499 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %285, i32 0, i32 1
  %arrayidx500 = getelementptr [1 x i8*], [1 x i8*]* %elements499, i32 0, i64 %idxprom498
  %286 = load i8*, i8** %arrayidx500, align 8
  %287 = bitcast i8* %286 to %struct._stmt*
  store %struct._stmt* %287, %struct._stmt** %elt497, align 8
  %288 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %289 = load %struct._stmt*, %struct._stmt** %elt497, align 8
  %call501 = call i32 @symtable_visit_stmt(%struct.symtable* %288, %struct._stmt* %289)
  %tobool502 = icmp ne i32 %call501, 0
  br i1 %tobool502, label %if.end.506, label %if.then.503

if.then.503:                                      ; preds = %for.body.495
  %290 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth504 = getelementptr inbounds %struct.symtable, %struct.symtable* %290, i32 0, i32 9
  %291 = load i32, i32* %recursion_depth504, align 4
  %dec505 = add i32 %291, -1
  store i32 %dec505, i32* %recursion_depth504, align 4
  store i32 0, i32* %retval
  br label %return

if.end.506:                                       ; preds = %for.body.495
  br label %for.inc.507

for.inc.507:                                      ; preds = %if.end.506
  %292 = load i32, i32* %i478, align 4
  %inc508 = add i32 %292, 1
  store i32 %inc508, i32* %i478, align 4
  br label %for.cond.484

for.end.509:                                      ; preds = %cond.end.491
  %293 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v510 = getelementptr inbounds %struct._stmt, %struct._stmt* %293, i32 0, i32 1
  %For511 = bitcast %union.anon.33* %v510 to %struct.anon.40*
  %orelse = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For511, i32 0, i32 3
  %294 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse, align 8
  %tobool512 = icmp ne %struct.asdl_seq* %294, null
  br i1 %tobool512, label %if.then.513, label %if.end.547

if.then.513:                                      ; preds = %for.end.509
  %295 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v518 = getelementptr inbounds %struct._stmt, %struct._stmt* %295, i32 0, i32 1
  %For519 = bitcast %union.anon.33* %v518 to %struct.anon.40*
  %orelse520 = getelementptr inbounds %struct.anon.40, %struct.anon.40* %For519, i32 0, i32 3
  %296 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse520, align 8
  store %struct.asdl_seq* %296, %struct.asdl_seq** %seq517, align 8
  store i32 0, i32* %i515, align 4
  br label %for.cond.521

for.cond.521:                                     ; preds = %for.inc.544, %if.then.513
  %297 = load i32, i32* %i515, align 4
  %conv522 = sext i32 %297 to i64
  %298 = load %struct.asdl_seq*, %struct.asdl_seq** %seq517, align 8
  %cmp523 = icmp eq %struct.asdl_seq* %298, null
  br i1 %cmp523, label %cond.true.525, label %cond.false.526

cond.true.525:                                    ; preds = %for.cond.521
  br label %cond.end.528

cond.false.526:                                   ; preds = %for.cond.521
  %299 = load %struct.asdl_seq*, %struct.asdl_seq** %seq517, align 8
  %size527 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %299, i32 0, i32 0
  %300 = load i64, i64* %size527, align 8
  br label %cond.end.528

cond.end.528:                                     ; preds = %cond.false.526, %cond.true.525
  %cond529 = phi i64 [ 0, %cond.true.525 ], [ %300, %cond.false.526 ]
  %cmp530 = icmp slt i64 %conv522, %cond529
  br i1 %cmp530, label %for.body.532, label %for.end.546

for.body.532:                                     ; preds = %cond.end.528
  %301 = load i32, i32* %i515, align 4
  %idxprom535 = sext i32 %301 to i64
  %302 = load %struct.asdl_seq*, %struct.asdl_seq** %seq517, align 8
  %elements536 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %302, i32 0, i32 1
  %arrayidx537 = getelementptr [1 x i8*], [1 x i8*]* %elements536, i32 0, i64 %idxprom535
  %303 = load i8*, i8** %arrayidx537, align 8
  %304 = bitcast i8* %303 to %struct._stmt*
  store %struct._stmt* %304, %struct._stmt** %elt534, align 8
  %305 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %306 = load %struct._stmt*, %struct._stmt** %elt534, align 8
  %call538 = call i32 @symtable_visit_stmt(%struct.symtable* %305, %struct._stmt* %306)
  %tobool539 = icmp ne i32 %call538, 0
  br i1 %tobool539, label %if.end.543, label %if.then.540

if.then.540:                                      ; preds = %for.body.532
  %307 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth541 = getelementptr inbounds %struct.symtable, %struct.symtable* %307, i32 0, i32 9
  %308 = load i32, i32* %recursion_depth541, align 4
  %dec542 = add i32 %308, -1
  store i32 %dec542, i32* %recursion_depth541, align 4
  store i32 0, i32* %retval
  br label %return

if.end.543:                                       ; preds = %for.body.532
  br label %for.inc.544

for.inc.544:                                      ; preds = %if.end.543
  %309 = load i32, i32* %i515, align 4
  %inc545 = add i32 %309, 1
  store i32 %inc545, i32* %i515, align 4
  br label %for.cond.521

for.end.546:                                      ; preds = %cond.end.528
  br label %if.end.547

if.end.547:                                       ; preds = %for.end.546, %for.end.509
  br label %sw.epilog

sw.bb.548:                                        ; preds = %if.end
  %310 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %311 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v549 = getelementptr inbounds %struct._stmt, %struct._stmt* %311, i32 0, i32 1
  %While = bitcast %union.anon.33* %v549 to %struct.anon.41*
  %test = getelementptr inbounds %struct.anon.41, %struct.anon.41* %While, i32 0, i32 0
  %312 = load %struct._expr*, %struct._expr** %test, align 8
  %call550 = call i32 @symtable_visit_expr(%struct.symtable* %310, %struct._expr* %312)
  %tobool551 = icmp ne i32 %call550, 0
  br i1 %tobool551, label %if.end.555, label %if.then.552

if.then.552:                                      ; preds = %sw.bb.548
  %313 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth553 = getelementptr inbounds %struct.symtable, %struct.symtable* %313, i32 0, i32 9
  %314 = load i32, i32* %recursion_depth553, align 4
  %dec554 = add i32 %314, -1
  store i32 %dec554, i32* %recursion_depth553, align 4
  store i32 0, i32* %retval
  br label %return

if.end.555:                                       ; preds = %sw.bb.548
  %315 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v560 = getelementptr inbounds %struct._stmt, %struct._stmt* %315, i32 0, i32 1
  %While561 = bitcast %union.anon.33* %v560 to %struct.anon.41*
  %body562 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %While561, i32 0, i32 1
  %316 = load %struct.asdl_seq*, %struct.asdl_seq** %body562, align 8
  store %struct.asdl_seq* %316, %struct.asdl_seq** %seq559, align 8
  store i32 0, i32* %i557, align 4
  br label %for.cond.563

for.cond.563:                                     ; preds = %for.inc.586, %if.end.555
  %317 = load i32, i32* %i557, align 4
  %conv564 = sext i32 %317 to i64
  %318 = load %struct.asdl_seq*, %struct.asdl_seq** %seq559, align 8
  %cmp565 = icmp eq %struct.asdl_seq* %318, null
  br i1 %cmp565, label %cond.true.567, label %cond.false.568

cond.true.567:                                    ; preds = %for.cond.563
  br label %cond.end.570

cond.false.568:                                   ; preds = %for.cond.563
  %319 = load %struct.asdl_seq*, %struct.asdl_seq** %seq559, align 8
  %size569 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %319, i32 0, i32 0
  %320 = load i64, i64* %size569, align 8
  br label %cond.end.570

cond.end.570:                                     ; preds = %cond.false.568, %cond.true.567
  %cond571 = phi i64 [ 0, %cond.true.567 ], [ %320, %cond.false.568 ]
  %cmp572 = icmp slt i64 %conv564, %cond571
  br i1 %cmp572, label %for.body.574, label %for.end.588

for.body.574:                                     ; preds = %cond.end.570
  %321 = load i32, i32* %i557, align 4
  %idxprom577 = sext i32 %321 to i64
  %322 = load %struct.asdl_seq*, %struct.asdl_seq** %seq559, align 8
  %elements578 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %322, i32 0, i32 1
  %arrayidx579 = getelementptr [1 x i8*], [1 x i8*]* %elements578, i32 0, i64 %idxprom577
  %323 = load i8*, i8** %arrayidx579, align 8
  %324 = bitcast i8* %323 to %struct._stmt*
  store %struct._stmt* %324, %struct._stmt** %elt576, align 8
  %325 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %326 = load %struct._stmt*, %struct._stmt** %elt576, align 8
  %call580 = call i32 @symtable_visit_stmt(%struct.symtable* %325, %struct._stmt* %326)
  %tobool581 = icmp ne i32 %call580, 0
  br i1 %tobool581, label %if.end.585, label %if.then.582

if.then.582:                                      ; preds = %for.body.574
  %327 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth583 = getelementptr inbounds %struct.symtable, %struct.symtable* %327, i32 0, i32 9
  %328 = load i32, i32* %recursion_depth583, align 4
  %dec584 = add i32 %328, -1
  store i32 %dec584, i32* %recursion_depth583, align 4
  store i32 0, i32* %retval
  br label %return

if.end.585:                                       ; preds = %for.body.574
  br label %for.inc.586

for.inc.586:                                      ; preds = %if.end.585
  %329 = load i32, i32* %i557, align 4
  %inc587 = add i32 %329, 1
  store i32 %inc587, i32* %i557, align 4
  br label %for.cond.563

for.end.588:                                      ; preds = %cond.end.570
  %330 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v589 = getelementptr inbounds %struct._stmt, %struct._stmt* %330, i32 0, i32 1
  %While590 = bitcast %union.anon.33* %v589 to %struct.anon.41*
  %orelse591 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %While590, i32 0, i32 2
  %331 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse591, align 8
  %tobool592 = icmp ne %struct.asdl_seq* %331, null
  br i1 %tobool592, label %if.then.593, label %if.end.627

if.then.593:                                      ; preds = %for.end.588
  %332 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v598 = getelementptr inbounds %struct._stmt, %struct._stmt* %332, i32 0, i32 1
  %While599 = bitcast %union.anon.33* %v598 to %struct.anon.41*
  %orelse600 = getelementptr inbounds %struct.anon.41, %struct.anon.41* %While599, i32 0, i32 2
  %333 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse600, align 8
  store %struct.asdl_seq* %333, %struct.asdl_seq** %seq597, align 8
  store i32 0, i32* %i595, align 4
  br label %for.cond.601

for.cond.601:                                     ; preds = %for.inc.624, %if.then.593
  %334 = load i32, i32* %i595, align 4
  %conv602 = sext i32 %334 to i64
  %335 = load %struct.asdl_seq*, %struct.asdl_seq** %seq597, align 8
  %cmp603 = icmp eq %struct.asdl_seq* %335, null
  br i1 %cmp603, label %cond.true.605, label %cond.false.606

cond.true.605:                                    ; preds = %for.cond.601
  br label %cond.end.608

cond.false.606:                                   ; preds = %for.cond.601
  %336 = load %struct.asdl_seq*, %struct.asdl_seq** %seq597, align 8
  %size607 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %336, i32 0, i32 0
  %337 = load i64, i64* %size607, align 8
  br label %cond.end.608

cond.end.608:                                     ; preds = %cond.false.606, %cond.true.605
  %cond609 = phi i64 [ 0, %cond.true.605 ], [ %337, %cond.false.606 ]
  %cmp610 = icmp slt i64 %conv602, %cond609
  br i1 %cmp610, label %for.body.612, label %for.end.626

for.body.612:                                     ; preds = %cond.end.608
  %338 = load i32, i32* %i595, align 4
  %idxprom615 = sext i32 %338 to i64
  %339 = load %struct.asdl_seq*, %struct.asdl_seq** %seq597, align 8
  %elements616 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %339, i32 0, i32 1
  %arrayidx617 = getelementptr [1 x i8*], [1 x i8*]* %elements616, i32 0, i64 %idxprom615
  %340 = load i8*, i8** %arrayidx617, align 8
  %341 = bitcast i8* %340 to %struct._stmt*
  store %struct._stmt* %341, %struct._stmt** %elt614, align 8
  %342 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %343 = load %struct._stmt*, %struct._stmt** %elt614, align 8
  %call618 = call i32 @symtable_visit_stmt(%struct.symtable* %342, %struct._stmt* %343)
  %tobool619 = icmp ne i32 %call618, 0
  br i1 %tobool619, label %if.end.623, label %if.then.620

if.then.620:                                      ; preds = %for.body.612
  %344 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth621 = getelementptr inbounds %struct.symtable, %struct.symtable* %344, i32 0, i32 9
  %345 = load i32, i32* %recursion_depth621, align 4
  %dec622 = add i32 %345, -1
  store i32 %dec622, i32* %recursion_depth621, align 4
  store i32 0, i32* %retval
  br label %return

if.end.623:                                       ; preds = %for.body.612
  br label %for.inc.624

for.inc.624:                                      ; preds = %if.end.623
  %346 = load i32, i32* %i595, align 4
  %inc625 = add i32 %346, 1
  store i32 %inc625, i32* %i595, align 4
  br label %for.cond.601

for.end.626:                                      ; preds = %cond.end.608
  br label %if.end.627

if.end.627:                                       ; preds = %for.end.626, %for.end.588
  br label %sw.epilog

sw.bb.628:                                        ; preds = %if.end
  %347 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %348 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v629 = getelementptr inbounds %struct._stmt, %struct._stmt* %348, i32 0, i32 1
  %If = bitcast %union.anon.33* %v629 to %struct.anon.42*
  %test630 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %If, i32 0, i32 0
  %349 = load %struct._expr*, %struct._expr** %test630, align 8
  %call631 = call i32 @symtable_visit_expr(%struct.symtable* %347, %struct._expr* %349)
  %tobool632 = icmp ne i32 %call631, 0
  br i1 %tobool632, label %if.end.636, label %if.then.633

if.then.633:                                      ; preds = %sw.bb.628
  %350 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth634 = getelementptr inbounds %struct.symtable, %struct.symtable* %350, i32 0, i32 9
  %351 = load i32, i32* %recursion_depth634, align 4
  %dec635 = add i32 %351, -1
  store i32 %dec635, i32* %recursion_depth634, align 4
  store i32 0, i32* %retval
  br label %return

if.end.636:                                       ; preds = %sw.bb.628
  %352 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v641 = getelementptr inbounds %struct._stmt, %struct._stmt* %352, i32 0, i32 1
  %If642 = bitcast %union.anon.33* %v641 to %struct.anon.42*
  %body643 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %If642, i32 0, i32 1
  %353 = load %struct.asdl_seq*, %struct.asdl_seq** %body643, align 8
  store %struct.asdl_seq* %353, %struct.asdl_seq** %seq640, align 8
  store i32 0, i32* %i638, align 4
  br label %for.cond.644

for.cond.644:                                     ; preds = %for.inc.667, %if.end.636
  %354 = load i32, i32* %i638, align 4
  %conv645 = sext i32 %354 to i64
  %355 = load %struct.asdl_seq*, %struct.asdl_seq** %seq640, align 8
  %cmp646 = icmp eq %struct.asdl_seq* %355, null
  br i1 %cmp646, label %cond.true.648, label %cond.false.649

cond.true.648:                                    ; preds = %for.cond.644
  br label %cond.end.651

cond.false.649:                                   ; preds = %for.cond.644
  %356 = load %struct.asdl_seq*, %struct.asdl_seq** %seq640, align 8
  %size650 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %356, i32 0, i32 0
  %357 = load i64, i64* %size650, align 8
  br label %cond.end.651

cond.end.651:                                     ; preds = %cond.false.649, %cond.true.648
  %cond652 = phi i64 [ 0, %cond.true.648 ], [ %357, %cond.false.649 ]
  %cmp653 = icmp slt i64 %conv645, %cond652
  br i1 %cmp653, label %for.body.655, label %for.end.669

for.body.655:                                     ; preds = %cond.end.651
  %358 = load i32, i32* %i638, align 4
  %idxprom658 = sext i32 %358 to i64
  %359 = load %struct.asdl_seq*, %struct.asdl_seq** %seq640, align 8
  %elements659 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %359, i32 0, i32 1
  %arrayidx660 = getelementptr [1 x i8*], [1 x i8*]* %elements659, i32 0, i64 %idxprom658
  %360 = load i8*, i8** %arrayidx660, align 8
  %361 = bitcast i8* %360 to %struct._stmt*
  store %struct._stmt* %361, %struct._stmt** %elt657, align 8
  %362 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %363 = load %struct._stmt*, %struct._stmt** %elt657, align 8
  %call661 = call i32 @symtable_visit_stmt(%struct.symtable* %362, %struct._stmt* %363)
  %tobool662 = icmp ne i32 %call661, 0
  br i1 %tobool662, label %if.end.666, label %if.then.663

if.then.663:                                      ; preds = %for.body.655
  %364 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth664 = getelementptr inbounds %struct.symtable, %struct.symtable* %364, i32 0, i32 9
  %365 = load i32, i32* %recursion_depth664, align 4
  %dec665 = add i32 %365, -1
  store i32 %dec665, i32* %recursion_depth664, align 4
  store i32 0, i32* %retval
  br label %return

if.end.666:                                       ; preds = %for.body.655
  br label %for.inc.667

for.inc.667:                                      ; preds = %if.end.666
  %366 = load i32, i32* %i638, align 4
  %inc668 = add i32 %366, 1
  store i32 %inc668, i32* %i638, align 4
  br label %for.cond.644

for.end.669:                                      ; preds = %cond.end.651
  %367 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v670 = getelementptr inbounds %struct._stmt, %struct._stmt* %367, i32 0, i32 1
  %If671 = bitcast %union.anon.33* %v670 to %struct.anon.42*
  %orelse672 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %If671, i32 0, i32 2
  %368 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse672, align 8
  %tobool673 = icmp ne %struct.asdl_seq* %368, null
  br i1 %tobool673, label %if.then.674, label %if.end.708

if.then.674:                                      ; preds = %for.end.669
  %369 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v679 = getelementptr inbounds %struct._stmt, %struct._stmt* %369, i32 0, i32 1
  %If680 = bitcast %union.anon.33* %v679 to %struct.anon.42*
  %orelse681 = getelementptr inbounds %struct.anon.42, %struct.anon.42* %If680, i32 0, i32 2
  %370 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse681, align 8
  store %struct.asdl_seq* %370, %struct.asdl_seq** %seq678, align 8
  store i32 0, i32* %i676, align 4
  br label %for.cond.682

for.cond.682:                                     ; preds = %for.inc.705, %if.then.674
  %371 = load i32, i32* %i676, align 4
  %conv683 = sext i32 %371 to i64
  %372 = load %struct.asdl_seq*, %struct.asdl_seq** %seq678, align 8
  %cmp684 = icmp eq %struct.asdl_seq* %372, null
  br i1 %cmp684, label %cond.true.686, label %cond.false.687

cond.true.686:                                    ; preds = %for.cond.682
  br label %cond.end.689

cond.false.687:                                   ; preds = %for.cond.682
  %373 = load %struct.asdl_seq*, %struct.asdl_seq** %seq678, align 8
  %size688 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %373, i32 0, i32 0
  %374 = load i64, i64* %size688, align 8
  br label %cond.end.689

cond.end.689:                                     ; preds = %cond.false.687, %cond.true.686
  %cond690 = phi i64 [ 0, %cond.true.686 ], [ %374, %cond.false.687 ]
  %cmp691 = icmp slt i64 %conv683, %cond690
  br i1 %cmp691, label %for.body.693, label %for.end.707

for.body.693:                                     ; preds = %cond.end.689
  %375 = load i32, i32* %i676, align 4
  %idxprom696 = sext i32 %375 to i64
  %376 = load %struct.asdl_seq*, %struct.asdl_seq** %seq678, align 8
  %elements697 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %376, i32 0, i32 1
  %arrayidx698 = getelementptr [1 x i8*], [1 x i8*]* %elements697, i32 0, i64 %idxprom696
  %377 = load i8*, i8** %arrayidx698, align 8
  %378 = bitcast i8* %377 to %struct._stmt*
  store %struct._stmt* %378, %struct._stmt** %elt695, align 8
  %379 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %380 = load %struct._stmt*, %struct._stmt** %elt695, align 8
  %call699 = call i32 @symtable_visit_stmt(%struct.symtable* %379, %struct._stmt* %380)
  %tobool700 = icmp ne i32 %call699, 0
  br i1 %tobool700, label %if.end.704, label %if.then.701

if.then.701:                                      ; preds = %for.body.693
  %381 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth702 = getelementptr inbounds %struct.symtable, %struct.symtable* %381, i32 0, i32 9
  %382 = load i32, i32* %recursion_depth702, align 4
  %dec703 = add i32 %382, -1
  store i32 %dec703, i32* %recursion_depth702, align 4
  store i32 0, i32* %retval
  br label %return

if.end.704:                                       ; preds = %for.body.693
  br label %for.inc.705

for.inc.705:                                      ; preds = %if.end.704
  %383 = load i32, i32* %i676, align 4
  %inc706 = add i32 %383, 1
  store i32 %inc706, i32* %i676, align 4
  br label %for.cond.682

for.end.707:                                      ; preds = %cond.end.689
  br label %if.end.708

if.end.708:                                       ; preds = %for.end.707, %for.end.669
  br label %sw.epilog

sw.bb.709:                                        ; preds = %if.end
  %384 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v710 = getelementptr inbounds %struct._stmt, %struct._stmt* %384, i32 0, i32 1
  %Raise = bitcast %union.anon.33* %v710 to %struct.anon.44*
  %exc = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise, i32 0, i32 0
  %385 = load %struct._expr*, %struct._expr** %exc, align 8
  %tobool711 = icmp ne %struct._expr* %385, null
  br i1 %tobool711, label %if.then.712, label %if.end.736

if.then.712:                                      ; preds = %sw.bb.709
  %386 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %387 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v713 = getelementptr inbounds %struct._stmt, %struct._stmt* %387, i32 0, i32 1
  %Raise714 = bitcast %union.anon.33* %v713 to %struct.anon.44*
  %exc715 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise714, i32 0, i32 0
  %388 = load %struct._expr*, %struct._expr** %exc715, align 8
  %call716 = call i32 @symtable_visit_expr(%struct.symtable* %386, %struct._expr* %388)
  %tobool717 = icmp ne i32 %call716, 0
  br i1 %tobool717, label %if.end.721, label %if.then.718

if.then.718:                                      ; preds = %if.then.712
  %389 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth719 = getelementptr inbounds %struct.symtable, %struct.symtable* %389, i32 0, i32 9
  %390 = load i32, i32* %recursion_depth719, align 4
  %dec720 = add i32 %390, -1
  store i32 %dec720, i32* %recursion_depth719, align 4
  store i32 0, i32* %retval
  br label %return

if.end.721:                                       ; preds = %if.then.712
  %391 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v722 = getelementptr inbounds %struct._stmt, %struct._stmt* %391, i32 0, i32 1
  %Raise723 = bitcast %union.anon.33* %v722 to %struct.anon.44*
  %cause = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise723, i32 0, i32 1
  %392 = load %struct._expr*, %struct._expr** %cause, align 8
  %tobool724 = icmp ne %struct._expr* %392, null
  br i1 %tobool724, label %if.then.725, label %if.end.735

if.then.725:                                      ; preds = %if.end.721
  %393 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %394 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v726 = getelementptr inbounds %struct._stmt, %struct._stmt* %394, i32 0, i32 1
  %Raise727 = bitcast %union.anon.33* %v726 to %struct.anon.44*
  %cause728 = getelementptr inbounds %struct.anon.44, %struct.anon.44* %Raise727, i32 0, i32 1
  %395 = load %struct._expr*, %struct._expr** %cause728, align 8
  %call729 = call i32 @symtable_visit_expr(%struct.symtable* %393, %struct._expr* %395)
  %tobool730 = icmp ne i32 %call729, 0
  br i1 %tobool730, label %if.end.734, label %if.then.731

if.then.731:                                      ; preds = %if.then.725
  %396 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth732 = getelementptr inbounds %struct.symtable, %struct.symtable* %396, i32 0, i32 9
  %397 = load i32, i32* %recursion_depth732, align 4
  %dec733 = add i32 %397, -1
  store i32 %dec733, i32* %recursion_depth732, align 4
  store i32 0, i32* %retval
  br label %return

if.end.734:                                       ; preds = %if.then.725
  br label %if.end.735

if.end.735:                                       ; preds = %if.end.734, %if.end.721
  br label %if.end.736

if.end.736:                                       ; preds = %if.end.735, %sw.bb.709
  br label %sw.epilog

sw.bb.737:                                        ; preds = %if.end
  %398 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v742 = getelementptr inbounds %struct._stmt, %struct._stmt* %398, i32 0, i32 1
  %Try = bitcast %union.anon.33* %v742 to %struct.anon.45*
  %body743 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try, i32 0, i32 0
  %399 = load %struct.asdl_seq*, %struct.asdl_seq** %body743, align 8
  store %struct.asdl_seq* %399, %struct.asdl_seq** %seq741, align 8
  store i32 0, i32* %i739, align 4
  br label %for.cond.744

for.cond.744:                                     ; preds = %for.inc.767, %sw.bb.737
  %400 = load i32, i32* %i739, align 4
  %conv745 = sext i32 %400 to i64
  %401 = load %struct.asdl_seq*, %struct.asdl_seq** %seq741, align 8
  %cmp746 = icmp eq %struct.asdl_seq* %401, null
  br i1 %cmp746, label %cond.true.748, label %cond.false.749

cond.true.748:                                    ; preds = %for.cond.744
  br label %cond.end.751

cond.false.749:                                   ; preds = %for.cond.744
  %402 = load %struct.asdl_seq*, %struct.asdl_seq** %seq741, align 8
  %size750 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %402, i32 0, i32 0
  %403 = load i64, i64* %size750, align 8
  br label %cond.end.751

cond.end.751:                                     ; preds = %cond.false.749, %cond.true.748
  %cond752 = phi i64 [ 0, %cond.true.748 ], [ %403, %cond.false.749 ]
  %cmp753 = icmp slt i64 %conv745, %cond752
  br i1 %cmp753, label %for.body.755, label %for.end.769

for.body.755:                                     ; preds = %cond.end.751
  %404 = load i32, i32* %i739, align 4
  %idxprom758 = sext i32 %404 to i64
  %405 = load %struct.asdl_seq*, %struct.asdl_seq** %seq741, align 8
  %elements759 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %405, i32 0, i32 1
  %arrayidx760 = getelementptr [1 x i8*], [1 x i8*]* %elements759, i32 0, i64 %idxprom758
  %406 = load i8*, i8** %arrayidx760, align 8
  %407 = bitcast i8* %406 to %struct._stmt*
  store %struct._stmt* %407, %struct._stmt** %elt757, align 8
  %408 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %409 = load %struct._stmt*, %struct._stmt** %elt757, align 8
  %call761 = call i32 @symtable_visit_stmt(%struct.symtable* %408, %struct._stmt* %409)
  %tobool762 = icmp ne i32 %call761, 0
  br i1 %tobool762, label %if.end.766, label %if.then.763

if.then.763:                                      ; preds = %for.body.755
  %410 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth764 = getelementptr inbounds %struct.symtable, %struct.symtable* %410, i32 0, i32 9
  %411 = load i32, i32* %recursion_depth764, align 4
  %dec765 = add i32 %411, -1
  store i32 %dec765, i32* %recursion_depth764, align 4
  store i32 0, i32* %retval
  br label %return

if.end.766:                                       ; preds = %for.body.755
  br label %for.inc.767

for.inc.767:                                      ; preds = %if.end.766
  %412 = load i32, i32* %i739, align 4
  %inc768 = add i32 %412, 1
  store i32 %inc768, i32* %i739, align 4
  br label %for.cond.744

for.end.769:                                      ; preds = %cond.end.751
  %413 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v774 = getelementptr inbounds %struct._stmt, %struct._stmt* %413, i32 0, i32 1
  %Try775 = bitcast %union.anon.33* %v774 to %struct.anon.45*
  %orelse776 = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try775, i32 0, i32 2
  %414 = load %struct.asdl_seq*, %struct.asdl_seq** %orelse776, align 8
  store %struct.asdl_seq* %414, %struct.asdl_seq** %seq773, align 8
  store i32 0, i32* %i771, align 4
  br label %for.cond.777

for.cond.777:                                     ; preds = %for.inc.800, %for.end.769
  %415 = load i32, i32* %i771, align 4
  %conv778 = sext i32 %415 to i64
  %416 = load %struct.asdl_seq*, %struct.asdl_seq** %seq773, align 8
  %cmp779 = icmp eq %struct.asdl_seq* %416, null
  br i1 %cmp779, label %cond.true.781, label %cond.false.782

cond.true.781:                                    ; preds = %for.cond.777
  br label %cond.end.784

cond.false.782:                                   ; preds = %for.cond.777
  %417 = load %struct.asdl_seq*, %struct.asdl_seq** %seq773, align 8
  %size783 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %417, i32 0, i32 0
  %418 = load i64, i64* %size783, align 8
  br label %cond.end.784

cond.end.784:                                     ; preds = %cond.false.782, %cond.true.781
  %cond785 = phi i64 [ 0, %cond.true.781 ], [ %418, %cond.false.782 ]
  %cmp786 = icmp slt i64 %conv778, %cond785
  br i1 %cmp786, label %for.body.788, label %for.end.802

for.body.788:                                     ; preds = %cond.end.784
  %419 = load i32, i32* %i771, align 4
  %idxprom791 = sext i32 %419 to i64
  %420 = load %struct.asdl_seq*, %struct.asdl_seq** %seq773, align 8
  %elements792 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %420, i32 0, i32 1
  %arrayidx793 = getelementptr [1 x i8*], [1 x i8*]* %elements792, i32 0, i64 %idxprom791
  %421 = load i8*, i8** %arrayidx793, align 8
  %422 = bitcast i8* %421 to %struct._stmt*
  store %struct._stmt* %422, %struct._stmt** %elt790, align 8
  %423 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %424 = load %struct._stmt*, %struct._stmt** %elt790, align 8
  %call794 = call i32 @symtable_visit_stmt(%struct.symtable* %423, %struct._stmt* %424)
  %tobool795 = icmp ne i32 %call794, 0
  br i1 %tobool795, label %if.end.799, label %if.then.796

if.then.796:                                      ; preds = %for.body.788
  %425 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth797 = getelementptr inbounds %struct.symtable, %struct.symtable* %425, i32 0, i32 9
  %426 = load i32, i32* %recursion_depth797, align 4
  %dec798 = add i32 %426, -1
  store i32 %dec798, i32* %recursion_depth797, align 4
  store i32 0, i32* %retval
  br label %return

if.end.799:                                       ; preds = %for.body.788
  br label %for.inc.800

for.inc.800:                                      ; preds = %if.end.799
  %427 = load i32, i32* %i771, align 4
  %inc801 = add i32 %427, 1
  store i32 %inc801, i32* %i771, align 4
  br label %for.cond.777

for.end.802:                                      ; preds = %cond.end.784
  %428 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v807 = getelementptr inbounds %struct._stmt, %struct._stmt* %428, i32 0, i32 1
  %Try808 = bitcast %union.anon.33* %v807 to %struct.anon.45*
  %handlers = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try808, i32 0, i32 1
  %429 = load %struct.asdl_seq*, %struct.asdl_seq** %handlers, align 8
  store %struct.asdl_seq* %429, %struct.asdl_seq** %seq806, align 8
  store i32 0, i32* %i804, align 4
  br label %for.cond.809

for.cond.809:                                     ; preds = %for.inc.832, %for.end.802
  %430 = load i32, i32* %i804, align 4
  %conv810 = sext i32 %430 to i64
  %431 = load %struct.asdl_seq*, %struct.asdl_seq** %seq806, align 8
  %cmp811 = icmp eq %struct.asdl_seq* %431, null
  br i1 %cmp811, label %cond.true.813, label %cond.false.814

cond.true.813:                                    ; preds = %for.cond.809
  br label %cond.end.816

cond.false.814:                                   ; preds = %for.cond.809
  %432 = load %struct.asdl_seq*, %struct.asdl_seq** %seq806, align 8
  %size815 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %432, i32 0, i32 0
  %433 = load i64, i64* %size815, align 8
  br label %cond.end.816

cond.end.816:                                     ; preds = %cond.false.814, %cond.true.813
  %cond817 = phi i64 [ 0, %cond.true.813 ], [ %433, %cond.false.814 ]
  %cmp818 = icmp slt i64 %conv810, %cond817
  br i1 %cmp818, label %for.body.820, label %for.end.834

for.body.820:                                     ; preds = %cond.end.816
  %434 = load i32, i32* %i804, align 4
  %idxprom823 = sext i32 %434 to i64
  %435 = load %struct.asdl_seq*, %struct.asdl_seq** %seq806, align 8
  %elements824 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %435, i32 0, i32 1
  %arrayidx825 = getelementptr [1 x i8*], [1 x i8*]* %elements824, i32 0, i64 %idxprom823
  %436 = load i8*, i8** %arrayidx825, align 8
  %437 = bitcast i8* %436 to %struct._excepthandler*
  store %struct._excepthandler* %437, %struct._excepthandler** %elt822, align 8
  %438 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %439 = load %struct._excepthandler*, %struct._excepthandler** %elt822, align 8
  %call826 = call i32 @symtable_visit_excepthandler(%struct.symtable* %438, %struct._excepthandler* %439)
  %tobool827 = icmp ne i32 %call826, 0
  br i1 %tobool827, label %if.end.831, label %if.then.828

if.then.828:                                      ; preds = %for.body.820
  %440 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth829 = getelementptr inbounds %struct.symtable, %struct.symtable* %440, i32 0, i32 9
  %441 = load i32, i32* %recursion_depth829, align 4
  %dec830 = add i32 %441, -1
  store i32 %dec830, i32* %recursion_depth829, align 4
  store i32 0, i32* %retval
  br label %return

if.end.831:                                       ; preds = %for.body.820
  br label %for.inc.832

for.inc.832:                                      ; preds = %if.end.831
  %442 = load i32, i32* %i804, align 4
  %inc833 = add i32 %442, 1
  store i32 %inc833, i32* %i804, align 4
  br label %for.cond.809

for.end.834:                                      ; preds = %cond.end.816
  %443 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v839 = getelementptr inbounds %struct._stmt, %struct._stmt* %443, i32 0, i32 1
  %Try840 = bitcast %union.anon.33* %v839 to %struct.anon.45*
  %finalbody = getelementptr inbounds %struct.anon.45, %struct.anon.45* %Try840, i32 0, i32 3
  %444 = load %struct.asdl_seq*, %struct.asdl_seq** %finalbody, align 8
  store %struct.asdl_seq* %444, %struct.asdl_seq** %seq838, align 8
  store i32 0, i32* %i836, align 4
  br label %for.cond.841

for.cond.841:                                     ; preds = %for.inc.864, %for.end.834
  %445 = load i32, i32* %i836, align 4
  %conv842 = sext i32 %445 to i64
  %446 = load %struct.asdl_seq*, %struct.asdl_seq** %seq838, align 8
  %cmp843 = icmp eq %struct.asdl_seq* %446, null
  br i1 %cmp843, label %cond.true.845, label %cond.false.846

cond.true.845:                                    ; preds = %for.cond.841
  br label %cond.end.848

cond.false.846:                                   ; preds = %for.cond.841
  %447 = load %struct.asdl_seq*, %struct.asdl_seq** %seq838, align 8
  %size847 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %447, i32 0, i32 0
  %448 = load i64, i64* %size847, align 8
  br label %cond.end.848

cond.end.848:                                     ; preds = %cond.false.846, %cond.true.845
  %cond849 = phi i64 [ 0, %cond.true.845 ], [ %448, %cond.false.846 ]
  %cmp850 = icmp slt i64 %conv842, %cond849
  br i1 %cmp850, label %for.body.852, label %for.end.866

for.body.852:                                     ; preds = %cond.end.848
  %449 = load i32, i32* %i836, align 4
  %idxprom855 = sext i32 %449 to i64
  %450 = load %struct.asdl_seq*, %struct.asdl_seq** %seq838, align 8
  %elements856 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %450, i32 0, i32 1
  %arrayidx857 = getelementptr [1 x i8*], [1 x i8*]* %elements856, i32 0, i64 %idxprom855
  %451 = load i8*, i8** %arrayidx857, align 8
  %452 = bitcast i8* %451 to %struct._stmt*
  store %struct._stmt* %452, %struct._stmt** %elt854, align 8
  %453 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %454 = load %struct._stmt*, %struct._stmt** %elt854, align 8
  %call858 = call i32 @symtable_visit_stmt(%struct.symtable* %453, %struct._stmt* %454)
  %tobool859 = icmp ne i32 %call858, 0
  br i1 %tobool859, label %if.end.863, label %if.then.860

if.then.860:                                      ; preds = %for.body.852
  %455 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth861 = getelementptr inbounds %struct.symtable, %struct.symtable* %455, i32 0, i32 9
  %456 = load i32, i32* %recursion_depth861, align 4
  %dec862 = add i32 %456, -1
  store i32 %dec862, i32* %recursion_depth861, align 4
  store i32 0, i32* %retval
  br label %return

if.end.863:                                       ; preds = %for.body.852
  br label %for.inc.864

for.inc.864:                                      ; preds = %if.end.863
  %457 = load i32, i32* %i836, align 4
  %inc865 = add i32 %457, 1
  store i32 %inc865, i32* %i836, align 4
  br label %for.cond.841

for.end.866:                                      ; preds = %cond.end.848
  br label %sw.epilog

sw.bb.867:                                        ; preds = %if.end
  %458 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %459 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v868 = getelementptr inbounds %struct._stmt, %struct._stmt* %459, i32 0, i32 1
  %Assert = bitcast %union.anon.33* %v868 to %struct.anon.46*
  %test869 = getelementptr inbounds %struct.anon.46, %struct.anon.46* %Assert, i32 0, i32 0
  %460 = load %struct._expr*, %struct._expr** %test869, align 8
  %call870 = call i32 @symtable_visit_expr(%struct.symtable* %458, %struct._expr* %460)
  %tobool871 = icmp ne i32 %call870, 0
  br i1 %tobool871, label %if.end.875, label %if.then.872

if.then.872:                                      ; preds = %sw.bb.867
  %461 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth873 = getelementptr inbounds %struct.symtable, %struct.symtable* %461, i32 0, i32 9
  %462 = load i32, i32* %recursion_depth873, align 4
  %dec874 = add i32 %462, -1
  store i32 %dec874, i32* %recursion_depth873, align 4
  store i32 0, i32* %retval
  br label %return

if.end.875:                                       ; preds = %sw.bb.867
  %463 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v876 = getelementptr inbounds %struct._stmt, %struct._stmt* %463, i32 0, i32 1
  %Assert877 = bitcast %union.anon.33* %v876 to %struct.anon.46*
  %msg = getelementptr inbounds %struct.anon.46, %struct.anon.46* %Assert877, i32 0, i32 1
  %464 = load %struct._expr*, %struct._expr** %msg, align 8
  %tobool878 = icmp ne %struct._expr* %464, null
  br i1 %tobool878, label %if.then.879, label %if.end.889

if.then.879:                                      ; preds = %if.end.875
  %465 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %466 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v880 = getelementptr inbounds %struct._stmt, %struct._stmt* %466, i32 0, i32 1
  %Assert881 = bitcast %union.anon.33* %v880 to %struct.anon.46*
  %msg882 = getelementptr inbounds %struct.anon.46, %struct.anon.46* %Assert881, i32 0, i32 1
  %467 = load %struct._expr*, %struct._expr** %msg882, align 8
  %call883 = call i32 @symtable_visit_expr(%struct.symtable* %465, %struct._expr* %467)
  %tobool884 = icmp ne i32 %call883, 0
  br i1 %tobool884, label %if.end.888, label %if.then.885

if.then.885:                                      ; preds = %if.then.879
  %468 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth886 = getelementptr inbounds %struct.symtable, %struct.symtable* %468, i32 0, i32 9
  %469 = load i32, i32* %recursion_depth886, align 4
  %dec887 = add i32 %469, -1
  store i32 %dec887, i32* %recursion_depth886, align 4
  store i32 0, i32* %retval
  br label %return

if.end.888:                                       ; preds = %if.then.879
  br label %if.end.889

if.end.889:                                       ; preds = %if.end.888, %if.end.875
  br label %sw.epilog

sw.bb.890:                                        ; preds = %if.end
  %470 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v895 = getelementptr inbounds %struct._stmt, %struct._stmt* %470, i32 0, i32 1
  %Import = bitcast %union.anon.33* %v895 to %struct.anon.47*
  %names = getelementptr inbounds %struct.anon.47, %struct.anon.47* %Import, i32 0, i32 0
  %471 = load %struct.asdl_seq*, %struct.asdl_seq** %names, align 8
  store %struct.asdl_seq* %471, %struct.asdl_seq** %seq894, align 8
  store i32 0, i32* %i892, align 4
  br label %for.cond.896

for.cond.896:                                     ; preds = %for.inc.919, %sw.bb.890
  %472 = load i32, i32* %i892, align 4
  %conv897 = sext i32 %472 to i64
  %473 = load %struct.asdl_seq*, %struct.asdl_seq** %seq894, align 8
  %cmp898 = icmp eq %struct.asdl_seq* %473, null
  br i1 %cmp898, label %cond.true.900, label %cond.false.901

cond.true.900:                                    ; preds = %for.cond.896
  br label %cond.end.903

cond.false.901:                                   ; preds = %for.cond.896
  %474 = load %struct.asdl_seq*, %struct.asdl_seq** %seq894, align 8
  %size902 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %474, i32 0, i32 0
  %475 = load i64, i64* %size902, align 8
  br label %cond.end.903

cond.end.903:                                     ; preds = %cond.false.901, %cond.true.900
  %cond904 = phi i64 [ 0, %cond.true.900 ], [ %475, %cond.false.901 ]
  %cmp905 = icmp slt i64 %conv897, %cond904
  br i1 %cmp905, label %for.body.907, label %for.end.921

for.body.907:                                     ; preds = %cond.end.903
  %476 = load i32, i32* %i892, align 4
  %idxprom910 = sext i32 %476 to i64
  %477 = load %struct.asdl_seq*, %struct.asdl_seq** %seq894, align 8
  %elements911 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %477, i32 0, i32 1
  %arrayidx912 = getelementptr [1 x i8*], [1 x i8*]* %elements911, i32 0, i64 %idxprom910
  %478 = load i8*, i8** %arrayidx912, align 8
  %479 = bitcast i8* %478 to %struct._alias*
  store %struct._alias* %479, %struct._alias** %elt909, align 8
  %480 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %481 = load %struct._alias*, %struct._alias** %elt909, align 8
  %call913 = call i32 @symtable_visit_alias(%struct.symtable* %480, %struct._alias* %481)
  %tobool914 = icmp ne i32 %call913, 0
  br i1 %tobool914, label %if.end.918, label %if.then.915

if.then.915:                                      ; preds = %for.body.907
  %482 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth916 = getelementptr inbounds %struct.symtable, %struct.symtable* %482, i32 0, i32 9
  %483 = load i32, i32* %recursion_depth916, align 4
  %dec917 = add i32 %483, -1
  store i32 %dec917, i32* %recursion_depth916, align 4
  store i32 0, i32* %retval
  br label %return

if.end.918:                                       ; preds = %for.body.907
  br label %for.inc.919

for.inc.919:                                      ; preds = %if.end.918
  %484 = load i32, i32* %i892, align 4
  %inc920 = add i32 %484, 1
  store i32 %inc920, i32* %i892, align 4
  br label %for.cond.896

for.end.921:                                      ; preds = %cond.end.903
  %485 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur922 = getelementptr inbounds %struct.symtable, %struct.symtable* %485, i32 0, i32 1
  %486 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur922, align 8
  %ste_unoptimized = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %486, i32 0, i32 8
  %487 = load i32, i32* %ste_unoptimized, align 4
  %tobool923 = icmp ne i32 %487, 0
  br i1 %tobool923, label %land.lhs.true, label %if.end.932

land.lhs.true:                                    ; preds = %for.end.921
  %488 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur924 = getelementptr inbounds %struct.symtable, %struct.symtable* %488, i32 0, i32 1
  %489 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur924, align 8
  %ste_opt_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %489, i32 0, i32 13
  %490 = load i32, i32* %ste_opt_lineno, align 4
  %tobool925 = icmp ne i32 %490, 0
  br i1 %tobool925, label %if.end.932, label %if.then.926

if.then.926:                                      ; preds = %land.lhs.true
  %491 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno927 = getelementptr inbounds %struct._stmt, %struct._stmt* %491, i32 0, i32 2
  %492 = load i32, i32* %lineno927, align 4
  %493 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur928 = getelementptr inbounds %struct.symtable, %struct.symtable* %493, i32 0, i32 1
  %494 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur928, align 8
  %ste_opt_lineno929 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %494, i32 0, i32 13
  store i32 %492, i32* %ste_opt_lineno929, align 4
  %495 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %col_offset930 = getelementptr inbounds %struct._stmt, %struct._stmt* %495, i32 0, i32 3
  %496 = load i32, i32* %col_offset930, align 4
  %497 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur931 = getelementptr inbounds %struct.symtable, %struct.symtable* %497, i32 0, i32 1
  %498 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur931, align 8
  %ste_opt_col_offset = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %498, i32 0, i32 14
  store i32 %496, i32* %ste_opt_col_offset, align 4
  br label %if.end.932

if.end.932:                                       ; preds = %if.then.926, %land.lhs.true, %for.end.921
  br label %sw.epilog

sw.bb.933:                                        ; preds = %if.end
  %499 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v938 = getelementptr inbounds %struct._stmt, %struct._stmt* %499, i32 0, i32 1
  %ImportFrom = bitcast %union.anon.33* %v938 to %struct.anon.48*
  %names939 = getelementptr inbounds %struct.anon.48, %struct.anon.48* %ImportFrom, i32 0, i32 1
  %500 = load %struct.asdl_seq*, %struct.asdl_seq** %names939, align 8
  store %struct.asdl_seq* %500, %struct.asdl_seq** %seq937, align 8
  store i32 0, i32* %i935, align 4
  br label %for.cond.940

for.cond.940:                                     ; preds = %for.inc.963, %sw.bb.933
  %501 = load i32, i32* %i935, align 4
  %conv941 = sext i32 %501 to i64
  %502 = load %struct.asdl_seq*, %struct.asdl_seq** %seq937, align 8
  %cmp942 = icmp eq %struct.asdl_seq* %502, null
  br i1 %cmp942, label %cond.true.944, label %cond.false.945

cond.true.944:                                    ; preds = %for.cond.940
  br label %cond.end.947

cond.false.945:                                   ; preds = %for.cond.940
  %503 = load %struct.asdl_seq*, %struct.asdl_seq** %seq937, align 8
  %size946 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %503, i32 0, i32 0
  %504 = load i64, i64* %size946, align 8
  br label %cond.end.947

cond.end.947:                                     ; preds = %cond.false.945, %cond.true.944
  %cond948 = phi i64 [ 0, %cond.true.944 ], [ %504, %cond.false.945 ]
  %cmp949 = icmp slt i64 %conv941, %cond948
  br i1 %cmp949, label %for.body.951, label %for.end.965

for.body.951:                                     ; preds = %cond.end.947
  %505 = load i32, i32* %i935, align 4
  %idxprom954 = sext i32 %505 to i64
  %506 = load %struct.asdl_seq*, %struct.asdl_seq** %seq937, align 8
  %elements955 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %506, i32 0, i32 1
  %arrayidx956 = getelementptr [1 x i8*], [1 x i8*]* %elements955, i32 0, i64 %idxprom954
  %507 = load i8*, i8** %arrayidx956, align 8
  %508 = bitcast i8* %507 to %struct._alias*
  store %struct._alias* %508, %struct._alias** %elt953, align 8
  %509 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %510 = load %struct._alias*, %struct._alias** %elt953, align 8
  %call957 = call i32 @symtable_visit_alias(%struct.symtable* %509, %struct._alias* %510)
  %tobool958 = icmp ne i32 %call957, 0
  br i1 %tobool958, label %if.end.962, label %if.then.959

if.then.959:                                      ; preds = %for.body.951
  %511 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth960 = getelementptr inbounds %struct.symtable, %struct.symtable* %511, i32 0, i32 9
  %512 = load i32, i32* %recursion_depth960, align 4
  %dec961 = add i32 %512, -1
  store i32 %dec961, i32* %recursion_depth960, align 4
  store i32 0, i32* %retval
  br label %return

if.end.962:                                       ; preds = %for.body.951
  br label %for.inc.963

for.inc.963:                                      ; preds = %if.end.962
  %513 = load i32, i32* %i935, align 4
  %inc964 = add i32 %513, 1
  store i32 %inc964, i32* %i935, align 4
  br label %for.cond.940

for.end.965:                                      ; preds = %cond.end.947
  %514 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur966 = getelementptr inbounds %struct.symtable, %struct.symtable* %514, i32 0, i32 1
  %515 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur966, align 8
  %ste_unoptimized967 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %515, i32 0, i32 8
  %516 = load i32, i32* %ste_unoptimized967, align 4
  %tobool968 = icmp ne i32 %516, 0
  br i1 %tobool968, label %land.lhs.true.969, label %if.end.980

land.lhs.true.969:                                ; preds = %for.end.965
  %517 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur970 = getelementptr inbounds %struct.symtable, %struct.symtable* %517, i32 0, i32 1
  %518 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur970, align 8
  %ste_opt_lineno971 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %518, i32 0, i32 13
  %519 = load i32, i32* %ste_opt_lineno971, align 4
  %tobool972 = icmp ne i32 %519, 0
  br i1 %tobool972, label %if.end.980, label %if.then.973

if.then.973:                                      ; preds = %land.lhs.true.969
  %520 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno974 = getelementptr inbounds %struct._stmt, %struct._stmt* %520, i32 0, i32 2
  %521 = load i32, i32* %lineno974, align 4
  %522 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur975 = getelementptr inbounds %struct.symtable, %struct.symtable* %522, i32 0, i32 1
  %523 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur975, align 8
  %ste_opt_lineno976 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %523, i32 0, i32 13
  store i32 %521, i32* %ste_opt_lineno976, align 4
  %524 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %col_offset977 = getelementptr inbounds %struct._stmt, %struct._stmt* %524, i32 0, i32 3
  %525 = load i32, i32* %col_offset977, align 4
  %526 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur978 = getelementptr inbounds %struct.symtable, %struct.symtable* %526, i32 0, i32 1
  %527 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur978, align 8
  %ste_opt_col_offset979 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %527, i32 0, i32 14
  store i32 %525, i32* %ste_opt_col_offset979, align 4
  br label %if.end.980

if.end.980:                                       ; preds = %if.then.973, %land.lhs.true.969, %for.end.965
  br label %sw.epilog

sw.bb.981:                                        ; preds = %if.end
  %528 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v986 = getelementptr inbounds %struct._stmt, %struct._stmt* %528, i32 0, i32 1
  %Global = bitcast %union.anon.33* %v986 to %struct.anon.49*
  %names987 = getelementptr inbounds %struct.anon.49, %struct.anon.49* %Global, i32 0, i32 0
  %529 = load %struct.asdl_seq*, %struct.asdl_seq** %names987, align 8
  store %struct.asdl_seq* %529, %struct.asdl_seq** %seq985, align 8
  store i32 0, i32* %i983, align 4
  br label %for.cond.988

for.cond.988:                                     ; preds = %for.inc.1049, %sw.bb.981
  %530 = load i32, i32* %i983, align 4
  %conv989 = sext i32 %530 to i64
  %531 = load %struct.asdl_seq*, %struct.asdl_seq** %seq985, align 8
  %cmp990 = icmp eq %struct.asdl_seq* %531, null
  br i1 %cmp990, label %cond.true.992, label %cond.false.993

cond.true.992:                                    ; preds = %for.cond.988
  br label %cond.end.995

cond.false.993:                                   ; preds = %for.cond.988
  %532 = load %struct.asdl_seq*, %struct.asdl_seq** %seq985, align 8
  %size994 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %532, i32 0, i32 0
  %533 = load i64, i64* %size994, align 8
  br label %cond.end.995

cond.end.995:                                     ; preds = %cond.false.993, %cond.true.992
  %cond996 = phi i64 [ 0, %cond.true.992 ], [ %533, %cond.false.993 ]
  %cmp997 = icmp slt i64 %conv989, %cond996
  br i1 %cmp997, label %for.body.999, label %for.end.1051

for.body.999:                                     ; preds = %cond.end.995
  %534 = load i32, i32* %i983, align 4
  %idxprom1002 = sext i32 %534 to i64
  %535 = load %struct.asdl_seq*, %struct.asdl_seq** %seq985, align 8
  %elements1003 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %535, i32 0, i32 1
  %arrayidx1004 = getelementptr [1 x i8*], [1 x i8*]* %elements1003, i32 0, i64 %idxprom1002
  %536 = load i8*, i8** %arrayidx1004, align 8
  %537 = bitcast i8* %536 to %struct._object*
  store %struct._object* %537, %struct._object** %name1001, align 8
  %538 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %539 = load %struct._object*, %struct._object** %name1001, align 8
  %call1006 = call i64 @symtable_lookup(%struct.symtable* %538, %struct._object* %539)
  store i64 %call1006, i64* %cur, align 8
  %540 = load i64, i64* %cur, align 8
  %cmp1007 = icmp slt i64 %540, 0
  br i1 %cmp1007, label %if.then.1009, label %if.end.1012

if.then.1009:                                     ; preds = %for.body.999
  %541 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1010 = getelementptr inbounds %struct.symtable, %struct.symtable* %541, i32 0, i32 9
  %542 = load i32, i32* %recursion_depth1010, align 4
  %dec1011 = add i32 %542, -1
  store i32 %dec1011, i32* %recursion_depth1010, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1012:                                      ; preds = %for.body.999
  %543 = load i64, i64* %cur, align 8
  %and = and i64 %543, 18
  %tobool1013 = icmp ne i64 %and, 0
  br i1 %tobool1013, label %if.then.1014, label %if.end.1036

if.then.1014:                                     ; preds = %if.end.1012
  %544 = load %struct._object*, %struct._object** %name1001, align 8
  %call1017 = call i8* @PyUnicode_AsUTF8(%struct._object* %544)
  store i8* %call1017, i8** %c_name, align 8
  %545 = load i8*, i8** %c_name, align 8
  %tobool1018 = icmp ne i8* %545, null
  br i1 %tobool1018, label %if.end.1020, label %if.then.1019

if.then.1019:                                     ; preds = %if.then.1014
  store i32 0, i32* %retval
  br label %return

if.end.1020:                                      ; preds = %if.then.1014
  %546 = load i64, i64* %cur, align 8
  %and1021 = and i64 %546, 2
  %tobool1022 = icmp ne i64 %and1021, 0
  br i1 %tobool1022, label %if.then.1023, label %if.else

if.then.1023:                                     ; preds = %if.end.1020
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %547 = load i8*, i8** %c_name, align 8
  %call1024 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.24, i32 0, i32 0), i8* %547)
  br label %if.end.1027

if.else:                                          ; preds = %if.end.1020
  %arraydecay1025 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %548 = load i8*, i8** %c_name, align 8
  %call1026 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay1025, i64 256, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i32 0, i32 0), i8* %548)
  br label %if.end.1027

if.end.1027:                                      ; preds = %if.else, %if.then.1023
  %549 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %arraydecay1028 = getelementptr inbounds [256 x i8], [256 x i8]* %buf, i32 0, i32 0
  %550 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno1029 = getelementptr inbounds %struct._stmt, %struct._stmt* %550, i32 0, i32 2
  %551 = load i32, i32* %lineno1029, align 4
  %call1030 = call i32 @symtable_warn(%struct.symtable* %549, i8* %arraydecay1028, i32 %551)
  %tobool1031 = icmp ne i32 %call1030, 0
  br i1 %tobool1031, label %if.end.1035, label %if.then.1032

if.then.1032:                                     ; preds = %if.end.1027
  %552 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1033 = getelementptr inbounds %struct.symtable, %struct.symtable* %552, i32 0, i32 9
  %553 = load i32, i32* %recursion_depth1033, align 4
  %dec1034 = add i32 %553, -1
  store i32 %dec1034, i32* %recursion_depth1033, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1035:                                      ; preds = %if.end.1027
  br label %if.end.1036

if.end.1036:                                      ; preds = %if.end.1035, %if.end.1012
  %554 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %555 = load %struct._object*, %struct._object** %name1001, align 8
  %call1037 = call i32 @symtable_add_def(%struct.symtable* %554, %struct._object* %555, i32 1)
  %tobool1038 = icmp ne i32 %call1037, 0
  br i1 %tobool1038, label %if.end.1042, label %if.then.1039

if.then.1039:                                     ; preds = %if.end.1036
  %556 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1040 = getelementptr inbounds %struct.symtable, %struct.symtable* %556, i32 0, i32 9
  %557 = load i32, i32* %recursion_depth1040, align 4
  %dec1041 = add i32 %557, -1
  store i32 %dec1041, i32* %recursion_depth1040, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1042:                                      ; preds = %if.end.1036
  %558 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %559 = load %struct._object*, %struct._object** %name1001, align 8
  %560 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %call1043 = call i32 @symtable_record_directive(%struct.symtable* %558, %struct._object* %559, %struct._stmt* %560)
  %tobool1044 = icmp ne i32 %call1043, 0
  br i1 %tobool1044, label %if.end.1048, label %if.then.1045

if.then.1045:                                     ; preds = %if.end.1042
  %561 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1046 = getelementptr inbounds %struct.symtable, %struct.symtable* %561, i32 0, i32 9
  %562 = load i32, i32* %recursion_depth1046, align 4
  %dec1047 = add i32 %562, -1
  store i32 %dec1047, i32* %recursion_depth1046, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1048:                                      ; preds = %if.end.1042
  br label %for.inc.1049

for.inc.1049:                                     ; preds = %if.end.1048
  %563 = load i32, i32* %i983, align 4
  %inc1050 = add i32 %563, 1
  store i32 %inc1050, i32* %i983, align 4
  br label %for.cond.988

for.end.1051:                                     ; preds = %cond.end.995
  br label %sw.epilog

sw.bb.1052:                                       ; preds = %if.end
  %564 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v1057 = getelementptr inbounds %struct._stmt, %struct._stmt* %564, i32 0, i32 1
  %Nonlocal = bitcast %union.anon.33* %v1057 to %struct.anon.50*
  %names1058 = getelementptr inbounds %struct.anon.50, %struct.anon.50* %Nonlocal, i32 0, i32 0
  %565 = load %struct.asdl_seq*, %struct.asdl_seq** %names1058, align 8
  store %struct.asdl_seq* %565, %struct.asdl_seq** %seq1056, align 8
  store i32 0, i32* %i1054, align 4
  br label %for.cond.1059

for.cond.1059:                                    ; preds = %for.inc.1126, %sw.bb.1052
  %566 = load i32, i32* %i1054, align 4
  %conv1060 = sext i32 %566 to i64
  %567 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1056, align 8
  %cmp1061 = icmp eq %struct.asdl_seq* %567, null
  br i1 %cmp1061, label %cond.true.1063, label %cond.false.1064

cond.true.1063:                                   ; preds = %for.cond.1059
  br label %cond.end.1066

cond.false.1064:                                  ; preds = %for.cond.1059
  %568 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1056, align 8
  %size1065 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %568, i32 0, i32 0
  %569 = load i64, i64* %size1065, align 8
  br label %cond.end.1066

cond.end.1066:                                    ; preds = %cond.false.1064, %cond.true.1063
  %cond1067 = phi i64 [ 0, %cond.true.1063 ], [ %569, %cond.false.1064 ]
  %cmp1068 = icmp slt i64 %conv1060, %cond1067
  br i1 %cmp1068, label %for.body.1070, label %for.end.1128

for.body.1070:                                    ; preds = %cond.end.1066
  %570 = load i32, i32* %i1054, align 4
  %idxprom1073 = sext i32 %570 to i64
  %571 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1056, align 8
  %elements1074 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %571, i32 0, i32 1
  %arrayidx1075 = getelementptr [1 x i8*], [1 x i8*]* %elements1074, i32 0, i64 %idxprom1073
  %572 = load i8*, i8** %arrayidx1075, align 8
  %573 = bitcast i8* %572 to %struct._object*
  store %struct._object* %573, %struct._object** %name1072, align 8
  %574 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %575 = load %struct._object*, %struct._object** %name1072, align 8
  %call1078 = call i64 @symtable_lookup(%struct.symtable* %574, %struct._object* %575)
  store i64 %call1078, i64* %cur1077, align 8
  %576 = load i64, i64* %cur1077, align 8
  %cmp1079 = icmp slt i64 %576, 0
  br i1 %cmp1079, label %if.then.1081, label %if.end.1084

if.then.1081:                                     ; preds = %for.body.1070
  %577 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1082 = getelementptr inbounds %struct.symtable, %struct.symtable* %577, i32 0, i32 9
  %578 = load i32, i32* %recursion_depth1082, align 4
  %dec1083 = add i32 %578, -1
  store i32 %dec1083, i32* %recursion_depth1082, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1084:                                      ; preds = %for.body.1070
  %579 = load i64, i64* %cur1077, align 8
  %and1085 = and i64 %579, 18
  %tobool1086 = icmp ne i64 %and1085, 0
  br i1 %tobool1086, label %if.then.1087, label %if.end.1113

if.then.1087:                                     ; preds = %if.end.1084
  %580 = load %struct._object*, %struct._object** %name1072, align 8
  %call1092 = call i8* @PyUnicode_AsUTF8(%struct._object* %580)
  store i8* %call1092, i8** %c_name1091, align 8
  %581 = load i8*, i8** %c_name1091, align 8
  %tobool1093 = icmp ne i8* %581, null
  br i1 %tobool1093, label %if.end.1095, label %if.then.1094

if.then.1094:                                     ; preds = %if.then.1087
  store i32 0, i32* %retval
  br label %return

if.end.1095:                                      ; preds = %if.then.1087
  %582 = load i64, i64* %cur1077, align 8
  %and1096 = and i64 %582, 2
  %tobool1097 = icmp ne i64 %and1096, 0
  br i1 %tobool1097, label %if.then.1098, label %if.else.1101

if.then.1098:                                     ; preds = %if.end.1095
  %arraydecay1099 = getelementptr inbounds [256 x i8], [256 x i8]* %buf1089, i32 0, i32 0
  %583 = load i8*, i8** %c_name1091, align 8
  %call1100 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay1099, i64 256, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.26, i32 0, i32 0), i8* %583)
  br label %if.end.1104

if.else.1101:                                     ; preds = %if.end.1095
  %arraydecay1102 = getelementptr inbounds [256 x i8], [256 x i8]* %buf1089, i32 0, i32 0
  %584 = load i8*, i8** %c_name1091, align 8
  %call1103 = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay1102, i64 256, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i8* %584)
  br label %if.end.1104

if.end.1104:                                      ; preds = %if.else.1101, %if.then.1098
  %585 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %arraydecay1105 = getelementptr inbounds [256 x i8], [256 x i8]* %buf1089, i32 0, i32 0
  %586 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno1106 = getelementptr inbounds %struct._stmt, %struct._stmt* %586, i32 0, i32 2
  %587 = load i32, i32* %lineno1106, align 4
  %call1107 = call i32 @symtable_warn(%struct.symtable* %585, i8* %arraydecay1105, i32 %587)
  %tobool1108 = icmp ne i32 %call1107, 0
  br i1 %tobool1108, label %if.end.1112, label %if.then.1109

if.then.1109:                                     ; preds = %if.end.1104
  %588 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1110 = getelementptr inbounds %struct.symtable, %struct.symtable* %588, i32 0, i32 9
  %589 = load i32, i32* %recursion_depth1110, align 4
  %dec1111 = add i32 %589, -1
  store i32 %dec1111, i32* %recursion_depth1110, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1112:                                      ; preds = %if.end.1104
  br label %if.end.1113

if.end.1113:                                      ; preds = %if.end.1112, %if.end.1084
  %590 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %591 = load %struct._object*, %struct._object** %name1072, align 8
  %call1114 = call i32 @symtable_add_def(%struct.symtable* %590, %struct._object* %591, i32 8)
  %tobool1115 = icmp ne i32 %call1114, 0
  br i1 %tobool1115, label %if.end.1119, label %if.then.1116

if.then.1116:                                     ; preds = %if.end.1113
  %592 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1117 = getelementptr inbounds %struct.symtable, %struct.symtable* %592, i32 0, i32 9
  %593 = load i32, i32* %recursion_depth1117, align 4
  %dec1118 = add i32 %593, -1
  store i32 %dec1118, i32* %recursion_depth1117, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1119:                                      ; preds = %if.end.1113
  %594 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %595 = load %struct._object*, %struct._object** %name1072, align 8
  %596 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %call1120 = call i32 @symtable_record_directive(%struct.symtable* %594, %struct._object* %595, %struct._stmt* %596)
  %tobool1121 = icmp ne i32 %call1120, 0
  br i1 %tobool1121, label %if.end.1125, label %if.then.1122

if.then.1122:                                     ; preds = %if.end.1119
  %597 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1123 = getelementptr inbounds %struct.symtable, %struct.symtable* %597, i32 0, i32 9
  %598 = load i32, i32* %recursion_depth1123, align 4
  %dec1124 = add i32 %598, -1
  store i32 %dec1124, i32* %recursion_depth1123, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1125:                                      ; preds = %if.end.1119
  br label %for.inc.1126

for.inc.1126:                                     ; preds = %if.end.1125
  %599 = load i32, i32* %i1054, align 4
  %inc1127 = add i32 %599, 1
  store i32 %inc1127, i32* %i1054, align 4
  br label %for.cond.1059

for.end.1128:                                     ; preds = %cond.end.1066
  br label %sw.epilog

sw.bb.1129:                                       ; preds = %if.end
  %600 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %601 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v1130 = getelementptr inbounds %struct._stmt, %struct._stmt* %601, i32 0, i32 1
  %Expr = bitcast %union.anon.33* %v1130 to %struct.anon.51*
  %value1131 = getelementptr inbounds %struct.anon.51, %struct.anon.51* %Expr, i32 0, i32 0
  %602 = load %struct._expr*, %struct._expr** %value1131, align 8
  %call1132 = call i32 @symtable_visit_expr(%struct.symtable* %600, %struct._expr* %602)
  %tobool1133 = icmp ne i32 %call1132, 0
  br i1 %tobool1133, label %if.end.1137, label %if.then.1134

if.then.1134:                                     ; preds = %sw.bb.1129
  %603 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1135 = getelementptr inbounds %struct.symtable, %struct.symtable* %603, i32 0, i32 9
  %604 = load i32, i32* %recursion_depth1135, align 4
  %dec1136 = add i32 %604, -1
  store i32 %dec1136, i32* %recursion_depth1135, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1137:                                      ; preds = %sw.bb.1129
  br label %sw.epilog

sw.bb.1138:                                       ; preds = %if.end, %if.end, %if.end
  br label %sw.epilog

sw.bb.1139:                                       ; preds = %if.end
  %605 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v1144 = getelementptr inbounds %struct._stmt, %struct._stmt* %605, i32 0, i32 1
  %With = bitcast %union.anon.33* %v1144 to %struct.anon.43*
  %items = getelementptr inbounds %struct.anon.43, %struct.anon.43* %With, i32 0, i32 0
  %606 = load %struct.asdl_seq*, %struct.asdl_seq** %items, align 8
  store %struct.asdl_seq* %606, %struct.asdl_seq** %seq1143, align 8
  store i32 0, i32* %i1141, align 4
  br label %for.cond.1145

for.cond.1145:                                    ; preds = %for.inc.1168, %sw.bb.1139
  %607 = load i32, i32* %i1141, align 4
  %conv1146 = sext i32 %607 to i64
  %608 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1143, align 8
  %cmp1147 = icmp eq %struct.asdl_seq* %608, null
  br i1 %cmp1147, label %cond.true.1149, label %cond.false.1150

cond.true.1149:                                   ; preds = %for.cond.1145
  br label %cond.end.1152

cond.false.1150:                                  ; preds = %for.cond.1145
  %609 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1143, align 8
  %size1151 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %609, i32 0, i32 0
  %610 = load i64, i64* %size1151, align 8
  br label %cond.end.1152

cond.end.1152:                                    ; preds = %cond.false.1150, %cond.true.1149
  %cond1153 = phi i64 [ 0, %cond.true.1149 ], [ %610, %cond.false.1150 ]
  %cmp1154 = icmp slt i64 %conv1146, %cond1153
  br i1 %cmp1154, label %for.body.1156, label %for.end.1170

for.body.1156:                                    ; preds = %cond.end.1152
  %611 = load i32, i32* %i1141, align 4
  %idxprom1159 = sext i32 %611 to i64
  %612 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1143, align 8
  %elements1160 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %612, i32 0, i32 1
  %arrayidx1161 = getelementptr [1 x i8*], [1 x i8*]* %elements1160, i32 0, i64 %idxprom1159
  %613 = load i8*, i8** %arrayidx1161, align 8
  %614 = bitcast i8* %613 to %struct._withitem*
  store %struct._withitem* %614, %struct._withitem** %elt1158, align 8
  %615 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %616 = load %struct._withitem*, %struct._withitem** %elt1158, align 8
  %call1162 = call i32 @symtable_visit_withitem(%struct.symtable* %615, %struct._withitem* %616)
  %tobool1163 = icmp ne i32 %call1162, 0
  br i1 %tobool1163, label %if.end.1167, label %if.then.1164

if.then.1164:                                     ; preds = %for.body.1156
  %617 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1165 = getelementptr inbounds %struct.symtable, %struct.symtable* %617, i32 0, i32 9
  %618 = load i32, i32* %recursion_depth1165, align 4
  %dec1166 = add i32 %618, -1
  store i32 %dec1166, i32* %recursion_depth1165, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1167:                                      ; preds = %for.body.1156
  br label %for.inc.1168

for.inc.1168:                                     ; preds = %if.end.1167
  %619 = load i32, i32* %i1141, align 4
  %inc1169 = add i32 %619, 1
  store i32 %inc1169, i32* %i1141, align 4
  br label %for.cond.1145

for.end.1170:                                     ; preds = %cond.end.1152
  %620 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v1175 = getelementptr inbounds %struct._stmt, %struct._stmt* %620, i32 0, i32 1
  %With1176 = bitcast %union.anon.33* %v1175 to %struct.anon.43*
  %body1177 = getelementptr inbounds %struct.anon.43, %struct.anon.43* %With1176, i32 0, i32 1
  %621 = load %struct.asdl_seq*, %struct.asdl_seq** %body1177, align 8
  store %struct.asdl_seq* %621, %struct.asdl_seq** %seq1174, align 8
  store i32 0, i32* %i1172, align 4
  br label %for.cond.1178

for.cond.1178:                                    ; preds = %for.inc.1201, %for.end.1170
  %622 = load i32, i32* %i1172, align 4
  %conv1179 = sext i32 %622 to i64
  %623 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1174, align 8
  %cmp1180 = icmp eq %struct.asdl_seq* %623, null
  br i1 %cmp1180, label %cond.true.1182, label %cond.false.1183

cond.true.1182:                                   ; preds = %for.cond.1178
  br label %cond.end.1185

cond.false.1183:                                  ; preds = %for.cond.1178
  %624 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1174, align 8
  %size1184 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %624, i32 0, i32 0
  %625 = load i64, i64* %size1184, align 8
  br label %cond.end.1185

cond.end.1185:                                    ; preds = %cond.false.1183, %cond.true.1182
  %cond1186 = phi i64 [ 0, %cond.true.1182 ], [ %625, %cond.false.1183 ]
  %cmp1187 = icmp slt i64 %conv1179, %cond1186
  br i1 %cmp1187, label %for.body.1189, label %for.end.1203

for.body.1189:                                    ; preds = %cond.end.1185
  %626 = load i32, i32* %i1172, align 4
  %idxprom1192 = sext i32 %626 to i64
  %627 = load %struct.asdl_seq*, %struct.asdl_seq** %seq1174, align 8
  %elements1193 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %627, i32 0, i32 1
  %arrayidx1194 = getelementptr [1 x i8*], [1 x i8*]* %elements1193, i32 0, i64 %idxprom1192
  %628 = load i8*, i8** %arrayidx1194, align 8
  %629 = bitcast i8* %628 to %struct._stmt*
  store %struct._stmt* %629, %struct._stmt** %elt1191, align 8
  %630 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %631 = load %struct._stmt*, %struct._stmt** %elt1191, align 8
  %call1195 = call i32 @symtable_visit_stmt(%struct.symtable* %630, %struct._stmt* %631)
  %tobool1196 = icmp ne i32 %call1195, 0
  br i1 %tobool1196, label %if.end.1200, label %if.then.1197

if.then.1197:                                     ; preds = %for.body.1189
  %632 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1198 = getelementptr inbounds %struct.symtable, %struct.symtable* %632, i32 0, i32 9
  %633 = load i32, i32* %recursion_depth1198, align 4
  %dec1199 = add i32 %633, -1
  store i32 %dec1199, i32* %recursion_depth1198, align 4
  store i32 0, i32* %retval
  br label %return

if.end.1200:                                      ; preds = %for.body.1189
  br label %for.inc.1201

for.inc.1201:                                     ; preds = %if.end.1200
  %634 = load i32, i32* %i1172, align 4
  %inc1202 = add i32 %634, 1
  store i32 %inc1202, i32* %i1172, align 4
  br label %for.cond.1178

for.end.1203:                                     ; preds = %cond.end.1185
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %for.end.1203, %sw.bb.1138, %if.end.1137, %for.end.1128, %for.end.1051, %if.end.980, %if.end.932, %if.end.889, %for.end.866, %if.end.736, %if.end.708, %if.end.627, %if.end.547, %if.end.459, %if.end.442, %for.end.400, %if.end.368, %if.end.354, %if.end.159
  %635 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1204 = getelementptr inbounds %struct.symtable, %struct.symtable* %635, i32 0, i32 9
  %636 = load i32, i32* %recursion_depth1204, align 4
  %dec1205 = add i32 %636, -1
  store i32 %dec1205, i32* %recursion_depth1204, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.1197, %if.then.1164, %if.then.1134, %if.then.1122, %if.then.1116, %if.then.1109, %if.then.1094, %if.then.1081, %if.then.1045, %if.then.1039, %if.then.1032, %if.then.1019, %if.then.1009, %if.then.959, %if.then.915, %if.then.885, %if.then.872, %if.then.860, %if.then.828, %if.then.796, %if.then.763, %if.then.731, %if.then.718, %if.then.701, %if.then.663, %if.then.633, %if.then.620, %if.then.582, %if.then.552, %if.then.540, %if.then.503, %if.then.473, %if.then.465, %if.then.456, %if.then.447, %if.then.439, %if.then.427, %if.then.394, %if.then.364, %if.then.351, %if.then.341, %if.then.307, %if.then.292, %if.then.256, %if.then.242, %if.then.226, %if.then.194, %if.then.165, %if.then.156, %if.then.147, %if.then.121, %if.then.112, %if.then.99, %if.then.68, %if.then.58, %if.then.20, %if.then.2, %if.then
  %637 = load i32, i32* %retval
  ret i32 %637
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_expr(%struct.symtable* %st, %struct._expr* %e) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %e.addr = alloca %struct._expr*, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.asdl_seq*, align 8
  %elt = alloca %struct._expr*, align 8
  %i49 = alloca i32, align 4
  %seq50 = alloca %struct.asdl_seq*, align 8
  %elt67 = alloca %struct._expr*, align 8
  %i86 = alloca i32, align 4
  %seq87 = alloca %struct.asdl_seq*, align 8
  %elt104 = alloca %struct._expr*, align 8
  %i176 = alloca i32, align 4
  %seq177 = alloca %struct.asdl_seq*, align 8
  %elt191 = alloca %struct._expr*, align 8
  %i204 = alloca i32, align 4
  %seq205 = alloca %struct.asdl_seq*, align 8
  %elt221 = alloca %struct._expr*, align 8
  %i235 = alloca i32, align 4
  %seq236 = alloca %struct.asdl_seq*, align 8
  %elt250 = alloca %struct._expr*, align 8
  %i328 = alloca i32, align 4
  %seq329 = alloca %struct.asdl_seq*, align 8
  %elt344 = alloca %struct._expr*, align 8
  %i365 = alloca i32, align 4
  %seq366 = alloca %struct.asdl_seq*, align 8
  %elt382 = alloca %struct._expr*, align 8
  %i395 = alloca i32, align 4
  %seq396 = alloca %struct.asdl_seq*, align 8
  %elt411 = alloca %struct._keyword*, align 8
  %i530 = alloca i32, align 4
  %seq531 = alloca %struct.asdl_seq*, align 8
  %elt546 = alloca %struct._expr*, align 8
  %i560 = alloca i32, align 4
  %seq561 = alloca %struct.asdl_seq*, align 8
  %elt576 = alloca %struct._expr*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._expr* %e, %struct._expr** %e.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 9
  %1 = load i32, i32* %recursion_depth, align 4
  %inc = add i32 %1, 1
  store i32 %inc, i32* %recursion_depth, align 4
  %2 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_limit = getelementptr inbounds %struct.symtable, %struct.symtable* %2, i32 0, i32 10
  %3 = load i32, i32* %recursion_limit, align 4
  %cmp = icmp sgt i32 %inc, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.23, i32 0, i32 0))
  %5 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth1 = getelementptr inbounds %struct.symtable, %struct.symtable* %5, i32 0, i32 9
  %6 = load i32, i32* %recursion_depth1, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %recursion_depth1, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %kind = getelementptr inbounds %struct._expr, %struct._expr* %7, i32 0, i32 0
  %8 = load i32, i32* %kind, align 4
  switch i32 %8, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.11
    i32 3, label %sw.bb.27
    i32 4, label %sw.bb.35
    i32 5, label %sw.bb.150
    i32 6, label %sw.bb.175
    i32 7, label %sw.bb.234
    i32 11, label %sw.bb.263
    i32 8, label %sw.bb.270
    i32 9, label %sw.bb.277
    i32 10, label %sw.bb.284
    i32 12, label %sw.bb.291
    i32 13, label %sw.bb.305
    i32 14, label %sw.bb.319
    i32 15, label %sw.bb.357
    i32 16, label %sw.bb.452
    i32 17, label %sw.bb.452
    i32 18, label %sw.bb.452
    i32 20, label %sw.bb.452
    i32 19, label %sw.bb.452
    i32 21, label %sw.bb.453
    i32 22, label %sw.bb.462
    i32 23, label %sw.bb.479
    i32 24, label %sw.bb.488
    i32 25, label %sw.bb.529
    i32 26, label %sw.bb.559
  ]

sw.bb:                                            ; preds = %if.end
  %9 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %9, i32 0, i32 1
  %BoolOp = bitcast %union.anon.2* %v to %struct.anon.3*
  %values = getelementptr inbounds %struct.anon.3, %struct.anon.3* %BoolOp, i32 0, i32 1
  %10 = load %struct.asdl_seq*, %struct.asdl_seq** %values, align 8
  store %struct.asdl_seq* %10, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb
  %11 = load i32, i32* %i, align 4
  %conv = sext i32 %11 to i64
  %12 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp2 = icmp eq %struct.asdl_seq* %12, null
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %13 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %13, i32 0, i32 0
  %14 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %14, %cond.false ]
  %cmp4 = icmp slt i64 %conv, %cond
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %15 = load i32, i32* %i, align 4
  %idxprom = sext i32 %15 to i64
  %16 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %16, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %17 = load i8*, i8** %arrayidx, align 8
  %18 = bitcast i8* %17 to %struct._expr*
  store %struct._expr* %18, %struct._expr** %elt, align 8
  %19 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %20 = load %struct._expr*, %struct._expr** %elt, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %19, %struct._expr* %20)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %for.body
  %21 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth7 = getelementptr inbounds %struct.symtable, %struct.symtable* %21, i32 0, i32 9
  %22 = load i32, i32* %recursion_depth7, align 4
  %dec8 = add i32 %22, -1
  store i32 %dec8, i32* %recursion_depth7, align 4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.9
  %23 = load i32, i32* %i, align 4
  %inc10 = add i32 %23, 1
  store i32 %inc10, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %sw.epilog

sw.bb.11:                                         ; preds = %if.end
  %24 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %25 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v12 = getelementptr inbounds %struct._expr, %struct._expr* %25, i32 0, i32 1
  %BinOp = bitcast %union.anon.2* %v12 to %struct.anon.4*
  %left = getelementptr inbounds %struct.anon.4, %struct.anon.4* %BinOp, i32 0, i32 0
  %26 = load %struct._expr*, %struct._expr** %left, align 8
  %call13 = call i32 @symtable_visit_expr(%struct.symtable* %24, %struct._expr* %26)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.18, label %if.then.15

if.then.15:                                       ; preds = %sw.bb.11
  %27 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth16 = getelementptr inbounds %struct.symtable, %struct.symtable* %27, i32 0, i32 9
  %28 = load i32, i32* %recursion_depth16, align 4
  %dec17 = add i32 %28, -1
  store i32 %dec17, i32* %recursion_depth16, align 4
  store i32 0, i32* %retval
  br label %return

if.end.18:                                        ; preds = %sw.bb.11
  %29 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %30 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v19 = getelementptr inbounds %struct._expr, %struct._expr* %30, i32 0, i32 1
  %BinOp20 = bitcast %union.anon.2* %v19 to %struct.anon.4*
  %right = getelementptr inbounds %struct.anon.4, %struct.anon.4* %BinOp20, i32 0, i32 2
  %31 = load %struct._expr*, %struct._expr** %right, align 8
  %call21 = call i32 @symtable_visit_expr(%struct.symtable* %29, %struct._expr* %31)
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.end.26, label %if.then.23

if.then.23:                                       ; preds = %if.end.18
  %32 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth24 = getelementptr inbounds %struct.symtable, %struct.symtable* %32, i32 0, i32 9
  %33 = load i32, i32* %recursion_depth24, align 4
  %dec25 = add i32 %33, -1
  store i32 %dec25, i32* %recursion_depth24, align 4
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.18
  br label %sw.epilog

sw.bb.27:                                         ; preds = %if.end
  %34 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %35 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v28 = getelementptr inbounds %struct._expr, %struct._expr* %35, i32 0, i32 1
  %UnaryOp = bitcast %union.anon.2* %v28 to %struct.anon.5*
  %operand = getelementptr inbounds %struct.anon.5, %struct.anon.5* %UnaryOp, i32 0, i32 1
  %36 = load %struct._expr*, %struct._expr** %operand, align 8
  %call29 = call i32 @symtable_visit_expr(%struct.symtable* %34, %struct._expr* %36)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end.34, label %if.then.31

if.then.31:                                       ; preds = %sw.bb.27
  %37 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth32 = getelementptr inbounds %struct.symtable, %struct.symtable* %37, i32 0, i32 9
  %38 = load i32, i32* %recursion_depth32, align 4
  %dec33 = add i32 %38, -1
  store i32 %dec33, i32* %recursion_depth32, align 4
  store i32 0, i32* %retval
  br label %return

if.end.34:                                        ; preds = %sw.bb.27
  br label %sw.epilog

sw.bb.35:                                         ; preds = %if.end
  %39 = load %struct._object*, %struct._object** @lambda, align 8
  %tobool36 = icmp ne %struct._object* %39, null
  br i1 %tobool36, label %cond.true.37, label %cond.false.39

cond.true.37:                                     ; preds = %sw.bb.35
  %40 = load %struct._object*, %struct._object** @lambda, align 8
  %tobool38 = icmp ne %struct._object* %40, null
  br i1 %tobool38, label %if.end.45, label %if.then.42

cond.false.39:                                    ; preds = %sw.bb.35
  %call40 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0))
  store %struct._object* %call40, %struct._object** @lambda, align 8
  %tobool41 = icmp ne %struct._object* %call40, null
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %cond.false.39, %cond.true.37
  %41 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth43 = getelementptr inbounds %struct.symtable, %struct.symtable* %41, i32 0, i32 9
  %42 = load i32, i32* %recursion_depth43, align 4
  %dec44 = add i32 %42, -1
  store i32 %dec44, i32* %recursion_depth43, align 4
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %cond.false.39, %cond.true.37
  %43 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v46 = getelementptr inbounds %struct._expr, %struct._expr* %43, i32 0, i32 1
  %Lambda = bitcast %union.anon.2* %v46 to %struct.anon.6*
  %args = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda, i32 0, i32 0
  %44 = load %struct._arguments*, %struct._arguments** %args, align 8
  %defaults = getelementptr inbounds %struct._arguments, %struct._arguments* %44, i32 0, i32 5
  %45 = load %struct.asdl_seq*, %struct.asdl_seq** %defaults, align 8
  %tobool47 = icmp ne %struct.asdl_seq* %45, null
  br i1 %tobool47, label %if.then.48, label %if.end.80

if.then.48:                                       ; preds = %if.end.45
  %46 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v51 = getelementptr inbounds %struct._expr, %struct._expr* %46, i32 0, i32 1
  %Lambda52 = bitcast %union.anon.2* %v51 to %struct.anon.6*
  %args53 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda52, i32 0, i32 0
  %47 = load %struct._arguments*, %struct._arguments** %args53, align 8
  %defaults54 = getelementptr inbounds %struct._arguments, %struct._arguments* %47, i32 0, i32 5
  %48 = load %struct.asdl_seq*, %struct.asdl_seq** %defaults54, align 8
  store %struct.asdl_seq* %48, %struct.asdl_seq** %seq50, align 8
  store i32 0, i32* %i49, align 4
  br label %for.cond.55

for.cond.55:                                      ; preds = %for.inc.77, %if.then.48
  %49 = load i32, i32* %i49, align 4
  %conv56 = sext i32 %49 to i64
  %50 = load %struct.asdl_seq*, %struct.asdl_seq** %seq50, align 8
  %cmp57 = icmp eq %struct.asdl_seq* %50, null
  br i1 %cmp57, label %cond.true.59, label %cond.false.60

cond.true.59:                                     ; preds = %for.cond.55
  br label %cond.end.62

cond.false.60:                                    ; preds = %for.cond.55
  %51 = load %struct.asdl_seq*, %struct.asdl_seq** %seq50, align 8
  %size61 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %51, i32 0, i32 0
  %52 = load i64, i64* %size61, align 8
  br label %cond.end.62

cond.end.62:                                      ; preds = %cond.false.60, %cond.true.59
  %cond63 = phi i64 [ 0, %cond.true.59 ], [ %52, %cond.false.60 ]
  %cmp64 = icmp slt i64 %conv56, %cond63
  br i1 %cmp64, label %for.body.66, label %for.end.79

for.body.66:                                      ; preds = %cond.end.62
  %53 = load i32, i32* %i49, align 4
  %idxprom68 = sext i32 %53 to i64
  %54 = load %struct.asdl_seq*, %struct.asdl_seq** %seq50, align 8
  %elements69 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %54, i32 0, i32 1
  %arrayidx70 = getelementptr [1 x i8*], [1 x i8*]* %elements69, i32 0, i64 %idxprom68
  %55 = load i8*, i8** %arrayidx70, align 8
  %56 = bitcast i8* %55 to %struct._expr*
  store %struct._expr* %56, %struct._expr** %elt67, align 8
  %57 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %58 = load %struct._expr*, %struct._expr** %elt67, align 8
  %call71 = call i32 @symtable_visit_expr(%struct.symtable* %57, %struct._expr* %58)
  %tobool72 = icmp ne i32 %call71, 0
  br i1 %tobool72, label %if.end.76, label %if.then.73

if.then.73:                                       ; preds = %for.body.66
  %59 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth74 = getelementptr inbounds %struct.symtable, %struct.symtable* %59, i32 0, i32 9
  %60 = load i32, i32* %recursion_depth74, align 4
  %dec75 = add i32 %60, -1
  store i32 %dec75, i32* %recursion_depth74, align 4
  store i32 0, i32* %retval
  br label %return

if.end.76:                                        ; preds = %for.body.66
  br label %for.inc.77

for.inc.77:                                       ; preds = %if.end.76
  %61 = load i32, i32* %i49, align 4
  %inc78 = add i32 %61, 1
  store i32 %inc78, i32* %i49, align 4
  br label %for.cond.55

for.end.79:                                       ; preds = %cond.end.62
  br label %if.end.80

if.end.80:                                        ; preds = %for.end.79, %if.end.45
  %62 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v81 = getelementptr inbounds %struct._expr, %struct._expr* %62, i32 0, i32 1
  %Lambda82 = bitcast %union.anon.2* %v81 to %struct.anon.6*
  %args83 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda82, i32 0, i32 0
  %63 = load %struct._arguments*, %struct._arguments** %args83, align 8
  %kw_defaults = getelementptr inbounds %struct._arguments, %struct._arguments* %63, i32 0, i32 3
  %64 = load %struct.asdl_seq*, %struct.asdl_seq** %kw_defaults, align 8
  %tobool84 = icmp ne %struct.asdl_seq* %64, null
  br i1 %tobool84, label %if.then.85, label %if.end.120

if.then.85:                                       ; preds = %if.end.80
  store i32 0, i32* %i86, align 4
  %65 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v88 = getelementptr inbounds %struct._expr, %struct._expr* %65, i32 0, i32 1
  %Lambda89 = bitcast %union.anon.2* %v88 to %struct.anon.6*
  %args90 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda89, i32 0, i32 0
  %66 = load %struct._arguments*, %struct._arguments** %args90, align 8
  %kw_defaults91 = getelementptr inbounds %struct._arguments, %struct._arguments* %66, i32 0, i32 3
  %67 = load %struct.asdl_seq*, %struct.asdl_seq** %kw_defaults91, align 8
  store %struct.asdl_seq* %67, %struct.asdl_seq** %seq87, align 8
  store i32 0, i32* %i86, align 4
  br label %for.cond.92

for.cond.92:                                      ; preds = %for.inc.117, %if.then.85
  %68 = load i32, i32* %i86, align 4
  %conv93 = sext i32 %68 to i64
  %69 = load %struct.asdl_seq*, %struct.asdl_seq** %seq87, align 8
  %cmp94 = icmp eq %struct.asdl_seq* %69, null
  br i1 %cmp94, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %for.cond.92
  br label %cond.end.99

cond.false.97:                                    ; preds = %for.cond.92
  %70 = load %struct.asdl_seq*, %struct.asdl_seq** %seq87, align 8
  %size98 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %70, i32 0, i32 0
  %71 = load i64, i64* %size98, align 8
  br label %cond.end.99

cond.end.99:                                      ; preds = %cond.false.97, %cond.true.96
  %cond100 = phi i64 [ 0, %cond.true.96 ], [ %71, %cond.false.97 ]
  %cmp101 = icmp slt i64 %conv93, %cond100
  br i1 %cmp101, label %for.body.103, label %for.end.119

for.body.103:                                     ; preds = %cond.end.99
  %72 = load i32, i32* %i86, align 4
  %idxprom105 = sext i32 %72 to i64
  %73 = load %struct.asdl_seq*, %struct.asdl_seq** %seq87, align 8
  %elements106 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %73, i32 0, i32 1
  %arrayidx107 = getelementptr [1 x i8*], [1 x i8*]* %elements106, i32 0, i64 %idxprom105
  %74 = load i8*, i8** %arrayidx107, align 8
  %75 = bitcast i8* %74 to %struct._expr*
  store %struct._expr* %75, %struct._expr** %elt104, align 8
  %76 = load %struct._expr*, %struct._expr** %elt104, align 8
  %tobool108 = icmp ne %struct._expr* %76, null
  br i1 %tobool108, label %if.end.110, label %if.then.109

if.then.109:                                      ; preds = %for.body.103
  br label %for.inc.117

if.end.110:                                       ; preds = %for.body.103
  %77 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %78 = load %struct._expr*, %struct._expr** %elt104, align 8
  %call111 = call i32 @symtable_visit_expr(%struct.symtable* %77, %struct._expr* %78)
  %tobool112 = icmp ne i32 %call111, 0
  br i1 %tobool112, label %if.end.116, label %if.then.113

if.then.113:                                      ; preds = %if.end.110
  %79 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth114 = getelementptr inbounds %struct.symtable, %struct.symtable* %79, i32 0, i32 9
  %80 = load i32, i32* %recursion_depth114, align 4
  %dec115 = add i32 %80, -1
  store i32 %dec115, i32* %recursion_depth114, align 4
  store i32 0, i32* %retval
  br label %return

if.end.116:                                       ; preds = %if.end.110
  br label %for.inc.117

for.inc.117:                                      ; preds = %if.end.116, %if.then.109
  %81 = load i32, i32* %i86, align 4
  %inc118 = add i32 %81, 1
  store i32 %inc118, i32* %i86, align 4
  br label %for.cond.92

for.end.119:                                      ; preds = %cond.end.99
  br label %if.end.120

if.end.120:                                       ; preds = %for.end.119, %if.end.80
  %82 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %83 = load %struct._object*, %struct._object** @lambda, align 8
  %84 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %85 = bitcast %struct._expr* %84 to i8*
  %86 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %lineno = getelementptr inbounds %struct._expr, %struct._expr* %86, i32 0, i32 2
  %87 = load i32, i32* %lineno, align 4
  %88 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %col_offset = getelementptr inbounds %struct._expr, %struct._expr* %88, i32 0, i32 3
  %89 = load i32, i32* %col_offset, align 4
  %call121 = call i32 @symtable_enter_block(%struct.symtable* %82, %struct._object* %83, i32 0, i8* %85, i32 %87, i32 %89)
  %tobool122 = icmp ne i32 %call121, 0
  br i1 %tobool122, label %if.end.126, label %if.then.123

if.then.123:                                      ; preds = %if.end.120
  %90 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth124 = getelementptr inbounds %struct.symtable, %struct.symtable* %90, i32 0, i32 9
  %91 = load i32, i32* %recursion_depth124, align 4
  %dec125 = add i32 %91, -1
  store i32 %dec125, i32* %recursion_depth124, align 4
  store i32 0, i32* %retval
  br label %return

if.end.126:                                       ; preds = %if.end.120
  %92 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %93 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v127 = getelementptr inbounds %struct._expr, %struct._expr* %93, i32 0, i32 1
  %Lambda128 = bitcast %union.anon.2* %v127 to %struct.anon.6*
  %args129 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda128, i32 0, i32 0
  %94 = load %struct._arguments*, %struct._arguments** %args129, align 8
  %call130 = call i32 @symtable_visit_arguments(%struct.symtable* %92, %struct._arguments* %94)
  %tobool131 = icmp ne i32 %call130, 0
  br i1 %tobool131, label %if.end.135, label %if.then.132

if.then.132:                                      ; preds = %if.end.126
  %95 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth133 = getelementptr inbounds %struct.symtable, %struct.symtable* %95, i32 0, i32 9
  %96 = load i32, i32* %recursion_depth133, align 4
  %dec134 = add i32 %96, -1
  store i32 %dec134, i32* %recursion_depth133, align 4
  store i32 0, i32* %retval
  br label %return

if.end.135:                                       ; preds = %if.end.126
  %97 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %98 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v136 = getelementptr inbounds %struct._expr, %struct._expr* %98, i32 0, i32 1
  %Lambda137 = bitcast %union.anon.2* %v136 to %struct.anon.6*
  %body = getelementptr inbounds %struct.anon.6, %struct.anon.6* %Lambda137, i32 0, i32 1
  %99 = load %struct._expr*, %struct._expr** %body, align 8
  %call138 = call i32 @symtable_visit_expr(%struct.symtable* %97, %struct._expr* %99)
  %tobool139 = icmp ne i32 %call138, 0
  br i1 %tobool139, label %if.end.143, label %if.then.140

if.then.140:                                      ; preds = %if.end.135
  %100 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth141 = getelementptr inbounds %struct.symtable, %struct.symtable* %100, i32 0, i32 9
  %101 = load i32, i32* %recursion_depth141, align 4
  %dec142 = add i32 %101, -1
  store i32 %dec142, i32* %recursion_depth141, align 4
  store i32 0, i32* %retval
  br label %return

if.end.143:                                       ; preds = %if.end.135
  %102 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %103 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %104 = bitcast %struct._expr* %103 to i8*
  %call144 = call i32 @symtable_exit_block(%struct.symtable* %102, i8* %104)
  %tobool145 = icmp ne i32 %call144, 0
  br i1 %tobool145, label %if.end.149, label %if.then.146

if.then.146:                                      ; preds = %if.end.143
  %105 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth147 = getelementptr inbounds %struct.symtable, %struct.symtable* %105, i32 0, i32 9
  %106 = load i32, i32* %recursion_depth147, align 4
  %dec148 = add i32 %106, -1
  store i32 %dec148, i32* %recursion_depth147, align 4
  store i32 0, i32* %retval
  br label %return

if.end.149:                                       ; preds = %if.end.143
  br label %sw.epilog

sw.bb.150:                                        ; preds = %if.end
  %107 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %108 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v151 = getelementptr inbounds %struct._expr, %struct._expr* %108, i32 0, i32 1
  %IfExp = bitcast %union.anon.2* %v151 to %struct.anon.7*
  %test = getelementptr inbounds %struct.anon.7, %struct.anon.7* %IfExp, i32 0, i32 0
  %109 = load %struct._expr*, %struct._expr** %test, align 8
  %call152 = call i32 @symtable_visit_expr(%struct.symtable* %107, %struct._expr* %109)
  %tobool153 = icmp ne i32 %call152, 0
  br i1 %tobool153, label %if.end.157, label %if.then.154

if.then.154:                                      ; preds = %sw.bb.150
  %110 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth155 = getelementptr inbounds %struct.symtable, %struct.symtable* %110, i32 0, i32 9
  %111 = load i32, i32* %recursion_depth155, align 4
  %dec156 = add i32 %111, -1
  store i32 %dec156, i32* %recursion_depth155, align 4
  store i32 0, i32* %retval
  br label %return

if.end.157:                                       ; preds = %sw.bb.150
  %112 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %113 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v158 = getelementptr inbounds %struct._expr, %struct._expr* %113, i32 0, i32 1
  %IfExp159 = bitcast %union.anon.2* %v158 to %struct.anon.7*
  %body160 = getelementptr inbounds %struct.anon.7, %struct.anon.7* %IfExp159, i32 0, i32 1
  %114 = load %struct._expr*, %struct._expr** %body160, align 8
  %call161 = call i32 @symtable_visit_expr(%struct.symtable* %112, %struct._expr* %114)
  %tobool162 = icmp ne i32 %call161, 0
  br i1 %tobool162, label %if.end.166, label %if.then.163

if.then.163:                                      ; preds = %if.end.157
  %115 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth164 = getelementptr inbounds %struct.symtable, %struct.symtable* %115, i32 0, i32 9
  %116 = load i32, i32* %recursion_depth164, align 4
  %dec165 = add i32 %116, -1
  store i32 %dec165, i32* %recursion_depth164, align 4
  store i32 0, i32* %retval
  br label %return

if.end.166:                                       ; preds = %if.end.157
  %117 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %118 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v167 = getelementptr inbounds %struct._expr, %struct._expr* %118, i32 0, i32 1
  %IfExp168 = bitcast %union.anon.2* %v167 to %struct.anon.7*
  %orelse = getelementptr inbounds %struct.anon.7, %struct.anon.7* %IfExp168, i32 0, i32 2
  %119 = load %struct._expr*, %struct._expr** %orelse, align 8
  %call169 = call i32 @symtable_visit_expr(%struct.symtable* %117, %struct._expr* %119)
  %tobool170 = icmp ne i32 %call169, 0
  br i1 %tobool170, label %if.end.174, label %if.then.171

if.then.171:                                      ; preds = %if.end.166
  %120 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth172 = getelementptr inbounds %struct.symtable, %struct.symtable* %120, i32 0, i32 9
  %121 = load i32, i32* %recursion_depth172, align 4
  %dec173 = add i32 %121, -1
  store i32 %dec173, i32* %recursion_depth172, align 4
  store i32 0, i32* %retval
  br label %return

if.end.174:                                       ; preds = %if.end.166
  br label %sw.epilog

sw.bb.175:                                        ; preds = %if.end
  %122 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v178 = getelementptr inbounds %struct._expr, %struct._expr* %122, i32 0, i32 1
  %Dict = bitcast %union.anon.2* %v178 to %struct.anon.8*
  %keys = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict, i32 0, i32 0
  %123 = load %struct.asdl_seq*, %struct.asdl_seq** %keys, align 8
  store %struct.asdl_seq* %123, %struct.asdl_seq** %seq177, align 8
  store i32 0, i32* %i176, align 4
  br label %for.cond.179

for.cond.179:                                     ; preds = %for.inc.201, %sw.bb.175
  %124 = load i32, i32* %i176, align 4
  %conv180 = sext i32 %124 to i64
  %125 = load %struct.asdl_seq*, %struct.asdl_seq** %seq177, align 8
  %cmp181 = icmp eq %struct.asdl_seq* %125, null
  br i1 %cmp181, label %cond.true.183, label %cond.false.184

cond.true.183:                                    ; preds = %for.cond.179
  br label %cond.end.186

cond.false.184:                                   ; preds = %for.cond.179
  %126 = load %struct.asdl_seq*, %struct.asdl_seq** %seq177, align 8
  %size185 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %126, i32 0, i32 0
  %127 = load i64, i64* %size185, align 8
  br label %cond.end.186

cond.end.186:                                     ; preds = %cond.false.184, %cond.true.183
  %cond187 = phi i64 [ 0, %cond.true.183 ], [ %127, %cond.false.184 ]
  %cmp188 = icmp slt i64 %conv180, %cond187
  br i1 %cmp188, label %for.body.190, label %for.end.203

for.body.190:                                     ; preds = %cond.end.186
  %128 = load i32, i32* %i176, align 4
  %idxprom192 = sext i32 %128 to i64
  %129 = load %struct.asdl_seq*, %struct.asdl_seq** %seq177, align 8
  %elements193 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %129, i32 0, i32 1
  %arrayidx194 = getelementptr [1 x i8*], [1 x i8*]* %elements193, i32 0, i64 %idxprom192
  %130 = load i8*, i8** %arrayidx194, align 8
  %131 = bitcast i8* %130 to %struct._expr*
  store %struct._expr* %131, %struct._expr** %elt191, align 8
  %132 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %133 = load %struct._expr*, %struct._expr** %elt191, align 8
  %call195 = call i32 @symtable_visit_expr(%struct.symtable* %132, %struct._expr* %133)
  %tobool196 = icmp ne i32 %call195, 0
  br i1 %tobool196, label %if.end.200, label %if.then.197

if.then.197:                                      ; preds = %for.body.190
  %134 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth198 = getelementptr inbounds %struct.symtable, %struct.symtable* %134, i32 0, i32 9
  %135 = load i32, i32* %recursion_depth198, align 4
  %dec199 = add i32 %135, -1
  store i32 %dec199, i32* %recursion_depth198, align 4
  store i32 0, i32* %retval
  br label %return

if.end.200:                                       ; preds = %for.body.190
  br label %for.inc.201

for.inc.201:                                      ; preds = %if.end.200
  %136 = load i32, i32* %i176, align 4
  %inc202 = add i32 %136, 1
  store i32 %inc202, i32* %i176, align 4
  br label %for.cond.179

for.end.203:                                      ; preds = %cond.end.186
  %137 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v206 = getelementptr inbounds %struct._expr, %struct._expr* %137, i32 0, i32 1
  %Dict207 = bitcast %union.anon.2* %v206 to %struct.anon.8*
  %values208 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %Dict207, i32 0, i32 1
  %138 = load %struct.asdl_seq*, %struct.asdl_seq** %values208, align 8
  store %struct.asdl_seq* %138, %struct.asdl_seq** %seq205, align 8
  store i32 0, i32* %i204, align 4
  br label %for.cond.209

for.cond.209:                                     ; preds = %for.inc.231, %for.end.203
  %139 = load i32, i32* %i204, align 4
  %conv210 = sext i32 %139 to i64
  %140 = load %struct.asdl_seq*, %struct.asdl_seq** %seq205, align 8
  %cmp211 = icmp eq %struct.asdl_seq* %140, null
  br i1 %cmp211, label %cond.true.213, label %cond.false.214

cond.true.213:                                    ; preds = %for.cond.209
  br label %cond.end.216

cond.false.214:                                   ; preds = %for.cond.209
  %141 = load %struct.asdl_seq*, %struct.asdl_seq** %seq205, align 8
  %size215 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %141, i32 0, i32 0
  %142 = load i64, i64* %size215, align 8
  br label %cond.end.216

cond.end.216:                                     ; preds = %cond.false.214, %cond.true.213
  %cond217 = phi i64 [ 0, %cond.true.213 ], [ %142, %cond.false.214 ]
  %cmp218 = icmp slt i64 %conv210, %cond217
  br i1 %cmp218, label %for.body.220, label %for.end.233

for.body.220:                                     ; preds = %cond.end.216
  %143 = load i32, i32* %i204, align 4
  %idxprom222 = sext i32 %143 to i64
  %144 = load %struct.asdl_seq*, %struct.asdl_seq** %seq205, align 8
  %elements223 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %144, i32 0, i32 1
  %arrayidx224 = getelementptr [1 x i8*], [1 x i8*]* %elements223, i32 0, i64 %idxprom222
  %145 = load i8*, i8** %arrayidx224, align 8
  %146 = bitcast i8* %145 to %struct._expr*
  store %struct._expr* %146, %struct._expr** %elt221, align 8
  %147 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %148 = load %struct._expr*, %struct._expr** %elt221, align 8
  %call225 = call i32 @symtable_visit_expr(%struct.symtable* %147, %struct._expr* %148)
  %tobool226 = icmp ne i32 %call225, 0
  br i1 %tobool226, label %if.end.230, label %if.then.227

if.then.227:                                      ; preds = %for.body.220
  %149 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth228 = getelementptr inbounds %struct.symtable, %struct.symtable* %149, i32 0, i32 9
  %150 = load i32, i32* %recursion_depth228, align 4
  %dec229 = add i32 %150, -1
  store i32 %dec229, i32* %recursion_depth228, align 4
  store i32 0, i32* %retval
  br label %return

if.end.230:                                       ; preds = %for.body.220
  br label %for.inc.231

for.inc.231:                                      ; preds = %if.end.230
  %151 = load i32, i32* %i204, align 4
  %inc232 = add i32 %151, 1
  store i32 %inc232, i32* %i204, align 4
  br label %for.cond.209

for.end.233:                                      ; preds = %cond.end.216
  br label %sw.epilog

sw.bb.234:                                        ; preds = %if.end
  %152 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v237 = getelementptr inbounds %struct._expr, %struct._expr* %152, i32 0, i32 1
  %Set = bitcast %union.anon.2* %v237 to %struct.anon.9*
  %elts = getelementptr inbounds %struct.anon.9, %struct.anon.9* %Set, i32 0, i32 0
  %153 = load %struct.asdl_seq*, %struct.asdl_seq** %elts, align 8
  store %struct.asdl_seq* %153, %struct.asdl_seq** %seq236, align 8
  store i32 0, i32* %i235, align 4
  br label %for.cond.238

for.cond.238:                                     ; preds = %for.inc.260, %sw.bb.234
  %154 = load i32, i32* %i235, align 4
  %conv239 = sext i32 %154 to i64
  %155 = load %struct.asdl_seq*, %struct.asdl_seq** %seq236, align 8
  %cmp240 = icmp eq %struct.asdl_seq* %155, null
  br i1 %cmp240, label %cond.true.242, label %cond.false.243

cond.true.242:                                    ; preds = %for.cond.238
  br label %cond.end.245

cond.false.243:                                   ; preds = %for.cond.238
  %156 = load %struct.asdl_seq*, %struct.asdl_seq** %seq236, align 8
  %size244 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %156, i32 0, i32 0
  %157 = load i64, i64* %size244, align 8
  br label %cond.end.245

cond.end.245:                                     ; preds = %cond.false.243, %cond.true.242
  %cond246 = phi i64 [ 0, %cond.true.242 ], [ %157, %cond.false.243 ]
  %cmp247 = icmp slt i64 %conv239, %cond246
  br i1 %cmp247, label %for.body.249, label %for.end.262

for.body.249:                                     ; preds = %cond.end.245
  %158 = load i32, i32* %i235, align 4
  %idxprom251 = sext i32 %158 to i64
  %159 = load %struct.asdl_seq*, %struct.asdl_seq** %seq236, align 8
  %elements252 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %159, i32 0, i32 1
  %arrayidx253 = getelementptr [1 x i8*], [1 x i8*]* %elements252, i32 0, i64 %idxprom251
  %160 = load i8*, i8** %arrayidx253, align 8
  %161 = bitcast i8* %160 to %struct._expr*
  store %struct._expr* %161, %struct._expr** %elt250, align 8
  %162 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %163 = load %struct._expr*, %struct._expr** %elt250, align 8
  %call254 = call i32 @symtable_visit_expr(%struct.symtable* %162, %struct._expr* %163)
  %tobool255 = icmp ne i32 %call254, 0
  br i1 %tobool255, label %if.end.259, label %if.then.256

if.then.256:                                      ; preds = %for.body.249
  %164 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth257 = getelementptr inbounds %struct.symtable, %struct.symtable* %164, i32 0, i32 9
  %165 = load i32, i32* %recursion_depth257, align 4
  %dec258 = add i32 %165, -1
  store i32 %dec258, i32* %recursion_depth257, align 4
  store i32 0, i32* %retval
  br label %return

if.end.259:                                       ; preds = %for.body.249
  br label %for.inc.260

for.inc.260:                                      ; preds = %if.end.259
  %166 = load i32, i32* %i235, align 4
  %inc261 = add i32 %166, 1
  store i32 %inc261, i32* %i235, align 4
  br label %for.cond.238

for.end.262:                                      ; preds = %cond.end.245
  br label %sw.epilog

sw.bb.263:                                        ; preds = %if.end
  %167 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %168 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %call264 = call i32 @symtable_visit_genexp(%struct.symtable* %167, %struct._expr* %168)
  %tobool265 = icmp ne i32 %call264, 0
  br i1 %tobool265, label %if.end.269, label %if.then.266

if.then.266:                                      ; preds = %sw.bb.263
  %169 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth267 = getelementptr inbounds %struct.symtable, %struct.symtable* %169, i32 0, i32 9
  %170 = load i32, i32* %recursion_depth267, align 4
  %dec268 = add i32 %170, -1
  store i32 %dec268, i32* %recursion_depth267, align 4
  store i32 0, i32* %retval
  br label %return

if.end.269:                                       ; preds = %sw.bb.263
  br label %sw.epilog

sw.bb.270:                                        ; preds = %if.end
  %171 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %172 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %call271 = call i32 @symtable_visit_listcomp(%struct.symtable* %171, %struct._expr* %172)
  %tobool272 = icmp ne i32 %call271, 0
  br i1 %tobool272, label %if.end.276, label %if.then.273

if.then.273:                                      ; preds = %sw.bb.270
  %173 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth274 = getelementptr inbounds %struct.symtable, %struct.symtable* %173, i32 0, i32 9
  %174 = load i32, i32* %recursion_depth274, align 4
  %dec275 = add i32 %174, -1
  store i32 %dec275, i32* %recursion_depth274, align 4
  store i32 0, i32* %retval
  br label %return

if.end.276:                                       ; preds = %sw.bb.270
  br label %sw.epilog

sw.bb.277:                                        ; preds = %if.end
  %175 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %176 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %call278 = call i32 @symtable_visit_setcomp(%struct.symtable* %175, %struct._expr* %176)
  %tobool279 = icmp ne i32 %call278, 0
  br i1 %tobool279, label %if.end.283, label %if.then.280

if.then.280:                                      ; preds = %sw.bb.277
  %177 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth281 = getelementptr inbounds %struct.symtable, %struct.symtable* %177, i32 0, i32 9
  %178 = load i32, i32* %recursion_depth281, align 4
  %dec282 = add i32 %178, -1
  store i32 %dec282, i32* %recursion_depth281, align 4
  store i32 0, i32* %retval
  br label %return

if.end.283:                                       ; preds = %sw.bb.277
  br label %sw.epilog

sw.bb.284:                                        ; preds = %if.end
  %179 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %180 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %call285 = call i32 @symtable_visit_dictcomp(%struct.symtable* %179, %struct._expr* %180)
  %tobool286 = icmp ne i32 %call285, 0
  br i1 %tobool286, label %if.end.290, label %if.then.287

if.then.287:                                      ; preds = %sw.bb.284
  %181 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth288 = getelementptr inbounds %struct.symtable, %struct.symtable* %181, i32 0, i32 9
  %182 = load i32, i32* %recursion_depth288, align 4
  %dec289 = add i32 %182, -1
  store i32 %dec289, i32* %recursion_depth288, align 4
  store i32 0, i32* %retval
  br label %return

if.end.290:                                       ; preds = %sw.bb.284
  br label %sw.epilog

sw.bb.291:                                        ; preds = %if.end
  %183 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v292 = getelementptr inbounds %struct._expr, %struct._expr* %183, i32 0, i32 1
  %Yield = bitcast %union.anon.2* %v292 to %struct.anon.14*
  %value = getelementptr inbounds %struct.anon.14, %struct.anon.14* %Yield, i32 0, i32 0
  %184 = load %struct._expr*, %struct._expr** %value, align 8
  %tobool293 = icmp ne %struct._expr* %184, null
  br i1 %tobool293, label %if.then.294, label %if.end.304

if.then.294:                                      ; preds = %sw.bb.291
  %185 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %186 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v295 = getelementptr inbounds %struct._expr, %struct._expr* %186, i32 0, i32 1
  %Yield296 = bitcast %union.anon.2* %v295 to %struct.anon.14*
  %value297 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %Yield296, i32 0, i32 0
  %187 = load %struct._expr*, %struct._expr** %value297, align 8
  %call298 = call i32 @symtable_visit_expr(%struct.symtable* %185, %struct._expr* %187)
  %tobool299 = icmp ne i32 %call298, 0
  br i1 %tobool299, label %if.end.303, label %if.then.300

if.then.300:                                      ; preds = %if.then.294
  %188 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth301 = getelementptr inbounds %struct.symtable, %struct.symtable* %188, i32 0, i32 9
  %189 = load i32, i32* %recursion_depth301, align 4
  %dec302 = add i32 %189, -1
  store i32 %dec302, i32* %recursion_depth301, align 4
  store i32 0, i32* %retval
  br label %return

if.end.303:                                       ; preds = %if.then.294
  br label %if.end.304

if.end.304:                                       ; preds = %if.end.303, %sw.bb.291
  %190 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %190, i32 0, i32 1
  %191 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_generator = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %191, i32 0, i32 10
  %bf.load = load i8, i8* %ste_generator, align 4
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, 4
  store i8 %bf.set, i8* %ste_generator, align 4
  br label %sw.epilog

sw.bb.305:                                        ; preds = %if.end
  %192 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %193 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v306 = getelementptr inbounds %struct._expr, %struct._expr* %193, i32 0, i32 1
  %YieldFrom = bitcast %union.anon.2* %v306 to %struct.anon.15*
  %value307 = getelementptr inbounds %struct.anon.15, %struct.anon.15* %YieldFrom, i32 0, i32 0
  %194 = load %struct._expr*, %struct._expr** %value307, align 8
  %call308 = call i32 @symtable_visit_expr(%struct.symtable* %192, %struct._expr* %194)
  %tobool309 = icmp ne i32 %call308, 0
  br i1 %tobool309, label %if.end.313, label %if.then.310

if.then.310:                                      ; preds = %sw.bb.305
  %195 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth311 = getelementptr inbounds %struct.symtable, %struct.symtable* %195, i32 0, i32 9
  %196 = load i32, i32* %recursion_depth311, align 4
  %dec312 = add i32 %196, -1
  store i32 %dec312, i32* %recursion_depth311, align 4
  store i32 0, i32* %retval
  br label %return

if.end.313:                                       ; preds = %sw.bb.305
  %197 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur314 = getelementptr inbounds %struct.symtable, %struct.symtable* %197, i32 0, i32 1
  %198 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur314, align 8
  %ste_generator315 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %198, i32 0, i32 10
  %bf.load316 = load i8, i8* %ste_generator315, align 4
  %bf.clear317 = and i8 %bf.load316, -5
  %bf.set318 = or i8 %bf.clear317, 4
  store i8 %bf.set318, i8* %ste_generator315, align 4
  br label %sw.epilog

sw.bb.319:                                        ; preds = %if.end
  %199 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %200 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v320 = getelementptr inbounds %struct._expr, %struct._expr* %200, i32 0, i32 1
  %Compare = bitcast %union.anon.2* %v320 to %struct.anon.16*
  %left321 = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare, i32 0, i32 0
  %201 = load %struct._expr*, %struct._expr** %left321, align 8
  %call322 = call i32 @symtable_visit_expr(%struct.symtable* %199, %struct._expr* %201)
  %tobool323 = icmp ne i32 %call322, 0
  br i1 %tobool323, label %if.end.327, label %if.then.324

if.then.324:                                      ; preds = %sw.bb.319
  %202 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth325 = getelementptr inbounds %struct.symtable, %struct.symtable* %202, i32 0, i32 9
  %203 = load i32, i32* %recursion_depth325, align 4
  %dec326 = add i32 %203, -1
  store i32 %dec326, i32* %recursion_depth325, align 4
  store i32 0, i32* %retval
  br label %return

if.end.327:                                       ; preds = %sw.bb.319
  %204 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v330 = getelementptr inbounds %struct._expr, %struct._expr* %204, i32 0, i32 1
  %Compare331 = bitcast %union.anon.2* %v330 to %struct.anon.16*
  %comparators = getelementptr inbounds %struct.anon.16, %struct.anon.16* %Compare331, i32 0, i32 2
  %205 = load %struct.asdl_seq*, %struct.asdl_seq** %comparators, align 8
  store %struct.asdl_seq* %205, %struct.asdl_seq** %seq329, align 8
  store i32 0, i32* %i328, align 4
  br label %for.cond.332

for.cond.332:                                     ; preds = %for.inc.354, %if.end.327
  %206 = load i32, i32* %i328, align 4
  %conv333 = sext i32 %206 to i64
  %207 = load %struct.asdl_seq*, %struct.asdl_seq** %seq329, align 8
  %cmp334 = icmp eq %struct.asdl_seq* %207, null
  br i1 %cmp334, label %cond.true.336, label %cond.false.337

cond.true.336:                                    ; preds = %for.cond.332
  br label %cond.end.339

cond.false.337:                                   ; preds = %for.cond.332
  %208 = load %struct.asdl_seq*, %struct.asdl_seq** %seq329, align 8
  %size338 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %208, i32 0, i32 0
  %209 = load i64, i64* %size338, align 8
  br label %cond.end.339

cond.end.339:                                     ; preds = %cond.false.337, %cond.true.336
  %cond340 = phi i64 [ 0, %cond.true.336 ], [ %209, %cond.false.337 ]
  %cmp341 = icmp slt i64 %conv333, %cond340
  br i1 %cmp341, label %for.body.343, label %for.end.356

for.body.343:                                     ; preds = %cond.end.339
  %210 = load i32, i32* %i328, align 4
  %idxprom345 = sext i32 %210 to i64
  %211 = load %struct.asdl_seq*, %struct.asdl_seq** %seq329, align 8
  %elements346 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %211, i32 0, i32 1
  %arrayidx347 = getelementptr [1 x i8*], [1 x i8*]* %elements346, i32 0, i64 %idxprom345
  %212 = load i8*, i8** %arrayidx347, align 8
  %213 = bitcast i8* %212 to %struct._expr*
  store %struct._expr* %213, %struct._expr** %elt344, align 8
  %214 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %215 = load %struct._expr*, %struct._expr** %elt344, align 8
  %call348 = call i32 @symtable_visit_expr(%struct.symtable* %214, %struct._expr* %215)
  %tobool349 = icmp ne i32 %call348, 0
  br i1 %tobool349, label %if.end.353, label %if.then.350

if.then.350:                                      ; preds = %for.body.343
  %216 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth351 = getelementptr inbounds %struct.symtable, %struct.symtable* %216, i32 0, i32 9
  %217 = load i32, i32* %recursion_depth351, align 4
  %dec352 = add i32 %217, -1
  store i32 %dec352, i32* %recursion_depth351, align 4
  store i32 0, i32* %retval
  br label %return

if.end.353:                                       ; preds = %for.body.343
  br label %for.inc.354

for.inc.354:                                      ; preds = %if.end.353
  %218 = load i32, i32* %i328, align 4
  %inc355 = add i32 %218, 1
  store i32 %inc355, i32* %i328, align 4
  br label %for.cond.332

for.end.356:                                      ; preds = %cond.end.339
  br label %sw.epilog

sw.bb.357:                                        ; preds = %if.end
  %219 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %220 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v358 = getelementptr inbounds %struct._expr, %struct._expr* %220, i32 0, i32 1
  %Call = bitcast %union.anon.2* %v358 to %struct.anon.17*
  %func = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call, i32 0, i32 0
  %221 = load %struct._expr*, %struct._expr** %func, align 8
  %call359 = call i32 @symtable_visit_expr(%struct.symtable* %219, %struct._expr* %221)
  %tobool360 = icmp ne i32 %call359, 0
  br i1 %tobool360, label %if.end.364, label %if.then.361

if.then.361:                                      ; preds = %sw.bb.357
  %222 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth362 = getelementptr inbounds %struct.symtable, %struct.symtable* %222, i32 0, i32 9
  %223 = load i32, i32* %recursion_depth362, align 4
  %dec363 = add i32 %223, -1
  store i32 %dec363, i32* %recursion_depth362, align 4
  store i32 0, i32* %retval
  br label %return

if.end.364:                                       ; preds = %sw.bb.357
  %224 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v367 = getelementptr inbounds %struct._expr, %struct._expr* %224, i32 0, i32 1
  %Call368 = bitcast %union.anon.2* %v367 to %struct.anon.17*
  %args369 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call368, i32 0, i32 1
  %225 = load %struct.asdl_seq*, %struct.asdl_seq** %args369, align 8
  store %struct.asdl_seq* %225, %struct.asdl_seq** %seq366, align 8
  store i32 0, i32* %i365, align 4
  br label %for.cond.370

for.cond.370:                                     ; preds = %for.inc.392, %if.end.364
  %226 = load i32, i32* %i365, align 4
  %conv371 = sext i32 %226 to i64
  %227 = load %struct.asdl_seq*, %struct.asdl_seq** %seq366, align 8
  %cmp372 = icmp eq %struct.asdl_seq* %227, null
  br i1 %cmp372, label %cond.true.374, label %cond.false.375

cond.true.374:                                    ; preds = %for.cond.370
  br label %cond.end.377

cond.false.375:                                   ; preds = %for.cond.370
  %228 = load %struct.asdl_seq*, %struct.asdl_seq** %seq366, align 8
  %size376 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %228, i32 0, i32 0
  %229 = load i64, i64* %size376, align 8
  br label %cond.end.377

cond.end.377:                                     ; preds = %cond.false.375, %cond.true.374
  %cond378 = phi i64 [ 0, %cond.true.374 ], [ %229, %cond.false.375 ]
  %cmp379 = icmp slt i64 %conv371, %cond378
  br i1 %cmp379, label %for.body.381, label %for.end.394

for.body.381:                                     ; preds = %cond.end.377
  %230 = load i32, i32* %i365, align 4
  %idxprom383 = sext i32 %230 to i64
  %231 = load %struct.asdl_seq*, %struct.asdl_seq** %seq366, align 8
  %elements384 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %231, i32 0, i32 1
  %arrayidx385 = getelementptr [1 x i8*], [1 x i8*]* %elements384, i32 0, i64 %idxprom383
  %232 = load i8*, i8** %arrayidx385, align 8
  %233 = bitcast i8* %232 to %struct._expr*
  store %struct._expr* %233, %struct._expr** %elt382, align 8
  %234 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %235 = load %struct._expr*, %struct._expr** %elt382, align 8
  %call386 = call i32 @symtable_visit_expr(%struct.symtable* %234, %struct._expr* %235)
  %tobool387 = icmp ne i32 %call386, 0
  br i1 %tobool387, label %if.end.391, label %if.then.388

if.then.388:                                      ; preds = %for.body.381
  %236 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth389 = getelementptr inbounds %struct.symtable, %struct.symtable* %236, i32 0, i32 9
  %237 = load i32, i32* %recursion_depth389, align 4
  %dec390 = add i32 %237, -1
  store i32 %dec390, i32* %recursion_depth389, align 4
  store i32 0, i32* %retval
  br label %return

if.end.391:                                       ; preds = %for.body.381
  br label %for.inc.392

for.inc.392:                                      ; preds = %if.end.391
  %238 = load i32, i32* %i365, align 4
  %inc393 = add i32 %238, 1
  store i32 %inc393, i32* %i365, align 4
  br label %for.cond.370

for.end.394:                                      ; preds = %cond.end.377
  %239 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v397 = getelementptr inbounds %struct._expr, %struct._expr* %239, i32 0, i32 1
  %Call398 = bitcast %union.anon.2* %v397 to %struct.anon.17*
  %keywords = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call398, i32 0, i32 2
  %240 = load %struct.asdl_seq*, %struct.asdl_seq** %keywords, align 8
  store %struct.asdl_seq* %240, %struct.asdl_seq** %seq396, align 8
  store i32 0, i32* %i395, align 4
  br label %for.cond.399

for.cond.399:                                     ; preds = %for.inc.421, %for.end.394
  %241 = load i32, i32* %i395, align 4
  %conv400 = sext i32 %241 to i64
  %242 = load %struct.asdl_seq*, %struct.asdl_seq** %seq396, align 8
  %cmp401 = icmp eq %struct.asdl_seq* %242, null
  br i1 %cmp401, label %cond.true.403, label %cond.false.404

cond.true.403:                                    ; preds = %for.cond.399
  br label %cond.end.406

cond.false.404:                                   ; preds = %for.cond.399
  %243 = load %struct.asdl_seq*, %struct.asdl_seq** %seq396, align 8
  %size405 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %243, i32 0, i32 0
  %244 = load i64, i64* %size405, align 8
  br label %cond.end.406

cond.end.406:                                     ; preds = %cond.false.404, %cond.true.403
  %cond407 = phi i64 [ 0, %cond.true.403 ], [ %244, %cond.false.404 ]
  %cmp408 = icmp slt i64 %conv400, %cond407
  br i1 %cmp408, label %for.body.410, label %for.end.423

for.body.410:                                     ; preds = %cond.end.406
  %245 = load i32, i32* %i395, align 4
  %idxprom412 = sext i32 %245 to i64
  %246 = load %struct.asdl_seq*, %struct.asdl_seq** %seq396, align 8
  %elements413 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %246, i32 0, i32 1
  %arrayidx414 = getelementptr [1 x i8*], [1 x i8*]* %elements413, i32 0, i64 %idxprom412
  %247 = load i8*, i8** %arrayidx414, align 8
  %248 = bitcast i8* %247 to %struct._keyword*
  store %struct._keyword* %248, %struct._keyword** %elt411, align 8
  %249 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %250 = load %struct._keyword*, %struct._keyword** %elt411, align 8
  %call415 = call i32 @symtable_visit_keyword(%struct.symtable* %249, %struct._keyword* %250)
  %tobool416 = icmp ne i32 %call415, 0
  br i1 %tobool416, label %if.end.420, label %if.then.417

if.then.417:                                      ; preds = %for.body.410
  %251 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth418 = getelementptr inbounds %struct.symtable, %struct.symtable* %251, i32 0, i32 9
  %252 = load i32, i32* %recursion_depth418, align 4
  %dec419 = add i32 %252, -1
  store i32 %dec419, i32* %recursion_depth418, align 4
  store i32 0, i32* %retval
  br label %return

if.end.420:                                       ; preds = %for.body.410
  br label %for.inc.421

for.inc.421:                                      ; preds = %if.end.420
  %253 = load i32, i32* %i395, align 4
  %inc422 = add i32 %253, 1
  store i32 %inc422, i32* %i395, align 4
  br label %for.cond.399

for.end.423:                                      ; preds = %cond.end.406
  %254 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v424 = getelementptr inbounds %struct._expr, %struct._expr* %254, i32 0, i32 1
  %Call425 = bitcast %union.anon.2* %v424 to %struct.anon.17*
  %starargs = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call425, i32 0, i32 3
  %255 = load %struct._expr*, %struct._expr** %starargs, align 8
  %tobool426 = icmp ne %struct._expr* %255, null
  br i1 %tobool426, label %if.then.427, label %if.end.437

if.then.427:                                      ; preds = %for.end.423
  %256 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %257 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v428 = getelementptr inbounds %struct._expr, %struct._expr* %257, i32 0, i32 1
  %Call429 = bitcast %union.anon.2* %v428 to %struct.anon.17*
  %starargs430 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call429, i32 0, i32 3
  %258 = load %struct._expr*, %struct._expr** %starargs430, align 8
  %call431 = call i32 @symtable_visit_expr(%struct.symtable* %256, %struct._expr* %258)
  %tobool432 = icmp ne i32 %call431, 0
  br i1 %tobool432, label %if.end.436, label %if.then.433

if.then.433:                                      ; preds = %if.then.427
  %259 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth434 = getelementptr inbounds %struct.symtable, %struct.symtable* %259, i32 0, i32 9
  %260 = load i32, i32* %recursion_depth434, align 4
  %dec435 = add i32 %260, -1
  store i32 %dec435, i32* %recursion_depth434, align 4
  store i32 0, i32* %retval
  br label %return

if.end.436:                                       ; preds = %if.then.427
  br label %if.end.437

if.end.437:                                       ; preds = %if.end.436, %for.end.423
  %261 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v438 = getelementptr inbounds %struct._expr, %struct._expr* %261, i32 0, i32 1
  %Call439 = bitcast %union.anon.2* %v438 to %struct.anon.17*
  %kwargs = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call439, i32 0, i32 4
  %262 = load %struct._expr*, %struct._expr** %kwargs, align 8
  %tobool440 = icmp ne %struct._expr* %262, null
  br i1 %tobool440, label %if.then.441, label %if.end.451

if.then.441:                                      ; preds = %if.end.437
  %263 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %264 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v442 = getelementptr inbounds %struct._expr, %struct._expr* %264, i32 0, i32 1
  %Call443 = bitcast %union.anon.2* %v442 to %struct.anon.17*
  %kwargs444 = getelementptr inbounds %struct.anon.17, %struct.anon.17* %Call443, i32 0, i32 4
  %265 = load %struct._expr*, %struct._expr** %kwargs444, align 8
  %call445 = call i32 @symtable_visit_expr(%struct.symtable* %263, %struct._expr* %265)
  %tobool446 = icmp ne i32 %call445, 0
  br i1 %tobool446, label %if.end.450, label %if.then.447

if.then.447:                                      ; preds = %if.then.441
  %266 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth448 = getelementptr inbounds %struct.symtable, %struct.symtable* %266, i32 0, i32 9
  %267 = load i32, i32* %recursion_depth448, align 4
  %dec449 = add i32 %267, -1
  store i32 %dec449, i32* %recursion_depth448, align 4
  store i32 0, i32* %retval
  br label %return

if.end.450:                                       ; preds = %if.then.441
  br label %if.end.451

if.end.451:                                       ; preds = %if.end.450, %if.end.437
  br label %sw.epilog

sw.bb.452:                                        ; preds = %if.end, %if.end, %if.end, %if.end, %if.end
  br label %sw.epilog

sw.bb.453:                                        ; preds = %if.end
  %268 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %269 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v454 = getelementptr inbounds %struct._expr, %struct._expr* %269, i32 0, i32 1
  %Attribute = bitcast %union.anon.2* %v454 to %struct.anon.22*
  %value455 = getelementptr inbounds %struct.anon.22, %struct.anon.22* %Attribute, i32 0, i32 0
  %270 = load %struct._expr*, %struct._expr** %value455, align 8
  %call456 = call i32 @symtable_visit_expr(%struct.symtable* %268, %struct._expr* %270)
  %tobool457 = icmp ne i32 %call456, 0
  br i1 %tobool457, label %if.end.461, label %if.then.458

if.then.458:                                      ; preds = %sw.bb.453
  %271 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth459 = getelementptr inbounds %struct.symtable, %struct.symtable* %271, i32 0, i32 9
  %272 = load i32, i32* %recursion_depth459, align 4
  %dec460 = add i32 %272, -1
  store i32 %dec460, i32* %recursion_depth459, align 4
  store i32 0, i32* %retval
  br label %return

if.end.461:                                       ; preds = %sw.bb.453
  br label %sw.epilog

sw.bb.462:                                        ; preds = %if.end
  %273 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %274 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v463 = getelementptr inbounds %struct._expr, %struct._expr* %274, i32 0, i32 1
  %Subscript = bitcast %union.anon.2* %v463 to %struct.anon.23*
  %value464 = getelementptr inbounds %struct.anon.23, %struct.anon.23* %Subscript, i32 0, i32 0
  %275 = load %struct._expr*, %struct._expr** %value464, align 8
  %call465 = call i32 @symtable_visit_expr(%struct.symtable* %273, %struct._expr* %275)
  %tobool466 = icmp ne i32 %call465, 0
  br i1 %tobool466, label %if.end.470, label %if.then.467

if.then.467:                                      ; preds = %sw.bb.462
  %276 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth468 = getelementptr inbounds %struct.symtable, %struct.symtable* %276, i32 0, i32 9
  %277 = load i32, i32* %recursion_depth468, align 4
  %dec469 = add i32 %277, -1
  store i32 %dec469, i32* %recursion_depth468, align 4
  store i32 0, i32* %retval
  br label %return

if.end.470:                                       ; preds = %sw.bb.462
  %278 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %279 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v471 = getelementptr inbounds %struct._expr, %struct._expr* %279, i32 0, i32 1
  %Subscript472 = bitcast %union.anon.2* %v471 to %struct.anon.23*
  %slice = getelementptr inbounds %struct.anon.23, %struct.anon.23* %Subscript472, i32 0, i32 1
  %280 = load %struct._slice*, %struct._slice** %slice, align 8
  %call473 = call i32 @symtable_visit_slice(%struct.symtable* %278, %struct._slice* %280)
  %tobool474 = icmp ne i32 %call473, 0
  br i1 %tobool474, label %if.end.478, label %if.then.475

if.then.475:                                      ; preds = %if.end.470
  %281 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth476 = getelementptr inbounds %struct.symtable, %struct.symtable* %281, i32 0, i32 9
  %282 = load i32, i32* %recursion_depth476, align 4
  %dec477 = add i32 %282, -1
  store i32 %dec477, i32* %recursion_depth476, align 4
  store i32 0, i32* %retval
  br label %return

if.end.478:                                       ; preds = %if.end.470
  br label %sw.epilog

sw.bb.479:                                        ; preds = %if.end
  %283 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %284 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v480 = getelementptr inbounds %struct._expr, %struct._expr* %284, i32 0, i32 1
  %Starred = bitcast %union.anon.2* %v480 to %struct.anon.28*
  %value481 = getelementptr inbounds %struct.anon.28, %struct.anon.28* %Starred, i32 0, i32 0
  %285 = load %struct._expr*, %struct._expr** %value481, align 8
  %call482 = call i32 @symtable_visit_expr(%struct.symtable* %283, %struct._expr* %285)
  %tobool483 = icmp ne i32 %call482, 0
  br i1 %tobool483, label %if.end.487, label %if.then.484

if.then.484:                                      ; preds = %sw.bb.479
  %286 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth485 = getelementptr inbounds %struct.symtable, %struct.symtable* %286, i32 0, i32 9
  %287 = load i32, i32* %recursion_depth485, align 4
  %dec486 = add i32 %287, -1
  store i32 %dec486, i32* %recursion_depth485, align 4
  store i32 0, i32* %retval
  br label %return

if.end.487:                                       ; preds = %sw.bb.479
  br label %sw.epilog

sw.bb.488:                                        ; preds = %if.end
  %288 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %289 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v489 = getelementptr inbounds %struct._expr, %struct._expr* %289, i32 0, i32 1
  %Name = bitcast %union.anon.2* %v489 to %struct.anon.29*
  %id = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name, i32 0, i32 0
  %290 = load %struct._object*, %struct._object** %id, align 8
  %291 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v490 = getelementptr inbounds %struct._expr, %struct._expr* %291, i32 0, i32 1
  %Name491 = bitcast %union.anon.2* %v490 to %struct.anon.29*
  %ctx = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name491, i32 0, i32 1
  %292 = load i32, i32* %ctx, align 4
  %cmp492 = icmp eq i32 %292, 1
  %cond494 = select i1 %cmp492, i32 16, i32 2
  %call495 = call i32 @symtable_add_def(%struct.symtable* %288, %struct._object* %290, i32 %cond494)
  %tobool496 = icmp ne i32 %call495, 0
  br i1 %tobool496, label %if.end.500, label %if.then.497

if.then.497:                                      ; preds = %sw.bb.488
  %293 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth498 = getelementptr inbounds %struct.symtable, %struct.symtable* %293, i32 0, i32 9
  %294 = load i32, i32* %recursion_depth498, align 4
  %dec499 = add i32 %294, -1
  store i32 %dec499, i32* %recursion_depth498, align 4
  store i32 0, i32* %retval
  br label %return

if.end.500:                                       ; preds = %sw.bb.488
  %295 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v501 = getelementptr inbounds %struct._expr, %struct._expr* %295, i32 0, i32 1
  %Name502 = bitcast %union.anon.2* %v501 to %struct.anon.29*
  %ctx503 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name502, i32 0, i32 1
  %296 = load i32, i32* %ctx503, align 4
  %cmp504 = icmp eq i32 %296, 1
  br i1 %cmp504, label %land.lhs.true, label %if.end.528

land.lhs.true:                                    ; preds = %if.end.500
  %297 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur506 = getelementptr inbounds %struct.symtable, %struct.symtable* %297, i32 0, i32 1
  %298 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur506, align 8
  %ste_type = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %298, i32 0, i32 7
  %299 = load i32, i32* %ste_type, align 4
  %cmp507 = icmp eq i32 %299, 0
  br i1 %cmp507, label %land.lhs.true.509, label %if.end.528

land.lhs.true.509:                                ; preds = %land.lhs.true
  %300 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v510 = getelementptr inbounds %struct._expr, %struct._expr* %300, i32 0, i32 1
  %Name511 = bitcast %union.anon.2* %v510 to %struct.anon.29*
  %id512 = getelementptr inbounds %struct.anon.29, %struct.anon.29* %Name511, i32 0, i32 0
  %301 = load %struct._object*, %struct._object** %id512, align 8
  %call513 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %301, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0))
  %tobool514 = icmp ne i32 %call513, 0
  br i1 %tobool514, label %if.end.528, label %if.then.515

if.then.515:                                      ; preds = %land.lhs.true.509
  %302 = load %struct._object*, %struct._object** @__class__, align 8
  %tobool516 = icmp ne %struct._object* %302, null
  br i1 %tobool516, label %cond.true.517, label %cond.false.519

cond.true.517:                                    ; preds = %if.then.515
  %303 = load %struct._object*, %struct._object** @__class__, align 8
  %tobool518 = icmp ne %struct._object* %303, null
  br i1 %tobool518, label %lor.lhs.false, label %if.then.524

cond.false.519:                                   ; preds = %if.then.515
  %call520 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* %call520, %struct._object** @__class__, align 8
  %tobool521 = icmp ne %struct._object* %call520, null
  br i1 %tobool521, label %lor.lhs.false, label %if.then.524

lor.lhs.false:                                    ; preds = %cond.false.519, %cond.true.517
  %304 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %305 = load %struct._object*, %struct._object** @__class__, align 8
  %call522 = call i32 @symtable_add_def(%struct.symtable* %304, %struct._object* %305, i32 16)
  %tobool523 = icmp ne i32 %call522, 0
  br i1 %tobool523, label %if.end.527, label %if.then.524

if.then.524:                                      ; preds = %lor.lhs.false, %cond.false.519, %cond.true.517
  %306 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth525 = getelementptr inbounds %struct.symtable, %struct.symtable* %306, i32 0, i32 9
  %307 = load i32, i32* %recursion_depth525, align 4
  %dec526 = add i32 %307, -1
  store i32 %dec526, i32* %recursion_depth525, align 4
  store i32 0, i32* %retval
  br label %return

if.end.527:                                       ; preds = %lor.lhs.false
  br label %if.end.528

if.end.528:                                       ; preds = %if.end.527, %land.lhs.true.509, %land.lhs.true, %if.end.500
  br label %sw.epilog

sw.bb.529:                                        ; preds = %if.end
  %308 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v532 = getelementptr inbounds %struct._expr, %struct._expr* %308, i32 0, i32 1
  %List = bitcast %union.anon.2* %v532 to %struct.anon.30*
  %elts533 = getelementptr inbounds %struct.anon.30, %struct.anon.30* %List, i32 0, i32 0
  %309 = load %struct.asdl_seq*, %struct.asdl_seq** %elts533, align 8
  store %struct.asdl_seq* %309, %struct.asdl_seq** %seq531, align 8
  store i32 0, i32* %i530, align 4
  br label %for.cond.534

for.cond.534:                                     ; preds = %for.inc.556, %sw.bb.529
  %310 = load i32, i32* %i530, align 4
  %conv535 = sext i32 %310 to i64
  %311 = load %struct.asdl_seq*, %struct.asdl_seq** %seq531, align 8
  %cmp536 = icmp eq %struct.asdl_seq* %311, null
  br i1 %cmp536, label %cond.true.538, label %cond.false.539

cond.true.538:                                    ; preds = %for.cond.534
  br label %cond.end.541

cond.false.539:                                   ; preds = %for.cond.534
  %312 = load %struct.asdl_seq*, %struct.asdl_seq** %seq531, align 8
  %size540 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %312, i32 0, i32 0
  %313 = load i64, i64* %size540, align 8
  br label %cond.end.541

cond.end.541:                                     ; preds = %cond.false.539, %cond.true.538
  %cond542 = phi i64 [ 0, %cond.true.538 ], [ %313, %cond.false.539 ]
  %cmp543 = icmp slt i64 %conv535, %cond542
  br i1 %cmp543, label %for.body.545, label %for.end.558

for.body.545:                                     ; preds = %cond.end.541
  %314 = load i32, i32* %i530, align 4
  %idxprom547 = sext i32 %314 to i64
  %315 = load %struct.asdl_seq*, %struct.asdl_seq** %seq531, align 8
  %elements548 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %315, i32 0, i32 1
  %arrayidx549 = getelementptr [1 x i8*], [1 x i8*]* %elements548, i32 0, i64 %idxprom547
  %316 = load i8*, i8** %arrayidx549, align 8
  %317 = bitcast i8* %316 to %struct._expr*
  store %struct._expr* %317, %struct._expr** %elt546, align 8
  %318 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %319 = load %struct._expr*, %struct._expr** %elt546, align 8
  %call550 = call i32 @symtable_visit_expr(%struct.symtable* %318, %struct._expr* %319)
  %tobool551 = icmp ne i32 %call550, 0
  br i1 %tobool551, label %if.end.555, label %if.then.552

if.then.552:                                      ; preds = %for.body.545
  %320 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth553 = getelementptr inbounds %struct.symtable, %struct.symtable* %320, i32 0, i32 9
  %321 = load i32, i32* %recursion_depth553, align 4
  %dec554 = add i32 %321, -1
  store i32 %dec554, i32* %recursion_depth553, align 4
  store i32 0, i32* %retval
  br label %return

if.end.555:                                       ; preds = %for.body.545
  br label %for.inc.556

for.inc.556:                                      ; preds = %if.end.555
  %322 = load i32, i32* %i530, align 4
  %inc557 = add i32 %322, 1
  store i32 %inc557, i32* %i530, align 4
  br label %for.cond.534

for.end.558:                                      ; preds = %cond.end.541
  br label %sw.epilog

sw.bb.559:                                        ; preds = %if.end
  %323 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v562 = getelementptr inbounds %struct._expr, %struct._expr* %323, i32 0, i32 1
  %Tuple = bitcast %union.anon.2* %v562 to %struct.anon.31*
  %elts563 = getelementptr inbounds %struct.anon.31, %struct.anon.31* %Tuple, i32 0, i32 0
  %324 = load %struct.asdl_seq*, %struct.asdl_seq** %elts563, align 8
  store %struct.asdl_seq* %324, %struct.asdl_seq** %seq561, align 8
  store i32 0, i32* %i560, align 4
  br label %for.cond.564

for.cond.564:                                     ; preds = %for.inc.586, %sw.bb.559
  %325 = load i32, i32* %i560, align 4
  %conv565 = sext i32 %325 to i64
  %326 = load %struct.asdl_seq*, %struct.asdl_seq** %seq561, align 8
  %cmp566 = icmp eq %struct.asdl_seq* %326, null
  br i1 %cmp566, label %cond.true.568, label %cond.false.569

cond.true.568:                                    ; preds = %for.cond.564
  br label %cond.end.571

cond.false.569:                                   ; preds = %for.cond.564
  %327 = load %struct.asdl_seq*, %struct.asdl_seq** %seq561, align 8
  %size570 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %327, i32 0, i32 0
  %328 = load i64, i64* %size570, align 8
  br label %cond.end.571

cond.end.571:                                     ; preds = %cond.false.569, %cond.true.568
  %cond572 = phi i64 [ 0, %cond.true.568 ], [ %328, %cond.false.569 ]
  %cmp573 = icmp slt i64 %conv565, %cond572
  br i1 %cmp573, label %for.body.575, label %for.end.588

for.body.575:                                     ; preds = %cond.end.571
  %329 = load i32, i32* %i560, align 4
  %idxprom577 = sext i32 %329 to i64
  %330 = load %struct.asdl_seq*, %struct.asdl_seq** %seq561, align 8
  %elements578 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %330, i32 0, i32 1
  %arrayidx579 = getelementptr [1 x i8*], [1 x i8*]* %elements578, i32 0, i64 %idxprom577
  %331 = load i8*, i8** %arrayidx579, align 8
  %332 = bitcast i8* %331 to %struct._expr*
  store %struct._expr* %332, %struct._expr** %elt576, align 8
  %333 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %334 = load %struct._expr*, %struct._expr** %elt576, align 8
  %call580 = call i32 @symtable_visit_expr(%struct.symtable* %333, %struct._expr* %334)
  %tobool581 = icmp ne i32 %call580, 0
  br i1 %tobool581, label %if.end.585, label %if.then.582

if.then.582:                                      ; preds = %for.body.575
  %335 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth583 = getelementptr inbounds %struct.symtable, %struct.symtable* %335, i32 0, i32 9
  %336 = load i32, i32* %recursion_depth583, align 4
  %dec584 = add i32 %336, -1
  store i32 %dec584, i32* %recursion_depth583, align 4
  store i32 0, i32* %retval
  br label %return

if.end.585:                                       ; preds = %for.body.575
  br label %for.inc.586

for.inc.586:                                      ; preds = %if.end.585
  %337 = load i32, i32* %i560, align 4
  %inc587 = add i32 %337, 1
  store i32 %inc587, i32* %i560, align 4
  br label %for.cond.564

for.end.588:                                      ; preds = %cond.end.571
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %for.end.588, %for.end.558, %if.end.528, %if.end.487, %if.end.478, %if.end.461, %sw.bb.452, %if.end.451, %for.end.356, %if.end.313, %if.end.304, %if.end.290, %if.end.283, %if.end.276, %if.end.269, %for.end.262, %for.end.233, %if.end.174, %if.end.149, %if.end.34, %if.end.26, %for.end
  %338 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth589 = getelementptr inbounds %struct.symtable, %struct.symtable* %338, i32 0, i32 9
  %339 = load i32, i32* %recursion_depth589, align 4
  %dec590 = add i32 %339, -1
  store i32 %dec590, i32* %recursion_depth589, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.582, %if.then.552, %if.then.524, %if.then.497, %if.then.484, %if.then.475, %if.then.467, %if.then.458, %if.then.447, %if.then.433, %if.then.417, %if.then.388, %if.then.361, %if.then.350, %if.then.324, %if.then.310, %if.then.300, %if.then.287, %if.then.280, %if.then.273, %if.then.266, %if.then.256, %if.then.227, %if.then.197, %if.then.171, %if.then.163, %if.then.154, %if.then.146, %if.then.140, %if.then.132, %if.then.123, %if.then.113, %if.then.73, %if.then.42, %if.then.31, %if.then.23, %if.then.15, %if.then.6, %if.then
  %340 = load i32, i32* %retval
  ret i32 %340
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal i32 @symtable_exit_block(%struct.symtable* %st, i8* %ast) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %ast.addr = alloca i8*, align 8
  %size = alloca i64, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store i8* %ast, i8** %ast.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 1
  store %struct._symtable_entry* null, %struct._symtable_entry** %st_cur, align 8
  %1 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_stack = getelementptr inbounds %struct.symtable, %struct.symtable* %1, i32 0, i32 4
  %2 = load %struct._object*, %struct._object** %st_stack, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %size, align 8
  %5 = load i64, i64* %size, align 8
  %tobool = icmp ne i64 %5, 0
  br i1 %tobool, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_stack1 = getelementptr inbounds %struct.symtable, %struct.symtable* %6, i32 0, i32 4
  %7 = load %struct._object*, %struct._object** %st_stack1, align 8
  %8 = load i64, i64* %size, align 8
  %sub = sub i64 %8, 1
  %9 = load i64, i64* %size, align 8
  %call = call i32 @PyList_SetSlice(%struct._object* %7, i64 %sub, i64 %9, %struct._object* null)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %10 = load i64, i64* %size, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %size, align 8
  %tobool3 = icmp ne i64 %dec, 0
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %11 = load i64, i64* %size, align 8
  %sub5 = sub i64 %11, 1
  %12 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_stack6 = getelementptr inbounds %struct.symtable, %struct.symtable* %12, i32 0, i32 4
  %13 = load %struct._object*, %struct._object** %st_stack6, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %14, i32 0, i32 1
  %15 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %15, i64 %sub5
  %16 = load %struct._object*, %struct._object** %arrayidx, align 8
  %17 = bitcast %struct._object* %16 to %struct._symtable_entry*
  %18 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur7 = getelementptr inbounds %struct.symtable, %struct.symtable* %18, i32 0, i32 1
  store %struct._symtable_entry* %17, %struct._symtable_entry** %st_cur7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.8, %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.2
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_analyze(%struct.symtable* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %free = alloca %struct._object*, align 8
  %global = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  %call = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call, %struct._object** %free, align 8
  %0 = load %struct._object*, %struct._object** %free, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call1, %struct._object** %global, align 8
  %1 = load %struct._object*, %struct._object** %global, align 8
  %tobool2 = icmp ne %struct._object* %1, null
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %2 = load %struct._object*, %struct._object** %free, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %9 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_top = getelementptr inbounds %struct.symtable, %struct.symtable* %9, i32 0, i32 2
  %10 = load %struct._symtable_entry*, %struct._symtable_entry** %st_top, align 8
  %11 = load %struct._object*, %struct._object** %free, align 8
  %12 = load %struct._object*, %struct._object** %global, align 8
  %call7 = call i32 @analyze_block(%struct._symtable_entry* %10, %struct._object* null, %struct._object* %11, %struct._object* %12)
  store i32 %call7, i32* %r, align 4
  br label %do.body.8

do.body.8:                                        ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %free, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp9, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_refcnt10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt10, align 8
  %dec11 = add i64 %15, -1
  store i64 %dec11, i64* %ob_refcnt10, align 8
  %cmp12 = icmp ne i64 %dec11, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body.8
  br label %if.end.17

if.else.14:                                       ; preds = %do.body.8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc16 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp9, align 8
  call void %18(%struct._object* %19)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19

do.body.19:                                       ; preds = %do.end.18
  %20 = load %struct._object*, %struct._object** %global, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %22, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %25(%struct._object* %26)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %27 = load i32, i32* %r, align 4
  store i32 %27, i32* %retval
  br label %return

return:                                           ; preds = %do.end.29, %do.end, %if.then
  %28 = load i32, i32* %retval
  ret i32 %28
}

; Function Attrs: nounwind uwtable
define %struct.symtable* @PySymtable_Build(%struct._mod* %mod, i8* %filename_str, %struct.PyFutureFeatures* %future) #0 {
entry:
  %retval = alloca %struct.symtable*, align 8
  %mod.addr = alloca %struct._mod*, align 8
  %filename_str.addr = alloca i8*, align 8
  %future.addr = alloca %struct.PyFutureFeatures*, align 8
  %filename = alloca %struct._object*, align 8
  %st = alloca %struct.symtable*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._mod* %mod, %struct._mod** %mod.addr, align 8
  store i8* %filename_str, i8** %filename_str.addr, align 8
  store %struct.PyFutureFeatures* %future, %struct.PyFutureFeatures** %future.addr, align 8
  %0 = load i8*, i8** %filename_str.addr, align 8
  %call = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %0)
  store %struct._object* %call, %struct._object** %filename, align 8
  %1 = load %struct._object*, %struct._object** %filename, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.symtable* null, %struct.symtable** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._mod*, %struct._mod** %mod.addr, align 8
  %3 = load %struct._object*, %struct._object** %filename, align 8
  %4 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %future.addr, align 8
  %call1 = call %struct.symtable* @PySymtable_BuildObject(%struct._mod* %2, %struct._object* %3, %struct.PyFutureFeatures* %4)
  store %struct.symtable* %call1, %struct.symtable** %st, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %filename, align 8
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
  %12 = load %struct.symtable*, %struct.symtable** %st, align 8
  store %struct.symtable* %12, %struct.symtable** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %13 = load %struct.symtable*, %struct.symtable** %retval
  ret %struct.symtable* %13
}

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct._symtable_entry* @PySymtable_Lookup(%struct.symtable* %st, i8* %key) #0 {
entry:
  %retval = alloca %struct._symtable_entry*, align 8
  %st.addr = alloca %struct.symtable*, align 8
  %key.addr = alloca i8*, align 8
  %k = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %0)
  store %struct._object* %call, %struct._object** %k, align 8
  %1 = load %struct._object*, %struct._object** %k, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._symtable_entry* null, %struct._symtable_entry** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_blocks = getelementptr inbounds %struct.symtable, %struct.symtable* %2, i32 0, i32 3
  %3 = load %struct._object*, %struct._object** %st_blocks, align 8
  %4 = load %struct._object*, %struct._object** %k, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %3, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %v, align 8
  %5 = load %struct._object*, %struct._object** %v, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %v, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.3

if.else:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.body

do.body:                                          ; preds = %if.end.3
  %9 = load %struct._object*, %struct._object** %k, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt4 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt4, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt4, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end.8

if.else.7:                                        ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.8
  %16 = load %struct._object*, %struct._object** %v, align 8
  %17 = bitcast %struct._object* %16 to %struct._symtable_entry*
  store %struct._symtable_entry* %17, %struct._symtable_entry** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %18 = load %struct._symtable_entry*, %struct._symtable_entry** %retval
  ret %struct._symtable_entry* %18
}

declare %struct._object* @PyLong_FromVoidPtr(i8*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @PyST_GetScope(%struct._symtable_entry* %ste, %struct._object* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %ste.addr = alloca %struct._symtable_entry*, align 8
  %name.addr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_symbols = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %ste_symbols, align 8
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call, %struct._object** %v, align 8
  %3 = load %struct._object*, %struct._object** %v, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v, align 8
  %call1 = call i64 @PyLong_AsLong(%struct._object* %4)
  %shr = ashr i64 %call1, 11
  %and = and i64 %shr, 15
  %conv = trunc i64 %and to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i64 @PyLong_AsLong(%struct._object*) #1

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyList_New(i64) #1

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PySet_New(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @analyze_block(%struct._symtable_entry* %ste, %struct._object* %bound, %struct._object* %free, %struct._object* %global) #0 {
entry:
  %ste.addr = alloca %struct._symtable_entry*, align 8
  %bound.addr = alloca %struct._object*, align 8
  %free.addr = alloca %struct._object*, align 8
  %global.addr = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %local = alloca %struct._object*, align 8
  %scopes = alloca %struct._object*, align 8
  %newbound = alloca %struct._object*, align 8
  %newglobal = alloca %struct._object*, align 8
  %newfree = alloca %struct._object*, align 8
  %allfree = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %success = alloca i32, align 4
  %pos = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %flags = alloca i64, align 8
  %_py_decref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %c = alloca %struct._object*, align 8
  %entry125 = alloca %struct._symtable_entry*, align 8
  %_py_decref_tmp145 = alloca %struct._object*, align 8
  %_py_decref_tmp189 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp205 = alloca %struct._object*, align 8
  %_py_xdecref_tmp219 = alloca %struct._object*, align 8
  %_py_decref_tmp224 = alloca %struct._object*, align 8
  %_py_xdecref_tmp238 = alloca %struct._object*, align 8
  %_py_decref_tmp243 = alloca %struct._object*, align 8
  %_py_xdecref_tmp257 = alloca %struct._object*, align 8
  %_py_decref_tmp262 = alloca %struct._object*, align 8
  %_py_xdecref_tmp276 = alloca %struct._object*, align 8
  %_py_decref_tmp281 = alloca %struct._object*, align 8
  %_py_xdecref_tmp295 = alloca %struct._object*, align 8
  %_py_decref_tmp300 = alloca %struct._object*, align 8
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  store %struct._object* %bound, %struct._object** %bound.addr, align 8
  store %struct._object* %free, %struct._object** %free.addr, align 8
  store %struct._object* %global, %struct._object** %global.addr, align 8
  store %struct._object* null, %struct._object** %local, align 8
  store %struct._object* null, %struct._object** %scopes, align 8
  store %struct._object* null, %struct._object** %newbound, align 8
  store %struct._object* null, %struct._object** %newglobal, align 8
  store %struct._object* null, %struct._object** %newfree, align 8
  store %struct._object* null, %struct._object** %allfree, align 8
  store i32 0, i32* %success, align 4
  store i64 0, i64* %pos, align 8
  %call = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call, %struct._object** %local, align 8
  %0 = load %struct._object*, %struct._object** %local, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyDict_New()
  store %struct._object* %call1, %struct._object** %scopes, align 8
  %1 = load %struct._object*, %struct._object** %scopes, align 8
  %tobool2 = icmp ne %struct._object* %1, null
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  br label %error

if.end.4:                                         ; preds = %if.end
  %call5 = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call5, %struct._object** %newglobal, align 8
  %2 = load %struct._object*, %struct._object** %newglobal, align 8
  %tobool6 = icmp ne %struct._object* %2, null
  br i1 %tobool6, label %if.end.8, label %if.then.7

if.then.7:                                        ; preds = %if.end.4
  br label %error

if.end.8:                                         ; preds = %if.end.4
  %call9 = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call9, %struct._object** %newfree, align 8
  %3 = load %struct._object*, %struct._object** %newfree, align 8
  %tobool10 = icmp ne %struct._object* %3, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  br label %error

if.end.12:                                        ; preds = %if.end.8
  %call13 = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call13, %struct._object** %newbound, align 8
  %4 = load %struct._object*, %struct._object** %newbound, align 8
  %tobool14 = icmp ne %struct._object* %4, null
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.12
  br label %error

if.end.16:                                        ; preds = %if.end.12
  %5 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_type = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %5, i32 0, i32 7
  %6 = load i32, i32* %ste_type, align 4
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %if.then.17, label %if.end.43

if.then.17:                                       ; preds = %if.end.16
  %7 = load %struct._object*, %struct._object** %newglobal, align 8
  %8 = load %struct._object*, %struct._object** %global.addr, align 8
  %call18 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call18, %struct._object** %temp, align 8
  %9 = load %struct._object*, %struct._object** %temp, align 8
  %tobool19 = icmp ne %struct._object* %9, null
  br i1 %tobool19, label %if.end.21, label %if.then.20

if.then.20:                                       ; preds = %if.then.17
  br label %error

if.end.21:                                        ; preds = %if.then.17
  br label %do.body

do.body:                                          ; preds = %if.end.21
  %10 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp22 = icmp ne i64 %dec, 0
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %do.body
  br label %if.end.24

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.24

if.end.24:                                        ; preds = %if.else, %if.then.23
  br label %do.end

do.end:                                           ; preds = %if.end.24
  %17 = load %struct._object*, %struct._object** %bound.addr, align 8
  %tobool25 = icmp ne %struct._object* %17, null
  br i1 %tobool25, label %if.then.26, label %if.end.42

if.then.26:                                       ; preds = %do.end
  %18 = load %struct._object*, %struct._object** %newbound, align 8
  %19 = load %struct._object*, %struct._object** %bound.addr, align 8
  %call27 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %18, %struct._object* %19)
  store %struct._object* %call27, %struct._object** %temp, align 8
  %20 = load %struct._object*, %struct._object** %temp, align 8
  %tobool28 = icmp ne %struct._object* %20, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  br label %error

if.end.30:                                        ; preds = %if.then.26
  br label %do.body.31

do.body.31:                                       ; preds = %if.end.30
  %21 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp32, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %23, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %26(%struct._object* %27)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.end
  br label %if.end.43

if.end.43:                                        ; preds = %if.end.42, %if.end.16
  br label %while.cond

while.cond:                                       ; preds = %if.end.50, %if.end.43
  %28 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_symbols = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %28, i32 0, i32 2
  %29 = load %struct._object*, %struct._object** %ste_symbols, align 8
  %call44 = call i32 @PyDict_Next(%struct._object* %29, i64* %pos, %struct._object** %name, %struct._object** %v)
  %tobool45 = icmp ne i32 %call44, 0
  br i1 %tobool45, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %30 = load %struct._object*, %struct._object** %v, align 8
  %call46 = call i64 @PyLong_AsLong(%struct._object* %30)
  store i64 %call46, i64* %flags, align 8
  %31 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %32 = load %struct._object*, %struct._object** %scopes, align 8
  %33 = load %struct._object*, %struct._object** %name, align 8
  %34 = load i64, i64* %flags, align 8
  %35 = load %struct._object*, %struct._object** %bound.addr, align 8
  %36 = load %struct._object*, %struct._object** %local, align 8
  %37 = load %struct._object*, %struct._object** %free.addr, align 8
  %38 = load %struct._object*, %struct._object** %global.addr, align 8
  %call47 = call i32 @analyze_name(%struct._symtable_entry* %31, %struct._object* %32, %struct._object* %33, i64 %34, %struct._object* %35, %struct._object* %36, %struct._object* %37, %struct._object* %38)
  %tobool48 = icmp ne i32 %call47, 0
  br i1 %tobool48, label %if.end.50, label %if.then.49

if.then.49:                                       ; preds = %while.body
  br label %error

if.end.50:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %39 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_type51 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %39, i32 0, i32 7
  %40 = load i32, i32* %ste_type51, align 4
  %cmp52 = icmp ne i32 %40, 1
  br i1 %cmp52, label %if.then.53, label %if.else.106

if.then.53:                                       ; preds = %while.end
  %41 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_type54 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %41, i32 0, i32 7
  %42 = load i32, i32* %ste_type54, align 4
  %cmp55 = icmp eq i32 %42, 0
  br i1 %cmp55, label %if.then.56, label %if.end.72

if.then.56:                                       ; preds = %if.then.53
  %43 = load %struct._object*, %struct._object** %newbound, align 8
  %44 = load %struct._object*, %struct._object** %local, align 8
  %call57 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %43, %struct._object* %44)
  store %struct._object* %call57, %struct._object** %temp, align 8
  %45 = load %struct._object*, %struct._object** %temp, align 8
  %tobool58 = icmp ne %struct._object* %45, null
  br i1 %tobool58, label %if.end.60, label %if.then.59

if.then.59:                                       ; preds = %if.then.56
  br label %error

if.end.60:                                        ; preds = %if.then.56
  br label %do.body.61

do.body.61:                                       ; preds = %if.end.60
  %46 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %46, %struct._object** %_py_decref_tmp62, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 0
  %48 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %48, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 1
  %50 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %50, i32 0, i32 4
  %51 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %51(%struct._object* %52)
  br label %if.end.70

if.end.70:                                        ; preds = %if.else.67, %if.then.66
  br label %do.end.71

do.end.71:                                        ; preds = %if.end.70
  br label %if.end.72

if.end.72:                                        ; preds = %do.end.71, %if.then.53
  %53 = load %struct._object*, %struct._object** %bound.addr, align 8
  %tobool73 = icmp ne %struct._object* %53, null
  br i1 %tobool73, label %if.then.74, label %if.end.90

if.then.74:                                       ; preds = %if.end.72
  %54 = load %struct._object*, %struct._object** %newbound, align 8
  %55 = load %struct._object*, %struct._object** %bound.addr, align 8
  %call75 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %54, %struct._object* %55)
  store %struct._object* %call75, %struct._object** %temp, align 8
  %56 = load %struct._object*, %struct._object** %temp, align 8
  %tobool76 = icmp ne %struct._object* %56, null
  br i1 %tobool76, label %if.end.78, label %if.then.77

if.then.77:                                       ; preds = %if.then.74
  br label %error

if.end.78:                                        ; preds = %if.then.74
  br label %do.body.79

do.body.79:                                       ; preds = %if.end.78
  %57 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %57, %struct._object** %_py_decref_tmp80, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_refcnt81 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0
  %59 = load i64, i64* %ob_refcnt81, align 8
  %dec82 = add i64 %59, -1
  store i64 %dec82, i64* %ob_refcnt81, align 8
  %cmp83 = icmp ne i64 %dec82, 0
  br i1 %cmp83, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %do.body.79
  br label %if.end.88

if.else.85:                                       ; preds = %do.body.79
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  %ob_type86 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type86, align 8
  %tp_dealloc87 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc87, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp80, align 8
  call void %62(%struct._object* %63)
  br label %if.end.88

if.end.88:                                        ; preds = %if.else.85, %if.then.84
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %if.end.90

if.end.90:                                        ; preds = %do.end.89, %if.end.72
  %64 = load %struct._object*, %struct._object** %newglobal, align 8
  %65 = load %struct._object*, %struct._object** %global.addr, align 8
  %call91 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %64, %struct._object* %65)
  store %struct._object* %call91, %struct._object** %temp, align 8
  %66 = load %struct._object*, %struct._object** %temp, align 8
  %tobool92 = icmp ne %struct._object* %66, null
  br i1 %tobool92, label %if.end.94, label %if.then.93

if.then.93:                                       ; preds = %if.end.90
  br label %error

if.end.94:                                        ; preds = %if.end.90
  br label %do.body.95

do.body.95:                                       ; preds = %if.end.94
  %67 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp96, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %69, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.95
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %72(%struct._object* %73)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.117

if.else.106:                                      ; preds = %while.end
  %74 = load %struct._object*, %struct._object** @__class__, align 8
  %tobool107 = icmp ne %struct._object* %74, null
  br i1 %tobool107, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else.106
  %75 = load %struct._object*, %struct._object** @__class__, align 8
  %tobool108 = icmp ne %struct._object* %75, null
  br i1 %tobool108, label %if.end.112, label %if.then.111

cond.false:                                       ; preds = %if.else.106
  %call109 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* %call109, %struct._object** @__class__, align 8
  %tobool110 = icmp ne %struct._object* %call109, null
  br i1 %tobool110, label %if.end.112, label %if.then.111

if.then.111:                                      ; preds = %cond.false, %cond.true
  br label %error

if.end.112:                                       ; preds = %cond.false, %cond.true
  %76 = load %struct._object*, %struct._object** %newbound, align 8
  %77 = load %struct._object*, %struct._object** @__class__, align 8
  %call113 = call i32 @PySet_Add(%struct._object* %76, %struct._object* %77)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %if.then.115, label %if.end.116

if.then.115:                                      ; preds = %if.end.112
  br label %error

if.end.116:                                       ; preds = %if.end.112
  br label %if.end.117

if.end.117:                                       ; preds = %if.end.116, %do.end.105
  %call118 = call %struct._object* @PySet_New(%struct._object* null)
  store %struct._object* %call118, %struct._object** %allfree, align 8
  %78 = load %struct._object*, %struct._object** %allfree, align 8
  %tobool119 = icmp ne %struct._object* %78, null
  br i1 %tobool119, label %if.end.121, label %if.then.120

if.then.120:                                      ; preds = %if.end.117
  br label %error

if.end.121:                                       ; preds = %if.end.117
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.121
  %79 = load i32, i32* %i, align 4
  %conv = sext i32 %79 to i64
  %80 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_children = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %80, i32 0, i32 5
  %81 = load %struct._object*, %struct._object** %ste_children, align 8
  %82 = bitcast %struct._object* %81 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %82, i32 0, i32 1
  %83 = load i64, i64* %ob_size, align 8
  %cmp122 = icmp slt i64 %conv, %83
  br i1 %cmp122, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %84 = load i32, i32* %i, align 4
  %idxprom = sext i32 %84 to i64
  %85 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_children124 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %85, i32 0, i32 5
  %86 = load %struct._object*, %struct._object** %ste_children124, align 8
  %87 = bitcast %struct._object* %86 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %87, i32 0, i32 1
  %88 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %88, i64 %idxprom
  %89 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %89, %struct._object** %c, align 8
  %90 = load %struct._object*, %struct._object** %c, align 8
  %91 = bitcast %struct._object* %90 to %struct._symtable_entry*
  store %struct._symtable_entry* %91, %struct._symtable_entry** %entry125, align 8
  %92 = load %struct._symtable_entry*, %struct._symtable_entry** %entry125, align 8
  %93 = load %struct._object*, %struct._object** %newbound, align 8
  %94 = load %struct._object*, %struct._object** %newfree, align 8
  %95 = load %struct._object*, %struct._object** %newglobal, align 8
  %96 = load %struct._object*, %struct._object** %allfree, align 8
  %call126 = call i32 @analyze_child_block(%struct._symtable_entry* %92, %struct._object* %93, %struct._object* %94, %struct._object* %95, %struct._object* %96)
  %tobool127 = icmp ne i32 %call126, 0
  br i1 %tobool127, label %if.end.129, label %if.then.128

if.then.128:                                      ; preds = %for.body
  br label %error

if.end.129:                                       ; preds = %for.body
  %97 = load %struct._symtable_entry*, %struct._symtable_entry** %entry125, align 8
  %ste_free = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %97, i32 0, i32 10
  %bf.load = load i8, i8* %ste_free, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool130 = icmp ne i32 %bf.cast, 0
  br i1 %tobool130, label %if.then.135, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.129
  %98 = load %struct._symtable_entry*, %struct._symtable_entry** %entry125, align 8
  %ste_child_free = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %98, i32 0, i32 10
  %bf.load131 = load i8, i8* %ste_child_free, align 4
  %bf.lshr = lshr i8 %bf.load131, 1
  %bf.clear132 = and i8 %bf.lshr, 1
  %bf.cast133 = zext i8 %bf.clear132 to i32
  %tobool134 = icmp ne i32 %bf.cast133, 0
  br i1 %tobool134, label %if.then.135, label %if.end.139

if.then.135:                                      ; preds = %lor.lhs.false, %if.end.129
  %99 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_child_free136 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %99, i32 0, i32 10
  %bf.load137 = load i8, i8* %ste_child_free136, align 4
  %bf.clear138 = and i8 %bf.load137, -3
  %bf.set = or i8 %bf.clear138, 2
  store i8 %bf.set, i8* %ste_child_free136, align 4
  br label %if.end.139

if.end.139:                                       ; preds = %if.then.135, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end.139
  %100 = load i32, i32* %i, align 4
  %inc = add i32 %100, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %101 = load %struct._object*, %struct._object** %newfree, align 8
  %102 = load %struct._object*, %struct._object** %allfree, align 8
  %call140 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %101, %struct._object* %102)
  store %struct._object* %call140, %struct._object** %temp, align 8
  %103 = load %struct._object*, %struct._object** %temp, align 8
  %tobool141 = icmp ne %struct._object* %103, null
  br i1 %tobool141, label %if.end.143, label %if.then.142

if.then.142:                                      ; preds = %for.end
  br label %error

if.end.143:                                       ; preds = %for.end
  br label %do.body.144

do.body.144:                                      ; preds = %if.end.143
  %104 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp145, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_refcnt146 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt146, align 8
  %dec147 = add i64 %106, -1
  store i64 %dec147, i64* %ob_refcnt146, align 8
  %cmp148 = icmp ne i64 %dec147, 0
  br i1 %cmp148, label %if.then.150, label %if.else.151

if.then.150:                                      ; preds = %do.body.144
  br label %if.end.154

if.else.151:                                      ; preds = %do.body.144
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_type152 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type152, align 8
  %tp_dealloc153 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc153, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  call void %109(%struct._object* %110)
  br label %if.end.154

if.end.154:                                       ; preds = %if.else.151, %if.then.150
  br label %do.end.155

do.end.155:                                       ; preds = %if.end.154
  %111 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_type156 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %111, i32 0, i32 7
  %112 = load i32, i32* %ste_type156, align 4
  %cmp157 = icmp eq i32 %112, 0
  br i1 %cmp157, label %land.lhs.true, label %if.else.162

land.lhs.true:                                    ; preds = %do.end.155
  %113 = load %struct._object*, %struct._object** %scopes, align 8
  %114 = load %struct._object*, %struct._object** %newfree, align 8
  %call159 = call i32 @analyze_cells(%struct._object* %113, %struct._object* %114)
  %tobool160 = icmp ne i32 %call159, 0
  br i1 %tobool160, label %if.else.162, label %if.then.161

if.then.161:                                      ; preds = %land.lhs.true
  br label %error

if.else.162:                                      ; preds = %land.lhs.true, %do.end.155
  %115 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_type163 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %115, i32 0, i32 7
  %116 = load i32, i32* %ste_type163, align 4
  %cmp164 = icmp eq i32 %116, 1
  br i1 %cmp164, label %land.lhs.true.166, label %if.end.170

land.lhs.true.166:                                ; preds = %if.else.162
  %117 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %118 = load %struct._object*, %struct._object** %newfree, align 8
  %call167 = call i32 @drop_class_free(%struct._symtable_entry* %117, %struct._object* %118)
  %tobool168 = icmp ne i32 %call167, 0
  br i1 %tobool168, label %if.end.170, label %if.then.169

if.then.169:                                      ; preds = %land.lhs.true.166
  br label %error

if.end.170:                                       ; preds = %land.lhs.true.166, %if.else.162
  br label %if.end.171

if.end.171:                                       ; preds = %if.end.170
  %119 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_symbols172 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %119, i32 0, i32 2
  %120 = load %struct._object*, %struct._object** %ste_symbols172, align 8
  %121 = load %struct._object*, %struct._object** %scopes, align 8
  %122 = load %struct._object*, %struct._object** %bound.addr, align 8
  %123 = load %struct._object*, %struct._object** %newfree, align 8
  %124 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_type173 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %124, i32 0, i32 7
  %125 = load i32, i32* %ste_type173, align 4
  %cmp174 = icmp eq i32 %125, 1
  %conv175 = zext i1 %cmp174 to i32
  %call176 = call i32 @update_symbols(%struct._object* %120, %struct._object* %121, %struct._object* %122, %struct._object* %123, i32 %conv175)
  %tobool177 = icmp ne i32 %call176, 0
  br i1 %tobool177, label %if.end.179, label %if.then.178

if.then.178:                                      ; preds = %if.end.171
  br label %error

if.end.179:                                       ; preds = %if.end.171
  %126 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %call180 = call i32 @check_unoptimized(%struct._symtable_entry* %126)
  %tobool181 = icmp ne i32 %call180, 0
  br i1 %tobool181, label %if.end.183, label %if.then.182

if.then.182:                                      ; preds = %if.end.179
  br label %error

if.end.183:                                       ; preds = %if.end.179
  %127 = load %struct._object*, %struct._object** %free.addr, align 8
  %128 = load %struct._object*, %struct._object** %newfree, align 8
  %call184 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %127, %struct._object* %128)
  store %struct._object* %call184, %struct._object** %temp, align 8
  %129 = load %struct._object*, %struct._object** %temp, align 8
  %tobool185 = icmp ne %struct._object* %129, null
  br i1 %tobool185, label %if.end.187, label %if.then.186

if.then.186:                                      ; preds = %if.end.183
  br label %error

if.end.187:                                       ; preds = %if.end.183
  br label %do.body.188

do.body.188:                                      ; preds = %if.end.187
  %130 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %130, %struct._object** %_py_decref_tmp189, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_refcnt190 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt190, align 8
  %dec191 = add i64 %132, -1
  store i64 %dec191, i64* %ob_refcnt190, align 8
  %cmp192 = icmp ne i64 %dec191, 0
  br i1 %cmp192, label %if.then.194, label %if.else.195

if.then.194:                                      ; preds = %do.body.188
  br label %if.end.198

if.else.195:                                      ; preds = %do.body.188
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  %ob_type196 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 1
  %134 = load %struct._typeobject*, %struct._typeobject** %ob_type196, align 8
  %tp_dealloc197 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %134, i32 0, i32 4
  %135 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc197, align 8
  %136 = load %struct._object*, %struct._object** %_py_decref_tmp189, align 8
  call void %135(%struct._object* %136)
  br label %if.end.198

if.end.198:                                       ; preds = %if.else.195, %if.then.194
  br label %do.end.199

do.end.199:                                       ; preds = %if.end.198
  store i32 1, i32* %success, align 4
  br label %error

error:                                            ; preds = %do.end.199, %if.then.186, %if.then.182, %if.then.178, %if.then.169, %if.then.161, %if.then.142, %if.then.128, %if.then.120, %if.then.115, %if.then.111, %if.then.93, %if.then.77, %if.then.59, %if.then.49, %if.then.29, %if.then.20, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  br label %do.body.200

do.body.200:                                      ; preds = %error
  %137 = load %struct._object*, %struct._object** %scopes, align 8
  store %struct._object* %137, %struct._object** %_py_xdecref_tmp, align 8
  %138 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp201 = icmp ne %struct._object* %138, null
  br i1 %cmp201, label %if.then.203, label %if.end.216

if.then.203:                                      ; preds = %do.body.200
  br label %do.body.204

do.body.204:                                      ; preds = %if.then.203
  %139 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %139, %struct._object** %_py_decref_tmp205, align 8
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  %ob_refcnt206 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 0
  %141 = load i64, i64* %ob_refcnt206, align 8
  %dec207 = add i64 %141, -1
  store i64 %dec207, i64* %ob_refcnt206, align 8
  %cmp208 = icmp ne i64 %dec207, 0
  br i1 %cmp208, label %if.then.210, label %if.else.211

if.then.210:                                      ; preds = %do.body.204
  br label %if.end.214

if.else.211:                                      ; preds = %do.body.204
  %142 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  %ob_type212 = getelementptr inbounds %struct._object, %struct._object* %142, i32 0, i32 1
  %143 = load %struct._typeobject*, %struct._typeobject** %ob_type212, align 8
  %tp_dealloc213 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %143, i32 0, i32 4
  %144 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc213, align 8
  %145 = load %struct._object*, %struct._object** %_py_decref_tmp205, align 8
  call void %144(%struct._object* %145)
  br label %if.end.214

if.end.214:                                       ; preds = %if.else.211, %if.then.210
  br label %do.end.215

do.end.215:                                       ; preds = %if.end.214
  br label %if.end.216

if.end.216:                                       ; preds = %do.end.215, %do.body.200
  br label %do.end.217

do.end.217:                                       ; preds = %if.end.216
  br label %do.body.218

do.body.218:                                      ; preds = %do.end.217
  %146 = load %struct._object*, %struct._object** %local, align 8
  store %struct._object* %146, %struct._object** %_py_xdecref_tmp219, align 8
  %147 = load %struct._object*, %struct._object** %_py_xdecref_tmp219, align 8
  %cmp220 = icmp ne %struct._object* %147, null
  br i1 %cmp220, label %if.then.222, label %if.end.235

if.then.222:                                      ; preds = %do.body.218
  br label %do.body.223

do.body.223:                                      ; preds = %if.then.222
  %148 = load %struct._object*, %struct._object** %_py_xdecref_tmp219, align 8
  store %struct._object* %148, %struct._object** %_py_decref_tmp224, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8
  %ob_refcnt225 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0
  %150 = load i64, i64* %ob_refcnt225, align 8
  %dec226 = add i64 %150, -1
  store i64 %dec226, i64* %ob_refcnt225, align 8
  %cmp227 = icmp ne i64 %dec226, 0
  br i1 %cmp227, label %if.then.229, label %if.else.230

if.then.229:                                      ; preds = %do.body.223
  br label %if.end.233

if.else.230:                                      ; preds = %do.body.223
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8
  %ob_type231 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type231, align 8
  %tp_dealloc232 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc232, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp224, align 8
  call void %153(%struct._object* %154)
  br label %if.end.233

if.end.233:                                       ; preds = %if.else.230, %if.then.229
  br label %do.end.234

do.end.234:                                       ; preds = %if.end.233
  br label %if.end.235

if.end.235:                                       ; preds = %do.end.234, %do.body.218
  br label %do.end.236

do.end.236:                                       ; preds = %if.end.235
  br label %do.body.237

do.body.237:                                      ; preds = %do.end.236
  %155 = load %struct._object*, %struct._object** %newbound, align 8
  store %struct._object* %155, %struct._object** %_py_xdecref_tmp238, align 8
  %156 = load %struct._object*, %struct._object** %_py_xdecref_tmp238, align 8
  %cmp239 = icmp ne %struct._object* %156, null
  br i1 %cmp239, label %if.then.241, label %if.end.254

if.then.241:                                      ; preds = %do.body.237
  br label %do.body.242

do.body.242:                                      ; preds = %if.then.241
  %157 = load %struct._object*, %struct._object** %_py_xdecref_tmp238, align 8
  store %struct._object* %157, %struct._object** %_py_decref_tmp243, align 8
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp243, align 8
  %ob_refcnt244 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 0
  %159 = load i64, i64* %ob_refcnt244, align 8
  %dec245 = add i64 %159, -1
  store i64 %dec245, i64* %ob_refcnt244, align 8
  %cmp246 = icmp ne i64 %dec245, 0
  br i1 %cmp246, label %if.then.248, label %if.else.249

if.then.248:                                      ; preds = %do.body.242
  br label %if.end.252

if.else.249:                                      ; preds = %do.body.242
  %160 = load %struct._object*, %struct._object** %_py_decref_tmp243, align 8
  %ob_type250 = getelementptr inbounds %struct._object, %struct._object* %160, i32 0, i32 1
  %161 = load %struct._typeobject*, %struct._typeobject** %ob_type250, align 8
  %tp_dealloc251 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %161, i32 0, i32 4
  %162 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc251, align 8
  %163 = load %struct._object*, %struct._object** %_py_decref_tmp243, align 8
  call void %162(%struct._object* %163)
  br label %if.end.252

if.end.252:                                       ; preds = %if.else.249, %if.then.248
  br label %do.end.253

do.end.253:                                       ; preds = %if.end.252
  br label %if.end.254

if.end.254:                                       ; preds = %do.end.253, %do.body.237
  br label %do.end.255

do.end.255:                                       ; preds = %if.end.254
  br label %do.body.256

do.body.256:                                      ; preds = %do.end.255
  %164 = load %struct._object*, %struct._object** %newglobal, align 8
  store %struct._object* %164, %struct._object** %_py_xdecref_tmp257, align 8
  %165 = load %struct._object*, %struct._object** %_py_xdecref_tmp257, align 8
  %cmp258 = icmp ne %struct._object* %165, null
  br i1 %cmp258, label %if.then.260, label %if.end.273

if.then.260:                                      ; preds = %do.body.256
  br label %do.body.261

do.body.261:                                      ; preds = %if.then.260
  %166 = load %struct._object*, %struct._object** %_py_xdecref_tmp257, align 8
  store %struct._object* %166, %struct._object** %_py_decref_tmp262, align 8
  %167 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8
  %ob_refcnt263 = getelementptr inbounds %struct._object, %struct._object* %167, i32 0, i32 0
  %168 = load i64, i64* %ob_refcnt263, align 8
  %dec264 = add i64 %168, -1
  store i64 %dec264, i64* %ob_refcnt263, align 8
  %cmp265 = icmp ne i64 %dec264, 0
  br i1 %cmp265, label %if.then.267, label %if.else.268

if.then.267:                                      ; preds = %do.body.261
  br label %if.end.271

if.else.268:                                      ; preds = %do.body.261
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8
  %ob_type269 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 1
  %170 = load %struct._typeobject*, %struct._typeobject** %ob_type269, align 8
  %tp_dealloc270 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %170, i32 0, i32 4
  %171 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc270, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp262, align 8
  call void %171(%struct._object* %172)
  br label %if.end.271

if.end.271:                                       ; preds = %if.else.268, %if.then.267
  br label %do.end.272

do.end.272:                                       ; preds = %if.end.271
  br label %if.end.273

if.end.273:                                       ; preds = %do.end.272, %do.body.256
  br label %do.end.274

do.end.274:                                       ; preds = %if.end.273
  br label %do.body.275

do.body.275:                                      ; preds = %do.end.274
  %173 = load %struct._object*, %struct._object** %newfree, align 8
  store %struct._object* %173, %struct._object** %_py_xdecref_tmp276, align 8
  %174 = load %struct._object*, %struct._object** %_py_xdecref_tmp276, align 8
  %cmp277 = icmp ne %struct._object* %174, null
  br i1 %cmp277, label %if.then.279, label %if.end.292

if.then.279:                                      ; preds = %do.body.275
  br label %do.body.280

do.body.280:                                      ; preds = %if.then.279
  %175 = load %struct._object*, %struct._object** %_py_xdecref_tmp276, align 8
  store %struct._object* %175, %struct._object** %_py_decref_tmp281, align 8
  %176 = load %struct._object*, %struct._object** %_py_decref_tmp281, align 8
  %ob_refcnt282 = getelementptr inbounds %struct._object, %struct._object* %176, i32 0, i32 0
  %177 = load i64, i64* %ob_refcnt282, align 8
  %dec283 = add i64 %177, -1
  store i64 %dec283, i64* %ob_refcnt282, align 8
  %cmp284 = icmp ne i64 %dec283, 0
  br i1 %cmp284, label %if.then.286, label %if.else.287

if.then.286:                                      ; preds = %do.body.280
  br label %if.end.290

if.else.287:                                      ; preds = %do.body.280
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp281, align 8
  %ob_type288 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 1
  %179 = load %struct._typeobject*, %struct._typeobject** %ob_type288, align 8
  %tp_dealloc289 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %179, i32 0, i32 4
  %180 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc289, align 8
  %181 = load %struct._object*, %struct._object** %_py_decref_tmp281, align 8
  call void %180(%struct._object* %181)
  br label %if.end.290

if.end.290:                                       ; preds = %if.else.287, %if.then.286
  br label %do.end.291

do.end.291:                                       ; preds = %if.end.290
  br label %if.end.292

if.end.292:                                       ; preds = %do.end.291, %do.body.275
  br label %do.end.293

do.end.293:                                       ; preds = %if.end.292
  br label %do.body.294

do.body.294:                                      ; preds = %do.end.293
  %182 = load %struct._object*, %struct._object** %allfree, align 8
  store %struct._object* %182, %struct._object** %_py_xdecref_tmp295, align 8
  %183 = load %struct._object*, %struct._object** %_py_xdecref_tmp295, align 8
  %cmp296 = icmp ne %struct._object* %183, null
  br i1 %cmp296, label %if.then.298, label %if.end.311

if.then.298:                                      ; preds = %do.body.294
  br label %do.body.299

do.body.299:                                      ; preds = %if.then.298
  %184 = load %struct._object*, %struct._object** %_py_xdecref_tmp295, align 8
  store %struct._object* %184, %struct._object** %_py_decref_tmp300, align 8
  %185 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  %ob_refcnt301 = getelementptr inbounds %struct._object, %struct._object* %185, i32 0, i32 0
  %186 = load i64, i64* %ob_refcnt301, align 8
  %dec302 = add i64 %186, -1
  store i64 %dec302, i64* %ob_refcnt301, align 8
  %cmp303 = icmp ne i64 %dec302, 0
  br i1 %cmp303, label %if.then.305, label %if.else.306

if.then.305:                                      ; preds = %do.body.299
  br label %if.end.309

if.else.306:                                      ; preds = %do.body.299
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  %ob_type307 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 1
  %188 = load %struct._typeobject*, %struct._typeobject** %ob_type307, align 8
  %tp_dealloc308 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %188, i32 0, i32 4
  %189 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc308, align 8
  %190 = load %struct._object*, %struct._object** %_py_decref_tmp300, align 8
  call void %189(%struct._object* %190)
  br label %if.end.309

if.end.309:                                       ; preds = %if.else.306, %if.then.305
  br label %do.end.310

do.end.310:                                       ; preds = %if.end.309
  br label %if.end.311

if.end.311:                                       ; preds = %do.end.310, %do.body.294
  br label %do.end.312

do.end.312:                                       ; preds = %if.end.311
  %191 = load i32, i32* %success, align 4
  %tobool313 = icmp ne i32 %191, 0
  br i1 %tobool313, label %if.end.315, label %if.then.314

if.then.314:                                      ; preds = %do.end.312
  br label %if.end.315

if.end.315:                                       ; preds = %if.then.314, %do.end.312
  %192 = load i32, i32* %success, align 4
  ret i32 %192
}

declare %struct._object* @PyNumber_InPlaceOr(%struct._object*, %struct._object*) #1

declare i32 @PyDict_Next(%struct._object*, i64*, %struct._object**, %struct._object**) #1

; Function Attrs: nounwind uwtable
define internal i32 @analyze_name(%struct._symtable_entry* %ste, %struct._object* %scopes, %struct._object* %name, i64 %flags, %struct._object* %bound, %struct._object* %local, %struct._object* %free, %struct._object* %global) #0 {
entry:
  %retval = alloca i32, align 4
  %ste.addr = alloca %struct._symtable_entry*, align 8
  %scopes.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %flags.addr = alloca i64, align 8
  %bound.addr = alloca %struct._object*, align 8
  %local.addr = alloca %struct._object*, align 8
  %free.addr = alloca %struct._object*, align 8
  %global.addr = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %o62 = alloca %struct._object*, align 8
  %_py_decref_tmp71 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  %o99 = alloca %struct._object*, align 8
  %_py_decref_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp122 = alloca %struct._object*, align 8
  %o149 = alloca %struct._object*, align 8
  %_py_decref_tmp159 = alloca %struct._object*, align 8
  %_py_decref_tmp172 = alloca %struct._object*, align 8
  %o196 = alloca %struct._object*, align 8
  %_py_decref_tmp206 = alloca %struct._object*, align 8
  %_py_decref_tmp219 = alloca %struct._object*, align 8
  %o238 = alloca %struct._object*, align 8
  %_py_decref_tmp248 = alloca %struct._object*, align 8
  %_py_decref_tmp261 = alloca %struct._object*, align 8
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  store %struct._object* %scopes, %struct._object** %scopes.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i64 %flags, i64* %flags.addr, align 8
  store %struct._object* %bound, %struct._object** %bound.addr, align 8
  store %struct._object* %local, %struct._object** %local.addr, align 8
  store %struct._object* %free, %struct._object** %free.addr, align 8
  store %struct._object* %global, %struct._object** %global.addr, align 8
  %0 = load i64, i64* %flags.addr, align 8
  %and = and i64 %0, 1
  %tobool = icmp ne i64 %and, 0
  br i1 %tobool, label %if.then, label %if.end.41

if.then:                                          ; preds = %entry
  %1 = load i64, i64* %flags.addr, align 8
  %and1 = and i64 %1, 4
  %tobool2 = icmp ne i64 %and1, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %2 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %3 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %2, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), %struct._object* %3)
  %4 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %5 = load %struct._object*, %struct._object** %name.addr, align 8
  %call4 = call i32 @error_at_directive(%struct._symtable_entry* %4, %struct._object* %5)
  store i32 %call4, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %6 = load i64, i64* %flags.addr, align 8
  %and5 = and i64 %6, 8
  %tobool6 = icmp ne i64 %and5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.10

if.then.7:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %8 = load %struct._object*, %struct._object** %name.addr, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i32 0, i32 0), %struct._object* %8)
  %9 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %10 = load %struct._object*, %struct._object** %name.addr, align 8
  %call9 = call i32 @error_at_directive(%struct._symtable_entry* %9, %struct._object* %10)
  store i32 %call9, i32* %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  %call11 = call %struct._object* @PyLong_FromLong(i64 2)
  store %struct._object* %call11, %struct._object** %o, align 8
  %11 = load %struct._object*, %struct._object** %o, align 8
  %tobool12 = icmp ne %struct._object* %11, null
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.10
  %12 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %13 = load %struct._object*, %struct._object** %name.addr, align 8
  %14 = load %struct._object*, %struct._object** %o, align 8
  %call15 = call i32 @PyDict_SetItem(%struct._object* %12, %struct._object* %13, %struct._object* %14)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.then.16, label %if.end.20

if.then.16:                                       ; preds = %if.end.14
  br label %do.body

do.body:                                          ; preds = %if.then.16
  %15 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %17, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp17 = icmp ne i64 %dec, 0
  br i1 %cmp17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
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
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %22 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp22, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %24, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %27(%struct._object* %28)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %29 = load %struct._object*, %struct._object** %global.addr, align 8
  %30 = load %struct._object*, %struct._object** %name.addr, align 8
  %call32 = call i32 @PySet_Add(%struct._object* %29, %struct._object* %30)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %do.end.31
  store i32 0, i32* %retval
  br label %return

if.end.35:                                        ; preds = %do.end.31
  %31 = load %struct._object*, %struct._object** %bound.addr, align 8
  %tobool36 = icmp ne %struct._object* %31, null
  br i1 %tobool36, label %land.lhs.true, label %if.end.40

land.lhs.true:                                    ; preds = %if.end.35
  %32 = load %struct._object*, %struct._object** %bound.addr, align 8
  %33 = load %struct._object*, %struct._object** %name.addr, align 8
  %call37 = call i32 @PySet_Discard(%struct._object* %32, %struct._object* %33)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end.40:                                        ; preds = %land.lhs.true, %if.end.35
  store i32 1, i32* %retval
  br label %return

if.end.41:                                        ; preds = %entry
  %34 = load i64, i64* %flags.addr, align 8
  %and42 = and i64 %34, 8
  %tobool43 = icmp ne i64 %and42, 0
  br i1 %tobool43, label %if.then.44, label %if.end.95

if.then.44:                                       ; preds = %if.end.41
  %35 = load i64, i64* %flags.addr, align 8
  %and45 = and i64 %35, 4
  %tobool46 = icmp ne i64 %and45, 0
  br i1 %tobool46, label %if.then.47, label %if.end.50

if.then.47:                                       ; preds = %if.then.44
  %36 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %37 = load %struct._object*, %struct._object** %name.addr, align 8
  %call48 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.17, i32 0, i32 0), %struct._object* %37)
  %38 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %39 = load %struct._object*, %struct._object** %name.addr, align 8
  %call49 = call i32 @error_at_directive(%struct._symtable_entry* %38, %struct._object* %39)
  store i32 %call49, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.44
  %40 = load %struct._object*, %struct._object** %bound.addr, align 8
  %tobool51 = icmp ne %struct._object* %40, null
  br i1 %tobool51, label %if.end.55, label %if.then.52

if.then.52:                                       ; preds = %if.end.50
  %41 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %call53 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.18, i32 0, i32 0))
  %42 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %43 = load %struct._object*, %struct._object** %name.addr, align 8
  %call54 = call i32 @error_at_directive(%struct._symtable_entry* %42, %struct._object* %43)
  store i32 %call54, i32* %retval
  br label %return

if.end.55:                                        ; preds = %if.end.50
  %44 = load %struct._object*, %struct._object** %bound.addr, align 8
  %45 = load %struct._object*, %struct._object** %name.addr, align 8
  %call56 = call i32 @PySet_Contains(%struct._object* %44, %struct._object* %45)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.61, label %if.then.58

if.then.58:                                       ; preds = %if.end.55
  %46 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %47 = load %struct._object*, %struct._object** %name.addr, align 8
  %call59 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.19, i32 0, i32 0), %struct._object* %47)
  %48 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %49 = load %struct._object*, %struct._object** %name.addr, align 8
  %call60 = call i32 @error_at_directive(%struct._symtable_entry* %48, %struct._object* %49)
  store i32 %call60, i32* %retval
  br label %return

if.end.61:                                        ; preds = %if.end.55
  %call63 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call63, %struct._object** %o62, align 8
  %50 = load %struct._object*, %struct._object** %o62, align 8
  %tobool64 = icmp ne %struct._object* %50, null
  br i1 %tobool64, label %if.end.66, label %if.then.65

if.then.65:                                       ; preds = %if.end.61
  store i32 0, i32* %retval
  br label %return

if.end.66:                                        ; preds = %if.end.61
  %51 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %52 = load %struct._object*, %struct._object** %name.addr, align 8
  %53 = load %struct._object*, %struct._object** %o62, align 8
  %call67 = call i32 @PyDict_SetItem(%struct._object* %51, %struct._object* %52, %struct._object* %53)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.69, label %if.end.81

if.then.69:                                       ; preds = %if.end.66
  br label %do.body.70

do.body.70:                                       ; preds = %if.then.69
  %54 = load %struct._object*, %struct._object** %o62, align 8
  store %struct._object* %54, %struct._object** %_py_decref_tmp71, align 8
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_refcnt72 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0
  %56 = load i64, i64* %ob_refcnt72, align 8
  %dec73 = add i64 %56, -1
  store i64 %dec73, i64* %ob_refcnt72, align 8
  %cmp74 = icmp ne i64 %dec73, 0
  br i1 %cmp74, label %if.then.75, label %if.else.76

if.then.75:                                       ; preds = %do.body.70
  br label %if.end.79

if.else.76:                                       ; preds = %do.body.70
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  %ob_type77 = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 1
  %58 = load %struct._typeobject*, %struct._typeobject** %ob_type77, align 8
  %tp_dealloc78 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %58, i32 0, i32 4
  %59 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc78, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp71, align 8
  call void %59(%struct._object* %60)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.76, %if.then.75
  br label %do.end.80

do.end.80:                                        ; preds = %if.end.79
  store i32 0, i32* %retval
  br label %return

if.end.81:                                        ; preds = %if.end.66
  br label %do.body.82

do.body.82:                                       ; preds = %if.end.81
  %61 = load %struct._object*, %struct._object** %o62, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp83, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %63, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %66(%struct._object* %67)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  %68 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_free = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %68, i32 0, i32 10
  %bf.load = load i8, i8* %ste_free, align 4
  %bf.clear = and i8 %bf.load, -2
  %bf.set = or i8 %bf.clear, 1
  store i8 %bf.set, i8* %ste_free, align 4
  %69 = load %struct._object*, %struct._object** %free.addr, align 8
  %70 = load %struct._object*, %struct._object** %name.addr, align 8
  %call93 = call i32 @PySet_Add(%struct._object* %69, %struct._object* %70)
  %cmp94 = icmp sge i32 %call93, 0
  %conv = zext i1 %cmp94 to i32
  store i32 %conv, i32* %retval
  br label %return

if.end.95:                                        ; preds = %if.end.41
  %71 = load i64, i64* %flags.addr, align 8
  %and96 = and i64 %71, 134
  %tobool97 = icmp ne i64 %and96, 0
  br i1 %tobool97, label %if.then.98, label %if.end.143

if.then.98:                                       ; preds = %if.end.95
  %call100 = call %struct._object* @PyLong_FromLong(i64 1)
  store %struct._object* %call100, %struct._object** %o99, align 8
  %72 = load %struct._object*, %struct._object** %o99, align 8
  %tobool101 = icmp ne %struct._object* %72, null
  br i1 %tobool101, label %if.end.103, label %if.then.102

if.then.102:                                      ; preds = %if.then.98
  store i32 0, i32* %retval
  br label %return

if.end.103:                                       ; preds = %if.then.98
  %73 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %74 = load %struct._object*, %struct._object** %name.addr, align 8
  %75 = load %struct._object*, %struct._object** %o99, align 8
  %call104 = call i32 @PyDict_SetItem(%struct._object* %73, %struct._object* %74, %struct._object* %75)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.then.107, label %if.end.120

if.then.107:                                      ; preds = %if.end.103
  br label %do.body.108

do.body.108:                                      ; preds = %if.then.107
  %76 = load %struct._object*, %struct._object** %o99, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp109, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_refcnt110 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt110, align 8
  %dec111 = add i64 %78, -1
  store i64 %dec111, i64* %ob_refcnt110, align 8
  %cmp112 = icmp ne i64 %dec111, 0
  br i1 %cmp112, label %if.then.114, label %if.else.115

if.then.114:                                      ; preds = %do.body.108
  br label %if.end.118

if.else.115:                                      ; preds = %do.body.108
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  %ob_type116 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type116, align 8
  %tp_dealloc117 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc117, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp109, align 8
  call void %81(%struct._object* %82)
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.115, %if.then.114
  br label %do.end.119

do.end.119:                                       ; preds = %if.end.118
  store i32 0, i32* %retval
  br label %return

if.end.120:                                       ; preds = %if.end.103
  br label %do.body.121

do.body.121:                                      ; preds = %if.end.120
  %83 = load %struct._object*, %struct._object** %o99, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp122, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt123, align 8
  %dec124 = add i64 %85, -1
  store i64 %dec124, i64* %ob_refcnt123, align 8
  %cmp125 = icmp ne i64 %dec124, 0
  br i1 %cmp125, label %if.then.127, label %if.else.128

if.then.127:                                      ; preds = %do.body.121
  br label %if.end.131

if.else.128:                                      ; preds = %do.body.121
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  %ob_type129 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type129, align 8
  %tp_dealloc130 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc130, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp122, align 8
  call void %88(%struct._object* %89)
  br label %if.end.131

if.end.131:                                       ; preds = %if.else.128, %if.then.127
  br label %do.end.132

do.end.132:                                       ; preds = %if.end.131
  %90 = load %struct._object*, %struct._object** %local.addr, align 8
  %91 = load %struct._object*, %struct._object** %name.addr, align 8
  %call133 = call i32 @PySet_Add(%struct._object* %90, %struct._object* %91)
  %cmp134 = icmp slt i32 %call133, 0
  br i1 %cmp134, label %if.then.136, label %if.end.137

if.then.136:                                      ; preds = %do.end.132
  store i32 0, i32* %retval
  br label %return

if.end.137:                                       ; preds = %do.end.132
  %92 = load %struct._object*, %struct._object** %global.addr, align 8
  %93 = load %struct._object*, %struct._object** %name.addr, align 8
  %call138 = call i32 @PySet_Discard(%struct._object* %92, %struct._object* %93)
  %cmp139 = icmp slt i32 %call138, 0
  br i1 %cmp139, label %if.then.141, label %if.end.142

if.then.141:                                      ; preds = %if.end.137
  store i32 0, i32* %retval
  br label %return

if.end.142:                                       ; preds = %if.end.137
  store i32 1, i32* %retval
  br label %return

if.end.143:                                       ; preds = %if.end.95
  %94 = load %struct._object*, %struct._object** %bound.addr, align 8
  %tobool144 = icmp ne %struct._object* %94, null
  br i1 %tobool144, label %land.lhs.true.145, label %if.end.190

land.lhs.true.145:                                ; preds = %if.end.143
  %95 = load %struct._object*, %struct._object** %bound.addr, align 8
  %96 = load %struct._object*, %struct._object** %name.addr, align 8
  %call146 = call i32 @PySet_Contains(%struct._object* %95, %struct._object* %96)
  %tobool147 = icmp ne i32 %call146, 0
  br i1 %tobool147, label %if.then.148, label %if.end.190

if.then.148:                                      ; preds = %land.lhs.true.145
  %call150 = call %struct._object* @PyLong_FromLong(i64 4)
  store %struct._object* %call150, %struct._object** %o149, align 8
  %97 = load %struct._object*, %struct._object** %o149, align 8
  %tobool151 = icmp ne %struct._object* %97, null
  br i1 %tobool151, label %if.end.153, label %if.then.152

if.then.152:                                      ; preds = %if.then.148
  store i32 0, i32* %retval
  br label %return

if.end.153:                                       ; preds = %if.then.148
  %98 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %99 = load %struct._object*, %struct._object** %name.addr, align 8
  %100 = load %struct._object*, %struct._object** %o149, align 8
  %call154 = call i32 @PyDict_SetItem(%struct._object* %98, %struct._object* %99, %struct._object* %100)
  %cmp155 = icmp slt i32 %call154, 0
  br i1 %cmp155, label %if.then.157, label %if.end.170

if.then.157:                                      ; preds = %if.end.153
  br label %do.body.158

do.body.158:                                      ; preds = %if.then.157
  %101 = load %struct._object*, %struct._object** %o149, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp159, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_refcnt160 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt160, align 8
  %dec161 = add i64 %103, -1
  store i64 %dec161, i64* %ob_refcnt160, align 8
  %cmp162 = icmp ne i64 %dec161, 0
  br i1 %cmp162, label %if.then.164, label %if.else.165

if.then.164:                                      ; preds = %do.body.158
  br label %if.end.168

if.else.165:                                      ; preds = %do.body.158
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  %ob_type166 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type166, align 8
  %tp_dealloc167 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc167, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp159, align 8
  call void %106(%struct._object* %107)
  br label %if.end.168

if.end.168:                                       ; preds = %if.else.165, %if.then.164
  br label %do.end.169

do.end.169:                                       ; preds = %if.end.168
  store i32 0, i32* %retval
  br label %return

if.end.170:                                       ; preds = %if.end.153
  br label %do.body.171

do.body.171:                                      ; preds = %if.end.170
  %108 = load %struct._object*, %struct._object** %o149, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp172, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  %ob_refcnt173 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt173, align 8
  %dec174 = add i64 %110, -1
  store i64 %dec174, i64* %ob_refcnt173, align 8
  %cmp175 = icmp ne i64 %dec174, 0
  br i1 %cmp175, label %if.then.177, label %if.else.178

if.then.177:                                      ; preds = %do.body.171
  br label %if.end.181

if.else.178:                                      ; preds = %do.body.171
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  %ob_type179 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type179, align 8
  %tp_dealloc180 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc180, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  call void %113(%struct._object* %114)
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.178, %if.then.177
  br label %do.end.182

do.end.182:                                       ; preds = %if.end.181
  %115 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_free183 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %115, i32 0, i32 10
  %bf.load184 = load i8, i8* %ste_free183, align 4
  %bf.clear185 = and i8 %bf.load184, -2
  %bf.set186 = or i8 %bf.clear185, 1
  store i8 %bf.set186, i8* %ste_free183, align 4
  %116 = load %struct._object*, %struct._object** %free.addr, align 8
  %117 = load %struct._object*, %struct._object** %name.addr, align 8
  %call187 = call i32 @PySet_Add(%struct._object* %116, %struct._object* %117)
  %cmp188 = icmp sge i32 %call187, 0
  %conv189 = zext i1 %cmp188 to i32
  store i32 %conv189, i32* %retval
  br label %return

if.end.190:                                       ; preds = %land.lhs.true.145, %if.end.143
  %118 = load %struct._object*, %struct._object** %global.addr, align 8
  %tobool191 = icmp ne %struct._object* %118, null
  br i1 %tobool191, label %land.lhs.true.192, label %if.end.230

land.lhs.true.192:                                ; preds = %if.end.190
  %119 = load %struct._object*, %struct._object** %global.addr, align 8
  %120 = load %struct._object*, %struct._object** %name.addr, align 8
  %call193 = call i32 @PySet_Contains(%struct._object* %119, %struct._object* %120)
  %tobool194 = icmp ne i32 %call193, 0
  br i1 %tobool194, label %if.then.195, label %if.end.230

if.then.195:                                      ; preds = %land.lhs.true.192
  %call197 = call %struct._object* @PyLong_FromLong(i64 3)
  store %struct._object* %call197, %struct._object** %o196, align 8
  %121 = load %struct._object*, %struct._object** %o196, align 8
  %tobool198 = icmp ne %struct._object* %121, null
  br i1 %tobool198, label %if.end.200, label %if.then.199

if.then.199:                                      ; preds = %if.then.195
  store i32 0, i32* %retval
  br label %return

if.end.200:                                       ; preds = %if.then.195
  %122 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %123 = load %struct._object*, %struct._object** %name.addr, align 8
  %124 = load %struct._object*, %struct._object** %o196, align 8
  %call201 = call i32 @PyDict_SetItem(%struct._object* %122, %struct._object* %123, %struct._object* %124)
  %cmp202 = icmp slt i32 %call201, 0
  br i1 %cmp202, label %if.then.204, label %if.end.217

if.then.204:                                      ; preds = %if.end.200
  br label %do.body.205

do.body.205:                                      ; preds = %if.then.204
  %125 = load %struct._object*, %struct._object** %o196, align 8
  store %struct._object* %125, %struct._object** %_py_decref_tmp206, align 8
  %126 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  %ob_refcnt207 = getelementptr inbounds %struct._object, %struct._object* %126, i32 0, i32 0
  %127 = load i64, i64* %ob_refcnt207, align 8
  %dec208 = add i64 %127, -1
  store i64 %dec208, i64* %ob_refcnt207, align 8
  %cmp209 = icmp ne i64 %dec208, 0
  br i1 %cmp209, label %if.then.211, label %if.else.212

if.then.211:                                      ; preds = %do.body.205
  br label %if.end.215

if.else.212:                                      ; preds = %do.body.205
  %128 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  %ob_type213 = getelementptr inbounds %struct._object, %struct._object* %128, i32 0, i32 1
  %129 = load %struct._typeobject*, %struct._typeobject** %ob_type213, align 8
  %tp_dealloc214 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %129, i32 0, i32 4
  %130 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc214, align 8
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp206, align 8
  call void %130(%struct._object* %131)
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.212, %if.then.211
  br label %do.end.216

do.end.216:                                       ; preds = %if.end.215
  store i32 0, i32* %retval
  br label %return

if.end.217:                                       ; preds = %if.end.200
  br label %do.body.218

do.body.218:                                      ; preds = %if.end.217
  %132 = load %struct._object*, %struct._object** %o196, align 8
  store %struct._object* %132, %struct._object** %_py_decref_tmp219, align 8
  %133 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  %ob_refcnt220 = getelementptr inbounds %struct._object, %struct._object* %133, i32 0, i32 0
  %134 = load i64, i64* %ob_refcnt220, align 8
  %dec221 = add i64 %134, -1
  store i64 %dec221, i64* %ob_refcnt220, align 8
  %cmp222 = icmp ne i64 %dec221, 0
  br i1 %cmp222, label %if.then.224, label %if.else.225

if.then.224:                                      ; preds = %do.body.218
  br label %if.end.228

if.else.225:                                      ; preds = %do.body.218
  %135 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  %ob_type226 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 1
  %136 = load %struct._typeobject*, %struct._typeobject** %ob_type226, align 8
  %tp_dealloc227 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %136, i32 0, i32 4
  %137 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc227, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp219, align 8
  call void %137(%struct._object* %138)
  br label %if.end.228

if.end.228:                                       ; preds = %if.else.225, %if.then.224
  br label %do.end.229

do.end.229:                                       ; preds = %if.end.228
  store i32 1, i32* %retval
  br label %return

if.end.230:                                       ; preds = %land.lhs.true.192, %if.end.190
  %139 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_nested = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %139, i32 0, i32 9
  %140 = load i32, i32* %ste_nested, align 4
  %tobool231 = icmp ne i32 %140, 0
  br i1 %tobool231, label %if.then.232, label %if.end.237

if.then.232:                                      ; preds = %if.end.230
  %141 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_free233 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %141, i32 0, i32 10
  %bf.load234 = load i8, i8* %ste_free233, align 4
  %bf.clear235 = and i8 %bf.load234, -2
  %bf.set236 = or i8 %bf.clear235, 1
  store i8 %bf.set236, i8* %ste_free233, align 4
  br label %if.end.237

if.end.237:                                       ; preds = %if.then.232, %if.end.230
  %call239 = call %struct._object* @PyLong_FromLong(i64 3)
  store %struct._object* %call239, %struct._object** %o238, align 8
  %142 = load %struct._object*, %struct._object** %o238, align 8
  %tobool240 = icmp ne %struct._object* %142, null
  br i1 %tobool240, label %if.end.242, label %if.then.241

if.then.241:                                      ; preds = %if.end.237
  store i32 0, i32* %retval
  br label %return

if.end.242:                                       ; preds = %if.end.237
  %143 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %144 = load %struct._object*, %struct._object** %name.addr, align 8
  %145 = load %struct._object*, %struct._object** %o238, align 8
  %call243 = call i32 @PyDict_SetItem(%struct._object* %143, %struct._object* %144, %struct._object* %145)
  %cmp244 = icmp slt i32 %call243, 0
  br i1 %cmp244, label %if.then.246, label %if.end.259

if.then.246:                                      ; preds = %if.end.242
  br label %do.body.247

do.body.247:                                      ; preds = %if.then.246
  %146 = load %struct._object*, %struct._object** %o238, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp248, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp248, align 8
  %ob_refcnt249 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt249, align 8
  %dec250 = add i64 %148, -1
  store i64 %dec250, i64* %ob_refcnt249, align 8
  %cmp251 = icmp ne i64 %dec250, 0
  br i1 %cmp251, label %if.then.253, label %if.else.254

if.then.253:                                      ; preds = %do.body.247
  br label %if.end.257

if.else.254:                                      ; preds = %do.body.247
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp248, align 8
  %ob_type255 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type255, align 8
  %tp_dealloc256 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc256, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp248, align 8
  call void %151(%struct._object* %152)
  br label %if.end.257

if.end.257:                                       ; preds = %if.else.254, %if.then.253
  br label %do.end.258

do.end.258:                                       ; preds = %if.end.257
  store i32 0, i32* %retval
  br label %return

if.end.259:                                       ; preds = %if.end.242
  br label %do.body.260

do.body.260:                                      ; preds = %if.end.259
  %153 = load %struct._object*, %struct._object** %o238, align 8
  store %struct._object* %153, %struct._object** %_py_decref_tmp261, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp261, align 8
  %ob_refcnt262 = getelementptr inbounds %struct._object, %struct._object* %154, i32 0, i32 0
  %155 = load i64, i64* %ob_refcnt262, align 8
  %dec263 = add i64 %155, -1
  store i64 %dec263, i64* %ob_refcnt262, align 8
  %cmp264 = icmp ne i64 %dec263, 0
  br i1 %cmp264, label %if.then.266, label %if.else.267

if.then.266:                                      ; preds = %do.body.260
  br label %if.end.270

if.else.267:                                      ; preds = %do.body.260
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp261, align 8
  %ob_type268 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 1
  %157 = load %struct._typeobject*, %struct._typeobject** %ob_type268, align 8
  %tp_dealloc269 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %157, i32 0, i32 4
  %158 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc269, align 8
  %159 = load %struct._object*, %struct._object** %_py_decref_tmp261, align 8
  call void %158(%struct._object* %159)
  br label %if.end.270

if.end.270:                                       ; preds = %if.else.267, %if.then.266
  br label %do.end.271

do.end.271:                                       ; preds = %if.end.270
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.271, %do.end.258, %if.then.241, %do.end.229, %do.end.216, %if.then.199, %do.end.182, %do.end.169, %if.then.152, %if.end.142, %if.then.141, %if.then.136, %do.end.119, %if.then.102, %do.end.92, %do.end.80, %if.then.65, %if.then.58, %if.then.52, %if.then.47, %if.end.40, %if.then.39, %if.then.34, %do.end, %if.then.13, %if.then.7, %if.then.3
  %160 = load i32, i32* %retval
  ret i32 %160
}

declare i32 @PySet_Add(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @analyze_child_block(%struct._symtable_entry* %entry1, %struct._object* %bound, %struct._object* %free, %struct._object* %global, %struct._object* %child_free) #0 {
entry:
  %retval = alloca i32, align 4
  %entry.addr = alloca %struct._symtable_entry*, align 8
  %bound.addr = alloca %struct._object*, align 8
  %free.addr = alloca %struct._object*, align 8
  %global.addr = alloca %struct._object*, align 8
  %child_free.addr = alloca %struct._object*, align 8
  %temp_bound = alloca %struct._object*, align 8
  %temp_global = alloca %struct._object*, align 8
  %temp_free = alloca %struct._object*, align 8
  %temp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp21 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp57 = alloca %struct._object*, align 8
  %_py_xdecref_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp74 = alloca %struct._object*, align 8
  %_py_xdecref_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp91 = alloca %struct._object*, align 8
  store %struct._symtable_entry* %entry1, %struct._symtable_entry** %entry.addr, align 8
  store %struct._object* %bound, %struct._object** %bound.addr, align 8
  store %struct._object* %free, %struct._object** %free.addr, align 8
  store %struct._object* %global, %struct._object** %global.addr, align 8
  store %struct._object* %child_free, %struct._object** %child_free.addr, align 8
  store %struct._object* null, %struct._object** %temp_bound, align 8
  store %struct._object* null, %struct._object** %temp_global, align 8
  store %struct._object* null, %struct._object** %temp_free, align 8
  %0 = load %struct._object*, %struct._object** %bound.addr, align 8
  %call = call %struct._object* @PySet_New(%struct._object* %0)
  store %struct._object* %call, %struct._object** %temp_bound, align 8
  %1 = load %struct._object*, %struct._object** %temp_bound, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %free.addr, align 8
  %call2 = call %struct._object* @PySet_New(%struct._object* %2)
  store %struct._object* %call2, %struct._object** %temp_free, align 8
  %3 = load %struct._object*, %struct._object** %temp_free, align 8
  %tobool3 = icmp ne %struct._object* %3, null
  br i1 %tobool3, label %if.end.5, label %if.then.4

if.then.4:                                        ; preds = %if.end
  br label %error

if.end.5:                                         ; preds = %if.end
  %4 = load %struct._object*, %struct._object** %global.addr, align 8
  %call6 = call %struct._object* @PySet_New(%struct._object* %4)
  store %struct._object* %call6, %struct._object** %temp_global, align 8
  %5 = load %struct._object*, %struct._object** %temp_global, align 8
  %tobool7 = icmp ne %struct._object* %5, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %error

if.end.9:                                         ; preds = %if.end.5
  %6 = load %struct._symtable_entry*, %struct._symtable_entry** %entry.addr, align 8
  %7 = load %struct._object*, %struct._object** %temp_bound, align 8
  %8 = load %struct._object*, %struct._object** %temp_free, align 8
  %9 = load %struct._object*, %struct._object** %temp_global, align 8
  %call10 = call i32 @analyze_block(%struct._symtable_entry* %6, %struct._object* %7, %struct._object* %8, %struct._object* %9)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %error

if.end.13:                                        ; preds = %if.end.9
  %10 = load %struct._object*, %struct._object** %child_free.addr, align 8
  %11 = load %struct._object*, %struct._object** %temp_free, align 8
  %call14 = call %struct._object* @PyNumber_InPlaceOr(%struct._object* %10, %struct._object* %11)
  store %struct._object* %call14, %struct._object** %temp, align 8
  %12 = load %struct._object*, %struct._object** %temp, align 8
  %tobool15 = icmp ne %struct._object* %12, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.13
  br label %error

if.end.17:                                        ; preds = %if.end.13
  br label %do.body

do.body:                                          ; preds = %if.end.17
  %13 = load %struct._object*, %struct._object** %temp, align 8
  store %struct._object* %13, %struct._object** %_py_decref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 0
  %15 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %15, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %do.body
  br label %if.end.19

if.else:                                          ; preds = %do.body
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 1
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i32 0, i32 4
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %18(%struct._object* %19)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else, %if.then.18
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %do.body.20

do.body.20:                                       ; preds = %do.end
  %20 = load %struct._object*, %struct._object** %temp_bound, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp21, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt22, align 8
  %dec23 = add i64 %22, -1
  store i64 %dec23, i64* %ob_refcnt22, align 8
  %cmp24 = icmp ne i64 %dec23, 0
  br i1 %cmp24, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body.20
  br label %if.end.29

if.else.26:                                       ; preds = %do.body.20
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_dealloc28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc28, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp21, align 8
  call void %25(%struct._object* %26)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %do.body.31

do.body.31:                                       ; preds = %do.end.30
  %27 = load %struct._object*, %struct._object** %temp_free, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp32, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %29, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %32(%struct._object* %33)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %do.body.42

do.body.42:                                       ; preds = %do.end.41
  %34 = load %struct._object*, %struct._object** %temp_global, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp43, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %36, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %39(%struct._object* %40)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  store i32 1, i32* %retval
  br label %return

error:                                            ; preds = %if.then.16, %if.then.12, %if.then.8, %if.then.4, %if.then
  br label %do.body.53

do.body.53:                                       ; preds = %error
  %41 = load %struct._object*, %struct._object** %temp_bound, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp54 = icmp ne %struct._object* %42, null
  br i1 %cmp54, label %if.then.55, label %if.end.67

if.then.55:                                       ; preds = %do.body.53
  br label %do.body.56

do.body.56:                                       ; preds = %if.then.55
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp57, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_refcnt58 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt58, align 8
  %dec59 = add i64 %45, -1
  store i64 %dec59, i64* %ob_refcnt58, align 8
  %cmp60 = icmp ne i64 %dec59, 0
  br i1 %cmp60, label %if.then.61, label %if.else.62

if.then.61:                                       ; preds = %do.body.56
  br label %if.end.65

if.else.62:                                       ; preds = %do.body.56
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  %ob_type63 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type63, align 8
  %tp_dealloc64 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc64, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp57, align 8
  call void %48(%struct._object* %49)
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.62, %if.then.61
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %do.body.53
  br label %do.end.68

do.end.68:                                        ; preds = %if.end.67
  br label %do.body.69

do.body.69:                                       ; preds = %do.end.68
  %50 = load %struct._object*, %struct._object** %temp_free, align 8
  store %struct._object* %50, %struct._object** %_py_xdecref_tmp70, align 8
  %51 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  %cmp71 = icmp ne %struct._object* %51, null
  br i1 %cmp71, label %if.then.72, label %if.end.84

if.then.72:                                       ; preds = %do.body.69
  br label %do.body.73

do.body.73:                                       ; preds = %if.then.72
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp70, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp74, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_refcnt75 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt75, align 8
  %dec76 = add i64 %54, -1
  store i64 %dec76, i64* %ob_refcnt75, align 8
  %cmp77 = icmp ne i64 %dec76, 0
  br i1 %cmp77, label %if.then.78, label %if.else.79

if.then.78:                                       ; preds = %do.body.73
  br label %if.end.82

if.else.79:                                       ; preds = %do.body.73
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  %ob_type80 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type80, align 8
  %tp_dealloc81 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp74, align 8
  call void %57(%struct._object* %58)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.79, %if.then.78
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.body.69
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %59 = load %struct._object*, %struct._object** %temp_global, align 8
  store %struct._object* %59, %struct._object** %_py_xdecref_tmp87, align 8
  %60 = load %struct._object*, %struct._object** %_py_xdecref_tmp87, align 8
  %cmp88 = icmp ne %struct._object* %60, null
  br i1 %cmp88, label %if.then.89, label %if.end.101

if.then.89:                                       ; preds = %do.body.86
  br label %do.body.90

do.body.90:                                       ; preds = %if.then.89
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp87, align 8
  store %struct._object* %61, %struct._object** %_py_decref_tmp91, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_refcnt92 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 0
  %63 = load i64, i64* %ob_refcnt92, align 8
  %dec93 = add i64 %63, -1
  store i64 %dec93, i64* %ob_refcnt92, align 8
  %cmp94 = icmp ne i64 %dec93, 0
  br i1 %cmp94, label %if.then.95, label %if.else.96

if.then.95:                                       ; preds = %do.body.90
  br label %if.end.99

if.else.96:                                       ; preds = %do.body.90
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  %ob_type97 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 1
  %65 = load %struct._typeobject*, %struct._typeobject** %ob_type97, align 8
  %tp_dealloc98 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %65, i32 0, i32 4
  %66 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc98, align 8
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp91, align 8
  call void %66(%struct._object* %67)
  br label %if.end.99

if.end.99:                                        ; preds = %if.else.96, %if.then.95
  br label %do.end.100

do.end.100:                                       ; preds = %if.end.99
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.100, %do.body.86
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.102, %do.end.52
  %68 = load i32, i32* %retval
  ret i32 %68
}

; Function Attrs: nounwind uwtable
define internal i32 @analyze_cells(%struct._object* %scopes, %struct._object* %free) #0 {
entry:
  %retval = alloca i32, align 4
  %scopes.addr = alloca %struct._object*, align 8
  %free.addr = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %v_cell = alloca %struct._object*, align 8
  %success = alloca i32, align 4
  %pos = alloca i64, align 8
  %scope = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %scopes, %struct._object** %scopes.addr, align 8
  store %struct._object* %free, %struct._object** %free.addr, align 8
  store i32 0, i32* %success, align 4
  store i64 0, i64* %pos, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 5)
  store %struct._object* %call, %struct._object** %v_cell, align 8
  %0 = load %struct._object*, %struct._object** %v_cell, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end.17, %if.then.8, %if.then.4, %if.end
  %1 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %call1 = call i32 @PyDict_Next(%struct._object* %1, i64* %pos, %struct._object** %name, %struct._object** %v)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._object*, %struct._object** %v, align 8
  %call3 = call i64 @PyLong_AsLong(%struct._object* %2)
  store i64 %call3, i64* %scope, align 8
  %3 = load i64, i64* %scope, align 8
  %cmp = icmp ne i64 %3, 1
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %while.body
  br label %while.cond

if.end.5:                                         ; preds = %while.body
  %4 = load %struct._object*, %struct._object** %free.addr, align 8
  %5 = load %struct._object*, %struct._object** %name, align 8
  %call6 = call i32 @PySet_Contains(%struct._object* %4, %struct._object* %5)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.5
  br label %while.cond

if.end.9:                                         ; preds = %if.end.5
  %6 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %7 = load %struct._object*, %struct._object** %name, align 8
  %8 = load %struct._object*, %struct._object** %v_cell, align 8
  %call10 = call i32 @PyDict_SetItem(%struct._object* %6, %struct._object* %7, %struct._object* %8)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  br label %error

if.end.13:                                        ; preds = %if.end.9
  %9 = load %struct._object*, %struct._object** %free.addr, align 8
  %10 = load %struct._object*, %struct._object** %name, align 8
  %call14 = call i32 @PySet_Discard(%struct._object* %9, %struct._object* %10)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end.13
  br label %error

if.end.17:                                        ; preds = %if.end.13
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %success, align 4
  br label %error

error:                                            ; preds = %while.end, %if.then.16, %if.then.12
  br label %do.body

do.body:                                          ; preds = %error
  %11 = load %struct._object*, %struct._object** %v_cell, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %13, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %16(%struct._object* %17)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %18 = load i32, i32* %success, align 4
  store i32 %18, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define internal i32 @drop_class_free(%struct._symtable_entry* %ste, %struct._object* %free) #0 {
entry:
  %retval = alloca i32, align 4
  %ste.addr = alloca %struct._symtable_entry*, align 8
  %free.addr = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  store %struct._object* %free, %struct._object** %free.addr, align 8
  %0 = load %struct._object*, %struct._object** @__class__, align 8
  %tobool = icmp ne %struct._object* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct._object*, %struct._object** @__class__, align 8
  %tobool1 = icmp ne %struct._object* %1, null
  br i1 %tobool1, label %if.end, label %if.then

cond.false:                                       ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @__class__, align 8
  %tobool2 = icmp ne %struct._object* %call, null
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.false, %cond.true
  %2 = load %struct._object*, %struct._object** %free.addr, align 8
  %3 = load %struct._object*, %struct._object** @__class__, align 8
  %call3 = call i32 @PySet_Discard(%struct._object* %2, %struct._object* %3)
  store i32 %call3, i32* %res, align 4
  %4 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %5 = load i32, i32* %res, align 4
  %tobool6 = icmp ne i32 %5, 0
  br i1 %tobool6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %6 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_needs_class_closure = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %6, i32 0, i32 10
  %bf.load = load i8, i8* %ste_needs_class_closure, align 4
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.clear, 64
  store i8 %bf.set, i8* %ste_needs_class_closure, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.5
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.4, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define internal i32 @update_symbols(%struct._object* %symbols, %struct._object* %scopes, %struct._object* %bound, %struct._object* %free, i32 %classflag) #0 {
entry:
  %retval = alloca i32, align 4
  %symbols.addr = alloca %struct._object*, align 8
  %scopes.addr = alloca %struct._object*, align 8
  %bound.addr = alloca %struct._object*, align 8
  %free.addr = alloca %struct._object*, align 8
  %classflag.addr = alloca i32, align 4
  %name = alloca %struct._object*, align 8
  %itr = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %v_scope = alloca %struct._object*, align 8
  %v_new = alloca %struct._object*, align 8
  %v_free = alloca %struct._object*, align 8
  %pos = alloca i64, align 8
  %scope = alloca i64, align 8
  %flags = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %flags42 = alloca i64, align 8
  %_py_decref_tmp53 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  %_py_decref_tmp108 = alloca %struct._object*, align 8
  %_py_decref_tmp120 = alloca %struct._object*, align 8
  %_py_decref_tmp131 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp145 = alloca %struct._object*, align 8
  %_py_xdecref_tmp158 = alloca %struct._object*, align 8
  %_py_decref_tmp162 = alloca %struct._object*, align 8
  %_py_xdecref_tmp175 = alloca %struct._object*, align 8
  %_py_decref_tmp179 = alloca %struct._object*, align 8
  store %struct._object* %symbols, %struct._object** %symbols.addr, align 8
  store %struct._object* %scopes, %struct._object** %scopes.addr, align 8
  store %struct._object* %bound, %struct._object** %bound.addr, align 8
  store %struct._object* %free, %struct._object** %free.addr, align 8
  store i32 %classflag, i32* %classflag.addr, align 4
  store %struct._object* null, %struct._object** %name, align 8
  store %struct._object* null, %struct._object** %itr, align 8
  store %struct._object* null, %struct._object** %v, align 8
  store %struct._object* null, %struct._object** %v_scope, align 8
  store %struct._object* null, %struct._object** %v_new, align 8
  store %struct._object* null, %struct._object** %v_free, align 8
  store i64 0, i64* %pos, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end.22, %entry
  %0 = load %struct._object*, %struct._object** %symbols.addr, align 8
  %call = call i32 @PyDict_Next(%struct._object* %0, i64* %pos, %struct._object** %name, %struct._object** %v)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._object*, %struct._object** %v, align 8
  %call1 = call i64 @PyLong_AsLong(%struct._object* %1)
  store i64 %call1, i64* %flags, align 8
  %2 = load %struct._object*, %struct._object** %scopes.addr, align 8
  %3 = load %struct._object*, %struct._object** %name, align 8
  %call2 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3)
  store %struct._object* %call2, %struct._object** %v_scope, align 8
  %4 = load %struct._object*, %struct._object** %v_scope, align 8
  %call3 = call i64 @PyLong_AsLong(%struct._object* %4)
  store i64 %call3, i64* %scope, align 8
  %5 = load i64, i64* %scope, align 8
  %shl = shl i64 %5, 11
  %6 = load i64, i64* %flags, align 8
  %or = or i64 %6, %shl
  store i64 %or, i64* %flags, align 8
  %7 = load i64, i64* %flags, align 8
  %call4 = call %struct._object* @PyLong_FromLong(i64 %7)
  store %struct._object* %call4, %struct._object** %v_new, align 8
  %8 = load %struct._object*, %struct._object** %v_new, align 8
  %tobool5 = icmp ne %struct._object* %8, null
  br i1 %tobool5, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  %9 = load %struct._object*, %struct._object** %symbols.addr, align 8
  %10 = load %struct._object*, %struct._object** %name, align 8
  %11 = load %struct._object*, %struct._object** %v_new, align 8
  %call6 = call i32 @PyDict_SetItem(%struct._object* %9, %struct._object* %10, %struct._object* %11)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.7
  %12 = load %struct._object*, %struct._object** %v_new, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp8 = icmp ne i64 %dec, 0
  br i1 %cmp8, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.10

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.10
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end
  br label %do.body.12

do.body.12:                                       ; preds = %if.end.11
  %19 = load %struct._object*, %struct._object** %v_new, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp13, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %21, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %24(%struct._object* %25)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call23 = call %struct._object* @PyLong_FromLong(i64 8192)
  store %struct._object* %call23, %struct._object** %v_free, align 8
  %26 = load %struct._object*, %struct._object** %v_free, align 8
  %tobool24 = icmp ne %struct._object* %26, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %while.end
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %while.end
  %27 = load %struct._object*, %struct._object** %free.addr, align 8
  %call27 = call %struct._object* @PyObject_GetIter(%struct._object* %27)
  store %struct._object* %call27, %struct._object** %itr, align 8
  %28 = load %struct._object*, %struct._object** %itr, align 8
  %tobool28 = icmp ne %struct._object* %28, null
  br i1 %tobool28, label %if.end.30, label %if.then.29

if.then.29:                                       ; preds = %if.end.26
  br label %error

if.end.30:                                        ; preds = %if.end.26
  br label %while.cond.31

while.cond.31:                                    ; preds = %do.end.117, %do.end.101, %do.end.86, %if.end.30
  %29 = load %struct._object*, %struct._object** %itr, align 8
  %call32 = call %struct._object* @PyIter_Next(%struct._object* %29)
  store %struct._object* %call32, %struct._object** %name, align 8
  %tobool33 = icmp ne %struct._object* %call32, null
  br i1 %tobool33, label %while.body.34, label %while.end.118

while.body.34:                                    ; preds = %while.cond.31
  %30 = load %struct._object*, %struct._object** %symbols.addr, align 8
  %31 = load %struct._object*, %struct._object** %name, align 8
  %call35 = call %struct._object* @PyDict_GetItem(%struct._object* %30, %struct._object* %31)
  store %struct._object* %call35, %struct._object** %v, align 8
  %32 = load %struct._object*, %struct._object** %v, align 8
  %tobool36 = icmp ne %struct._object* %32, null
  br i1 %tobool36, label %if.then.37, label %if.end.87

if.then.37:                                       ; preds = %while.body.34
  %33 = load i32, i32* %classflag.addr, align 4
  %tobool38 = icmp ne i32 %33, 0
  br i1 %tobool38, label %land.lhs.true, label %if.end.75

land.lhs.true:                                    ; preds = %if.then.37
  %34 = load %struct._object*, %struct._object** %v, align 8
  %call39 = call i64 @PyLong_AsLong(%struct._object* %34)
  %and = and i64 %call39, 135
  %tobool40 = icmp ne i64 %and, 0
  br i1 %tobool40, label %if.then.41, label %if.end.75

if.then.41:                                       ; preds = %land.lhs.true
  %35 = load %struct._object*, %struct._object** %v, align 8
  %call43 = call i64 @PyLong_AsLong(%struct._object* %35)
  %or44 = or i64 %call43, 64
  store i64 %or44, i64* %flags42, align 8
  %36 = load i64, i64* %flags42, align 8
  %call45 = call %struct._object* @PyLong_FromLong(i64 %36)
  store %struct._object* %call45, %struct._object** %v_new, align 8
  %37 = load %struct._object*, %struct._object** %v_new, align 8
  %tobool46 = icmp ne %struct._object* %37, null
  br i1 %tobool46, label %if.end.48, label %if.then.47

if.then.47:                                       ; preds = %if.then.41
  br label %error

if.end.48:                                        ; preds = %if.then.41
  %38 = load %struct._object*, %struct._object** %symbols.addr, align 8
  %39 = load %struct._object*, %struct._object** %name, align 8
  %40 = load %struct._object*, %struct._object** %v_new, align 8
  %call49 = call i32 @PyDict_SetItem(%struct._object* %38, %struct._object* %39, %struct._object* %40)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.then.51, label %if.end.63

if.then.51:                                       ; preds = %if.end.48
  br label %do.body.52

do.body.52:                                       ; preds = %if.then.51
  %41 = load %struct._object*, %struct._object** %v_new, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp53, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_refcnt54 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt54, align 8
  %dec55 = add i64 %43, -1
  store i64 %dec55, i64* %ob_refcnt54, align 8
  %cmp56 = icmp ne i64 %dec55, 0
  br i1 %cmp56, label %if.then.57, label %if.else.58

if.then.57:                                       ; preds = %do.body.52
  br label %if.end.61

if.else.58:                                       ; preds = %do.body.52
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  %ob_type59 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type59, align 8
  %tp_dealloc60 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc60, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp53, align 8
  call void %46(%struct._object* %47)
  br label %if.end.61

if.end.61:                                        ; preds = %if.else.58, %if.then.57
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %error

if.end.63:                                        ; preds = %if.end.48
  br label %do.body.64

do.body.64:                                       ; preds = %if.end.63
  %48 = load %struct._object*, %struct._object** %v_new, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp65, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %50, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.64
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %53(%struct._object* %54)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %land.lhs.true, %if.then.37
  br label %do.body.76

do.body.76:                                       ; preds = %if.end.75
  %55 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp77, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %57, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.76
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.76
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %60(%struct._object* %61)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %while.cond.31

if.end.87:                                        ; preds = %while.body.34
  %62 = load %struct._object*, %struct._object** %bound.addr, align 8
  %63 = load %struct._object*, %struct._object** %name, align 8
  %call88 = call i32 @PySet_Contains(%struct._object* %62, %struct._object* %63)
  %tobool89 = icmp ne i32 %call88, 0
  br i1 %tobool89, label %if.end.102, label %if.then.90

if.then.90:                                       ; preds = %if.end.87
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.90
  %64 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp92, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %66, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.100

if.else.97:                                       ; preds = %do.body.91
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc99, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %69(%struct._object* %70)
  br label %if.end.100

if.end.100:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.101

do.end.101:                                       ; preds = %if.end.100
  br label %while.cond.31

if.end.102:                                       ; preds = %if.end.87
  %71 = load %struct._object*, %struct._object** %symbols.addr, align 8
  %72 = load %struct._object*, %struct._object** %name, align 8
  %73 = load %struct._object*, %struct._object** %v_free, align 8
  %call103 = call i32 @PyDict_SetItem(%struct._object* %71, %struct._object* %72, %struct._object* %73)
  %cmp104 = icmp slt i32 %call103, 0
  br i1 %cmp104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.end.102
  br label %error

if.end.106:                                       ; preds = %if.end.102
  br label %do.body.107

do.body.107:                                      ; preds = %if.end.106
  %74 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %74, %struct._object** %_py_decref_tmp108, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_refcnt109 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 0
  %76 = load i64, i64* %ob_refcnt109, align 8
  %dec110 = add i64 %76, -1
  store i64 %dec110, i64* %ob_refcnt109, align 8
  %cmp111 = icmp ne i64 %dec110, 0
  br i1 %cmp111, label %if.then.112, label %if.else.113

if.then.112:                                      ; preds = %do.body.107
  br label %if.end.116

if.else.113:                                      ; preds = %do.body.107
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  %ob_type114 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 1
  %78 = load %struct._typeobject*, %struct._typeobject** %ob_type114, align 8
  %tp_dealloc115 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %78, i32 0, i32 4
  %79 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc115, align 8
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp108, align 8
  call void %79(%struct._object* %80)
  br label %if.end.116

if.end.116:                                       ; preds = %if.else.113, %if.then.112
  br label %do.end.117

do.end.117:                                       ; preds = %if.end.116
  br label %while.cond.31

while.end.118:                                    ; preds = %while.cond.31
  br label %do.body.119

do.body.119:                                      ; preds = %while.end.118
  %81 = load %struct._object*, %struct._object** %itr, align 8
  store %struct._object* %81, %struct._object** %_py_decref_tmp120, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_refcnt121 = getelementptr inbounds %struct._object, %struct._object* %82, i32 0, i32 0
  %83 = load i64, i64* %ob_refcnt121, align 8
  %dec122 = add i64 %83, -1
  store i64 %dec122, i64* %ob_refcnt121, align 8
  %cmp123 = icmp ne i64 %dec122, 0
  br i1 %cmp123, label %if.then.124, label %if.else.125

if.then.124:                                      ; preds = %do.body.119
  br label %if.end.128

if.else.125:                                      ; preds = %do.body.119
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  %ob_type126 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 1
  %85 = load %struct._typeobject*, %struct._typeobject** %ob_type126, align 8
  %tp_dealloc127 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %85, i32 0, i32 4
  %86 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc127, align 8
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp120, align 8
  call void %86(%struct._object* %87)
  br label %if.end.128

if.end.128:                                       ; preds = %if.else.125, %if.then.124
  br label %do.end.129

do.end.129:                                       ; preds = %if.end.128
  br label %do.body.130

do.body.130:                                      ; preds = %do.end.129
  %88 = load %struct._object*, %struct._object** %v_free, align 8
  store %struct._object* %88, %struct._object** %_py_decref_tmp131, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_refcnt132 = getelementptr inbounds %struct._object, %struct._object* %89, i32 0, i32 0
  %90 = load i64, i64* %ob_refcnt132, align 8
  %dec133 = add i64 %90, -1
  store i64 %dec133, i64* %ob_refcnt132, align 8
  %cmp134 = icmp ne i64 %dec133, 0
  br i1 %cmp134, label %if.then.135, label %if.else.136

if.then.135:                                      ; preds = %do.body.130
  br label %if.end.139

if.else.136:                                      ; preds = %do.body.130
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  %ob_type137 = getelementptr inbounds %struct._object, %struct._object* %91, i32 0, i32 1
  %92 = load %struct._typeobject*, %struct._typeobject** %ob_type137, align 8
  %tp_dealloc138 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %92, i32 0, i32 4
  %93 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc138, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp131, align 8
  call void %93(%struct._object* %94)
  br label %if.end.139

if.end.139:                                       ; preds = %if.else.136, %if.then.135
  br label %do.end.140

do.end.140:                                       ; preds = %if.end.139
  store i32 1, i32* %retval
  br label %return

error:                                            ; preds = %if.then.105, %do.end.62, %if.then.47, %if.then.29
  br label %do.body.141

do.body.141:                                      ; preds = %error
  %95 = load %struct._object*, %struct._object** %v_free, align 8
  store %struct._object* %95, %struct._object** %_py_xdecref_tmp, align 8
  %96 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp142 = icmp ne %struct._object* %96, null
  br i1 %cmp142, label %if.then.143, label %if.end.155

if.then.143:                                      ; preds = %do.body.141
  br label %do.body.144

do.body.144:                                      ; preds = %if.then.143
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %97, %struct._object** %_py_decref_tmp145, align 8
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_refcnt146 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt146, align 8
  %dec147 = add i64 %99, -1
  store i64 %dec147, i64* %ob_refcnt146, align 8
  %cmp148 = icmp ne i64 %dec147, 0
  br i1 %cmp148, label %if.then.149, label %if.else.150

if.then.149:                                      ; preds = %do.body.144
  br label %if.end.153

if.else.150:                                      ; preds = %do.body.144
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  %ob_type151 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type151, align 8
  %tp_dealloc152 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc152, align 8
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp145, align 8
  call void %102(%struct._object* %103)
  br label %if.end.153

if.end.153:                                       ; preds = %if.else.150, %if.then.149
  br label %do.end.154

do.end.154:                                       ; preds = %if.end.153
  br label %if.end.155

if.end.155:                                       ; preds = %do.end.154, %do.body.141
  br label %do.end.156

do.end.156:                                       ; preds = %if.end.155
  br label %do.body.157

do.body.157:                                      ; preds = %do.end.156
  %104 = load %struct._object*, %struct._object** %itr, align 8
  store %struct._object* %104, %struct._object** %_py_xdecref_tmp158, align 8
  %105 = load %struct._object*, %struct._object** %_py_xdecref_tmp158, align 8
  %cmp159 = icmp ne %struct._object* %105, null
  br i1 %cmp159, label %if.then.160, label %if.end.172

if.then.160:                                      ; preds = %do.body.157
  br label %do.body.161

do.body.161:                                      ; preds = %if.then.160
  %106 = load %struct._object*, %struct._object** %_py_xdecref_tmp158, align 8
  store %struct._object* %106, %struct._object** %_py_decref_tmp162, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_refcnt163 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt163, align 8
  %dec164 = add i64 %108, -1
  store i64 %dec164, i64* %ob_refcnt163, align 8
  %cmp165 = icmp ne i64 %dec164, 0
  br i1 %cmp165, label %if.then.166, label %if.else.167

if.then.166:                                      ; preds = %do.body.161
  br label %if.end.170

if.else.167:                                      ; preds = %do.body.161
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  %ob_type168 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 1
  %110 = load %struct._typeobject*, %struct._typeobject** %ob_type168, align 8
  %tp_dealloc169 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %110, i32 0, i32 4
  %111 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc169, align 8
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp162, align 8
  call void %111(%struct._object* %112)
  br label %if.end.170

if.end.170:                                       ; preds = %if.else.167, %if.then.166
  br label %do.end.171

do.end.171:                                       ; preds = %if.end.170
  br label %if.end.172

if.end.172:                                       ; preds = %do.end.171, %do.body.157
  br label %do.end.173

do.end.173:                                       ; preds = %if.end.172
  br label %do.body.174

do.body.174:                                      ; preds = %do.end.173
  %113 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %113, %struct._object** %_py_xdecref_tmp175, align 8
  %114 = load %struct._object*, %struct._object** %_py_xdecref_tmp175, align 8
  %cmp176 = icmp ne %struct._object* %114, null
  br i1 %cmp176, label %if.then.177, label %if.end.189

if.then.177:                                      ; preds = %do.body.174
  br label %do.body.178

do.body.178:                                      ; preds = %if.then.177
  %115 = load %struct._object*, %struct._object** %_py_xdecref_tmp175, align 8
  store %struct._object* %115, %struct._object** %_py_decref_tmp179, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_refcnt180 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt180, align 8
  %dec181 = add i64 %117, -1
  store i64 %dec181, i64* %ob_refcnt180, align 8
  %cmp182 = icmp ne i64 %dec181, 0
  br i1 %cmp182, label %if.then.183, label %if.else.184

if.then.183:                                      ; preds = %do.body.178
  br label %if.end.187

if.else.184:                                      ; preds = %do.body.178
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  %ob_type185 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type185, align 8
  %tp_dealloc186 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc186, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp179, align 8
  call void %120(%struct._object* %121)
  br label %if.end.187

if.end.187:                                       ; preds = %if.else.184, %if.then.183
  br label %do.end.188

do.end.188:                                       ; preds = %if.end.187
  br label %if.end.189

if.end.189:                                       ; preds = %do.end.188, %do.body.174
  br label %do.end.190

do.end.190:                                       ; preds = %if.end.189
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.190, %do.end.140, %if.then.25, %do.end, %if.then
  %122 = load i32, i32* %retval
  ret i32 %122
}

; Function Attrs: nounwind uwtable
define internal i32 @check_unoptimized(%struct._symtable_entry* %ste) #0 {
entry:
  %retval = alloca i32, align 4
  %ste.addr = alloca %struct._symtable_entry*, align 8
  %trailer = alloca i8*, align 8
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  %0 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_type = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %0, i32 0, i32 7
  %1 = load i32, i32* %ste_type, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_unoptimized = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %2, i32 0, i32 8
  %3 = load i32, i32* %ste_unoptimized, align 4
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %lor.lhs.false.1, label %if.then

lor.lhs.false.1:                                  ; preds = %lor.lhs.false
  %4 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_free = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %4, i32 0, i32 10
  %bf.load = load i8, i8* %ste_free, align 4
  %bf.clear = and i8 %bf.load, 1
  %bf.cast = zext i8 %bf.clear to i32
  %tobool2 = icmp ne i32 %bf.cast, 0
  br i1 %tobool2, label %if.end, label %lor.lhs.false.3

lor.lhs.false.3:                                  ; preds = %lor.lhs.false.1
  %5 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_child_free = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %5, i32 0, i32 10
  %bf.load4 = load i8, i8* %ste_child_free, align 4
  %bf.lshr = lshr i8 %bf.load4, 1
  %bf.clear5 = and i8 %bf.lshr, 1
  %bf.cast6 = zext i8 %bf.clear5 to i32
  %tobool7 = icmp ne i32 %bf.cast6, 0
  br i1 %tobool7, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3, %lor.lhs.false.1
  %6 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_child_free8 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %6, i32 0, i32 10
  %bf.load9 = load i8, i8* %ste_child_free8, align 4
  %bf.lshr10 = lshr i8 %bf.load9, 1
  %bf.clear11 = and i8 %bf.lshr10, 1
  %bf.cast12 = zext i8 %bf.clear11 to i32
  %tobool13 = icmp ne i32 %bf.cast12, 0
  %cond = select i1 %tobool13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i32 0, i32 0)
  store i8* %cond, i8** %trailer, align 8
  %7 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_unoptimized14 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %7, i32 0, i32 8
  %8 = load i32, i32* %ste_unoptimized14, align 4
  switch i32 %8, label %sw.epilog [
    i32 2, label %sw.bb
    i32 1, label %sw.bb.15
  ]

sw.bb:                                            ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

sw.bb.15:                                         ; preds = %if.end
  %9 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %10 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_name = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %ste_name, align 8
  %12 = load i8*, i8** %trailer, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %9, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.22, i32 0, i32 0), %struct._object* %11, i8* %12)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end, %sw.bb.15
  %13 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_table = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %13, i32 0, i32 16
  %14 = load %struct.symtable*, %struct.symtable** %ste_table, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %14, i32 0, i32 0
  %15 = load %struct._object*, %struct._object** %st_filename, align 8
  %16 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_opt_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %16, i32 0, i32 13
  %17 = load i32, i32* %ste_opt_lineno, align 4
  %18 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_opt_col_offset = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %18, i32 0, i32 14
  %19 = load i32, i32* %ste_opt_col_offset, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %15, i32 %17, i32 %19)
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %sw.bb, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @error_at_directive(%struct._symtable_entry* %ste, %struct._object* %name) #0 {
entry:
  %ste.addr = alloca %struct._symtable_entry*, align 8
  %name.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %data = alloca %struct._object*, align 8
  store %struct._symtable_entry* %ste, %struct._symtable_entry** %ste.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_directives = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %1, i32 0, i32 6
  %2 = load %struct._object*, %struct._object** %ste_directives, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %3, i32 0, i32 1
  %4 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %4, i64 %0
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %5, %struct._object** %data, align 8
  %6 = load %struct._object*, %struct._object** %data, align 8
  %7 = bitcast %struct._object* %6 to %struct.PyTupleObject*
  %ob_item1 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %7, i32 0, i32 1
  %arrayidx2 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item1, i32 0, i64 0
  %8 = load %struct._object*, %struct._object** %arrayidx2, align 8
  %9 = load %struct._object*, %struct._object** %name.addr, align 8
  %cmp = icmp eq %struct._object* %8, %9
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  br label %for.end

if.end:                                           ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i64, i64* %i, align 8
  %inc = add i64 %10, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then
  %11 = load %struct._symtable_entry*, %struct._symtable_entry** %ste.addr, align 8
  %ste_table = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %11, i32 0, i32 16
  %12 = load %struct.symtable*, %struct.symtable** %ste_table, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %12, i32 0, i32 0
  %13 = load %struct._object*, %struct._object** %st_filename, align 8
  %14 = load %struct._object*, %struct._object** %data, align 8
  %15 = bitcast %struct._object* %14 to %struct.PyTupleObject*
  %ob_item3 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %15, i32 0, i32 1
  %arrayidx4 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item3, i32 0, i64 1
  %16 = load %struct._object*, %struct._object** %arrayidx4, align 8
  %call = call i64 @PyLong_AsLong(%struct._object* %16)
  %conv = trunc i64 %call to i32
  %17 = load %struct._object*, %struct._object** %data, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyTupleObject*
  %ob_item5 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %18, i32 0, i32 1
  %arrayidx6 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item5, i32 0, i64 2
  %19 = load %struct._object*, %struct._object** %arrayidx6, align 8
  %call7 = call i64 @PyLong_AsLong(%struct._object* %19)
  %conv8 = trunc i64 %call7 to i32
  call void @PyErr_SyntaxLocationObject(%struct._object* %13, i32 %conv, i32 %conv8)
  ret i32 0
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PySet_Discard(%struct._object*, %struct._object*) #1

declare i32 @PySet_Contains(%struct._object*, %struct._object*) #1

declare void @PyErr_SyntaxLocationObject(%struct._object*, i32, i32) #1

declare %struct._object* @PyObject_GetIter(%struct._object*) #1

declare %struct._object* @PyIter_Next(%struct._object*) #1

declare i32 @PyList_SetSlice(%struct._object*, i64, i64, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._symtable_entry* @ste_new(%struct.symtable* %st, %struct._object* %name, i32 %block, i8* %key, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca %struct._symtable_entry*, align 8
  %st.addr = alloca %struct.symtable*, align 8
  %name.addr = alloca %struct._object*, align 8
  %block.addr = alloca i32, align 4
  %key.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %ste = alloca %struct._symtable_entry*, align 8
  %k = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i32 %block, i32* %block.addr, align 4
  store i8* %key, i8** %key.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  store %struct._symtable_entry* null, %struct._symtable_entry** %ste, align 8
  store %struct._object* null, %struct._object** %k, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call %struct._object* @PyLong_FromVoidPtr(i8* %0)
  store %struct._object* %call, %struct._object** %k, align 8
  %1 = load %struct._object*, %struct._object** %k, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %fail

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @_PyObject_New(%struct._typeobject* @PySTEntry_Type)
  %2 = bitcast %struct._object* %call1 to %struct._symtable_entry*
  store %struct._symtable_entry* %2, %struct._symtable_entry** %ste, align 8
  %3 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %cmp2 = icmp eq %struct._symtable_entry* %3, null
  br i1 %cmp2, label %if.then.3, label %if.end.7

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** %k, align 8
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
  br label %fail

if.end.7:                                         ; preds = %if.end
  %11 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %12 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_table = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %12, i32 0, i32 16
  store %struct.symtable* %11, %struct.symtable** %ste_table, align 8
  %13 = load %struct._object*, %struct._object** %k, align 8
  %14 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_id = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %14, i32 0, i32 1
  store %struct._object* %13, %struct._object** %ste_id, align 8
  %15 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_refcnt8 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt8, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt8, align 8
  %17 = load %struct._object*, %struct._object** %name.addr, align 8
  %18 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_name = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %18, i32 0, i32 3
  store %struct._object* %17, %struct._object** %ste_name, align 8
  %19 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_symbols = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %19, i32 0, i32 2
  store %struct._object* null, %struct._object** %ste_symbols, align 8
  %20 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_varnames = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %20, i32 0, i32 4
  store %struct._object* null, %struct._object** %ste_varnames, align 8
  %21 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_children = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %21, i32 0, i32 5
  store %struct._object* null, %struct._object** %ste_children, align 8
  %22 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_directives = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %22, i32 0, i32 6
  store %struct._object* null, %struct._object** %ste_directives, align 8
  %23 = load i32, i32* %block.addr, align 4
  %24 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_type = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %24, i32 0, i32 7
  store i32 %23, i32* %ste_type, align 4
  %25 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_unoptimized = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %25, i32 0, i32 8
  store i32 0, i32* %ste_unoptimized, align 4
  %26 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_nested = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %26, i32 0, i32 9
  store i32 0, i32* %ste_nested, align 4
  %27 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_free = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %27, i32 0, i32 10
  %bf.load = load i8, i8* %ste_free, align 4
  %bf.clear = and i8 %bf.load, -2
  store i8 %bf.clear, i8* %ste_free, align 4
  %28 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_varargs = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %28, i32 0, i32 10
  %bf.load9 = load i8, i8* %ste_varargs, align 4
  %bf.clear10 = and i8 %bf.load9, -9
  store i8 %bf.clear10, i8* %ste_varargs, align 4
  %29 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_varkeywords = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %29, i32 0, i32 10
  %bf.load11 = load i8, i8* %ste_varkeywords, align 4
  %bf.clear12 = and i8 %bf.load11, -17
  store i8 %bf.clear12, i8* %ste_varkeywords, align 4
  %30 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_opt_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %30, i32 0, i32 13
  store i32 0, i32* %ste_opt_lineno, align 4
  %31 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_opt_col_offset = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %31, i32 0, i32 14
  store i32 0, i32* %ste_opt_col_offset, align 4
  %32 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_tmpname = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %32, i32 0, i32 15
  store i32 0, i32* %ste_tmpname, align 4
  %33 = load i32, i32* %lineno.addr, align 4
  %34 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %34, i32 0, i32 11
  store i32 %33, i32* %ste_lineno, align 4
  %35 = load i32, i32* %col_offset.addr, align 4
  %36 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_col_offset = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %36, i32 0, i32 12
  store i32 %35, i32* %ste_col_offset, align 4
  %37 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %37, i32 0, i32 1
  %38 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %cmp13 = icmp ne %struct._symtable_entry* %38, null
  br i1 %cmp13, label %land.lhs.true, label %if.end.21

land.lhs.true:                                    ; preds = %if.end.7
  %39 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur14 = getelementptr inbounds %struct.symtable, %struct.symtable* %39, i32 0, i32 1
  %40 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur14, align 8
  %ste_nested15 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %40, i32 0, i32 9
  %41 = load i32, i32* %ste_nested15, align 4
  %tobool = icmp ne i32 %41, 0
  br i1 %tobool, label %if.then.19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %42 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur16 = getelementptr inbounds %struct.symtable, %struct.symtable* %42, i32 0, i32 1
  %43 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur16, align 8
  %ste_type17 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %43, i32 0, i32 7
  %44 = load i32, i32* %ste_type17, align 4
  %cmp18 = icmp eq i32 %44, 0
  br i1 %cmp18, label %if.then.19, label %if.end.21

if.then.19:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %45 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_nested20 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %45, i32 0, i32 9
  store i32 1, i32* %ste_nested20, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.19, %lor.lhs.false, %if.end.7
  %46 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_child_free = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %46, i32 0, i32 10
  %bf.load22 = load i8, i8* %ste_child_free, align 4
  %bf.clear23 = and i8 %bf.load22, -3
  store i8 %bf.clear23, i8* %ste_child_free, align 4
  %47 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_generator = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %47, i32 0, i32 10
  %bf.load24 = load i8, i8* %ste_generator, align 4
  %bf.clear25 = and i8 %bf.load24, -5
  store i8 %bf.clear25, i8* %ste_generator, align 4
  %48 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_returns_value = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %48, i32 0, i32 10
  %bf.load26 = load i8, i8* %ste_returns_value, align 4
  %bf.clear27 = and i8 %bf.load26, -33
  store i8 %bf.clear27, i8* %ste_returns_value, align 4
  %49 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_needs_class_closure = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %49, i32 0, i32 10
  %bf.load28 = load i8, i8* %ste_needs_class_closure, align 4
  %bf.clear29 = and i8 %bf.load28, -65
  store i8 %bf.clear29, i8* %ste_needs_class_closure, align 4
  %call30 = call %struct._object* @PyDict_New()
  %50 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_symbols31 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %50, i32 0, i32 2
  store %struct._object* %call30, %struct._object** %ste_symbols31, align 8
  %call32 = call %struct._object* @PyList_New(i64 0)
  %51 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_varnames33 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %51, i32 0, i32 4
  store %struct._object* %call32, %struct._object** %ste_varnames33, align 8
  %call34 = call %struct._object* @PyList_New(i64 0)
  %52 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_children35 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %52, i32 0, i32 5
  store %struct._object* %call34, %struct._object** %ste_children35, align 8
  %53 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_symbols36 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %53, i32 0, i32 2
  %54 = load %struct._object*, %struct._object** %ste_symbols36, align 8
  %cmp37 = icmp eq %struct._object* %54, null
  br i1 %cmp37, label %if.then.44, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %if.end.21
  %55 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_varnames39 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %55, i32 0, i32 4
  %56 = load %struct._object*, %struct._object** %ste_varnames39, align 8
  %cmp40 = icmp eq %struct._object* %56, null
  br i1 %cmp40, label %if.then.44, label %lor.lhs.false.41

lor.lhs.false.41:                                 ; preds = %lor.lhs.false.38
  %57 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_children42 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %57, i32 0, i32 5
  %58 = load %struct._object*, %struct._object** %ste_children42, align 8
  %cmp43 = icmp eq %struct._object* %58, null
  br i1 %cmp43, label %if.then.44, label %if.end.45

if.then.44:                                       ; preds = %lor.lhs.false.41, %lor.lhs.false.38, %if.end.21
  br label %fail

if.end.45:                                        ; preds = %lor.lhs.false.41
  %59 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_blocks = getelementptr inbounds %struct.symtable, %struct.symtable* %59, i32 0, i32 3
  %60 = load %struct._object*, %struct._object** %st_blocks, align 8
  %61 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %ste_id46 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %61, i32 0, i32 1
  %62 = load %struct._object*, %struct._object** %ste_id46, align 8
  %63 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %64 = bitcast %struct._symtable_entry* %63 to %struct._object*
  %call47 = call i32 @PyDict_SetItem(%struct._object* %60, %struct._object* %62, %struct._object* %64)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.45
  br label %fail

if.end.50:                                        ; preds = %if.end.45
  %65 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  store %struct._symtable_entry* %65, %struct._symtable_entry** %retval
  br label %return

fail:                                             ; preds = %if.then.49, %if.then.44, %do.end, %if.then
  br label %do.body.51

do.body.51:                                       ; preds = %fail
  %66 = load %struct._symtable_entry*, %struct._symtable_entry** %ste, align 8
  %67 = bitcast %struct._symtable_entry* %66 to %struct._object*
  store %struct._object* %67, %struct._object** %_py_xdecref_tmp, align 8
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp52 = icmp ne %struct._object* %68, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.51
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %69 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp55, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %71, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %74(%struct._object* %75)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.51
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  store %struct._symtable_entry* null, %struct._symtable_entry** %retval
  br label %return

return:                                           ; preds = %do.end.66, %if.end.50
  %76 = load %struct._symtable_entry*, %struct._symtable_entry** %retval
  ret %struct._symtable_entry* %76
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

; Function Attrs: nounwind uwtable
define internal i32 @symtable_add_def(%struct.symtable* %st, %struct._object* %name, i32 %flag) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %name.addr = alloca %struct._object*, align 8
  %flag.addr = alloca i32, align 4
  %o = alloca %struct._object*, align 8
  %dict = alloca %struct._object*, align 8
  %val = alloca i64, align 8
  %mangled = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %_py_decref_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp111 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i32 %flag, i32* %flag.addr, align 4
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_private = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %st_private, align 8
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @_Py_Mangle(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call, %struct._object** %mangled, align 8
  %3 = load %struct._object*, %struct._object** %mangled, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %4, i32 0, i32 1
  %5 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_symbols = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %ste_symbols, align 8
  store %struct._object* %6, %struct._object** %dict, align 8
  %7 = load %struct._object*, %struct._object** %dict, align 8
  %8 = load %struct._object*, %struct._object** %mangled, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %7, %struct._object* %8)
  store %struct._object* %call1, %struct._object** %o, align 8
  %tobool2 = icmp ne %struct._object* %call1, null
  br i1 %tobool2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %o, align 8
  %call4 = call i64 @PyLong_AsLong(%struct._object* %9)
  store i64 %call4, i64* %val, align 8
  %10 = load i32, i32* %flag.addr, align 4
  %and = and i32 %10, 4
  %tobool5 = icmp ne i32 %and, 0
  br i1 %tobool5, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.then.3
  %11 = load i64, i64* %val, align 8
  %and6 = and i64 %11, 4
  %tobool7 = icmp ne i64 %and6, 0
  br i1 %tobool7, label %if.then.8, label %if.end.12

if.then.8:                                        ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %13 = load %struct._object*, %struct._object** %name.addr, align 8
  %call9 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %12, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i32 0, i32 0), %struct._object* %13)
  %14 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %14, i32 0, i32 0
  %15 = load %struct._object*, %struct._object** %st_filename, align 8
  %16 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur10 = getelementptr inbounds %struct.symtable, %struct.symtable* %16, i32 0, i32 1
  %17 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur10, align 8
  %ste_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %17, i32 0, i32 11
  %18 = load i32, i32* %ste_lineno, align 4
  %19 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur11 = getelementptr inbounds %struct.symtable, %struct.symtable* %19, i32 0, i32 1
  %20 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur11, align 8
  %ste_col_offset = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %20, i32 0, i32 12
  %21 = load i32, i32* %ste_col_offset, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %15, i32 %18, i32 %21)
  br label %error

if.end.12:                                        ; preds = %land.lhs.true, %if.then.3
  %22 = load i32, i32* %flag.addr, align 4
  %conv = sext i32 %22 to i64
  %23 = load i64, i64* %val, align 8
  %or = or i64 %23, %conv
  store i64 %or, i64* %val, align 8
  br label %if.end.14

if.else:                                          ; preds = %if.end
  %24 = load i32, i32* %flag.addr, align 4
  %conv13 = sext i32 %24 to i64
  store i64 %conv13, i64* %val, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.else, %if.end.12
  %25 = load i64, i64* %val, align 8
  %call15 = call %struct._object* @PyLong_FromLong(i64 %25)
  store %struct._object* %call15, %struct._object** %o, align 8
  %26 = load %struct._object*, %struct._object** %o, align 8
  %cmp = icmp eq %struct._object* %26, null
  br i1 %cmp, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  br label %error

if.end.18:                                        ; preds = %if.end.14
  %27 = load %struct._object*, %struct._object** %dict, align 8
  %28 = load %struct._object*, %struct._object** %mangled, align 8
  %29 = load %struct._object*, %struct._object** %o, align 8
  %call19 = call i32 @PyDict_SetItem(%struct._object* %27, %struct._object* %28, %struct._object* %29)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.22, label %if.end.28

if.then.22:                                       ; preds = %if.end.18
  br label %do.body

do.body:                                          ; preds = %if.then.22
  %30 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %32, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.25, label %if.else.26

if.then.25:                                       ; preds = %do.body
  br label %if.end.27

if.else.26:                                       ; preds = %do.body
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %35(%struct._object* %36)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.26, %if.then.25
  br label %do.end

do.end:                                           ; preds = %if.end.27
  br label %error

if.end.28:                                        ; preds = %if.end.18
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.28
  %37 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp30, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_refcnt31 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt31, align 8
  %dec32 = add i64 %39, -1
  store i64 %dec32, i64* %ob_refcnt31, align 8
  %cmp33 = icmp ne i64 %dec32, 0
  br i1 %cmp33, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.29
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.29
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp30, align 8
  call void %42(%struct._object* %43)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  %44 = load i32, i32* %flag.addr, align 4
  %and41 = and i32 %44, 4
  %tobool42 = icmp ne i32 %and41, 0
  br i1 %tobool42, label %if.then.43, label %if.else.50

if.then.43:                                       ; preds = %do.end.40
  %45 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur44 = getelementptr inbounds %struct.symtable, %struct.symtable* %45, i32 0, i32 1
  %46 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur44, align 8
  %ste_varnames = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %46, i32 0, i32 4
  %47 = load %struct._object*, %struct._object** %ste_varnames, align 8
  %48 = load %struct._object*, %struct._object** %mangled, align 8
  %call45 = call i32 @PyList_Append(%struct._object* %47, %struct._object* %48)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.then.43
  br label %error

if.end.49:                                        ; preds = %if.then.43
  br label %if.end.97

if.else.50:                                       ; preds = %do.end.40
  %49 = load i32, i32* %flag.addr, align 4
  %and51 = and i32 %49, 1
  %tobool52 = icmp ne i32 %and51, 0
  br i1 %tobool52, label %if.then.53, label %if.end.96

if.then.53:                                       ; preds = %if.else.50
  %50 = load i32, i32* %flag.addr, align 4
  %conv54 = sext i32 %50 to i64
  store i64 %conv54, i64* %val, align 8
  %51 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_global = getelementptr inbounds %struct.symtable, %struct.symtable* %51, i32 0, i32 5
  %52 = load %struct._object*, %struct._object** %st_global, align 8
  %53 = load %struct._object*, %struct._object** %mangled, align 8
  %call55 = call %struct._object* @PyDict_GetItem(%struct._object* %52, %struct._object* %53)
  store %struct._object* %call55, %struct._object** %o, align 8
  %tobool56 = icmp ne %struct._object* %call55, null
  br i1 %tobool56, label %if.then.57, label %if.end.60

if.then.57:                                       ; preds = %if.then.53
  %54 = load %struct._object*, %struct._object** %o, align 8
  %call58 = call i64 @PyLong_AsLong(%struct._object* %54)
  %55 = load i64, i64* %val, align 8
  %or59 = or i64 %55, %call58
  store i64 %or59, i64* %val, align 8
  br label %if.end.60

if.end.60:                                        ; preds = %if.then.57, %if.then.53
  %56 = load i64, i64* %val, align 8
  %call61 = call %struct._object* @PyLong_FromLong(i64 %56)
  store %struct._object* %call61, %struct._object** %o, align 8
  %57 = load %struct._object*, %struct._object** %o, align 8
  %cmp62 = icmp eq %struct._object* %57, null
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.end.60
  br label %error

if.end.65:                                        ; preds = %if.end.60
  %58 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_global66 = getelementptr inbounds %struct.symtable, %struct.symtable* %58, i32 0, i32 5
  %59 = load %struct._object*, %struct._object** %st_global66, align 8
  %60 = load %struct._object*, %struct._object** %mangled, align 8
  %61 = load %struct._object*, %struct._object** %o, align 8
  %call67 = call i32 @PyDict_SetItem(%struct._object* %59, %struct._object* %60, %struct._object* %61)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then.70, label %if.end.83

if.then.70:                                       ; preds = %if.end.65
  br label %do.body.71

do.body.71:                                       ; preds = %if.then.70
  %62 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp72, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt73, align 8
  %dec74 = add i64 %64, -1
  store i64 %dec74, i64* %ob_refcnt73, align 8
  %cmp75 = icmp ne i64 %dec74, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.71
  br label %if.end.81

if.else.78:                                       ; preds = %do.body.71
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc80, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8
  call void %67(%struct._object* %68)
  br label %if.end.81

if.end.81:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.82

do.end.82:                                        ; preds = %if.end.81
  br label %error

if.end.83:                                        ; preds = %if.end.65
  br label %do.body.84

do.body.84:                                       ; preds = %if.end.83
  %69 = load %struct._object*, %struct._object** %o, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp85, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %71, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.90, label %if.else.91

if.then.90:                                       ; preds = %do.body.84
  br label %if.end.94

if.else.91:                                       ; preds = %do.body.84
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type92 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type92, align 8
  %tp_dealloc93 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc93, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %74(%struct._object* %75)
  br label %if.end.94

if.end.94:                                        ; preds = %if.else.91, %if.then.90
  br label %do.end.95

do.end.95:                                        ; preds = %if.end.94
  br label %if.end.96

if.end.96:                                        ; preds = %do.end.95, %if.else.50
  br label %if.end.97

if.end.97:                                        ; preds = %if.end.96, %if.end.49
  br label %do.body.98

do.body.98:                                       ; preds = %if.end.97
  %76 = load %struct._object*, %struct._object** %mangled, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp99, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_refcnt100 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt100, align 8
  %dec101 = add i64 %78, -1
  store i64 %dec101, i64* %ob_refcnt100, align 8
  %cmp102 = icmp ne i64 %dec101, 0
  br i1 %cmp102, label %if.then.104, label %if.else.105

if.then.104:                                      ; preds = %do.body.98
  br label %if.end.108

if.else.105:                                      ; preds = %do.body.98
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  %ob_type106 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type106, align 8
  %tp_dealloc107 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc107, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp99, align 8
  call void %81(%struct._object* %82)
  br label %if.end.108

if.end.108:                                       ; preds = %if.else.105, %if.then.104
  br label %do.end.109

do.end.109:                                       ; preds = %if.end.108
  store i32 1, i32* %retval
  br label %return

error:                                            ; preds = %do.end.82, %if.then.64, %if.then.48, %do.end, %if.then.17, %if.then.8
  br label %do.body.110

do.body.110:                                      ; preds = %error
  %83 = load %struct._object*, %struct._object** %mangled, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp111, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_refcnt112 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt112, align 8
  %dec113 = add i64 %85, -1
  store i64 %dec113, i64* %ob_refcnt112, align 8
  %cmp114 = icmp ne i64 %dec113, 0
  br i1 %cmp114, label %if.then.116, label %if.else.117

if.then.116:                                      ; preds = %do.body.110
  br label %if.end.120

if.else.117:                                      ; preds = %do.body.110
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  %ob_type118 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type118, align 8
  %tp_dealloc119 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc119, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp111, align 8
  call void %88(%struct._object* %89)
  br label %if.end.120

if.end.120:                                       ; preds = %if.else.117, %if.then.116
  br label %do.end.121

do.end.121:                                       ; preds = %if.end.120
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.121, %do.end.109, %if.then
  %90 = load i32, i32* %retval
  ret i32 %90
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_annotations(%struct.symtable* %st, %struct._stmt* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %s.addr = alloca %struct._stmt*, align 8
  %a = alloca %struct._arguments*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._stmt* %s, %struct._stmt** %s.addr, align 8
  %0 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v = getelementptr inbounds %struct._stmt, %struct._stmt* %0, i32 0, i32 1
  %FunctionDef = bitcast %union.anon.33* %v to %struct.anon.34*
  %args = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef, i32 0, i32 1
  %1 = load %struct._arguments*, %struct._arguments** %args, align 8
  store %struct._arguments* %1, %struct._arguments** %a, align 8
  %2 = load %struct._arguments*, %struct._arguments** %a, align 8
  %args1 = getelementptr inbounds %struct._arguments, %struct._arguments* %2, i32 0, i32 0
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %args1, align 8
  %tobool = icmp ne %struct.asdl_seq* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %5 = load %struct._arguments*, %struct._arguments** %a, align 8
  %args2 = getelementptr inbounds %struct._arguments, %struct._arguments* %5, i32 0, i32 0
  %6 = load %struct.asdl_seq*, %struct.asdl_seq** %args2, align 8
  %call = call i32 @symtable_visit_argannotations(%struct.symtable* %4, %struct.asdl_seq* %6)
  %tobool3 = icmp ne i32 %call, 0
  br i1 %tobool3, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load %struct._arguments*, %struct._arguments** %a, align 8
  %vararg = getelementptr inbounds %struct._arguments, %struct._arguments* %7, i32 0, i32 1
  %8 = load %struct._arg*, %struct._arg** %vararg, align 8
  %tobool4 = icmp ne %struct._arg* %8, null
  br i1 %tobool4, label %land.lhs.true.5, label %if.end.15

land.lhs.true.5:                                  ; preds = %if.end
  %9 = load %struct._arguments*, %struct._arguments** %a, align 8
  %vararg6 = getelementptr inbounds %struct._arguments, %struct._arguments* %9, i32 0, i32 1
  %10 = load %struct._arg*, %struct._arg** %vararg6, align 8
  %annotation = getelementptr inbounds %struct._arg, %struct._arg* %10, i32 0, i32 1
  %11 = load %struct._expr*, %struct._expr** %annotation, align 8
  %tobool7 = icmp ne %struct._expr* %11, null
  br i1 %tobool7, label %if.then.8, label %if.end.15

if.then.8:                                        ; preds = %land.lhs.true.5
  %12 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %13 = load %struct._arguments*, %struct._arguments** %a, align 8
  %vararg9 = getelementptr inbounds %struct._arguments, %struct._arguments* %13, i32 0, i32 1
  %14 = load %struct._arg*, %struct._arg** %vararg9, align 8
  %annotation10 = getelementptr inbounds %struct._arg, %struct._arg* %14, i32 0, i32 1
  %15 = load %struct._expr*, %struct._expr** %annotation10, align 8
  %call11 = call i32 @symtable_visit_expr(%struct.symtable* %12, %struct._expr* %15)
  %tobool12 = icmp ne i32 %call11, 0
  br i1 %tobool12, label %if.end.14, label %if.then.13

if.then.13:                                       ; preds = %if.then.8
  %16 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %16, i32 0, i32 9
  %17 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %17, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.then.8
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %land.lhs.true.5, %if.end
  %18 = load %struct._arguments*, %struct._arguments** %a, align 8
  %kwarg = getelementptr inbounds %struct._arguments, %struct._arguments* %18, i32 0, i32 4
  %19 = load %struct._arg*, %struct._arg** %kwarg, align 8
  %tobool16 = icmp ne %struct._arg* %19, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.30

land.lhs.true.17:                                 ; preds = %if.end.15
  %20 = load %struct._arguments*, %struct._arguments** %a, align 8
  %kwarg18 = getelementptr inbounds %struct._arguments, %struct._arguments* %20, i32 0, i32 4
  %21 = load %struct._arg*, %struct._arg** %kwarg18, align 8
  %annotation19 = getelementptr inbounds %struct._arg, %struct._arg* %21, i32 0, i32 1
  %22 = load %struct._expr*, %struct._expr** %annotation19, align 8
  %tobool20 = icmp ne %struct._expr* %22, null
  br i1 %tobool20, label %if.then.21, label %if.end.30

if.then.21:                                       ; preds = %land.lhs.true.17
  %23 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %24 = load %struct._arguments*, %struct._arguments** %a, align 8
  %kwarg22 = getelementptr inbounds %struct._arguments, %struct._arguments* %24, i32 0, i32 4
  %25 = load %struct._arg*, %struct._arg** %kwarg22, align 8
  %annotation23 = getelementptr inbounds %struct._arg, %struct._arg* %25, i32 0, i32 1
  %26 = load %struct._expr*, %struct._expr** %annotation23, align 8
  %call24 = call i32 @symtable_visit_expr(%struct.symtable* %23, %struct._expr* %26)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %if.then.21
  %27 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth27 = getelementptr inbounds %struct.symtable, %struct.symtable* %27, i32 0, i32 9
  %28 = load i32, i32* %recursion_depth27, align 4
  %dec28 = add i32 %28, -1
  store i32 %dec28, i32* %recursion_depth27, align 4
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %if.then.21
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %land.lhs.true.17, %if.end.15
  %29 = load %struct._arguments*, %struct._arguments** %a, align 8
  %kwonlyargs = getelementptr inbounds %struct._arguments, %struct._arguments* %29, i32 0, i32 2
  %30 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs, align 8
  %tobool31 = icmp ne %struct.asdl_seq* %30, null
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.37

land.lhs.true.32:                                 ; preds = %if.end.30
  %31 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %32 = load %struct._arguments*, %struct._arguments** %a, align 8
  %kwonlyargs33 = getelementptr inbounds %struct._arguments, %struct._arguments* %32, i32 0, i32 2
  %33 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs33, align 8
  %call34 = call i32 @symtable_visit_argannotations(%struct.symtable* %31, %struct.asdl_seq* %33)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true.32
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true.32, %if.end.30
  %34 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v38 = getelementptr inbounds %struct._stmt, %struct._stmt* %34, i32 0, i32 1
  %FunctionDef39 = bitcast %union.anon.33* %v38 to %struct.anon.34*
  %returns = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef39, i32 0, i32 4
  %35 = load %struct._expr*, %struct._expr** %returns, align 8
  %tobool40 = icmp ne %struct._expr* %35, null
  br i1 %tobool40, label %if.then.41, label %if.end.51

if.then.41:                                       ; preds = %if.end.37
  %36 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %37 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %v42 = getelementptr inbounds %struct._stmt, %struct._stmt* %37, i32 0, i32 1
  %FunctionDef43 = bitcast %union.anon.33* %v42 to %struct.anon.34*
  %returns44 = getelementptr inbounds %struct.anon.34, %struct.anon.34* %FunctionDef43, i32 0, i32 4
  %38 = load %struct._expr*, %struct._expr** %returns44, align 8
  %call45 = call i32 @symtable_visit_expr(%struct.symtable* %36, %struct._expr* %38)
  %tobool46 = icmp ne i32 %call45, 0
  br i1 %tobool46, label %if.end.50, label %if.then.47

if.then.47:                                       ; preds = %if.then.41
  %39 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth48 = getelementptr inbounds %struct.symtable, %struct.symtable* %39, i32 0, i32 9
  %40 = load i32, i32* %recursion_depth48, align 4
  %dec49 = add i32 %40, -1
  store i32 %dec49, i32* %recursion_depth48, align 4
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.41
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.51, %if.then.47, %if.then.36, %if.then.26, %if.then.13, %if.then
  %41 = load i32, i32* %retval
  ret i32 %41
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_arguments(%struct.symtable* %st, %struct._arguments* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %a.addr = alloca %struct._arguments*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._arguments* %a, %struct._arguments** %a.addr, align 8
  %0 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %args = getelementptr inbounds %struct._arguments, %struct._arguments* %0, i32 0, i32 0
  %1 = load %struct.asdl_seq*, %struct.asdl_seq** %args, align 8
  %tobool = icmp ne %struct.asdl_seq* %1, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %3 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %args1 = getelementptr inbounds %struct._arguments, %struct._arguments* %3, i32 0, i32 0
  %4 = load %struct.asdl_seq*, %struct.asdl_seq** %args1, align 8
  %call = call i32 @symtable_visit_params(%struct.symtable* %2, %struct.asdl_seq* %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.end, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %5 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %kwonlyargs = getelementptr inbounds %struct._arguments, %struct._arguments* %5, i32 0, i32 2
  %6 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs, align 8
  %tobool3 = icmp ne %struct.asdl_seq* %6, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end.9

land.lhs.true.4:                                  ; preds = %if.end
  %7 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %8 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %kwonlyargs5 = getelementptr inbounds %struct._arguments, %struct._arguments* %8, i32 0, i32 2
  %9 = load %struct.asdl_seq*, %struct.asdl_seq** %kwonlyargs5, align 8
  %call6 = call i32 @symtable_visit_params(%struct.symtable* %7, %struct.asdl_seq* %9)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %land.lhs.true.4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %land.lhs.true.4, %if.end
  %10 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %vararg = getelementptr inbounds %struct._arguments, %struct._arguments* %10, i32 0, i32 1
  %11 = load %struct._arg*, %struct._arg** %vararg, align 8
  %tobool10 = icmp ne %struct._arg* %11, null
  br i1 %tobool10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.9
  %12 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %13 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %vararg12 = getelementptr inbounds %struct._arguments, %struct._arguments* %13, i32 0, i32 1
  %14 = load %struct._arg*, %struct._arg** %vararg12, align 8
  %arg = getelementptr inbounds %struct._arg, %struct._arg* %14, i32 0, i32 0
  %15 = load %struct._object*, %struct._object** %arg, align 8
  %call13 = call i32 @symtable_add_def(%struct.symtable* %12, %struct._object* %15, i32 4)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.then.11
  store i32 0, i32* %retval
  br label %return

if.end.16:                                        ; preds = %if.then.11
  %16 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %16, i32 0, i32 1
  %17 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_varargs = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %17, i32 0, i32 10
  %bf.load = load i8, i8* %ste_varargs, align 4
  %bf.clear = and i8 %bf.load, -9
  %bf.set = or i8 %bf.clear, 8
  store i8 %bf.set, i8* %ste_varargs, align 4
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  %18 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %kwarg = getelementptr inbounds %struct._arguments, %struct._arguments* %18, i32 0, i32 4
  %19 = load %struct._arg*, %struct._arg** %kwarg, align 8
  %tobool18 = icmp ne %struct._arg* %19, null
  br i1 %tobool18, label %if.then.19, label %if.end.30

if.then.19:                                       ; preds = %if.end.17
  %20 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %21 = load %struct._arguments*, %struct._arguments** %a.addr, align 8
  %kwarg20 = getelementptr inbounds %struct._arguments, %struct._arguments* %21, i32 0, i32 4
  %22 = load %struct._arg*, %struct._arg** %kwarg20, align 8
  %arg21 = getelementptr inbounds %struct._arg, %struct._arg* %22, i32 0, i32 0
  %23 = load %struct._object*, %struct._object** %arg21, align 8
  %call22 = call i32 @symtable_add_def(%struct.symtable* %20, %struct._object* %23, i32 4)
  %tobool23 = icmp ne i32 %call22, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.then.19
  store i32 0, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.19
  %24 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur26 = getelementptr inbounds %struct.symtable, %struct.symtable* %24, i32 0, i32 1
  %25 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur26, align 8
  %ste_varkeywords = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %25, i32 0, i32 10
  %bf.load27 = load i8, i8* %ste_varkeywords, align 4
  %bf.clear28 = and i8 %bf.load27, -17
  %bf.set29 = or i8 %bf.clear28, 16
  store i8 %bf.set29, i8* %ste_varkeywords, align 4
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.25, %if.end.17
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.24, %if.then.15, %if.then.8, %if.then
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_keyword(%struct.symtable* %st, %struct._keyword* %k) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %k.addr = alloca %struct._keyword*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._keyword* %k, %struct._keyword** %k.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._keyword*, %struct._keyword** %k.addr, align 8
  %value = getelementptr inbounds %struct._keyword, %struct._keyword* %1, i32 0, i32 1
  %2 = load %struct._expr*, %struct._expr** %value, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %0, %struct._expr* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %3, i32 0, i32 9
  %4 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_excepthandler(%struct.symtable* %st, %struct._excepthandler* %eh) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %eh.addr = alloca %struct._excepthandler*, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.asdl_seq*, align 8
  %elt = alloca %struct._stmt*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._excepthandler* %eh, %struct._excepthandler** %eh.addr, align 8
  %0 = load %struct._excepthandler*, %struct._excepthandler** %eh.addr, align 8
  %v = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %0, i32 0, i32 1
  %ExceptHandler = bitcast %union.anon.52* %v to %struct.anon.53*
  %type = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler, i32 0, i32 0
  %1 = load %struct._expr*, %struct._expr** %type, align 8
  %tobool = icmp ne %struct._expr* %1, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %3 = load %struct._excepthandler*, %struct._excepthandler** %eh.addr, align 8
  %v1 = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %3, i32 0, i32 1
  %ExceptHandler2 = bitcast %union.anon.52* %v1 to %struct.anon.53*
  %type3 = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler2, i32 0, i32 0
  %4 = load %struct._expr*, %struct._expr** %type3, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %2, %struct._expr* %4)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %5 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %5, i32 0, i32 9
  %6 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %6, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %entry
  %7 = load %struct._excepthandler*, %struct._excepthandler** %eh.addr, align 8
  %v7 = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %7, i32 0, i32 1
  %ExceptHandler8 = bitcast %union.anon.52* %v7 to %struct.anon.53*
  %name = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler8, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %name, align 8
  %tobool9 = icmp ne %struct._object* %8, null
  br i1 %tobool9, label %if.then.10, label %if.end.18

if.then.10:                                       ; preds = %if.end.6
  %9 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %10 = load %struct._excepthandler*, %struct._excepthandler** %eh.addr, align 8
  %v11 = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %10, i32 0, i32 1
  %ExceptHandler12 = bitcast %union.anon.52* %v11 to %struct.anon.53*
  %name13 = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler12, i32 0, i32 1
  %11 = load %struct._object*, %struct._object** %name13, align 8
  %call14 = call i32 @symtable_add_def(%struct.symtable* %9, %struct._object* %11, i32 2)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.then.10
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.10
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.6
  %12 = load %struct._excepthandler*, %struct._excepthandler** %eh.addr, align 8
  %v19 = getelementptr inbounds %struct._excepthandler, %struct._excepthandler* %12, i32 0, i32 1
  %ExceptHandler20 = bitcast %union.anon.52* %v19 to %struct.anon.53*
  %body = getelementptr inbounds %struct.anon.53, %struct.anon.53* %ExceptHandler20, i32 0, i32 2
  %13 = load %struct.asdl_seq*, %struct.asdl_seq** %body, align 8
  store %struct.asdl_seq* %13, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.18
  %14 = load i32, i32* %i, align 4
  %conv = sext i32 %14 to i64
  %15 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp = icmp eq %struct.asdl_seq* %15, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %16 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %16, i32 0, i32 0
  %17 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %17, %cond.false ]
  %cmp22 = icmp slt i64 %conv, %cond
  br i1 %cmp22, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %18 = load i32, i32* %i, align 4
  %idxprom = sext i32 %18 to i64
  %19 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %19, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %20 = load i8*, i8** %arrayidx, align 8
  %21 = bitcast i8* %20 to %struct._stmt*
  store %struct._stmt* %21, %struct._stmt** %elt, align 8
  %22 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %23 = load %struct._stmt*, %struct._stmt** %elt, align 8
  %call24 = call i32 @symtable_visit_stmt(%struct.symtable* %22, %struct._stmt* %23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end.29, label %if.then.26

if.then.26:                                       ; preds = %for.body
  %24 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth27 = getelementptr inbounds %struct.symtable, %struct.symtable* %24, i32 0, i32 9
  %25 = load i32, i32* %recursion_depth27, align 4
  %dec28 = add i32 %25, -1
  store i32 %dec28, i32* %recursion_depth27, align 4
  store i32 0, i32* %retval
  br label %return

if.end.29:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %26 = load i32, i32* %i, align 4
  %inc = add i32 %26, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.26, %if.then.16, %if.then.5
  %27 = load i32, i32* %retval
  ret i32 %27
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_alias(%struct.symtable* %st, %struct._alias* %a) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %a.addr = alloca %struct._alias*, align 8
  %store_name = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %dot = alloca i64, align 8
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %lineno = alloca i32, align 4
  %col_offset = alloca i32, align 4
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._alias* %a, %struct._alias** %a.addr, align 8
  %0 = load %struct._alias*, %struct._alias** %a.addr, align 8
  %asname = getelementptr inbounds %struct._alias, %struct._alias* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %asname, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %2 = load %struct._alias*, %struct._alias** %a.addr, align 8
  %name1 = getelementptr inbounds %struct._alias, %struct._alias* %2, i32 0, i32 0
  %3 = load %struct._object*, %struct._object** %name1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %4 = load %struct._alias*, %struct._alias** %a.addr, align 8
  %asname2 = getelementptr inbounds %struct._alias, %struct._alias* %4, i32 0, i32 1
  %5 = load %struct._object*, %struct._object** %asname2, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %3, %cond.true ], [ %5, %cond.false ]
  store %struct._object* %cond, %struct._object** %name, align 8
  %6 = load %struct._object*, %struct._object** %name, align 8
  %7 = load %struct._object*, %struct._object** %name, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyASCIIObject*
  %length = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %8, i32 0, i32 1
  %9 = load i64, i64* %length, align 8
  %call = call i64 @PyUnicode_FindChar(%struct._object* %6, i32 46, i64 0, i64 %9, i32 1)
  store i64 %call, i64* %dot, align 8
  %10 = load i64, i64* %dot, align 8
  %cmp3 = icmp ne i64 %10, -1
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %11 = load %struct._object*, %struct._object** %name, align 8
  %12 = load i64, i64* %dot, align 8
  %call4 = call %struct._object* @PyUnicode_Substring(%struct._object* %11, i64 0, i64 %12)
  store %struct._object* %call4, %struct._object** %store_name, align 8
  %13 = load %struct._object*, %struct._object** %store_name, align 8
  %tobool = icmp ne %struct._object* %13, null
  br i1 %tobool, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.else:                                          ; preds = %cond.end
  %14 = load %struct._object*, %struct._object** %name, align 8
  store %struct._object* %14, %struct._object** %store_name, align 8
  %15 = load %struct._object*, %struct._object** %store_name, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.end
  %17 = load %struct._object*, %struct._object** %name, align 8
  %call7 = call i32 @PyUnicode_CompareWithASCIIString(%struct._object* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.29, i32 0, i32 0))
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.then.9, label %if.else.16

if.then.9:                                        ; preds = %if.end.6
  %18 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %19 = load %struct._object*, %struct._object** %store_name, align 8
  %call10 = call i32 @symtable_add_def(%struct.symtable* %18, %struct._object* %19, i32 128)
  store i32 %call10, i32* %r, align 4
  br label %do.body

do.body:                                          ; preds = %if.then.9
  %20 = load %struct._object*, %struct._object** %store_name, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt11 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt11, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt11, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body
  br label %if.end.15

if.else.14:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.15

if.end.15:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.15
  %27 = load i32, i32* %r, align 4
  store i32 %27, i32* %retval
  br label %return

if.else.16:                                       ; preds = %if.end.6
  %28 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %28, i32 0, i32 1
  %29 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_type = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %29, i32 0, i32 7
  %30 = load i32, i32* %ste_type, align 4
  %cmp17 = icmp ne i32 %30, 2
  br i1 %cmp17, label %if.then.18, label %if.end.32

if.then.18:                                       ; preds = %if.else.16
  %31 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur19 = getelementptr inbounds %struct.symtable, %struct.symtable* %31, i32 0, i32 1
  %32 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur19, align 8
  %ste_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %32, i32 0, i32 11
  %33 = load i32, i32* %ste_lineno, align 4
  store i32 %33, i32* %lineno, align 4
  %34 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur20 = getelementptr inbounds %struct.symtable, %struct.symtable* %34, i32 0, i32 1
  %35 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur20, align 8
  %ste_col_offset = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %35, i32 0, i32 12
  %36 = load i32, i32* %ste_col_offset, align 4
  store i32 %36, i32* %col_offset, align 4
  %37 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  call void @PyErr_SetString(%struct._object* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0))
  %38 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %38, i32 0, i32 0
  %39 = load %struct._object*, %struct._object** %st_filename, align 8
  %40 = load i32, i32* %lineno, align 4
  %41 = load i32, i32* %col_offset, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %39, i32 %40, i32 %41)
  br label %do.body.21

do.body.21:                                       ; preds = %if.then.18
  %42 = load %struct._object*, %struct._object** %store_name, align 8
  store %struct._object* %42, %struct._object** %_py_decref_tmp22, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt23 = getelementptr inbounds %struct._object, %struct._object* %43, i32 0, i32 0
  %44 = load i64, i64* %ob_refcnt23, align 8
  %dec24 = add i64 %44, -1
  store i64 %dec24, i64* %ob_refcnt23, align 8
  %cmp25 = icmp ne i64 %dec24, 0
  br i1 %cmp25, label %if.then.26, label %if.else.27

if.then.26:                                       ; preds = %do.body.21
  br label %if.end.30

if.else.27:                                       ; preds = %do.body.21
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type28 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 1
  %46 = load %struct._typeobject*, %struct._typeobject** %ob_type28, align 8
  %tp_dealloc29 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %46, i32 0, i32 4
  %47 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc29, align 8
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %47(%struct._object* %48)
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.27, %if.then.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.else.16
  %49 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur33 = getelementptr inbounds %struct.symtable, %struct.symtable* %49, i32 0, i32 1
  %50 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur33, align 8
  %ste_unoptimized = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %50, i32 0, i32 8
  %51 = load i32, i32* %ste_unoptimized, align 4
  %or = or i32 %51, 1
  store i32 %or, i32* %ste_unoptimized, align 4
  br label %do.body.34

do.body.34:                                       ; preds = %if.end.32
  %52 = load %struct._object*, %struct._object** %store_name, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp35, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %54, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.34
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8
  call void %57(%struct._object* %58)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.44, %do.end.31, %do.end, %if.then.5
  %59 = load i32, i32* %retval
  ret i32 %59
}

; Function Attrs: nounwind uwtable
define internal i64 @symtable_lookup(%struct.symtable* %st, %struct._object* %name) #0 {
entry:
  %retval = alloca i64, align 8
  %st.addr = alloca %struct.symtable*, align 8
  %name.addr = alloca %struct._object*, align 8
  %o = alloca %struct._object*, align 8
  %mangled = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_private = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 7
  %1 = load %struct._object*, %struct._object** %st_private, align 8
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %call = call %struct._object* @_Py_Mangle(%struct._object* %1, %struct._object* %2)
  store %struct._object* %call, %struct._object** %mangled, align 8
  %3 = load %struct._object*, %struct._object** %mangled, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %4, i32 0, i32 1
  %5 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_symbols = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %5, i32 0, i32 2
  %6 = load %struct._object*, %struct._object** %ste_symbols, align 8
  %7 = load %struct._object*, %struct._object** %mangled, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %6, %struct._object* %7)
  store %struct._object* %call1, %struct._object** %o, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %mangled, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  %15 = load %struct._object*, %struct._object** %o, align 8
  %tobool4 = icmp ne %struct._object* %15, null
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %do.end
  store i64 0, i64* %retval
  br label %return

if.end.6:                                         ; preds = %do.end
  %16 = load %struct._object*, %struct._object** %o, align 8
  %call7 = call i64 @PyLong_AsLong(%struct._object* %16)
  store i64 %call7, i64* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %17 = load i64, i64* %retval
  ret i64 %17
}

declare i8* @PyUnicode_AsUTF8(%struct._object*) #1

declare i32 @PyOS_snprintf(i8*, i64, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @symtable_warn(%struct.symtable* %st, i8* %msg, i32 %lineno) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %msg.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %message = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store i8* %msg, i8** %msg.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  %0 = load i8*, i8** %msg.addr, align 8
  %call = call %struct._object* @PyUnicode_FromString(i8* %0)
  store %struct._object* %call, %struct._object** %message, align 8
  %1 = load %struct._object*, %struct._object** %message, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_SyntaxWarning, align 8
  %3 = load %struct._object*, %struct._object** %message, align 8
  %4 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_filename = getelementptr inbounds %struct.symtable, %struct.symtable* %4, i32 0, i32 0
  %5 = load %struct._object*, %struct._object** %st_filename, align 8
  %6 = load i32, i32* %lineno.addr, align 4
  %call1 = call i32 @PyErr_WarnExplicitObject(%struct._object* %2, %struct._object* %3, %struct._object* %5, i32 %6, %struct._object* null, %struct._object* null)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.12

if.then.3:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.3
  %7 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %14 = load %struct._object*, %struct._object** @PyExc_SyntaxWarning, align 8
  %call7 = call i32 @PyErr_ExceptionMatches(%struct._object* %14)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %do.end
  %15 = load %struct._object*, %struct._object** @PyExc_SyntaxError, align 8
  %16 = load i8*, i8** %msg.addr, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* %16)
  %17 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_filename9 = getelementptr inbounds %struct.symtable, %struct.symtable* %17, i32 0, i32 0
  %18 = load %struct._object*, %struct._object** %st_filename9, align 8
  %19 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %19, i32 0, i32 1
  %20 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_lineno = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %20, i32 0, i32 11
  %21 = load i32, i32* %ste_lineno, align 4
  %22 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur10 = getelementptr inbounds %struct.symtable, %struct.symtable* %22, i32 0, i32 1
  %23 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur10, align 8
  %ste_col_offset = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %23, i32 0, i32 12
  %24 = load i32, i32* %ste_col_offset, align 4
  call void @PyErr_SyntaxLocationObject(%struct._object* %18, i32 %21, i32 %24)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.8, %do.end
  store i32 0, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  br label %do.body.13

do.body.13:                                       ; preds = %if.end.12
  %25 = load %struct._object*, %struct._object** %message, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp14, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %27, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %30(%struct._object* %31)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.23, %if.end.11, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_record_directive(%struct.symtable* %st, %struct._object* %name, %struct._stmt* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %name.addr = alloca %struct._object*, align 8
  %s.addr = alloca %struct._stmt*, align 8
  %data = alloca %struct._object*, align 8
  %res = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._stmt* %s, %struct._stmt** %s.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 1
  %1 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_directives = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %1, i32 0, i32 6
  %2 = load %struct._object*, %struct._object** %ste_directives, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.end.7, label %if.then

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyList_New(i64 0)
  %3 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur1 = getelementptr inbounds %struct.symtable, %struct.symtable* %3, i32 0, i32 1
  %4 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur1, align 8
  %ste_directives2 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %4, i32 0, i32 6
  store %struct._object* %call, %struct._object** %ste_directives2, align 8
  %5 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur3 = getelementptr inbounds %struct.symtable, %struct.symtable* %5, i32 0, i32 1
  %6 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur3, align 8
  %ste_directives4 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %6, i32 0, i32 6
  %7 = load %struct._object*, %struct._object** %ste_directives4, align 8
  %tobool5 = icmp ne %struct._object* %7, null
  br i1 %tobool5, label %if.end, label %if.then.6

if.then.6:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.7

if.end.7:                                         ; preds = %if.end, %entry
  %8 = load %struct._object*, %struct._object** %name.addr, align 8
  %9 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %lineno = getelementptr inbounds %struct._stmt, %struct._stmt* %9, i32 0, i32 2
  %10 = load i32, i32* %lineno, align 4
  %11 = load %struct._stmt*, %struct._stmt** %s.addr, align 8
  %col_offset = getelementptr inbounds %struct._stmt, %struct._stmt* %11, i32 0, i32 3
  %12 = load i32, i32* %col_offset, align 4
  %call8 = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), %struct._object* %8, i32 %10, i32 %12)
  store %struct._object* %call8, %struct._object** %data, align 8
  %13 = load %struct._object*, %struct._object** %data, align 8
  %tobool9 = icmp ne %struct._object* %13, null
  br i1 %tobool9, label %if.end.11, label %if.then.10

if.then.10:                                       ; preds = %if.end.7
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %14 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur12 = getelementptr inbounds %struct.symtable, %struct.symtable* %14, i32 0, i32 1
  %15 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur12, align 8
  %ste_directives13 = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %15, i32 0, i32 6
  %16 = load %struct._object*, %struct._object** %ste_directives13, align 8
  %17 = load %struct._object*, %struct._object** %data, align 8
  %call14 = call i32 @PyList_Append(%struct._object* %16, %struct._object* %17)
  store i32 %call14, i32* %res, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.11
  %18 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %18, %struct._object** %_py_decref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 0
  %20 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %20, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body
  br label %if.end.16

if.else:                                          ; preds = %do.body
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 4
  %23 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %23(%struct._object* %24)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %25 = load i32, i32* %res, align 4
  %cmp17 = icmp eq i32 %25, 0
  %conv = zext i1 %cmp17 to i32
  store i32 %conv, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.10, %if.then.6
  %26 = load i32, i32* %retval
  ret i32 %26
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_withitem(%struct.symtable* %st, %struct._withitem* %item) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %item.addr = alloca %struct._withitem*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._withitem* %item, %struct._withitem** %item.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._withitem*, %struct._withitem** %item.addr, align 8
  %context_expr = getelementptr inbounds %struct._withitem, %struct._withitem* %1, i32 0, i32 0
  %2 = load %struct._expr*, %struct._expr** %context_expr, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %0, %struct._expr* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %3, i32 0, i32 9
  %4 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._withitem*, %struct._withitem** %item.addr, align 8
  %optional_vars = getelementptr inbounds %struct._withitem, %struct._withitem* %5, i32 0, i32 1
  %6 = load %struct._expr*, %struct._expr** %optional_vars, align 8
  %tobool1 = icmp ne %struct._expr* %6, null
  br i1 %tobool1, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.end
  %7 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %8 = load %struct._withitem*, %struct._withitem** %item.addr, align 8
  %optional_vars3 = getelementptr inbounds %struct._withitem, %struct._withitem* %8, i32 0, i32 1
  %9 = load %struct._expr*, %struct._expr** %optional_vars3, align 8
  %call4 = call i32 @symtable_visit_expr(%struct.symtable* %7, %struct._expr* %9)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.9, label %if.then.6

if.then.6:                                        ; preds = %if.then.2
  %10 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth7 = getelementptr inbounds %struct.symtable, %struct.symtable* %10, i32 0, i32 9
  %11 = load i32, i32* %recursion_depth7, align 4
  %dec8 = add i32 %11, -1
  store i32 %dec8, i32* %recursion_depth7, align 4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.2
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.6, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

declare %struct._object* @_Py_Mangle(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_argannotations(%struct.symtable* %st, %struct.asdl_seq* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %args.addr = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %arg = alloca %struct._arg*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct.asdl_seq* %args, %struct.asdl_seq** %args.addr, align 8
  %0 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %tobool = icmp ne %struct.asdl_seq* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %3, i32 0, i32 0
  %4 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp slt i64 %conv, %cond
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct._arg*
  store %struct._arg* %8, %struct._arg** %arg, align 8
  %9 = load %struct._arg*, %struct._arg** %arg, align 8
  %annotation = getelementptr inbounds %struct._arg, %struct._arg* %9, i32 0, i32 1
  %10 = load %struct._expr*, %struct._expr** %annotation, align 8
  %tobool4 = icmp ne %struct._expr* %10, null
  br i1 %tobool4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %for.body
  %11 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %12 = load %struct._arg*, %struct._arg** %arg, align 8
  %annotation6 = getelementptr inbounds %struct._arg, %struct._arg* %12, i32 0, i32 1
  %13 = load %struct._expr*, %struct._expr** %annotation6, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %11, %struct._expr* %13)
  %tobool7 = icmp ne i32 %call, 0
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.5
  %14 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %14, i32 0, i32 9
  %15 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %15, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.10
  %16 = load i32, i32* %i, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.8, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_params(%struct.symtable* %st, %struct.asdl_seq* %args) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %args.addr = alloca %struct.asdl_seq*, align 8
  %i = alloca i32, align 4
  %arg = alloca %struct._arg*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct.asdl_seq* %args, %struct.asdl_seq** %args.addr, align 8
  %0 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %tobool = icmp ne %struct.asdl_seq* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %1 = load i32, i32* %i, align 4
  %conv = sext i32 %1 to i64
  %2 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %cmp = icmp eq %struct.asdl_seq* %2, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %3, i32 0, i32 0
  %4 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %4, %cond.false ]
  %cmp2 = icmp slt i64 %conv, %cond
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.asdl_seq*, %struct.asdl_seq** %args.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = bitcast i8* %7 to %struct._arg*
  store %struct._arg* %8, %struct._arg** %arg, align 8
  %9 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %10 = load %struct._arg*, %struct._arg** %arg, align 8
  %arg4 = getelementptr inbounds %struct._arg, %struct._arg* %10, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %arg4, align 8
  %call = call i32 @symtable_add_def(%struct.symtable* %9, %struct._object* %11, i32 4)
  %tobool5 = icmp ne i32 %call, 0
  br i1 %tobool5, label %if.end.7, label %if.then.6

if.then.6:                                        ; preds = %for.body
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.7
  %12 = load i32, i32* %i, align 4
  %inc = add i32 %12, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.6, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

declare i64 @PyUnicode_FindChar(%struct._object*, i32, i64, i64, i32) #1

declare %struct._object* @PyUnicode_Substring(%struct._object*, i64, i64) #1

declare i32 @PyUnicode_CompareWithASCIIString(%struct._object*, i8*) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare i32 @PyErr_WarnExplicitObject(%struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, %struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_genexp(%struct.symtable* %st, %struct._expr* %e) #0 {
entry:
  %st.addr = alloca %struct.symtable*, align 8
  %e.addr = alloca %struct._expr*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._expr* %e, %struct._expr** %e.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %2 = load %struct._object*, %struct._object** @genexpr, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** @genexpr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.34, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @genexpr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %3, %cond.true ], [ %call, %cond.false ]
  %4 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %4, i32 0, i32 1
  %GeneratorExp = bitcast %union.anon.2* %v to %struct.anon.13*
  %generators = getelementptr inbounds %struct.anon.13, %struct.anon.13* %GeneratorExp, i32 0, i32 1
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %generators, align 8
  %6 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v1 = getelementptr inbounds %struct._expr, %struct._expr* %6, i32 0, i32 1
  %GeneratorExp2 = bitcast %union.anon.2* %v1 to %struct.anon.13*
  %elt = getelementptr inbounds %struct.anon.13, %struct.anon.13* %GeneratorExp2, i32 0, i32 0
  %7 = load %struct._expr*, %struct._expr** %elt, align 8
  %call3 = call i32 @symtable_handle_comprehension(%struct.symtable* %0, %struct._expr* %1, %struct._object* %cond, %struct.asdl_seq* %5, %struct._expr* %7, %struct._expr* null)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_listcomp(%struct.symtable* %st, %struct._expr* %e) #0 {
entry:
  %st.addr = alloca %struct.symtable*, align 8
  %e.addr = alloca %struct._expr*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._expr* %e, %struct._expr** %e.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %2 = load %struct._object*, %struct._object** @listcomp, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** @listcomp, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @listcomp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %3, %cond.true ], [ %call, %cond.false ]
  %4 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %4, i32 0, i32 1
  %ListComp = bitcast %union.anon.2* %v to %struct.anon.10*
  %generators = getelementptr inbounds %struct.anon.10, %struct.anon.10* %ListComp, i32 0, i32 1
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %generators, align 8
  %6 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v1 = getelementptr inbounds %struct._expr, %struct._expr* %6, i32 0, i32 1
  %ListComp2 = bitcast %union.anon.2* %v1 to %struct.anon.10*
  %elt = getelementptr inbounds %struct.anon.10, %struct.anon.10* %ListComp2, i32 0, i32 0
  %7 = load %struct._expr*, %struct._expr** %elt, align 8
  %call3 = call i32 @symtable_handle_comprehension(%struct.symtable* %0, %struct._expr* %1, %struct._object* %cond, %struct.asdl_seq* %5, %struct._expr* %7, %struct._expr* null)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_setcomp(%struct.symtable* %st, %struct._expr* %e) #0 {
entry:
  %st.addr = alloca %struct.symtable*, align 8
  %e.addr = alloca %struct._expr*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._expr* %e, %struct._expr** %e.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %2 = load %struct._object*, %struct._object** @setcomp, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** @setcomp, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @setcomp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %3, %cond.true ], [ %call, %cond.false ]
  %4 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %4, i32 0, i32 1
  %SetComp = bitcast %union.anon.2* %v to %struct.anon.11*
  %generators = getelementptr inbounds %struct.anon.11, %struct.anon.11* %SetComp, i32 0, i32 1
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %generators, align 8
  %6 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v1 = getelementptr inbounds %struct._expr, %struct._expr* %6, i32 0, i32 1
  %SetComp2 = bitcast %union.anon.2* %v1 to %struct.anon.11*
  %elt = getelementptr inbounds %struct.anon.11, %struct.anon.11* %SetComp2, i32 0, i32 0
  %7 = load %struct._expr*, %struct._expr** %elt, align 8
  %call3 = call i32 @symtable_handle_comprehension(%struct.symtable* %0, %struct._expr* %1, %struct._object* %cond, %struct.asdl_seq* %5, %struct._expr* %7, %struct._expr* null)
  ret i32 %call3
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_dictcomp(%struct.symtable* %st, %struct._expr* %e) #0 {
entry:
  %st.addr = alloca %struct.symtable*, align 8
  %e.addr = alloca %struct._expr*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._expr* %e, %struct._expr** %e.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %2 = load %struct._object*, %struct._object** @dictcomp, align 8
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %3 = load %struct._object*, %struct._object** @dictcomp, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @dictcomp, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %3, %cond.true ], [ %call, %cond.false ]
  %4 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v = getelementptr inbounds %struct._expr, %struct._expr* %4, i32 0, i32 1
  %DictComp = bitcast %union.anon.2* %v to %struct.anon.12*
  %generators = getelementptr inbounds %struct.anon.12, %struct.anon.12* %DictComp, i32 0, i32 2
  %5 = load %struct.asdl_seq*, %struct.asdl_seq** %generators, align 8
  %6 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v1 = getelementptr inbounds %struct._expr, %struct._expr* %6, i32 0, i32 1
  %DictComp2 = bitcast %union.anon.2* %v1 to %struct.anon.12*
  %key = getelementptr inbounds %struct.anon.12, %struct.anon.12* %DictComp2, i32 0, i32 0
  %7 = load %struct._expr*, %struct._expr** %key, align 8
  %8 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %v3 = getelementptr inbounds %struct._expr, %struct._expr* %8, i32 0, i32 1
  %DictComp4 = bitcast %union.anon.2* %v3 to %struct.anon.12*
  %value = getelementptr inbounds %struct.anon.12, %struct.anon.12* %DictComp4, i32 0, i32 1
  %9 = load %struct._expr*, %struct._expr** %value, align 8
  %call5 = call i32 @symtable_handle_comprehension(%struct.symtable* %0, %struct._expr* %1, %struct._object* %cond, %struct.asdl_seq* %5, %struct._expr* %7, %struct._expr* %9)
  ret i32 %call5
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_slice(%struct.symtable* %st, %struct._slice* %s) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %s.addr = alloca %struct._slice*, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.asdl_seq*, align 8
  %elt = alloca %struct._slice*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._slice* %s, %struct._slice** %s.addr, align 8
  %0 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %kind = getelementptr inbounds %struct._slice, %struct._slice* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  switch i32 %1, label %sw.epilog [
    i32 1, label %sw.bb
    i32 2, label %sw.bb.35
    i32 3, label %sw.bb.46
  ]

sw.bb:                                            ; preds = %entry
  %2 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v = getelementptr inbounds %struct._slice, %struct._slice* %2, i32 0, i32 1
  %Slice = bitcast %union.anon.24* %v to %struct.anon.25*
  %lower = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice, i32 0, i32 0
  %3 = load %struct._expr*, %struct._expr** %lower, align 8
  %tobool = icmp ne %struct._expr* %3, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %sw.bb
  %4 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %5 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v1 = getelementptr inbounds %struct._slice, %struct._slice* %5, i32 0, i32 1
  %Slice2 = bitcast %union.anon.24* %v1 to %struct.anon.25*
  %lower3 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice2, i32 0, i32 0
  %6 = load %struct._expr*, %struct._expr** %lower3, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %4, %struct._expr* %6)
  %tobool4 = icmp ne i32 %call, 0
  br i1 %tobool4, label %if.end, label %if.then.5

if.then.5:                                        ; preds = %if.then
  %7 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %7, i32 0, i32 9
  %8 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %8, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %sw.bb
  %9 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v7 = getelementptr inbounds %struct._slice, %struct._slice* %9, i32 0, i32 1
  %Slice8 = bitcast %union.anon.24* %v7 to %struct.anon.25*
  %upper = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice8, i32 0, i32 1
  %10 = load %struct._expr*, %struct._expr** %upper, align 8
  %tobool9 = icmp ne %struct._expr* %10, null
  br i1 %tobool9, label %if.then.10, label %if.end.20

if.then.10:                                       ; preds = %if.end.6
  %11 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %12 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v11 = getelementptr inbounds %struct._slice, %struct._slice* %12, i32 0, i32 1
  %Slice12 = bitcast %union.anon.24* %v11 to %struct.anon.25*
  %upper13 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice12, i32 0, i32 1
  %13 = load %struct._expr*, %struct._expr** %upper13, align 8
  %call14 = call i32 @symtable_visit_expr(%struct.symtable* %11, %struct._expr* %13)
  %tobool15 = icmp ne i32 %call14, 0
  br i1 %tobool15, label %if.end.19, label %if.then.16

if.then.16:                                       ; preds = %if.then.10
  %14 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth17 = getelementptr inbounds %struct.symtable, %struct.symtable* %14, i32 0, i32 9
  %15 = load i32, i32* %recursion_depth17, align 4
  %dec18 = add i32 %15, -1
  store i32 %dec18, i32* %recursion_depth17, align 4
  store i32 0, i32* %retval
  br label %return

if.end.19:                                        ; preds = %if.then.10
  br label %if.end.20

if.end.20:                                        ; preds = %if.end.19, %if.end.6
  %16 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v21 = getelementptr inbounds %struct._slice, %struct._slice* %16, i32 0, i32 1
  %Slice22 = bitcast %union.anon.24* %v21 to %struct.anon.25*
  %step = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice22, i32 0, i32 2
  %17 = load %struct._expr*, %struct._expr** %step, align 8
  %tobool23 = icmp ne %struct._expr* %17, null
  br i1 %tobool23, label %if.then.24, label %if.end.34

if.then.24:                                       ; preds = %if.end.20
  %18 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %19 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v25 = getelementptr inbounds %struct._slice, %struct._slice* %19, i32 0, i32 1
  %Slice26 = bitcast %union.anon.24* %v25 to %struct.anon.25*
  %step27 = getelementptr inbounds %struct.anon.25, %struct.anon.25* %Slice26, i32 0, i32 2
  %20 = load %struct._expr*, %struct._expr** %step27, align 8
  %call28 = call i32 @symtable_visit_expr(%struct.symtable* %18, %struct._expr* %20)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.end.33, label %if.then.30

if.then.30:                                       ; preds = %if.then.24
  %21 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth31 = getelementptr inbounds %struct.symtable, %struct.symtable* %21, i32 0, i32 9
  %22 = load i32, i32* %recursion_depth31, align 4
  %dec32 = add i32 %22, -1
  store i32 %dec32, i32* %recursion_depth31, align 4
  store i32 0, i32* %retval
  br label %return

if.end.33:                                        ; preds = %if.then.24
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.33, %if.end.20
  br label %sw.epilog

sw.bb.35:                                         ; preds = %entry
  %23 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v36 = getelementptr inbounds %struct._slice, %struct._slice* %23, i32 0, i32 1
  %ExtSlice = bitcast %union.anon.24* %v36 to %struct.anon.26*
  %dims = getelementptr inbounds %struct.anon.26, %struct.anon.26* %ExtSlice, i32 0, i32 0
  %24 = load %struct.asdl_seq*, %struct.asdl_seq** %dims, align 8
  store %struct.asdl_seq* %24, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %sw.bb.35
  %25 = load i32, i32* %i, align 4
  %conv = sext i32 %25 to i64
  %26 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp = icmp eq %struct.asdl_seq* %26, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %27 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %27, i32 0, i32 0
  %28 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %28, %cond.false ]
  %cmp38 = icmp slt i64 %conv, %cond
  br i1 %cmp38, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %29 = load i32, i32* %i, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %30, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %31 = load i8*, i8** %arrayidx, align 8
  %32 = bitcast i8* %31 to %struct._slice*
  store %struct._slice* %32, %struct._slice** %elt, align 8
  %33 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %34 = load %struct._slice*, %struct._slice** %elt, align 8
  %call40 = call i32 @symtable_visit_slice(%struct.symtable* %33, %struct._slice* %34)
  %tobool41 = icmp ne i32 %call40, 0
  br i1 %tobool41, label %if.end.45, label %if.then.42

if.then.42:                                       ; preds = %for.body
  %35 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth43 = getelementptr inbounds %struct.symtable, %struct.symtable* %35, i32 0, i32 9
  %36 = load i32, i32* %recursion_depth43, align 4
  %dec44 = add i32 %36, -1
  store i32 %dec44, i32* %recursion_depth43, align 4
  store i32 0, i32* %retval
  br label %return

if.end.45:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.45
  %37 = load i32, i32* %i, align 4
  %inc = add i32 %37, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  br label %sw.epilog

sw.bb.46:                                         ; preds = %entry
  %38 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %39 = load %struct._slice*, %struct._slice** %s.addr, align 8
  %v47 = getelementptr inbounds %struct._slice, %struct._slice* %39, i32 0, i32 1
  %Index = bitcast %union.anon.24* %v47 to %struct.anon.27*
  %value = getelementptr inbounds %struct.anon.27, %struct.anon.27* %Index, i32 0, i32 0
  %40 = load %struct._expr*, %struct._expr** %value, align 8
  %call48 = call i32 @symtable_visit_expr(%struct.symtable* %38, %struct._expr* %40)
  %tobool49 = icmp ne i32 %call48, 0
  br i1 %tobool49, label %if.end.53, label %if.then.50

if.then.50:                                       ; preds = %sw.bb.46
  %41 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth51 = getelementptr inbounds %struct.symtable, %struct.symtable* %41, i32 0, i32 9
  %42 = load i32, i32* %recursion_depth51, align 4
  %dec52 = add i32 %42, -1
  store i32 %dec52, i32* %recursion_depth51, align 4
  store i32 0, i32* %retval
  br label %return

if.end.53:                                        ; preds = %sw.bb.46
  br label %sw.epilog

sw.epilog:                                        ; preds = %entry, %if.end.53, %for.end, %if.end.34
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %sw.epilog, %if.then.50, %if.then.42, %if.then.30, %if.then.16, %if.then.5
  %43 = load i32, i32* %retval
  ret i32 %43
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_handle_comprehension(%struct.symtable* %st, %struct._expr* %e, %struct._object* %scope_name, %struct.asdl_seq* %generators, %struct._expr* %elt, %struct._expr* %value) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %e.addr = alloca %struct._expr*, align 8
  %scope_name.addr = alloca %struct._object*, align 8
  %generators.addr = alloca %struct.asdl_seq*, align 8
  %elt.addr = alloca %struct._expr*, align 8
  %value.addr = alloca %struct._expr*, align 8
  %is_generator = alloca i32, align 4
  %needs_tmp = alloca i32, align 4
  %outermost = alloca %struct._comprehension*, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.asdl_seq*, align 8
  %elt29 = alloca %struct._expr*, align 8
  %i38 = alloca i32, align 4
  %seq39 = alloca %struct.asdl_seq*, align 8
  %elt52 = alloca %struct._comprehension*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._expr* %e, %struct._expr** %e.addr, align 8
  store %struct._object* %scope_name, %struct._object** %scope_name.addr, align 8
  store %struct.asdl_seq* %generators, %struct.asdl_seq** %generators.addr, align 8
  store %struct._expr* %elt, %struct._expr** %elt.addr, align 8
  store %struct._expr* %value, %struct._expr** %value.addr, align 8
  %0 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %kind = getelementptr inbounds %struct._expr, %struct._expr* %0, i32 0, i32 0
  %1 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %1, 11
  %conv = zext i1 %cmp to i32
  store i32 %conv, i32* %is_generator, align 4
  %2 = load i32, i32* %is_generator, align 4
  %tobool = icmp ne i32 %2, 0
  %lnot = xor i1 %tobool, true
  %lnot.ext = zext i1 %lnot to i32
  store i32 %lnot.ext, i32* %needs_tmp, align 4
  %3 = load %struct.asdl_seq*, %struct.asdl_seq** %generators.addr, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %3, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 0
  %4 = load i8*, i8** %arrayidx, align 8
  %5 = bitcast i8* %4 to %struct._comprehension*
  store %struct._comprehension* %5, %struct._comprehension** %outermost, align 8
  %6 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %7 = load %struct._comprehension*, %struct._comprehension** %outermost, align 8
  %iter = getelementptr inbounds %struct._comprehension, %struct._comprehension* %7, i32 0, i32 1
  %8 = load %struct._expr*, %struct._expr** %iter, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %6, %struct._expr* %8)
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %9 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %9, i32 0, i32 9
  %10 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct._object*, %struct._object** %scope_name.addr, align 8
  %tobool2 = icmp ne %struct._object* %11, null
  br i1 %tobool2, label %lor.lhs.false, label %if.then.5

lor.lhs.false:                                    ; preds = %if.end
  %12 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %13 = load %struct._object*, %struct._object** %scope_name.addr, align 8
  %14 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %15 = bitcast %struct._expr* %14 to i8*
  %16 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %lineno = getelementptr inbounds %struct._expr, %struct._expr* %16, i32 0, i32 2
  %17 = load i32, i32* %lineno, align 4
  %18 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %col_offset = getelementptr inbounds %struct._expr, %struct._expr* %18, i32 0, i32 3
  %19 = load i32, i32* %col_offset, align 4
  %call3 = call i32 @symtable_enter_block(%struct.symtable* %12, %struct._object* %13, i32 0, i8* %15, i32 %17, i32 %19)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %lor.lhs.false, %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %lor.lhs.false
  %20 = load i32, i32* %is_generator, align 4
  %21 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %21, i32 0, i32 1
  %22 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_generator = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %22, i32 0, i32 10
  %23 = trunc i32 %20 to i8
  %bf.load = load i8, i8* %ste_generator, align 4
  %bf.value = and i8 %23, 1
  %bf.shl = shl i8 %bf.value, 2
  %bf.clear = and i8 %bf.load, -5
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, i8* %ste_generator, align 4
  %bf.result.cast = zext i8 %bf.value to i32
  %24 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %call7 = call i32 @symtable_implicit_arg(%struct.symtable* %24, i32 0)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end.11, label %if.then.9

if.then.9:                                        ; preds = %if.end.6
  %25 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %26 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %27 = bitcast %struct._expr* %26 to i8*
  %call10 = call i32 @symtable_exit_block(%struct.symtable* %25, i8* %27)
  store i32 0, i32* %retval
  br label %return

if.end.11:                                        ; preds = %if.end.6
  %28 = load i32, i32* %needs_tmp, align 4
  %tobool12 = icmp ne i32 %28, 0
  br i1 %tobool12, label %land.lhs.true, label %if.end.17

land.lhs.true:                                    ; preds = %if.end.11
  %29 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %call13 = call i32 @symtable_new_tmpname(%struct.symtable* %29)
  %tobool14 = icmp ne i32 %call13, 0
  br i1 %tobool14, label %if.end.17, label %if.then.15

if.then.15:                                       ; preds = %land.lhs.true
  %30 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %31 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %32 = bitcast %struct._expr* %31 to i8*
  %call16 = call i32 @symtable_exit_block(%struct.symtable* %30, i8* %32)
  store i32 0, i32* %retval
  br label %return

if.end.17:                                        ; preds = %land.lhs.true, %if.end.11
  %33 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %34 = load %struct._comprehension*, %struct._comprehension** %outermost, align 8
  %target = getelementptr inbounds %struct._comprehension, %struct._comprehension* %34, i32 0, i32 0
  %35 = load %struct._expr*, %struct._expr** %target, align 8
  %call18 = call i32 @symtable_visit_expr(%struct.symtable* %33, %struct._expr* %35)
  %tobool19 = icmp ne i32 %call18, 0
  br i1 %tobool19, label %if.end.23, label %if.then.20

if.then.20:                                       ; preds = %if.end.17
  %36 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth21 = getelementptr inbounds %struct.symtable, %struct.symtable* %36, i32 0, i32 9
  %37 = load i32, i32* %recursion_depth21, align 4
  %dec22 = add i32 %37, -1
  store i32 %dec22, i32* %recursion_depth21, align 4
  store i32 0, i32* %retval
  br label %return

if.end.23:                                        ; preds = %if.end.17
  %38 = load %struct._comprehension*, %struct._comprehension** %outermost, align 8
  %ifs = getelementptr inbounds %struct._comprehension, %struct._comprehension* %38, i32 0, i32 2
  %39 = load %struct.asdl_seq*, %struct.asdl_seq** %ifs, align 8
  store %struct.asdl_seq* %39, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.23
  %40 = load i32, i32* %i, align 4
  %conv24 = sext i32 %40 to i64
  %41 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp25 = icmp eq %struct.asdl_seq* %41, null
  br i1 %cmp25, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %42 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %42, i32 0, i32 0
  %43 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %43, %cond.false ]
  %cmp27 = icmp slt i64 %conv24, %cond
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %44 = load i32, i32* %i, align 4
  %idxprom = sext i32 %44 to i64
  %45 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements30 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %45, i32 0, i32 1
  %arrayidx31 = getelementptr [1 x i8*], [1 x i8*]* %elements30, i32 0, i64 %idxprom
  %46 = load i8*, i8** %arrayidx31, align 8
  %47 = bitcast i8* %46 to %struct._expr*
  store %struct._expr* %47, %struct._expr** %elt29, align 8
  %48 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %49 = load %struct._expr*, %struct._expr** %elt29, align 8
  %call32 = call i32 @symtable_visit_expr(%struct.symtable* %48, %struct._expr* %49)
  %tobool33 = icmp ne i32 %call32, 0
  br i1 %tobool33, label %if.end.37, label %if.then.34

if.then.34:                                       ; preds = %for.body
  %50 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth35 = getelementptr inbounds %struct.symtable, %struct.symtable* %50, i32 0, i32 9
  %51 = load i32, i32* %recursion_depth35, align 4
  %dec36 = add i32 %51, -1
  store i32 %dec36, i32* %recursion_depth35, align 4
  store i32 0, i32* %retval
  br label %return

if.end.37:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.37
  %52 = load i32, i32* %i, align 4
  %inc = add i32 %52, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  %53 = load %struct.asdl_seq*, %struct.asdl_seq** %generators.addr, align 8
  store %struct.asdl_seq* %53, %struct.asdl_seq** %seq39, align 8
  store i32 1, i32* %i38, align 4
  br label %for.cond.40

for.cond.40:                                      ; preds = %for.inc.62, %for.end
  %54 = load i32, i32* %i38, align 4
  %conv41 = sext i32 %54 to i64
  %55 = load %struct.asdl_seq*, %struct.asdl_seq** %seq39, align 8
  %cmp42 = icmp eq %struct.asdl_seq* %55, null
  br i1 %cmp42, label %cond.true.44, label %cond.false.45

cond.true.44:                                     ; preds = %for.cond.40
  br label %cond.end.47

cond.false.45:                                    ; preds = %for.cond.40
  %56 = load %struct.asdl_seq*, %struct.asdl_seq** %seq39, align 8
  %size46 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %56, i32 0, i32 0
  %57 = load i64, i64* %size46, align 8
  br label %cond.end.47

cond.end.47:                                      ; preds = %cond.false.45, %cond.true.44
  %cond48 = phi i64 [ 0, %cond.true.44 ], [ %57, %cond.false.45 ]
  %cmp49 = icmp slt i64 %conv41, %cond48
  br i1 %cmp49, label %for.body.51, label %for.end.64

for.body.51:                                      ; preds = %cond.end.47
  %58 = load i32, i32* %i38, align 4
  %idxprom53 = sext i32 %58 to i64
  %59 = load %struct.asdl_seq*, %struct.asdl_seq** %seq39, align 8
  %elements54 = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %59, i32 0, i32 1
  %arrayidx55 = getelementptr [1 x i8*], [1 x i8*]* %elements54, i32 0, i64 %idxprom53
  %60 = load i8*, i8** %arrayidx55, align 8
  %61 = bitcast i8* %60 to %struct._comprehension*
  store %struct._comprehension* %61, %struct._comprehension** %elt52, align 8
  %62 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %63 = load %struct._comprehension*, %struct._comprehension** %elt52, align 8
  %call56 = call i32 @symtable_visit_comprehension(%struct.symtable* %62, %struct._comprehension* %63)
  %tobool57 = icmp ne i32 %call56, 0
  br i1 %tobool57, label %if.end.61, label %if.then.58

if.then.58:                                       ; preds = %for.body.51
  %64 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth59 = getelementptr inbounds %struct.symtable, %struct.symtable* %64, i32 0, i32 9
  %65 = load i32, i32* %recursion_depth59, align 4
  %dec60 = add i32 %65, -1
  store i32 %dec60, i32* %recursion_depth59, align 4
  store i32 0, i32* %retval
  br label %return

if.end.61:                                        ; preds = %for.body.51
  br label %for.inc.62

for.inc.62:                                       ; preds = %if.end.61
  %66 = load i32, i32* %i38, align 4
  %inc63 = add i32 %66, 1
  store i32 %inc63, i32* %i38, align 4
  br label %for.cond.40

for.end.64:                                       ; preds = %cond.end.47
  %67 = load %struct._expr*, %struct._expr** %value.addr, align 8
  %tobool65 = icmp ne %struct._expr* %67, null
  br i1 %tobool65, label %if.then.66, label %if.end.73

if.then.66:                                       ; preds = %for.end.64
  %68 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %69 = load %struct._expr*, %struct._expr** %value.addr, align 8
  %call67 = call i32 @symtable_visit_expr(%struct.symtable* %68, %struct._expr* %69)
  %tobool68 = icmp ne i32 %call67, 0
  br i1 %tobool68, label %if.end.72, label %if.then.69

if.then.69:                                       ; preds = %if.then.66
  %70 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth70 = getelementptr inbounds %struct.symtable, %struct.symtable* %70, i32 0, i32 9
  %71 = load i32, i32* %recursion_depth70, align 4
  %dec71 = add i32 %71, -1
  store i32 %dec71, i32* %recursion_depth70, align 4
  store i32 0, i32* %retval
  br label %return

if.end.72:                                        ; preds = %if.then.66
  br label %if.end.73

if.end.73:                                        ; preds = %if.end.72, %for.end.64
  %72 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %73 = load %struct._expr*, %struct._expr** %elt.addr, align 8
  %call74 = call i32 @symtable_visit_expr(%struct.symtable* %72, %struct._expr* %73)
  %tobool75 = icmp ne i32 %call74, 0
  br i1 %tobool75, label %if.end.79, label %if.then.76

if.then.76:                                       ; preds = %if.end.73
  %74 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth77 = getelementptr inbounds %struct.symtable, %struct.symtable* %74, i32 0, i32 9
  %75 = load i32, i32* %recursion_depth77, align 4
  %dec78 = add i32 %75, -1
  store i32 %dec78, i32* %recursion_depth77, align 4
  store i32 0, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.end.73
  %76 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %77 = load %struct._expr*, %struct._expr** %e.addr, align 8
  %78 = bitcast %struct._expr* %77 to i8*
  %call80 = call i32 @symtable_exit_block(%struct.symtable* %76, i8* %78)
  store i32 %call80, i32* %retval
  br label %return

return:                                           ; preds = %if.end.79, %if.then.76, %if.then.69, %if.then.58, %if.then.34, %if.then.20, %if.then.15, %if.then.9, %if.then.5, %if.then
  %79 = load i32, i32* %retval
  ret i32 %79
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_implicit_arg(%struct.symtable* %st, i32 %pos) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %pos.addr = alloca i32, align 4
  %id = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp8 = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store i32 %pos, i32* %pos.addr, align 4
  %0 = load i32, i32* %pos.addr, align 4
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i32 0, i32 0), i32 %0)
  store %struct._object* %call, %struct._object** %id, align 8
  %1 = load %struct._object*, %struct._object** %id, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %3 = load %struct._object*, %struct._object** %id, align 8
  %call1 = call i32 @symtable_add_def(%struct.symtable* %2, %struct._object* %3, i32 4)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end.6, label %if.then.2

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %4 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end.5

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end.5
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.6
  %11 = load %struct._object*, %struct._object** %id, align 8
  store %struct._object* %11, %struct._object** %_py_decref_tmp8, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0
  %13 = load i64, i64* %ob_refcnt9, align 8
  %dec10 = add i64 %13, -1
  store i64 %dec10, i64* %ob_refcnt9, align 8
  %cmp11 = icmp ne i64 %dec10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.7
  br label %if.end.16

if.else.13:                                       ; preds = %do.body.7
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp8, align 8
  call void %16(%struct._object* %17)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end.17, %do.end, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_new_tmpname(%struct.symtable* %st) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %tmpname = alloca [256 x i8], align 16
  %tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %st_cur = getelementptr inbounds %struct.symtable, %struct.symtable* %0, i32 0, i32 1
  %1 = load %struct._symtable_entry*, %struct._symtable_entry** %st_cur, align 8
  %ste_tmpname = getelementptr inbounds %struct._symtable_entry, %struct._symtable_entry* %1, i32 0, i32 15
  %2 = load i32, i32* %ste_tmpname, align 4
  %inc = add i32 %2, 1
  store i32 %inc, i32* %ste_tmpname, align 4
  %call = call i32 (i8*, i64, i8*, ...) @PyOS_snprintf(i8* %arraydecay, i64 256, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i32 %inc)
  %arraydecay1 = getelementptr inbounds [256 x i8], [256 x i8]* %tmpname, i32 0, i32 0
  %call2 = call %struct._object* @PyUnicode_InternFromString(i8* %arraydecay1)
  store %struct._object* %call2, %struct._object** %tmp, align 8
  %3 = load %struct._object*, %struct._object** %tmp, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %5 = load %struct._object*, %struct._object** %tmp, align 8
  %call3 = call i32 @symtable_add_def(%struct.symtable* %4, %struct._object* %5, i32 2)
  %tobool4 = icmp ne i32 %call3, 0
  br i1 %tobool4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.6
  %6 = load %struct._object*, %struct._object** %tmp, align 8
  store %struct._object* %6, %struct._object** %_py_decref_tmp, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %8, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 4
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %11(%struct._object* %12)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.5, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @symtable_visit_comprehension(%struct.symtable* %st, %struct._comprehension* %lc) #0 {
entry:
  %retval = alloca i32, align 4
  %st.addr = alloca %struct.symtable*, align 8
  %lc.addr = alloca %struct._comprehension*, align 8
  %i = alloca i32, align 4
  %seq = alloca %struct.asdl_seq*, align 8
  %elt = alloca %struct._expr*, align 8
  store %struct.symtable* %st, %struct.symtable** %st.addr, align 8
  store %struct._comprehension* %lc, %struct._comprehension** %lc.addr, align 8
  %0 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %1 = load %struct._comprehension*, %struct._comprehension** %lc.addr, align 8
  %target = getelementptr inbounds %struct._comprehension, %struct._comprehension* %1, i32 0, i32 0
  %2 = load %struct._expr*, %struct._expr** %target, align 8
  %call = call i32 @symtable_visit_expr(%struct.symtable* %0, %struct._expr* %2)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth = getelementptr inbounds %struct.symtable, %struct.symtable* %3, i32 0, i32 9
  %4 = load i32, i32* %recursion_depth, align 4
  %dec = add i32 %4, -1
  store i32 %dec, i32* %recursion_depth, align 4
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %6 = load %struct._comprehension*, %struct._comprehension** %lc.addr, align 8
  %iter = getelementptr inbounds %struct._comprehension, %struct._comprehension* %6, i32 0, i32 1
  %7 = load %struct._expr*, %struct._expr** %iter, align 8
  %call1 = call i32 @symtable_visit_expr(%struct.symtable* %5, %struct._expr* %7)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.6, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %8 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth4 = getelementptr inbounds %struct.symtable, %struct.symtable* %8, i32 0, i32 9
  %9 = load i32, i32* %recursion_depth4, align 4
  %dec5 = add i32 %9, -1
  store i32 %dec5, i32* %recursion_depth4, align 4
  store i32 0, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %10 = load %struct._comprehension*, %struct._comprehension** %lc.addr, align 8
  %ifs = getelementptr inbounds %struct._comprehension, %struct._comprehension* %10, i32 0, i32 2
  %11 = load %struct.asdl_seq*, %struct.asdl_seq** %ifs, align 8
  store %struct.asdl_seq* %11, %struct.asdl_seq** %seq, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.6
  %12 = load i32, i32* %i, align 4
  %conv = sext i32 %12 to i64
  %13 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %cmp = icmp eq %struct.asdl_seq* %13, null
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.cond
  br label %cond.end

cond.false:                                       ; preds = %for.cond
  %14 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %size = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %14, i32 0, i32 0
  %15 = load i64, i64* %size, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 0, %cond.true ], [ %15, %cond.false ]
  %cmp8 = icmp slt i64 %conv, %cond
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end
  %16 = load i32, i32* %i, align 4
  %idxprom = sext i32 %16 to i64
  %17 = load %struct.asdl_seq*, %struct.asdl_seq** %seq, align 8
  %elements = getelementptr inbounds %struct.asdl_seq, %struct.asdl_seq* %17, i32 0, i32 1
  %arrayidx = getelementptr [1 x i8*], [1 x i8*]* %elements, i32 0, i64 %idxprom
  %18 = load i8*, i8** %arrayidx, align 8
  %19 = bitcast i8* %18 to %struct._expr*
  store %struct._expr* %19, %struct._expr** %elt, align 8
  %20 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %21 = load %struct._expr*, %struct._expr** %elt, align 8
  %call10 = call i32 @symtable_visit_expr(%struct.symtable* %20, %struct._expr* %21)
  %tobool11 = icmp ne i32 %call10, 0
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %for.body
  %22 = load %struct.symtable*, %struct.symtable** %st.addr, align 8
  %recursion_depth13 = getelementptr inbounds %struct.symtable, %struct.symtable* %22, i32 0, i32 9
  %23 = load i32, i32* %recursion_depth13, align 4
  %dec14 = add i32 %23, -1
  store i32 %dec14, i32* %recursion_depth13, align 4
  store i32 0, i32* %retval
  br label %return

if.end.15:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.15
  %24 = load i32, i32* %i, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.12, %if.then.3, %if.then
  %25 = load i32, i32* %retval
  ret i32 %25
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139692}
!2 = !{i32 139532}
