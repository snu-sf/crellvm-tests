; ModuleID = './atexitmodule.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.atexitmodule_state = type { %struct.atexit_callback**, i32, i32 }
%struct.atexit_callback = type { %struct._object*, %struct._object*, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }

@atexitmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([160 x i8], [160 x i8]* @atexit__doc__, i32 0, i32 0), i64 16, %struct.PyMethodDef* getelementptr inbounds ([6 x %struct.PyMethodDef], [6 x %struct.PyMethodDef]* @atexit_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* @atexit_m_traverse, i32 (%struct._object*)* @atexit_m_clear, void (i8*)* bitcast (void (%struct._object*)* @atexit_free to void (i8*)*) }, align 8
@.str = private unnamed_addr constant [7 x i8] c"atexit\00", align 1
@atexit__doc__ = internal global [160 x i8] c"allow programmer to define multiple exit functions to be executedupon normal program termination.\0A\0ATwo public functions, register and unregister, are defined.\0A\00", align 16
@atexit_methods = internal global [6 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*, %struct._object*, %struct._object*)* @atexit_register to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([310 x i8], [310 x i8]* @atexit_register__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_clear, i32 4, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @atexit_clear__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_unregister, i32 8, i8* getelementptr inbounds ([147 x i8], [147 x i8]* @atexit_unregister__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_run_exitfuncs, i32 4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @atexit_run_exitfuncs__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @atexit_ncallbacks, i32 4, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @atexit_ncallbacks__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@atexit_register__doc__ = internal global [310 x i8] c"register(func, *args, **kwargs) -> func\0A\0ARegister a function to be executed upon normal program termination\0A\0A    func - function to be called at exit\0A    args - optional arguments to pass to func\0A    kwargs - optional keyword arguments to pass to func\0A\0A    func is returned to facilitate usage as a decorator.\00", align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"_clear\00", align 1
@atexit_clear__doc__ = internal global [74 x i8] c"_clear() -> None\0A\0AClear the list of previously registered exit functions.\00", align 16
@.str.3 = private unnamed_addr constant [11 x i8] c"unregister\00", align 1
@atexit_unregister__doc__ = internal global [147 x i8] c"unregister(func) -> None\0A\0AUnregister a exit function which was previously registered using\0Aatexit.register\0A\0A    func - function to be unregistered\00", align 16
@.str.4 = private unnamed_addr constant [15 x i8] c"_run_exitfuncs\00", align 1
@atexit_run_exitfuncs__doc__ = internal global [61 x i8] c"_run_exitfuncs() -> None\0A\0ARun all registered exit functions.\00", align 16
@.str.5 = private unnamed_addr constant [12 x i8] c"_ncallbacks\00", align 1
@atexit_ncallbacks__doc__ = internal global [70 x i8] c"_ncallbacks() -> int\0A\0AReturn the number of registered exit functions.\00", align 16
@PyExc_TypeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [47 x i8] c"register() takes at least 1 argument (0 given)\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"the first argument must be callable\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_SystemExit = external global %struct._object*, align 8
@.str.8 = private unnamed_addr constant [33 x i8] c"Error in atexit._run_exitfuncs:\0A\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit_atexit() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %call = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @atexitmodule, i32 1013)
  store %struct._object* %call, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %m, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %1)
  %2 = bitcast i8* %call1 to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %2, %struct.atexitmodule_state** %modstate, align 8
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %callback_len = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %3, i32 0, i32 2
  store i32 32, i32* %callback_len, align 4
  %4 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %4, i32 0, i32 1
  store i32 0, i32* %ncallbacks, align 4
  %5 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %callback_len2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %5, i32 0, i32 2
  %6 = load i32, i32* %callback_len2, align 4
  %conv = sext i32 %6 to i64
  %cmp3 = icmp ugt i64 %conv, 1152921504606846975
  br i1 %cmp3, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  %7 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %callback_len5 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %7, i32 0, i32 2
  %8 = load i32, i32* %callback_len5, align 4
  %conv6 = sext i32 %8 to i64
  %mul = mul i64 %conv6, 8
  %call7 = call i8* @PyMem_Malloc(i64 %mul)
  %9 = bitcast i8* %call7 to %struct.atexit_callback**
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.atexit_callback** [ null, %cond.true ], [ %9, %cond.false ]
  %10 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %10, i32 0, i32 0
  store %struct.atexit_callback** %cond, %struct.atexit_callback*** %atexit_callbacks, align 8
  %11 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks8 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %11, i32 0, i32 0
  %12 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks8, align 8
  %cmp9 = icmp eq %struct.atexit_callback** %12, null
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %cond.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %cond.end
  call void @_Py_PyAtExit(void ()* @atexit_callfuncs)
  %13 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %13, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.12, %if.then.11, %if.then
  %14 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %14
}

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare i8* @PyModule_GetState(%struct._object*) #1

declare i8* @PyMem_Malloc(i64) #1

declare void @_Py_PyAtExit(void ()*) #1

; Function Attrs: nounwind uwtable
define internal void @atexit_callfuncs() #0 {
entry:
  %exc_type = alloca %struct._object*, align 8
  %exc_value = alloca %struct._object*, align 8
  %exc_tb = alloca %struct._object*, align 8
  %r = alloca %struct._object*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %module = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %i = alloca i32, align 4
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp23 = alloca %struct._object*, align 8
  %_py_xdecref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp38 = alloca %struct._object*, align 8
  %_py_xdecref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  store %struct._object* null, %struct._object** %exc_type, align 8
  %call = call %struct._object* @PyState_FindModule(%struct.PyModuleDef* @atexitmodule)
  store %struct._object* %call, %struct._object** %module, align 8
  %0 = load %struct._object*, %struct._object** %module, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.76

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %module, align 8
  %call1 = call i8* @PyModule_GetState(%struct._object* %1)
  %2 = bitcast i8* %call1 to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %2, %struct.atexitmodule_state** %modstate, align 8
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %3, i32 0, i32 1
  %4 = load i32, i32* %ncallbacks, align 4
  %cmp2 = icmp eq i32 %4, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %if.end.76

if.end.4:                                         ; preds = %if.end
  %5 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks5 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %5, i32 0, i32 1
  %6 = load i32, i32* %ncallbacks5, align 4
  %sub = sub i32 %6, 1
  store i32 %sub, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.4
  %7 = load i32, i32* %i, align 4
  %cmp6 = icmp sge i32 %7, 0
  br i1 %cmp6, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %9, i32 0, i32 0
  %10 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %10, i64 %idxprom
  %11 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8
  store %struct.atexit_callback* %11, %struct.atexit_callback** %cb, align 8
  %12 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %cmp7 = icmp eq %struct.atexit_callback* %12, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %for.body
  br label %for.inc

if.end.9:                                         ; preds = %for.body
  %13 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %13, i32 0, i32 0
  %14 = load %struct._object*, %struct._object** %func, align 8
  %15 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %args, align 8
  %17 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %17, i32 0, i32 2
  %18 = load %struct._object*, %struct._object** %kwargs, align 8
  %call10 = call %struct._object* @PyObject_Call(%struct._object* %14, %struct._object* %16, %struct._object* %18)
  store %struct._object* %call10, %struct._object** %r, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.9
  %19 = load %struct._object*, %struct._object** %r, align 8
  store %struct._object* %19, %struct._object** %_py_xdecref_tmp, align 8
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %20, null
  br i1 %cmp11, label %if.then.12, label %if.end.17

if.then.12:                                       ; preds = %do.body
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %21 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %21, %struct._object** %_py_decref_tmp, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 0
  %23 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %23, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp14 = icmp ne i64 %dec, 0
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %do.body.13
  br label %if.end.16

if.else:                                          ; preds = %do.body.13
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 1
  %25 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %25, i32 0, i32 4
  %26 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %26(%struct._object* %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %if.then.15
  br label %do.end

do.end:                                           ; preds = %if.end.16
  br label %if.end.17

if.end.17:                                        ; preds = %do.end, %do.body
  br label %do.end.18

do.end.18:                                        ; preds = %if.end.17
  %28 = load %struct._object*, %struct._object** %r, align 8
  %cmp19 = icmp eq %struct._object* %28, null
  br i1 %cmp19, label %if.then.20, label %if.end.72

if.then.20:                                       ; preds = %do.end.18
  %29 = load %struct._object*, %struct._object** %exc_type, align 8
  %tobool = icmp ne %struct._object* %29, null
  br i1 %tobool, label %if.then.21, label %if.end.67

if.then.21:                                       ; preds = %if.then.20
  br label %do.body.22

do.body.22:                                       ; preds = %if.then.21
  %30 = load %struct._object*, %struct._object** %exc_type, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp23, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %32, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.22
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.22
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp23, align 8
  call void %35(%struct._object* %36)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  %37 = load %struct._object*, %struct._object** %exc_value, align 8
  store %struct._object* %37, %struct._object** %_py_xdecref_tmp34, align 8
  %38 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8
  %cmp35 = icmp ne %struct._object* %38, null
  br i1 %cmp35, label %if.then.36, label %if.end.48

if.then.36:                                       ; preds = %do.body.33
  br label %do.body.37

do.body.37:                                       ; preds = %if.then.36
  %39 = load %struct._object*, %struct._object** %_py_xdecref_tmp34, align 8
  store %struct._object* %39, %struct._object** %_py_decref_tmp38, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_refcnt39 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt39, align 8
  %dec40 = add i64 %41, -1
  store i64 %dec40, i64* %ob_refcnt39, align 8
  %cmp41 = icmp ne i64 %dec40, 0
  br i1 %cmp41, label %if.then.42, label %if.else.43

if.then.42:                                       ; preds = %do.body.37
  br label %if.end.46

if.else.43:                                       ; preds = %do.body.37
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  %ob_type44 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type44, align 8
  %tp_dealloc45 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp38, align 8
  call void %44(%struct._object* %45)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.43, %if.then.42
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.33
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %do.body.50

do.body.50:                                       ; preds = %do.end.49
  %46 = load %struct._object*, %struct._object** %exc_tb, align 8
  store %struct._object* %46, %struct._object** %_py_xdecref_tmp51, align 8
  %47 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  %cmp52 = icmp ne %struct._object* %47, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %do.body.50
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %48 = load %struct._object*, %struct._object** %_py_xdecref_tmp51, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp55, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %50, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %53(%struct._object* %54)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %do.body.50
  br label %do.end.66

do.end.66:                                        ; preds = %if.end.65
  br label %if.end.67

if.end.67:                                        ; preds = %do.end.66, %if.then.20
  call void @PyErr_Fetch(%struct._object** %exc_type, %struct._object** %exc_value, %struct._object** %exc_tb)
  %55 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  %call68 = call i32 @PyErr_ExceptionMatches(%struct._object* %55)
  %tobool69 = icmp ne i32 %call68, 0
  br i1 %tobool69, label %if.end.71, label %if.then.70

if.then.70:                                       ; preds = %if.end.67
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i32 0, i32 0))
  call void @PyErr_NormalizeException(%struct._object** %exc_type, %struct._object** %exc_value, %struct._object** %exc_tb)
  %56 = load %struct._object*, %struct._object** %exc_type, align 8
  %57 = load %struct._object*, %struct._object** %exc_value, align 8
  %58 = load %struct._object*, %struct._object** %exc_tb, align 8
  call void @PyErr_Display(%struct._object* %56, %struct._object* %57, %struct._object* %58)
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.70, %if.end.67
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %do.end.18
  br label %for.inc

for.inc:                                          ; preds = %if.end.72, %if.then.8
  %59 = load i32, i32* %i, align 4
  %dec73 = add i32 %59, -1
  store i32 %dec73, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %60 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  call void @atexit_cleanup(%struct.atexitmodule_state* %60)
  %61 = load %struct._object*, %struct._object** %exc_type, align 8
  %tobool74 = icmp ne %struct._object* %61, null
  br i1 %tobool74, label %if.then.75, label %if.end.76

if.then.75:                                       ; preds = %for.end
  %62 = load %struct._object*, %struct._object** %exc_type, align 8
  %63 = load %struct._object*, %struct._object** %exc_value, align 8
  %64 = load %struct._object*, %struct._object** %exc_tb, align 8
  call void @PyErr_Restore(%struct._object* %62, %struct._object* %63, %struct._object* %64)
  br label %if.end.76

if.end.76:                                        ; preds = %if.then, %if.then.3, %if.then.75, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @atexit_m_traverse(%struct._object* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct._object*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %vret = alloca i32, align 4
  %vret12 = alloca i32, align 4
  %vret23 = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %1, %struct.atexitmodule_state** %modstate, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %3, i32 0, i32 1
  %4 = load i32, i32* %ncallbacks, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %6, i32 0, i32 0
  %7 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %7, i64 %idxprom
  %8 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8
  store %struct.atexit_callback* %8, %struct.atexit_callback** %cb, align 8
  %9 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %cmp1 = icmp eq %struct.atexit_callback* %9, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  br label %do.body

do.body:                                          ; preds = %if.end
  %10 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %10, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %func, align 8
  %tobool = icmp ne %struct._object* %11, null
  br i1 %tobool, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %do.body
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %func3 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %13, i32 0, i32 0
  %14 = load %struct._object*, %struct._object** %func3, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call4 = call i32 %12(%struct._object* %14, i8* %15)
  store i32 %call4, i32* %vret, align 4
  %16 = load i32, i32* %vret, align 4
  %tobool5 = icmp ne i32 %16, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.2
  %17 = load i32, i32* %vret, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.then.2
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.8
  br label %do.body.9

do.body.9:                                        ; preds = %do.end
  %18 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %args, align 8
  %tobool10 = icmp ne %struct._object* %19, null
  br i1 %tobool10, label %if.then.11, label %if.end.18

if.then.11:                                       ; preds = %do.body.9
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %args13 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %args13, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call14 = call i32 %20(%struct._object* %22, i8* %23)
  store i32 %call14, i32* %vret12, align 4
  %24 = load i32, i32* %vret12, align 4
  %tobool15 = icmp ne i32 %24, 0
  br i1 %tobool15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.11
  %25 = load i32, i32* %vret12, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.17:                                        ; preds = %if.then.11
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %do.body.9
  br label %do.end.19

do.end.19:                                        ; preds = %if.end.18
  br label %do.body.20

do.body.20:                                       ; preds = %do.end.19
  %26 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %26, i32 0, i32 2
  %27 = load %struct._object*, %struct._object** %kwargs, align 8
  %tobool21 = icmp ne %struct._object* %27, null
  br i1 %tobool21, label %if.then.22, label %if.end.29

if.then.22:                                       ; preds = %do.body.20
  %28 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %29 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %kwargs24 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %29, i32 0, i32 2
  %30 = load %struct._object*, %struct._object** %kwargs24, align 8
  %31 = load i8*, i8** %arg.addr, align 8
  %call25 = call i32 %28(%struct._object* %30, i8* %31)
  store i32 %call25, i32* %vret23, align 4
  %32 = load i32, i32* %vret23, align 4
  %tobool26 = icmp ne i32 %32, 0
  br i1 %tobool26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %if.then.22
  %33 = load i32, i32* %vret23, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.28:                                        ; preds = %if.then.22
  br label %if.end.29

if.end.29:                                        ; preds = %if.end.28, %do.body.20
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  br label %for.inc

for.inc:                                          ; preds = %do.end.30, %if.then
  %34 = load i32, i32* %i, align 4
  %inc = add i32 %34, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.27, %if.then.16, %if.then.6
  %35 = load i32, i32* %retval
  ret i32 %35
}

; Function Attrs: nounwind uwtable
define internal i32 @atexit_m_clear(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %1, %struct.atexitmodule_state** %modstate, align 8
  %2 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  call void @atexit_cleanup(%struct.atexitmodule_state* %2)
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @atexit_free(%struct._object* %m) #0 {
entry:
  %m.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  store %struct._object* %m, %struct._object** %m.addr, align 8
  %0 = load %struct._object*, %struct._object** %m.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %1, %struct.atexitmodule_state** %modstate, align 8
  %2 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  call void @atexit_cleanup(%struct.atexitmodule_state* %2)
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %3, i32 0, i32 0
  %4 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8
  %5 = bitcast %struct.atexit_callback** %4 to i8*
  call void @PyMem_Free(i8* %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_register(%struct._object* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %new_callback = alloca %struct.atexit_callback*, align 8
  %func = alloca %struct._object*, align 8
  %r = alloca %struct.atexit_callback**, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store %struct._object* null, %struct._object** %func, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %1, %struct.atexitmodule_state** %modstate, align 8
  %2 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %2, i32 0, i32 1
  %3 = load i32, i32* %ncallbacks, align 4
  %4 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %callback_len = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %4, i32 0, i32 2
  %5 = load i32, i32* %callback_len, align 4
  %cmp = icmp sge i32 %3, %5
  br i1 %cmp, label %if.then, label %if.end.9

if.then:                                          ; preds = %entry
  %6 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %callback_len1 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %6, i32 0, i32 2
  %7 = load i32, i32* %callback_len1, align 4
  %add = add i32 %7, 16
  store i32 %add, i32* %callback_len1, align 4
  %8 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %8, i32 0, i32 0
  %9 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8
  %10 = bitcast %struct.atexit_callback** %9 to i8*
  %11 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %callback_len2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %11, i32 0, i32 2
  %12 = load i32, i32* %callback_len2, align 4
  %conv = sext i32 %12 to i64
  %mul = mul i64 8, %conv
  %call3 = call i8* @PyMem_Realloc(i8* %10, i64 %mul)
  %13 = bitcast i8* %call3 to %struct.atexit_callback**
  store %struct.atexit_callback** %13, %struct.atexit_callback*** %r, align 8
  %14 = load %struct.atexit_callback**, %struct.atexit_callback*** %r, align 8
  %cmp4 = icmp eq %struct.atexit_callback** %14, null
  br i1 %cmp4, label %if.then.6, label %if.end

if.then.6:                                        ; preds = %if.then
  %call7 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call7, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %15 = load %struct.atexit_callback**, %struct.atexit_callback*** %r, align 8
  %16 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks8 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %16, i32 0, i32 0
  store %struct.atexit_callback** %15, %struct.atexit_callback*** %atexit_callbacks8, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.end, %entry
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %18 = bitcast %struct._object* %17 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %18, i32 0, i32 1
  %19 = load i64, i64* %ob_size, align 8
  %cmp10 = icmp eq i64 %19, 0
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end.9
  %20 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %if.end.9
  %21 = load %struct._object*, %struct._object** %args.addr, align 8
  %22 = bitcast %struct._object* %21 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %22, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 0
  %23 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %23, %struct._object** %func, align 8
  %24 = load %struct._object*, %struct._object** %func, align 8
  %call14 = call i32 @PyCallable_Check(%struct._object* %24)
  %tobool = icmp ne i32 %call14, 0
  br i1 %tobool, label %if.end.16, label %if.then.15

if.then.15:                                       ; preds = %if.end.13
  %25 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.13
  %call17 = call i8* @PyMem_Malloc(i64 24)
  %26 = bitcast i8* %call17 to %struct.atexit_callback*
  store %struct.atexit_callback* %26, %struct.atexit_callback** %new_callback, align 8
  %27 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8
  %cmp18 = icmp eq %struct.atexit_callback* %27, null
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.16
  %call21 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call21, %struct._object** %retval
  br label %return

if.end.22:                                        ; preds = %if.end.16
  %28 = load %struct._object*, %struct._object** %args.addr, align 8
  %29 = load %struct._object*, %struct._object** %args.addr, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyVarObject*
  %ob_size23 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %30, i32 0, i32 1
  %31 = load i64, i64* %ob_size23, align 8
  %call24 = call %struct._object* @PyTuple_GetSlice(%struct._object* %28, i64 1, i64 %31)
  %32 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8
  %args25 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %32, i32 0, i32 1
  store %struct._object* %call24, %struct._object** %args25, align 8
  %33 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8
  %args26 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %33, i32 0, i32 1
  %34 = load %struct._object*, %struct._object** %args26, align 8
  %cmp27 = icmp eq %struct._object* %34, null
  br i1 %cmp27, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %if.end.22
  %35 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8
  %36 = bitcast %struct.atexit_callback* %35 to i8*
  call void @PyMem_Free(i8* %36)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.30:                                        ; preds = %if.end.22
  %37 = load %struct._object*, %struct._object** %func, align 8
  %38 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8
  %func31 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %38, i32 0, i32 0
  store %struct._object* %37, %struct._object** %func31, align 8
  %39 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  %40 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8
  %kwargs32 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %40, i32 0, i32 2
  store %struct._object* %39, %struct._object** %kwargs32, align 8
  %41 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 0
  %42 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %42, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.30
  %43 = load %struct._object*, %struct._object** %kwargs.addr, align 8
  store %struct._object* %43, %struct._object** %_py_xincref_tmp, align 8
  %44 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp33 = icmp ne %struct._object* %44, null
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %do.body
  %45 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt36, align 8
  %inc37 = add i64 %46, 1
  store i64 %inc37, i64* %ob_refcnt36, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.38
  %47 = load %struct.atexit_callback*, %struct.atexit_callback** %new_callback, align 8
  %48 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks39 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %48, i32 0, i32 1
  %49 = load i32, i32* %ncallbacks39, align 4
  %inc40 = add i32 %49, 1
  store i32 %inc40, i32* %ncallbacks39, align 4
  %idxprom = sext i32 %49 to i64
  %50 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks41 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %50, i32 0, i32 0
  %51 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks41, align 8
  %arrayidx42 = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %51, i64 %idxprom
  store %struct.atexit_callback* %47, %struct.atexit_callback** %arrayidx42, align 8
  %52 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt43 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 0
  %53 = load i64, i64* %ob_refcnt43, align 8
  %inc44 = add i64 %53, 1
  store i64 %inc44, i64* %ob_refcnt43, align 8
  %54 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %54, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.29, %if.then.20, %if.then.15, %if.then.12, %if.then.6
  %55 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %55
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_clear(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.atexitmodule_state*
  call void @atexit_cleanup(%struct.atexitmodule_state* %1)
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_unregister(%struct._object* %self, %struct._object* %func) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %func.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %i = alloca i32, align 4
  %eq = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %func, %struct._object** %func.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %1, %struct.atexitmodule_state** %modstate, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %3, i32 0, i32 1
  %4 = load i32, i32* %ncallbacks, align 4
  %cmp = icmp slt i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = sext i32 %5 to i64
  %6 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %6, i32 0, i32 0
  %7 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %7, i64 %idxprom
  %8 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8
  store %struct.atexit_callback* %8, %struct.atexit_callback** %cb, align 8
  %9 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %cmp1 = icmp eq %struct.atexit_callback* %9, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %10 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %func2 = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %10, i32 0, i32 0
  %11 = load %struct._object*, %struct._object** %func2, align 8
  %12 = load %struct._object*, %struct._object** %func.addr, align 8
  %call3 = call i32 @PyObject_RichCompareBool(%struct._object* %11, %struct._object* %12, i32 2)
  store i32 %call3, i32* %eq, align 4
  %13 = load i32, i32* %eq, align 4
  %cmp4 = icmp slt i32 %13, 0
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  %14 = load i32, i32* %eq, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.6
  %15 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %16 = load i32, i32* %i, align 4
  call void @atexit_delete_cb(%struct.atexitmodule_state* %15, i32 %16)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.7, %if.end.6
  br label %for.inc

for.inc:                                          ; preds = %if.end.8, %if.then
  %17 = load i32, i32* %i, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc9 = add i64 %18, 1
  store i64 %inc9, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.5
  %19 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %19
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_run_exitfuncs(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  call void @atexit_callfuncs()
  %call = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %1
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @atexit_ncallbacks(%struct._object* %self, %struct._object* %unused) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %unused.addr = alloca %struct._object*, align 8
  %modstate = alloca %struct.atexitmodule_state*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %unused, %struct._object** %unused.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %call = call i8* @PyModule_GetState(%struct._object* %0)
  %1 = bitcast i8* %call to %struct.atexitmodule_state*
  store %struct.atexitmodule_state* %1, %struct.atexitmodule_state** %modstate, align 8
  %2 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate, align 8
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %2, i32 0, i32 1
  %3 = load i32, i32* %ncallbacks, align 4
  %conv = sext i32 %3 to i64
  %call1 = call %struct._object* @PyLong_FromSsize_t(i64 %conv)
  ret %struct._object* %call1
}

declare i8* @PyMem_Realloc(i8*, i64) #1

declare %struct._object* @PyErr_NoMemory() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare %struct._object* @PyTuple_GetSlice(%struct._object*, i64, i64) #1

declare void @PyMem_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal void @atexit_cleanup(%struct.atexitmodule_state* %modstate) #0 {
entry:
  %modstate.addr = alloca %struct.atexitmodule_state*, align 8
  %cb = alloca %struct.atexit_callback*, align 8
  %i = alloca i32, align 4
  store %struct.atexitmodule_state* %modstate, %struct.atexitmodule_state** %modstate.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8
  %ncallbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %1, i32 0, i32 1
  %2 = load i32, i32* %ncallbacks, align 4
  %cmp = icmp slt i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %4, i32 0, i32 0
  %5 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %5, i64 %idxprom
  %6 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8
  store %struct.atexit_callback* %6, %struct.atexit_callback** %cb, align 8
  %7 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %cmp1 = icmp eq %struct.atexit_callback* %7, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  br label %for.inc

if.end:                                           ; preds = %for.body
  %8 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8
  %9 = load i32, i32* %i, align 4
  call void @atexit_delete_cb(%struct.atexitmodule_state* %8, i32 %9)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %10 = load i32, i32* %i, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %11 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8
  %ncallbacks2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %11, i32 0, i32 1
  store i32 0, i32* %ncallbacks2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @atexit_delete_cb(%struct.atexitmodule_state* %modstate, i32 %i) #0 {
entry:
  %modstate.addr = alloca %struct.atexitmodule_state*, align 8
  %i.addr = alloca i32, align 4
  %cb = alloca %struct.atexit_callback*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp5 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp19 = alloca %struct._object*, align 8
  store %struct.atexitmodule_state* %modstate, %struct.atexitmodule_state** %modstate.addr, align 8
  store i32 %i, i32* %i.addr, align 4
  %0 = load i32, i32* %i.addr, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8
  %atexit_callbacks = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %1, i32 0, i32 0
  %2 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks, align 8
  %arrayidx = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %2, i64 %idxprom
  %3 = load %struct.atexit_callback*, %struct.atexit_callback** %arrayidx, align 8
  store %struct.atexit_callback* %3, %struct.atexit_callback** %cb, align 8
  %4 = load i32, i32* %i.addr, align 4
  %idxprom1 = sext i32 %4 to i64
  %5 = load %struct.atexitmodule_state*, %struct.atexitmodule_state** %modstate.addr, align 8
  %atexit_callbacks2 = getelementptr inbounds %struct.atexitmodule_state, %struct.atexitmodule_state* %5, i32 0, i32 0
  %6 = load %struct.atexit_callback**, %struct.atexit_callback*** %atexit_callbacks2, align 8
  %arrayidx3 = getelementptr %struct.atexit_callback*, %struct.atexit_callback** %6, i64 %idxprom1
  store %struct.atexit_callback* null, %struct.atexit_callback** %arrayidx3, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %7 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %func = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %7, i32 0, i32 0
  %8 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.4

do.body.4:                                        ; preds = %do.end
  %15 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %args = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %15, i32 0, i32 1
  %16 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp5, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt6, align 8
  %dec7 = add i64 %18, -1
  store i64 %dec7, i64* %ob_refcnt6, align 8
  %cmp8 = icmp ne i64 %dec7, 0
  br i1 %cmp8, label %if.then.9, label %if.else.10

if.then.9:                                        ; preds = %do.body.4
  br label %if.end.13

if.else.10:                                       ; preds = %do.body.4
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  %ob_type11 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type11, align 8
  %tp_dealloc12 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc12, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp5, align 8
  call void %21(%struct._object* %22)
  br label %if.end.13

if.end.13:                                        ; preds = %if.else.10, %if.then.9
  br label %do.end.14

do.end.14:                                        ; preds = %if.end.13
  br label %do.body.15

do.body.15:                                       ; preds = %do.end.14
  %23 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %kwargs = getelementptr inbounds %struct.atexit_callback, %struct.atexit_callback* %23, i32 0, i32 2
  %24 = load %struct._object*, %struct._object** %kwargs, align 8
  store %struct._object* %24, %struct._object** %_py_xdecref_tmp, align 8
  %25 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp16 = icmp ne %struct._object* %25, null
  br i1 %cmp16, label %if.then.17, label %if.end.29

if.then.17:                                       ; preds = %do.body.15
  br label %do.body.18

do.body.18:                                       ; preds = %if.then.17
  %26 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp19, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_refcnt20 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt20, align 8
  %dec21 = add i64 %28, -1
  store i64 %dec21, i64* %ob_refcnt20, align 8
  %cmp22 = icmp ne i64 %dec21, 0
  br i1 %cmp22, label %if.then.23, label %if.else.24

if.then.23:                                       ; preds = %do.body.18
  br label %if.end.27

if.else.24:                                       ; preds = %do.body.18
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  %ob_type25 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type25, align 8
  %tp_dealloc26 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc26, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp19, align 8
  call void %31(%struct._object* %32)
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.24, %if.then.23
  br label %do.end.28

do.end.28:                                        ; preds = %if.end.27
  br label %if.end.29

if.end.29:                                        ; preds = %do.end.28, %do.body.15
  br label %do.end.30

do.end.30:                                        ; preds = %if.end.29
  %33 = load %struct.atexit_callback*, %struct.atexit_callback** %cb, align 8
  %34 = bitcast %struct.atexit_callback* %33 to i8*
  call void @PyMem_Free(i8* %34)
  ret void
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @PyErr_Occurred() #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

declare %struct._object* @PyState_FindModule(%struct.PyModuleDef*) #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PySys_WriteStderr(i8*, ...) #1

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #1

declare void @PyErr_Display(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
