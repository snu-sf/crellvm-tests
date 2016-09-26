; ModuleID = './_posixsubprocess.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyListObject = type { %struct.PyVarObject, %struct._object**, i64 }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.linux_dirent64 = type { i64, i64, i16, i8, [256 x i8] }

@max_fd = internal global i64 0, align 8
@_posixsubprocessmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([42 x i8], [42 x i8]* @module_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([2 x %struct.PyMethodDef], [2 x %struct.PyMethodDef]* @module_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [17 x i8] c"_posixsubprocess\00", align 1
@module_doc = internal global [42 x i8] c"A POSIX helper for the subprocess module.\00", align 16
@module_methods = internal global [2 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @subprocess_fork_exec, i32 1, i8* getelementptr inbounds ([789 x i8], [789 x i8]* @subprocess_fork_exec_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.1 = private unnamed_addr constant [10 x i8] c"fork_exec\00", align 1
@subprocess_fork_exec_doc = internal global [789 x i8] c"fork_exec(args, executable_list, close_fds, cwd, env,\0A          p2cread, p2cwrite, c2pread, c2pwrite,\0A          errread, errwrite, errpipe_read, errpipe_write,\0A          restore_signals, call_setsid, preexec_fn)\0A\0AForks a child process, closes parent file descriptors as appropriate in the\0Achild and dups the few that are needed before calling exec() in the child\0Aprocess.\0A\0AThe preexec_fn, if supplied, will be called immediately before exec.\0AWARNING: preexec_fn is NOT SAFE if your application uses threads.\0A         It may trigger infrequent, difficult to debug deadlocks.\0A\0AIf an error occurs in the child process before the exec, it is\0Aserialized and written to the errpipe_write fd per subprocess.py.\0A\0AReturns: the child process's PID.\0A\0ARaises: Only on an error in the parent process.\0A\00", align 16
@.str.2 = private unnamed_addr constant [28 x i8] c"OOpOOOiiiiiiiiiiO:fork_exec\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"errpipe_write must be >= 3\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"cannot get length of fds_to_keep\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"bad value(s) in fds_to_keep\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@subprocess_fork_exec.PyId_isenabled = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), %struct._object* null }, align 8
@.str.6 = private unnamed_addr constant [10 x i8] c"isenabled\00", align 1
@subprocess_fork_exec.PyId_disable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct._object* null }, align 8
@.str.7 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"argv must be a tuple\00", align 1
@PyExc_OSError = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"not holding the import lock\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Exception occurred in preexec_fn.\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"OSError:\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"noexec\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"SubprocessError:0:\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"/proc/self/fd\00", align 1
@_enable_gc.PyId_enable = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i32 0, i32 0), %struct._object* null }, align 8
@.str.19 = private unnamed_addr constant [7 x i8] c"enable\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__posixsubprocess() #0 {
entry:
  %call = call i64 @sysconf(i32 4) #6
  store i64 %call, i64* @max_fd, align 8
  %0 = load i64, i64* @max_fd, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 256, i64* @max_fd, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %call1 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @_posixsubprocessmodule, i32 1013)
  ret %struct._object* %call1
}

; Function Attrs: nounwind
declare i64 @sysconf(i32) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @subprocess_fork_exec(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %gc_module = alloca %struct._object*, align 8
  %executable_list = alloca %struct._object*, align 8
  %py_fds_to_keep = alloca %struct._object*, align 8
  %env_list = alloca %struct._object*, align 8
  %preexec_fn = alloca %struct._object*, align 8
  %process_args = alloca %struct._object*, align 8
  %converted_args = alloca %struct._object*, align 8
  %fast_args = alloca %struct._object*, align 8
  %preexec_fn_args_tuple = alloca %struct._object*, align 8
  %p2cread = alloca i32, align 4
  %p2cwrite = alloca i32, align 4
  %c2pread = alloca i32, align 4
  %c2pwrite = alloca i32, align 4
  %errread = alloca i32, align 4
  %errwrite = alloca i32, align 4
  %errpipe_read = alloca i32, align 4
  %errpipe_write = alloca i32, align 4
  %close_fds = alloca i32, align 4
  %restore_signals = alloca i32, align 4
  %call_setsid = alloca i32, align 4
  %cwd_obj = alloca %struct._object*, align 8
  %cwd_obj2 = alloca %struct._object*, align 8
  %cwd = alloca i8*, align 8
  %pid = alloca i32, align 4
  %need_to_reenable_gc = alloca i32, align 4
  %exec_array = alloca i8**, align 8
  %argv = alloca i8**, align 8
  %envp = alloca i8**, align 8
  %arg_num = alloca i64, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp40 = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_decref_tmp67 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp85 = alloca %struct._object*, align 8
  %num_args = alloca i64, align 8
  %borrowed_arg = alloca %struct._object*, align 8
  %converted_arg = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp133 = alloca %struct._object*, align 8
  %_py_tmp146 = alloca %struct._object*, align 8
  %_py_decref_tmp150 = alloca %struct._object*, align 8
  %_py_xdecref_tmp197 = alloca %struct._object*, align 8
  %_py_decref_tmp201 = alloca %struct._object*, align 8
  %_py_xdecref_tmp238 = alloca %struct._object*, align 8
  %_py_decref_tmp242 = alloca %struct._object*, align 8
  %_py_xdecref_tmp256 = alloca %struct._object*, align 8
  %_py_decref_tmp260 = alloca %struct._object*, align 8
  %_py_xdecref_tmp273 = alloca %struct._object*, align 8
  %_py_decref_tmp277 = alloca %struct._object*, align 8
  %_py_xdecref_tmp300 = alloca %struct._object*, align 8
  %_py_decref_tmp305 = alloca %struct._object*, align 8
  %_py_xdecref_tmp319 = alloca %struct._object*, align 8
  %_py_decref_tmp324 = alloca %struct._object*, align 8
  %_py_xdecref_tmp338 = alloca %struct._object*, align 8
  %_py_decref_tmp343 = alloca %struct._object*, align 8
  %_py_xdecref_tmp361 = alloca %struct._object*, align 8
  %_py_decref_tmp366 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %gc_module, align 8
  store %struct._object* null, %struct._object** %converted_args, align 8
  store %struct._object* null, %struct._object** %fast_args, align 8
  store %struct._object* null, %struct._object** %preexec_fn_args_tuple, align 8
  store i32 0, i32* %need_to_reenable_gc, align 4
  store i8** null, i8*** %argv, align 8
  store i8** null, i8*** %envp, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), %struct._object** %process_args, %struct._object** %executable_list, i32* %close_fds, %struct._object** %py_fds_to_keep, %struct._object** %cwd_obj, %struct._object** %env_list, i32* %p2cread, i32* %p2cwrite, i32* %c2pread, i32* %c2pwrite, i32* %errread, i32* %errwrite, i32* %errpipe_read, i32* %errpipe_write, i32* %restore_signals, i32* %call_setsid, %struct._object** %preexec_fn)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %close_fds, align 4
  %tobool1 = icmp ne i32 %1, 0
  br i1 %tobool1, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, i32* %errpipe_write, align 4
  %cmp = icmp slt i32 %2, 3
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %3 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %4 = load %struct._object*, %struct._object** %py_fds_to_keep, align 8
  %call4 = call i64 @PySequence_Size(%struct._object* %4)
  %cmp5 = icmp slt i64 %call4, 0
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** %py_fds_to_keep, align 8
  %call8 = call i32 @_sanity_check_python_fd_sequence(%struct._object* %6)
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %8 = load %struct._object*, %struct._object** %preexec_fn, align 8
  %cmp12 = icmp ne %struct._object* %8, @_Py_NoneStruct
  br i1 %cmp12, label %if.then.13, label %if.end.77

if.then.13:                                       ; preds = %if.end.11
  %call14 = call %struct._object* @PyImport_ImportModule(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0))
  store %struct._object* %call14, %struct._object** %gc_module, align 8
  %9 = load %struct._object*, %struct._object** %gc_module, align 8
  %cmp15 = icmp eq %struct._object* %9, null
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.then.13
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.17:                                        ; preds = %if.then.13
  %10 = load %struct._object*, %struct._object** %gc_module, align 8
  %call18 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %10, %struct._Py_Identifier* @subprocess_fork_exec.PyId_isenabled, i8* null)
  store %struct._object* %call18, %struct._object** %result, align 8
  %11 = load %struct._object*, %struct._object** %result, align 8
  %cmp19 = icmp eq %struct._object* %11, null
  br i1 %cmp19, label %if.then.20, label %if.end.24

if.then.20:                                       ; preds = %if.end.17
  br label %do.body

do.body:                                          ; preds = %if.then.20
  %12 = load %struct._object*, %struct._object** %gc_module, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp21 = icmp ne i64 %dec, 0
  br i1 %cmp21, label %if.then.22, label %if.else

if.then.22:                                       ; preds = %do.body
  br label %if.end.23

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.22
  br label %do.end

do.end:                                           ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.17
  %19 = load %struct._object*, %struct._object** %result, align 8
  %call25 = call i32 @PyObject_IsTrue(%struct._object* %19)
  store i32 %call25, i32* %need_to_reenable_gc, align 4
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.24
  %20 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp27, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %22, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.35

if.else.32:                                       ; preds = %do.body.26
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc34, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %25(%struct._object* %26)
  br label %if.end.35

if.end.35:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.36

do.end.36:                                        ; preds = %if.end.35
  %27 = load i32, i32* %need_to_reenable_gc, align 4
  %cmp37 = icmp eq i32 %27, -1
  br i1 %cmp37, label %if.then.38, label %if.end.50

if.then.38:                                       ; preds = %do.end.36
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.38
  %28 = load %struct._object*, %struct._object** %gc_module, align 8
  store %struct._object* %28, %struct._object** %_py_decref_tmp40, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt41, align 8
  %dec42 = add i64 %30, -1
  store i64 %dec42, i64* %ob_refcnt41, align 8
  %cmp43 = icmp ne i64 %dec42, 0
  br i1 %cmp43, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body.39
  br label %if.end.48

if.else.45:                                       ; preds = %do.body.39
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc47 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc47, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp40, align 8
  call void %33(%struct._object* %34)
  br label %if.end.48

if.end.48:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.50:                                        ; preds = %do.end.36
  %35 = load %struct._object*, %struct._object** %gc_module, align 8
  %call51 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %35, %struct._Py_Identifier* @subprocess_fork_exec.PyId_disable, i8* null)
  store %struct._object* %call51, %struct._object** %result, align 8
  %36 = load %struct._object*, %struct._object** %result, align 8
  %cmp52 = icmp eq %struct._object* %36, null
  br i1 %cmp52, label %if.then.53, label %if.end.65

if.then.53:                                       ; preds = %if.end.50
  br label %do.body.54

do.body.54:                                       ; preds = %if.then.53
  %37 = load %struct._object*, %struct._object** %gc_module, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp55, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt56, align 8
  %dec57 = add i64 %39, -1
  store i64 %dec57, i64* %ob_refcnt56, align 8
  %cmp58 = icmp ne i64 %dec57, 0
  br i1 %cmp58, label %if.then.59, label %if.else.60

if.then.59:                                       ; preds = %do.body.54
  br label %if.end.63

if.else.60:                                       ; preds = %do.body.54
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8
  call void %42(%struct._object* %43)
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %if.end.50
  br label %do.body.66

do.body.66:                                       ; preds = %if.end.65
  %44 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %44, %struct._object** %_py_decref_tmp67, align 8
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_refcnt68 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0
  %46 = load i64, i64* %ob_refcnt68, align 8
  %dec69 = add i64 %46, -1
  store i64 %dec69, i64* %ob_refcnt68, align 8
  %cmp70 = icmp ne i64 %dec69, 0
  br i1 %cmp70, label %if.then.71, label %if.else.72

if.then.71:                                       ; preds = %do.body.66
  br label %if.end.75

if.else.72:                                       ; preds = %do.body.66
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  %ob_type73 = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type73, align 8
  %tp_dealloc74 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc74, align 8
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp67, align 8
  call void %49(%struct._object* %50)
  br label %if.end.75

if.end.75:                                        ; preds = %if.else.72, %if.then.71
  br label %do.end.76

do.end.76:                                        ; preds = %if.end.75
  br label %if.end.77

if.end.77:                                        ; preds = %do.end.76, %if.end.11
  %51 = load %struct._object*, %struct._object** %executable_list, align 8
  %call78 = call i8** @_PySequence_BytesToCharpArray(%struct._object* %51)
  store i8** %call78, i8*** %exec_array, align 8
  %52 = load i8**, i8*** %exec_array, align 8
  %tobool79 = icmp ne i8** %52, null
  br i1 %tobool79, label %if.end.97, label %if.then.80

if.then.80:                                       ; preds = %if.end.77
  br label %do.body.81

do.body.81:                                       ; preds = %if.then.80
  %53 = load %struct._object*, %struct._object** %gc_module, align 8
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp82 = icmp ne %struct._object* %54, null
  br i1 %cmp82, label %if.then.83, label %if.end.95

if.then.83:                                       ; preds = %do.body.81
  br label %do.body.84

do.body.84:                                       ; preds = %if.then.83
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp85, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_refcnt86 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt86, align 8
  %dec87 = add i64 %57, -1
  store i64 %dec87, i64* %ob_refcnt86, align 8
  %cmp88 = icmp ne i64 %dec87, 0
  br i1 %cmp88, label %if.then.89, label %if.else.90

if.then.89:                                       ; preds = %do.body.84
  br label %if.end.93

if.else.90:                                       ; preds = %do.body.84
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  %ob_type91 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type91, align 8
  %tp_dealloc92 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp85, align 8
  call void %60(%struct._object* %61)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.90, %if.then.89
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.81
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.97:                                        ; preds = %if.end.77
  %62 = load %struct._object*, %struct._object** %process_args, align 8
  %cmp98 = icmp ne %struct._object* %62, @_Py_NoneStruct
  br i1 %cmp98, label %if.then.99, label %if.end.165

if.then.99:                                       ; preds = %if.end.97
  %63 = load %struct._object*, %struct._object** %process_args, align 8
  %call100 = call %struct._object* @PySequence_Fast(%struct._object* %63, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i32 0, i32 0))
  store %struct._object* %call100, %struct._object** %fast_args, align 8
  %64 = load %struct._object*, %struct._object** %fast_args, align 8
  %cmp101 = icmp eq %struct._object* %64, null
  br i1 %cmp101, label %if.then.102, label %if.end.103

if.then.102:                                      ; preds = %if.then.99
  br label %cleanup

if.end.103:                                       ; preds = %if.then.99
  %65 = load %struct._object*, %struct._object** %fast_args, align 8
  %ob_type104 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type104, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 19
  %67 = load i64, i64* %tp_flags, align 8
  %and = and i64 %67, 33554432
  %cmp105 = icmp ne i64 %and, 0
  br i1 %cmp105, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.103
  %68 = load %struct._object*, %struct._object** %fast_args, align 8
  %69 = bitcast %struct._object* %68 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %69, i32 0, i32 1
  %70 = load i64, i64* %ob_size, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.end.103
  %71 = load %struct._object*, %struct._object** %fast_args, align 8
  %72 = bitcast %struct._object* %71 to %struct.PyVarObject*
  %ob_size106 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %72, i32 0, i32 1
  %73 = load i64, i64* %ob_size106, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %70, %cond.true ], [ %73, %cond.false ]
  store i64 %cond, i64* %num_args, align 8
  %74 = load i64, i64* %num_args, align 8
  %call107 = call %struct._object* @PyTuple_New(i64 %74)
  store %struct._object* %call107, %struct._object** %converted_args, align 8
  %75 = load %struct._object*, %struct._object** %converted_args, align 8
  %cmp108 = icmp eq %struct._object* %75, null
  br i1 %cmp108, label %if.then.109, label %if.end.110

if.then.109:                                      ; preds = %cond.end
  br label %cleanup

if.end.110:                                       ; preds = %cond.end
  store i64 0, i64* %arg_num, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.110
  %76 = load i64, i64* %arg_num, align 8
  %77 = load i64, i64* %num_args, align 8
  %cmp111 = icmp slt i64 %76, %77
  br i1 %cmp111, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %78 = load %struct._object*, %struct._object** %fast_args, align 8
  %ob_type112 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 1
  %79 = load %struct._typeobject*, %struct._typeobject** %ob_type112, align 8
  %tp_flags113 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %79, i32 0, i32 19
  %80 = load i64, i64* %tp_flags113, align 8
  %and114 = and i64 %80, 33554432
  %cmp115 = icmp ne i64 %and114, 0
  br i1 %cmp115, label %cond.true.116, label %cond.false.117

cond.true.116:                                    ; preds = %for.body
  %81 = load i64, i64* %arg_num, align 8
  %82 = load %struct._object*, %struct._object** %fast_args, align 8
  %83 = bitcast %struct._object* %82 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %83, i32 0, i32 1
  %84 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %84, i64 %81
  %85 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end.120

cond.false.117:                                   ; preds = %for.body
  %86 = load i64, i64* %arg_num, align 8
  %87 = load %struct._object*, %struct._object** %fast_args, align 8
  %88 = bitcast %struct._object* %87 to %struct.PyTupleObject*
  %ob_item118 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %88, i32 0, i32 1
  %arrayidx119 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item118, i32 0, i64 %86
  %89 = load %struct._object*, %struct._object** %arrayidx119, align 8
  br label %cond.end.120

cond.end.120:                                     ; preds = %cond.false.117, %cond.true.116
  %cond121 = phi %struct._object* [ %85, %cond.true.116 ], [ %89, %cond.false.117 ]
  store %struct._object* %cond121, %struct._object** %borrowed_arg, align 8
  %90 = load %struct._object*, %struct._object** %borrowed_arg, align 8
  %91 = bitcast %struct._object** %converted_arg to i8*
  %call122 = call i32 @PyUnicode_FSConverter(%struct._object* %90, i8* %91)
  %cmp123 = icmp eq i32 %call122, 0
  br i1 %cmp123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %cond.end.120
  br label %cleanup

if.end.125:                                       ; preds = %cond.end.120
  %92 = load %struct._object*, %struct._object** %converted_arg, align 8
  %93 = load i64, i64* %arg_num, align 8
  %94 = load %struct._object*, %struct._object** %converted_args, align 8
  %95 = bitcast %struct._object* %94 to %struct.PyTupleObject*
  %ob_item126 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %95, i32 0, i32 1
  %arrayidx127 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item126, i32 0, i64 %93
  store %struct._object* %92, %struct._object** %arrayidx127, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end.125
  %96 = load i64, i64* %arg_num, align 8
  %inc = add i64 %96, 1
  store i64 %inc, i64* %arg_num, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %97 = load %struct._object*, %struct._object** %converted_args, align 8
  %call128 = call i8** @_PySequence_BytesToCharpArray(%struct._object* %97)
  store i8** %call128, i8*** %argv, align 8
  br label %do.body.129

do.body.129:                                      ; preds = %for.end
  %98 = load %struct._object*, %struct._object** %converted_args, align 8
  store %struct._object* %98, %struct._object** %_py_tmp, align 8
  %99 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp130 = icmp ne %struct._object* %99, null
  br i1 %cmp130, label %if.then.131, label %if.end.143

if.then.131:                                      ; preds = %do.body.129
  store %struct._object* null, %struct._object** %converted_args, align 8
  br label %do.body.132

do.body.132:                                      ; preds = %if.then.131
  %100 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %100, %struct._object** %_py_decref_tmp133, align 8
  %101 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_refcnt134 = getelementptr inbounds %struct._object, %struct._object* %101, i32 0, i32 0
  %102 = load i64, i64* %ob_refcnt134, align 8
  %dec135 = add i64 %102, -1
  store i64 %dec135, i64* %ob_refcnt134, align 8
  %cmp136 = icmp ne i64 %dec135, 0
  br i1 %cmp136, label %if.then.137, label %if.else.138

if.then.137:                                      ; preds = %do.body.132
  br label %if.end.141

if.else.138:                                      ; preds = %do.body.132
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  %ob_type139 = getelementptr inbounds %struct._object, %struct._object* %103, i32 0, i32 1
  %104 = load %struct._typeobject*, %struct._typeobject** %ob_type139, align 8
  %tp_dealloc140 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 4
  %105 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc140, align 8
  %106 = load %struct._object*, %struct._object** %_py_decref_tmp133, align 8
  call void %105(%struct._object* %106)
  br label %if.end.141

if.end.141:                                       ; preds = %if.else.138, %if.then.137
  br label %do.end.142

do.end.142:                                       ; preds = %if.end.141
  br label %if.end.143

if.end.143:                                       ; preds = %do.end.142, %do.body.129
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %do.body.145

do.body.145:                                      ; preds = %do.end.144
  %107 = load %struct._object*, %struct._object** %fast_args, align 8
  store %struct._object* %107, %struct._object** %_py_tmp146, align 8
  %108 = load %struct._object*, %struct._object** %_py_tmp146, align 8
  %cmp147 = icmp ne %struct._object* %108, null
  br i1 %cmp147, label %if.then.148, label %if.end.160

if.then.148:                                      ; preds = %do.body.145
  store %struct._object* null, %struct._object** %fast_args, align 8
  br label %do.body.149

do.body.149:                                      ; preds = %if.then.148
  %109 = load %struct._object*, %struct._object** %_py_tmp146, align 8
  store %struct._object* %109, %struct._object** %_py_decref_tmp150, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_refcnt151 = getelementptr inbounds %struct._object, %struct._object* %110, i32 0, i32 0
  %111 = load i64, i64* %ob_refcnt151, align 8
  %dec152 = add i64 %111, -1
  store i64 %dec152, i64* %ob_refcnt151, align 8
  %cmp153 = icmp ne i64 %dec152, 0
  br i1 %cmp153, label %if.then.154, label %if.else.155

if.then.154:                                      ; preds = %do.body.149
  br label %if.end.158

if.else.155:                                      ; preds = %do.body.149
  %112 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  %ob_type156 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 1
  %113 = load %struct._typeobject*, %struct._typeobject** %ob_type156, align 8
  %tp_dealloc157 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %113, i32 0, i32 4
  %114 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc157, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp150, align 8
  call void %114(%struct._object* %115)
  br label %if.end.158

if.end.158:                                       ; preds = %if.else.155, %if.then.154
  br label %do.end.159

do.end.159:                                       ; preds = %if.end.158
  br label %if.end.160

if.end.160:                                       ; preds = %do.end.159, %do.body.145
  br label %do.end.161

do.end.161:                                       ; preds = %if.end.160
  %116 = load i8**, i8*** %argv, align 8
  %tobool162 = icmp ne i8** %116, null
  br i1 %tobool162, label %if.end.164, label %if.then.163

if.then.163:                                      ; preds = %do.end.161
  br label %cleanup

if.end.164:                                       ; preds = %do.end.161
  br label %if.end.165

if.end.165:                                       ; preds = %if.end.164, %if.end.97
  %117 = load %struct._object*, %struct._object** %env_list, align 8
  %cmp166 = icmp ne %struct._object* %117, @_Py_NoneStruct
  br i1 %cmp166, label %if.then.167, label %if.end.172

if.then.167:                                      ; preds = %if.end.165
  %118 = load %struct._object*, %struct._object** %env_list, align 8
  %call168 = call i8** @_PySequence_BytesToCharpArray(%struct._object* %118)
  store i8** %call168, i8*** %envp, align 8
  %119 = load i8**, i8*** %envp, align 8
  %tobool169 = icmp ne i8** %119, null
  br i1 %tobool169, label %if.end.171, label %if.then.170

if.then.170:                                      ; preds = %if.then.167
  br label %cleanup

if.end.171:                                       ; preds = %if.then.167
  br label %if.end.172

if.end.172:                                       ; preds = %if.end.171, %if.end.165
  %120 = load %struct._object*, %struct._object** %preexec_fn, align 8
  %cmp173 = icmp ne %struct._object* %120, @_Py_NoneStruct
  br i1 %cmp173, label %if.then.174, label %if.end.179

if.then.174:                                      ; preds = %if.end.172
  %call175 = call %struct._object* @PyTuple_New(i64 0)
  store %struct._object* %call175, %struct._object** %preexec_fn_args_tuple, align 8
  %121 = load %struct._object*, %struct._object** %preexec_fn_args_tuple, align 8
  %tobool176 = icmp ne %struct._object* %121, null
  br i1 %tobool176, label %if.end.178, label %if.then.177

if.then.177:                                      ; preds = %if.then.174
  br label %cleanup

if.end.178:                                       ; preds = %if.then.174
  call void @_PyImport_AcquireLock()
  br label %if.end.179

if.end.179:                                       ; preds = %if.end.178, %if.end.172
  %122 = load %struct._object*, %struct._object** %cwd_obj, align 8
  %cmp180 = icmp ne %struct._object* %122, @_Py_NoneStruct
  br i1 %cmp180, label %if.then.181, label %if.else.187

if.then.181:                                      ; preds = %if.end.179
  %123 = load %struct._object*, %struct._object** %cwd_obj, align 8
  %124 = bitcast %struct._object** %cwd_obj2 to i8*
  %call182 = call i32 @PyUnicode_FSConverter(%struct._object* %123, i8* %124)
  %cmp183 = icmp eq i32 %call182, 0
  br i1 %cmp183, label %if.then.184, label %if.end.185

if.then.184:                                      ; preds = %if.then.181
  br label %cleanup

if.end.185:                                       ; preds = %if.then.181
  %125 = load %struct._object*, %struct._object** %cwd_obj2, align 8
  %call186 = call i8* @PyBytes_AsString(%struct._object* %125)
  store i8* %call186, i8** %cwd, align 8
  br label %if.end.188

if.else.187:                                      ; preds = %if.end.179
  store i8* null, i8** %cwd, align 8
  store %struct._object* null, %struct._object** %cwd_obj2, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.else.187, %if.end.185
  %call189 = call i32 @fork() #6
  store i32 %call189, i32* %pid, align 4
  %126 = load i32, i32* %pid, align 4
  %cmp190 = icmp eq i32 %126, 0
  br i1 %cmp190, label %if.then.191, label %if.end.195

if.then.191:                                      ; preds = %if.end.188
  %127 = load %struct._object*, %struct._object** %preexec_fn, align 8
  %cmp192 = icmp ne %struct._object* %127, @_Py_NoneStruct
  br i1 %cmp192, label %if.then.193, label %if.end.194

if.then.193:                                      ; preds = %if.then.191
  call void @PyOS_AfterFork()
  br label %if.end.194

if.end.194:                                       ; preds = %if.then.193, %if.then.191
  %128 = load i8**, i8*** %exec_array, align 8
  %129 = load i8**, i8*** %argv, align 8
  %130 = load i8**, i8*** %envp, align 8
  %131 = load i8*, i8** %cwd, align 8
  %132 = load i32, i32* %p2cread, align 4
  %133 = load i32, i32* %p2cwrite, align 4
  %134 = load i32, i32* %c2pread, align 4
  %135 = load i32, i32* %c2pwrite, align 4
  %136 = load i32, i32* %errread, align 4
  %137 = load i32, i32* %errwrite, align 4
  %138 = load i32, i32* %errpipe_read, align 4
  %139 = load i32, i32* %errpipe_write, align 4
  %140 = load i32, i32* %close_fds, align 4
  %141 = load i32, i32* %restore_signals, align 4
  %142 = load i32, i32* %call_setsid, align 4
  %143 = load %struct._object*, %struct._object** %py_fds_to_keep, align 8
  %144 = load %struct._object*, %struct._object** %preexec_fn, align 8
  %145 = load %struct._object*, %struct._object** %preexec_fn_args_tuple, align 8
  call void @child_exec(i8** %128, i8** %129, i8** %130, i8* %131, i32 %132, i32 %133, i32 %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, %struct._object* %143, %struct._object* %144, %struct._object* %145)
  call void @_exit(i32 255) #7
  unreachable

if.end.195:                                       ; preds = %if.end.188
  br label %do.body.196

do.body.196:                                      ; preds = %if.end.195
  %146 = load %struct._object*, %struct._object** %cwd_obj2, align 8
  store %struct._object* %146, %struct._object** %_py_xdecref_tmp197, align 8
  %147 = load %struct._object*, %struct._object** %_py_xdecref_tmp197, align 8
  %cmp198 = icmp ne %struct._object* %147, null
  br i1 %cmp198, label %if.then.199, label %if.end.211

if.then.199:                                      ; preds = %do.body.196
  br label %do.body.200

do.body.200:                                      ; preds = %if.then.199
  %148 = load %struct._object*, %struct._object** %_py_xdecref_tmp197, align 8
  store %struct._object* %148, %struct._object** %_py_decref_tmp201, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8
  %ob_refcnt202 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0
  %150 = load i64, i64* %ob_refcnt202, align 8
  %dec203 = add i64 %150, -1
  store i64 %dec203, i64* %ob_refcnt202, align 8
  %cmp204 = icmp ne i64 %dec203, 0
  br i1 %cmp204, label %if.then.205, label %if.else.206

if.then.205:                                      ; preds = %do.body.200
  br label %if.end.209

if.else.206:                                      ; preds = %do.body.200
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8
  %ob_type207 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type207, align 8
  %tp_dealloc208 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc208, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp201, align 8
  call void %153(%struct._object* %154)
  br label %if.end.209

if.end.209:                                       ; preds = %if.else.206, %if.then.205
  br label %do.end.210

do.end.210:                                       ; preds = %if.end.209
  br label %if.end.211

if.end.211:                                       ; preds = %do.end.210, %do.body.196
  br label %do.end.212

do.end.212:                                       ; preds = %if.end.211
  %155 = load i32, i32* %pid, align 4
  %cmp213 = icmp eq i32 %155, -1
  br i1 %cmp213, label %if.then.214, label %if.end.216

if.then.214:                                      ; preds = %do.end.212
  %156 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call215 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %156)
  br label %if.end.216

if.end.216:                                       ; preds = %if.then.214, %do.end.212
  %157 = load %struct._object*, %struct._object** %preexec_fn, align 8
  %cmp217 = icmp ne %struct._object* %157, @_Py_NoneStruct
  br i1 %cmp217, label %land.lhs.true.218, label %if.end.225

land.lhs.true.218:                                ; preds = %if.end.216
  %call219 = call i32 @_PyImport_ReleaseLock()
  %cmp220 = icmp slt i32 %call219, 0
  br i1 %cmp220, label %land.lhs.true.221, label %if.end.225

land.lhs.true.221:                                ; preds = %land.lhs.true.218
  %call222 = call %struct._object* @PyErr_Occurred()
  %tobool223 = icmp ne %struct._object* %call222, null
  br i1 %tobool223, label %if.end.225, label %if.then.224

if.then.224:                                      ; preds = %land.lhs.true.221
  %158 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %158, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0))
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %land.lhs.true.221, %land.lhs.true.218, %if.end.216
  %159 = load i8**, i8*** %envp, align 8
  %tobool226 = icmp ne i8** %159, null
  br i1 %tobool226, label %if.then.227, label %if.end.228

if.then.227:                                      ; preds = %if.end.225
  %160 = load i8**, i8*** %envp, align 8
  call void @_Py_FreeCharPArray(i8** %160)
  br label %if.end.228

if.end.228:                                       ; preds = %if.then.227, %if.end.225
  %161 = load i8**, i8*** %argv, align 8
  %tobool229 = icmp ne i8** %161, null
  br i1 %tobool229, label %if.then.230, label %if.end.231

if.then.230:                                      ; preds = %if.end.228
  %162 = load i8**, i8*** %argv, align 8
  call void @_Py_FreeCharPArray(i8** %162)
  br label %if.end.231

if.end.231:                                       ; preds = %if.then.230, %if.end.228
  %163 = load i8**, i8*** %exec_array, align 8
  call void @_Py_FreeCharPArray(i8** %163)
  %164 = load i32, i32* %need_to_reenable_gc, align 4
  %tobool232 = icmp ne i32 %164, 0
  br i1 %tobool232, label %land.lhs.true.233, label %if.end.254

land.lhs.true.233:                                ; preds = %if.end.231
  %165 = load %struct._object*, %struct._object** %gc_module, align 8
  %call234 = call i32 @_enable_gc(%struct._object* %165)
  %tobool235 = icmp ne i32 %call234, 0
  br i1 %tobool235, label %if.then.236, label %if.end.254

if.then.236:                                      ; preds = %land.lhs.true.233
  br label %do.body.237

do.body.237:                                      ; preds = %if.then.236
  %166 = load %struct._object*, %struct._object** %gc_module, align 8
  store %struct._object* %166, %struct._object** %_py_xdecref_tmp238, align 8
  %167 = load %struct._object*, %struct._object** %_py_xdecref_tmp238, align 8
  %cmp239 = icmp ne %struct._object* %167, null
  br i1 %cmp239, label %if.then.240, label %if.end.252

if.then.240:                                      ; preds = %do.body.237
  br label %do.body.241

do.body.241:                                      ; preds = %if.then.240
  %168 = load %struct._object*, %struct._object** %_py_xdecref_tmp238, align 8
  store %struct._object* %168, %struct._object** %_py_decref_tmp242, align 8
  %169 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_refcnt243 = getelementptr inbounds %struct._object, %struct._object* %169, i32 0, i32 0
  %170 = load i64, i64* %ob_refcnt243, align 8
  %dec244 = add i64 %170, -1
  store i64 %dec244, i64* %ob_refcnt243, align 8
  %cmp245 = icmp ne i64 %dec244, 0
  br i1 %cmp245, label %if.then.246, label %if.else.247

if.then.246:                                      ; preds = %do.body.241
  br label %if.end.250

if.else.247:                                      ; preds = %do.body.241
  %171 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  %ob_type248 = getelementptr inbounds %struct._object, %struct._object* %171, i32 0, i32 1
  %172 = load %struct._typeobject*, %struct._typeobject** %ob_type248, align 8
  %tp_dealloc249 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %172, i32 0, i32 4
  %173 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc249, align 8
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp242, align 8
  call void %173(%struct._object* %174)
  br label %if.end.250

if.end.250:                                       ; preds = %if.else.247, %if.then.246
  br label %do.end.251

do.end.251:                                       ; preds = %if.end.250
  br label %if.end.252

if.end.252:                                       ; preds = %do.end.251, %do.body.237
  br label %do.end.253

do.end.253:                                       ; preds = %if.end.252
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.254:                                       ; preds = %land.lhs.true.233, %if.end.231
  br label %do.body.255

do.body.255:                                      ; preds = %if.end.254
  %175 = load %struct._object*, %struct._object** %preexec_fn_args_tuple, align 8
  store %struct._object* %175, %struct._object** %_py_xdecref_tmp256, align 8
  %176 = load %struct._object*, %struct._object** %_py_xdecref_tmp256, align 8
  %cmp257 = icmp ne %struct._object* %176, null
  br i1 %cmp257, label %if.then.258, label %if.end.270

if.then.258:                                      ; preds = %do.body.255
  br label %do.body.259

do.body.259:                                      ; preds = %if.then.258
  %177 = load %struct._object*, %struct._object** %_py_xdecref_tmp256, align 8
  store %struct._object* %177, %struct._object** %_py_decref_tmp260, align 8
  %178 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8
  %ob_refcnt261 = getelementptr inbounds %struct._object, %struct._object* %178, i32 0, i32 0
  %179 = load i64, i64* %ob_refcnt261, align 8
  %dec262 = add i64 %179, -1
  store i64 %dec262, i64* %ob_refcnt261, align 8
  %cmp263 = icmp ne i64 %dec262, 0
  br i1 %cmp263, label %if.then.264, label %if.else.265

if.then.264:                                      ; preds = %do.body.259
  br label %if.end.268

if.else.265:                                      ; preds = %do.body.259
  %180 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8
  %ob_type266 = getelementptr inbounds %struct._object, %struct._object* %180, i32 0, i32 1
  %181 = load %struct._typeobject*, %struct._typeobject** %ob_type266, align 8
  %tp_dealloc267 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %181, i32 0, i32 4
  %182 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc267, align 8
  %183 = load %struct._object*, %struct._object** %_py_decref_tmp260, align 8
  call void %182(%struct._object* %183)
  br label %if.end.268

if.end.268:                                       ; preds = %if.else.265, %if.then.264
  br label %do.end.269

do.end.269:                                       ; preds = %if.end.268
  br label %if.end.270

if.end.270:                                       ; preds = %do.end.269, %do.body.255
  br label %do.end.271

do.end.271:                                       ; preds = %if.end.270
  br label %do.body.272

do.body.272:                                      ; preds = %do.end.271
  %184 = load %struct._object*, %struct._object** %gc_module, align 8
  store %struct._object* %184, %struct._object** %_py_xdecref_tmp273, align 8
  %185 = load %struct._object*, %struct._object** %_py_xdecref_tmp273, align 8
  %cmp274 = icmp ne %struct._object* %185, null
  br i1 %cmp274, label %if.then.275, label %if.end.287

if.then.275:                                      ; preds = %do.body.272
  br label %do.body.276

do.body.276:                                      ; preds = %if.then.275
  %186 = load %struct._object*, %struct._object** %_py_xdecref_tmp273, align 8
  store %struct._object* %186, %struct._object** %_py_decref_tmp277, align 8
  %187 = load %struct._object*, %struct._object** %_py_decref_tmp277, align 8
  %ob_refcnt278 = getelementptr inbounds %struct._object, %struct._object* %187, i32 0, i32 0
  %188 = load i64, i64* %ob_refcnt278, align 8
  %dec279 = add i64 %188, -1
  store i64 %dec279, i64* %ob_refcnt278, align 8
  %cmp280 = icmp ne i64 %dec279, 0
  br i1 %cmp280, label %if.then.281, label %if.else.282

if.then.281:                                      ; preds = %do.body.276
  br label %if.end.285

if.else.282:                                      ; preds = %do.body.276
  %189 = load %struct._object*, %struct._object** %_py_decref_tmp277, align 8
  %ob_type283 = getelementptr inbounds %struct._object, %struct._object* %189, i32 0, i32 1
  %190 = load %struct._typeobject*, %struct._typeobject** %ob_type283, align 8
  %tp_dealloc284 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %190, i32 0, i32 4
  %191 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc284, align 8
  %192 = load %struct._object*, %struct._object** %_py_decref_tmp277, align 8
  call void %191(%struct._object* %192)
  br label %if.end.285

if.end.285:                                       ; preds = %if.else.282, %if.then.281
  br label %do.end.286

do.end.286:                                       ; preds = %if.end.285
  br label %if.end.287

if.end.287:                                       ; preds = %do.end.286, %do.body.272
  br label %do.end.288

do.end.288:                                       ; preds = %if.end.287
  %193 = load i32, i32* %pid, align 4
  %cmp289 = icmp eq i32 %193, -1
  br i1 %cmp289, label %if.then.290, label %if.end.291

if.then.290:                                      ; preds = %do.end.288
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.291:                                       ; preds = %do.end.288
  %194 = load i32, i32* %pid, align 4
  %conv = sext i32 %194 to i64
  %call292 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call292, %struct._object** %retval
  br label %return

cleanup:                                          ; preds = %if.then.184, %if.then.177, %if.then.170, %if.then.163, %if.then.124, %if.then.109, %if.then.102
  %195 = load i8**, i8*** %envp, align 8
  %tobool293 = icmp ne i8** %195, null
  br i1 %tobool293, label %if.then.294, label %if.end.295

if.then.294:                                      ; preds = %cleanup
  %196 = load i8**, i8*** %envp, align 8
  call void @_Py_FreeCharPArray(i8** %196)
  br label %if.end.295

if.end.295:                                       ; preds = %if.then.294, %cleanup
  %197 = load i8**, i8*** %argv, align 8
  %tobool296 = icmp ne i8** %197, null
  br i1 %tobool296, label %if.then.297, label %if.end.298

if.then.297:                                      ; preds = %if.end.295
  %198 = load i8**, i8*** %argv, align 8
  call void @_Py_FreeCharPArray(i8** %198)
  br label %if.end.298

if.end.298:                                       ; preds = %if.then.297, %if.end.295
  %199 = load i8**, i8*** %exec_array, align 8
  call void @_Py_FreeCharPArray(i8** %199)
  br label %do.body.299

do.body.299:                                      ; preds = %if.end.298
  %200 = load %struct._object*, %struct._object** %converted_args, align 8
  store %struct._object* %200, %struct._object** %_py_xdecref_tmp300, align 8
  %201 = load %struct._object*, %struct._object** %_py_xdecref_tmp300, align 8
  %cmp301 = icmp ne %struct._object* %201, null
  br i1 %cmp301, label %if.then.303, label %if.end.316

if.then.303:                                      ; preds = %do.body.299
  br label %do.body.304

do.body.304:                                      ; preds = %if.then.303
  %202 = load %struct._object*, %struct._object** %_py_xdecref_tmp300, align 8
  store %struct._object* %202, %struct._object** %_py_decref_tmp305, align 8
  %203 = load %struct._object*, %struct._object** %_py_decref_tmp305, align 8
  %ob_refcnt306 = getelementptr inbounds %struct._object, %struct._object* %203, i32 0, i32 0
  %204 = load i64, i64* %ob_refcnt306, align 8
  %dec307 = add i64 %204, -1
  store i64 %dec307, i64* %ob_refcnt306, align 8
  %cmp308 = icmp ne i64 %dec307, 0
  br i1 %cmp308, label %if.then.310, label %if.else.311

if.then.310:                                      ; preds = %do.body.304
  br label %if.end.314

if.else.311:                                      ; preds = %do.body.304
  %205 = load %struct._object*, %struct._object** %_py_decref_tmp305, align 8
  %ob_type312 = getelementptr inbounds %struct._object, %struct._object* %205, i32 0, i32 1
  %206 = load %struct._typeobject*, %struct._typeobject** %ob_type312, align 8
  %tp_dealloc313 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %206, i32 0, i32 4
  %207 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc313, align 8
  %208 = load %struct._object*, %struct._object** %_py_decref_tmp305, align 8
  call void %207(%struct._object* %208)
  br label %if.end.314

if.end.314:                                       ; preds = %if.else.311, %if.then.310
  br label %do.end.315

do.end.315:                                       ; preds = %if.end.314
  br label %if.end.316

if.end.316:                                       ; preds = %do.end.315, %do.body.299
  br label %do.end.317

do.end.317:                                       ; preds = %if.end.316
  br label %do.body.318

do.body.318:                                      ; preds = %do.end.317
  %209 = load %struct._object*, %struct._object** %fast_args, align 8
  store %struct._object* %209, %struct._object** %_py_xdecref_tmp319, align 8
  %210 = load %struct._object*, %struct._object** %_py_xdecref_tmp319, align 8
  %cmp320 = icmp ne %struct._object* %210, null
  br i1 %cmp320, label %if.then.322, label %if.end.335

if.then.322:                                      ; preds = %do.body.318
  br label %do.body.323

do.body.323:                                      ; preds = %if.then.322
  %211 = load %struct._object*, %struct._object** %_py_xdecref_tmp319, align 8
  store %struct._object* %211, %struct._object** %_py_decref_tmp324, align 8
  %212 = load %struct._object*, %struct._object** %_py_decref_tmp324, align 8
  %ob_refcnt325 = getelementptr inbounds %struct._object, %struct._object* %212, i32 0, i32 0
  %213 = load i64, i64* %ob_refcnt325, align 8
  %dec326 = add i64 %213, -1
  store i64 %dec326, i64* %ob_refcnt325, align 8
  %cmp327 = icmp ne i64 %dec326, 0
  br i1 %cmp327, label %if.then.329, label %if.else.330

if.then.329:                                      ; preds = %do.body.323
  br label %if.end.333

if.else.330:                                      ; preds = %do.body.323
  %214 = load %struct._object*, %struct._object** %_py_decref_tmp324, align 8
  %ob_type331 = getelementptr inbounds %struct._object, %struct._object* %214, i32 0, i32 1
  %215 = load %struct._typeobject*, %struct._typeobject** %ob_type331, align 8
  %tp_dealloc332 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %215, i32 0, i32 4
  %216 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc332, align 8
  %217 = load %struct._object*, %struct._object** %_py_decref_tmp324, align 8
  call void %216(%struct._object* %217)
  br label %if.end.333

if.end.333:                                       ; preds = %if.else.330, %if.then.329
  br label %do.end.334

do.end.334:                                       ; preds = %if.end.333
  br label %if.end.335

if.end.335:                                       ; preds = %do.end.334, %do.body.318
  br label %do.end.336

do.end.336:                                       ; preds = %if.end.335
  br label %do.body.337

do.body.337:                                      ; preds = %do.end.336
  %218 = load %struct._object*, %struct._object** %preexec_fn_args_tuple, align 8
  store %struct._object* %218, %struct._object** %_py_xdecref_tmp338, align 8
  %219 = load %struct._object*, %struct._object** %_py_xdecref_tmp338, align 8
  %cmp339 = icmp ne %struct._object* %219, null
  br i1 %cmp339, label %if.then.341, label %if.end.354

if.then.341:                                      ; preds = %do.body.337
  br label %do.body.342

do.body.342:                                      ; preds = %if.then.341
  %220 = load %struct._object*, %struct._object** %_py_xdecref_tmp338, align 8
  store %struct._object* %220, %struct._object** %_py_decref_tmp343, align 8
  %221 = load %struct._object*, %struct._object** %_py_decref_tmp343, align 8
  %ob_refcnt344 = getelementptr inbounds %struct._object, %struct._object* %221, i32 0, i32 0
  %222 = load i64, i64* %ob_refcnt344, align 8
  %dec345 = add i64 %222, -1
  store i64 %dec345, i64* %ob_refcnt344, align 8
  %cmp346 = icmp ne i64 %dec345, 0
  br i1 %cmp346, label %if.then.348, label %if.else.349

if.then.348:                                      ; preds = %do.body.342
  br label %if.end.352

if.else.349:                                      ; preds = %do.body.342
  %223 = load %struct._object*, %struct._object** %_py_decref_tmp343, align 8
  %ob_type350 = getelementptr inbounds %struct._object, %struct._object* %223, i32 0, i32 1
  %224 = load %struct._typeobject*, %struct._typeobject** %ob_type350, align 8
  %tp_dealloc351 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %224, i32 0, i32 4
  %225 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc351, align 8
  %226 = load %struct._object*, %struct._object** %_py_decref_tmp343, align 8
  call void %225(%struct._object* %226)
  br label %if.end.352

if.end.352:                                       ; preds = %if.else.349, %if.then.348
  br label %do.end.353

do.end.353:                                       ; preds = %if.end.352
  br label %if.end.354

if.end.354:                                       ; preds = %do.end.353, %do.body.337
  br label %do.end.355

do.end.355:                                       ; preds = %if.end.354
  %227 = load i32, i32* %need_to_reenable_gc, align 4
  %tobool356 = icmp ne i32 %227, 0
  br i1 %tobool356, label %if.then.357, label %if.end.359

if.then.357:                                      ; preds = %do.end.355
  %228 = load %struct._object*, %struct._object** %gc_module, align 8
  %call358 = call i32 @_enable_gc(%struct._object* %228)
  br label %if.end.359

if.end.359:                                       ; preds = %if.then.357, %do.end.355
  br label %do.body.360

do.body.360:                                      ; preds = %if.end.359
  %229 = load %struct._object*, %struct._object** %gc_module, align 8
  store %struct._object* %229, %struct._object** %_py_xdecref_tmp361, align 8
  %230 = load %struct._object*, %struct._object** %_py_xdecref_tmp361, align 8
  %cmp362 = icmp ne %struct._object* %230, null
  br i1 %cmp362, label %if.then.364, label %if.end.377

if.then.364:                                      ; preds = %do.body.360
  br label %do.body.365

do.body.365:                                      ; preds = %if.then.364
  %231 = load %struct._object*, %struct._object** %_py_xdecref_tmp361, align 8
  store %struct._object* %231, %struct._object** %_py_decref_tmp366, align 8
  %232 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8
  %ob_refcnt367 = getelementptr inbounds %struct._object, %struct._object* %232, i32 0, i32 0
  %233 = load i64, i64* %ob_refcnt367, align 8
  %dec368 = add i64 %233, -1
  store i64 %dec368, i64* %ob_refcnt367, align 8
  %cmp369 = icmp ne i64 %dec368, 0
  br i1 %cmp369, label %if.then.371, label %if.else.372

if.then.371:                                      ; preds = %do.body.365
  br label %if.end.375

if.else.372:                                      ; preds = %do.body.365
  %234 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8
  %ob_type373 = getelementptr inbounds %struct._object, %struct._object* %234, i32 0, i32 1
  %235 = load %struct._typeobject*, %struct._typeobject** %ob_type373, align 8
  %tp_dealloc374 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %235, i32 0, i32 4
  %236 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc374, align 8
  %237 = load %struct._object*, %struct._object** %_py_decref_tmp366, align 8
  call void %236(%struct._object* %237)
  br label %if.end.375

if.end.375:                                       ; preds = %if.else.372, %if.then.371
  br label %do.end.376

do.end.376:                                       ; preds = %if.end.375
  br label %if.end.377

if.end.377:                                       ; preds = %do.end.376, %do.body.360
  br label %do.end.378

do.end.378:                                       ; preds = %if.end.377
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.378, %if.end.291, %if.then.290, %do.end.253, %do.end.96, %do.end.64, %do.end.49, %do.end, %if.then.16, %if.then.10, %if.then.6, %if.then.2, %if.then
  %238 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %238
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #2

declare void @PyErr_SetString(%struct._object*, i8*) #2

declare i64 @PySequence_Size(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @_sanity_check_python_fd_sequence(%struct._object* %fd_sequence) #0 {
entry:
  %retval = alloca i32, align 4
  %fd_sequence.addr = alloca %struct._object*, align 8
  %seq_idx = alloca i64, align 8
  %seq_len = alloca i64, align 8
  %prev_fd = alloca i64, align 8
  %py_fd = alloca %struct._object*, align 8
  %iter_fd = alloca i64, align 8
  store %struct._object* %fd_sequence, %struct._object** %fd_sequence.addr, align 8
  %0 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call, i64* %seq_len, align 8
  store i64 -1, i64* %prev_fd, align 8
  store i64 0, i64* %seq_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %seq_idx, align 8
  %2 = load i64, i64* %seq_len, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i64, i64* %seq_idx, align 8
  %7 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %8, i32 0, i32 1
  %9 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %9, i64 %6
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i64, i64* %seq_idx, align 8
  %12 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %11
  %14 = load %struct._object*, %struct._object** %arrayidx3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %10, %cond.true ], [ %14, %cond.false ]
  store %struct._object* %cond, %struct._object** %py_fd, align 8
  %15 = load %struct._object*, %struct._object** %py_fd, align 8
  %call4 = call i64 @PyLong_AsLong(%struct._object* %15)
  store i64 %call4, i64* %iter_fd, align 8
  %16 = load i64, i64* %iter_fd, align 8
  %cmp5 = icmp slt i64 %16, 0
  br i1 %cmp5, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end
  %17 = load i64, i64* %iter_fd, align 8
  %18 = load i64, i64* %prev_fd, align 8
  %cmp6 = icmp slt i64 %17, %18
  br i1 %cmp6, label %if.then, label %lor.lhs.false.7

lor.lhs.false.7:                                  ; preds = %lor.lhs.false
  %19 = load i64, i64* %iter_fd, align 8
  %cmp8 = icmp sgt i64 %19, 2147483647
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false.7, %lor.lhs.false, %cond.end
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false.7
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i64, i64* %seq_idx, align 8
  %inc = add i64 %20, 1
  store i64 %inc, i64* %seq_idx, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %21 = load i32, i32* %retval
  ret i32 %21
}

declare %struct._object* @PyImport_ImportModule(i8*) #2

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #2

declare i32 @PyObject_IsTrue(%struct._object*) #2

declare i8** @_PySequence_BytesToCharpArray(%struct._object*) #2

declare %struct._object* @PySequence_Fast(%struct._object*, i8*) #2

declare %struct._object* @PyTuple_New(i64) #2

declare i32 @PyUnicode_FSConverter(%struct._object*, i8*) #2

declare void @_PyImport_AcquireLock() #2

declare i8* @PyBytes_AsString(%struct._object*) #2

; Function Attrs: nounwind
declare i32 @fork() #1

declare void @PyOS_AfterFork() #2

; Function Attrs: nounwind uwtable
define internal void @child_exec(i8** %exec_array, i8** %argv, i8** %envp, i8* %cwd, i32 %p2cread, i32 %p2cwrite, i32 %c2pread, i32 %c2pwrite, i32 %errread, i32 %errwrite, i32 %errpipe_read, i32 %errpipe_write, i32 %close_fds, i32 %restore_signals, i32 %call_setsid, %struct._object* %py_fds_to_keep, %struct._object* %preexec_fn, %struct._object* %preexec_fn_args_tuple) #0 {
entry:
  %exec_array.addr = alloca i8**, align 8
  %argv.addr = alloca i8**, align 8
  %envp.addr = alloca i8**, align 8
  %cwd.addr = alloca i8*, align 8
  %p2cread.addr = alloca i32, align 4
  %p2cwrite.addr = alloca i32, align 4
  %c2pread.addr = alloca i32, align 4
  %c2pwrite.addr = alloca i32, align 4
  %errread.addr = alloca i32, align 4
  %errwrite.addr = alloca i32, align 4
  %errpipe_read.addr = alloca i32, align 4
  %errpipe_write.addr = alloca i32, align 4
  %close_fds.addr = alloca i32, align 4
  %restore_signals.addr = alloca i32, align 4
  %call_setsid.addr = alloca i32, align 4
  %py_fds_to_keep.addr = alloca %struct._object*, align 8
  %preexec_fn.addr = alloca %struct._object*, align 8
  %preexec_fn_args_tuple.addr = alloca %struct._object*, align 8
  %i = alloca i32, align 4
  %saved_errno = alloca i32, align 4
  %unused = alloca i32, align 4
  %reached_preexec = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %err_msg = alloca i8*, align 8
  %hex_errno = alloca [9 x i8], align 1
  %local_max_fd = alloca i32, align 4
  %executable = alloca i8*, align 8
  %cur = alloca i8*, align 8
  store i8** %exec_array, i8*** %exec_array.addr, align 8
  store i8** %argv, i8*** %argv.addr, align 8
  store i8** %envp, i8*** %envp.addr, align 8
  store i8* %cwd, i8** %cwd.addr, align 8
  store i32 %p2cread, i32* %p2cread.addr, align 4
  store i32 %p2cwrite, i32* %p2cwrite.addr, align 4
  store i32 %c2pread, i32* %c2pread.addr, align 4
  store i32 %c2pwrite, i32* %c2pwrite.addr, align 4
  store i32 %errread, i32* %errread.addr, align 4
  store i32 %errwrite, i32* %errwrite.addr, align 4
  store i32 %errpipe_read, i32* %errpipe_read.addr, align 4
  store i32 %errpipe_write, i32* %errpipe_write.addr, align 4
  store i32 %close_fds, i32* %close_fds.addr, align 4
  store i32 %restore_signals, i32* %restore_signals.addr, align 4
  store i32 %call_setsid, i32* %call_setsid.addr, align 4
  store %struct._object* %py_fds_to_keep, %struct._object** %py_fds_to_keep.addr, align 8
  store %struct._object* %preexec_fn, %struct._object** %preexec_fn.addr, align 8
  store %struct._object* %preexec_fn_args_tuple, %struct._object** %preexec_fn_args_tuple.addr, align 8
  store i32 0, i32* %reached_preexec, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i32 0, i32 0), i8** %err_msg, align 8
  %0 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %1 = load i32, i32* %errpipe_write.addr, align 4
  %call = call i32 @make_inheritable(%struct._object* %0, i32 %1)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %error

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %p2cwrite.addr, align 4
  %cmp1 = icmp ne i32 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.2
  %3 = load i32, i32* %p2cwrite.addr, align 4
  %call3 = call i32 @close(i32 %3)
  %cmp4 = icmp eq i32 %call3, -1
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %do.body
  br label %error

if.end.6:                                         ; preds = %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %if.end
  %4 = load i32, i32* %c2pread.addr, align 4
  %cmp8 = icmp ne i32 %4, -1
  br i1 %cmp8, label %if.then.9, label %if.end.16

if.then.9:                                        ; preds = %if.end.7
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %5 = load i32, i32* %c2pread.addr, align 4
  %call11 = call i32 @close(i32 %5)
  %cmp12 = icmp eq i32 %call11, -1
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %do.body.10
  br label %error

if.end.14:                                        ; preds = %do.body.10
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %if.end.16

if.end.16:                                        ; preds = %do.end.15, %if.end.7
  %6 = load i32, i32* %errread.addr, align 4
  %cmp17 = icmp ne i32 %6, -1
  br i1 %cmp17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %if.end.16
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %7 = load i32, i32* %errread.addr, align 4
  %call20 = call i32 @close(i32 %7)
  %cmp21 = icmp eq i32 %call20, -1
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %do.body.19
  br label %error

if.end.23:                                        ; preds = %do.body.19
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %if.end.25

if.end.25:                                        ; preds = %do.end.24, %if.end.16
  br label %do.body.26

do.body.26:                                       ; preds = %if.end.25
  %8 = load i32, i32* %errpipe_read.addr, align 4
  %call27 = call i32 @close(i32 %8)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.then.29, label %if.end.30

if.then.29:                                       ; preds = %do.body.26
  br label %error

if.end.30:                                        ; preds = %do.body.26
  br label %do.end.31

do.end.31:                                        ; preds = %if.end.30
  %9 = load i32, i32* %c2pwrite.addr, align 4
  %cmp32 = icmp eq i32 %9, 0
  br i1 %cmp32, label %if.then.33, label %if.end.40

if.then.33:                                       ; preds = %do.end.31
  br label %do.body.34

do.body.34:                                       ; preds = %if.then.33
  %10 = load i32, i32* %c2pwrite.addr, align 4
  %call35 = call i32 @dup(i32 %10) #6
  store i32 %call35, i32* %c2pwrite.addr, align 4
  %cmp36 = icmp eq i32 %call35, -1
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %do.body.34
  br label %error

if.end.38:                                        ; preds = %do.body.34
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %if.end.40

if.end.40:                                        ; preds = %do.end.39, %do.end.31
  %11 = load i32, i32* %errwrite.addr, align 4
  %cmp41 = icmp eq i32 %11, 0
  br i1 %cmp41, label %if.then.43, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.40
  %12 = load i32, i32* %errwrite.addr, align 4
  %cmp42 = icmp eq i32 %12, 1
  br i1 %cmp42, label %if.then.43, label %if.end.50

if.then.43:                                       ; preds = %lor.lhs.false, %if.end.40
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %13 = load i32, i32* %errwrite.addr, align 4
  %call45 = call i32 @dup(i32 %13) #6
  store i32 %call45, i32* %errwrite.addr, align 4
  %cmp46 = icmp eq i32 %call45, -1
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.body.44
  br label %error

if.end.48:                                        ; preds = %do.body.44
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  br label %if.end.50

if.end.50:                                        ; preds = %do.end.49, %lor.lhs.false
  %14 = load i32, i32* %p2cread.addr, align 4
  %cmp51 = icmp eq i32 %14, 0
  br i1 %cmp51, label %if.then.52, label %if.else

if.then.52:                                       ; preds = %if.end.50
  %15 = load i32, i32* %p2cread.addr, align 4
  %call53 = call i32 @_Py_set_inheritable(i32 %15, i32 1, i32* null)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.then.52
  br label %error

if.end.56:                                        ; preds = %if.then.52
  br label %if.end.66

if.else:                                          ; preds = %if.end.50
  %16 = load i32, i32* %p2cread.addr, align 4
  %cmp57 = icmp ne i32 %16, -1
  br i1 %cmp57, label %if.then.58, label %if.end.65

if.then.58:                                       ; preds = %if.else
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %17 = load i32, i32* %p2cread.addr, align 4
  %call60 = call i32 @dup2(i32 %17, i32 0) #6
  %cmp61 = icmp eq i32 %call60, -1
  br i1 %cmp61, label %if.then.62, label %if.end.63

if.then.62:                                       ; preds = %do.body.59
  br label %error

if.end.63:                                        ; preds = %do.body.59
  br label %do.end.64

do.end.64:                                        ; preds = %if.end.63
  br label %if.end.65

if.end.65:                                        ; preds = %do.end.64, %if.else
  br label %if.end.66

if.end.66:                                        ; preds = %if.end.65, %if.end.56
  %18 = load i32, i32* %c2pwrite.addr, align 4
  %cmp67 = icmp eq i32 %18, 1
  br i1 %cmp67, label %if.then.68, label %if.else.73

if.then.68:                                       ; preds = %if.end.66
  %19 = load i32, i32* %c2pwrite.addr, align 4
  %call69 = call i32 @_Py_set_inheritable(i32 %19, i32 1, i32* null)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %if.then.68
  br label %error

if.end.72:                                        ; preds = %if.then.68
  br label %if.end.83

if.else.73:                                       ; preds = %if.end.66
  %20 = load i32, i32* %c2pwrite.addr, align 4
  %cmp74 = icmp ne i32 %20, -1
  br i1 %cmp74, label %if.then.75, label %if.end.82

if.then.75:                                       ; preds = %if.else.73
  br label %do.body.76

do.body.76:                                       ; preds = %if.then.75
  %21 = load i32, i32* %c2pwrite.addr, align 4
  %call77 = call i32 @dup2(i32 %21, i32 1) #6
  %cmp78 = icmp eq i32 %call77, -1
  br i1 %cmp78, label %if.then.79, label %if.end.80

if.then.79:                                       ; preds = %do.body.76
  br label %error

if.end.80:                                        ; preds = %do.body.76
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %if.end.82

if.end.82:                                        ; preds = %do.end.81, %if.else.73
  br label %if.end.83

if.end.83:                                        ; preds = %if.end.82, %if.end.72
  %22 = load i32, i32* %errwrite.addr, align 4
  %cmp84 = icmp eq i32 %22, 2
  br i1 %cmp84, label %if.then.85, label %if.else.90

if.then.85:                                       ; preds = %if.end.83
  %23 = load i32, i32* %errwrite.addr, align 4
  %call86 = call i32 @_Py_set_inheritable(i32 %23, i32 1, i32* null)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %if.then.88, label %if.end.89

if.then.88:                                       ; preds = %if.then.85
  br label %error

if.end.89:                                        ; preds = %if.then.85
  br label %if.end.100

if.else.90:                                       ; preds = %if.end.83
  %24 = load i32, i32* %errwrite.addr, align 4
  %cmp91 = icmp ne i32 %24, -1
  br i1 %cmp91, label %if.then.92, label %if.end.99

if.then.92:                                       ; preds = %if.else.90
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.92
  %25 = load i32, i32* %errwrite.addr, align 4
  %call94 = call i32 @dup2(i32 %25, i32 2) #6
  %cmp95 = icmp eq i32 %call94, -1
  br i1 %cmp95, label %if.then.96, label %if.end.97

if.then.96:                                       ; preds = %do.body.93
  br label %error

if.end.97:                                        ; preds = %do.body.93
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  br label %if.end.99

if.end.99:                                        ; preds = %do.end.98, %if.else.90
  br label %if.end.100

if.end.100:                                       ; preds = %if.end.99, %if.end.89
  %26 = load i32, i32* %p2cread.addr, align 4
  %cmp101 = icmp sgt i32 %26, 2
  br i1 %cmp101, label %if.then.102, label %if.end.109

if.then.102:                                      ; preds = %if.end.100
  br label %do.body.103

do.body.103:                                      ; preds = %if.then.102
  %27 = load i32, i32* %p2cread.addr, align 4
  %call104 = call i32 @close(i32 %27)
  %cmp105 = icmp eq i32 %call104, -1
  br i1 %cmp105, label %if.then.106, label %if.end.107

if.then.106:                                      ; preds = %do.body.103
  br label %error

if.end.107:                                       ; preds = %do.body.103
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %if.end.109

if.end.109:                                       ; preds = %do.end.108, %if.end.100
  %28 = load i32, i32* %c2pwrite.addr, align 4
  %cmp110 = icmp sgt i32 %28, 2
  br i1 %cmp110, label %land.lhs.true, label %if.end.119

land.lhs.true:                                    ; preds = %if.end.109
  %29 = load i32, i32* %c2pwrite.addr, align 4
  %30 = load i32, i32* %p2cread.addr, align 4
  %cmp111 = icmp ne i32 %29, %30
  br i1 %cmp111, label %if.then.112, label %if.end.119

if.then.112:                                      ; preds = %land.lhs.true
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %31 = load i32, i32* %c2pwrite.addr, align 4
  %call114 = call i32 @close(i32 %31)
  %cmp115 = icmp eq i32 %call114, -1
  br i1 %cmp115, label %if.then.116, label %if.end.117

if.then.116:                                      ; preds = %do.body.113
  br label %error

if.end.117:                                       ; preds = %do.body.113
  br label %do.end.118

do.end.118:                                       ; preds = %if.end.117
  br label %if.end.119

if.end.119:                                       ; preds = %do.end.118, %land.lhs.true, %if.end.109
  %32 = load i32, i32* %errwrite.addr, align 4
  %33 = load i32, i32* %c2pwrite.addr, align 4
  %cmp120 = icmp ne i32 %32, %33
  br i1 %cmp120, label %land.lhs.true.121, label %if.end.132

land.lhs.true.121:                                ; preds = %if.end.119
  %34 = load i32, i32* %errwrite.addr, align 4
  %35 = load i32, i32* %p2cread.addr, align 4
  %cmp122 = icmp ne i32 %34, %35
  br i1 %cmp122, label %land.lhs.true.123, label %if.end.132

land.lhs.true.123:                                ; preds = %land.lhs.true.121
  %36 = load i32, i32* %errwrite.addr, align 4
  %cmp124 = icmp sgt i32 %36, 2
  br i1 %cmp124, label %if.then.125, label %if.end.132

if.then.125:                                      ; preds = %land.lhs.true.123
  br label %do.body.126

do.body.126:                                      ; preds = %if.then.125
  %37 = load i32, i32* %errwrite.addr, align 4
  %call127 = call i32 @close(i32 %37)
  %cmp128 = icmp eq i32 %call127, -1
  br i1 %cmp128, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %do.body.126
  br label %error

if.end.130:                                       ; preds = %do.body.126
  br label %do.end.131

do.end.131:                                       ; preds = %if.end.130
  br label %if.end.132

if.end.132:                                       ; preds = %do.end.131, %land.lhs.true.123, %land.lhs.true.121, %if.end.119
  %38 = load i8*, i8** %cwd.addr, align 8
  %tobool = icmp ne i8* %38, null
  br i1 %tobool, label %if.then.133, label %if.end.140

if.then.133:                                      ; preds = %if.end.132
  br label %do.body.134

do.body.134:                                      ; preds = %if.then.133
  %39 = load i8*, i8** %cwd.addr, align 8
  %call135 = call i32 @chdir(i8* %39) #6
  %cmp136 = icmp eq i32 %call135, -1
  br i1 %cmp136, label %if.then.137, label %if.end.138

if.then.137:                                      ; preds = %do.body.134
  br label %error

if.end.138:                                       ; preds = %do.body.134
  br label %do.end.139

do.end.139:                                       ; preds = %if.end.138
  br label %if.end.140

if.end.140:                                       ; preds = %do.end.139, %if.end.132
  %40 = load i32, i32* %restore_signals.addr, align 4
  %tobool141 = icmp ne i32 %40, 0
  br i1 %tobool141, label %if.then.142, label %if.end.143

if.then.142:                                      ; preds = %if.end.140
  call void @_Py_RestoreSignals()
  br label %if.end.143

if.end.143:                                       ; preds = %if.then.142, %if.end.140
  %41 = load i32, i32* %call_setsid.addr, align 4
  %tobool144 = icmp ne i32 %41, 0
  br i1 %tobool144, label %if.then.145, label %if.end.152

if.then.145:                                      ; preds = %if.end.143
  br label %do.body.146

do.body.146:                                      ; preds = %if.then.145
  %call147 = call i32 @setsid() #6
  %cmp148 = icmp eq i32 %call147, -1
  br i1 %cmp148, label %if.then.149, label %if.end.150

if.then.149:                                      ; preds = %do.body.146
  br label %error

if.end.150:                                       ; preds = %do.body.146
  br label %do.end.151

do.end.151:                                       ; preds = %if.end.150
  br label %if.end.152

if.end.152:                                       ; preds = %do.end.151, %if.end.143
  store i32 1, i32* %reached_preexec, align 4
  %42 = load %struct._object*, %struct._object** %preexec_fn.addr, align 8
  %cmp153 = icmp ne %struct._object* %42, @_Py_NoneStruct
  br i1 %cmp153, label %land.lhs.true.154, label %if.end.162

land.lhs.true.154:                                ; preds = %if.end.152
  %43 = load %struct._object*, %struct._object** %preexec_fn_args_tuple.addr, align 8
  %tobool155 = icmp ne %struct._object* %43, null
  br i1 %tobool155, label %if.then.156, label %if.end.162

if.then.156:                                      ; preds = %land.lhs.true.154
  %44 = load %struct._object*, %struct._object** %preexec_fn.addr, align 8
  %45 = load %struct._object*, %struct._object** %preexec_fn_args_tuple.addr, align 8
  %call157 = call %struct._object* @PyObject_Call(%struct._object* %44, %struct._object* %45, %struct._object* null)
  store %struct._object* %call157, %struct._object** %result, align 8
  %46 = load %struct._object*, %struct._object** %result, align 8
  %cmp158 = icmp eq %struct._object* %46, null
  br i1 %cmp158, label %if.then.159, label %if.end.161

if.then.159:                                      ; preds = %if.then.156
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i32 0, i32 0), i8** %err_msg, align 8
  %call160 = call i32* @__errno_location() #8
  store i32 0, i32* %call160, align 4
  br label %error

if.end.161:                                       ; preds = %if.then.156
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %land.lhs.true.154, %if.end.152
  %47 = load i32, i32* %close_fds.addr, align 4
  %tobool163 = icmp ne i32 %47, 0
  br i1 %tobool163, label %if.then.164, label %if.end.165

if.then.164:                                      ; preds = %if.end.162
  %48 = load i64, i64* @max_fd, align 8
  %conv = trunc i64 %48 to i32
  store i32 %conv, i32* %local_max_fd, align 4
  %49 = load i32, i32* %local_max_fd, align 4
  %50 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  call void @_close_open_fd_range_safe(i32 3, i32 %49, %struct._object* %50)
  br label %if.end.165

if.end.165:                                       ; preds = %if.then.164, %if.end.162
  store i32 0, i32* %saved_errno, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.165
  %51 = load i32, i32* %i, align 4
  %idxprom = sext i32 %51 to i64
  %52 = load i8**, i8*** %exec_array.addr, align 8
  %arrayidx = getelementptr i8*, i8** %52, i64 %idxprom
  %53 = load i8*, i8** %arrayidx, align 8
  %cmp166 = icmp ne i8* %53, null
  br i1 %cmp166, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %54 = load i32, i32* %i, align 4
  %idxprom168 = sext i32 %54 to i64
  %55 = load i8**, i8*** %exec_array.addr, align 8
  %arrayidx169 = getelementptr i8*, i8** %55, i64 %idxprom168
  %56 = load i8*, i8** %arrayidx169, align 8
  store i8* %56, i8** %executable, align 8
  %57 = load i8**, i8*** %envp.addr, align 8
  %tobool170 = icmp ne i8** %57, null
  br i1 %tobool170, label %if.then.171, label %if.else.173

if.then.171:                                      ; preds = %for.body
  %58 = load i8*, i8** %executable, align 8
  %59 = load i8**, i8*** %argv.addr, align 8
  %60 = load i8**, i8*** %envp.addr, align 8
  %call172 = call i32 @execve(i8* %58, i8** %59, i8** %60) #6
  br label %if.end.175

if.else.173:                                      ; preds = %for.body
  %61 = load i8*, i8** %executable, align 8
  %62 = load i8**, i8*** %argv.addr, align 8
  %call174 = call i32 @execv(i8* %61, i8** %62) #6
  br label %if.end.175

if.end.175:                                       ; preds = %if.else.173, %if.then.171
  %call176 = call i32* @__errno_location() #8
  %63 = load i32, i32* %call176, align 4
  %cmp177 = icmp ne i32 %63, 2
  br i1 %cmp177, label %land.lhs.true.179, label %if.end.188

land.lhs.true.179:                                ; preds = %if.end.175
  %call180 = call i32* @__errno_location() #8
  %64 = load i32, i32* %call180, align 4
  %cmp181 = icmp ne i32 %64, 20
  br i1 %cmp181, label %land.lhs.true.183, label %if.end.188

land.lhs.true.183:                                ; preds = %land.lhs.true.179
  %65 = load i32, i32* %saved_errno, align 4
  %cmp184 = icmp eq i32 %65, 0
  br i1 %cmp184, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %land.lhs.true.183
  %call187 = call i32* @__errno_location() #8
  %66 = load i32, i32* %call187, align 4
  store i32 %66, i32* %saved_errno, align 4
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %land.lhs.true.183, %land.lhs.true.179, %if.end.175
  br label %for.inc

for.inc:                                          ; preds = %if.end.188
  %67 = load i32, i32* %i, align 4
  %inc = add i32 %67, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %68 = load i32, i32* %saved_errno, align 4
  %tobool189 = icmp ne i32 %68, 0
  br i1 %tobool189, label %if.then.190, label %if.end.192

if.then.190:                                      ; preds = %for.end
  %69 = load i32, i32* %saved_errno, align 4
  %call191 = call i32* @__errno_location() #8
  store i32 %69, i32* %call191, align 4
  br label %if.end.192

if.end.192:                                       ; preds = %if.then.190, %for.end
  br label %error

error:                                            ; preds = %if.end.192, %if.then.159, %if.then.149, %if.then.137, %if.then.129, %if.then.116, %if.then.106, %if.then.96, %if.then.88, %if.then.79, %if.then.71, %if.then.62, %if.then.55, %if.then.47, %if.then.37, %if.then.29, %if.then.22, %if.then.13, %if.then.5, %if.then
  %call193 = call i32* @__errno_location() #8
  %70 = load i32, i32* %call193, align 4
  store i32 %70, i32* %saved_errno, align 4
  %71 = load i32, i32* %saved_errno, align 4
  %tobool194 = icmp ne i32 %71, 0
  br i1 %tobool194, label %if.then.195, label %if.else.216

if.then.195:                                      ; preds = %error
  %72 = load i32, i32* %errpipe_write.addr, align 4
  %call196 = call i64 @write(i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i64 8)
  %conv197 = trunc i64 %call196 to i32
  store i32 %conv197, i32* %unused, align 4
  %arraydecay = getelementptr inbounds [9 x i8], [9 x i8]* %hex_errno, i32 0, i32 0
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 9
  store i8* %add.ptr, i8** %cur, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.195
  %73 = load i32, i32* %saved_errno, align 4
  %cmp198 = icmp ne i32 %73, 0
  br i1 %cmp198, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %74 = load i8*, i8** %cur, align 8
  %arraydecay200 = getelementptr inbounds [9 x i8], [9 x i8]* %hex_errno, i32 0, i32 0
  %cmp201 = icmp ugt i8* %74, %arraydecay200
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %75 = phi i1 [ false, %while.cond ], [ %cmp201, %land.rhs ]
  br i1 %75, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %76 = load i32, i32* %saved_errno, align 4
  %rem = srem i32 %76, 16
  %idxprom203 = sext i32 %rem to i64
  %arrayidx204 = getelementptr [17 x i8], [17 x i8]* @.str.14, i32 0, i64 %idxprom203
  %77 = load i8, i8* %arrayidx204, align 1
  %78 = load i8*, i8** %cur, align 8
  %incdec.ptr = getelementptr i8, i8* %78, i32 -1
  store i8* %incdec.ptr, i8** %cur, align 8
  store i8 %77, i8* %incdec.ptr, align 1
  %79 = load i32, i32* %saved_errno, align 4
  %div = sdiv i32 %79, 16
  store i32 %div, i32* %saved_errno, align 4
  br label %while.cond

while.end:                                        ; preds = %land.end
  %80 = load i32, i32* %errpipe_write.addr, align 4
  %81 = load i8*, i8** %cur, align 8
  %arraydecay205 = getelementptr inbounds [9 x i8], [9 x i8]* %hex_errno, i32 0, i32 0
  %add.ptr206 = getelementptr i8, i8* %arraydecay205, i64 9
  %82 = load i8*, i8** %cur, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %add.ptr206 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %82 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call207 = call i64 @write(i32 %80, i8* %81, i64 %sub.ptr.sub)
  %conv208 = trunc i64 %call207 to i32
  store i32 %conv208, i32* %unused, align 4
  %83 = load i32, i32* %errpipe_write.addr, align 4
  %call209 = call i64 @write(i32 %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i64 1)
  %conv210 = trunc i64 %call209 to i32
  store i32 %conv210, i32* %unused, align 4
  %84 = load i32, i32* %reached_preexec, align 4
  %tobool211 = icmp ne i32 %84, 0
  br i1 %tobool211, label %if.end.215, label %if.then.212

if.then.212:                                      ; preds = %while.end
  %85 = load i32, i32* %errpipe_write.addr, align 4
  %call213 = call i64 @write(i32 %85, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), i64 6)
  %conv214 = trunc i64 %call213 to i32
  store i32 %conv214, i32* %unused, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.212, %while.end
  br label %if.end.222

if.else.216:                                      ; preds = %error
  %86 = load i32, i32* %errpipe_write.addr, align 4
  %call217 = call i64 @write(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i32 0, i32 0), i64 18)
  %conv218 = trunc i64 %call217 to i32
  store i32 %conv218, i32* %unused, align 4
  %87 = load i32, i32* %errpipe_write.addr, align 4
  %88 = load i8*, i8** %err_msg, align 8
  %89 = load i8*, i8** %err_msg, align 8
  %call219 = call i64 @strlen(i8* %89) #9
  %call220 = call i64 @write(i32 %87, i8* %88, i64 %call219)
  %conv221 = trunc i64 %call220 to i32
  store i32 %conv221, i32* %unused, align 4
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.216, %if.end.215
  %90 = load i32, i32* %unused, align 4
  %tobool223 = icmp ne i32 %90, 0
  br i1 %tobool223, label %if.then.224, label %if.end.225

if.then.224:                                      ; preds = %if.end.222
  br label %if.end.225

if.end.225:                                       ; preds = %if.then.224, %if.end.222
  ret void
}

; Function Attrs: noreturn
declare void @_exit(i32) #3

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #2

declare i32 @_PyImport_ReleaseLock() #2

declare %struct._object* @PyErr_Occurred() #2

declare void @_Py_FreeCharPArray(i8**) #2

; Function Attrs: nounwind uwtable
define internal i32 @_enable_gc(%struct._object* %gc_module) #0 {
entry:
  %retval = alloca i32, align 4
  %gc_module.addr = alloca %struct._object*, align 8
  %result = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %gc_module, %struct._object** %gc_module.addr, align 8
  %0 = load %struct._object*, %struct._object** %gc_module.addr, align 8
  %call = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %0, %struct._Py_Identifier* @_enable_gc.PyId_enable, i8* null)
  store %struct._object* %call, %struct._object** %result, align 8
  %1 = load %struct._object*, %struct._object** %result, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %2 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %2, %struct._object** %_py_decref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %4, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 4
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %7(%struct._object* %8)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %9 = load i32, i32* %retval
  ret i32 %9
}

declare %struct._object* @PyLong_FromLong(i64) #2

declare i64 @PyLong_AsLong(%struct._object*) #2

; Function Attrs: nounwind uwtable
define internal i32 @make_inheritable(%struct._object* %py_fds_to_keep, i32 %errpipe_write) #0 {
entry:
  %retval = alloca i32, align 4
  %py_fds_to_keep.addr = alloca %struct._object*, align 8
  %errpipe_write.addr = alloca i32, align 4
  %i = alloca i64, align 8
  %len = alloca i64, align 8
  %fdobj = alloca %struct._object*, align 8
  %fd = alloca i64, align 8
  store %struct._object* %py_fds_to_keep, %struct._object** %py_fds_to_keep.addr, align 8
  store i32 %errpipe_write, i32* %errpipe_write.addr, align 4
  %0 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call, i64* %len, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %len, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i64, i64* %i, align 8
  %7 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %8, i32 0, i32 1
  %9 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %9, i64 %6
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i64, i64* %i, align 8
  %12 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %11
  %14 = load %struct._object*, %struct._object** %arrayidx3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %10, %cond.true ], [ %14, %cond.false ]
  store %struct._object* %cond, %struct._object** %fdobj, align 8
  %15 = load %struct._object*, %struct._object** %fdobj, align 8
  %call4 = call i64 @PyLong_AsLong(%struct._object* %15)
  store i64 %call4, i64* %fd, align 8
  %16 = load i64, i64* %fd, align 8
  %17 = load i32, i32* %errpipe_write.addr, align 4
  %conv = sext i32 %17 to i64
  %cmp5 = icmp eq i64 %16, %conv
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %for.inc

if.end:                                           ; preds = %cond.end
  %18 = load i64, i64* %fd, align 8
  %conv7 = trunc i64 %18 to i32
  %call8 = call i32 @_Py_set_inheritable(i32 %conv7, i32 1, i32* null)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end.12, %if.then
  %19 = load i64, i64* %i, align 8
  %inc = add i64 %19, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.11
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare i32 @close(i32) #2

; Function Attrs: nounwind
declare i32 @dup(i32) #1

declare i32 @_Py_set_inheritable(i32, i32, i32*) #2

; Function Attrs: nounwind
declare i32 @dup2(i32, i32) #1

; Function Attrs: nounwind
declare i32 @chdir(i8*) #1

declare void @_Py_RestoreSignals() #2

; Function Attrs: nounwind
declare i32 @setsid() #1

declare %struct._object* @PyObject_Call(%struct._object*, %struct._object*, %struct._object*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

; Function Attrs: nounwind uwtable
define internal void @_close_open_fd_range_safe(i32 %start_fd, i32 %end_fd, %struct._object* %py_fds_to_keep) #0 {
entry:
  %start_fd.addr = alloca i32, align 4
  %end_fd.addr = alloca i32, align 4
  %py_fds_to_keep.addr = alloca %struct._object*, align 8
  %fd_dir_fd = alloca i32, align 4
  %buffer = alloca [280 x i8], align 16
  %bytes = alloca i32, align 4
  %entry6 = alloca %struct.linux_dirent64*, align 8
  %offset = alloca i32, align 4
  %fd = alloca i32, align 4
  store i32 %start_fd, i32* %start_fd.addr, align 4
  store i32 %end_fd, i32* %end_fd.addr, align 4
  store %struct._object* %py_fds_to_keep, %struct._object** %py_fds_to_keep.addr, align 8
  %0 = load i32, i32* %start_fd.addr, align 4
  %1 = load i32, i32* %end_fd.addr, align 4
  %cmp = icmp sge i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.38

if.end:                                           ; preds = %entry
  %call = call i32 @_Py_open(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i32 0)
  store i32 %call, i32* %fd_dir_fd, align 4
  %2 = load i32, i32* %fd_dir_fd, align 4
  %cmp1 = icmp eq i32 %2, -1
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %3 = load i32, i32* %start_fd.addr, align 4
  %4 = load i32, i32* %end_fd.addr, align 4
  %5 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  call void @_close_fds_by_brute_force(i32 %3, i32 %4, %struct._object* %5)
  br label %if.end.38

if.else:                                          ; preds = %if.end
  br label %while.cond

while.cond:                                       ; preds = %for.end, %if.else
  %6 = load i32, i32* %fd_dir_fd, align 4
  %arraydecay = getelementptr inbounds [280 x i8], [280 x i8]* %buffer, i32 0, i32 0
  %7 = bitcast i8* %arraydecay to %struct.linux_dirent64*
  %call3 = call i64 (i64, ...) @syscall(i64 217, i32 %6, %struct.linux_dirent64* %7, i64 280) #6
  %conv = trunc i64 %call3 to i32
  store i32 %conv, i32* %bytes, align 4
  %cmp4 = icmp sgt i32 %conv, 0
  br i1 %cmp4, label %while.body, label %while.end.36

while.body:                                       ; preds = %while.cond
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %8 = load i32, i32* %offset, align 4
  %9 = load i32, i32* %bytes, align 4
  %cmp7 = icmp slt i32 %8, %9
  br i1 %cmp7, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay9 = getelementptr inbounds [280 x i8], [280 x i8]* %buffer, i32 0, i32 0
  %10 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %10 to i64
  %add.ptr = getelementptr i8, i8* %arraydecay9, i64 %idx.ext
  %11 = bitcast i8* %add.ptr to %struct.linux_dirent64*
  store %struct.linux_dirent64* %11, %struct.linux_dirent64** %entry6, align 8
  %12 = load %struct.linux_dirent64*, %struct.linux_dirent64** %entry6, align 8
  %d_name = getelementptr inbounds %struct.linux_dirent64, %struct.linux_dirent64* %12, i32 0, i32 4
  %arraydecay10 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0
  %call11 = call i32 @_pos_int_from_ascii(i8* %arraydecay10)
  store i32 %call11, i32* %fd, align 4
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %for.body
  br label %for.inc

if.end.15:                                        ; preds = %for.body
  %13 = load i32, i32* %fd, align 4
  %14 = load i32, i32* %fd_dir_fd, align 4
  %cmp16 = icmp ne i32 %13, %14
  br i1 %cmp16, label %land.lhs.true, label %if.end.34

land.lhs.true:                                    ; preds = %if.end.15
  %15 = load i32, i32* %fd, align 4
  %16 = load i32, i32* %start_fd.addr, align 4
  %cmp18 = icmp sge i32 %15, %16
  br i1 %cmp18, label %land.lhs.true.20, label %if.end.34

land.lhs.true.20:                                 ; preds = %land.lhs.true
  %17 = load i32, i32* %fd, align 4
  %18 = load i32, i32* %end_fd.addr, align 4
  %cmp21 = icmp slt i32 %17, %18
  br i1 %cmp21, label %land.lhs.true.23, label %if.end.34

land.lhs.true.23:                                 ; preds = %land.lhs.true.20
  %19 = load i32, i32* %fd, align 4
  %20 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %call24 = call i32 @_is_fd_in_sorted_fd_sequence(i32 %19, %struct._object* %20)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.end.34, label %if.then.25

if.then.25:                                       ; preds = %land.lhs.true.23
  br label %while.cond.26

while.cond.26:                                    ; preds = %while.body.33, %if.then.25
  %21 = load i32, i32* %fd, align 4
  %call27 = call i32 @close(i32 %21)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond.26
  %call30 = call i32* @__errno_location() #8
  %22 = load i32, i32* %call30, align 4
  %cmp31 = icmp eq i32 %22, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond.26
  %23 = phi i1 [ false, %while.cond.26 ], [ %cmp31, %land.rhs ]
  br i1 %23, label %while.body.33, label %while.end

while.body.33:                                    ; preds = %land.end
  br label %while.cond.26

while.end:                                        ; preds = %land.end
  br label %if.end.34

if.end.34:                                        ; preds = %while.end, %land.lhs.true.23, %land.lhs.true.20, %land.lhs.true, %if.end.15
  br label %for.inc

for.inc:                                          ; preds = %if.end.34, %if.then.14
  %24 = load %struct.linux_dirent64*, %struct.linux_dirent64** %entry6, align 8
  %d_reclen = getelementptr inbounds %struct.linux_dirent64, %struct.linux_dirent64* %24, i32 0, i32 2
  %25 = load i16, i16* %d_reclen, align 2
  %conv35 = zext i16 %25 to i32
  %26 = load i32, i32* %offset, align 4
  %add = add i32 %26, %conv35
  store i32 %add, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.end.36:                                     ; preds = %while.cond
  %27 = load i32, i32* %fd_dir_fd, align 4
  %call37 = call i32 @close(i32 %27)
  br label %if.end.38

if.end.38:                                        ; preds = %if.then, %if.then.2, %while.end.36
  ret void
}

; Function Attrs: nounwind
declare i32 @execve(i8*, i8**, i8**) #1

; Function Attrs: nounwind
declare i32 @execv(i8*, i8**) #1

declare i64 @write(i32, i8*, i64) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare i32 @_Py_open(i8*, i32) #2

; Function Attrs: nounwind uwtable
define internal void @_close_fds_by_brute_force(i32 %start_fd, i32 %end_fd, %struct._object* %py_fds_to_keep) #0 {
entry:
  %start_fd.addr = alloca i32, align 4
  %end_fd.addr = alloca i32, align 4
  %py_fds_to_keep.addr = alloca %struct._object*, align 8
  %num_fds_to_keep = alloca i64, align 8
  %keep_seq_idx = alloca i64, align 8
  %fd_num = alloca i32, align 4
  %py_keep_fd = alloca %struct._object*, align 8
  %keep_fd = alloca i32, align 4
  store i32 %start_fd, i32* %start_fd.addr, align 4
  store i32 %end_fd, i32* %end_fd.addr, align 4
  store %struct._object* %py_fds_to_keep, %struct._object** %py_fds_to_keep.addr, align 8
  %0 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  store i64 %call, i64* %num_fds_to_keep, align 8
  store i64 0, i64* %keep_seq_idx, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.17, %entry
  %1 = load i64, i64* %keep_seq_idx, align 8
  %2 = load i64, i64* %num_fds_to_keep, align 8
  %cmp = icmp slt i64 %1, %2
  br i1 %cmp, label %for.body, label %for.end.19

for.body:                                         ; preds = %for.cond
  %3 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %6 = load i64, i64* %keep_seq_idx, align 8
  %7 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %8, i32 0, i32 1
  %9 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %9, i64 %6
  %10 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %11 = load i64, i64* %keep_seq_idx, align 8
  %12 = load %struct._object*, %struct._object** %py_fds_to_keep.addr, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyTupleObject*
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %13, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %11
  %14 = load %struct._object*, %struct._object** %arrayidx3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %10, %cond.true ], [ %14, %cond.false ]
  store %struct._object* %cond, %struct._object** %py_keep_fd, align 8
  %15 = load %struct._object*, %struct._object** %py_keep_fd, align 8
  %call4 = call i64 @PyLong_AsLong(%struct._object* %15)
  %conv = trunc i64 %call4 to i32
  store i32 %conv, i32* %keep_fd, align 4
  %16 = load i32, i32* %keep_fd, align 4
  %17 = load i32, i32* %start_fd.addr, align 4
  %cmp5 = icmp slt i32 %16, %17
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  br label %for.inc.17

if.end:                                           ; preds = %cond.end
  %18 = load i32, i32* %start_fd.addr, align 4
  store i32 %18, i32* %fd_num, align 4
  br label %for.cond.7

for.cond.7:                                       ; preds = %for.inc, %if.end
  %19 = load i32, i32* %fd_num, align 4
  %20 = load i32, i32* %keep_fd, align 4
  %cmp8 = icmp slt i32 %19, %20
  br i1 %cmp8, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.7
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body.10
  %21 = load i32, i32* %fd_num, align 4
  %call11 = call i32 @close(i32 %21)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %call14 = call i32* @__errno_location() #8
  %22 = load i32, i32* %call14, align 4
  %cmp15 = icmp eq i32 %22, 4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %23 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %23, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  br label %while.cond

while.end:                                        ; preds = %land.end
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %24 = load i32, i32* %fd_num, align 4
  %inc = add i32 %24, 1
  store i32 %inc, i32* %fd_num, align 4
  br label %for.cond.7

for.end:                                          ; preds = %for.cond.7
  %25 = load i32, i32* %keep_fd, align 4
  %add = add i32 %25, 1
  store i32 %add, i32* %start_fd.addr, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %for.end, %if.then
  %26 = load i64, i64* %keep_seq_idx, align 8
  %inc18 = add i64 %26, 1
  store i64 %inc18, i64* %keep_seq_idx, align 8
  br label %for.cond

for.end.19:                                       ; preds = %for.cond
  %27 = load i32, i32* %start_fd.addr, align 4
  %28 = load i32, i32* %end_fd.addr, align 4
  %cmp20 = icmp sle i32 %27, %28
  br i1 %cmp20, label %if.then.22, label %if.end.41

if.then.22:                                       ; preds = %for.end.19
  %29 = load i32, i32* %start_fd.addr, align 4
  store i32 %29, i32* %fd_num, align 4
  br label %for.cond.23

for.cond.23:                                      ; preds = %for.inc.38, %if.then.22
  %30 = load i32, i32* %fd_num, align 4
  %31 = load i32, i32* %end_fd.addr, align 4
  %cmp24 = icmp slt i32 %30, %31
  br i1 %cmp24, label %for.body.26, label %for.end.40

for.body.26:                                      ; preds = %for.cond.23
  br label %while.cond.27

while.cond.27:                                    ; preds = %while.body.36, %for.body.26
  %32 = load i32, i32* %fd_num, align 4
  %call28 = call i32 @close(i32 %32)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %land.rhs.31, label %land.end.35

land.rhs.31:                                      ; preds = %while.cond.27
  %call32 = call i32* @__errno_location() #8
  %33 = load i32, i32* %call32, align 4
  %cmp33 = icmp eq i32 %33, 4
  br label %land.end.35

land.end.35:                                      ; preds = %land.rhs.31, %while.cond.27
  %34 = phi i1 [ false, %while.cond.27 ], [ %cmp33, %land.rhs.31 ]
  br i1 %34, label %while.body.36, label %while.end.37

while.body.36:                                    ; preds = %land.end.35
  br label %while.cond.27

while.end.37:                                     ; preds = %land.end.35
  br label %for.inc.38

for.inc.38:                                       ; preds = %while.end.37
  %35 = load i32, i32* %fd_num, align 4
  %inc39 = add i32 %35, 1
  store i32 %inc39, i32* %fd_num, align 4
  br label %for.cond.23

for.end.40:                                       ; preds = %for.cond.23
  br label %if.end.41

if.end.41:                                        ; preds = %for.end.40, %for.end.19
  ret void
}

; Function Attrs: nounwind
declare i64 @syscall(i64, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @_pos_int_from_ascii(i8* %name) #0 {
entry:
  %retval = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %num = alloca i32, align 4
  store i8* %name, i8** %name.addr, align 8
  store i32 0, i32* %num, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %name.addr, align 8
  %1 = load i8, i8* %0, align 1
  %conv = sext i8 %1 to i32
  %cmp = icmp sge i32 %conv, 48
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %2 = load i8*, i8** %name.addr, align 8
  %3 = load i8, i8* %2, align 1
  %conv2 = sext i8 %3 to i32
  %cmp3 = icmp sle i32 %conv2, 57
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ]
  br i1 %4, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %5 = load i32, i32* %num, align 4
  %mul = mul i32 %5, 10
  %6 = load i8*, i8** %name.addr, align 8
  %7 = load i8, i8* %6, align 1
  %conv5 = sext i8 %7 to i32
  %sub = sub i32 %conv5, 48
  %add = add i32 %mul, %sub
  store i32 %add, i32* %num, align 4
  %8 = load i8*, i8** %name.addr, align 8
  %incdec.ptr = getelementptr i8, i8* %8, i32 1
  store i8* %incdec.ptr, i8** %name.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %9 = load i8*, i8** %name.addr, align 8
  %10 = load i8, i8* %9, align 1
  %tobool = icmp ne i8 %10, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.end
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.end
  %11 = load i32, i32* %num, align 4
  store i32 %11, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

; Function Attrs: nounwind uwtable
define internal i32 @_is_fd_in_sorted_fd_sequence(i32 %fd, %struct._object* %fd_sequence) #0 {
entry:
  %retval = alloca i32, align 4
  %fd.addr = alloca i32, align 4
  %fd_sequence.addr = alloca %struct._object*, align 8
  %search_min = alloca i64, align 8
  %search_max = alloca i64, align 8
  %middle = alloca i64, align 8
  %middle_fd = alloca i64, align 8
  store i32 %fd, i32* %fd.addr, align 4
  store %struct._object* %fd_sequence, %struct._object** %fd_sequence.addr, align 8
  store i64 0, i64* %search_min, align 8
  %0 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %call = call i64 @PySequence_Size(%struct._object* %0)
  %sub = sub i64 %call, 1
  store i64 %sub, i64* %search_max, align 8
  %1 = load i64, i64* %search_max, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %2 = load i64, i64* %search_min, align 8
  %3 = load i64, i64* %search_max, align 8
  %add = add i64 %2, %3
  %div = sdiv i64 %add, 2
  store i64 %div, i64* %middle, align 8
  %4 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 19
  %6 = load i64, i64* %tp_flags, align 8
  %and = and i64 %6, 33554432
  %cmp1 = icmp ne i64 %and, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %do.body
  %7 = load i64, i64* %middle, align 8
  %8 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyListObject*
  %ob_item = getelementptr inbounds %struct.PyListObject, %struct.PyListObject* %9, i32 0, i32 1
  %10 = load %struct._object**, %struct._object*** %ob_item, align 8
  %arrayidx = getelementptr %struct._object*, %struct._object** %10, i64 %7
  %11 = load %struct._object*, %struct._object** %arrayidx, align 8
  br label %cond.end

cond.false:                                       ; preds = %do.body
  %12 = load i64, i64* %middle, align 8
  %13 = load %struct._object*, %struct._object** %fd_sequence.addr, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyTupleObject*
  %ob_item2 = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %14, i32 0, i32 1
  %arrayidx3 = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item2, i32 0, i64 %12
  %15 = load %struct._object*, %struct._object** %arrayidx3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %11, %cond.true ], [ %15, %cond.false ]
  %call4 = call i64 @PyLong_AsLong(%struct._object* %cond)
  store i64 %call4, i64* %middle_fd, align 8
  %16 = load i32, i32* %fd.addr, align 4
  %conv = sext i32 %16 to i64
  %17 = load i64, i64* %middle_fd, align 8
  %cmp5 = icmp eq i64 %conv, %17
  br i1 %cmp5, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %cond.end
  store i32 1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %cond.end
  %18 = load i32, i32* %fd.addr, align 4
  %conv9 = sext i32 %18 to i64
  %19 = load i64, i64* %middle_fd, align 8
  %cmp10 = icmp sgt i64 %conv9, %19
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.8
  %20 = load i64, i64* %middle, align 8
  %add13 = add i64 %20, 1
  store i64 %add13, i64* %search_min, align 8
  br label %if.end.15

if.else:                                          ; preds = %if.end.8
  %21 = load i64, i64* %middle, align 8
  %sub14 = sub i64 %21, 1
  store i64 %sub14, i64* %search_max, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  br label %do.cond

do.cond:                                          ; preds = %if.end.15
  %22 = load i64, i64* %search_min, align 8
  %23 = load i64, i64* %search_max, align 8
  %cmp16 = icmp sle i64 %22, %23
  br i1 %cmp16, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.7, %if.then
  %24 = load i32, i32* %retval
  ret i32 %24
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind readnone }
attributes #9 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
