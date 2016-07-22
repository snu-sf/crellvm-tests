; ModuleID = './_threadmodule.bc'
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
%struct.PyModuleDef = type { %struct.PyModuleDef_Base, i8*, i8*, i64, %struct.PyMethodDef*, i32 (%struct._object*)*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, void (i8*)* }
%struct.PyModuleDef_Base = type { %struct._object, %struct._object* ()*, i64, %struct._object* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct._Py_atomic_address = type { i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.localdummyobject = type { %struct._object, %struct._object*, %struct._object* }
%struct.localobject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct._PyWeakReference = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._PyWeakReference*, %struct._PyWeakReference* }
%struct.lockobject = type { %struct._object, i8*, %struct._object*, i8 }
%struct.timeval = type { i64, i64 }
%struct.rlockobject = type { %struct._object, i8*, i64, i64, %struct._object* }
%struct.bootstate = type { %struct._is*, %struct._object*, %struct._object*, %struct._object*, %struct._ts* }

@localdummytype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.localdummyobject*)* @localdummy_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 24, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@localtype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.localobject*)* @local_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.localobject*, %struct._object*)* @local_getattro to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.localobject*, %struct._object*, %struct._object*)* @local_setattro to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.localobject*, i32 (%struct._object*, i8*)*, i8*)* @local_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.localobject*)* @local_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @local_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@Locktype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.lockobject*)* @lock_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 24, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([9 x %struct.PyMethodDef], [9 x %struct.PyMethodDef]* @lock_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@RLocktype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.rlockobject*)* @rlock_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.rlockobject*)* @rlock_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([8 x %struct.PyMethodDef], [8 x %struct.PyMethodDef]* @rlock_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @rlock_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@threadmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @thread_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([12 x %struct.PyMethodDef], [12 x %struct.PyMethodDef]* @thread_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"TIMEOUT_MAX\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@ThreadError = internal global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@lock_doc = internal global [491 x i8] c"A lock object is a synchronization primitive.  To create a lock,\0Acall the PyThread_allocate_lock() function.  Methods are:\0A\0Aacquire() -- lock the lock, possibly blocking until it can be obtained\0Arelease() -- unlock of the lock\0Alocked() -- test whether the lock is currently locked\0A\0AA lock is not owned by the thread that locked it; another thread may\0Aunlock it.  A thread attempting to lock a lock that it has already locked\0Awill block until another thread unlocks it.  Deadlocks may ensue.\00", align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"LockType\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"RLock\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"_local\00", align 1
@nb_threads = internal global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@str_dict = internal global %struct._object* null, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"_thread._localdummy\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"Thread-local dummy\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"_thread._local\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Thread-local data\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [37 x i8] c"Couldn't get thread-state dictionary\00", align 1
@PyBaseObject_Type = external global %struct._typeobject, align 8
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"'%.50s' object attribute '%U' is read-only\00", align 1
@local_new.wr_callback_def = internal global %struct.PyMethodDef { i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @_localdummy_destroyed, i32 8, i8* null }, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"_localdummy_destroyed\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.13 = private unnamed_addr constant [43 x i8] c"Initialization arguments are not supported\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"thread.local.%p\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"_thread.lock\00", align 1
@lock_methods = internal global [9 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*, %struct._object*, %struct._object*)* @lock_PyThread_acquire_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([424 x i8], [424 x i8]* @acquire_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*, %struct._object*, %struct._object*)* @lock_PyThread_acquire_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([424 x i8], [424 x i8]* @acquire_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*)* @lock_PyThread_release_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @release_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*)* @lock_PyThread_release_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @release_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*)* @lock_locked_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @locked_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*)* @lock_locked_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @locked_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*, %struct._object*, %struct._object*)* @lock_PyThread_acquire_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([424 x i8], [424 x i8]* @acquire_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.lockobject*)* @lock_PyThread_release_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([251 x i8], [251 x i8]* @release_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.16 = private unnamed_addr constant [13 x i8] c"acquire_lock\00", align 1
@acquire_doc = internal global [424 x i8] c"acquire([wait]) -> bool\0A(acquire_lock() is an obsolete synonym)\0A\0ALock the lock.  Without argument, this blocks if the lock is already\0Alocked (even by the same thread), waiting for another thread to release\0Athe lock, and return True once the lock is acquired.\0AWith an argument, this will only block if the argument is true,\0Aand the return value reflects whether the lock is acquired.\0AThe blocking operation is interruptible.\00", align 16
@.str.17 = private unnamed_addr constant [8 x i8] c"acquire\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"release_lock\00", align 1
@release_doc = internal global [251 x i8] c"release()\0A(release_lock() is an obsolete synonym)\0A\0ARelease the lock, allowing another thread that is blocked waiting for\0Athe lock to acquire the lock.  The lock must be in the locked state,\0Abut it needn't be locked by the same thread that unlocks it.\00", align 16
@.str.19 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"locked_lock\00", align 1
@locked_doc = internal global [105 x i8] c"locked() -> bool\0A(locked_lock() is an obsolete synonym)\0A\0AReturn whether the lock is in the locked state.\00", align 16
@.str.21 = private unnamed_addr constant [7 x i8] c"locked\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"blocking\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@lock_PyThread_acquire_lock.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@.str.26 = private unnamed_addr constant [12 x i8] c"|id:acquire\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [48 x i8] c"can't specify a timeout for a non-blocking call\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"timeout value must be strictly positive\00", align 1
@PyExc_OverflowError = external global %struct._object*, align 8
@.str.29 = private unnamed_addr constant [27 x i8] c"timeout value is too large\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"release unlocked lock\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"_thread.RLock\00", align 1
@rlock_methods = internal global [8 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rlockobject*, %struct._object*, %struct._object*)* @rlock_acquire to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([667 x i8], [667 x i8]* @rlock_acquire_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rlockobject*)* @rlock_release to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @rlock_release_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rlockobject*)* @rlock_is_owned to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @rlock_is_owned_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.34, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rlockobject*, %struct._object*)* @rlock_acquire_restore to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @rlock_acquire_restore_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.35, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rlockobject*)* @rlock_release_save to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @rlock_release_save_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rlockobject*, %struct._object*, %struct._object*)* @rlock_acquire to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([667 x i8], [667 x i8]* @rlock_acquire_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.rlockobject*)* @rlock_release to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([421 x i8], [421 x i8]* @rlock_release_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.32 = private unnamed_addr constant [25 x i8] c"<%s owner=%ld count=%lu>\00", align 1
@rlock_acquire_doc = internal global [667 x i8] c"acquire(blocking=True) -> bool\0A\0ALock the lock.  `blocking` indicates whether we should wait\0Afor the lock to be available or not.  If `blocking` is False\0Aand another thread holds the lock, the method will return False\0Aimmediately.  If `blocking` is True and another thread holds\0Athe lock, the method will wait for the lock to be released,\0Atake it and then return True.\0A(note: the blocking operation is interruptible.)\0A\0AIn all other cases, the method will return True immediately.\0APrecisely, if the current thread already holds the lock, its\0Ainternal counter is simply incremented. If nobody holds the lock,\0Athe lock is taken and its internal counter initialized to 1.\00", align 16
@rlock_release_doc = internal global [421 x i8] c"release()\0A\0ARelease the lock, allowing another thread that is blocked waiting for\0Athe lock to acquire the lock.  The lock must be in the locked state,\0Aand must be locked by the same thread that unlocks it; otherwise a\0A`RuntimeError` is raised.\0A\0ADo note that if the lock was acquire()d several times in a row by the\0Acurrent thread, release() needs to be called as many times for the lock\0Ato be available for other threads.\00", align 16
@.str.33 = private unnamed_addr constant [10 x i8] c"_is_owned\00", align 1
@rlock_is_owned_doc = internal global [64 x i8] c"_is_owned() -> bool\0A\0AFor internal use by `threading.Condition`.\00", align 16
@.str.34 = private unnamed_addr constant [17 x i8] c"_acquire_restore\00", align 1
@rlock_acquire_restore_doc = internal global [76 x i8] c"_acquire_restore(state) -> None\0A\0AFor internal use by `threading.Condition`.\00", align 16
@.str.35 = private unnamed_addr constant [14 x i8] c"_release_save\00", align 1
@rlock_release_save_doc = internal global [69 x i8] c"_release_save() -> tuple\0A\0AFor internal use by `threading.Condition`.\00", align 16
@rlock_acquire.kwlist = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i32 0, i32 0), i8* null], align 16
@.str.36 = private unnamed_addr constant [31 x i8] c"Internal lock count overflowed\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@.str.37 = private unnamed_addr constant [32 x i8] c"cannot release un-acquired lock\00", align 1
@_Py_FalseStruct = external global %struct._longobject, align 8
@.str.38 = private unnamed_addr constant [22 x i8] c"(kl):_acquire_restore\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"couldn't acquire lock\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"kl\00", align 1
@.str.41 = private unnamed_addr constant [20 x i8] c"can't allocate lock\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"_thread\00", align 1
@thread_doc = internal global [137 x i8] c"This module provides primitive operations to write multi-threaded programs.\0AThe 'threading' module provides a more convenient interface.\00", align 16
@thread_methods = internal global [12 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @thread_PyThread_start_new_thread, i32 1, i8* getelementptr inbounds ([490 x i8], [490 x i8]* @start_new_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.44, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @thread_PyThread_start_new_thread, i32 1, i8* getelementptr inbounds ([490 x i8], [490 x i8]* @start_new_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread_PyThread_allocate_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @allocate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.46, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread_PyThread_allocate_lock to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([143 x i8], [143 x i8]* @allocate_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread_PyThread_exit_thread to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @exit_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread_PyThread_exit_thread to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([174 x i8], [174 x i8]* @exit_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread_PyThread_interrupt_main to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([128 x i8], [128 x i8]* @interrupt_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread_get_ident to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([471 x i8], [471 x i8]* @get_ident_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread__count to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([373 x i8], [373 x i8]* @_count_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* @thread_stack_size, i32 1, i8* getelementptr inbounds ([1035 x i8], [1035 x i8]* @stack_size_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.53, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._object*)* @thread__set_sentinel to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([202 x i8], [202 x i8]* @_set_sentinel_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@.str.43 = private unnamed_addr constant [17 x i8] c"start_new_thread\00", align 1
@start_new_doc = internal global [490 x i8] c"start_new_thread(function, args[, kwargs])\0A(start_new() is an obsolete synonym)\0A\0AStart a new thread and return its identifier.  The thread will call the\0Afunction with positional arguments from the tuple args and keyword arguments\0Ataken from the optional dictionary kwargs.  The thread exits when the\0Afunction returns; the return value is ignored.  The thread will also exit\0Awhen the function raises an unhandled exception; a stack trace will be\0Aprinted unless the exception is SystemExit.\0A\00", align 16
@.str.44 = private unnamed_addr constant [10 x i8] c"start_new\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"allocate_lock\00", align 1
@allocate_doc = internal global [143 x i8] c"allocate_lock() -> lock object\0A(allocate() is an obsolete synonym)\0A\0ACreate a new lock object.  See help(LockType) for information about locks.\00", align 16
@.str.46 = private unnamed_addr constant [9 x i8] c"allocate\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"exit_thread\00", align 1
@exit_doc = internal global [174 x i8] c"exit()\0A(exit_thread() is an obsolete synonym)\0A\0AThis is synonymous to ``raise SystemExit''.  It will cause the current\0Athread to exit silently unless the exception is caught.\00", align 16
@.str.48 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"interrupt_main\00", align 1
@interrupt_doc = internal global [128 x i8] c"interrupt_main()\0A\0ARaise a KeyboardInterrupt in the main thread.\0AA subthread can use this function to interrupt the main thread.\00", align 16
@.str.50 = private unnamed_addr constant [10 x i8] c"get_ident\00", align 1
@get_ident_doc = internal global [471 x i8] c"get_ident() -> integer\0A\0AReturn a non-zero integer that uniquely identifies the current thread\0Aamongst other threads that exist simultaneously.\0AThis may be used to identify per-thread resources.\0AEven though on some platforms threads identities may appear to be\0Aallocated consecutive numbers starting at 1, this behavior should not\0Abe relied upon, and the number should be seen purely as a magic cookie.\0AA thread's identity may be reused for another thread after it exits.\00", align 16
@.str.51 = private unnamed_addr constant [7 x i8] c"_count\00", align 1
@_count_doc = internal global [373 x i8] c"_count() -> integer\0A\0AReturn the number of currently running Python threads, excluding \0Athe main thread. The returned number comprises all threads created\0Athrough `start_new_thread()` as well as `threading.Thread`, and not\0Ayet finished.\0A\0AThis function is meant for internal and specialized purposes only.\0AIn most applications `threading.enumerate()` should be used instead.\00", align 16
@.str.52 = private unnamed_addr constant [11 x i8] c"stack_size\00", align 1
@stack_size_doc = internal global [1035 x i8] c"stack_size([size]) -> size\0A\0AReturn the thread stack size used when creating new threads.  The\0Aoptional size argument specifies the stack size (in bytes) to be used\0Afor subsequently created threads, and must be 0 (use platform or\0Aconfigured default) or a positive integer value of at least 32,768 (32k).\0AIf changing the thread stack size is unsupported, a ThreadError\0Aexception is raised.  If the specified size is invalid, a ValueError\0Aexception is raised, and the stack size is unmodified.  32k bytes\0A currently the minimum supported stack size value to guarantee\0Asufficient stack space for the interpreter itself.\0A\0ANote that some platforms may have particular restrictions on values for\0Athe stack size, such as requiring a minimum stack size larger than 32kB or\0Arequiring allocation in multiples of the system memory page size\0A- platform documentation should be referred to for more information\0A(4kB pages are common; using multiples of 4096 for the stack size is\0Athe suggested approach in the absence of more specific information).\00", align 16
@.str.53 = private unnamed_addr constant [14 x i8] c"_set_sentinel\00", align 1
@_set_sentinel_doc = internal global [202 x i8] c"_set_sentinel() -> lock\0A\0ASet a sentinel lock that will be released when the current thread\0Astate is finalized (after it is untied from the interpreter).\0A\0AThis is a private API for the threading module.\00", align 16
@.str.54 = private unnamed_addr constant [27 x i8] c"first arg must be callable\00", align 1
@.str.55 = private unnamed_addr constant [24 x i8] c"2nd arg must be a tuple\00", align 1
@.str.56 = private unnamed_addr constant [38 x i8] c"optional 3rd arg must be a dictionary\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.57 = private unnamed_addr constant [23 x i8] c"can't start new thread\00", align 1
@PyExc_SystemExit = external global %struct._object*, align 8
@.str.58 = private unnamed_addr constant [42 x i8] c"Unhandled exception in thread started by \00", align 1
@PyId_stderr = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0), %struct._object* null }, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.59 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@.str.61 = private unnamed_addr constant [24 x i8] c"no current thread ident\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"|n:stack_size\00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"size must be 0 or a positive value\00", align 1
@.str.64 = private unnamed_addr constant [26 x i8] c"size not valid: %zd bytes\00", align 1
@.str.65 = private unnamed_addr constant [33 x i8] c"setting stack size not supported\00", align 1

; Function Attrs: nounwind uwtable
define %struct._object* @PyInit__thread() #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %m = alloca %struct._object*, align 8
  %d = alloca %struct._object*, align 8
  %timeout_max = alloca %struct._object*, align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @localdummytype)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @localtype)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @PyType_Ready(%struct._typeobject* @Locktype)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.4
  %call9 = call i32 @PyType_Ready(%struct._typeobject* @RLocktype)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %call13 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @threadmodule, i32 1013)
  store %struct._object* %call13, %struct._object** %m, align 8
  %0 = load %struct._object*, %struct._object** %m, align 8
  %cmp14 = icmp eq %struct._object* %0, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.12
  %call17 = call %struct._object* @PyFloat_FromDouble(double 0x42A0C6F7A0B5EC00)
  store %struct._object* %call17, %struct._object** %timeout_max, align 8
  %1 = load %struct._object*, %struct._object** %timeout_max, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end.19, label %if.then.18

if.then.18:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.19:                                        ; preds = %if.end.16
  %2 = load %struct._object*, %struct._object** %m, align 8
  %3 = load %struct._object*, %struct._object** %timeout_max, align 8
  %call20 = call i32 @PyModule_AddObject(%struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._object* %3)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.19
  %4 = load %struct._object*, %struct._object** %m, align 8
  %call24 = call %struct._object* @PyModule_GetDict(%struct._object* %4)
  store %struct._object* %call24, %struct._object** %d, align 8
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  store %struct._object* %5, %struct._object** @ThreadError, align 8
  %6 = load %struct._object*, %struct._object** @ThreadError, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %8 = load %struct._object*, %struct._object** %d, align 8
  %9 = load %struct._object*, %struct._object** @ThreadError, align 8
  %call25 = call i32 @PyDict_SetItemString(%struct._object* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %9)
  store i8* getelementptr inbounds ([491 x i8], [491 x i8]* @lock_doc, i32 0, i32 0), i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 20), align 8
  %10 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 0, i32 0, i32 0), align 8
  %inc26 = add i64 %10, 1
  store i64 %inc26, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 0, i32 0, i32 0), align 8
  %11 = load %struct._object*, %struct._object** %d, align 8
  %call27 = call i32 @PyDict_SetItemString(%struct._object* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 0, i32 0))
  %12 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i32 0, i32 0, i32 0, i32 0), align 8
  %inc28 = add i64 %12, 1
  store i64 %inc28, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i32 0, i32 0, i32 0, i32 0), align 8
  %13 = load %struct._object*, %struct._object** %m, align 8
  %call29 = call i32 @PyModule_AddObject(%struct._object* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i32 0, i32 0, i32 0))
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %if.end.23
  %14 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i32 0, i32 0, i32 0, i32 0), align 8
  %inc33 = add i64 %14, 1
  store i64 %inc33, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i32 0, i32 0, i32 0, i32 0), align 8
  %15 = load %struct._object*, %struct._object** %m, align 8
  %call34 = call i32 @PyModule_AddObject(%struct._object* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i32 0, i32 0, i32 0))
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %if.end.32
  store i64 0, i64* @nb_threads, align 8
  %call38 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* %call38, %struct._object** @str_dict, align 8
  %16 = load %struct._object*, %struct._object** @str_dict, align 8
  %cmp39 = icmp eq %struct._object* %16, null
  br i1 %cmp39, label %if.then.40, label %if.end.41

if.then.40:                                       ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.41:                                        ; preds = %if.end.37
  call void @PyThread_init_thread()
  %17 = load %struct._object*, %struct._object** %m, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.41, %if.then.40, %if.then.36, %if.then.31, %if.then.22, %if.then.18, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %18 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %18
}

declare i32 @PyType_Ready(%struct._typeobject*) #1

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #1

declare %struct._object* @PyFloat_FromDouble(double) #1

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct._object* @PyUnicode_InternFromString(i8*) #1

declare void @PyThread_init_thread() #1

; Function Attrs: nounwind uwtable
define internal void @localdummy_dealloc(%struct.localdummyobject* %self) #0 {
entry:
  %self.addr = alloca %struct.localdummyobject*, align 8
  store %struct.localdummyobject* %self, %struct.localdummyobject** %self.addr, align 8
  %0 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8
  %3 = bitcast %struct.localdummyobject* %2 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8
  %5 = bitcast %struct.localdummyobject* %4 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 38
  %7 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %8 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8
  %9 = bitcast %struct.localdummyobject* %8 to %struct._object*
  %10 = bitcast %struct._object* %9 to i8*
  call void %7(i8* %10)
  ret void
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @local_dealloc(%struct.localobject* %self) #0 {
entry:
  %self.addr = alloca %struct.localobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8
  %0 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %weakreflist = getelementptr inbounds %struct.localobject, %struct.localobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %3 = bitcast %struct.localobject* %2 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %5 = bitcast %struct.localobject* %4 to i8*
  call void @PyObject_GC_UnTrack(i8* %5)
  %6 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %call = call i32 @local_clear(%struct.localobject* %6)
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %7, i32 0, i32 1
  %8 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %8, %struct._object** %_py_xdecref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp1 = icmp ne %struct._object* %9, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %do.body
  br label %do.body.3

do.body.3:                                        ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6

if.else:                                          ; preds = %do.body.3
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  br label %if.end.7

if.end.7:                                         ; preds = %do.end, %do.body
  br label %do.end.8

do.end.8:                                         ; preds = %if.end.7
  %17 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %18 = bitcast %struct.localobject* %17 to %struct._object*
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 38
  %20 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %21 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %22 = bitcast %struct.localobject* %21 to %struct._object*
  %23 = bitcast %struct._object* %22 to i8*
  call void %20(i8* %23)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @local_getattro(%struct.localobject* %self, %struct._object* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.localobject*, align 8
  %name.addr = alloca %struct._object*, align 8
  %ldict = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  %0 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %call = call %struct._object* @_ldict(%struct.localobject* %0)
  store %struct._object* %call, %struct._object** %ldict, align 8
  %1 = load %struct._object*, %struct._object** %ldict, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %3 = load %struct._object*, %struct._object** @str_dict, align 8
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %2, %struct._object* %3, i32 2)
  store i32 %call1, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** %ldict, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %7 = load %struct._object*, %struct._object** %ldict, align 8
  store %struct._object* %7, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load i32, i32* %r, align 4
  %cmp5 = icmp eq i32 %8, -1
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.end.4
  %9 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %10 = bitcast %struct.localobject* %9 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp8 = icmp ne %struct._typeobject* %11, @localtype
  br i1 %cmp8, label %if.then.9, label %if.end.11

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %13 = bitcast %struct.localobject* %12 to %struct._object*
  %14 = load %struct._object*, %struct._object** %name.addr, align 8
  %15 = load %struct._object*, %struct._object** %ldict, align 8
  %call10 = call %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %13, %struct._object* %14, %struct._object* %15)
  store %struct._object* %call10, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.7
  %16 = load %struct._object*, %struct._object** %ldict, align 8
  %17 = load %struct._object*, %struct._object** %name.addr, align 8
  %call12 = call %struct._object* @PyDict_GetItem(%struct._object* %16, %struct._object* %17)
  store %struct._object* %call12, %struct._object** %value, align 8
  %18 = load %struct._object*, %struct._object** %value, align 8
  %cmp13 = icmp eq %struct._object* %18, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.11
  %19 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %20 = bitcast %struct.localobject* %19 to %struct._object*
  %21 = load %struct._object*, %struct._object** %name.addr, align 8
  %22 = load %struct._object*, %struct._object** %ldict, align 8
  %call15 = call %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %20, %struct._object* %21, %struct._object* %22)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.end.11
  %23 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt17, align 8
  %inc18 = add i64 %24, 1
  store i64 %inc18, i64* %ob_refcnt17, align 8
  %25 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %25, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.16, %if.then.14, %if.then.9, %if.then.6, %if.then.3, %if.then
  %26 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %26
}

; Function Attrs: nounwind uwtable
define internal i32 @local_setattro(%struct.localobject* %self, %struct._object* %name, %struct._object* %v) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.localobject*, align 8
  %name.addr = alloca %struct._object*, align 8
  %v.addr = alloca %struct._object*, align 8
  %ldict = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8
  store %struct._object* %name, %struct._object** %name.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  %0 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %call = call %struct._object* @_ldict(%struct.localobject* %0)
  store %struct._object* %call, %struct._object** %ldict, align 8
  %1 = load %struct._object*, %struct._object** %ldict, align 8
  %cmp = icmp eq %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %name.addr, align 8
  %3 = load %struct._object*, %struct._object** @str_dict, align 8
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %2, %struct._object* %3, i32 2)
  store i32 %call1, i32* %r, align 4
  %4 = load i32, i32* %r, align 4
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %6 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %7 = bitcast %struct.localobject* %6 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %tp_name, align 8
  %10 = load %struct._object*, %struct._object** %name.addr, align 8
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8* %9, %struct._object* %10)
  store i32 -1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %11 = load i32, i32* %r, align 4
  %cmp6 = icmp eq i32 %11, -1
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.5
  store i32 -1, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end.5
  %12 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %13 = bitcast %struct.localobject* %12 to %struct._object*
  %14 = load %struct._object*, %struct._object** %name.addr, align 8
  %15 = load %struct._object*, %struct._object** %v.addr, align 8
  %16 = load %struct._object*, %struct._object** %ldict, align 8
  %call9 = call i32 @_PyObject_GenericSetAttrWithDict(%struct._object* %13, %struct._object* %14, %struct._object* %15, %struct._object* %16)
  store i32 %call9, i32* %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %17 = load i32, i32* %retval
  ret i32 %17
}

; Function Attrs: nounwind uwtable
define internal i32 @local_traverse(%struct.localobject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.localobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %args1 = getelementptr inbounds %struct.localobject, %struct.localobject* %3, i32 0, i32 2
  %4 = load %struct._object*, %struct._object** %args1, align 8
  %5 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %4, i8* %5)
  store i32 %call, i32* %vret, align 4
  %6 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %6, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %7 = load i32, i32* %vret, align 4
  store i32 %7, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %8 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %8, i32 0, i32 3
  %9 = load %struct._object*, %struct._object** %kw, align 8
  %tobool6 = icmp ne %struct._object* %9, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %10 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %11 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %kw9 = getelementptr inbounds %struct.localobject, %struct.localobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %kw9, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %10(%struct._object* %12, i8* %13)
  store i32 %call10, i32* %vret8, align 4
  %14 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %14, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %15 = load i32, i32* %vret8, align 4
  store i32 %15, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %16 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %16, i32 0, i32 5
  %17 = load %struct._object*, %struct._object** %dummies, align 8
  %tobool17 = icmp ne %struct._object* %17, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %18 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %19 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %dummies20 = getelementptr inbounds %struct.localobject, %struct.localobject* %19, i32 0, i32 5
  %20 = load %struct._object*, %struct._object** %dummies20, align 8
  %21 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %18(%struct._object* %20, i8* %21)
  store i32 %call21, i32* %vret19, align 4
  %22 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %22, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %23 = load i32, i32* %vret19, align 4
  store i32 %23, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.26, %if.then.23, %if.then.12, %if.then.3
  %24 = load i32, i32* %retval
  ret i32 %24
}

; Function Attrs: nounwind uwtable
define internal i32 @local_clear(%struct.localobject* %self) #0 {
entry:
  %self.addr = alloca %struct.localobject*, align 8
  %tstate = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp8 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_tmp26 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp49 = alloca %struct._object*, align 8
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %1, %struct._object** %_py_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %do.body
  %3 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %args1 = getelementptr inbounds %struct.localobject, %struct.localobject* %3, i32 0, i32 2
  store %struct._object* null, %struct._object** %args1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  br label %do.body.7

do.body.7:                                        ; preds = %do.end.6
  %11 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %11, i32 0, i32 3
  %12 = load %struct._object*, %struct._object** %kw, align 8
  store %struct._object* %12, %struct._object** %_py_tmp8, align 8
  %13 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  %cmp9 = icmp ne %struct._object* %13, null
  br i1 %cmp9, label %if.then.10, label %if.end.23

if.then.10:                                       ; preds = %do.body.7
  %14 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %kw11 = getelementptr inbounds %struct.localobject, %struct.localobject* %14, i32 0, i32 3
  store %struct._object* null, %struct._object** %kw11, align 8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.10
  %15 = load %struct._object*, %struct._object** %_py_tmp8, align 8
  store %struct._object* %15, %struct._object** %_py_decref_tmp13, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %17, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.21

if.else.18:                                       ; preds = %do.body.12
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 1
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i32 0, i32 4
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc20, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %20(%struct._object* %21)
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  br label %if.end.23

if.end.23:                                        ; preds = %do.end.22, %do.body.7
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  br label %do.body.25

do.body.25:                                       ; preds = %do.end.24
  %22 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %22, i32 0, i32 5
  %23 = load %struct._object*, %struct._object** %dummies, align 8
  store %struct._object* %23, %struct._object** %_py_tmp26, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  %cmp27 = icmp ne %struct._object* %24, null
  br i1 %cmp27, label %if.then.28, label %if.end.41

if.then.28:                                       ; preds = %do.body.25
  %25 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %dummies29 = getelementptr inbounds %struct.localobject, %struct.localobject* %25, i32 0, i32 5
  store %struct._object* null, %struct._object** %dummies29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.28
  %26 = load %struct._object*, %struct._object** %_py_tmp26, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp31, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %28, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.39

if.else.36:                                       ; preds = %do.body.30
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc38, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %31(%struct._object* %32)
  br label %if.end.39

if.end.39:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.40

do.end.40:                                        ; preds = %if.end.39
  br label %if.end.41

if.end.41:                                        ; preds = %do.end.40, %do.body.25
  br label %do.end.42

do.end.42:                                        ; preds = %if.end.41
  br label %do.body.43

do.body.43:                                       ; preds = %do.end.42
  %33 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %33, i32 0, i32 6
  %34 = load %struct._object*, %struct._object** %wr_callback, align 8
  store %struct._object* %34, %struct._object** %_py_tmp44, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  %cmp45 = icmp ne %struct._object* %35, null
  br i1 %cmp45, label %if.then.46, label %if.end.59

if.then.46:                                       ; preds = %do.body.43
  %36 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %wr_callback47 = getelementptr inbounds %struct.localobject, %struct.localobject* %36, i32 0, i32 6
  store %struct._object* null, %struct._object** %wr_callback47, align 8
  br label %do.body.48

do.body.48:                                       ; preds = %if.then.46
  %37 = load %struct._object*, %struct._object** %_py_tmp44, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp49, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_refcnt50 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt50, align 8
  %dec51 = add i64 %39, -1
  store i64 %dec51, i64* %ob_refcnt50, align 8
  %cmp52 = icmp ne i64 %dec51, 0
  br i1 %cmp52, label %if.then.53, label %if.else.54

if.then.53:                                       ; preds = %do.body.48
  br label %if.end.57

if.else.54:                                       ; preds = %do.body.48
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  %ob_type55 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type55, align 8
  %tp_dealloc56 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc56, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp49, align 8
  call void %42(%struct._object* %43)
  br label %if.end.57

if.end.57:                                        ; preds = %if.else.54, %if.then.53
  br label %do.end.58

do.end.58:                                        ; preds = %if.end.57
  br label %if.end.59

if.end.59:                                        ; preds = %do.end.58, %do.body.43
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  %44 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %44, i32 0, i32 1
  %45 = load %struct._object*, %struct._object** %key, align 8
  %tobool = icmp ne %struct._object* %45, null
  br i1 %tobool, label %land.lhs.true, label %if.end.80

land.lhs.true:                                    ; preds = %do.end.60
  %call = call %struct._ts* @PyThreadState_Get()
  store %struct._ts* %call, %struct._ts** %tstate, align 8
  %tobool61 = icmp ne %struct._ts* %call, null
  br i1 %tobool61, label %land.lhs.true.62, label %if.end.80

land.lhs.true.62:                                 ; preds = %land.lhs.true
  %46 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %46, i32 0, i32 2
  %47 = load %struct._is*, %struct._is** %interp, align 8
  %tobool63 = icmp ne %struct._is* %47, null
  br i1 %tobool63, label %if.then.64, label %if.end.80

if.then.64:                                       ; preds = %land.lhs.true.62
  %48 = load %struct._ts*, %struct._ts** %tstate, align 8
  %interp65 = getelementptr inbounds %struct._ts, %struct._ts* %48, i32 0, i32 2
  %49 = load %struct._is*, %struct._is** %interp65, align 8
  %call66 = call %struct._ts* @PyInterpreterState_ThreadHead(%struct._is* %49)
  store %struct._ts* %call66, %struct._ts** %tstate, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then.64
  %50 = load %struct._ts*, %struct._ts** %tstate, align 8
  %tobool67 = icmp ne %struct._ts* %50, null
  br i1 %tobool67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %51 = load %struct._ts*, %struct._ts** %tstate, align 8
  %dict = getelementptr inbounds %struct._ts, %struct._ts* %51, i32 0, i32 19
  %52 = load %struct._object*, %struct._object** %dict, align 8
  %tobool68 = icmp ne %struct._object* %52, null
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.78

land.lhs.true.69:                                 ; preds = %for.body
  %53 = load %struct._ts*, %struct._ts** %tstate, align 8
  %dict70 = getelementptr inbounds %struct._ts, %struct._ts* %53, i32 0, i32 19
  %54 = load %struct._object*, %struct._object** %dict70, align 8
  %55 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %key71 = getelementptr inbounds %struct.localobject, %struct.localobject* %55, i32 0, i32 1
  %56 = load %struct._object*, %struct._object** %key71, align 8
  %call72 = call %struct._object* @PyDict_GetItem(%struct._object* %54, %struct._object* %56)
  %tobool73 = icmp ne %struct._object* %call72, null
  br i1 %tobool73, label %if.then.74, label %if.end.78

if.then.74:                                       ; preds = %land.lhs.true.69
  %57 = load %struct._ts*, %struct._ts** %tstate, align 8
  %dict75 = getelementptr inbounds %struct._ts, %struct._ts* %57, i32 0, i32 19
  %58 = load %struct._object*, %struct._object** %dict75, align 8
  %59 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %key76 = getelementptr inbounds %struct.localobject, %struct.localobject* %59, i32 0, i32 1
  %60 = load %struct._object*, %struct._object** %key76, align 8
  %call77 = call i32 @PyDict_DelItem(%struct._object* %58, %struct._object* %60)
  br label %if.end.78

if.end.78:                                        ; preds = %if.then.74, %land.lhs.true.69, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.78
  %61 = load %struct._ts*, %struct._ts** %tstate, align 8
  %call79 = call %struct._ts* @PyThreadState_Next(%struct._ts* %61)
  store %struct._ts* %call79, %struct._ts** %tstate, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.80

if.end.80:                                        ; preds = %for.end, %land.lhs.true.62, %land.lhs.true, %do.end.60
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @local_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kw.addr = alloca %struct._object*, align 8
  %self = alloca %struct.localobject*, align 8
  %wr = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kw, %struct._object** %kw.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 35
  %1 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8
  %2 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBaseObject_Type, i32 0, i32 35), align 8
  %cmp = icmp eq i32 (%struct._object*, %struct._object*, %struct._object*)* %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._object*, %struct._object** %args.addr, align 8
  %tobool = icmp ne %struct._object* %3, null
  br i1 %tobool, label %land.lhs.true.1, label %lor.lhs.false

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 @PyObject_IsTrue(%struct._object* %4)
  %tobool2 = icmp ne i32 %call, 0
  br i1 %tobool2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.1, %land.lhs.true
  %5 = load %struct._object*, %struct._object** %kw.addr, align 8
  %tobool3 = icmp ne %struct._object* %5, null
  br i1 %tobool3, label %land.lhs.true.4, label %if.end

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %6 = load %struct._object*, %struct._object** %kw.addr, align 8
  %call5 = call i32 @PyObject_IsTrue(%struct._object* %6)
  %tobool6 = icmp ne i32 %call5, 0
  br i1 %tobool6, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true.4, %land.lhs.true.1
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true.4, %lor.lhs.false, %entry
  %8 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 36
  %9 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %10 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call7 = call %struct._object* %9(%struct._typeobject* %10, i64 0)
  %11 = bitcast %struct._object* %call7 to %struct.localobject*
  store %struct.localobject* %11, %struct.localobject** %self, align 8
  %12 = load %struct.localobject*, %struct.localobject** %self, align 8
  %cmp8 = icmp eq %struct.localobject* %12, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.10
  %13 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %13, %struct._object** %_py_xincref_tmp, align 8
  %14 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp11 = icmp ne %struct._object* %14, null
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0
  %16 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.13
  %17 = load %struct._object*, %struct._object** %args.addr, align 8
  %18 = load %struct.localobject*, %struct.localobject** %self, align 8
  %args14 = getelementptr inbounds %struct.localobject, %struct.localobject* %18, i32 0, i32 2
  store %struct._object* %17, %struct._object** %args14, align 8
  br label %do.body.15

do.body.15:                                       ; preds = %do.end
  %19 = load %struct._object*, %struct._object** %kw.addr, align 8
  store %struct._object* %19, %struct._object** %_py_xincref_tmp16, align 8
  %20 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8
  %cmp17 = icmp ne %struct._object* %20, null
  br i1 %cmp17, label %if.then.18, label %if.end.21

if.then.18:                                       ; preds = %do.body.15
  %21 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt19, align 8
  %inc20 = add i64 %22, 1
  store i64 %inc20, i64* %ob_refcnt19, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %if.then.18, %do.body.15
  br label %do.end.22

do.end.22:                                        ; preds = %if.end.21
  %23 = load %struct._object*, %struct._object** %kw.addr, align 8
  %24 = load %struct.localobject*, %struct.localobject** %self, align 8
  %kw23 = getelementptr inbounds %struct.localobject, %struct.localobject* %24, i32 0, i32 3
  store %struct._object* %23, %struct._object** %kw23, align 8
  %25 = load %struct.localobject*, %struct.localobject** %self, align 8
  %call24 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), %struct.localobject* %25)
  %26 = load %struct.localobject*, %struct.localobject** %self, align 8
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %26, i32 0, i32 1
  store %struct._object* %call24, %struct._object** %key, align 8
  %27 = load %struct.localobject*, %struct.localobject** %self, align 8
  %key25 = getelementptr inbounds %struct.localobject, %struct.localobject* %27, i32 0, i32 1
  %28 = load %struct._object*, %struct._object** %key25, align 8
  %cmp26 = icmp eq %struct._object* %28, null
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end.22
  br label %err

if.end.28:                                        ; preds = %do.end.22
  %call29 = call %struct._object* @PyDict_New()
  %29 = load %struct.localobject*, %struct.localobject** %self, align 8
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %29, i32 0, i32 5
  store %struct._object* %call29, %struct._object** %dummies, align 8
  %30 = load %struct.localobject*, %struct.localobject** %self, align 8
  %dummies30 = getelementptr inbounds %struct.localobject, %struct.localobject* %30, i32 0, i32 5
  %31 = load %struct._object*, %struct._object** %dummies30, align 8
  %cmp31 = icmp eq %struct._object* %31, null
  br i1 %cmp31, label %if.then.32, label %if.end.33

if.then.32:                                       ; preds = %if.end.28
  br label %err

if.end.33:                                        ; preds = %if.end.28
  %32 = load %struct.localobject*, %struct.localobject** %self, align 8
  %33 = bitcast %struct.localobject* %32 to %struct._object*
  %call34 = call %struct._object* @PyWeakref_NewRef(%struct._object* %33, %struct._object* null)
  store %struct._object* %call34, %struct._object** %wr, align 8
  %34 = load %struct._object*, %struct._object** %wr, align 8
  %cmp35 = icmp eq %struct._object* %34, null
  br i1 %cmp35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.end.33
  br label %err

if.end.37:                                        ; preds = %if.end.33
  %35 = load %struct._object*, %struct._object** %wr, align 8
  %call38 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* @local_new.wr_callback_def, %struct._object* %35, %struct._object* null)
  %36 = load %struct.localobject*, %struct.localobject** %self, align 8
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %36, i32 0, i32 6
  store %struct._object* %call38, %struct._object** %wr_callback, align 8
  br label %do.body.39

do.body.39:                                       ; preds = %if.end.37
  %37 = load %struct._object*, %struct._object** %wr, align 8
  store %struct._object* %37, %struct._object** %_py_decref_tmp, align 8
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt40 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt40, align 8
  %dec = add i64 %39, -1
  store i64 %dec, i64* %ob_refcnt40, align 8
  %cmp41 = icmp ne i64 %dec, 0
  br i1 %cmp41, label %if.then.42, label %if.else

if.then.42:                                       ; preds = %do.body.39
  br label %if.end.43

if.else:                                          ; preds = %do.body.39
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %42(%struct._object* %43)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else, %if.then.42
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  %44 = load %struct.localobject*, %struct.localobject** %self, align 8
  %wr_callback45 = getelementptr inbounds %struct.localobject, %struct.localobject* %44, i32 0, i32 6
  %45 = load %struct._object*, %struct._object** %wr_callback45, align 8
  %cmp46 = icmp eq %struct._object* %45, null
  br i1 %cmp46, label %if.then.47, label %if.end.48

if.then.47:                                       ; preds = %do.end.44
  br label %err

if.end.48:                                        ; preds = %do.end.44
  %46 = load %struct.localobject*, %struct.localobject** %self, align 8
  %call49 = call %struct._object* @_local_create_dummy(%struct.localobject* %46)
  %cmp50 = icmp eq %struct._object* %call49, null
  br i1 %cmp50, label %if.then.51, label %if.end.52

if.then.51:                                       ; preds = %if.end.48
  br label %err

if.end.52:                                        ; preds = %if.end.48
  %47 = load %struct.localobject*, %struct.localobject** %self, align 8
  %48 = bitcast %struct.localobject* %47 to %struct._object*
  store %struct._object* %48, %struct._object** %retval
  br label %return

err:                                              ; preds = %if.then.51, %if.then.47, %if.then.36, %if.then.32, %if.then.27
  br label %do.body.53

do.body.53:                                       ; preds = %err
  %49 = load %struct.localobject*, %struct.localobject** %self, align 8
  %50 = bitcast %struct.localobject* %49 to %struct._object*
  store %struct._object* %50, %struct._object** %_py_decref_tmp54, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 0
  %52 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %52, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.53
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 1
  %54 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %54, i32 0, i32 4
  %55 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %55(%struct._object* %56)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.63, %if.end.52, %if.then.9, %if.then
  %57 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %57
}

declare void @PyObject_GC_UnTrack(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_ldict(%struct.localobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.localobject*, align 8
  %tdict = alloca %struct._object*, align 8
  %ldict = alloca %struct._object*, align 8
  %dummy = alloca %struct._object*, align 8
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8
  %call = call %struct._object* @PyThreadState_GetDict()
  store %struct._object* %call, %struct._object** %tdict, align 8
  %0 = load %struct._object*, %struct._object** %tdict, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %tdict, align 8
  %3 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %3, i32 0, i32 1
  %4 = load %struct._object*, %struct._object** %key, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %4)
  store %struct._object* %call1, %struct._object** %dummy, align 8
  %5 = load %struct._object*, %struct._object** %dummy, align 8
  %cmp2 = icmp eq %struct._object* %5, null
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %if.end
  %6 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %call4 = call %struct._object* @_local_create_dummy(%struct.localobject* %6)
  store %struct._object* %call4, %struct._object** %ldict, align 8
  %7 = load %struct._object*, %struct._object** %ldict, align 8
  %cmp5 = icmp eq %struct._object* %7, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.3
  %8 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %9 = bitcast %struct.localobject* %8 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 35
  %11 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8
  %12 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBaseObject_Type, i32 0, i32 35), align 8
  %cmp8 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %11, %12
  br i1 %cmp8, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.7
  %13 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %14 = bitcast %struct.localobject* %13 to %struct._object*
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8
  %tp_init10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 35
  %16 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init10, align 8
  %17 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %18 = bitcast %struct.localobject* %17 to %struct._object*
  %19 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %19, i32 0, i32 2
  %20 = load %struct._object*, %struct._object** %args, align 8
  %21 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %21, i32 0, i32 3
  %22 = load %struct._object*, %struct._object** %kw, align 8
  %call11 = call i32 %16(%struct._object* %18, %struct._object* %20, %struct._object* %22)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.16

if.then.13:                                       ; preds = %land.lhs.true
  %23 = load %struct._object*, %struct._object** %tdict, align 8
  %24 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %key14 = getelementptr inbounds %struct.localobject, %struct.localobject* %24, i32 0, i32 1
  %25 = load %struct._object*, %struct._object** %key14, align 8
  %call15 = call i32 @PyDict_DelItem(%struct._object* %23, %struct._object* %25)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %land.lhs.true, %if.end.7
  br label %if.end.17

if.else:                                          ; preds = %if.end
  %26 = load %struct._object*, %struct._object** %dummy, align 8
  %27 = bitcast %struct._object* %26 to %struct.localdummyobject*
  %localdict = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %27, i32 0, i32 1
  %28 = load %struct._object*, %struct._object** %localdict, align 8
  store %struct._object* %28, %struct._object** %ldict, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.16
  %29 = load %struct._object*, %struct._object** %ldict, align 8
  store %struct._object* %29, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.13, %if.then.6, %if.then
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #1

declare %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyThreadState_GetDict() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_local_create_dummy(%struct.localobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.localobject*, align 8
  %tdict = alloca %struct._object*, align 8
  %ldict = alloca %struct._object*, align 8
  %wr = alloca %struct._object*, align 8
  %dummy = alloca %struct.localdummyobject*, align 8
  %r = alloca i32, align 4
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp30 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_decref_tmp47 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp61 = alloca %struct._object*, align 8
  %_py_xdecref_tmp74 = alloca %struct._object*, align 8
  %_py_decref_tmp78 = alloca %struct._object*, align 8
  %_py_xdecref_tmp91 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8
  store %struct._object* null, %struct._object** %ldict, align 8
  store %struct._object* null, %struct._object** %wr, align 8
  store %struct.localdummyobject* null, %struct.localdummyobject** %dummy, align 8
  %call = call %struct._object* @PyThreadState_GetDict()
  store %struct._object* %call, %struct._object** %tdict, align 8
  %0 = load %struct._object*, %struct._object** %tdict, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0))
  br label %err

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyDict_New()
  store %struct._object* %call1, %struct._object** %ldict, align 8
  %2 = load %struct._object*, %struct._object** %ldict, align 8
  %cmp2 = icmp eq %struct._object* %2, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  br label %err

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localdummytype, i32 0, i32 36), align 8
  %call5 = call %struct._object* %3(%struct._typeobject* @localdummytype, i64 0)
  %4 = bitcast %struct._object* %call5 to %struct.localdummyobject*
  store %struct.localdummyobject* %4, %struct.localdummyobject** %dummy, align 8
  %5 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8
  %cmp6 = icmp eq %struct.localdummyobject* %5, null
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end.4
  br label %err

if.end.8:                                         ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** %ldict, align 8
  %7 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8
  %localdict = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %7, i32 0, i32 1
  store %struct._object* %6, %struct._object** %localdict, align 8
  %8 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8
  %9 = bitcast %struct.localdummyobject* %8 to %struct._object*
  %10 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %10, i32 0, i32 6
  %11 = load %struct._object*, %struct._object** %wr_callback, align 8
  %call9 = call %struct._object* @PyWeakref_NewRef(%struct._object* %9, %struct._object* %11)
  store %struct._object* %call9, %struct._object** %wr, align 8
  %12 = load %struct._object*, %struct._object** %wr, align 8
  %cmp10 = icmp eq %struct._object* %12, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.8
  br label %err

if.end.12:                                        ; preds = %if.end.8
  %13 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %13, i32 0, i32 5
  %14 = load %struct._object*, %struct._object** %dummies, align 8
  %15 = load %struct._object*, %struct._object** %wr, align 8
  %16 = load %struct._object*, %struct._object** %ldict, align 8
  %call13 = call i32 @PyDict_SetItem(%struct._object* %14, %struct._object* %15, %struct._object* %16)
  store i32 %call13, i32* %r, align 4
  %17 = load i32, i32* %r, align 4
  %cmp14 = icmp slt i32 %17, 0
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %err

if.end.16:                                        ; preds = %if.end.12
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %18 = load %struct._object*, %struct._object** %wr, align 8
  store %struct._object* %18, %struct._object** %_py_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp17 = icmp ne %struct._object* %19, null
  br i1 %cmp17, label %if.then.18, label %if.end.23

if.then.18:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %wr, align 8
  br label %do.body.19

do.body.19:                                       ; preds = %if.then.18
  %20 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp20 = icmp ne i64 %dec, 0
  br i1 %cmp20, label %if.then.21, label %if.else

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.22

if.else:                                          ; preds = %do.body.19
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  br label %do.end

do.end:                                           ; preds = %if.end.22
  br label %if.end.23

if.end.23:                                        ; preds = %do.end, %do.body
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %27 = load %struct._object*, %struct._object** %tdict, align 8
  %28 = load %struct.localobject*, %struct.localobject** %self.addr, align 8
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %28, i32 0, i32 1
  %29 = load %struct._object*, %struct._object** %key, align 8
  %30 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8
  %31 = bitcast %struct.localdummyobject* %30 to %struct._object*
  %call25 = call i32 @PyDict_SetItem(%struct._object* %27, %struct._object* %29, %struct._object* %31)
  store i32 %call25, i32* %r, align 4
  %32 = load i32, i32* %r, align 4
  %cmp26 = icmp slt i32 %32, 0
  br i1 %cmp26, label %if.then.27, label %if.end.28

if.then.27:                                       ; preds = %do.end.24
  br label %err

if.end.28:                                        ; preds = %do.end.24
  br label %do.body.29

do.body.29:                                       ; preds = %if.end.28
  %33 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8
  %34 = bitcast %struct.localdummyobject* %33 to %struct._object*
  store %struct._object* %34, %struct._object** %_py_tmp30, align 8
  %35 = load %struct._object*, %struct._object** %_py_tmp30, align 8
  %cmp31 = icmp ne %struct._object* %35, null
  br i1 %cmp31, label %if.then.32, label %if.end.44

if.then.32:                                       ; preds = %do.body.29
  store %struct.localdummyobject* null, %struct.localdummyobject** %dummy, align 8
  br label %do.body.33

do.body.33:                                       ; preds = %if.then.32
  %36 = load %struct._object*, %struct._object** %_py_tmp30, align 8
  store %struct._object* %36, %struct._object** %_py_decref_tmp34, align 8
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 0
  %38 = load i64, i64* %ob_refcnt35, align 8
  %dec36 = add i64 %38, -1
  store i64 %dec36, i64* %ob_refcnt35, align 8
  %cmp37 = icmp ne i64 %dec36, 0
  br i1 %cmp37, label %if.then.38, label %if.else.39

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42

if.else.39:                                       ; preds = %do.body.33
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 1
  %40 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %40, i32 0, i32 4
  %41 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %41(%struct._object* %42)
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %if.end.44

if.end.44:                                        ; preds = %do.end.43, %do.body.29
  br label %do.end.45

do.end.45:                                        ; preds = %if.end.44
  br label %do.body.46

do.body.46:                                       ; preds = %do.end.45
  %43 = load %struct._object*, %struct._object** %ldict, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp47, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_refcnt48 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt48, align 8
  %dec49 = add i64 %45, -1
  store i64 %dec49, i64* %ob_refcnt48, align 8
  %cmp50 = icmp ne i64 %dec49, 0
  br i1 %cmp50, label %if.then.51, label %if.else.52

if.then.51:                                       ; preds = %do.body.46
  br label %if.end.55

if.else.52:                                       ; preds = %do.body.46
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  %ob_type53 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type53, align 8
  %tp_dealloc54 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc54, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp47, align 8
  call void %48(%struct._object* %49)
  br label %if.end.55

if.end.55:                                        ; preds = %if.else.52, %if.then.51
  br label %do.end.56

do.end.56:                                        ; preds = %if.end.55
  %50 = load %struct._object*, %struct._object** %ldict, align 8
  store %struct._object* %50, %struct._object** %retval
  br label %return

err:                                              ; preds = %if.then.27, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  br label %do.body.57

do.body.57:                                       ; preds = %err
  %51 = load %struct._object*, %struct._object** %ldict, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp58 = icmp ne %struct._object* %52, null
  br i1 %cmp58, label %if.then.59, label %if.end.71

if.then.59:                                       ; preds = %do.body.57
  br label %do.body.60

do.body.60:                                       ; preds = %if.then.59
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp61, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_refcnt62 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt62, align 8
  %dec63 = add i64 %55, -1
  store i64 %dec63, i64* %ob_refcnt62, align 8
  %cmp64 = icmp ne i64 %dec63, 0
  br i1 %cmp64, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.60
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.60
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp61, align 8
  call void %58(%struct._object* %59)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %do.body.57
  br label %do.end.72

do.end.72:                                        ; preds = %if.end.71
  br label %do.body.73

do.body.73:                                       ; preds = %do.end.72
  %60 = load %struct._object*, %struct._object** %wr, align 8
  store %struct._object* %60, %struct._object** %_py_xdecref_tmp74, align 8
  %61 = load %struct._object*, %struct._object** %_py_xdecref_tmp74, align 8
  %cmp75 = icmp ne %struct._object* %61, null
  br i1 %cmp75, label %if.then.76, label %if.end.88

if.then.76:                                       ; preds = %do.body.73
  br label %do.body.77

do.body.77:                                       ; preds = %if.then.76
  %62 = load %struct._object*, %struct._object** %_py_xdecref_tmp74, align 8
  store %struct._object* %62, %struct._object** %_py_decref_tmp78, align 8
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_refcnt79 = getelementptr inbounds %struct._object, %struct._object* %63, i32 0, i32 0
  %64 = load i64, i64* %ob_refcnt79, align 8
  %dec80 = add i64 %64, -1
  store i64 %dec80, i64* %ob_refcnt79, align 8
  %cmp81 = icmp ne i64 %dec80, 0
  br i1 %cmp81, label %if.then.82, label %if.else.83

if.then.82:                                       ; preds = %do.body.77
  br label %if.end.86

if.else.83:                                       ; preds = %do.body.77
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  %ob_type84 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 1
  %66 = load %struct._typeobject*, %struct._typeobject** %ob_type84, align 8
  %tp_dealloc85 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %66, i32 0, i32 4
  %67 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc85, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp78, align 8
  call void %67(%struct._object* %68)
  br label %if.end.86

if.end.86:                                        ; preds = %if.else.83, %if.then.82
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %if.end.88

if.end.88:                                        ; preds = %do.end.87, %do.body.73
  br label %do.end.89

do.end.89:                                        ; preds = %if.end.88
  br label %do.body.90

do.body.90:                                       ; preds = %do.end.89
  %69 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8
  %70 = bitcast %struct.localdummyobject* %69 to %struct._object*
  store %struct._object* %70, %struct._object** %_py_xdecref_tmp91, align 8
  %71 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  %cmp92 = icmp ne %struct._object* %71, null
  br i1 %cmp92, label %if.then.93, label %if.end.105

if.then.93:                                       ; preds = %do.body.90
  br label %do.body.94

do.body.94:                                       ; preds = %if.then.93
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp91, align 8
  store %struct._object* %72, %struct._object** %_py_decref_tmp95, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0
  %74 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %74, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.94
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.94
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %77(%struct._object* %78)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %do.body.90
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.106, %do.end.56
  %79 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %79
}

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

declare i32 @_PyObject_GenericSetAttrWithDict(%struct._object*, %struct._object*, %struct._object*, %struct._object*) #1

declare %struct._ts* @PyThreadState_Get() #1

declare %struct._ts* @PyInterpreterState_ThreadHead(%struct._is*) #1

declare %struct._ts* @PyThreadState_Next(%struct._ts*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @_localdummy_destroyed(%struct._object* %localweakref, %struct._object* %dummyweakref) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %localweakref.addr = alloca %struct._object*, align 8
  %dummyweakref.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %self = alloca %struct.localobject*, align 8
  %ldict = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %localweakref, %struct._object** %localweakref.addr, align 8
  store %struct._object* %dummyweakref, %struct._object** %dummyweakref.addr, align 8
  %0 = load %struct._object*, %struct._object** %localweakref.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load %struct._object*, %struct._object** %localweakref.addr, align 8
  %5 = bitcast %struct._object* %4 to %struct._PyWeakReference*
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %6, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %obj, align 8
  %7 = load %struct._object*, %struct._object** %obj, align 8
  %cmp2 = icmp eq %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load %struct._object*, %struct._object** %obj, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt3, align 8
  %inc4 = add i64 %10, 1
  store i64 %inc4, i64* %ob_refcnt3, align 8
  %11 = load %struct._object*, %struct._object** %obj, align 8
  %12 = bitcast %struct._object* %11 to %struct.localobject*
  store %struct.localobject* %12, %struct.localobject** %self, align 8
  %13 = load %struct.localobject*, %struct.localobject** %self, align 8
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %13, i32 0, i32 5
  %14 = load %struct._object*, %struct._object** %dummies, align 8
  %cmp5 = icmp ne %struct._object* %14, null
  br i1 %cmp5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.end
  %15 = load %struct.localobject*, %struct.localobject** %self, align 8
  %dummies7 = getelementptr inbounds %struct.localobject, %struct.localobject* %15, i32 0, i32 5
  %16 = load %struct._object*, %struct._object** %dummies7, align 8
  %17 = load %struct._object*, %struct._object** %dummyweakref.addr, align 8
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %16, %struct._object* %17)
  store %struct._object* %call, %struct._object** %ldict, align 8
  %18 = load %struct._object*, %struct._object** %ldict, align 8
  %cmp8 = icmp ne %struct._object* %18, null
  br i1 %cmp8, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.then.6
  %19 = load %struct.localobject*, %struct.localobject** %self, align 8
  %dummies10 = getelementptr inbounds %struct.localobject, %struct.localobject* %19, i32 0, i32 5
  %20 = load %struct._object*, %struct._object** %dummies10, align 8
  %21 = load %struct._object*, %struct._object** %dummyweakref.addr, align 8
  %call11 = call i32 @PyDict_DelItem(%struct._object* %20, %struct._object* %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.then.6
  %call13 = call %struct._object* @PyErr_Occurred()
  %tobool = icmp ne %struct._object* %call13, null
  br i1 %tobool, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.end.12
  %22 = load %struct._object*, %struct._object** %obj, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %22)
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end
  br label %do.body

do.body:                                          ; preds = %if.end.16
  %23 = load %struct._object*, %struct._object** %obj, align 8
  store %struct._object* %23, %struct._object** %_py_decref_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %24, i32 0, i32 0
  %25 = load i64, i64* %ob_refcnt17, align 8
  %dec = add i64 %25, -1
  store i64 %dec, i64* %ob_refcnt17, align 8
  %cmp18 = icmp ne i64 %dec, 0
  br i1 %cmp18, label %if.then.19, label %if.else

if.then.19:                                       ; preds = %do.body
  br label %if.end.20

if.else:                                          ; preds = %do.body
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 1
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i32 0, i32 4
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %28(%struct._object* %29)
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  br label %do.end

do.end:                                           ; preds = %if.end.20
  %30 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc21 = add i64 %30, 1
  store i64 %inc21, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %31 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %31
}

declare i32 @PyObject_IsTrue(%struct._object*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

declare void @PyErr_WriteUnraisable(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal void @lock_dealloc(%struct.lockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.lockobject*, align 8
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8
  %0 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %in_weakreflist = getelementptr inbounds %struct.lockobject, %struct.lockobject* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %in_weakreflist, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %3 = bitcast %struct.lockobject* %2 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %lock_lock, align 8
  %cmp1 = icmp ne i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %6, i32 0, i32 3
  %7 = load i8, i8* %locked, align 1
  %tobool = icmp ne i8 %7, 0
  br i1 %tobool, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.then.2
  %8 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %lock_lock4 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %lock_lock4, align 8
  call void @PyThread_release_lock(i8* %9)
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.3, %if.then.2
  %10 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %lock_lock6 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %lock_lock6, align 8
  call void @PyThread_free_lock(i8* %11)
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.5, %if.end
  %12 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %13 = bitcast %struct.lockobject* %12 to i8*
  call void @PyObject_Free(i8* %13)
  ret void
}

declare void @PyThread_release_lock(i8*) #1

declare void @PyThread_free_lock(i8*) #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_PyThread_acquire_lock(%struct.lockobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.lockobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  %blocking = alloca i32, align 4
  %timeout = alloca double, align 8
  %microseconds = alloca i64, align 8
  %r = alloca i32, align 4
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @lock_PyThread_acquire_lock.kwlist to i8*), i64 24, i32 16, i1 false)
  store i32 1, i32* %blocking, align 4
  store double -1.000000e+00, double* %timeout, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8** %arraydecay, i32* %blocking, double* %timeout)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %blocking, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end.3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load double, double* %timeout, align 8
  %cmp = fcmp une double %4, -1.000000e+00
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %6 = load double, double* %timeout, align 8
  %cmp4 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %if.end.3
  %7 = load double, double* %timeout, align 8
  %cmp6 = fcmp une double %7, -1.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.5
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.5, %if.end.3
  %9 = load i32, i32* %blocking, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %microseconds, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end.8
  %10 = load double, double* %timeout, align 8
  %cmp11 = fcmp oeq double %10, -1.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %microseconds, align 8
  br label %if.end.17

if.else.13:                                       ; preds = %if.else
  %11 = load double, double* %timeout, align 8
  %mul = fmul double %11, 1.000000e+06
  store double %mul, double* %timeout, align 8
  %12 = load double, double* %timeout, align 8
  %cmp14 = fcmp oge double %12, 0x43E0000000000000
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.13
  %13 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.13
  %14 = load double, double* %timeout, align 8
  %conv = fptosi double %14 to i64
  store i64 %conv, i64* %microseconds, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %15 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %15, i32 0, i32 1
  %16 = load i8*, i8** %lock_lock, align 8
  %17 = load i64, i64* %microseconds, align 8
  %call19 = call i32 @acquire_timed(i8* %16, i64 %17)
  store i32 %call19, i32* %r, align 4
  %18 = load i32, i32* %r, align 4
  %cmp20 = icmp eq i32 %18, 2
  br i1 %cmp20, label %if.then.22, label %if.end.23

if.then.22:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %19 = load i32, i32* %r, align 4
  %cmp24 = icmp eq i32 %19, 1
  br i1 %cmp24, label %if.then.26, label %if.end.27

if.then.26:                                       ; preds = %if.end.23
  %20 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %20, i32 0, i32 3
  store i8 1, i8* %locked, align 1
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %21 = load i32, i32* %r, align 4
  %cmp28 = icmp eq i32 %21, 1
  %conv29 = zext i1 %cmp28 to i32
  %conv30 = sext i32 %conv29 to i64
  %call31 = call %struct._object* @PyBool_FromLong(i64 %conv30)
  store %struct._object* %call31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.27, %if.then.22, %if.then.15, %if.then.7, %if.then.2, %if.then
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_PyThread_release_lock(%struct.lockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.lockobject*, align 8
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8
  %0 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %0, i32 0, i32 3
  %1 = load i8, i8* %locked, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @ThreadError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %lock_lock, align 8
  call void @PyThread_release_lock(i8* %4)
  %5 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %locked1 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %5, i32 0, i32 3
  store i8 0, i8* %locked1, align 1
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_locked_lock(%struct.lockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.lockobject*, align 8
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8
  %0 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %0, i32 0, i32 3
  %1 = load i8, i8* %locked, align 1
  %conv = sext i8 %1 to i64
  %call = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @acquire_timed(i8* %lock, i64 %microseconds) #0 {
entry:
  %retval = alloca i32, align 4
  %lock.addr = alloca i8*, align 8
  %microseconds.addr = alloca i64, align 8
  %r = alloca i32, align 4
  %curtime = alloca %struct.timeval, align 8
  %endtime = alloca %struct.timeval, align 8
  %_save = alloca %struct._ts*, align 8
  store i8* %lock, i8** %lock.addr, align 8
  store i64 %microseconds, i64* %microseconds.addr, align 8
  %0 = load i64, i64* %microseconds.addr, align 8
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyTime_gettimeofday(%struct.timeval* %endtime)
  %1 = load i64, i64* %microseconds.addr, align 8
  %div = sdiv i64 %1, 1000000
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 0
  %2 = load i64, i64* %tv_sec, align 8
  %add = add i64 %2, %div
  store i64 %add, i64* %tv_sec, align 8
  %3 = load i64, i64* %microseconds.addr, align 8
  %rem = srem i64 %3, 1000000
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 1
  %4 = load i64, i64* %tv_usec, align 8
  %add1 = add i64 %4, %rem
  store i64 %add1, i64* %tv_usec, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.end
  %5 = load i8*, i8** %lock.addr, align 8
  %call = call i32 @PyThread_acquire_lock_timed(i8* %5, i64 0, i32 0)
  store i32 %call, i32* %r, align 4
  %6 = load i32, i32* %r, align 4
  %cmp2 = icmp eq i32 %6, 0
  br i1 %cmp2, label %land.lhs.true, label %if.end.7

land.lhs.true:                                    ; preds = %do.body
  %7 = load i64, i64* %microseconds.addr, align 8
  %cmp3 = icmp ne i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %land.lhs.true
  %call5 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call5, %struct._ts** %_save, align 8
  %8 = load i8*, i8** %lock.addr, align 8
  %9 = load i64, i64* %microseconds.addr, align 8
  %call6 = call i32 @PyThread_acquire_lock_timed(i8* %8, i64 %9, i32 1)
  store i32 %call6, i32* %r, align 4
  %10 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %10)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.4, %land.lhs.true, %do.body
  %11 = load i32, i32* %r, align 4
  %cmp8 = icmp eq i32 %11, 2
  br i1 %cmp8, label %if.then.9, label %if.end.26

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i32 @Py_MakePendingCalls()
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  store i32 2, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  %12 = load i64, i64* %microseconds.addr, align 8
  %cmp14 = icmp sgt i64 %12, 0
  br i1 %cmp14, label %if.then.15, label %if.end.25

if.then.15:                                       ; preds = %if.end.13
  call void @_PyTime_gettimeofday(%struct.timeval* %curtime)
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 0
  %13 = load i64, i64* %tv_sec16, align 8
  %tv_sec17 = getelementptr inbounds %struct.timeval, %struct.timeval* %curtime, i32 0, i32 0
  %14 = load i64, i64* %tv_sec17, align 8
  %sub = sub i64 %13, %14
  %mul = mul i64 %sub, 1000000
  %tv_usec18 = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 1
  %15 = load i64, i64* %tv_usec18, align 8
  %tv_usec19 = getelementptr inbounds %struct.timeval, %struct.timeval* %curtime, i32 0, i32 1
  %16 = load i64, i64* %tv_usec19, align 8
  %sub20 = sub i64 %15, %16
  %add21 = add i64 %mul, %sub20
  store i64 %add21, i64* %microseconds.addr, align 8
  %17 = load i64, i64* %microseconds.addr, align 8
  %cmp22 = icmp sle i64 %17, 0
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.15
  store i32 0, i32* %r, align 4
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.23, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %if.end.13
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.7
  br label %do.cond

do.cond:                                          ; preds = %if.end.26
  %18 = load i32, i32* %r, align 4
  %cmp27 = icmp eq i32 %18, 2
  br i1 %cmp27, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %19 = load i32, i32* %r, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.12
  %20 = load i32, i32* %retval
  ret i32 %20
}

declare %struct._object* @PyBool_FromLong(i64) #1

declare void @_PyTime_gettimeofday(%struct.timeval*) #1

declare i32 @PyThread_acquire_lock_timed(i8*, i64, i32) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

declare i32 @Py_MakePendingCalls() #1

; Function Attrs: nounwind uwtable
define internal void @rlock_dealloc(%struct.rlockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.rlockobject*, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8
  %0 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %in_weakreflist = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %0, i32 0, i32 4
  %1 = load %struct._object*, %struct._object** %in_weakreflist, align 8
  %cmp = icmp ne %struct._object* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %3 = bitcast %struct.rlockobject* %2 to %struct._object*
  call void @PyObject_ClearWeakRefs(%struct._object* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %4, i32 0, i32 1
  %5 = load i8*, i8** %rlock_lock, align 8
  %cmp1 = icmp ne i8* %5, null
  br i1 %cmp1, label %if.then.2, label %if.end.8

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %6, i32 0, i32 3
  %7 = load i64, i64* %rlock_count, align 8
  %cmp3 = icmp ugt i64 %7, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock5 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %8, i32 0, i32 1
  %9 = load i8*, i8** %rlock_lock5, align 8
  call void @PyThread_release_lock(i8* %9)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.then.2
  %10 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock7 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %10, i32 0, i32 1
  %11 = load i8*, i8** %rlock_lock7, align 8
  call void @PyThread_free_lock(i8* %11)
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.6, %if.end
  %12 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %13 = bitcast %struct.rlockobject* %12 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %16 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %17 = bitcast %struct.rlockobject* %16 to i8*
  call void %15(i8* %17)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_repr(%struct.rlockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.rlockobject*, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8
  %0 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %1 = bitcast %struct.rlockobject* %0 to %struct._object*
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1
  %3 = load i8*, i8** %tp_name, align 8
  %4 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %4, i32 0, i32 2
  %5 = load i64, i64* %rlock_owner, align 8
  %6 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %6, i32 0, i32 3
  %7 = load i64, i64* %rlock_count, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i8* %3, i64 %5, i64 %7)
  ret %struct._object* %call
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.rlockobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i32 0, i32 36
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* %1(%struct._typeobject* %2, i64 0)
  %3 = bitcast %struct._object* %call to %struct.rlockobject*
  store %struct.rlockobject* %3, %struct.rlockobject** %self, align 8
  %4 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %cmp = icmp ne %struct.rlockobject* %4, null
  br i1 %cmp, label %if.then, label %if.end.8

if.then:                                          ; preds = %entry
  %5 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %in_weakreflist = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %5, i32 0, i32 4
  store %struct._object* null, %struct._object** %in_weakreflist, align 8
  %6 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %6, i32 0, i32 2
  store i64 0, i64* %rlock_owner, align 8
  %7 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %7, i32 0, i32 3
  store i64 0, i64* %rlock_count, align 8
  %call1 = call i8* @PyThread_allocate_lock()
  %8 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %8, i32 0, i32 1
  store i8* %call1, i8** %rlock_lock, align 8
  %9 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %rlock_lock2 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %rlock_lock2, align 8
  %cmp3 = icmp eq i8* %10, null
  br i1 %cmp3, label %if.then.4, label %if.end.7

if.then.4:                                        ; preds = %if.then
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %11 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %12 = bitcast %struct.rlockobject* %11 to %struct._object*
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end
  %19 = load %struct._object*, %struct._object** @ThreadError, align 8
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then
  br label %if.end.8

if.end.8:                                         ; preds = %if.end.7, %entry
  %20 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8
  %21 = bitcast %struct.rlockobject* %20 to %struct._object*
  store %struct._object* %21, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.8, %do.end
  %22 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %22
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_acquire(%struct.rlockobject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %kwlist = alloca [3 x i8*], align 16
  %blocking = alloca i32, align 4
  %timeout = alloca double, align 8
  %microseconds = alloca i64, align 8
  %tid = alloca i64, align 8
  %r = alloca i32, align 4
  %count = alloca i64, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  %0 = bitcast [3 x i8*]* %kwlist to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @rlock_acquire.kwlist to i8*), i64 24, i32 16, i1 false)
  store i32 1, i32* %blocking, align 4
  store double -1.000000e+00, double* %timeout, align 8
  store i32 1, i32* %r, align 4
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8** %arraydecay, i32* %blocking, double* %timeout)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %blocking, align 4
  %tobool1 = icmp ne i32 %3, 0
  br i1 %tobool1, label %if.end.3, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %4 = load double, double* %timeout, align 8
  %cmp = fcmp une double %4, -1.000000e+00
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %6 = load double, double* %timeout, align 8
  %cmp4 = fcmp olt double %6, 0.000000e+00
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.8

land.lhs.true.5:                                  ; preds = %if.end.3
  %7 = load double, double* %timeout, align 8
  %cmp6 = fcmp une double %7, -1.000000e+00
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %land.lhs.true.5
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.5, %if.end.3
  %9 = load i32, i32* %blocking, align 4
  %tobool9 = icmp ne i32 %9, 0
  br i1 %tobool9, label %if.else, label %if.then.10

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %microseconds, align 8
  br label %if.end.18

if.else:                                          ; preds = %if.end.8
  %10 = load double, double* %timeout, align 8
  %cmp11 = fcmp oeq double %10, -1.000000e+00
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %microseconds, align 8
  br label %if.end.17

if.else.13:                                       ; preds = %if.else
  %11 = load double, double* %timeout, align 8
  %mul = fmul double %11, 1.000000e+06
  store double %mul, double* %timeout, align 8
  %12 = load double, double* %timeout, align 8
  %cmp14 = fcmp oge double %12, 0x43E0000000000000
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.13
  %13 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.13
  %14 = load double, double* %timeout, align 8
  %conv = fptosi double %14 to i64
  store i64 %conv, i64* %microseconds, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %call19 = call i64 @PyThread_get_thread_ident()
  store i64 %call19, i64* %tid, align 8
  %15 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %15, i32 0, i32 3
  %16 = load i64, i64* %rlock_count, align 8
  %cmp20 = icmp ugt i64 %16, 0
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.33

land.lhs.true.22:                                 ; preds = %if.end.18
  %17 = load i64, i64* %tid, align 8
  %18 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %18, i32 0, i32 2
  %19 = load i64, i64* %rlock_owner, align 8
  %cmp23 = icmp eq i64 %17, %19
  br i1 %cmp23, label %if.then.25, label %if.end.33

if.then.25:                                       ; preds = %land.lhs.true.22
  %20 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count26 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %20, i32 0, i32 3
  %21 = load i64, i64* %rlock_count26, align 8
  %add = add i64 %21, 1
  store i64 %add, i64* %count, align 8
  %22 = load i64, i64* %count, align 8
  %23 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count27 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %23, i32 0, i32 3
  %24 = load i64, i64* %rlock_count27, align 8
  %cmp28 = icmp ule i64 %22, %24
  br i1 %cmp28, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %if.then.25
  %25 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8
  call void @PyErr_SetString(%struct._object* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %if.then.25
  %26 = load i64, i64* %count, align 8
  %27 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count32 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %27, i32 0, i32 3
  store i64 %26, i64* %rlock_count32, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.33:                                        ; preds = %land.lhs.true.22, %if.end.18
  %29 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %29, i32 0, i32 1
  %30 = load i8*, i8** %rlock_lock, align 8
  %31 = load i64, i64* %microseconds, align 8
  %call34 = call i32 @acquire_timed(i8* %30, i64 %31)
  store i32 %call34, i32* %r, align 4
  %32 = load i32, i32* %r, align 4
  %cmp35 = icmp eq i32 %32, 1
  br i1 %cmp35, label %if.then.37, label %if.else.40

if.then.37:                                       ; preds = %if.end.33
  %33 = load i64, i64* %tid, align 8
  %34 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner38 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %34, i32 0, i32 2
  store i64 %33, i64* %rlock_owner38, align 8
  %35 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count39 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %35, i32 0, i32 3
  store i64 1, i64* %rlock_count39, align 8
  br label %if.end.45

if.else.40:                                       ; preds = %if.end.33
  %36 = load i32, i32* %r, align 4
  %cmp41 = icmp eq i32 %36, 2
  br i1 %cmp41, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.else.40
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.44:                                        ; preds = %if.else.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  %37 = load i32, i32* %r, align 4
  %cmp46 = icmp eq i32 %37, 1
  %conv47 = zext i1 %cmp46 to i32
  %conv48 = sext i32 %conv47 to i64
  %call49 = call %struct._object* @PyBool_FromLong(i64 %conv48)
  store %struct._object* %call49, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.45, %if.then.43, %if.end.31, %if.then.30, %if.then.15, %if.then.7, %if.then.2, %if.then
  %38 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %38
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_release(%struct.rlockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %tid = alloca i64, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8
  %call = call i64 @PyThread_get_thread_ident()
  store i64 %call, i64* %tid, align 8
  %0 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %0, i32 0, i32 3
  %1 = load i64, i64* %rlock_count, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %2, i32 0, i32 2
  %3 = load i64, i64* %rlock_owner, align 8
  %4 = load i64, i64* %tid, align 8
  %cmp1 = icmp ne i64 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count2 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %6, i32 0, i32 3
  %7 = load i64, i64* %rlock_count2, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %rlock_count2, align 8
  %cmp3 = icmp eq i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.end.6

if.then.4:                                        ; preds = %if.end
  %8 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner5 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %8, i32 0, i32 2
  store i64 0, i64* %rlock_owner5, align 8
  %9 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %rlock_lock, align 8
  call void @PyThread_release_lock(i8* %10)
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.4, %if.end
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then
  %12 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %12
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_is_owned(%struct.rlockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %tid = alloca i64, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8
  %call = call i64 @PyThread_get_thread_ident()
  store i64 %call, i64* %tid, align 8
  %0 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %0, i32 0, i32 3
  %1 = load i64, i64* %rlock_count, align 8
  %cmp = icmp ugt i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %2, i32 0, i32 2
  %3 = load i64, i64* %rlock_owner, align 8
  %4 = load i64, i64* %tid, align 8
  %cmp1 = icmp eq i64 %3, %4
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc2 = add i64 %6, 1
  store i64 %inc2, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %7
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_acquire_restore(%struct.rlockobject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %owner = alloca i64, align 8
  %count = alloca i64, align 8
  %r = alloca i32, align 4
  %_save = alloca %struct._ts*, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i32 1, i32* %r, align 4
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64* %count, i64* %owner)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %1, i32 0, i32 1
  %2 = load i8*, i8** %rlock_lock, align 8
  %call1 = call i32 @PyThread_acquire_lock(i8* %2, i32 0)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.7, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call4, %struct._ts** %_save, align 8
  %3 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock5 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %3, i32 0, i32 1
  %4 = load i8*, i8** %rlock_lock5, align 8
  %call6 = call i32 @PyThread_acquire_lock(i8* %4, i32 1)
  store i32 %call6, i32* %r, align 4
  %5 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %5)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.3, %if.end
  %6 = load i32, i32* %r, align 4
  %tobool8 = icmp ne i32 %6, 0
  br i1 %tobool8, label %if.end.10, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %7 = load %struct._object*, %struct._object** @ThreadError, align 8
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.10:                                        ; preds = %if.end.7
  %8 = load i64, i64* %owner, align 8
  %9 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %9, i32 0, i32 2
  store i64 %8, i64* %rlock_owner, align 8
  %10 = load i64, i64* %count, align 8
  %11 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %11, i32 0, i32 3
  store i64 %10, i64* %rlock_count, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.10, %if.then.9, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_release_save(%struct.rlockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %owner = alloca i64, align 8
  %count = alloca i64, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8
  %0 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %0, i32 0, i32 3
  %1 = load i64, i64* %rlock_count, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %3, i32 0, i32 2
  %4 = load i64, i64* %rlock_owner, align 8
  store i64 %4, i64* %owner, align 8
  %5 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count1 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %5, i32 0, i32 3
  %6 = load i64, i64* %rlock_count1, align 8
  store i64 %6, i64* %count, align 8
  %7 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_count2 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %7, i32 0, i32 3
  store i64 0, i64* %rlock_count2, align 8
  %8 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_owner3 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %8, i32 0, i32 2
  store i64 0, i64* %rlock_owner3, align 8
  %9 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %9, i32 0, i32 1
  %10 = load i8*, i8** %rlock_lock, align 8
  call void @PyThread_release_lock(i8* %10)
  %11 = load i64, i64* %count, align 8
  %12 = load i64, i64* %owner, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i64 %11, i64 %12)
  store %struct._object* %call, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %13
}

declare i64 @PyThread_get_thread_ident() #1

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare i32 @PyThread_acquire_lock(i8*, i32) #1

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i8* @PyThread_allocate_lock() #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_start_new_thread(%struct._object* %self, %struct._object* %fargs) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %fargs.addr = alloca %struct._object*, align 8
  %func = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %keyw = alloca %struct._object*, align 8
  %boot = alloca %struct.bootstate*, align 8
  %ident = alloca i64, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp70 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %fargs, %struct._object** %fargs.addr, align 8
  store %struct._object* null, %struct._object** %keyw, align 8
  %0 = load %struct._object*, %struct._object** %fargs.addr, align 8
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 2, i64 3, %struct._object** %func, %struct._object** %args, %struct._object** %keyw)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %func, align 8
  %call1 = call i32 @PyCallable_Check(%struct._object* %1)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.end.4, label %if.then.3

if.then.3:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %args, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 1
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i32 0, i32 19
  %5 = load i64, i64* %tp_flags, align 8
  %and = and i64 %5, 67108864
  %cmp = icmp ne i64 %and, 0
  br i1 %cmp, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.4
  %6 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.6:                                         ; preds = %if.end.4
  %7 = load %struct._object*, %struct._object** %keyw, align 8
  %cmp7 = icmp ne %struct._object* %7, null
  br i1 %cmp7, label %land.lhs.true, label %if.end.13

land.lhs.true:                                    ; preds = %if.end.6
  %8 = load %struct._object*, %struct._object** %keyw, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_flags9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags9, align 8
  %and10 = and i64 %10, 536870912
  %cmp11 = icmp ne i64 %and10, 0
  br i1 %cmp11, label %if.end.13, label %if.then.12

if.then.12:                                       ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %land.lhs.true, %if.end.6
  %call14 = call i8* @PyMem_Malloc(i64 40)
  %12 = bitcast i8* %call14 to %struct.bootstate*
  store %struct.bootstate* %12, %struct.bootstate** %boot, align 8
  %13 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %cmp15 = icmp eq %struct.bootstate* %13, null
  br i1 %cmp15, label %if.then.16, label %if.end.18

if.then.16:                                       ; preds = %if.end.13
  %call17 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call17, %struct._object** %retval
  br label %return

if.end.18:                                        ; preds = %if.end.13
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %14 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %14, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %15 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %16 = bitcast %struct._Py_atomic_address* %15 to i8*
  %17 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %16, i32 %17)
  %18 = load i32, i32* %order, align 4
  switch i32 %18, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %if.end.18, %if.end.18, %if.end.18
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end.18
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %19 = load i8**, i8*** %volatile_data, align 8
  %20 = load volatile i8*, i8** %19, align 8
  store i8* %20, i8** %result, align 8
  %21 = load i32, i32* %order, align 4
  switch i32 %21, label %sw.default.20 [
    i32 1, label %sw.bb.19
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.19
  ]

sw.bb.19:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.21

sw.default.20:                                    ; preds = %sw.epilog
  br label %sw.epilog.21

sw.epilog.21:                                     ; preds = %sw.default.20, %sw.bb.19
  %22 = load i8*, i8** %result, align 8
  store i8* %22, i8** %tmp
  %23 = load i8*, i8** %tmp
  %24 = bitcast i8* %23 to %struct._ts*
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %24, i32 0, i32 2
  %25 = load %struct._is*, %struct._is** %interp, align 8
  %26 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %interp22 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %26, i32 0, i32 0
  store %struct._is* %25, %struct._is** %interp22, align 8
  %27 = load %struct._object*, %struct._object** %func, align 8
  %28 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %func23 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %28, i32 0, i32 1
  store %struct._object* %27, %struct._object** %func23, align 8
  %29 = load %struct._object*, %struct._object** %args, align 8
  %30 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %args24 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %30, i32 0, i32 2
  store %struct._object* %29, %struct._object** %args24, align 8
  %31 = load %struct._object*, %struct._object** %keyw, align 8
  %32 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %keyw25 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %32, i32 0, i32 3
  store %struct._object* %31, %struct._object** %keyw25, align 8
  %33 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %interp26 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %33, i32 0, i32 0
  %34 = load %struct._is*, %struct._is** %interp26, align 8
  %call27 = call %struct._ts* @_PyThreadState_Prealloc(%struct._is* %34)
  %35 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %tstate = getelementptr inbounds %struct.bootstate, %struct.bootstate* %35, i32 0, i32 4
  store %struct._ts* %call27, %struct._ts** %tstate, align 8
  %36 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %tstate28 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %36, i32 0, i32 4
  %37 = load %struct._ts*, %struct._ts** %tstate28, align 8
  %cmp29 = icmp eq %struct._ts* %37, null
  br i1 %cmp29, label %if.then.30, label %if.end.32

if.then.30:                                       ; preds = %sw.epilog.21
  %38 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %39 = bitcast %struct.bootstate* %38 to i8*
  call void @PyMem_Free(i8* %39)
  %call31 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call31, %struct._object** %retval
  br label %return

if.end.32:                                        ; preds = %sw.epilog.21
  %40 = load %struct._object*, %struct._object** %func, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0
  %41 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %41, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %42 = load %struct._object*, %struct._object** %args, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt33, align 8
  %inc34 = add i64 %43, 1
  store i64 %inc34, i64* %ob_refcnt33, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.32
  %44 = load %struct._object*, %struct._object** %keyw, align 8
  store %struct._object* %44, %struct._object** %_py_xincref_tmp, align 8
  %45 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp36 = icmp ne %struct._object* %45, null
  br i1 %cmp36, label %if.then.37, label %if.end.40

if.then.37:                                       ; preds = %do.body
  %46 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt38, align 8
  %inc39 = add i64 %47, 1
  store i64 %inc39, i64* %ob_refcnt38, align 8
  br label %if.end.40

if.end.40:                                        ; preds = %if.then.37, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.40
  call void @PyEval_InitThreads()
  %48 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %49 = bitcast %struct.bootstate* %48 to i8*
  %call41 = call i64 @PyThread_start_new_thread(void (i8*)* @t_bootstrap, i8* %49)
  store i64 %call41, i64* %ident, align 8
  %50 = load i64, i64* %ident, align 8
  %cmp42 = icmp eq i64 %50, -1
  br i1 %cmp42, label %if.then.43, label %if.end.83

if.then.43:                                       ; preds = %do.end
  %51 = load %struct._object*, %struct._object** @ThreadError, align 8
  call void @PyErr_SetString(%struct._object* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0))
  br label %do.body.44

do.body.44:                                       ; preds = %if.then.43
  %52 = load %struct._object*, %struct._object** %func, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt46, align 8
  %dec = add i64 %54, -1
  store i64 %dec, i64* %ob_refcnt46, align 8
  %cmp47 = icmp ne i64 %dec, 0
  br i1 %cmp47, label %if.then.48, label %if.else

if.then.48:                                       ; preds = %do.body.44
  br label %if.end.50

if.else:                                          ; preds = %do.body.44
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %57(%struct._object* %58)
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.48
  br label %do.end.51

do.end.51:                                        ; preds = %if.end.50
  br label %do.body.52

do.body.52:                                       ; preds = %do.end.51
  %59 = load %struct._object*, %struct._object** %args, align 8
  store %struct._object* %59, %struct._object** %_py_decref_tmp54, align 8
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0
  %61 = load i64, i64* %ob_refcnt55, align 8
  %dec56 = add i64 %61, -1
  store i64 %dec56, i64* %ob_refcnt55, align 8
  %cmp57 = icmp ne i64 %dec56, 0
  br i1 %cmp57, label %if.then.58, label %if.else.59

if.then.58:                                       ; preds = %do.body.52
  br label %if.end.62

if.else.59:                                       ; preds = %do.body.52
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8
  call void %64(%struct._object* %65)
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  br label %do.end.63

do.end.63:                                        ; preds = %if.end.62
  br label %do.body.64

do.body.64:                                       ; preds = %do.end.63
  %66 = load %struct._object*, %struct._object** %keyw, align 8
  store %struct._object* %66, %struct._object** %_py_xdecref_tmp, align 8
  %67 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp66 = icmp ne %struct._object* %67, null
  br i1 %cmp66, label %if.then.67, label %if.end.80

if.then.67:                                       ; preds = %do.body.64
  br label %do.body.68

do.body.68:                                       ; preds = %if.then.67
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp70, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_refcnt71 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt71, align 8
  %dec72 = add i64 %70, -1
  store i64 %dec72, i64* %ob_refcnt71, align 8
  %cmp73 = icmp ne i64 %dec72, 0
  br i1 %cmp73, label %if.then.74, label %if.else.75

if.then.74:                                       ; preds = %do.body.68
  br label %if.end.78

if.else.75:                                       ; preds = %do.body.68
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  %ob_type76 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type76, align 8
  %tp_dealloc77 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc77, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp70, align 8
  call void %73(%struct._object* %74)
  br label %if.end.78

if.end.78:                                        ; preds = %if.else.75, %if.then.74
  br label %do.end.79

do.end.79:                                        ; preds = %if.end.78
  br label %if.end.80

if.end.80:                                        ; preds = %do.end.79, %do.body.64
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  %75 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %tstate82 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %75, i32 0, i32 4
  %76 = load %struct._ts*, %struct._ts** %tstate82, align 8
  call void @PyThreadState_Clear(%struct._ts* %76)
  %77 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %78 = bitcast %struct.bootstate* %77 to i8*
  call void @PyMem_Free(i8* %78)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %do.end
  %79 = load i64, i64* %ident, align 8
  %call84 = call %struct._object* @PyLong_FromLong(i64 %79)
  store %struct._object* %call84, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.83, %do.end.81, %if.then.30, %if.then.16, %if.then.12, %if.then.5, %if.then.3, %if.then
  %80 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %80
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_allocate_lock(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct.lockobject* @newlockobject()
  %0 = bitcast %struct.lockobject* %call to %struct._object*
  ret %struct._object* %0
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_exit_thread(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  call void @PyErr_SetNone(%struct._object* %0)
  ret %struct._object* null
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_interrupt_main(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  call void @PyErr_SetInterrupt()
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %0, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_get_ident(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %ident = alloca i64, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call i64 @PyThread_get_thread_ident()
  store i64 %call, i64* %ident, align 8
  %0 = load i64, i64* %ident, align 8
  %cmp = icmp eq i64 %0, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @ThreadError, align 8
  call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i64, i64* %ident, align 8
  %call1 = call %struct._object* @PyLong_FromLong(i64 %2)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread__count(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load i64, i64* @nb_threads, align 8
  %call = call %struct._object* @PyLong_FromLong(i64 %0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_stack_size(%struct._object* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %old_size = alloca i64, align 8
  %new_size = alloca i64, align 8
  %rc = alloca i32, align 4
  store %struct._object* %self, %struct._object** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i64 0, i64* %new_size, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i64* %new_size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i64, i64* %new_size, align 8
  %cmp = icmp slt i64 %1, 0
  br i1 %cmp, label %if.then.1, label %if.end.2

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %call3 = call i64 @PyThread_get_stacksize()
  store i64 %call3, i64* %old_size, align 8
  %3 = load i64, i64* %new_size, align 8
  %call4 = call i32 @PyThread_set_stacksize(i64 %3)
  store i32 %call4, i32* %rc, align 4
  %4 = load i32, i32* %rc, align 4
  %cmp5 = icmp eq i32 %4, -1
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.2
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %6 = load i64, i64* %new_size, align 8
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), i64 %6)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end.2
  %7 = load i32, i32* %rc, align 4
  %cmp9 = icmp eq i32 %7, -2
  br i1 %cmp9, label %if.then.10, label %if.end.11

if.then.10:                                       ; preds = %if.end.8
  %8 = load %struct._object*, %struct._object** @ThreadError, align 8
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.11:                                        ; preds = %if.end.8
  %9 = load i64, i64* %old_size, align 8
  %call12 = call %struct._object* @PyLong_FromSsize_t(i64 %9)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.1, %if.then
  %10 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %10
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread__set_sentinel(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %wr = alloca %struct._object*, align 8
  %tstate = alloca %struct._ts*, align 8
  %lock = alloca %struct.lockobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %call = call %struct._ts* @PyThreadState_Get()
  store %struct._ts* %call, %struct._ts** %tstate, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete_data = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 26
  %1 = load i8*, i8** %on_delete_data, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then, label %if.end.5

if.then:                                          ; preds = %entry
  %2 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete_data1 = getelementptr inbounds %struct._ts, %struct._ts* %2, i32 0, i32 26
  %3 = load i8*, i8** %on_delete_data1, align 8
  %4 = bitcast i8* %3 to %struct._object*
  store %struct._object* %4, %struct._object** %wr, align 8
  %5 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete = getelementptr inbounds %struct._ts, %struct._ts* %5, i32 0, i32 25
  store void (i8*)* null, void (i8*)** %on_delete, align 8
  %6 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete_data2 = getelementptr inbounds %struct._ts, %struct._ts* %6, i32 0, i32 26
  store i8* null, i8** %on_delete_data2, align 8
  br label %do.body

do.body:                                          ; preds = %if.then
  %7 = load %struct._object*, %struct._object** %wr, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %entry
  %call6 = call %struct.lockobject* @newlockobject()
  store %struct.lockobject* %call6, %struct.lockobject** %lock, align 8
  %14 = load %struct.lockobject*, %struct.lockobject** %lock, align 8
  %cmp7 = icmp eq %struct.lockobject* %14, null
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.9:                                         ; preds = %if.end.5
  %15 = load %struct.lockobject*, %struct.lockobject** %lock, align 8
  %16 = bitcast %struct.lockobject* %15 to %struct._object*
  %call10 = call %struct._object* @PyWeakref_NewRef(%struct._object* %16, %struct._object* null)
  store %struct._object* %call10, %struct._object** %wr, align 8
  %17 = load %struct._object*, %struct._object** %wr, align 8
  %cmp11 = icmp eq %struct._object* %17, null
  br i1 %cmp11, label %if.then.12, label %if.end.24

if.then.12:                                       ; preds = %if.end.9
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %18 = load %struct.lockobject*, %struct.lockobject** %lock, align 8
  %19 = bitcast %struct.lockobject* %18 to %struct._object*
  store %struct._object* %19, %struct._object** %_py_decref_tmp14, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %21, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22

if.else.19:                                       ; preds = %do.body.13
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %24(%struct._object* %25)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.9
  %26 = load %struct._object*, %struct._object** %wr, align 8
  %27 = bitcast %struct._object* %26 to i8*
  %28 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete_data25 = getelementptr inbounds %struct._ts, %struct._ts* %28, i32 0, i32 26
  store i8* %27, i8** %on_delete_data25, align 8
  %29 = load %struct._ts*, %struct._ts** %tstate, align 8
  %on_delete26 = getelementptr inbounds %struct._ts, %struct._ts* %29, i32 0, i32 25
  store void (i8*)* @release_sentinel, void (i8*)** %on_delete26, align 8
  %30 = load %struct.lockobject*, %struct.lockobject** %lock, align 8
  %31 = bitcast %struct.lockobject* %30 to %struct._object*
  store %struct._object* %31, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %do.end.23, %if.then.8
  %32 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %32
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i32 @PyCallable_Check(%struct._object*) #1

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #3 {
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
define internal void @_Py_atomic_thread_fence(i32 %order) #3 {
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
define internal void @_Py_atomic_signal_fence(i32 %order) #3 {
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

declare %struct._ts* @_PyThreadState_Prealloc(%struct._is*) #1

declare void @PyMem_Free(i8*) #1

declare void @PyEval_InitThreads() #1

declare i64 @PyThread_start_new_thread(void (i8*)*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @t_bootstrap(i8* %boot_raw) #0 {
entry:
  %boot_raw.addr = alloca i8*, align 8
  %boot = alloca %struct.bootstate*, align 8
  %tstate = alloca %struct._ts*, align 8
  %res = alloca %struct._object*, align 8
  %file = alloca %struct._object*, align 8
  %exc = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp22 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store i8* %boot_raw, i8** %boot_raw.addr, align 8
  %0 = load i8*, i8** %boot_raw.addr, align 8
  %1 = bitcast i8* %0 to %struct.bootstate*
  store %struct.bootstate* %1, %struct.bootstate** %boot, align 8
  %2 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %tstate1 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %2, i32 0, i32 4
  %3 = load %struct._ts*, %struct._ts** %tstate1, align 8
  store %struct._ts* %3, %struct._ts** %tstate, align 8
  %call = call i64 @PyThread_get_thread_ident()
  %4 = load %struct._ts*, %struct._ts** %tstate, align 8
  %thread_id = getelementptr inbounds %struct._ts, %struct._ts* %4, i32 0, i32 22
  store i64 %call, i64* %thread_id, align 8
  %5 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @_PyThreadState_Init(%struct._ts* %5)
  %6 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @PyEval_AcquireThread(%struct._ts* %6)
  %7 = load i64, i64* @nb_threads, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* @nb_threads, align 8
  %8 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %func = getelementptr inbounds %struct.bootstate, %struct.bootstate* %8, i32 0, i32 1
  %9 = load %struct._object*, %struct._object** %func, align 8
  %10 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %args = getelementptr inbounds %struct.bootstate, %struct.bootstate* %10, i32 0, i32 2
  %11 = load %struct._object*, %struct._object** %args, align 8
  %12 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %keyw = getelementptr inbounds %struct.bootstate, %struct.bootstate* %12, i32 0, i32 3
  %13 = load %struct._object*, %struct._object** %keyw, align 8
  %call2 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %9, %struct._object* %11, %struct._object* %13)
  store %struct._object* %call2, %struct._object** %res, align 8
  %14 = load %struct._object*, %struct._object** %res, align 8
  %cmp = icmp eq %struct._object* %14, null
  br i1 %cmp, label %if.then, label %if.else.15

if.then:                                          ; preds = %entry
  %15 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %15)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.then
  call void @PyErr_Clear()
  br label %if.end.14

if.else:                                          ; preds = %if.then
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i32 0, i32 0))
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %value, %struct._object** %tb)
  %call5 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr)
  store %struct._object* %call5, %struct._object** %file, align 8
  %16 = load %struct._object*, %struct._object** %file, align 8
  %cmp6 = icmp ne %struct._object* %16, null
  br i1 %cmp6, label %land.lhs.true, label %if.else.11

land.lhs.true:                                    ; preds = %if.else
  %17 = load %struct._object*, %struct._object** %file, align 8
  %cmp7 = icmp ne %struct._object* %17, @_Py_NoneStruct
  br i1 %cmp7, label %if.then.8, label %if.else.11

if.then.8:                                        ; preds = %land.lhs.true
  %18 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %func9 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %18, i32 0, i32 1
  %19 = load %struct._object*, %struct._object** %func9, align 8
  %20 = load %struct._object*, %struct._object** %file, align 8
  %call10 = call i32 @PyFile_WriteObject(%struct._object* %19, %struct._object* %20, i32 0)
  br label %if.end

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %21 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %func12 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %21, i32 0, i32 1
  %22 = load %struct._object*, %struct._object** %func12, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 @PyObject_Print(%struct._object* %22, %struct._IO_FILE* %23, i32 0)
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0))
  %24 = load %struct._object*, %struct._object** %exc, align 8
  %25 = load %struct._object*, %struct._object** %value, align 8
  %26 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %24, %struct._object* %25, %struct._object* %26)
  call void @PyErr_PrintEx(i32 0)
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.4
  br label %if.end.20

if.else.15:                                       ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.else.15
  %27 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %29, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp16 = icmp ne i64 %dec, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body
  br label %if.end.19

if.else.18:                                       ; preds = %do.body
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %32(%struct._object* %33)
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end

do.end:                                           ; preds = %if.end.19
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.end.14
  br label %do.body.21

do.body.21:                                       ; preds = %if.end.20
  %34 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %func23 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %34, i32 0, i32 1
  %35 = load %struct._object*, %struct._object** %func23, align 8
  store %struct._object* %35, %struct._object** %_py_decref_tmp22, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 0
  %37 = load i64, i64* %ob_refcnt24, align 8
  %dec25 = add i64 %37, -1
  store i64 %dec25, i64* %ob_refcnt24, align 8
  %cmp26 = icmp ne i64 %dec25, 0
  br i1 %cmp26, label %if.then.27, label %if.else.28

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31

if.else.28:                                       ; preds = %do.body.21
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 1
  %39 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %39, i32 0, i32 4
  %40 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8
  call void %40(%struct._object* %41)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %do.body.33

do.body.33:                                       ; preds = %do.end.32
  %42 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %args35 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %42, i32 0, i32 2
  %43 = load %struct._object*, %struct._object** %args35, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp34, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt36, align 8
  %dec37 = add i64 %45, -1
  store i64 %dec37, i64* %ob_refcnt36, align 8
  %cmp38 = icmp ne i64 %dec37, 0
  br i1 %cmp38, label %if.then.39, label %if.else.40

if.then.39:                                       ; preds = %do.body.33
  br label %if.end.43

if.else.40:                                       ; preds = %do.body.33
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8
  call void %48(%struct._object* %49)
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  br label %do.end.44

do.end.44:                                        ; preds = %if.end.43
  br label %do.body.45

do.body.45:                                       ; preds = %do.end.44
  %50 = load %struct.bootstate*, %struct.bootstate** %boot, align 8
  %keyw46 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %50, i32 0, i32 3
  %51 = load %struct._object*, %struct._object** %keyw46, align 8
  store %struct._object* %51, %struct._object** %_py_xdecref_tmp, align 8
  %52 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp47 = icmp ne %struct._object* %52, null
  br i1 %cmp47, label %if.then.48, label %if.end.60

if.then.48:                                       ; preds = %do.body.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %53 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %53, %struct._object** %_py_decref_tmp50, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %54, i32 0, i32 0
  %55 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %55, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 1
  %57 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %57, i32 0, i32 4
  %58 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %58(%struct._object* %59)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.45
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  %60 = load i8*, i8** %boot_raw.addr, align 8
  call void @PyMem_Free(i8* %60)
  %61 = load i64, i64* @nb_threads, align 8
  %dec62 = add i64 %61, -1
  store i64 %dec62, i64* @nb_threads, align 8
  %62 = load %struct._ts*, %struct._ts** %tstate, align 8
  call void @PyThreadState_Clear(%struct._ts* %62)
  call void @PyThreadState_DeleteCurrent()
  call void @PyThread_exit_thread()
  ret void
}

declare void @PyThreadState_Clear(%struct._ts*) #1

declare %struct._object* @PyLong_FromLong(i64) #1

declare void @_PyThreadState_Init(%struct._ts*) #1

declare void @PyEval_AcquireThread(%struct._ts*) #1

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_Clear() #1

declare void @PySys_WriteStderr(i8*, ...) #1

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #1

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #1

declare i32 @PyObject_Print(%struct._object*, %struct._IO_FILE*, i32) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

declare void @PyErr_PrintEx(i32) #1

declare void @PyThreadState_DeleteCurrent() #1

declare void @PyThread_exit_thread() #1

; Function Attrs: nounwind uwtable
define internal %struct.lockobject* @newlockobject() #0 {
entry:
  %retval = alloca %struct.lockobject*, align 8
  %self = alloca %struct.lockobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @Locktype)
  %0 = bitcast %struct._object* %call to %struct.lockobject*
  store %struct.lockobject* %0, %struct.lockobject** %self, align 8
  %1 = load %struct.lockobject*, %struct.lockobject** %self, align 8
  %cmp = icmp eq %struct.lockobject* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct.lockobject* null, %struct.lockobject** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyThread_allocate_lock()
  %2 = load %struct.lockobject*, %struct.lockobject** %self, align 8
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %2, i32 0, i32 1
  store i8* %call1, i8** %lock_lock, align 8
  %3 = load %struct.lockobject*, %struct.lockobject** %self, align 8
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %3, i32 0, i32 3
  store i8 0, i8* %locked, align 1
  %4 = load %struct.lockobject*, %struct.lockobject** %self, align 8
  %in_weakreflist = getelementptr inbounds %struct.lockobject, %struct.lockobject* %4, i32 0, i32 2
  store %struct._object* null, %struct._object** %in_weakreflist, align 8
  %5 = load %struct.lockobject*, %struct.lockobject** %self, align 8
  %lock_lock2 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %5, i32 0, i32 1
  %6 = load i8*, i8** %lock_lock2, align 8
  %cmp3 = icmp eq i8* %6, null
  br i1 %cmp3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.then.4
  %7 = load %struct.lockobject*, %struct.lockobject** %self, align 8
  %8 = bitcast %struct.lockobject* %7 to %struct._object*
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %do.body
  br label %if.end.7

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.7
  %15 = load %struct._object*, %struct._object** @ThreadError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0))
  store %struct.lockobject* null, %struct.lockobject** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %16 = load %struct.lockobject*, %struct.lockobject** %self, align 8
  store %struct.lockobject* %16, %struct.lockobject** %retval
  br label %return

return:                                           ; preds = %if.end.8, %do.end, %if.then
  %17 = load %struct.lockobject*, %struct.lockobject** %retval
  ret %struct.lockobject* %17
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

declare void @PyErr_SetNone(%struct._object*) #1

declare void @PyErr_SetInterrupt() #1

declare i64 @PyThread_get_stacksize() #1

declare i32 @PyThread_set_stacksize(i64) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal void @release_sentinel(i8* %wr) #0 {
entry:
  %wr.addr = alloca i8*, align 8
  %obj = alloca %struct._object*, align 8
  %lock = alloca %struct.lockobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %wr, i8** %wr.addr, align 8
  %0 = load i8*, i8** %wr.addr, align 8
  %1 = bitcast i8* %0 to %struct._PyWeakReference*
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %1, i32 0, i32 1
  %2 = load %struct._object*, %struct._object** %wr_object, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %cmp = icmp sgt i64 %3, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %4 = load i8*, i8** %wr.addr, align 8
  %5 = bitcast i8* %4 to %struct._PyWeakReference*
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %5, i32 0, i32 1
  %6 = load %struct._object*, %struct._object** %wr_object1, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %6, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %obj, align 8
  %7 = load %struct._object*, %struct._object** %obj, align 8
  %cmp2 = icmp ne %struct._object* %7, @_Py_NoneStruct
  br i1 %cmp2, label %if.then, label %if.end.5

if.then:                                          ; preds = %cond.end
  %8 = load %struct._object*, %struct._object** %obj, align 8
  %9 = bitcast %struct._object* %8 to %struct.lockobject*
  store %struct.lockobject* %9, %struct.lockobject** %lock, align 8
  %10 = load %struct.lockobject*, %struct.lockobject** %lock, align 8
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %10, i32 0, i32 3
  %11 = load i8, i8* %locked, align 1
  %tobool = icmp ne i8 %11, 0
  br i1 %tobool, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %12 = load %struct.lockobject*, %struct.lockobject** %lock, align 8
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %12, i32 0, i32 1
  %13 = load i8*, i8** %lock_lock, align 8
  call void @PyThread_release_lock(i8* %13)
  %14 = load %struct.lockobject*, %struct.lockobject** %lock, align 8
  %locked4 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %14, i32 0, i32 3
  store i8 0, i8* %locked4, align 1
  br label %if.end

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5

if.end.5:                                         ; preds = %if.end, %cond.end
  br label %do.body

do.body:                                          ; preds = %if.end.5
  %15 = load i8*, i8** %wr.addr, align 8
  %16 = bitcast i8* %15 to %struct._object*
  store %struct._object* %16, %struct._object** %_py_decref_tmp, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt6, align 8
  %dec = add i64 %18, -1
  store i64 %dec, i64* %ob_refcnt6, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body
  br label %if.end.9

if.else:                                          ; preds = %do.body
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %21(%struct._object* %22)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end

do.end:                                           ; preds = %if.end.9
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139712}
!2 = !{i32 139552}
