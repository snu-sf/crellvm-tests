; ModuleID = './symtablemodule.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct.symtable = type { %struct._object*, %struct._symtable_entry*, %struct._symtable_entry*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, %struct.PyFutureFeatures*, i32, i32 }
%struct._symtable_entry = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, i32, i32, i32, i32, i32, %struct.symtable* }
%struct.PyFutureFeatures = type { i32, i32 }

@PySTEntry_Type = external global %struct._typeobject, align 8
@symtablemodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* null, i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @symtable_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"USE\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"DEF_GLOBAL\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"DEF_LOCAL\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DEF_PARAM\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"DEF_FREE\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"DEF_FREE_CLASS\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"DEF_IMPORT\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"DEF_BOUND\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"TYPE_FUNCTION\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"TYPE_CLASS\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"TYPE_MODULE\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"OPT_IMPORT_STAR\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"OPT_TOPLEVEL\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"GLOBAL_EXPLICIT\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"GLOBAL_IMPLICIT\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"FREE\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"CELL\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"SCOPE_OFF\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"SCOPE_MASK\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"_symtable\00", align 1
@symtable_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @symtable_symtable, i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.22, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [9 x i8] c"symtable\00", align 1
@.str.22 = private unnamed_addr constant [66 x i8] c"Return symbol and scope dictionaries used internally by compiler.\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"sO&s:symtable\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"eval\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"single\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [54 x i8] c"symtable() arg 3 must be 'exec' or 'eval' or 'single'\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__symtable() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @PySTEntry_Type)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @symtablemodule, i32 1013)
  store %struct._object* %call1, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp2 = icmp eq %struct._object* %0, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call5 = call i32 @PyModule_AddIntConstant(%struct._object* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i64 16)
  %2 = load %struct._object*, %struct._object** %m, align 8
  %call6 = call i32 @PyModule_AddIntConstant(%struct._object* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i32 0, i32 0), i64 1)
  %3 = load %struct._object*, %struct._object** %m, align 8
  %call7 = call i32 @PyModule_AddIntConstant(%struct._object* %3, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i64 2)
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call8 = call i32 @PyModule_AddIntConstant(%struct._object* %4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i64 4)
  %5 = load %struct._object*, %struct._object** %m, align 8
  %call9 = call i32 @PyModule_AddIntConstant(%struct._object* %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i32 0, i32 0), i64 32)
  %6 = load %struct._object*, %struct._object** %m, align 8
  %call10 = call i32 @PyModule_AddIntConstant(%struct._object* %6, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i32 0, i32 0), i64 64)
  %7 = load %struct._object*, %struct._object** %m, align 8
  %call11 = call i32 @PyModule_AddIntConstant(%struct._object* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i32 0, i32 0), i64 128)
  %8 = load %struct._object*, %struct._object** %m, align 8
  %call12 = call i32 @PyModule_AddIntConstant(%struct._object* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i64 134)
  %9 = load %struct._object*, %struct._object** %m, align 8
  %call13 = call i32 @PyModule_AddIntConstant(%struct._object* %9, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i64 0)
  %10 = load %struct._object*, %struct._object** %m, align 8
  %call14 = call i32 @PyModule_AddIntConstant(%struct._object* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), i64 1)
  %11 = load %struct._object*, %struct._object** %m, align 8
  %call15 = call i32 @PyModule_AddIntConstant(%struct._object* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i64 2)
  %12 = load %struct._object*, %struct._object** %m, align 8
  %call16 = call i32 @PyModule_AddIntConstant(%struct._object* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i32 0, i32 0), i64 1)
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call17 = call i32 @PyModule_AddIntConstant(%struct._object* %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i64 2)
  %14 = load %struct._object*, %struct._object** %m, align 8
  %call18 = call i32 @PyModule_AddIntConstant(%struct._object* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i64 1)
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call19 = call i32 @PyModule_AddIntConstant(%struct._object* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), i64 2)
  %16 = load %struct._object*, %struct._object** %m, align 8
  %call20 = call i32 @PyModule_AddIntConstant(%struct._object* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0), i64 3)
  %17 = load %struct._object*, %struct._object** %m, align 8
  %call21 = call i32 @PyModule_AddIntConstant(%struct._object* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0), i64 4)
  %18 = load %struct._object*, %struct._object** %m, align 8
  %call22 = call i32 @PyModule_AddIntConstant(%struct._object* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), i64 5)
  %19 = load %struct._object*, %struct._object** %m, align 8
  %call23 = call i32 @PyModule_AddIntConstant(%struct._object* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i64 11)
  %20 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call i32 @PyModule_AddIntConstant(%struct._object* %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0), i64 15)
  %call25 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call25, null
  br i1 %tobool, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.4
  br label %do.body

do.body:                                          ; preds = %if.then.26
  %21 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp27 = icmp ne i64 %dec, 0
  br i1 %cmp27, label %if.then.28, label %if.else

if.then.28:                                       ; preds = %do.body
  br label %if.end.29

if.else:                                          ; preds = %do.body
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.29

if.end.29:                                        ; preds = %if.else, %if.then.28
  br label %do.end

do.end:                                           ; preds = %if.end.29
  store %struct._object* null, %struct._object** %m, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %do.end, %if.end.4
  %28 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %28, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.3, %if.then
  %29 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %29
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i32 @PyModule_AddIntConstant(%struct._object*, i8*, i64) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @symtable_symtable(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %st = alloca %struct.symtable*, align 8
  %t = alloca %struct._object*, align 8
  %str = alloca i8*, align 8
  %filename = alloca %struct._object*, align 8
  %startstr = alloca i8*, align 8
  %start = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0), i8** %str, i32 (%struct._object*, i8*)* @PyUnicode_FSDecoder, %struct._object** %filename, i8** %startstr)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %startstr, align 8
  %call1 = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0)) #3
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store i32 257, i32* %start, align 4
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %2 = load i8*, i8** %startstr, align 8
  %call3 = call i32 @strcmp(i8* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0)) #3
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then.5, label %if.else.6

if.then.5:                                        ; preds = %if.else
  store i32 258, i32* %start, align 4
  br label %if.end.16

if.else.6:                                        ; preds = %if.else
  %3 = load i8*, i8** %startstr, align 8
  %call7 = call i32 @strcmp(i8* %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #3
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %if.else.6
  store i32 256, i32* %start, align 4
  br label %if.end.15

if.else.10:                                       ; preds = %if.else.6
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.27, i32 0, i32 0))
  br label %do.body

do.body:                                          ; preds = %if.else.10
  %5 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp11 = icmp ne i64 %dec, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body
  br label %if.end.14

if.else.13:                                       ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end.14

if.end.14:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end

do.end:                                           ; preds = %if.end.14
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.9
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.then.5
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.2
  %12 = load i8*, i8** %str, align 8
  %13 = load %struct._object*, %struct._object** %filename, align 8
  %14 = load i32, i32* %start, align 4
  %call18 = call %struct.symtable* @Py_SymtableStringObject(i8* %12, %struct._object* %13, i32 %14)
  store %struct.symtable* %call18, %struct.symtable** %st, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.17
  %15 = load %struct._object*, %struct._object** %filename, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp20, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %17, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %20(%struct._object* %21)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %22 = load %struct.symtable*, %struct.symtable** %st, align 8
  %cmp30 = icmp eq %struct.symtable* %22, null
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %do.end.29
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %do.end.29
  %23 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_top = getelementptr inbounds %struct.symtable, %struct.symtable* %23, i32 0, i32 2
  %24 = load %struct._symtable_entry*, %struct._symtable_entry** %st_top, align 8
  %25 = bitcast %struct._symtable_entry* %24 to %struct._object*
  store %struct._object* %25, %struct._object** %t, align 8
  %26 = load %struct._object*, %struct._object** %t, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt33, align 8
  %inc = add i64 %27, 1
  store i64 %inc, i64* %ob_refcnt33, align 8
  %28 = load %struct.symtable*, %struct.symtable** %st, align 8
  %st_future = getelementptr inbounds %struct.symtable, %struct.symtable* %28, i32 0, i32 8
  %29 = load %struct.PyFutureFeatures*, %struct.PyFutureFeatures** %st_future, align 8
  %30 = bitcast %struct.PyFutureFeatures* %29 to i8*
  call void @PyMem_Free(i8* %30)
  %31 = load %struct.symtable*, %struct.symtable** %st, align 8
  call void @PySymtable_Free(%struct.symtable* %31)
  %32 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %32, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.32, %if.then.31, %do.end, %if.then
  %33 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %33
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @PyUnicode_FSDecoder(%struct._object*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare %struct.symtable* @Py_SymtableStringObject(i8*, %struct._object*, i32) #1

declare void @PyMem_Free(i8*) #1

declare void @PySymtable_Free(%struct.symtable*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
