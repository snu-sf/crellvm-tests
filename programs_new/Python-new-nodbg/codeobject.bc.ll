; ModuleID = './codeobject.bc'
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
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyASCIIObject = type { %struct._object, i64, i64, %struct.anon, i32* }
%struct.anon = type { i32 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyUnicodeObject = type { %struct.PyCompactUnicodeObject, %union.anon }
%struct.PyCompactUnicodeObject = type { %struct.PyASCIIObject, i64, i8*, i64 }
%union.anon = type { i8* }
%struct._addr_pair = type { i32, i32 }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@.str = private unnamed_addr constant [21 x i8] c"Objects/codeobject.c\00", align 1
@PyCode_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i64 144, i64 0, void (%struct._object*)* bitcast (void (%struct.PyCodeObject*)* @code_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyCodeObject*)* @code_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* bitcast (i64 (%struct.PyCodeObject*)* @code_hash to i64 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([223 x i8], [223 x i8]* @code_doc, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* @code_richcompare, i64 136, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @code_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([16 x %struct.PyMemberDef], [16 x %struct.PyMemberDef]* @code_memberlist, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @code_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyCode_NewEmpty.emptystring = internal global %struct._object* null, align 8
@PyCode_NewEmpty.nulltuple = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PyType_Type = external global %struct._typeobject, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"code\00", align 1
@code_doc = internal global [223 x i8] c"code(argcount, kwonlyargcount, nlocals, stacksize, flags, codestring,\0A      constants, names, varnames, filename, name, firstlineno,\0A      lnotab[, freevars[, cellvars]])\0A\0ACreate a code object.  Not for the faint of heart.\00", align 16
@code_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyCodeObject*, i8*)* @code_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* null }, %struct.PyMethodDef zeroinitializer], align 16
@code_memberlist = internal global [16 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i32 0, i32 0), i32 1, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 1, i64 20, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i32 1, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i32 1, i64 28, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i32 0, i32 0), i32 1, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 40, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 6, i64 48, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i32 6, i64 56, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i32 6, i64 64, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 6, i64 72, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 6, i64 80, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i32 6, i64 96, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 6, i64 104, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0), i32 1, i64 112, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i32 6, i64 120, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@PyUnicode_Type = external global %struct._typeobject, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"non-string found in code slot\00", align 1
@all_name_chars.ok_name_char = internal global [256 x i8] zeroinitializer, align 16
@all_name_chars.name_chars = internal global i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.4, i32 0, i32 0), align 8
@.str.4 = private unnamed_addr constant [64 x i8] c"0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"<code object %U at %p, file \22%U\22, line %d>\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"<code object %U at %p, file ???, line %d>\00", align 1
@_Py_NotImplementedStruct = external global %struct._object, align 8
@_Py_TrueStruct = external global %struct._longobject, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"co_argcount\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"co_kwonlyargcount\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"co_nlocals\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"co_stacksize\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"co_flags\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"co_code\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"co_consts\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"co_names\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"co_varnames\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"co_freevars\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"co_cellvars\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"co_filename\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"co_name\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"co_firstlineno\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"co_lnotab\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"iiiiiSO!O!O!UUiS|O!O!:code\00", align 1
@PyTuple_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.24 = private unnamed_addr constant [36 x i8] c"code: argcount must not be negative\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"code: kwonlyargcount must not be negative\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"code: nlocals must not be negative\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [52 x i8] c"name tuples must contain only strings, not '%.500s'\00", align 1

; Function Attrs: nounwind uwtable
define %struct.PyCodeObject* @PyCode_New(i32 %argcount, i32 %kwonlyargcount, i32 %nlocals, i32 %stacksize, i32 %flags, %struct._object* %code, %struct._object* %consts, %struct._object* %names, %struct._object* %varnames, %struct._object* %freevars, %struct._object* %cellvars, %struct._object* %filename, %struct._object* %name, i32 %firstlineno, %struct._object* %lnotab) #0 {
entry:
  %retval = alloca %struct.PyCodeObject*, align 8
  %argcount.addr = alloca i32, align 4
  %kwonlyargcount.addr = alloca i32, align 4
  %nlocals.addr = alloca i32, align 4
  %stacksize.addr = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %code.addr = alloca %struct._object*, align 8
  %consts.addr = alloca %struct._object*, align 8
  %names.addr = alloca %struct._object*, align 8
  %varnames.addr = alloca %struct._object*, align 8
  %freevars.addr = alloca %struct._object*, align 8
  %cellvars.addr = alloca %struct._object*, align 8
  %filename.addr = alloca %struct._object*, align 8
  %name.addr = alloca %struct._object*, align 8
  %firstlineno.addr = alloca i32, align 4
  %lnotab.addr = alloca %struct._object*, align 8
  %co = alloca %struct.PyCodeObject*, align 8
  %cell2arg = alloca i8*, align 8
  %i = alloca i64, align 8
  %n_cellvars = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  %total_args = alloca i64, align 8
  %alloc_size = alloca i64, align 8
  %used_cell2arg = alloca i32, align 4
  %j = alloca i64, align 8
  %cell = alloca %struct._object*, align 8
  %arg = alloca %struct._object*, align 8
  store i32 %argcount, i32* %argcount.addr, align 4
  store i32 %kwonlyargcount, i32* %kwonlyargcount.addr, align 4
  store i32 %nlocals, i32* %nlocals.addr, align 4
  store i32 %stacksize, i32* %stacksize.addr, align 4
  store i32 %flags, i32* %flags.addr, align 4
  store %struct._object* %code, %struct._object** %code.addr, align 8
  store %struct._object* %consts, %struct._object** %consts.addr, align 8
  store %struct._object* %names, %struct._object** %names.addr, align 8
  store %struct._object* %varnames, %struct._object** %varnames.addr, align 8
  store %struct._object* %freevars, %struct._object** %freevars.addr, align 8
  store %struct._object* %cellvars, %struct._object** %cellvars.addr, align 8
  store %struct._object* %filename, %struct._object** %filename.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store i32 %firstlineno, i32* %firstlineno.addr, align 4
  store %struct._object* %lnotab, %struct._object** %lnotab.addr, align 8
  store i8* null, i8** %cell2arg, align 8
  %0 = load i32, i32* %argcount.addr, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, i32* %kwonlyargcount.addr, align 4
  %cmp1 = icmp slt i32 %1, 0
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %lor.lhs.false
  %2 = load i32, i32* %nlocals.addr, align 4
  %cmp3 = icmp slt i32 %2, 0
  br i1 %cmp3, label %if.then, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %lor.lhs.false.2
  %3 = load %struct._object*, %struct._object** %code.addr, align 8
  %cmp5 = icmp eq %struct._object* %3, null
  br i1 %cmp5, label %if.then, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false.4
  %4 = load %struct._object*, %struct._object** %consts.addr, align 8
  %cmp7 = icmp eq %struct._object* %4, null
  br i1 %cmp7, label %if.then, label %lor.lhs.false.8

lor.lhs.false.8:                                  ; preds = %lor.lhs.false.6
  %5 = load %struct._object*, %struct._object** %consts.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 19
  %7 = load i64, i64* %tp_flags, align 8
  %and = and i64 %7, 67108864
  %cmp9 = icmp ne i64 %and, 0
  br i1 %cmp9, label %lor.lhs.false.10, label %if.then

lor.lhs.false.10:                                 ; preds = %lor.lhs.false.8
  %8 = load %struct._object*, %struct._object** %names.addr, align 8
  %cmp11 = icmp eq %struct._object* %8, null
  br i1 %cmp11, label %if.then, label %lor.lhs.false.12

lor.lhs.false.12:                                 ; preds = %lor.lhs.false.10
  %9 = load %struct._object*, %struct._object** %names.addr, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_flags14 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 19
  %11 = load i64, i64* %tp_flags14, align 8
  %and15 = and i64 %11, 67108864
  %cmp16 = icmp ne i64 %and15, 0
  br i1 %cmp16, label %lor.lhs.false.17, label %if.then

lor.lhs.false.17:                                 ; preds = %lor.lhs.false.12
  %12 = load %struct._object*, %struct._object** %varnames.addr, align 8
  %cmp18 = icmp eq %struct._object* %12, null
  br i1 %cmp18, label %if.then, label %lor.lhs.false.19

lor.lhs.false.19:                                 ; preds = %lor.lhs.false.17
  %13 = load %struct._object*, %struct._object** %varnames.addr, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_flags21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19
  %15 = load i64, i64* %tp_flags21, align 8
  %and22 = and i64 %15, 67108864
  %cmp23 = icmp ne i64 %and22, 0
  br i1 %cmp23, label %lor.lhs.false.24, label %if.then

lor.lhs.false.24:                                 ; preds = %lor.lhs.false.19
  %16 = load %struct._object*, %struct._object** %freevars.addr, align 8
  %cmp25 = icmp eq %struct._object* %16, null
  br i1 %cmp25, label %if.then, label %lor.lhs.false.26

lor.lhs.false.26:                                 ; preds = %lor.lhs.false.24
  %17 = load %struct._object*, %struct._object** %freevars.addr, align 8
  %ob_type27 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type27, align 8
  %tp_flags28 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 19
  %19 = load i64, i64* %tp_flags28, align 8
  %and29 = and i64 %19, 67108864
  %cmp30 = icmp ne i64 %and29, 0
  br i1 %cmp30, label %lor.lhs.false.31, label %if.then

lor.lhs.false.31:                                 ; preds = %lor.lhs.false.26
  %20 = load %struct._object*, %struct._object** %cellvars.addr, align 8
  %cmp32 = icmp eq %struct._object* %20, null
  br i1 %cmp32, label %if.then, label %lor.lhs.false.33

lor.lhs.false.33:                                 ; preds = %lor.lhs.false.31
  %21 = load %struct._object*, %struct._object** %cellvars.addr, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 1
  %22 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_flags35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %22, i32 0, i32 19
  %23 = load i64, i64* %tp_flags35, align 8
  %and36 = and i64 %23, 67108864
  %cmp37 = icmp ne i64 %and36, 0
  br i1 %cmp37, label %lor.lhs.false.38, label %if.then

lor.lhs.false.38:                                 ; preds = %lor.lhs.false.33
  %24 = load %struct._object*, %struct._object** %name.addr, align 8
  %cmp39 = icmp eq %struct._object* %24, null
  br i1 %cmp39, label %if.then, label %lor.lhs.false.40

lor.lhs.false.40:                                 ; preds = %lor.lhs.false.38
  %25 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_flags42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 19
  %27 = load i64, i64* %tp_flags42, align 8
  %and43 = and i64 %27, 268435456
  %cmp44 = icmp ne i64 %and43, 0
  br i1 %cmp44, label %lor.lhs.false.45, label %if.then

lor.lhs.false.45:                                 ; preds = %lor.lhs.false.40
  %28 = load %struct._object*, %struct._object** %filename.addr, align 8
  %cmp46 = icmp eq %struct._object* %28, null
  br i1 %cmp46, label %if.then, label %lor.lhs.false.47

lor.lhs.false.47:                                 ; preds = %lor.lhs.false.45
  %29 = load %struct._object*, %struct._object** %filename.addr, align 8
  %ob_type48 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type48, align 8
  %tp_flags49 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 19
  %31 = load i64, i64* %tp_flags49, align 8
  %and50 = and i64 %31, 268435456
  %cmp51 = icmp ne i64 %and50, 0
  br i1 %cmp51, label %lor.lhs.false.52, label %if.then

lor.lhs.false.52:                                 ; preds = %lor.lhs.false.47
  %32 = load %struct._object*, %struct._object** %lnotab.addr, align 8
  %cmp53 = icmp eq %struct._object* %32, null
  br i1 %cmp53, label %if.then, label %lor.lhs.false.54

lor.lhs.false.54:                                 ; preds = %lor.lhs.false.52
  %33 = load %struct._object*, %struct._object** %lnotab.addr, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_flags56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 19
  %35 = load i64, i64* %tp_flags56, align 8
  %and57 = and i64 %35, 134217728
  %cmp58 = icmp ne i64 %and57, 0
  br i1 %cmp58, label %lor.lhs.false.59, label %if.then

lor.lhs.false.59:                                 ; preds = %lor.lhs.false.54
  %36 = load %struct._object*, %struct._object** %code.addr, align 8
  %call = call i32 @PyObject_CheckReadBuffer(%struct._object* %36)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.59, %lor.lhs.false.54, %lor.lhs.false.52, %lor.lhs.false.47, %lor.lhs.false.45, %lor.lhs.false.40, %lor.lhs.false.38, %lor.lhs.false.33, %lor.lhs.false.31, %lor.lhs.false.26, %lor.lhs.false.24, %lor.lhs.false.19, %lor.lhs.false.17, %lor.lhs.false.12, %lor.lhs.false.10, %lor.lhs.false.8, %lor.lhs.false.6, %lor.lhs.false.4, %lor.lhs.false.2, %lor.lhs.false, %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i32 0, i32 0), i32 74)
  store %struct.PyCodeObject* null, %struct.PyCodeObject** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.59
  %37 = load %struct._object*, %struct._object** %filename.addr, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %38, i32 0, i32 3
  %39 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %39, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool60 = icmp ne i32 %bf.clear, 0
  br i1 %tobool60, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %40 = load %struct._object*, %struct._object** %filename.addr, align 8
  %call61 = call i32 @_PyUnicode_Ready(%struct._object* %40)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call61, %cond.false ]
  %cmp62 = icmp slt i32 %cond, 0
  br i1 %cmp62, label %if.then.63, label %if.end.64

if.then.63:                                       ; preds = %cond.end
  store %struct.PyCodeObject* null, %struct.PyCodeObject** %retval
  br label %return

if.end.64:                                        ; preds = %cond.end
  %41 = load %struct._object*, %struct._object** %cellvars.addr, align 8
  %42 = bitcast %struct._object* %41 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %42, i32 0, i32 1
  %43 = load i64, i64* %ob_size, align 8
  store i64 %43, i64* %n_cellvars, align 8
  %44 = load %struct._object*, %struct._object** %names.addr, align 8
  call void @intern_strings(%struct._object* %44)
  %45 = load %struct._object*, %struct._object** %varnames.addr, align 8
  call void @intern_strings(%struct._object* %45)
  %46 = load %struct._object*, %struct._object** %freevars.addr, align 8
  call void @intern_strings(%struct._object* %46)
  %47 = load %struct._object*, %struct._object** %cellvars.addr, align 8
  call void @intern_strings(%struct._object* %47)
  %48 = load %struct._object*, %struct._object** %consts.addr, align 8
  %49 = bitcast %struct._object* %48 to %struct.PyVarObject*
  %ob_size65 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %49, i32 0, i32 1
  %50 = load i64, i64* %ob_size65, align 8
  store i64 %50, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.71, %if.then.70, %if.end.64
  %51 = load i64, i64* %i, align 8
  %dec = add i64 %51, -1
  store i64 %dec, i64* %i, align 8
  %cmp66 = icmp sge i64 %dec, 0
  br i1 %cmp66, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %52 = load %struct._object*, %struct._object** %consts.addr, align 8
  %53 = load i64, i64* %i, align 8
  %call67 = call %struct._object* @PyTuple_GetItem(%struct._object* %52, i64 %53)
  store %struct._object* %call67, %struct._object** %v, align 8
  %54 = load %struct._object*, %struct._object** %v, align 8
  %call68 = call i32 @all_name_chars(%struct._object* %54)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %for.body
  br label %for.cond

if.end.71:                                        ; preds = %for.body
  %55 = load i64, i64* %i, align 8
  %56 = load %struct._object*, %struct._object** %consts.addr, align 8
  %57 = bitcast %struct._object* %56 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %57, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %55
  call void @PyUnicode_InternInPlace(%struct._object** %arrayidx)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %58 = load i64, i64* %n_cellvars, align 8
  %tobool72 = icmp ne i64 %58, 0
  br i1 %tobool72, label %if.then.73, label %if.end.112

if.then.73:                                       ; preds = %for.end
  %59 = load i32, i32* %argcount.addr, align 4
  %60 = load i32, i32* %kwonlyargcount.addr, align 4
  %add = add i32 %59, %60
  %61 = load i32, i32* %flags.addr, align 4
  %and74 = and i32 %61, 4
  %cmp75 = icmp ne i32 %and74, 0
  %conv = zext i1 %cmp75 to i32
  %add76 = add i32 %add, %conv
  %62 = load i32, i32* %flags.addr, align 4
  %and77 = and i32 %62, 8
  %cmp78 = icmp ne i32 %and77, 0
  %conv79 = zext i1 %cmp78 to i32
  %add80 = add i32 %add76, %conv79
  %conv81 = sext i32 %add80 to i64
  store i64 %conv81, i64* %total_args, align 8
  %63 = load i64, i64* %n_cellvars, align 8
  %mul = mul i64 1, %63
  store i64 %mul, i64* %alloc_size, align 8
  store i32 0, i32* %used_cell2arg, align 4
  %64 = load i64, i64* %alloc_size, align 8
  %call82 = call i8* @PyMem_Malloc(i64 %64)
  store i8* %call82, i8** %cell2arg, align 8
  %65 = load i8*, i8** %cell2arg, align 8
  %cmp83 = icmp eq i8* %65, null
  br i1 %cmp83, label %if.then.85, label %if.end.86

if.then.85:                                       ; preds = %if.then.73
  store %struct.PyCodeObject* null, %struct.PyCodeObject** %retval
  br label %return

if.end.86:                                        ; preds = %if.then.73
  %66 = load i8*, i8** %cell2arg, align 8
  %67 = load i64, i64* %alloc_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %66, i8 -1, i64 %67, i32 1, i1 false)
  store i64 0, i64* %i, align 8
  br label %for.cond.87

for.cond.87:                                      ; preds = %for.inc.106, %if.end.86
  %68 = load i64, i64* %i, align 8
  %69 = load i64, i64* %n_cellvars, align 8
  %cmp88 = icmp slt i64 %68, %69
  br i1 %cmp88, label %for.body.90, label %for.end.108

for.body.90:                                      ; preds = %for.cond.87
  %70 = load i64, i64* %i, align 8
  %71 = load %struct._object*, %struct._object** %cellvars.addr, align 8
  %72 = bitcast %struct._object* %71 to %struct.PyTupleObject*
  %ob_item91 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %72, i32 0, i32 1
  %arrayidx92 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item91, i32 0, i64 %70
  %73 = load %struct._object*, %struct._object** %arrayidx92, align 8
  store %struct._object* %73, %struct._object** %cell, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.93

for.cond.93:                                      ; preds = %for.inc, %for.body.90
  %74 = load i64, i64* %j, align 8
  %75 = load i64, i64* %total_args, align 8
  %cmp94 = icmp slt i64 %74, %75
  br i1 %cmp94, label %for.body.96, label %for.end.105

for.body.96:                                      ; preds = %for.cond.93
  %76 = load i64, i64* %j, align 8
  %77 = load %struct._object*, %struct._object** %varnames.addr, align 8
  %78 = bitcast %struct._object* %77 to %struct.PyTupleObject*
  %ob_item97 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %78, i32 0, i32 1
  %arrayidx98 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item97, i32 0, i64 %76
  %79 = load %struct._object*, %struct._object** %arrayidx98, align 8
  store %struct._object* %79, %struct._object** %arg, align 8
  %80 = load %struct._object*, %struct._object** %cell, align 8
  %81 = load %struct._object*, %struct._object** %arg, align 8
  %call99 = call i32 @PyUnicode_Compare(%struct._object* %80, %struct._object* %81)
  %tobool100 = icmp ne i32 %call99, 0
  br i1 %tobool100, label %if.end.104, label %if.then.101

if.then.101:                                      ; preds = %for.body.96
  %82 = load i64, i64* %j, align 8
  %conv102 = trunc i64 %82 to i8
  %83 = load i64, i64* %i, align 8
  %84 = load i8*, i8** %cell2arg, align 8
  %arrayidx103 = getelementptr i8, i8* %84, i64 %83
  store i8 %conv102, i8* %arrayidx103, align 1
  store i32 1, i32* %used_cell2arg, align 4
  br label %for.end.105

if.end.104:                                       ; preds = %for.body.96
  br label %for.inc

for.inc:                                          ; preds = %if.end.104
  %85 = load i64, i64* %j, align 8
  %inc = add i64 %85, 1
  store i64 %inc, i64* %j, align 8
  br label %for.cond.93

for.end.105:                                      ; preds = %if.then.101, %for.cond.93
  br label %for.inc.106

for.inc.106:                                      ; preds = %for.end.105
  %86 = load i64, i64* %i, align 8
  %inc107 = add i64 %86, 1
  store i64 %inc107, i64* %i, align 8
  br label %for.cond.87

for.end.108:                                      ; preds = %for.cond.87
  %87 = load i32, i32* %used_cell2arg, align 4
  %tobool109 = icmp ne i32 %87, 0
  br i1 %tobool109, label %if.end.111, label %if.then.110

if.then.110:                                      ; preds = %for.end.108
  %88 = load i8*, i8** %cell2arg, align 8
  call void @PyMem_Free(i8* %88)
  store i8* null, i8** %cell2arg, align 8
  br label %if.end.111

if.end.111:                                       ; preds = %if.then.110, %for.end.108
  br label %if.end.112

if.end.112:                                       ; preds = %if.end.111, %for.end
  %89 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyCode_Type, i32 0, i32 2), align 8
  %call113 = call i8* @PyObject_Malloc(i64 %89)
  %90 = bitcast i8* %call113 to %struct._object*
  %call114 = call %struct._object* @PyObject_Init(%struct._object* %90, %struct._typeobject* @PyCode_Type)
  %91 = bitcast %struct._object* %call114 to %struct.PyCodeObject*
  store %struct.PyCodeObject* %91, %struct.PyCodeObject** %co, align 8
  %92 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %cmp115 = icmp eq %struct.PyCodeObject* %92, null
  br i1 %cmp115, label %if.then.117, label %if.end.121

if.then.117:                                      ; preds = %if.end.112
  %93 = load i8*, i8** %cell2arg, align 8
  %tobool118 = icmp ne i8* %93, null
  br i1 %tobool118, label %if.then.119, label %if.end.120

if.then.119:                                      ; preds = %if.then.117
  %94 = load i8*, i8** %cell2arg, align 8
  call void @PyMem_Free(i8* %94)
  br label %if.end.120

if.end.120:                                       ; preds = %if.then.119, %if.then.117
  store %struct.PyCodeObject* null, %struct.PyCodeObject** %retval
  br label %return

if.end.121:                                       ; preds = %if.end.112
  %95 = load i32, i32* %argcount.addr, align 4
  %96 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_argcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %96, i32 0, i32 1
  store i32 %95, i32* %co_argcount, align 4
  %97 = load i32, i32* %kwonlyargcount.addr, align 4
  %98 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_kwonlyargcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %98, i32 0, i32 2
  store i32 %97, i32* %co_kwonlyargcount, align 4
  %99 = load i32, i32* %nlocals.addr, align 4
  %100 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %100, i32 0, i32 3
  store i32 %99, i32* %co_nlocals, align 4
  %101 = load i32, i32* %stacksize.addr, align 4
  %102 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_stacksize = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %102, i32 0, i32 4
  store i32 %101, i32* %co_stacksize, align 4
  %103 = load i32, i32* %flags.addr, align 4
  %104 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %104, i32 0, i32 5
  store i32 %103, i32* %co_flags, align 4
  %105 = load %struct._object*, %struct._object** %code.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt, align 8
  %inc122 = add i64 %106, 1
  store i64 %inc122, i64* %ob_refcnt, align 8
  %107 = load %struct._object*, %struct._object** %code.addr, align 8
  %108 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_code = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %108, i32 0, i32 6
  store %struct._object* %107, %struct._object** %co_code, align 8
  %109 = load %struct._object*, %struct._object** %consts.addr, align 8
  %ob_refcnt123 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt123, align 8
  %inc124 = add i64 %110, 1
  store i64 %inc124, i64* %ob_refcnt123, align 8
  %111 = load %struct._object*, %struct._object** %consts.addr, align 8
  %112 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %112, i32 0, i32 7
  store %struct._object* %111, %struct._object** %co_consts, align 8
  %113 = load %struct._object*, %struct._object** %names.addr, align 8
  %ob_refcnt125 = getelementptr inbounds %struct._object, %struct._object* %113, i32 0, i32 0
  %114 = load i64, i64* %ob_refcnt125, align 8
  %inc126 = add i64 %114, 1
  store i64 %inc126, i64* %ob_refcnt125, align 8
  %115 = load %struct._object*, %struct._object** %names.addr, align 8
  %116 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_names = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %116, i32 0, i32 8
  store %struct._object* %115, %struct._object** %co_names, align 8
  %117 = load %struct._object*, %struct._object** %varnames.addr, align 8
  %ob_refcnt127 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 0
  %118 = load i64, i64* %ob_refcnt127, align 8
  %inc128 = add i64 %118, 1
  store i64 %inc128, i64* %ob_refcnt127, align 8
  %119 = load %struct._object*, %struct._object** %varnames.addr, align 8
  %120 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_varnames = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %120, i32 0, i32 9
  store %struct._object* %119, %struct._object** %co_varnames, align 8
  %121 = load %struct._object*, %struct._object** %freevars.addr, align 8
  %ob_refcnt129 = getelementptr inbounds %struct._object, %struct._object* %121, i32 0, i32 0
  %122 = load i64, i64* %ob_refcnt129, align 8
  %inc130 = add i64 %122, 1
  store i64 %inc130, i64* %ob_refcnt129, align 8
  %123 = load %struct._object*, %struct._object** %freevars.addr, align 8
  %124 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %124, i32 0, i32 10
  store %struct._object* %123, %struct._object** %co_freevars, align 8
  %125 = load %struct._object*, %struct._object** %cellvars.addr, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt131, align 8
  %inc132 = add i64 %126, 1
  store i64 %inc132, i64* %ob_refcnt131, align 8
  %127 = load %struct._object*, %struct._object** %cellvars.addr, align 8
  %128 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %128, i32 0, i32 11
  store %struct._object* %127, %struct._object** %co_cellvars, align 8
  %129 = load i8*, i8** %cell2arg, align 8
  %130 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cell2arg = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %130, i32 0, i32 12
  store i8* %129, i8** %co_cell2arg, align 8
  %131 = load %struct._object*, %struct._object** %filename.addr, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt133, align 8
  %inc134 = add i64 %132, 1
  store i64 %inc134, i64* %ob_refcnt133, align 8
  %133 = load %struct._object*, %struct._object** %filename.addr, align 8
  %134 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %134, i32 0, i32 13
  store %struct._object* %133, %struct._object** %co_filename, align 8
  %135 = load %struct._object*, %struct._object** %name.addr, align 8
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0
  %136 = load i64, i64* %ob_refcnt135, align 8
  %inc136 = add i64 %136, 1
  store i64 %inc136, i64* %ob_refcnt135, align 8
  %137 = load %struct._object*, %struct._object** %name.addr, align 8
  %138 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %138, i32 0, i32 14
  store %struct._object* %137, %struct._object** %co_name, align 8
  %139 = load i32, i32* %firstlineno.addr, align 4
  %140 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %140, i32 0, i32 15
  store i32 %139, i32* %co_firstlineno, align 4
  %141 = load %struct._object*, %struct._object** %lnotab.addr, align 8
  %ob_refcnt137 = getelementptr inbounds %struct._object, %struct._object* %141, i32 0, i32 0
  %142 = load i64, i64* %ob_refcnt137, align 8
  %inc138 = add i64 %142, 1
  store i64 %inc138, i64* %ob_refcnt137, align 8
  %143 = load %struct._object*, %struct._object** %lnotab.addr, align 8
  %144 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_lnotab = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %144, i32 0, i32 16
  store %struct._object* %143, %struct._object** %co_lnotab, align 8
  %145 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_zombieframe = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %145, i32 0, i32 17
  store i8* null, i8** %co_zombieframe, align 8
  %146 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_weakreflist = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %146, i32 0, i32 18
  store %struct._object* null, %struct._object** %co_weakreflist, align 8
  %147 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  store %struct.PyCodeObject* %147, %struct.PyCodeObject** %retval
  br label %return

return:                                           ; preds = %if.end.121, %if.end.120, %if.then.85, %if.then.63, %if.then
  %148 = load %struct.PyCodeObject*, %struct.PyCodeObject** %retval
  ret %struct.PyCodeObject* %148
}

declare i32 @PyObject_CheckReadBuffer(%struct._object*) #1

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare i32 @_PyUnicode_Ready(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @intern_strings(%struct._object* %tuple) #0 {
entry:
  %tuple.addr = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %v = alloca %struct._object*, align 8
  store %struct._object* %tuple, %struct._object** %tuple.addr, align 8
  %0 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %3 = load i64, i64* %i, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* %i, align 8
  %5 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %6, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %4
  %7 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %7, %struct._object** %v, align 8
  %8 = load %struct._object*, %struct._object** %v, align 8
  %cmp1 = icmp eq %struct._object* %8, null
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %9 = load %struct._object*, %struct._object** %v, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %10, @PyUnicode_Type
  br i1 %cmp2, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false, %for.body
  call void @Py_FatalError(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0)) #4
  unreachable

if.end:                                           ; preds = %lor.lhs.false
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object*, %struct._object** %tuple.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item3 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx4 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item3, i32 0, i64 %11
  call void @PyUnicode_InternInPlace(%struct._object** %arrayidx4)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare %struct._object* @PyTuple_GetItem(%struct._object*, i64) #1

; Function Attrs: nounwind uwtable
define internal i32 @all_name_chars(%struct._object* %o) #0 {
entry:
  %retval = alloca i32, align 4
  %o.addr = alloca %struct._object*, align 8
  %u = alloca %struct.PyUnicodeObject*, align 8
  %s = alloca i8*, align 8
  %p = alloca i8*, align 8
  store %struct._object* %o, %struct._object** %o.addr, align 8
  %0 = load %struct._object*, %struct._object** %o.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyUnicodeObject*
  store %struct.PyUnicodeObject* %1, %struct.PyUnicodeObject** %u, align 8
  %2 = load %struct._object*, %struct._object** %o.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %3, i32 0, i32 19
  %4 = load i64, i64* %tp_flags, align 8
  %and = and i64 %4, 268435456
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %5 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %6 = bitcast %struct.PyUnicodeObject* %5 to %struct.PyASCIIObject*
  %state = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %6, i32 0, i32 3
  %7 = bitcast %struct.anon* %state to i32*
  %bf.load = load i32, i32* %7, align 4
  %bf.lshr = lshr i32 %bf.load, 7
  %bf.clear = and i32 %bf.lshr, 1
  %tobool = icmp ne i32 %bf.clear, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %lor.lhs.false
  br label %cond.end

cond.false:                                       ; preds = %lor.lhs.false
  %8 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %9 = bitcast %struct.PyUnicodeObject* %8 to %struct._object*
  %call = call i32 @_PyUnicode_Ready(%struct._object* %9)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  %cmp1 = icmp eq i32 %cond, -1
  br i1 %cmp1, label %if.then, label %lor.lhs.false.2

lor.lhs.false.2:                                  ; preds = %cond.end
  %10 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %11 = bitcast %struct.PyUnicodeObject* %10 to %struct.PyASCIIObject*
  %state3 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %11, i32 0, i32 3
  %12 = bitcast %struct.anon* %state3 to i32*
  %bf.load4 = load i32, i32* %12, align 4
  %bf.lshr5 = lshr i32 %bf.load4, 6
  %bf.clear6 = and i32 %bf.lshr5, 1
  %tobool7 = icmp ne i32 %bf.clear6, 0
  br i1 %tobool7, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %lor.lhs.false.2
  br label %cond.end.25

cond.false.9:                                     ; preds = %lor.lhs.false.2
  %13 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %14 = bitcast %struct.PyUnicodeObject* %13 to %struct.PyASCIIObject*
  %state10 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %14, i32 0, i32 3
  %15 = bitcast %struct.anon* %state10 to i32*
  %bf.load11 = load i32, i32* %15, align 4
  %bf.lshr12 = lshr i32 %bf.load11, 2
  %bf.clear13 = and i32 %bf.lshr12, 7
  %cmp14 = icmp eq i32 %bf.clear13, 1
  br i1 %cmp14, label %cond.true.15, label %cond.false.16

cond.true.15:                                     ; preds = %cond.false.9
  br label %cond.end.23

cond.false.16:                                    ; preds = %cond.false.9
  %16 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %17 = bitcast %struct.PyUnicodeObject* %16 to %struct.PyASCIIObject*
  %state17 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %17, i32 0, i32 3
  %18 = bitcast %struct.anon* %state17 to i32*
  %bf.load18 = load i32, i32* %18, align 4
  %bf.lshr19 = lshr i32 %bf.load18, 2
  %bf.clear20 = and i32 %bf.lshr19, 7
  %cmp21 = icmp eq i32 %bf.clear20, 2
  %cond22 = select i1 %cmp21, i32 65535, i32 1114111
  br label %cond.end.23

cond.end.23:                                      ; preds = %cond.false.16, %cond.true.15
  %cond24 = phi i32 [ 255, %cond.true.15 ], [ %cond22, %cond.false.16 ]
  br label %cond.end.25

cond.end.25:                                      ; preds = %cond.end.23, %cond.true.8
  %cond26 = phi i32 [ 127, %cond.true.8 ], [ %cond24, %cond.end.23 ]
  %cmp27 = icmp uge i32 %cond26, 128
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end.25, %cond.end, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %cond.end.25
  %19 = load i8*, i8** @all_name_chars.name_chars, align 8
  %20 = load i8, i8* %19, align 1
  %idxprom = zext i8 %20 to i64
  %arrayidx = getelementptr [256 x i8], [256 x i8]* @all_name_chars.ok_name_char, i32 0, i64 %idxprom
  %21 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %21 to i32
  %cmp28 = icmp eq i32 %conv, 0
  br i1 %cmp28, label %if.then.30, label %if.end.34

if.then.30:                                       ; preds = %if.end
  %22 = load i8*, i8** @all_name_chars.name_chars, align 8
  store i8* %22, i8** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.30
  %23 = load i8*, i8** %p, align 8
  %24 = load i8, i8* %23, align 1
  %tobool31 = icmp ne i8 %24, 0
  br i1 %tobool31, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %25 = load i8*, i8** %p, align 8
  %26 = load i8, i8* %25, align 1
  %idxprom32 = zext i8 %26 to i64
  %arrayidx33 = getelementptr [256 x i8], [256 x i8]* @all_name_chars.ok_name_char, i32 0, i64 %idxprom32
  store i8 1, i8* %arrayidx33, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %27, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.34

if.end.34:                                        ; preds = %for.end, %if.end
  %28 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %29 = bitcast %struct.PyUnicodeObject* %28 to %struct.PyASCIIObject*
  %state35 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %29, i32 0, i32 3
  %30 = bitcast %struct.anon* %state35 to i32*
  %bf.load36 = load i32, i32* %30, align 4
  %bf.lshr37 = lshr i32 %bf.load36, 5
  %bf.clear38 = and i32 %bf.lshr37, 1
  %tobool39 = icmp ne i32 %bf.clear38, 0
  br i1 %tobool39, label %cond.true.40, label %cond.false.51

cond.true.40:                                     ; preds = %if.end.34
  %31 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %32 = bitcast %struct.PyUnicodeObject* %31 to %struct.PyASCIIObject*
  %state41 = getelementptr inbounds %struct.PyASCIIObject, %struct.PyASCIIObject* %32, i32 0, i32 3
  %33 = bitcast %struct.anon* %state41 to i32*
  %bf.load42 = load i32, i32* %33, align 4
  %bf.lshr43 = lshr i32 %bf.load42, 6
  %bf.clear44 = and i32 %bf.lshr43, 1
  %tobool45 = icmp ne i32 %bf.clear44, 0
  br i1 %tobool45, label %cond.true.46, label %cond.false.47

cond.true.46:                                     ; preds = %cond.true.40
  %34 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %35 = bitcast %struct.PyUnicodeObject* %34 to %struct.PyASCIIObject*
  %add.ptr = getelementptr %struct.PyASCIIObject, %struct.PyASCIIObject* %35, i64 1
  %36 = bitcast %struct.PyASCIIObject* %add.ptr to i8*
  br label %cond.end.49

cond.false.47:                                    ; preds = %cond.true.40
  %37 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %38 = bitcast %struct.PyUnicodeObject* %37 to %struct.PyCompactUnicodeObject*
  %add.ptr48 = getelementptr %struct.PyCompactUnicodeObject, %struct.PyCompactUnicodeObject* %38, i64 1
  %39 = bitcast %struct.PyCompactUnicodeObject* %add.ptr48 to i8*
  br label %cond.end.49

cond.end.49:                                      ; preds = %cond.false.47, %cond.true.46
  %cond50 = phi i8* [ %36, %cond.true.46 ], [ %39, %cond.false.47 ]
  br label %cond.end.52

cond.false.51:                                    ; preds = %if.end.34
  %40 = load %struct.PyUnicodeObject*, %struct.PyUnicodeObject** %u, align 8
  %data = getelementptr inbounds %struct.PyUnicodeObject, %struct.PyUnicodeObject* %40, i32 0, i32 1
  %any = bitcast %union.anon* %data to i8**
  %41 = load i8*, i8** %any, align 8
  br label %cond.end.52

cond.end.52:                                      ; preds = %cond.false.51, %cond.end.49
  %cond53 = phi i8* [ %cond50, %cond.end.49 ], [ %41, %cond.false.51 ]
  store i8* %cond53, i8** %s, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.62, %cond.end.52
  %42 = load i8*, i8** %s, align 8
  %43 = load i8, i8* %42, align 1
  %tobool54 = icmp ne i8 %43, 0
  br i1 %tobool54, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i8*, i8** %s, align 8
  %incdec.ptr55 = getelementptr i8, i8* %44, i32 1
  store i8* %incdec.ptr55, i8** %s, align 8
  %45 = load i8, i8* %44, align 1
  %idxprom56 = zext i8 %45 to i64
  %arrayidx57 = getelementptr [256 x i8], [256 x i8]* @all_name_chars.ok_name_char, i32 0, i64 %idxprom56
  %46 = load i8, i8* %arrayidx57, align 1
  %conv58 = sext i8 %46 to i32
  %cmp59 = icmp eq i32 %conv58, 0
  br i1 %cmp59, label %if.then.61, label %if.end.62

if.then.61:                                       ; preds = %while.body
  store i32 0, i32* %retval
  br label %return

if.end.62:                                        ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.61, %if.then
  %47 = load i32, i32* %retval
  ret i32 %47
}

declare void @PyUnicode_InternInPlace(%struct._object**) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @PyUnicode_Compare(%struct._object*, %struct._object*) #1

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyObject_Init(%struct._object*, %struct._typeobject*) #1

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.PyCodeObject* @PyCode_NewEmpty(i8* %filename, i8* %funcname, i32 %firstlineno) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %funcname.addr = alloca i8*, align 8
  %firstlineno.addr = alloca i32, align 4
  %filename_ob = alloca %struct._object*, align 8
  %funcname_ob = alloca %struct._object*, align 8
  %result = alloca %struct.PyCodeObject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp33 = alloca %struct._object*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  store i8* %funcname, i8** %funcname.addr, align 8
  store i32 %firstlineno, i32* %firstlineno.addr, align 4
  store %struct._object* null, %struct._object** %filename_ob, align 8
  store %struct._object* null, %struct._object** %funcname_ob, align 8
  store %struct.PyCodeObject* null, %struct.PyCodeObject** %result, align 8
  %0 = load %struct._object*, %struct._object** @PyCode_NewEmpty.emptystring, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  %call = call %struct._object* @PyBytes_FromString(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0))
  store %struct._object* %call, %struct._object** @PyCode_NewEmpty.emptystring, align 8
  %1 = load %struct._object*, %struct._object** @PyCode_NewEmpty.emptystring, align 8
  %cmp1 = icmp eq %struct._object* %1, null
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  br label %failed

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %entry
  %2 = load %struct._object*, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %cmp4 = icmp eq %struct._object* %2, null
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.end.3
  %call6 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call6, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %3 = load %struct._object*, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %cmp7 = icmp eq %struct._object* %3, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.then.5
  br label %failed

if.end.9:                                         ; preds = %if.then.5
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.end.3
  %4 = load i8*, i8** %funcname.addr, align 8
  %call11 = call %struct._object* @PyUnicode_FromString(i8* %4)
  store %struct._object* %call11, %struct._object** %funcname_ob, align 8
  %5 = load %struct._object*, %struct._object** %funcname_ob, align 8
  %cmp12 = icmp eq %struct._object* %5, null
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.10
  br label %failed

if.end.14:                                        ; preds = %if.end.10
  %6 = load i8*, i8** %filename.addr, align 8
  %call15 = call %struct._object* @PyUnicode_DecodeFSDefault(i8* %6)
  store %struct._object* %call15, %struct._object** %filename_ob, align 8
  %7 = load %struct._object*, %struct._object** %filename_ob, align 8
  %cmp16 = icmp eq %struct._object* %7, null
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.14
  br label %failed

if.end.18:                                        ; preds = %if.end.14
  %8 = load %struct._object*, %struct._object** @PyCode_NewEmpty.emptystring, align 8
  %9 = load %struct._object*, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %10 = load %struct._object*, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %11 = load %struct._object*, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %12 = load %struct._object*, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %13 = load %struct._object*, %struct._object** @PyCode_NewEmpty.nulltuple, align 8
  %14 = load %struct._object*, %struct._object** %filename_ob, align 8
  %15 = load %struct._object*, %struct._object** %funcname_ob, align 8
  %16 = load i32, i32* %firstlineno.addr, align 4
  %17 = load %struct._object*, %struct._object** @PyCode_NewEmpty.emptystring, align 8
  %call19 = call %struct.PyCodeObject* @PyCode_New(i32 0, i32 0, i32 0, i32 0, i32 0, %struct._object* %8, %struct._object* %9, %struct._object* %10, %struct._object* %11, %struct._object* %12, %struct._object* %13, %struct._object* %14, %struct._object* %15, i32 %16, %struct._object* %17)
  store %struct.PyCodeObject* %call19, %struct.PyCodeObject** %result, align 8
  br label %failed

failed:                                           ; preds = %if.end.18, %if.then.17, %if.then.13, %if.then.8, %if.then.2
  br label %do.body

do.body:                                          ; preds = %failed
  %18 = load %struct._object*, %struct._object** %funcname_ob, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp20 = icmp ne %struct._object* %19, null
  br i1 %cmp20, label %if.then.21, label %if.end.26

if.then.21:                                       ; preds = %do.body
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp23 = icmp ne i64 %dec, 0
  br i1 %cmp23, label %if.then.24, label %if.else

if.then.24:                                       ; preds = %do.body.22
  br label %if.end.25

if.else:                                          ; preds = %do.body.22
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
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
  %27 = load %struct._object*, %struct._object** %filename_ob, align 8
  store %struct._object* %27, %struct._object** %_py_xdecref_tmp29, align 8
  %28 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8
  %cmp30 = icmp ne %struct._object* %28, null
  br i1 %cmp30, label %if.then.31, label %if.end.43

if.then.31:                                       ; preds = %do.body.28
  br label %do.body.32

do.body.32:                                       ; preds = %if.then.31
  %29 = load %struct._object*, %struct._object** %_py_xdecref_tmp29, align 8
  store %struct._object* %29, %struct._object** %_py_decref_tmp33, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_refcnt34 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 0
  %31 = load i64, i64* %ob_refcnt34, align 8
  %dec35 = add i64 %31, -1
  store i64 %dec35, i64* %ob_refcnt34, align 8
  %cmp36 = icmp ne i64 %dec35, 0
  br i1 %cmp36, label %if.then.37, label %if.else.38

if.then.37:                                       ; preds = %do.body.32
  br label %if.end.41

if.else.38:                                       ; preds = %do.body.32
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  %ob_type39 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 1
  %33 = load %struct._typeobject*, %struct._typeobject** %ob_type39, align 8
  %tp_dealloc40 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %33, i32 0, i32 4
  %34 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc40, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp33, align 8
  call void %34(%struct._object* %35)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.38, %if.then.37
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %if.end.43

if.end.43:                                        ; preds = %do.end.42, %do.body.28
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %36 = load %struct.PyCodeObject*, %struct.PyCodeObject** %result, align 8
  ret %struct.PyCodeObject* %36
}

declare %struct._object* @PyBytes_FromString(i8*) #1

declare %struct._object* @PyTuple_New(i64) #1

declare %struct._object* @PyUnicode_FromString(i8*) #1

declare %struct._object* @PyUnicode_DecodeFSDefault(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @code_dealloc(%struct.PyCodeObject* %co) #0 {
entry:
  %co.addr = alloca %struct.PyCodeObject*, align 8
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
  %_py_xdecref_tmp92 = alloca %struct._object*, align 8
  %_py_decref_tmp96 = alloca %struct._object*, align 8
  %_py_xdecref_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp113 = alloca %struct._object*, align 8
  %_py_xdecref_tmp126 = alloca %struct._object*, align 8
  %_py_decref_tmp130 = alloca %struct._object*, align 8
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_code = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 6
  %1 = load %struct._object*, %struct._object** %co_code, align 8
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
  %10 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %10, i32 0, i32 7
  %11 = load %struct._object*, %struct._object** %co_consts, align 8
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
  %20 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_names = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %20, i32 0, i32 8
  %21 = load %struct._object*, %struct._object** %co_names, align 8
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
  br label %do.body.40

do.body.40:                                       ; preds = %do.end.39
  %30 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_varnames = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %30, i32 0, i32 9
  %31 = load %struct._object*, %struct._object** %co_varnames, align 8
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp41, align 8
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
  %cmp42 = icmp ne %struct._object* %32, null
  br i1 %cmp42, label %if.then.43, label %if.end.55

if.then.43:                                       ; preds = %do.body.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp41, align 8
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
  br label %if.end.55

if.end.55:                                        ; preds = %do.end.54, %do.body.40
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  br label %do.body.57

do.body.57:                                       ; preds = %do.end.56
  %40 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %40, i32 0, i32 10
  %41 = load %struct._object*, %struct._object** %co_freevars, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp58, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp58, align 8
  %cmp59 = icmp ne %struct._object* %42, null
  br i1 %cmp59, label %if.then.60, label %if.end.72

if.then.60:                                       ; preds = %do.body.57
  br label %do.body.61

do.body.61:                                       ; preds = %if.then.60
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp58, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp62, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_refcnt63 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt63, align 8
  %dec64 = add i64 %45, -1
  store i64 %dec64, i64* %ob_refcnt63, align 8
  %cmp65 = icmp ne i64 %dec64, 0
  br i1 %cmp65, label %if.then.66, label %if.else.67

if.then.66:                                       ; preds = %do.body.61
  br label %if.end.70

if.else.67:                                       ; preds = %do.body.61
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  %ob_type68 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type68, align 8
  %tp_dealloc69 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc69, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp62, align 8
  call void %48(%struct._object* %49)
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
  %50 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %50, i32 0, i32 11
  %51 = load %struct._object*, %struct._object** %co_cellvars, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp75, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp75, align 8
  %cmp76 = icmp ne %struct._object* %52, null
  br i1 %cmp76, label %if.then.77, label %if.end.89

if.then.77:                                       ; preds = %do.body.74
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.77
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp75, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp79, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_refcnt80 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt80, align 8
  %dec81 = add i64 %55, -1
  store i64 %dec81, i64* %ob_refcnt80, align 8
  %cmp82 = icmp ne i64 %dec81, 0
  br i1 %cmp82, label %if.then.83, label %if.else.84

if.then.83:                                       ; preds = %do.body.78
  br label %if.end.87

if.else.84:                                       ; preds = %do.body.78
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  %ob_type85 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type85, align 8
  %tp_dealloc86 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc86, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp79, align 8
  call void %58(%struct._object* %59)
  br label %if.end.87

if.end.87:                                        ; preds = %if.else.84, %if.then.83
  br label %do.end.88

do.end.88:                                        ; preds = %if.end.87
  br label %if.end.89

if.end.89:                                        ; preds = %do.end.88, %do.body.74
  br label %do.end.90

do.end.90:                                        ; preds = %if.end.89
  br label %do.body.91

do.body.91:                                       ; preds = %do.end.90
  %60 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %60, i32 0, i32 13
  %61 = load %struct._object*, %struct._object** %co_filename, align 8
  store %struct._object* %61, %struct._object** %_py_xdecref_tmp92, align 8
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp92, align 8
  %cmp93 = icmp ne %struct._object* %62, null
  br i1 %cmp93, label %if.then.94, label %if.end.106

if.then.94:                                       ; preds = %do.body.91
  br label %do.body.95

do.body.95:                                       ; preds = %if.then.94
  %63 = load %struct._object*, %struct._object** %_py_xdecref_tmp92, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp96, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt97, align 8
  %dec98 = add i64 %65, -1
  store i64 %dec98, i64* %ob_refcnt97, align 8
  %cmp99 = icmp ne i64 %dec98, 0
  br i1 %cmp99, label %if.then.100, label %if.else.101

if.then.100:                                      ; preds = %do.body.95
  br label %if.end.104

if.else.101:                                      ; preds = %do.body.95
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  %ob_type102 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type102, align 8
  %tp_dealloc103 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc103, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp96, align 8
  call void %68(%struct._object* %69)
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.101, %if.then.100
  br label %do.end.105

do.end.105:                                       ; preds = %if.end.104
  br label %if.end.106

if.end.106:                                       ; preds = %do.end.105, %do.body.91
  br label %do.end.107

do.end.107:                                       ; preds = %if.end.106
  br label %do.body.108

do.body.108:                                      ; preds = %do.end.107
  %70 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %70, i32 0, i32 14
  %71 = load %struct._object*, %struct._object** %co_name, align 8
  store %struct._object* %71, %struct._object** %_py_xdecref_tmp109, align 8
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp109, align 8
  %cmp110 = icmp ne %struct._object* %72, null
  br i1 %cmp110, label %if.then.111, label %if.end.123

if.then.111:                                      ; preds = %do.body.108
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.111
  %73 = load %struct._object*, %struct._object** %_py_xdecref_tmp109, align 8
  store %struct._object* %73, %struct._object** %_py_decref_tmp113, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt114, align 8
  %dec115 = add i64 %75, -1
  store i64 %dec115, i64* %ob_refcnt114, align 8
  %cmp116 = icmp ne i64 %dec115, 0
  br i1 %cmp116, label %if.then.117, label %if.else.118

if.then.117:                                      ; preds = %do.body.112
  br label %if.end.121

if.else.118:                                      ; preds = %do.body.112
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_type119 = getelementptr inbounds %struct._object, %struct._object* %76, i32 0, i32 1
  %77 = load %struct._typeobject*, %struct._typeobject** %ob_type119, align 8
  %tp_dealloc120 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %77, i32 0, i32 4
  %78 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc120, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  call void %78(%struct._object* %79)
  br label %if.end.121

if.end.121:                                       ; preds = %if.else.118, %if.then.117
  br label %do.end.122

do.end.122:                                       ; preds = %if.end.121
  br label %if.end.123

if.end.123:                                       ; preds = %do.end.122, %do.body.108
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  br label %do.body.125

do.body.125:                                      ; preds = %do.end.124
  %80 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_lnotab = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %80, i32 0, i32 16
  %81 = load %struct._object*, %struct._object** %co_lnotab, align 8
  store %struct._object* %81, %struct._object** %_py_xdecref_tmp126, align 8
  %82 = load %struct._object*, %struct._object** %_py_xdecref_tmp126, align 8
  %cmp127 = icmp ne %struct._object* %82, null
  br i1 %cmp127, label %if.then.128, label %if.end.140

if.then.128:                                      ; preds = %do.body.125
  br label %do.body.129

do.body.129:                                      ; preds = %if.then.128
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp126, align 8
  store %struct._object* %83, %struct._object** %_py_decref_tmp130, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0
  %85 = load i64, i64* %ob_refcnt131, align 8
  %dec132 = add i64 %85, -1
  store i64 %dec132, i64* %ob_refcnt131, align 8
  %cmp133 = icmp ne i64 %dec132, 0
  br i1 %cmp133, label %if.then.134, label %if.else.135

if.then.134:                                      ; preds = %do.body.129
  br label %if.end.138

if.else.135:                                      ; preds = %do.body.129
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  %ob_type136 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type136, align 8
  %tp_dealloc137 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc137, align 8
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp130, align 8
  call void %88(%struct._object* %89)
  br label %if.end.138

if.end.138:                                       ; preds = %if.else.135, %if.then.134
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  br label %if.end.140

if.end.140:                                       ; preds = %do.end.139, %do.body.125
  br label %do.end.141

do.end.141:                                       ; preds = %if.end.140
  %90 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_cell2arg = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %90, i32 0, i32 12
  %91 = load i8*, i8** %co_cell2arg, align 8
  %cmp142 = icmp ne i8* %91, null
  br i1 %cmp142, label %if.then.143, label %if.end.145

if.then.143:                                      ; preds = %do.end.141
  %92 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_cell2arg144 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %92, i32 0, i32 12
  %93 = load i8*, i8** %co_cell2arg144, align 8
  call void @PyMem_Free(i8* %93)
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.143, %do.end.141
  %94 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_zombieframe = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %94, i32 0, i32 17
  %95 = load i8*, i8** %co_zombieframe, align 8
  %cmp146 = icmp ne i8* %95, null
  br i1 %cmp146, label %if.then.147, label %if.end.149

if.then.147:                                      ; preds = %if.end.145
  %96 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_zombieframe148 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %96, i32 0, i32 17
  %97 = load i8*, i8** %co_zombieframe148, align 8
  call void @PyObject_GC_Del(i8* %97)
  br label %if.end.149

if.end.149:                                       ; preds = %if.then.147, %if.end.145
  %98 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_weakreflist = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %98, i32 0, i32 18
  %99 = load %struct._object*, %struct._object** %co_weakreflist, align 8
  %cmp150 = icmp ne %struct._object* %99, null
  br i1 %cmp150, label %if.then.151, label %if.end.152

if.then.151:                                      ; preds = %if.end.149
  %100 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %101 = bitcast %struct.PyCodeObject* %100 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %101)
  br label %if.end.152

if.end.152:                                       ; preds = %if.then.151, %if.end.149
  %102 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %103 = bitcast %struct.PyCodeObject* %102 to i8*
  call void @PyObject_Free(i8* %103)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @code_repr(%struct.PyCodeObject* %co) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %co.addr = alloca %struct.PyCodeObject*, align 8
  %lineno = alloca i32, align 4
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 15
  %1 = load i32, i32* %co_firstlineno, align 4
  %cmp = icmp ne i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_firstlineno1 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %2, i32 0, i32 15
  %3 = load i32, i32* %co_firstlineno1, align 4
  store i32 %3, i32* %lineno, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 -1, i32* %lineno, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %4, i32 0, i32 13
  %5 = load %struct._object*, %struct._object** %co_filename, align 8
  %tobool = icmp ne %struct._object* %5, null
  br i1 %tobool, label %land.lhs.true, label %if.else.6

land.lhs.true:                                    ; preds = %if.end
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename2 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %6, i32 0, i32 13
  %7 = load %struct._object*, %struct._object** %co_filename2, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 19
  %9 = load i64, i64* %tp_flags, align 8
  %and = and i64 %9, 268435456
  %cmp3 = icmp ne i64 %and, 0
  br i1 %cmp3, label %if.then.4, label %if.else.6

if.then.4:                                        ; preds = %land.lhs.true
  %10 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %10, i32 0, i32 14
  %11 = load %struct._object*, %struct._object** %co_name, align 8
  %12 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %13 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_filename5 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %13, i32 0, i32 13
  %14 = load %struct._object*, %struct._object** %co_filename5, align 8
  %15 = load i32, i32* %lineno, align 4
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i32 0, i32 0), %struct._object* %11, %struct.PyCodeObject* %12, %struct._object* %14, i32 %15)
  store %struct._object* %call, %struct._object** %retval
  br label %return

if.else.6:                                        ; preds = %land.lhs.true, %if.end
  %16 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_name7 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %16, i32 0, i32 14
  %17 = load %struct._object*, %struct._object** %co_name7, align 8
  %18 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %19 = load i32, i32* %lineno, align 4
  %call8 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i32 0, i32 0), %struct._object* %17, %struct.PyCodeObject* %18, i32 %19)
  store %struct._object* %call8, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.else.6, %if.then.4
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal i64 @code_hash(%struct.PyCodeObject* %co) #0 {
entry:
  %retval = alloca i64, align 8
  %co.addr = alloca %struct.PyCodeObject*, align 8
  %h = alloca i64, align 8
  %h0 = alloca i64, align 8
  %h1 = alloca i64, align 8
  %h2 = alloca i64, align 8
  %h3 = alloca i64, align 8
  %h4 = alloca i64, align 8
  %h5 = alloca i64, align 8
  %h6 = alloca i64, align 8
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 14
  %1 = load %struct._object*, %struct._object** %co_name, align 8
  %call = call i64 @PyObject_Hash(%struct._object* %1)
  store i64 %call, i64* %h0, align 8
  %2 = load i64, i64* %h0, align 8
  %cmp = icmp eq i64 %2, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 -1, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_code = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %3, i32 0, i32 6
  %4 = load %struct._object*, %struct._object** %co_code, align 8
  %call1 = call i64 @PyObject_Hash(%struct._object* %4)
  store i64 %call1, i64* %h1, align 8
  %5 = load i64, i64* %h1, align 8
  %cmp2 = icmp eq i64 %5, -1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i64 -1, i64* %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %6, i32 0, i32 7
  %7 = load %struct._object*, %struct._object** %co_consts, align 8
  %call5 = call i64 @PyObject_Hash(%struct._object* %7)
  store i64 %call5, i64* %h2, align 8
  %8 = load i64, i64* %h2, align 8
  %cmp6 = icmp eq i64 %8, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store i64 -1, i64* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %9 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_names = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %9, i32 0, i32 8
  %10 = load %struct._object*, %struct._object** %co_names, align 8
  %call9 = call i64 @PyObject_Hash(%struct._object* %10)
  store i64 %call9, i64* %h3, align 8
  %11 = load i64, i64* %h3, align 8
  %cmp10 = icmp eq i64 %11, -1
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store i64 -1, i64* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %12 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_varnames = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %12, i32 0, i32 9
  %13 = load %struct._object*, %struct._object** %co_varnames, align 8
  %call13 = call i64 @PyObject_Hash(%struct._object* %13)
  store i64 %call13, i64* %h4, align 8
  %14 = load i64, i64* %h4, align 8
  %cmp14 = icmp eq i64 %14, -1
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store i64 -1, i64* %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %15 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %15, i32 0, i32 10
  %16 = load %struct._object*, %struct._object** %co_freevars, align 8
  %call17 = call i64 @PyObject_Hash(%struct._object* %16)
  store i64 %call17, i64* %h5, align 8
  %17 = load i64, i64* %h5, align 8
  %cmp18 = icmp eq i64 %17, -1
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.16
  store i64 -1, i64* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.16
  %18 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %18, i32 0, i32 11
  %19 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %call21 = call i64 @PyObject_Hash(%struct._object* %19)
  store i64 %call21, i64* %h6, align 8
  %20 = load i64, i64* %h6, align 8
  %cmp22 = icmp eq i64 %20, -1
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.20
  store i64 -1, i64* %retval
  br label %return

if.end.24:                                        ; preds = %if.end.20
  %21 = load i64, i64* %h0, align 8
  %22 = load i64, i64* %h1, align 8
  %xor = xor i64 %21, %22
  %23 = load i64, i64* %h2, align 8
  %xor25 = xor i64 %xor, %23
  %24 = load i64, i64* %h3, align 8
  %xor26 = xor i64 %xor25, %24
  %25 = load i64, i64* %h4, align 8
  %xor27 = xor i64 %xor26, %25
  %26 = load i64, i64* %h5, align 8
  %xor28 = xor i64 %xor27, %26
  %27 = load i64, i64* %h6, align 8
  %xor29 = xor i64 %xor28, %27
  %28 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_argcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %28, i32 0, i32 1
  %29 = load i32, i32* %co_argcount, align 4
  %conv = sext i32 %29 to i64
  %xor30 = xor i64 %xor29, %conv
  %30 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_kwonlyargcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %30, i32 0, i32 2
  %31 = load i32, i32* %co_kwonlyargcount, align 4
  %conv31 = sext i32 %31 to i64
  %xor32 = xor i64 %xor30, %conv31
  %32 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %32, i32 0, i32 3
  %33 = load i32, i32* %co_nlocals, align 4
  %conv33 = sext i32 %33 to i64
  %xor34 = xor i64 %xor32, %conv33
  %34 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %34, i32 0, i32 5
  %35 = load i32, i32* %co_flags, align 4
  %conv35 = sext i32 %35 to i64
  %xor36 = xor i64 %xor34, %conv35
  store i64 %xor36, i64* %h, align 8
  %36 = load i64, i64* %h, align 8
  %cmp37 = icmp eq i64 %36, -1
  br i1 %cmp37, label %if.then.39, label %if.end.40

if.then.39:                                       ; preds = %if.end.24
  store i64 -2, i64* %h, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.39, %if.end.24
  %37 = load i64, i64* %h, align 8
  store i64 %37, i64* %retval
  br label %return

return:                                           ; preds = %if.end.40, %if.then.23, %if.then.19, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %38 = load i64, i64* %retval
  ret i64 %38
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @code_richcompare(%struct._object* %self, %struct._object* %other, i32 %op) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %other.addr = alloca %struct._object*, align 8
  %op.addr = alloca i32, align 4
  %co = alloca %struct.PyCodeObject*, align 8
  %cp = alloca %struct.PyCodeObject*, align 8
  %eq = alloca i32, align 4
  %res = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %other, %struct._object** %other.addr, align 8
  store i32 %op, i32* %op.addr, align 4
  %0 = load i32, i32* %op.addr, align 4
  %cmp = icmp ne i32 %0, 2
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %op.addr, align 4
  %cmp1 = icmp ne i32 %1, 3
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load %struct._object*, %struct._object** %self.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 1
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %3, @PyCode_Type
  br i1 %cmp2, label %lor.lhs.false.3, label %if.then

lor.lhs.false.3:                                  ; preds = %lor.lhs.false
  %4 = load %struct._object*, %struct._object** %other.addr, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %cmp5 = icmp eq %struct._typeobject* %5, @PyCode_Type
  br i1 %cmp5, label %if.end, label %if.then

if.then:                                          ; preds = %lor.lhs.false.3, %lor.lhs.false, %land.lhs.true
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NotImplementedStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NotImplementedStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.3
  %7 = load %struct._object*, %struct._object** %self.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyCodeObject*
  store %struct.PyCodeObject* %8, %struct.PyCodeObject** %co, align 8
  %9 = load %struct._object*, %struct._object** %other.addr, align 8
  %10 = bitcast %struct._object* %9 to %struct.PyCodeObject*
  store %struct.PyCodeObject* %10, %struct.PyCodeObject** %cp, align 8
  %11 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %11, i32 0, i32 14
  %12 = load %struct._object*, %struct._object** %co_name, align 8
  %13 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_name6 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %13, i32 0, i32 14
  %14 = load %struct._object*, %struct._object** %co_name6, align 8
  %call = call i32 @PyObject_RichCompareBool(%struct._object* %12, %struct._object* %14, i32 2)
  store i32 %call, i32* %eq, align 4
  %15 = load i32, i32* %eq, align 4
  %cmp7 = icmp sle i32 %15, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  br label %unequal

if.end.9:                                         ; preds = %if.end
  %16 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_argcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %16, i32 0, i32 1
  %17 = load i32, i32* %co_argcount, align 4
  %18 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_argcount10 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %18, i32 0, i32 1
  %19 = load i32, i32* %co_argcount10, align 4
  %cmp11 = icmp eq i32 %17, %19
  %conv = zext i1 %cmp11 to i32
  store i32 %conv, i32* %eq, align 4
  %20 = load i32, i32* %eq, align 4
  %tobool = icmp ne i32 %20, 0
  br i1 %tobool, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %if.end.9
  br label %unequal

if.end.13:                                        ; preds = %if.end.9
  %21 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_kwonlyargcount = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %21, i32 0, i32 2
  %22 = load i32, i32* %co_kwonlyargcount, align 4
  %23 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_kwonlyargcount14 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %23, i32 0, i32 2
  %24 = load i32, i32* %co_kwonlyargcount14, align 4
  %cmp15 = icmp eq i32 %22, %24
  %conv16 = zext i1 %cmp15 to i32
  store i32 %conv16, i32* %eq, align 4
  %25 = load i32, i32* %eq, align 4
  %tobool17 = icmp ne i32 %25, 0
  br i1 %tobool17, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.13
  br label %unequal

if.end.19:                                        ; preds = %if.end.13
  %26 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %26, i32 0, i32 3
  %27 = load i32, i32* %co_nlocals, align 4
  %28 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_nlocals20 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %28, i32 0, i32 3
  %29 = load i32, i32* %co_nlocals20, align 4
  %cmp21 = icmp eq i32 %27, %29
  %conv22 = zext i1 %cmp21 to i32
  store i32 %conv22, i32* %eq, align 4
  %30 = load i32, i32* %eq, align 4
  %tobool23 = icmp ne i32 %30, 0
  br i1 %tobool23, label %if.end.25, label %if.then.24

if.then.24:                                       ; preds = %if.end.19
  br label %unequal

if.end.25:                                        ; preds = %if.end.19
  %31 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %31, i32 0, i32 5
  %32 = load i32, i32* %co_flags, align 4
  %33 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_flags26 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %33, i32 0, i32 5
  %34 = load i32, i32* %co_flags26, align 4
  %cmp27 = icmp eq i32 %32, %34
  %conv28 = zext i1 %cmp27 to i32
  store i32 %conv28, i32* %eq, align 4
  %35 = load i32, i32* %eq, align 4
  %tobool29 = icmp ne i32 %35, 0
  br i1 %tobool29, label %if.end.31, label %if.then.30

if.then.30:                                       ; preds = %if.end.25
  br label %unequal

if.end.31:                                        ; preds = %if.end.25
  %36 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %36, i32 0, i32 15
  %37 = load i32, i32* %co_firstlineno, align 4
  %38 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_firstlineno32 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %38, i32 0, i32 15
  %39 = load i32, i32* %co_firstlineno32, align 4
  %cmp33 = icmp eq i32 %37, %39
  %conv34 = zext i1 %cmp33 to i32
  store i32 %conv34, i32* %eq, align 4
  %40 = load i32, i32* %eq, align 4
  %tobool35 = icmp ne i32 %40, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %if.end.31
  br label %unequal

if.end.37:                                        ; preds = %if.end.31
  %41 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_code = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %41, i32 0, i32 6
  %42 = load %struct._object*, %struct._object** %co_code, align 8
  %43 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_code38 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %43, i32 0, i32 6
  %44 = load %struct._object*, %struct._object** %co_code38, align 8
  %call39 = call i32 @PyObject_RichCompareBool(%struct._object* %42, %struct._object* %44, i32 2)
  store i32 %call39, i32* %eq, align 4
  %45 = load i32, i32* %eq, align 4
  %cmp40 = icmp sle i32 %45, 0
  br i1 %cmp40, label %if.then.42, label %if.end.43

if.then.42:                                       ; preds = %if.end.37
  br label %unequal

if.end.43:                                        ; preds = %if.end.37
  %46 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_consts = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %46, i32 0, i32 7
  %47 = load %struct._object*, %struct._object** %co_consts, align 8
  %48 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_consts44 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %48, i32 0, i32 7
  %49 = load %struct._object*, %struct._object** %co_consts44, align 8
  %call45 = call i32 @PyObject_RichCompareBool(%struct._object* %47, %struct._object* %49, i32 2)
  store i32 %call45, i32* %eq, align 4
  %50 = load i32, i32* %eq, align 4
  %cmp46 = icmp sle i32 %50, 0
  br i1 %cmp46, label %if.then.48, label %if.end.49

if.then.48:                                       ; preds = %if.end.43
  br label %unequal

if.end.49:                                        ; preds = %if.end.43
  %51 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_names = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %51, i32 0, i32 8
  %52 = load %struct._object*, %struct._object** %co_names, align 8
  %53 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_names50 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %53, i32 0, i32 8
  %54 = load %struct._object*, %struct._object** %co_names50, align 8
  %call51 = call i32 @PyObject_RichCompareBool(%struct._object* %52, %struct._object* %54, i32 2)
  store i32 %call51, i32* %eq, align 4
  %55 = load i32, i32* %eq, align 4
  %cmp52 = icmp sle i32 %55, 0
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.49
  br label %unequal

if.end.55:                                        ; preds = %if.end.49
  %56 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_varnames = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %56, i32 0, i32 9
  %57 = load %struct._object*, %struct._object** %co_varnames, align 8
  %58 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_varnames56 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %58, i32 0, i32 9
  %59 = load %struct._object*, %struct._object** %co_varnames56, align 8
  %call57 = call i32 @PyObject_RichCompareBool(%struct._object* %57, %struct._object* %59, i32 2)
  store i32 %call57, i32* %eq, align 4
  %60 = load i32, i32* %eq, align 4
  %cmp58 = icmp sle i32 %60, 0
  br i1 %cmp58, label %if.then.60, label %if.end.61

if.then.60:                                       ; preds = %if.end.55
  br label %unequal

if.end.61:                                        ; preds = %if.end.55
  %61 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %61, i32 0, i32 10
  %62 = load %struct._object*, %struct._object** %co_freevars, align 8
  %63 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_freevars62 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %63, i32 0, i32 10
  %64 = load %struct._object*, %struct._object** %co_freevars62, align 8
  %call63 = call i32 @PyObject_RichCompareBool(%struct._object* %62, %struct._object* %64, i32 2)
  store i32 %call63, i32* %eq, align 4
  %65 = load i32, i32* %eq, align 4
  %cmp64 = icmp sle i32 %65, 0
  br i1 %cmp64, label %if.then.66, label %if.end.67

if.then.66:                                       ; preds = %if.end.61
  br label %unequal

if.end.67:                                        ; preds = %if.end.61
  %66 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %66, i32 0, i32 11
  %67 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %68 = load %struct.PyCodeObject*, %struct.PyCodeObject** %cp, align 8
  %co_cellvars68 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %68, i32 0, i32 11
  %69 = load %struct._object*, %struct._object** %co_cellvars68, align 8
  %call69 = call i32 @PyObject_RichCompareBool(%struct._object* %67, %struct._object* %69, i32 2)
  store i32 %call69, i32* %eq, align 4
  %70 = load i32, i32* %eq, align 4
  %cmp70 = icmp sle i32 %70, 0
  br i1 %cmp70, label %if.then.72, label %if.end.73

if.then.72:                                       ; preds = %if.end.67
  br label %unequal

if.end.73:                                        ; preds = %if.end.67
  %71 = load i32, i32* %op.addr, align 4
  %cmp74 = icmp eq i32 %71, 2
  br i1 %cmp74, label %if.then.76, label %if.else

if.then.76:                                       ; preds = %if.end.73
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.77

if.else:                                          ; preds = %if.end.73
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.77

if.end.77:                                        ; preds = %if.else, %if.then.76
  br label %done

unequal:                                          ; preds = %if.then.72, %if.then.66, %if.then.60, %if.then.54, %if.then.48, %if.then.42, %if.then.36, %if.then.30, %if.then.24, %if.then.18, %if.then.12, %if.then.8
  %72 = load i32, i32* %eq, align 4
  %cmp78 = icmp slt i32 %72, 0
  br i1 %cmp78, label %if.then.80, label %if.end.81

if.then.80:                                       ; preds = %unequal
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.81:                                        ; preds = %unequal
  %73 = load i32, i32* %op.addr, align 4
  %cmp82 = icmp eq i32 %73, 3
  br i1 %cmp82, label %if.then.84, label %if.else.85

if.then.84:                                       ; preds = %if.end.81
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.86

if.else.85:                                       ; preds = %if.end.81
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %res, align 8
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.85, %if.then.84
  br label %done

done:                                             ; preds = %if.end.86, %if.end.77
  %74 = load %struct._object*, %struct._object** %res, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 0
  %75 = load i64, i64* %ob_refcnt, align 8
  %inc87 = add i64 %75, 1
  store i64 %inc87, i64* %ob_refcnt, align 8
  %76 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %76, %struct._object** %retval
  br label %return

return:                                           ; preds = %done, %if.then.80, %if.then
  %77 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %77
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @code_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %argcount = alloca i32, align 4
  %kwonlyargcount = alloca i32, align 4
  %nlocals = alloca i32, align 4
  %stacksize = alloca i32, align 4
  %flags = alloca i32, align 4
  %co = alloca %struct._object*, align 8
  %code = alloca %struct._object*, align 8
  %consts = alloca %struct._object*, align 8
  %names = alloca %struct._object*, align 8
  %ournames = alloca %struct._object*, align 8
  %varnames = alloca %struct._object*, align 8
  %ourvarnames = alloca %struct._object*, align 8
  %freevars = alloca %struct._object*, align 8
  %ourfreevars = alloca %struct._object*, align 8
  %cellvars = alloca %struct._object*, align 8
  %ourcellvars = alloca %struct._object*, align 8
  %filename = alloca %struct._object*, align 8
  %name = alloca %struct._object*, align 8
  %firstlineno = alloca i32, align 4
  %lnotab = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  %_py_xdecref_tmp62 = alloca %struct._object*, align 8
  %_py_decref_tmp66 = alloca %struct._object*, align 8
  %_py_xdecref_tmp79 = alloca %struct._object*, align 8
  %_py_decref_tmp83 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  store %struct._object* null, %struct._object** %co, align 8
  store %struct._object* null, %struct._object** %ournames, align 8
  store %struct._object* null, %struct._object** %ourvarnames, align 8
  store %struct._object* null, %struct._object** %freevars, align 8
  store %struct._object* null, %struct._object** %ourfreevars, align 8
  store %struct._object* null, %struct._object** %cellvars, align 8
  store %struct._object* null, %struct._object** %ourcellvars, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0), i32* %argcount, i32* %kwonlyargcount, i32* %nlocals, i32* %stacksize, i32* %flags, %struct._object** %code, %struct._typeobject* @PyTuple_Type, %struct._object** %consts, %struct._typeobject* @PyTuple_Type, %struct._object** %names, %struct._typeobject* @PyTuple_Type, %struct._object** %varnames, %struct._object** %filename, %struct._object** %name, i32* %firstlineno, %struct._object** %lnotab, %struct._typeobject* @PyTuple_Type, %struct._object** %freevars, %struct._typeobject* @PyTuple_Type, %struct._object** %cellvars)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %argcount, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i32 0, i32 0))
  br label %cleanup

if.end.2:                                         ; preds = %if.end
  %3 = load i32, i32* %kwonlyargcount, align 4
  %cmp3 = icmp slt i32 %3, 0
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %if.end.2
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i32 0, i32 0))
  br label %cleanup

if.end.5:                                         ; preds = %if.end.2
  %5 = load i32, i32* %nlocals, align 4
  %cmp6 = icmp slt i32 %5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i32 0, i32 0))
  br label %cleanup

if.end.8:                                         ; preds = %if.end.5
  %7 = load %struct._object*, %struct._object** %names, align 8
  %call9 = call %struct._object* @validate_and_copy_tuple(%struct._object* %7)
  store %struct._object* %call9, %struct._object** %ournames, align 8
  %8 = load %struct._object*, %struct._object** %ournames, align 8
  %cmp10 = icmp eq %struct._object* %8, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  br label %cleanup

if.end.12:                                        ; preds = %if.end.8
  %9 = load %struct._object*, %struct._object** %varnames, align 8
  %call13 = call %struct._object* @validate_and_copy_tuple(%struct._object* %9)
  store %struct._object* %call13, %struct._object** %ourvarnames, align 8
  %10 = load %struct._object*, %struct._object** %ourvarnames, align 8
  %cmp14 = icmp eq %struct._object* %10, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %cleanup

if.end.16:                                        ; preds = %if.end.12
  %11 = load %struct._object*, %struct._object** %freevars, align 8
  %tobool17 = icmp ne %struct._object* %11, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %if.end.16
  %12 = load %struct._object*, %struct._object** %freevars, align 8
  %call19 = call %struct._object* @validate_and_copy_tuple(%struct._object* %12)
  store %struct._object* %call19, %struct._object** %ourfreevars, align 8
  br label %if.end.21

if.else:                                          ; preds = %if.end.16
  %call20 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call20, %struct._object** %ourfreevars, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.else, %if.then.18
  %13 = load %struct._object*, %struct._object** %ourfreevars, align 8
  %cmp22 = icmp eq %struct._object* %13, null
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  br label %cleanup

if.end.24:                                        ; preds = %if.end.21
  %14 = load %struct._object*, %struct._object** %cellvars, align 8
  %tobool25 = icmp ne %struct._object* %14, null
  br i1 %tobool25, label %if.then.26, label %if.else.28

if.then.26:                                       ; preds = %if.end.24
  %15 = load %struct._object*, %struct._object** %cellvars, align 8
  %call27 = call %struct._object* @validate_and_copy_tuple(%struct._object* %15)
  store %struct._object* %call27, %struct._object** %ourcellvars, align 8
  br label %if.end.30

if.else.28:                                       ; preds = %if.end.24
  %call29 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call29, %struct._object** %ourcellvars, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else.28, %if.then.26
  %16 = load %struct._object*, %struct._object** %ourcellvars, align 8
  %cmp31 = icmp eq %struct._object* %16, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.30
  br label %cleanup

if.end.33:                                        ; preds = %if.end.30
  %17 = load i32, i32* %argcount, align 4
  %18 = load i32, i32* %kwonlyargcount, align 4
  %19 = load i32, i32* %nlocals, align 4
  %20 = load i32, i32* %stacksize, align 4
  %21 = load i32, i32* %flags, align 4
  %22 = load %struct._object*, %struct._object** %code, align 8
  %23 = load %struct._object*, %struct._object** %consts, align 8
  %24 = load %struct._object*, %struct._object** %ournames, align 8
  %25 = load %struct._object*, %struct._object** %ourvarnames, align 8
  %26 = load %struct._object*, %struct._object** %ourfreevars, align 8
  %27 = load %struct._object*, %struct._object** %ourcellvars, align 8
  %28 = load %struct._object*, %struct._object** %filename, align 8
  %29 = load %struct._object*, %struct._object** %name, align 8
  %30 = load i32, i32* %firstlineno, align 4
  %31 = load %struct._object*, %struct._object** %lnotab, align 8
  %call34 = call %struct.PyCodeObject* @PyCode_New(i32 %17, i32 %18, i32 %19, i32 %20, i32 %21, %struct._object* %22, %struct._object* %23, %struct._object* %24, %struct._object* %25, %struct._object* %26, %struct._object* %27, %struct._object* %28, %struct._object* %29, i32 %30, %struct._object* %31)
  %32 = bitcast %struct.PyCodeObject* %call34 to %struct._object*
  store %struct._object* %32, %struct._object** %co, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end.33, %if.then.32, %if.then.23, %if.then.15, %if.then.11, %if.then.7, %if.then.4, %if.then.1
  br label %do.body

do.body:                                          ; preds = %cleanup
  %33 = load %struct._object*, %struct._object** %ournames, align 8
  store %struct._object* %33, %struct._object** %_py_xdecref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp35 = icmp ne %struct._object* %34, null
  br i1 %cmp35, label %if.then.36, label %if.end.42

if.then.36:                                       ; preds = %do.body
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %35 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %37, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp38 = icmp ne i64 %dec, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.37
  br label %if.end.41

if.else.40:                                       ; preds = %do.body.37
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %40(%struct._object* %41)
  br label %if.end.41

if.end.41:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end

do.end:                                           ; preds = %if.end.41
  br label %if.end.42

if.end.42:                                        ; preds = %do.end, %do.body
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %42 = load %struct._object*, %struct._object** %ourvarnames, align 8
  store %struct._object* %42, %struct._object** %_py_xdecref_tmp45, align 8
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  %cmp46 = icmp ne %struct._object* %43, null
  br i1 %cmp46, label %if.then.47, label %if.end.59

if.then.47:                                       ; preds = %do.body.44
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.47
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp45, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp49, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %46, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %49(%struct._object* %50)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.44
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %do.body.61

do.body.61:                                       ; preds = %do.end.60
  %51 = load %struct._object*, %struct._object** %ourfreevars, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp62, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp62, align 8
  %cmp63 = icmp ne %struct._object* %52, null
  br i1 %cmp63, label %if.then.64, label %if.end.76

if.then.64:                                       ; preds = %do.body.61
  br label %do.body.65

do.body.65:                                       ; preds = %if.then.64
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp62, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp66, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_refcnt67 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt67, align 8
  %dec68 = add i64 %55, -1
  store i64 %dec68, i64* %ob_refcnt67, align 8
  %cmp69 = icmp ne i64 %dec68, 0
  br i1 %cmp69, label %if.then.70, label %if.else.71

if.then.70:                                       ; preds = %do.body.65
  br label %if.end.74

if.else.71:                                       ; preds = %do.body.65
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  %ob_type72 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type72, align 8
  %tp_dealloc73 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc73, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp66, align 8
  call void %58(%struct._object* %59)
  br label %if.end.74

if.end.74:                                        ; preds = %if.else.71, %if.then.70
  br label %do.end.75

do.end.75:                                        ; preds = %if.end.74
  br label %if.end.76

if.end.76:                                        ; preds = %do.end.75, %do.body.61
  br label %do.end.77

do.end.77:                                        ; preds = %if.end.76
  br label %do.body.78

do.body.78:                                       ; preds = %do.end.77
  %60 = load %struct._object*, %struct._object** %ourcellvars, align 8
  store %struct._object* %60, %struct._object** %_py_xdecref_tmp79, align 8
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp79, align 8
  %cmp80 = icmp ne %struct._object* %61, null
  br i1 %cmp80, label %if.then.81, label %if.end.93

if.then.81:                                       ; preds = %do.body.78
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp79, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp83, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_refcnt84 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt84, align 8
  %dec85 = add i64 %64, -1
  store i64 %dec85, i64* %ob_refcnt84, align 8
  %cmp86 = icmp ne i64 %dec85, 0
  br i1 %cmp86, label %if.then.87, label %if.else.88

if.then.87:                                       ; preds = %do.body.82
  br label %if.end.91

if.else.88:                                       ; preds = %do.body.82
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  %ob_type89 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type89, align 8
  %tp_dealloc90 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc90, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp83, align 8
  call void %67(%struct._object* %68)
  br label %if.end.91

if.end.91:                                        ; preds = %if.else.88, %if.then.87
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  br label %if.end.93

if.end.93:                                        ; preds = %do.end.92, %do.body.78
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  %69 = load %struct._object*, %struct._object** %co, align 8
  store %struct._object* %69, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.94, %if.then
  %70 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %70
}

; Function Attrs: nounwind uwtable
define i32 @PyCode_Addr2Line(%struct.PyCodeObject* %co, i32 %addrq) #0 {
entry:
  %co.addr = alloca %struct.PyCodeObject*, align 8
  %addrq.addr = alloca i32, align 4
  %size = alloca i64, align 8
  %p = alloca i8*, align 8
  %line = alloca i32, align 4
  %addr = alloca i32, align 4
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  store i32 %addrq, i32* %addrq.addr, align 4
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_lnotab = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 16
  %1 = load %struct._object*, %struct._object** %co_lnotab, align 8
  %call = call i64 @PyBytes_Size(%struct._object* %1)
  %div = sdiv i64 %call, 2
  store i64 %div, i64* %size, align 8
  %2 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_lnotab1 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %2, i32 0, i32 16
  %3 = load %struct._object*, %struct._object** %co_lnotab1, align 8
  %call2 = call i8* @PyBytes_AsString(%struct._object* %3)
  store i8* %call2, i8** %p, align 8
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %4, i32 0, i32 15
  %5 = load i32, i32* %co_firstlineno, align 4
  store i32 %5, i32* %line, align 4
  store i32 0, i32* %addr, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %6 = load i64, i64* %size, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %size, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %7 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %7, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %8 = load i8, i8* %7, align 1
  %conv = zext i8 %8 to i32
  %9 = load i32, i32* %addr, align 4
  %add = add i32 %9, %conv
  store i32 %add, i32* %addr, align 4
  %10 = load i32, i32* %addr, align 4
  %11 = load i32, i32* %addrq.addr, align 4
  %cmp3 = icmp sgt i32 %10, %11
  br i1 %cmp3, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %12 = load i8*, i8** %p, align 8
  %incdec.ptr5 = getelementptr i8, i8* %12, i32 1
  store i8* %incdec.ptr5, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv6 = zext i8 %13 to i32
  %14 = load i32, i32* %line, align 4
  %add7 = add i32 %14, %conv6
  store i32 %add7, i32* %line, align 4
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %15 = load i32, i32* %line, align 4
  ret i32 %15
}

declare i64 @PyBytes_Size(%struct._object*) #1

declare i8* @PyBytes_AsString(%struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @_PyCode_CheckLineNumber(%struct.PyCodeObject* %co, i32 %lasti, %struct._addr_pair* %bounds) #0 {
entry:
  %co.addr = alloca %struct.PyCodeObject*, align 8
  %lasti.addr = alloca i32, align 4
  %bounds.addr = alloca %struct._addr_pair*, align 8
  %size = alloca i64, align 8
  %addr = alloca i32, align 4
  %line = alloca i32, align 4
  %p = alloca i8*, align 8
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  store i32 %lasti, i32* %lasti.addr, align 4
  store %struct._addr_pair* %bounds, %struct._addr_pair** %bounds.addr, align 8
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_lnotab = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 16
  %1 = load %struct._object*, %struct._object** %co_lnotab, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %2, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %p, align 8
  %3 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_lnotab1 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %3, i32 0, i32 16
  %4 = load %struct._object*, %struct._object** %co_lnotab1, align 8
  %5 = bitcast %struct._object* %4 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %5, i32 0, i32 1
  %6 = load i64, i64* %ob_size, align 8
  %div = sdiv i64 %6, 2
  store i64 %div, i64* %size, align 8
  store i32 0, i32* %addr, align 4
  %7 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %7, i32 0, i32 15
  %8 = load i32, i32* %co_firstlineno, align 4
  store i32 %8, i32* %line, align 4
  %9 = load %struct._addr_pair*, %struct._addr_pair** %bounds.addr, align 8
  %ap_lower = getelementptr inbounds %struct._addr_pair, %struct._addr_pair* %9, i32 0, i32 0
  store i32 0, i32* %ap_lower, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end.8, %entry
  %10 = load i64, i64* %size, align 8
  %cmp = icmp sgt i64 %10, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %11 = load i32, i32* %addr, align 4
  %12 = load i8*, i8** %p, align 8
  %13 = load i8, i8* %12, align 1
  %conv = zext i8 %13 to i32
  %add = add i32 %11, %conv
  %14 = load i32, i32* %lasti.addr, align 4
  %cmp2 = icmp sgt i32 %add, %14
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr i8, i8* %15, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  %16 = load i8, i8* %15, align 1
  %conv4 = zext i8 %16 to i32
  %17 = load i32, i32* %addr, align 4
  %add5 = add i32 %17, %conv4
  store i32 %add5, i32* %addr, align 4
  %18 = load i8*, i8** %p, align 8
  %19 = load i8, i8* %18, align 1
  %tobool = icmp ne i8 %19, 0
  br i1 %tobool, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %20 = load i32, i32* %addr, align 4
  %21 = load %struct._addr_pair*, %struct._addr_pair** %bounds.addr, align 8
  %ap_lower7 = getelementptr inbounds %struct._addr_pair, %struct._addr_pair* %21, i32 0, i32 0
  store i32 %20, i32* %ap_lower7, align 4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end
  %22 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr i8, i8* %22, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv10 = zext i8 %23 to i32
  %24 = load i32, i32* %line, align 4
  %add11 = add i32 %24, %conv10
  store i32 %add11, i32* %line, align 4
  %25 = load i64, i64* %size, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %size, align 8
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  %26 = load i64, i64* %size, align 8
  %cmp12 = icmp sgt i64 %26, 0
  br i1 %cmp12, label %if.then.14, label %if.else

if.then.14:                                       ; preds = %while.end
  br label %while.cond.15

while.cond.15:                                    ; preds = %if.end.26, %if.then.14
  %27 = load i64, i64* %size, align 8
  %dec16 = add i64 %27, -1
  store i64 %dec16, i64* %size, align 8
  %cmp17 = icmp sge i64 %dec16, 0
  br i1 %cmp17, label %while.body.19, label %while.end.27

while.body.19:                                    ; preds = %while.cond.15
  %28 = load i8*, i8** %p, align 8
  %incdec.ptr20 = getelementptr i8, i8* %28, i32 1
  store i8* %incdec.ptr20, i8** %p, align 8
  %29 = load i8, i8* %28, align 1
  %conv21 = zext i8 %29 to i32
  %30 = load i32, i32* %addr, align 4
  %add22 = add i32 %30, %conv21
  store i32 %add22, i32* %addr, align 4
  %31 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr i8, i8* %31, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  %32 = load i8, i8* %31, align 1
  %tobool24 = icmp ne i8 %32, 0
  br i1 %tobool24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %while.body.19
  br label %while.end.27

if.end.26:                                        ; preds = %while.body.19
  br label %while.cond.15

while.end.27:                                     ; preds = %if.then.25, %while.cond.15
  %33 = load i32, i32* %addr, align 4
  %34 = load %struct._addr_pair*, %struct._addr_pair** %bounds.addr, align 8
  %ap_upper = getelementptr inbounds %struct._addr_pair, %struct._addr_pair* %34, i32 0, i32 1
  store i32 %33, i32* %ap_upper, align 4
  br label %if.end.29

if.else:                                          ; preds = %while.end
  %35 = load %struct._addr_pair*, %struct._addr_pair** %bounds.addr, align 8
  %ap_upper28 = getelementptr inbounds %struct._addr_pair, %struct._addr_pair* %35, i32 0, i32 1
  store i32 2147483647, i32* %ap_upper28, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %while.end.27
  %36 = load i32, i32* %line, align 4
  ret i32 %36
}

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #3

declare void @PyObject_GC_Del(i8*) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare void @PyObject_Free(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i64 @PyObject_Hash(%struct._object*) #1

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @code_sizeof(%struct.PyCodeObject* %co, i8* %unused) #0 {
entry:
  %co.addr = alloca %struct.PyCodeObject*, align 8
  %unused.addr = alloca i8*, align 8
  %res = alloca i64, align 8
  store %struct.PyCodeObject* %co, %struct.PyCodeObject** %co.addr, align 8
  store i8* %unused, i8** %unused.addr, align 8
  store i64 144, i64* %res, align 8
  %0 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_cell2arg = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %0, i32 0, i32 12
  %1 = load i8*, i8** %co_cell2arg, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %2, i32 0, i32 11
  %3 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %cmp1 = icmp ne %struct._object* %3, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co.addr, align 8
  %co_cellvars2 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %4, i32 0, i32 11
  %5 = load %struct._object*, %struct._object** %co_cellvars2, align 8
  %6 = bitcast %struct._object* %5 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %6, i32 0, i32 1
  %7 = load i64, i64* %ob_size, align 8
  %mul = mul i64 %7, 1
  %8 = load i64, i64* %res, align 8
  %add = add i64 %8, %mul
  store i64 %add, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %9 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %9)
  ret %struct._object* %call
}

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @validate_and_copy_tuple(%struct._object* %tup) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %tup.addr = alloca %struct._object*, align 8
  %newtuple = alloca %struct._object*, align 8
  %item = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct._object* %tup, %struct._object** %tup.addr, align 8
  %0 = load %struct._object*, %struct._object** %tup.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %1, i32 0, i32 1
  %2 = load i64, i64* %ob_size, align 8
  store i64 %2, i64* %len, align 8
  %3 = load i64, i64* %len, align 8
  %call = call %struct._object* @PyTuple_New(i64 %3)
  store %struct._object* %call, %struct._object** %newtuple, align 8
  %4 = load %struct._object*, %struct._object** %newtuple, align 8
  %cmp = icmp eq %struct._object* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i64, i64* %i, align 8
  %6 = load i64, i64* %len, align 8
  %cmp1 = icmp slt i64 %5, %6
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i64, i64* %i, align 8
  %8 = load %struct._object*, %struct._object** %tup.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %9, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %7
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %10, %struct._object** %item, align 8
  %11 = load %struct._object*, %struct._object** %item, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp2 = icmp eq %struct._typeobject* %12, @PyUnicode_Type
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %for.body
  %13 = load %struct._object*, %struct._object** %item, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.32

if.else:                                          ; preds = %for.body
  %15 = load %struct._object*, %struct._object** %item, align 8
  %ob_type4 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type4, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 19
  %17 = load i64, i64* %tp_flags, align 8
  %and = and i64 %17, 268435456
  %cmp5 = icmp ne i64 %and, 0
  br i1 %cmp5, label %if.else.15, label %if.then.6

if.then.6:                                        ; preds = %if.else
  %18 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %19 = load %struct._object*, %struct._object** %item, align 8
  %ob_type7 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type7, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 1
  %21 = load i8*, i8** %tp_name, align 8
  %call8 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %18, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.27, i32 0, i32 0), i8* %21)
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %22 = load %struct._object*, %struct._object** %newtuple, align 8
  store %struct._object* %22, %struct._object** %_py_decref_tmp, align 8
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt9, align 8
  %dec = add i64 %24, -1
  store i64 %dec, i64* %ob_refcnt9, align 8
  %cmp10 = icmp ne i64 %dec, 0
  br i1 %cmp10, label %if.then.11, label %if.else.12

if.then.11:                                       ; preds = %do.body
  br label %if.end.14

if.else.12:                                       ; preds = %do.body
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type13 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type13, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %27(%struct._object* %28)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.12, %if.then.11
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.15:                                       ; preds = %if.else
  %29 = load %struct._object*, %struct._object** %item, align 8
  %call16 = call %struct._object* @_PyUnicode_Copy(%struct._object* %29)
  store %struct._object* %call16, %struct._object** %item, align 8
  %30 = load %struct._object*, %struct._object** %item, align 8
  %cmp17 = icmp eq %struct._object* %30, null
  br i1 %cmp17, label %if.then.18, label %if.end.30

if.then.18:                                       ; preds = %if.else.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %31 = load %struct._object*, %struct._object** %newtuple, align 8
  store %struct._object* %31, %struct._object** %_py_decref_tmp20, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %32, i32 0, i32 0
  %33 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %33, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 1
  %35 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %35, i32 0, i32 4
  %36 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %36(%struct._object* %37)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.else.15
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30
  br label %if.end.32

if.end.32:                                        ; preds = %if.end.31, %if.then.3
  %38 = load %struct._object*, %struct._object** %item, align 8
  %39 = load i64, i64* %i, align 8
  %40 = load %struct._object*, %struct._object** %newtuple, align 8
  %41 = bitcast %struct._object* %40 to %struct.PyTupleObject*
  %ob_item33 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %41, i32 0, i32 1
  %arrayidx34 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item33, i32 0, i64 %39
  store %struct._object* %38, %struct._object** %arrayidx34, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.32
  %42 = load i64, i64* %i, align 8
  %inc35 = add i64 %42, 1
  store i64 %inc35, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %43 = load %struct._object*, %struct._object** %newtuple, align 8
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %do.end.29, %do.end, %if.then
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare %struct._object* @_PyUnicode_Copy(%struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
