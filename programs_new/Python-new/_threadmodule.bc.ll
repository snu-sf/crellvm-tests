; ModuleID = 'irs-onlybc/_threadmodule.bc'
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
  %cleanup.dest.slot = alloca i32
  %0 = bitcast %struct._object** %m to i8*, !dbg !1018
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1018
  call void @llvm.dbg.declare(metadata %struct._object** %m, metadata !485, metadata !1019), !dbg !1020
  %1 = bitcast %struct._object** %d to i8*, !dbg !1018
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1018
  call void @llvm.dbg.declare(metadata %struct._object** %d, metadata !486, metadata !1019), !dbg !1021
  %2 = bitcast %struct._object** %timeout_max to i8*, !dbg !1018
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1018
  call void @llvm.dbg.declare(metadata %struct._object** %timeout_max, metadata !487, metadata !1019), !dbg !1022
  %call = call i32 @PyType_Ready(%struct._typeobject* @localdummytype), !dbg !1023
  %cmp = icmp slt i32 %call, 0, !dbg !1025
  br i1 %cmp, label %if.then, label %if.end, !dbg !1026

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1027
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1027

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @localtype), !dbg !1028
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1030
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1031

if.then.3:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1032
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1032

if.end.4:                                         ; preds = %if.end
  %call5 = call i32 @PyType_Ready(%struct._typeobject* @Locktype), !dbg !1033
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1035
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1036

if.then.7:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1037
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1037

if.end.8:                                         ; preds = %if.end.4
  %call9 = call i32 @PyType_Ready(%struct._typeobject* @RLocktype), !dbg !1038
  %cmp10 = icmp slt i32 %call9, 0, !dbg !1040
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1041

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval, !dbg !1042
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1042

if.end.12:                                        ; preds = %if.end.8
  %call13 = call %struct._object* @PyModule_Create2(%struct.PyModuleDef* @threadmodule, i32 1013), !dbg !1043
  store %struct._object* %call13, %struct._object** %m, align 8, !dbg !1044, !tbaa !1045
  %3 = load %struct._object*, %struct._object** %m, align 8, !dbg !1049, !tbaa !1045
  %cmp14 = icmp eq %struct._object* %3, null, !dbg !1051
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1052

if.then.15:                                       ; preds = %if.end.12
  store %struct._object* null, %struct._object** %retval, !dbg !1053
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1053

if.end.16:                                        ; preds = %if.end.12
  %call17 = call %struct._object* @PyFloat_FromDouble(double 0x42A0C6F7A0B5EC00), !dbg !1054
  store %struct._object* %call17, %struct._object** %timeout_max, align 8, !dbg !1055, !tbaa !1045
  %4 = load %struct._object*, %struct._object** %timeout_max, align 8, !dbg !1056, !tbaa !1045
  %tobool = icmp ne %struct._object* %4, null, !dbg !1056
  br i1 %tobool, label %if.end.19, label %if.then.18, !dbg !1058

if.then.18:                                       ; preds = %if.end.16
  store %struct._object* null, %struct._object** %retval, !dbg !1059
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1059

if.end.19:                                        ; preds = %if.end.16
  %5 = load %struct._object*, %struct._object** %m, align 8, !dbg !1060, !tbaa !1045
  %6 = load %struct._object*, %struct._object** %timeout_max, align 8, !dbg !1062, !tbaa !1045
  %call20 = call i32 @PyModule_AddObject(%struct._object* %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct._object* %6), !dbg !1063
  %cmp21 = icmp slt i32 %call20, 0, !dbg !1064
  br i1 %cmp21, label %if.then.22, label %if.end.23, !dbg !1065

if.then.22:                                       ; preds = %if.end.19
  store %struct._object* null, %struct._object** %retval, !dbg !1066
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1066

if.end.23:                                        ; preds = %if.end.19
  %7 = load %struct._object*, %struct._object** %m, align 8, !dbg !1067, !tbaa !1045
  %call24 = call %struct._object* @PyModule_GetDict(%struct._object* %7), !dbg !1068
  store %struct._object* %call24, %struct._object** %d, align 8, !dbg !1069, !tbaa !1045
  %8 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1070, !tbaa !1045
  store %struct._object* %8, %struct._object** @ThreadError, align 8, !dbg !1071, !tbaa !1045
  %9 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !1072, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0, !dbg !1073
  %10 = load i64, i64* %ob_refcnt, align 8, !dbg !1074, !tbaa !1075
  %inc = add i64 %10, 1, !dbg !1074
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1074, !tbaa !1075
  %11 = load %struct._object*, %struct._object** %d, align 8, !dbg !1078, !tbaa !1045
  %12 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !1079, !tbaa !1045
  %call25 = call i32 @PyDict_SetItemString(%struct._object* %11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct._object* %12), !dbg !1080
  store i8* getelementptr inbounds ([491 x i8], [491 x i8]* @lock_doc, i32 0, i32 0), i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 20), align 8, !dbg !1081, !tbaa !1082
  %13 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1086, !tbaa !1075
  %inc26 = add i64 %13, 1, !dbg !1086
  store i64 %inc26, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1086, !tbaa !1075
  %14 = load %struct._object*, %struct._object** %d, align 8, !dbg !1087, !tbaa !1045
  %call27 = call i32 @PyDict_SetItemString(%struct._object* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i32 0, i32 0, i32 0)), !dbg !1088
  %15 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1089, !tbaa !1075
  %inc28 = add i64 %15, 1, !dbg !1089
  store i64 %inc28, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1089, !tbaa !1075
  %16 = load %struct._object*, %struct._object** %m, align 8, !dbg !1090, !tbaa !1045
  %call29 = call i32 @PyModule_AddObject(%struct._object* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i32 0, i32 0, i32 0)), !dbg !1092
  %cmp30 = icmp slt i32 %call29, 0, !dbg !1093
  br i1 %cmp30, label %if.then.31, label %if.end.32, !dbg !1094

if.then.31:                                       ; preds = %if.end.23
  store %struct._object* null, %struct._object** %retval, !dbg !1095
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1095

if.end.32:                                        ; preds = %if.end.23
  %17 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1096, !tbaa !1075
  %inc33 = add i64 %17, 1, !dbg !1096
  store i64 %inc33, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !1096, !tbaa !1075
  %18 = load %struct._object*, %struct._object** %m, align 8, !dbg !1097, !tbaa !1045
  %call34 = call i32 @PyModule_AddObject(%struct._object* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i32 0, i32 0, i32 0)), !dbg !1099
  %cmp35 = icmp slt i32 %call34, 0, !dbg !1100
  br i1 %cmp35, label %if.then.36, label %if.end.37, !dbg !1101

if.then.36:                                       ; preds = %if.end.32
  store %struct._object* null, %struct._object** %retval, !dbg !1102
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1102

if.end.37:                                        ; preds = %if.end.32
  store i64 0, i64* @nb_threads, align 8, !dbg !1103, !tbaa !1104
  %call38 = call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0)), !dbg !1105
  store %struct._object* %call38, %struct._object** @str_dict, align 8, !dbg !1106, !tbaa !1045
  %19 = load %struct._object*, %struct._object** @str_dict, align 8, !dbg !1107, !tbaa !1045
  %cmp39 = icmp eq %struct._object* %19, null, !dbg !1109
  br i1 %cmp39, label %if.then.40, label %if.end.41, !dbg !1110

if.then.40:                                       ; preds = %if.end.37
  store %struct._object* null, %struct._object** %retval, !dbg !1111
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1111

if.end.41:                                        ; preds = %if.end.37
  call void @PyThread_init_thread(), !dbg !1112
  %20 = load %struct._object*, %struct._object** %m, align 8, !dbg !1113, !tbaa !1045
  store %struct._object* %20, %struct._object** %retval, !dbg !1114
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1114

cleanup:                                          ; preds = %if.end.41, %if.then.40, %if.then.36, %if.then.31, %if.then.22, %if.then.18, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  %21 = bitcast %struct._object** %timeout_max to i8*, !dbg !1115
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !1115
  %22 = bitcast %struct._object** %d to i8*, !dbg !1115
  call void @llvm.lifetime.end(i64 8, i8* %22) #1, !dbg !1115
  %23 = bitcast %struct._object** %m to i8*, !dbg !1115
  call void @llvm.lifetime.end(i64 8, i8* %23) #1, !dbg !1115
  %24 = load %struct._object*, %struct._object** %retval, !dbg !1115
  ret %struct._object* %24, !dbg !1115
}

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #1

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @PyType_Ready(%struct._typeobject*) #3

declare %struct._object* @PyModule_Create2(%struct.PyModuleDef*, i32) #3

declare %struct._object* @PyFloat_FromDouble(double) #3

declare i32 @PyModule_AddObject(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyModule_GetDict(%struct._object*) #3

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #3

declare %struct._object* @PyUnicode_InternFromString(i8*) #3

declare void @PyThread_init_thread() #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define internal void @localdummy_dealloc(%struct.localdummyobject* %self) #0 {
entry:
  %self.addr = alloca %struct.localdummyobject*, align 8
  store %struct.localdummyobject* %self, %struct.localdummyobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localdummyobject** %self.addr, metadata !492, metadata !1019), !dbg !1116
  %0 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8, !dbg !1117, !tbaa !1045
  %weakreflist = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %0, i32 0, i32 2, !dbg !1119
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1119, !tbaa !1120
  %cmp = icmp ne %struct._object* %1, null, !dbg !1122
  br i1 %cmp, label %if.then, label %if.end, !dbg !1123

if.then:                                          ; preds = %entry
  %2 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8, !dbg !1124, !tbaa !1045
  %3 = bitcast %struct.localdummyobject* %2 to %struct._object*, !dbg !1125
  call void @PyObject_ClearWeakRefs(%struct._object* %3), !dbg !1126
  br label %if.end, !dbg !1126

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8, !dbg !1127, !tbaa !1045
  %5 = bitcast %struct.localdummyobject* %4 to %struct._object*, !dbg !1128
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 1, !dbg !1129
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1129, !tbaa !1130
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i32 0, i32 38, !dbg !1131
  %7 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1131, !tbaa !1132
  %8 = load %struct.localdummyobject*, %struct.localdummyobject** %self.addr, align 8, !dbg !1133, !tbaa !1045
  %9 = bitcast %struct.localdummyobject* %8 to %struct._object*, !dbg !1134
  %10 = bitcast %struct._object* %9 to i8*, !dbg !1134
  call void %7(i8* %10), !dbg !1135
  ret void, !dbg !1136
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @local_dealloc(%struct.localobject* %self) #0 {
entry:
  %self.addr = alloca %struct.localobject*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localobject** %self.addr, metadata !497, metadata !1019), !dbg !1137
  %0 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1138, !tbaa !1045
  %weakreflist = getelementptr inbounds %struct.localobject, %struct.localobject* %0, i32 0, i32 4, !dbg !1140
  %1 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1140, !tbaa !1141
  %cmp = icmp ne %struct._object* %1, null, !dbg !1143
  br i1 %cmp, label %if.then, label %if.end, !dbg !1144

if.then:                                          ; preds = %entry
  %2 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1145, !tbaa !1045
  %3 = bitcast %struct.localobject* %2 to %struct._object*, !dbg !1146
  call void @PyObject_ClearWeakRefs(%struct._object* %3), !dbg !1147
  br label %if.end, !dbg !1147

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1148, !tbaa !1045
  %5 = bitcast %struct.localobject* %4 to i8*, !dbg !1148
  call void @PyObject_GC_UnTrack(i8* %5), !dbg !1149
  %6 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1150, !tbaa !1045
  %call = call i32 @local_clear(%struct.localobject* %6), !dbg !1151
  br label %do.body, !dbg !1152

do.body:                                          ; preds = %if.end
  %7 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1153
  call void @llvm.lifetime.start(i64 8, i8* %7) #1, !dbg !1153
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !498, metadata !1019), !dbg !1155
  %8 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1156, !tbaa !1045
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %8, i32 0, i32 1, !dbg !1157
  %9 = load %struct._object*, %struct._object** %key, align 8, !dbg !1157, !tbaa !1158
  store %struct._object* %9, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1155, !tbaa !1045
  %10 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1159, !tbaa !1045
  %cmp1 = icmp ne %struct._object* %10, null, !dbg !1160
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !1161

if.then.2:                                        ; preds = %do.body
  br label %do.body.3, !dbg !1162

do.body.3:                                        ; preds = %if.then.2
  %11 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1164
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !1164
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !500, metadata !1019), !dbg !1166
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !1167, !tbaa !1045
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8, !dbg !1166, !tbaa !1045
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1168, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0, !dbg !1170
  %14 = load i64, i64* %ob_refcnt, align 8, !dbg !1171, !tbaa !1075
  %dec = add i64 %14, -1, !dbg !1171
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1171, !tbaa !1075
  %cmp4 = icmp ne i64 %dec, 0, !dbg !1172
  br i1 %cmp4, label %if.then.5, label %if.else, !dbg !1173

if.then.5:                                        ; preds = %do.body.3
  br label %if.end.6, !dbg !1174

if.else:                                          ; preds = %do.body.3
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1176, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1, !dbg !1178
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1178, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4, !dbg !1179
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1179, !tbaa !1180
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1181, !tbaa !1045
  call void %17(%struct._object* %18), !dbg !1182
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  %19 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1183
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !1183
  br label %do.cond, !dbg !1185

do.cond:                                          ; preds = %if.end.6
  br label %do.end, !dbg !1186

do.end:                                           ; preds = %do.cond
  br label %if.end.7, !dbg !1188

if.end.7:                                         ; preds = %do.end, %do.body
  %20 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !1190
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1190
  br label %do.end.9, !dbg !1193

do.end.9:                                         ; preds = %if.end.7
  %21 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1194, !tbaa !1045
  %22 = bitcast %struct.localobject* %21 to %struct._object*, !dbg !1195
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !1196
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1196, !tbaa !1130
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 38, !dbg !1197
  %24 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1197, !tbaa !1132
  %25 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1198, !tbaa !1045
  %26 = bitcast %struct.localobject* %25 to %struct._object*, !dbg !1199
  %27 = bitcast %struct._object* %26 to i8*, !dbg !1199
  call void %24(i8* %27), !dbg !1200
  ret void, !dbg !1201
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
  %cleanup.dest.slot = alloca i32
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localobject** %self.addr, metadata !507, metadata !1019), !dbg !1202
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !508, metadata !1019), !dbg !1203
  %0 = bitcast %struct._object** %ldict to i8*, !dbg !1204
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1204
  call void @llvm.dbg.declare(metadata %struct._object** %ldict, metadata !509, metadata !1019), !dbg !1205
  %1 = bitcast %struct._object** %value to i8*, !dbg !1204
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1204
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !510, metadata !1019), !dbg !1206
  %2 = bitcast i32* %r to i8*, !dbg !1207
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1207
  call void @llvm.dbg.declare(metadata i32* %r, metadata !511, metadata !1019), !dbg !1208
  %3 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1209, !tbaa !1045
  %call = call %struct._object* @_ldict(%struct.localobject* %3), !dbg !1210
  store %struct._object* %call, %struct._object** %ldict, align 8, !dbg !1211, !tbaa !1045
  %4 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1212, !tbaa !1045
  %cmp = icmp eq %struct._object* %4, null, !dbg !1214
  br i1 %cmp, label %if.then, label %if.end, !dbg !1215

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1216
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1216

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1217, !tbaa !1045
  %6 = load %struct._object*, %struct._object** @str_dict, align 8, !dbg !1218, !tbaa !1045
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %5, %struct._object* %6, i32 2), !dbg !1219
  store i32 %call1, i32* %r, align 4, !dbg !1220, !tbaa !1221
  %7 = load i32, i32* %r, align 4, !dbg !1222, !tbaa !1221
  %cmp2 = icmp eq i32 %7, 1, !dbg !1224
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1225

if.then.3:                                        ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1226, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1228
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1229, !tbaa !1075
  %inc = add i64 %9, 1, !dbg !1229
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1229, !tbaa !1075
  %10 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1230, !tbaa !1045
  store %struct._object* %10, %struct._object** %retval, !dbg !1231
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1231

if.end.4:                                         ; preds = %if.end
  %11 = load i32, i32* %r, align 4, !dbg !1232, !tbaa !1221
  %cmp5 = icmp eq i32 %11, -1, !dbg !1234
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1235

if.then.6:                                        ; preds = %if.end.4
  store %struct._object* null, %struct._object** %retval, !dbg !1236
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1236

if.end.7:                                         ; preds = %if.end.4
  %12 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1237, !tbaa !1045
  %13 = bitcast %struct.localobject* %12 to %struct._object*, !dbg !1239
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !1240
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1240, !tbaa !1130
  %cmp8 = icmp ne %struct._typeobject* %14, @localtype, !dbg !1241
  br i1 %cmp8, label %if.then.9, label %if.end.11, !dbg !1242

if.then.9:                                        ; preds = %if.end.7
  %15 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1243, !tbaa !1045
  %16 = bitcast %struct.localobject* %15 to %struct._object*, !dbg !1244
  %17 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1245, !tbaa !1045
  %18 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1246, !tbaa !1045
  %call10 = call %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %16, %struct._object* %17, %struct._object* %18), !dbg !1247
  store %struct._object* %call10, %struct._object** %retval, !dbg !1248
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1248

if.end.11:                                        ; preds = %if.end.7
  %19 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1249, !tbaa !1045
  %20 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1250, !tbaa !1045
  %call12 = call %struct._object* @PyDict_GetItem(%struct._object* %19, %struct._object* %20), !dbg !1251
  store %struct._object* %call12, %struct._object** %value, align 8, !dbg !1252, !tbaa !1045
  %21 = load %struct._object*, %struct._object** %value, align 8, !dbg !1253, !tbaa !1045
  %cmp13 = icmp eq %struct._object* %21, null, !dbg !1255
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1256

if.then.14:                                       ; preds = %if.end.11
  %22 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1257, !tbaa !1045
  %23 = bitcast %struct.localobject* %22 to %struct._object*, !dbg !1258
  %24 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1259, !tbaa !1045
  %25 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1260, !tbaa !1045
  %call15 = call %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %23, %struct._object* %24, %struct._object* %25), !dbg !1261
  store %struct._object* %call15, %struct._object** %retval, !dbg !1262
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1262

if.end.16:                                        ; preds = %if.end.11
  %26 = load %struct._object*, %struct._object** %value, align 8, !dbg !1263, !tbaa !1045
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1264
  %27 = load i64, i64* %ob_refcnt17, align 8, !dbg !1265, !tbaa !1075
  %inc18 = add i64 %27, 1, !dbg !1265
  store i64 %inc18, i64* %ob_refcnt17, align 8, !dbg !1265, !tbaa !1075
  %28 = load %struct._object*, %struct._object** %value, align 8, !dbg !1266, !tbaa !1045
  store %struct._object* %28, %struct._object** %retval, !dbg !1267
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1267

cleanup:                                          ; preds = %if.end.16, %if.then.14, %if.then.9, %if.then.6, %if.then.3, %if.then
  %29 = bitcast i32* %r to i8*, !dbg !1268
  call void @llvm.lifetime.end(i64 4, i8* %29) #1, !dbg !1268
  %30 = bitcast %struct._object** %value to i8*, !dbg !1268
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !1268
  %31 = bitcast %struct._object** %ldict to i8*, !dbg !1268
  call void @llvm.lifetime.end(i64 8, i8* %31) #1, !dbg !1268
  %32 = load %struct._object*, %struct._object** %retval, !dbg !1268
  ret %struct._object* %32, !dbg !1268
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
  %cleanup.dest.slot = alloca i32
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localobject** %self.addr, metadata !561, metadata !1019), !dbg !1269
  store %struct._object* %name, %struct._object** %name.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %name.addr, metadata !562, metadata !1019), !dbg !1270
  store %struct._object* %v, %struct._object** %v.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %v.addr, metadata !563, metadata !1019), !dbg !1271
  %0 = bitcast %struct._object** %ldict to i8*, !dbg !1272
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1272
  call void @llvm.dbg.declare(metadata %struct._object** %ldict, metadata !564, metadata !1019), !dbg !1273
  %1 = bitcast i32* %r to i8*, !dbg !1274
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1274
  call void @llvm.dbg.declare(metadata i32* %r, metadata !565, metadata !1019), !dbg !1275
  %2 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1276, !tbaa !1045
  %call = call %struct._object* @_ldict(%struct.localobject* %2), !dbg !1277
  store %struct._object* %call, %struct._object** %ldict, align 8, !dbg !1278, !tbaa !1045
  %3 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1279, !tbaa !1045
  %cmp = icmp eq %struct._object* %3, null, !dbg !1281
  br i1 %cmp, label %if.then, label %if.end, !dbg !1282

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval, !dbg !1283
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1283

if.end:                                           ; preds = %entry
  %4 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1284, !tbaa !1045
  %5 = load %struct._object*, %struct._object** @str_dict, align 8, !dbg !1285, !tbaa !1045
  %call1 = call i32 @PyObject_RichCompareBool(%struct._object* %4, %struct._object* %5, i32 2), !dbg !1286
  store i32 %call1, i32* %r, align 4, !dbg !1287, !tbaa !1221
  %6 = load i32, i32* %r, align 4, !dbg !1288, !tbaa !1221
  %cmp2 = icmp eq i32 %6, 1, !dbg !1290
  br i1 %cmp2, label %if.then.3, label %if.end.5, !dbg !1291

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1292, !tbaa !1045
  %8 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1294, !tbaa !1045
  %9 = bitcast %struct.localobject* %8 to %struct._object*, !dbg !1295
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 1, !dbg !1296
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1296, !tbaa !1130
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 1, !dbg !1297
  %11 = load i8*, i8** %tp_name, align 8, !dbg !1297, !tbaa !1298
  %12 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1299, !tbaa !1045
  %call4 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %7, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i8* %11, %struct._object* %12), !dbg !1300
  store i32 -1, i32* %retval, !dbg !1301
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1301

if.end.5:                                         ; preds = %if.end
  %13 = load i32, i32* %r, align 4, !dbg !1302, !tbaa !1221
  %cmp6 = icmp eq i32 %13, -1, !dbg !1304
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1305

if.then.7:                                        ; preds = %if.end.5
  store i32 -1, i32* %retval, !dbg !1306
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1306

if.end.8:                                         ; preds = %if.end.5
  %14 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1307, !tbaa !1045
  %15 = bitcast %struct.localobject* %14 to %struct._object*, !dbg !1308
  %16 = load %struct._object*, %struct._object** %name.addr, align 8, !dbg !1309, !tbaa !1045
  %17 = load %struct._object*, %struct._object** %v.addr, align 8, !dbg !1310, !tbaa !1045
  %18 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1311, !tbaa !1045
  %call9 = call i32 @_PyObject_GenericSetAttrWithDict(%struct._object* %15, %struct._object* %16, %struct._object* %17, %struct._object* %18), !dbg !1312
  store i32 %call9, i32* %retval, !dbg !1313
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1313

cleanup:                                          ; preds = %if.end.8, %if.then.7, %if.then.3, %if.then
  %19 = bitcast i32* %r to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !1314
  %20 = bitcast %struct._object** %ldict to i8*, !dbg !1314
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1314
  %21 = load i32, i32* %retval, !dbg !1314
  ret i32 %21, !dbg !1314
}

; Function Attrs: nounwind uwtable
define internal i32 @local_traverse(%struct.localobject* %self, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.localobject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  %vret8 = alloca i32, align 4
  %vret22 = alloca i32, align 4
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localobject** %self.addr, metadata !570, metadata !1019), !dbg !1315
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata i32 (%struct._object*, i8*)** %visit.addr, metadata !571, metadata !1019), !dbg !1316
  store i8* %arg, i8** %arg.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata i8** %arg.addr, metadata !572, metadata !1019), !dbg !1317
  br label %do.body, !dbg !1318

do.body:                                          ; preds = %entry
  %0 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1319, !tbaa !1045
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %0, i32 0, i32 2, !dbg !1321
  %1 = load %struct._object*, %struct._object** %args, align 8, !dbg !1321, !tbaa !1322
  %tobool = icmp ne %struct._object* %1, null, !dbg !1323
  br i1 %tobool, label %if.then, label %if.end.4, !dbg !1324

if.then:                                          ; preds = %do.body
  %2 = bitcast i32* %vret to i8*, !dbg !1325
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !1325
  call void @llvm.dbg.declare(metadata i32* %vret, metadata !573, metadata !1019), !dbg !1327
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1328, !tbaa !1045
  %4 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1329, !tbaa !1045
  %args1 = getelementptr inbounds %struct.localobject, %struct.localobject* %4, i32 0, i32 2, !dbg !1330
  %5 = load %struct._object*, %struct._object** %args1, align 8, !dbg !1330, !tbaa !1322
  %6 = load i8*, i8** %arg.addr, align 8, !dbg !1331, !tbaa !1045
  %call = call i32 %3(%struct._object* %5, i8* %6), !dbg !1328
  store i32 %call, i32* %vret, align 4, !dbg !1327, !tbaa !1221
  %7 = load i32, i32* %vret, align 4, !dbg !1332, !tbaa !1221
  %tobool2 = icmp ne i32 %7, 0, !dbg !1332
  br i1 %tobool2, label %if.then.3, label %if.end, !dbg !1334

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4, !dbg !1335, !tbaa !1221
  store i32 %8, i32* %retval, !dbg !1337
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1337

if.end:                                           ; preds = %if.then
  store i32 0, i32* %cleanup.dest.slot, !dbg !1338
  br label %cleanup, !dbg !1338

cleanup:                                          ; preds = %if.end, %if.then.3
  %9 = bitcast i32* %vret to i8*, !dbg !1340
  call void @llvm.lifetime.end(i64 4, i8* %9) #1, !dbg !1340
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end.4, !dbg !1343

if.end.4:                                         ; preds = %cleanup.cont, %do.body
  br label %do.end, !dbg !1344

do.end:                                           ; preds = %if.end.4
  br label %do.body.5, !dbg !1347

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1348, !tbaa !1045
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %10, i32 0, i32 3, !dbg !1350
  %11 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1350, !tbaa !1351
  %tobool6 = icmp ne %struct._object* %11, null, !dbg !1352
  br i1 %tobool6, label %if.then.7, label %if.end.17, !dbg !1353

if.then.7:                                        ; preds = %do.body.5
  %12 = bitcast i32* %vret8 to i8*, !dbg !1354
  call void @llvm.lifetime.start(i64 4, i8* %12) #1, !dbg !1354
  call void @llvm.dbg.declare(metadata i32* %vret8, metadata !577, metadata !1019), !dbg !1356
  %13 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1357, !tbaa !1045
  %14 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1358, !tbaa !1045
  %kw9 = getelementptr inbounds %struct.localobject, %struct.localobject* %14, i32 0, i32 3, !dbg !1359
  %15 = load %struct._object*, %struct._object** %kw9, align 8, !dbg !1359, !tbaa !1351
  %16 = load i8*, i8** %arg.addr, align 8, !dbg !1360, !tbaa !1045
  %call10 = call i32 %13(%struct._object* %15, i8* %16), !dbg !1357
  store i32 %call10, i32* %vret8, align 4, !dbg !1356, !tbaa !1221
  %17 = load i32, i32* %vret8, align 4, !dbg !1361, !tbaa !1221
  %tobool11 = icmp ne i32 %17, 0, !dbg !1361
  br i1 %tobool11, label %if.then.12, label %if.end.13, !dbg !1363

if.then.12:                                       ; preds = %if.then.7
  %18 = load i32, i32* %vret8, align 4, !dbg !1364, !tbaa !1221
  store i32 %18, i32* %retval, !dbg !1366
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.14, !dbg !1366

if.end.13:                                        ; preds = %if.then.7
  store i32 0, i32* %cleanup.dest.slot, !dbg !1367
  br label %cleanup.14, !dbg !1367

cleanup.14:                                       ; preds = %if.end.13, %if.then.12
  %19 = bitcast i32* %vret8 to i8*, !dbg !1369
  call void @llvm.lifetime.end(i64 4, i8* %19) #1, !dbg !1369
  %cleanup.dest.15 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.15, label %unreachable [
    i32 0, label %cleanup.cont.16
    i32 1, label %return
  ]

cleanup.cont.16:                                  ; preds = %cleanup.14
  br label %if.end.17, !dbg !1372

if.end.17:                                        ; preds = %cleanup.cont.16, %do.body.5
  br label %do.end.18, !dbg !1373

do.end.18:                                        ; preds = %if.end.17
  br label %do.body.19, !dbg !1376

do.body.19:                                       ; preds = %do.end.18
  %20 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1377, !tbaa !1045
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %20, i32 0, i32 5, !dbg !1379
  %21 = load %struct._object*, %struct._object** %dummies, align 8, !dbg !1379, !tbaa !1380
  %tobool20 = icmp ne %struct._object* %21, null, !dbg !1381
  br i1 %tobool20, label %if.then.21, label %if.end.31, !dbg !1382

if.then.21:                                       ; preds = %do.body.19
  %22 = bitcast i32* %vret22 to i8*, !dbg !1383
  call void @llvm.lifetime.start(i64 4, i8* %22) #1, !dbg !1383
  call void @llvm.dbg.declare(metadata i32* %vret22, metadata !581, metadata !1019), !dbg !1385
  %23 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8, !dbg !1386, !tbaa !1045
  %24 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1387, !tbaa !1045
  %dummies23 = getelementptr inbounds %struct.localobject, %struct.localobject* %24, i32 0, i32 5, !dbg !1388
  %25 = load %struct._object*, %struct._object** %dummies23, align 8, !dbg !1388, !tbaa !1380
  %26 = load i8*, i8** %arg.addr, align 8, !dbg !1389, !tbaa !1045
  %call24 = call i32 %23(%struct._object* %25, i8* %26), !dbg !1386
  store i32 %call24, i32* %vret22, align 4, !dbg !1385, !tbaa !1221
  %27 = load i32, i32* %vret22, align 4, !dbg !1390, !tbaa !1221
  %tobool25 = icmp ne i32 %27, 0, !dbg !1390
  br i1 %tobool25, label %if.then.26, label %if.end.27, !dbg !1392

if.then.26:                                       ; preds = %if.then.21
  %28 = load i32, i32* %vret22, align 4, !dbg !1393, !tbaa !1221
  store i32 %28, i32* %retval, !dbg !1395
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.28, !dbg !1395

if.end.27:                                        ; preds = %if.then.21
  store i32 0, i32* %cleanup.dest.slot, !dbg !1396
  br label %cleanup.28, !dbg !1396

cleanup.28:                                       ; preds = %if.end.27, %if.then.26
  %29 = bitcast i32* %vret22 to i8*, !dbg !1398
  call void @llvm.lifetime.end(i64 4, i8* %29) #1, !dbg !1398
  %cleanup.dest.29 = load i32, i32* %cleanup.dest.slot
  switch i32 %cleanup.dest.29, label %unreachable [
    i32 0, label %cleanup.cont.30
    i32 1, label %return
  ]

cleanup.cont.30:                                  ; preds = %cleanup.28
  br label %if.end.31, !dbg !1401

if.end.31:                                        ; preds = %cleanup.cont.30, %do.body.19
  br label %do.end.32, !dbg !1402

do.end.32:                                        ; preds = %if.end.31
  store i32 0, i32* %retval, !dbg !1405
  br label %return, !dbg !1405

return:                                           ; preds = %do.end.32, %cleanup.28, %cleanup.14, %cleanup
  %30 = load i32, i32* %retval, !dbg !1406
  ret i32 %30, !dbg !1406

unreachable:                                      ; preds = %cleanup.28, %cleanup.14, %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal i32 @local_clear(%struct.localobject* %self) #0 {
entry:
  %self.addr = alloca %struct.localobject*, align 8
  %tstate = alloca %struct._ts*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_tmp29 = alloca %struct._object*, align 8
  %_py_decref_tmp34 = alloca %struct._object*, align 8
  %_py_tmp49 = alloca %struct._object*, align 8
  %_py_decref_tmp54 = alloca %struct._object*, align 8
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localobject** %self.addr, metadata !589, metadata !1019), !dbg !1407
  %0 = bitcast %struct._ts** %tstate to i8*, !dbg !1408
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1408
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !590, metadata !1019), !dbg !1409
  br label %do.body, !dbg !1410

do.body:                                          ; preds = %entry
  %1 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1411
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1411
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !591, metadata !1019), !dbg !1413
  %2 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1414, !tbaa !1045
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %2, i32 0, i32 2, !dbg !1415
  %3 = load %struct._object*, %struct._object** %args, align 8, !dbg !1415, !tbaa !1322
  store %struct._object* %3, %struct._object** %_py_tmp, align 8, !dbg !1413, !tbaa !1045
  %4 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1416, !tbaa !1045
  %cmp = icmp ne %struct._object* %4, null, !dbg !1417
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !1418

if.then:                                          ; preds = %do.body
  %5 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1419, !tbaa !1045
  %args1 = getelementptr inbounds %struct.localobject, %struct.localobject* %5, i32 0, i32 2, !dbg !1421
  store %struct._object* null, %struct._object** %args1, align 8, !dbg !1422, !tbaa !1322
  br label %do.body.2, !dbg !1423

do.body.2:                                        ; preds = %if.then
  %6 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1424
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !1424
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !593, metadata !1019), !dbg !1426
  %7 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1427, !tbaa !1045
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8, !dbg !1426, !tbaa !1045
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1428, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0, !dbg !1430
  %9 = load i64, i64* %ob_refcnt, align 8, !dbg !1431, !tbaa !1075
  %dec = add i64 %9, -1, !dbg !1431
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1431, !tbaa !1075
  %cmp3 = icmp ne i64 %dec, 0, !dbg !1432
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !1433

if.then.4:                                        ; preds = %do.body.2
  br label %if.end, !dbg !1434

if.else:                                          ; preds = %do.body.2
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1436, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1, !dbg !1438
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1438, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4, !dbg !1439
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1439, !tbaa !1180
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1440, !tbaa !1045
  call void %12(%struct._object* %13), !dbg !1441
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %14 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1442
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !1442
  br label %do.cond, !dbg !1444

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !1445

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !1447

if.end.5:                                         ; preds = %do.end, %do.body
  %15 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1449
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !1449
  br label %do.cond.6, !dbg !1452

do.cond.6:                                        ; preds = %if.end.5
  br label %do.end.7, !dbg !1453

do.end.7:                                         ; preds = %do.cond.6
  br label %do.body.8, !dbg !1455

do.body.8:                                        ; preds = %do.end.7
  %16 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1456
  call void @llvm.lifetime.start(i64 8, i8* %16) #1, !dbg !1456
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp9, metadata !597, metadata !1019), !dbg !1458
  %17 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1459, !tbaa !1045
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %17, i32 0, i32 3, !dbg !1460
  %18 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1460, !tbaa !1351
  store %struct._object* %18, %struct._object** %_py_tmp9, align 8, !dbg !1458, !tbaa !1045
  %19 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1461, !tbaa !1045
  %cmp10 = icmp ne %struct._object* %19, null, !dbg !1462
  br i1 %cmp10, label %if.then.11, label %if.end.25, !dbg !1463

if.then.11:                                       ; preds = %do.body.8
  %20 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1464, !tbaa !1045
  %kw12 = getelementptr inbounds %struct.localobject, %struct.localobject* %20, i32 0, i32 3, !dbg !1466
  store %struct._object* null, %struct._object** %kw12, align 8, !dbg !1467, !tbaa !1351
  br label %do.body.13, !dbg !1468

do.body.13:                                       ; preds = %if.then.11
  %21 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1469
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !1469
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !599, metadata !1019), !dbg !1471
  %22 = load %struct._object*, %struct._object** %_py_tmp9, align 8, !dbg !1472, !tbaa !1045
  store %struct._object* %22, %struct._object** %_py_decref_tmp14, align 8, !dbg !1471, !tbaa !1045
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1473, !tbaa !1045
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0, !dbg !1475
  %24 = load i64, i64* %ob_refcnt15, align 8, !dbg !1476, !tbaa !1075
  %dec16 = add i64 %24, -1, !dbg !1476
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1476, !tbaa !1075
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !1477
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !1478

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !1479

if.else.19:                                       ; preds = %do.body.13
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1481, !tbaa !1045
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 1, !dbg !1483
  %26 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1483, !tbaa !1130
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %26, i32 0, i32 4, !dbg !1484
  %27 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1484, !tbaa !1180
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !1485, !tbaa !1045
  call void %27(%struct._object* %28), !dbg !1486
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %29 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !1487
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !1487
  br label %do.cond.23, !dbg !1489

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !1490

do.end.24:                                        ; preds = %do.cond.23
  br label %if.end.25, !dbg !1492

if.end.25:                                        ; preds = %do.end.24, %do.body.8
  %30 = bitcast %struct._object** %_py_tmp9 to i8*, !dbg !1494
  call void @llvm.lifetime.end(i64 8, i8* %30) #1, !dbg !1494
  br label %do.cond.26, !dbg !1495

do.cond.26:                                       ; preds = %if.end.25
  br label %do.end.27, !dbg !1496

do.end.27:                                        ; preds = %do.cond.26
  br label %do.body.28, !dbg !1498

do.body.28:                                       ; preds = %do.end.27
  %31 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1499
  call void @llvm.lifetime.start(i64 8, i8* %31) #1, !dbg !1499
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp29, metadata !603, metadata !1019), !dbg !1501
  %32 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1502, !tbaa !1045
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %32, i32 0, i32 5, !dbg !1503
  %33 = load %struct._object*, %struct._object** %dummies, align 8, !dbg !1503, !tbaa !1380
  store %struct._object* %33, %struct._object** %_py_tmp29, align 8, !dbg !1501, !tbaa !1045
  %34 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1504, !tbaa !1045
  %cmp30 = icmp ne %struct._object* %34, null, !dbg !1505
  br i1 %cmp30, label %if.then.31, label %if.end.45, !dbg !1506

if.then.31:                                       ; preds = %do.body.28
  %35 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1507, !tbaa !1045
  %dummies32 = getelementptr inbounds %struct.localobject, %struct.localobject* %35, i32 0, i32 5, !dbg !1509
  store %struct._object* null, %struct._object** %dummies32, align 8, !dbg !1510, !tbaa !1380
  br label %do.body.33, !dbg !1511

do.body.33:                                       ; preds = %if.then.31
  %36 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1512
  call void @llvm.lifetime.start(i64 8, i8* %36) #1, !dbg !1512
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp34, metadata !605, metadata !1019), !dbg !1514
  %37 = load %struct._object*, %struct._object** %_py_tmp29, align 8, !dbg !1515, !tbaa !1045
  store %struct._object* %37, %struct._object** %_py_decref_tmp34, align 8, !dbg !1514, !tbaa !1045
  %38 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1516, !tbaa !1045
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0, !dbg !1518
  %39 = load i64, i64* %ob_refcnt35, align 8, !dbg !1519, !tbaa !1075
  %dec36 = add i64 %39, -1, !dbg !1519
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1519, !tbaa !1075
  %cmp37 = icmp ne i64 %dec36, 0, !dbg !1520
  br i1 %cmp37, label %if.then.38, label %if.else.39, !dbg !1521

if.then.38:                                       ; preds = %do.body.33
  br label %if.end.42, !dbg !1522

if.else.39:                                       ; preds = %do.body.33
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1524, !tbaa !1045
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 1, !dbg !1526
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1526, !tbaa !1130
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i32 0, i32 4, !dbg !1527
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1527, !tbaa !1180
  %43 = load %struct._object*, %struct._object** %_py_decref_tmp34, align 8, !dbg !1528, !tbaa !1045
  call void %42(%struct._object* %43), !dbg !1529
  br label %if.end.42

if.end.42:                                        ; preds = %if.else.39, %if.then.38
  %44 = bitcast %struct._object** %_py_decref_tmp34 to i8*, !dbg !1530
  call void @llvm.lifetime.end(i64 8, i8* %44) #1, !dbg !1530
  br label %do.cond.43, !dbg !1532

do.cond.43:                                       ; preds = %if.end.42
  br label %do.end.44, !dbg !1533

do.end.44:                                        ; preds = %do.cond.43
  br label %if.end.45, !dbg !1535

if.end.45:                                        ; preds = %do.end.44, %do.body.28
  %45 = bitcast %struct._object** %_py_tmp29 to i8*, !dbg !1537
  call void @llvm.lifetime.end(i64 8, i8* %45) #1, !dbg !1537
  br label %do.cond.46, !dbg !1538

do.cond.46:                                       ; preds = %if.end.45
  br label %do.end.47, !dbg !1539

do.end.47:                                        ; preds = %do.cond.46
  br label %do.body.48, !dbg !1541

do.body.48:                                       ; preds = %do.end.47
  %46 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1542
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !1542
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp49, metadata !609, metadata !1019), !dbg !1544
  %47 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1545, !tbaa !1045
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %47, i32 0, i32 6, !dbg !1546
  %48 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1546, !tbaa !1547
  store %struct._object* %48, %struct._object** %_py_tmp49, align 8, !dbg !1544, !tbaa !1045
  %49 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1548, !tbaa !1045
  %cmp50 = icmp ne %struct._object* %49, null, !dbg !1549
  br i1 %cmp50, label %if.then.51, label %if.end.65, !dbg !1550

if.then.51:                                       ; preds = %do.body.48
  %50 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1551, !tbaa !1045
  %wr_callback52 = getelementptr inbounds %struct.localobject, %struct.localobject* %50, i32 0, i32 6, !dbg !1553
  store %struct._object* null, %struct._object** %wr_callback52, align 8, !dbg !1554, !tbaa !1547
  br label %do.body.53, !dbg !1555

do.body.53:                                       ; preds = %if.then.51
  %51 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !1556
  call void @llvm.lifetime.start(i64 8, i8* %51) #1, !dbg !1556
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp54, metadata !611, metadata !1019), !dbg !1558
  %52 = load %struct._object*, %struct._object** %_py_tmp49, align 8, !dbg !1559, !tbaa !1045
  store %struct._object* %52, %struct._object** %_py_decref_tmp54, align 8, !dbg !1558, !tbaa !1045
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1560, !tbaa !1045
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !1562
  %54 = load i64, i64* %ob_refcnt55, align 8, !dbg !1563, !tbaa !1075
  %dec56 = add i64 %54, -1, !dbg !1563
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !1563, !tbaa !1075
  %cmp57 = icmp ne i64 %dec56, 0, !dbg !1564
  br i1 %cmp57, label %if.then.58, label %if.else.59, !dbg !1565

if.then.58:                                       ; preds = %do.body.53
  br label %if.end.62, !dbg !1566

if.else.59:                                       ; preds = %do.body.53
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1568, !tbaa !1045
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1, !dbg !1570
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !1570, !tbaa !1130
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4, !dbg !1571
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !1571, !tbaa !1180
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp54, align 8, !dbg !1572, !tbaa !1045
  call void %57(%struct._object* %58), !dbg !1573
  br label %if.end.62

if.end.62:                                        ; preds = %if.else.59, %if.then.58
  %59 = bitcast %struct._object** %_py_decref_tmp54 to i8*, !dbg !1574
  call void @llvm.lifetime.end(i64 8, i8* %59) #1, !dbg !1574
  br label %do.cond.63, !dbg !1576

do.cond.63:                                       ; preds = %if.end.62
  br label %do.end.64, !dbg !1577

do.end.64:                                        ; preds = %do.cond.63
  br label %if.end.65, !dbg !1579

if.end.65:                                        ; preds = %do.end.64, %do.body.48
  %60 = bitcast %struct._object** %_py_tmp49 to i8*, !dbg !1581
  call void @llvm.lifetime.end(i64 8, i8* %60) #1, !dbg !1581
  br label %do.cond.66, !dbg !1582

do.cond.66:                                       ; preds = %if.end.65
  br label %do.end.67, !dbg !1583

do.end.67:                                        ; preds = %do.cond.66
  %61 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1585, !tbaa !1045
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %61, i32 0, i32 1, !dbg !1587
  %62 = load %struct._object*, %struct._object** %key, align 8, !dbg !1587, !tbaa !1158
  %tobool = icmp ne %struct._object* %62, null, !dbg !1585
  br i1 %tobool, label %land.lhs.true, label %if.end.87, !dbg !1588

land.lhs.true:                                    ; preds = %do.end.67
  %call = call %struct._ts* @PyThreadState_Get(), !dbg !1589
  store %struct._ts* %call, %struct._ts** %tstate, align 8, !dbg !1591, !tbaa !1045
  %tobool68 = icmp ne %struct._ts* %call, null, !dbg !1591
  br i1 %tobool68, label %land.lhs.true.69, label %if.end.87, !dbg !1592

land.lhs.true.69:                                 ; preds = %land.lhs.true
  %63 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1593, !tbaa !1045
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %63, i32 0, i32 2, !dbg !1594
  %64 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1594, !tbaa !1595
  %tobool70 = icmp ne %struct._is* %64, null, !dbg !1597
  br i1 %tobool70, label %if.then.71, label %if.end.87, !dbg !1598

if.then.71:                                       ; preds = %land.lhs.true.69
  %65 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1599, !tbaa !1045
  %interp72 = getelementptr inbounds %struct._ts, %struct._ts* %65, i32 0, i32 2, !dbg !1602
  %66 = load %struct._is*, %struct._is** %interp72, align 8, !dbg !1602, !tbaa !1595
  %call73 = call %struct._ts* @PyInterpreterState_ThreadHead(%struct._is* %66), !dbg !1603
  store %struct._ts* %call73, %struct._ts** %tstate, align 8, !dbg !1604, !tbaa !1045
  br label %for.cond, !dbg !1605

for.cond:                                         ; preds = %for.inc, %if.then.71
  %67 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1606, !tbaa !1045
  %tobool74 = icmp ne %struct._ts* %67, null, !dbg !1608
  br i1 %tobool74, label %for.body, label %for.end, !dbg !1608

for.body:                                         ; preds = %for.cond
  %68 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1609, !tbaa !1045
  %dict = getelementptr inbounds %struct._ts, %struct._ts* %68, i32 0, i32 19, !dbg !1611
  %69 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1611, !tbaa !1612
  %tobool75 = icmp ne %struct._object* %69, null, !dbg !1609
  br i1 %tobool75, label %land.lhs.true.76, label %if.end.85, !dbg !1613

land.lhs.true.76:                                 ; preds = %for.body
  %70 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1614, !tbaa !1045
  %dict77 = getelementptr inbounds %struct._ts, %struct._ts* %70, i32 0, i32 19, !dbg !1615
  %71 = load %struct._object*, %struct._object** %dict77, align 8, !dbg !1615, !tbaa !1612
  %72 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1616, !tbaa !1045
  %key78 = getelementptr inbounds %struct.localobject, %struct.localobject* %72, i32 0, i32 1, !dbg !1617
  %73 = load %struct._object*, %struct._object** %key78, align 8, !dbg !1617, !tbaa !1158
  %call79 = call %struct._object* @PyDict_GetItem(%struct._object* %71, %struct._object* %73), !dbg !1618
  %tobool80 = icmp ne %struct._object* %call79, null, !dbg !1618
  br i1 %tobool80, label %if.then.81, label %if.end.85, !dbg !1619

if.then.81:                                       ; preds = %land.lhs.true.76
  %74 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1620, !tbaa !1045
  %dict82 = getelementptr inbounds %struct._ts, %struct._ts* %74, i32 0, i32 19, !dbg !1621
  %75 = load %struct._object*, %struct._object** %dict82, align 8, !dbg !1621, !tbaa !1612
  %76 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1622, !tbaa !1045
  %key83 = getelementptr inbounds %struct.localobject, %struct.localobject* %76, i32 0, i32 1, !dbg !1623
  %77 = load %struct._object*, %struct._object** %key83, align 8, !dbg !1623, !tbaa !1158
  %call84 = call i32 @PyDict_DelItem(%struct._object* %75, %struct._object* %77), !dbg !1624
  br label %if.end.85, !dbg !1624

if.end.85:                                        ; preds = %if.then.81, %land.lhs.true.76, %for.body
  br label %for.inc, !dbg !1625

for.inc:                                          ; preds = %if.end.85
  %78 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !1626, !tbaa !1045
  %call86 = call %struct._ts* @PyThreadState_Next(%struct._ts* %78), !dbg !1627
  store %struct._ts* %call86, %struct._ts** %tstate, align 8, !dbg !1628, !tbaa !1045
  br label %for.cond, !dbg !1629

for.end:                                          ; preds = %for.cond
  br label %if.end.87, !dbg !1630

if.end.87:                                        ; preds = %for.end, %land.lhs.true.69, %land.lhs.true, %do.end.67
  %79 = bitcast %struct._ts** %tstate to i8*, !dbg !1631
  call void @llvm.lifetime.end(i64 8, i8* %79) #1, !dbg !1631
  ret i32 0, !dbg !1632
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
  %cleanup.dest.slot = alloca i32
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp16 = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp56 = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !621, metadata !1019), !dbg !1633
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !622, metadata !1019), !dbg !1634
  store %struct._object* %kw, %struct._object** %kw.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %kw.addr, metadata !623, metadata !1019), !dbg !1635
  %0 = bitcast %struct.localobject** %self to i8*, !dbg !1636
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1636
  call void @llvm.dbg.declare(metadata %struct.localobject** %self, metadata !624, metadata !1019), !dbg !1637
  %1 = bitcast %struct._object** %wr to i8*, !dbg !1638
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1638
  call void @llvm.dbg.declare(metadata %struct._object** %wr, metadata !625, metadata !1019), !dbg !1639
  %2 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1640, !tbaa !1045
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 35, !dbg !1642
  %3 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8, !dbg !1642, !tbaa !1643
  %4 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBaseObject_Type, i32 0, i32 35), align 8, !dbg !1644, !tbaa !1643
  %cmp = icmp eq i32 (%struct._object*, %struct._object*, %struct._object*)* %3, %4, !dbg !1645
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1646

land.lhs.true:                                    ; preds = %entry
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1647, !tbaa !1045
  %tobool = icmp ne %struct._object* %5, null, !dbg !1647
  br i1 %tobool, label %land.lhs.true.1, label %lor.lhs.false, !dbg !1649

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1650, !tbaa !1045
  %call = call i32 @PyObject_IsTrue(%struct._object* %6), !dbg !1652
  %tobool2 = icmp ne i32 %call, 0, !dbg !1652
  br i1 %tobool2, label %if.then, label %lor.lhs.false, !dbg !1653

lor.lhs.false:                                    ; preds = %land.lhs.true.1, %land.lhs.true
  %7 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1654, !tbaa !1045
  %tobool3 = icmp ne %struct._object* %7, null, !dbg !1654
  br i1 %tobool3, label %land.lhs.true.4, label %if.end, !dbg !1655

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %8 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1656, !tbaa !1045
  %call5 = call i32 @PyObject_IsTrue(%struct._object* %8), !dbg !1657
  %tobool6 = icmp ne i32 %call5, 0, !dbg !1657
  br i1 %tobool6, label %if.then, label %if.end, !dbg !1658

if.then:                                          ; preds = %land.lhs.true.4, %land.lhs.true.1
  %9 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1659, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0)), !dbg !1661
  store %struct._object* null, %struct._object** %retval, !dbg !1662
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1662

if.end:                                           ; preds = %land.lhs.true.4, %lor.lhs.false, %entry
  %10 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1663, !tbaa !1045
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i32 0, i32 36, !dbg !1664
  %11 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1664, !tbaa !1665
  %12 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1666, !tbaa !1045
  %call7 = call %struct._object* %11(%struct._typeobject* %12, i64 0), !dbg !1663
  %13 = bitcast %struct._object* %call7 to %struct.localobject*, !dbg !1667
  store %struct.localobject* %13, %struct.localobject** %self, align 8, !dbg !1668, !tbaa !1045
  %14 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1669, !tbaa !1045
  %cmp8 = icmp eq %struct.localobject* %14, null, !dbg !1671
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !1672

if.then.9:                                        ; preds = %if.end
  store %struct._object* null, %struct._object** %retval, !dbg !1673
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1673

if.end.10:                                        ; preds = %if.end
  br label %do.body, !dbg !1674

do.body:                                          ; preds = %if.end.10
  %15 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1675
  call void @llvm.lifetime.start(i64 8, i8* %15) #1, !dbg !1675
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !626, metadata !1019), !dbg !1677
  %16 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1678, !tbaa !1045
  store %struct._object* %16, %struct._object** %_py_xincref_tmp, align 8, !dbg !1677, !tbaa !1045
  %17 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1679, !tbaa !1045
  %cmp11 = icmp ne %struct._object* %17, null, !dbg !1681
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1682

if.then.12:                                       ; preds = %do.body
  %18 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !1683, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %18, i32 0, i32 0, !dbg !1685
  %19 = load i64, i64* %ob_refcnt, align 8, !dbg !1686, !tbaa !1075
  %inc = add i64 %19, 1, !dbg !1686
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1686, !tbaa !1075
  br label %if.end.13, !dbg !1687

if.end.13:                                        ; preds = %if.then.12, %do.body
  %20 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !1688
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !1688
  br label %do.cond, !dbg !1691

do.cond:                                          ; preds = %if.end.13
  br label %do.end, !dbg !1692

do.end:                                           ; preds = %do.cond
  %21 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1694, !tbaa !1045
  %22 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1695, !tbaa !1045
  %args14 = getelementptr inbounds %struct.localobject, %struct.localobject* %22, i32 0, i32 2, !dbg !1696
  store %struct._object* %21, %struct._object** %args14, align 8, !dbg !1697, !tbaa !1322
  br label %do.body.15, !dbg !1698

do.body.15:                                       ; preds = %do.end
  %23 = bitcast %struct._object** %_py_xincref_tmp16 to i8*, !dbg !1699
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !1699
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp16, metadata !628, metadata !1019), !dbg !1701
  %24 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1702, !tbaa !1045
  store %struct._object* %24, %struct._object** %_py_xincref_tmp16, align 8, !dbg !1701, !tbaa !1045
  %25 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8, !dbg !1703, !tbaa !1045
  %cmp17 = icmp ne %struct._object* %25, null, !dbg !1705
  br i1 %cmp17, label %if.then.18, label %if.end.21, !dbg !1706

if.then.18:                                       ; preds = %do.body.15
  %26 = load %struct._object*, %struct._object** %_py_xincref_tmp16, align 8, !dbg !1707, !tbaa !1045
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !1709
  %27 = load i64, i64* %ob_refcnt19, align 8, !dbg !1710, !tbaa !1075
  %inc20 = add i64 %27, 1, !dbg !1710
  store i64 %inc20, i64* %ob_refcnt19, align 8, !dbg !1710, !tbaa !1075
  br label %if.end.21, !dbg !1711

if.end.21:                                        ; preds = %if.then.18, %do.body.15
  %28 = bitcast %struct._object** %_py_xincref_tmp16 to i8*, !dbg !1712
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !1712
  br label %do.cond.22, !dbg !1713

do.cond.22:                                       ; preds = %if.end.21
  br label %do.end.23, !dbg !1714

do.end.23:                                        ; preds = %do.cond.22
  %29 = load %struct._object*, %struct._object** %kw.addr, align 8, !dbg !1716, !tbaa !1045
  %30 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1717, !tbaa !1045
  %kw24 = getelementptr inbounds %struct.localobject, %struct.localobject* %30, i32 0, i32 3, !dbg !1718
  store %struct._object* %29, %struct._object** %kw24, align 8, !dbg !1719, !tbaa !1351
  %31 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1720, !tbaa !1045
  %call25 = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i32 0, i32 0), %struct.localobject* %31), !dbg !1721
  %32 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1722, !tbaa !1045
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %32, i32 0, i32 1, !dbg !1723
  store %struct._object* %call25, %struct._object** %key, align 8, !dbg !1724, !tbaa !1158
  %33 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1725, !tbaa !1045
  %key26 = getelementptr inbounds %struct.localobject, %struct.localobject* %33, i32 0, i32 1, !dbg !1727
  %34 = load %struct._object*, %struct._object** %key26, align 8, !dbg !1727, !tbaa !1158
  %cmp27 = icmp eq %struct._object* %34, null, !dbg !1728
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !1729

if.then.28:                                       ; preds = %do.end.23
  br label %err, !dbg !1730

if.end.29:                                        ; preds = %do.end.23
  %call30 = call %struct._object* @PyDict_New(), !dbg !1731
  %35 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1732, !tbaa !1045
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %35, i32 0, i32 5, !dbg !1733
  store %struct._object* %call30, %struct._object** %dummies, align 8, !dbg !1734, !tbaa !1380
  %36 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1735, !tbaa !1045
  %dummies31 = getelementptr inbounds %struct.localobject, %struct.localobject* %36, i32 0, i32 5, !dbg !1737
  %37 = load %struct._object*, %struct._object** %dummies31, align 8, !dbg !1737, !tbaa !1380
  %cmp32 = icmp eq %struct._object* %37, null, !dbg !1738
  br i1 %cmp32, label %if.then.33, label %if.end.34, !dbg !1739

if.then.33:                                       ; preds = %if.end.29
  br label %err, !dbg !1740

if.end.34:                                        ; preds = %if.end.29
  %38 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1741, !tbaa !1045
  %39 = bitcast %struct.localobject* %38 to %struct._object*, !dbg !1742
  %call35 = call %struct._object* @PyWeakref_NewRef(%struct._object* %39, %struct._object* null), !dbg !1743
  store %struct._object* %call35, %struct._object** %wr, align 8, !dbg !1744, !tbaa !1045
  %40 = load %struct._object*, %struct._object** %wr, align 8, !dbg !1745, !tbaa !1045
  %cmp36 = icmp eq %struct._object* %40, null, !dbg !1747
  br i1 %cmp36, label %if.then.37, label %if.end.38, !dbg !1748

if.then.37:                                       ; preds = %if.end.34
  br label %err, !dbg !1749

if.end.38:                                        ; preds = %if.end.34
  %41 = load %struct._object*, %struct._object** %wr, align 8, !dbg !1750, !tbaa !1045
  %call39 = call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* @local_new.wr_callback_def, %struct._object* %41, %struct._object* null), !dbg !1751
  %42 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1752, !tbaa !1045
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %42, i32 0, i32 6, !dbg !1753
  store %struct._object* %call39, %struct._object** %wr_callback, align 8, !dbg !1754, !tbaa !1547
  br label %do.body.40, !dbg !1755

do.body.40:                                       ; preds = %if.end.38
  %43 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1756
  call void @llvm.lifetime.start(i64 8, i8* %43) #1, !dbg !1756
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !630, metadata !1019), !dbg !1758
  %44 = load %struct._object*, %struct._object** %wr, align 8, !dbg !1759, !tbaa !1045
  store %struct._object* %44, %struct._object** %_py_decref_tmp, align 8, !dbg !1758, !tbaa !1045
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1760, !tbaa !1045
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %45, i32 0, i32 0, !dbg !1762
  %46 = load i64, i64* %ob_refcnt41, align 8, !dbg !1763, !tbaa !1075
  %dec = add i64 %46, -1, !dbg !1763
  store i64 %dec, i64* %ob_refcnt41, align 8, !dbg !1763, !tbaa !1075
  %cmp42 = icmp ne i64 %dec, 0, !dbg !1764
  br i1 %cmp42, label %if.then.43, label %if.else, !dbg !1765

if.then.43:                                       ; preds = %do.body.40
  br label %if.end.44, !dbg !1766

if.else:                                          ; preds = %do.body.40
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1768, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %47, i32 0, i32 1, !dbg !1770
  %48 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1770, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %48, i32 0, i32 4, !dbg !1771
  %49 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1771, !tbaa !1180
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1772, !tbaa !1045
  call void %49(%struct._object* %50), !dbg !1773
  br label %if.end.44

if.end.44:                                        ; preds = %if.else, %if.then.43
  %51 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1774
  call void @llvm.lifetime.end(i64 8, i8* %51) #1, !dbg !1774
  br label %do.cond.45, !dbg !1776

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !1777

do.end.46:                                        ; preds = %do.cond.45
  %52 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1779, !tbaa !1045
  %wr_callback47 = getelementptr inbounds %struct.localobject, %struct.localobject* %52, i32 0, i32 6, !dbg !1781
  %53 = load %struct._object*, %struct._object** %wr_callback47, align 8, !dbg !1781, !tbaa !1547
  %cmp48 = icmp eq %struct._object* %53, null, !dbg !1782
  br i1 %cmp48, label %if.then.49, label %if.end.50, !dbg !1783

if.then.49:                                       ; preds = %do.end.46
  br label %err, !dbg !1784

if.end.50:                                        ; preds = %do.end.46
  %54 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1785, !tbaa !1045
  %call51 = call %struct._object* @_local_create_dummy(%struct.localobject* %54), !dbg !1787
  %cmp52 = icmp eq %struct._object* %call51, null, !dbg !1788
  br i1 %cmp52, label %if.then.53, label %if.end.54, !dbg !1789

if.then.53:                                       ; preds = %if.end.50
  br label %err, !dbg !1790

if.end.54:                                        ; preds = %if.end.50
  %55 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1791, !tbaa !1045
  %56 = bitcast %struct.localobject* %55 to %struct._object*, !dbg !1792
  store %struct._object* %56, %struct._object** %retval, !dbg !1793
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1793

err:                                              ; preds = %if.then.53, %if.then.49, %if.then.37, %if.then.33, %if.then.28
  br label %do.body.55, !dbg !1794

do.body.55:                                       ; preds = %err
  %57 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !1795
  call void @llvm.lifetime.start(i64 8, i8* %57) #1, !dbg !1795
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp56, metadata !632, metadata !1019), !dbg !1797
  %58 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !1798, !tbaa !1045
  %59 = bitcast %struct.localobject* %58 to %struct._object*, !dbg !1799
  store %struct._object* %59, %struct._object** %_py_decref_tmp56, align 8, !dbg !1797, !tbaa !1045
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !1800, !tbaa !1045
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !1802
  %61 = load i64, i64* %ob_refcnt57, align 8, !dbg !1803, !tbaa !1075
  %dec58 = add i64 %61, -1, !dbg !1803
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !1803, !tbaa !1075
  %cmp59 = icmp ne i64 %dec58, 0, !dbg !1804
  br i1 %cmp59, label %if.then.60, label %if.else.61, !dbg !1805

if.then.60:                                       ; preds = %do.body.55
  br label %if.end.64, !dbg !1806

if.else.61:                                       ; preds = %do.body.55
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !1808, !tbaa !1045
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !1810
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !1810, !tbaa !1130
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !1811
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !1811, !tbaa !1180
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp56, align 8, !dbg !1812, !tbaa !1045
  call void %64(%struct._object* %65), !dbg !1813
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.60
  %66 = bitcast %struct._object** %_py_decref_tmp56 to i8*, !dbg !1814
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !1814
  br label %do.cond.65, !dbg !1815

do.cond.65:                                       ; preds = %if.end.64
  br label %do.end.66, !dbg !1816

do.end.66:                                        ; preds = %do.cond.65
  store %struct._object* null, %struct._object** %retval, !dbg !1818
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1818

cleanup:                                          ; preds = %do.end.66, %if.end.54, %if.then.9, %if.then
  %67 = bitcast %struct._object** %wr to i8*, !dbg !1819
  call void @llvm.lifetime.end(i64 8, i8* %67) #1, !dbg !1819
  %68 = bitcast %struct.localobject** %self to i8*, !dbg !1819
  call void @llvm.lifetime.end(i64 8, i8* %68) #1, !dbg !1819
  %69 = load %struct._object*, %struct._object** %retval, !dbg !1819
  ret %struct._object* %69, !dbg !1819
}

declare void @PyObject_GC_UnTrack(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @_ldict(%struct.localobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.localobject*, align 8
  %tdict = alloca %struct._object*, align 8
  %ldict = alloca %struct._object*, align 8
  %dummy = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localobject** %self.addr, metadata !516, metadata !1019), !dbg !1820
  %0 = bitcast %struct._object** %tdict to i8*, !dbg !1821
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1821
  call void @llvm.dbg.declare(metadata %struct._object** %tdict, metadata !517, metadata !1019), !dbg !1822
  %1 = bitcast %struct._object** %ldict to i8*, !dbg !1821
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1821
  call void @llvm.dbg.declare(metadata %struct._object** %ldict, metadata !518, metadata !1019), !dbg !1823
  %2 = bitcast %struct._object** %dummy to i8*, !dbg !1821
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1821
  call void @llvm.dbg.declare(metadata %struct._object** %dummy, metadata !519, metadata !1019), !dbg !1824
  %call = call %struct._object* @PyThreadState_GetDict(), !dbg !1825
  store %struct._object* %call, %struct._object** %tdict, align 8, !dbg !1826, !tbaa !1045
  %3 = load %struct._object*, %struct._object** %tdict, align 8, !dbg !1827, !tbaa !1045
  %cmp = icmp eq %struct._object* %3, null, !dbg !1829
  br i1 %cmp, label %if.then, label %if.end, !dbg !1830

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1831, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0)), !dbg !1833
  store %struct._object* null, %struct._object** %retval, !dbg !1834
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1834

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** %tdict, align 8, !dbg !1835, !tbaa !1045
  %6 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1836, !tbaa !1045
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %6, i32 0, i32 1, !dbg !1837
  %7 = load %struct._object*, %struct._object** %key, align 8, !dbg !1837, !tbaa !1158
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %5, %struct._object* %7), !dbg !1838
  store %struct._object* %call1, %struct._object** %dummy, align 8, !dbg !1839, !tbaa !1045
  %8 = load %struct._object*, %struct._object** %dummy, align 8, !dbg !1840, !tbaa !1045
  %cmp2 = icmp eq %struct._object* %8, null, !dbg !1842
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1843

if.then.3:                                        ; preds = %if.end
  %9 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1844, !tbaa !1045
  %call4 = call %struct._object* @_local_create_dummy(%struct.localobject* %9), !dbg !1846
  store %struct._object* %call4, %struct._object** %ldict, align 8, !dbg !1847, !tbaa !1045
  %10 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1848, !tbaa !1045
  %cmp5 = icmp eq %struct._object* %10, null, !dbg !1850
  br i1 %cmp5, label %if.then.6, label %if.end.7, !dbg !1851

if.then.6:                                        ; preds = %if.then.3
  store %struct._object* null, %struct._object** %retval, !dbg !1852
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1852

if.end.7:                                         ; preds = %if.then.3
  %11 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1853, !tbaa !1045
  %12 = bitcast %struct.localobject* %11 to %struct._object*, !dbg !1855
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1, !dbg !1856
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1856, !tbaa !1130
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 35, !dbg !1857
  %14 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8, !dbg !1857, !tbaa !1643
  %15 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBaseObject_Type, i32 0, i32 35), align 8, !dbg !1858, !tbaa !1643
  %cmp8 = icmp ne i32 (%struct._object*, %struct._object*, %struct._object*)* %14, %15, !dbg !1859
  br i1 %cmp8, label %land.lhs.true, label %if.end.16, !dbg !1860

land.lhs.true:                                    ; preds = %if.end.7
  %16 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1861, !tbaa !1045
  %17 = bitcast %struct.localobject* %16 to %struct._object*, !dbg !1862
  %ob_type9 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !1863
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type9, align 8, !dbg !1863, !tbaa !1130
  %tp_init10 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 35, !dbg !1864
  %19 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init10, align 8, !dbg !1864, !tbaa !1643
  %20 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1865, !tbaa !1045
  %21 = bitcast %struct.localobject* %20 to %struct._object*, !dbg !1866
  %22 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1867, !tbaa !1045
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %22, i32 0, i32 2, !dbg !1868
  %23 = load %struct._object*, %struct._object** %args, align 8, !dbg !1868, !tbaa !1322
  %24 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1869, !tbaa !1045
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %24, i32 0, i32 3, !dbg !1870
  %25 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1870, !tbaa !1351
  %call11 = call i32 %19(%struct._object* %21, %struct._object* %23, %struct._object* %25), !dbg !1871
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1872
  br i1 %cmp12, label %if.then.13, label %if.end.16, !dbg !1873

if.then.13:                                       ; preds = %land.lhs.true
  %26 = load %struct._object*, %struct._object** %tdict, align 8, !dbg !1874, !tbaa !1045
  %27 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1876, !tbaa !1045
  %key14 = getelementptr inbounds %struct.localobject, %struct.localobject* %27, i32 0, i32 1, !dbg !1877
  %28 = load %struct._object*, %struct._object** %key14, align 8, !dbg !1877, !tbaa !1158
  %call15 = call i32 @PyDict_DelItem(%struct._object* %26, %struct._object* %28), !dbg !1878
  store %struct._object* null, %struct._object** %retval, !dbg !1879
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1879

if.end.16:                                        ; preds = %land.lhs.true, %if.end.7
  br label %if.end.17, !dbg !1880

if.else:                                          ; preds = %if.end
  %29 = load %struct._object*, %struct._object** %dummy, align 8, !dbg !1881, !tbaa !1045
  %30 = bitcast %struct._object* %29 to %struct.localdummyobject*, !dbg !1883
  %localdict = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %30, i32 0, i32 1, !dbg !1884
  %31 = load %struct._object*, %struct._object** %localdict, align 8, !dbg !1884, !tbaa !1885
  store %struct._object* %31, %struct._object** %ldict, align 8, !dbg !1886, !tbaa !1045
  br label %if.end.17

if.end.17:                                        ; preds = %if.else, %if.end.16
  %32 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1887, !tbaa !1045
  store %struct._object* %32, %struct._object** %retval, !dbg !1888
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1888

cleanup:                                          ; preds = %if.end.17, %if.then.13, %if.then.6, %if.then
  %33 = bitcast %struct._object** %dummy to i8*, !dbg !1889
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !1889
  %34 = bitcast %struct._object** %ldict to i8*, !dbg !1889
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1889
  %35 = bitcast %struct._object** %tdict to i8*, !dbg !1889
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !1889
  %36 = load %struct._object*, %struct._object** %retval, !dbg !1889
  ret %struct._object* %36, !dbg !1889
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyThreadState_GetDict() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

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
  %_py_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_xdecref_tmp80 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %_py_xdecref_tmp99 = alloca %struct._object*, align 8
  %_py_decref_tmp103 = alloca %struct._object*, align 8
  store %struct.localobject* %self, %struct.localobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.localobject** %self.addr, metadata !522, metadata !1019), !dbg !1890
  %0 = bitcast %struct._object** %tdict to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1891
  call void @llvm.dbg.declare(metadata %struct._object** %tdict, metadata !523, metadata !1019), !dbg !1892
  %1 = bitcast %struct._object** %ldict to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1891
  call void @llvm.dbg.declare(metadata %struct._object** %ldict, metadata !524, metadata !1019), !dbg !1893
  store %struct._object* null, %struct._object** %ldict, align 8, !dbg !1893, !tbaa !1045
  %2 = bitcast %struct._object** %wr to i8*, !dbg !1891
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1891
  call void @llvm.dbg.declare(metadata %struct._object** %wr, metadata !525, metadata !1019), !dbg !1894
  store %struct._object* null, %struct._object** %wr, align 8, !dbg !1894, !tbaa !1045
  %3 = bitcast %struct.localdummyobject** %dummy to i8*, !dbg !1895
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !1895
  call void @llvm.dbg.declare(metadata %struct.localdummyobject** %dummy, metadata !526, metadata !1019), !dbg !1896
  store %struct.localdummyobject* null, %struct.localdummyobject** %dummy, align 8, !dbg !1896, !tbaa !1045
  %4 = bitcast i32* %r to i8*, !dbg !1897
  call void @llvm.lifetime.start(i64 4, i8* %4) #1, !dbg !1897
  call void @llvm.dbg.declare(metadata i32* %r, metadata !527, metadata !1019), !dbg !1898
  %call = call %struct._object* @PyThreadState_GetDict(), !dbg !1899
  store %struct._object* %call, %struct._object** %tdict, align 8, !dbg !1900, !tbaa !1045
  %5 = load %struct._object*, %struct._object** %tdict, align 8, !dbg !1901, !tbaa !1045
  %cmp = icmp eq %struct._object* %5, null, !dbg !1903
  br i1 %cmp, label %if.then, label %if.end, !dbg !1904

if.then:                                          ; preds = %entry
  %6 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1905, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i32 0, i32 0)), !dbg !1907
  br label %err, !dbg !1908

if.end:                                           ; preds = %entry
  %call1 = call %struct._object* @PyDict_New(), !dbg !1909
  store %struct._object* %call1, %struct._object** %ldict, align 8, !dbg !1910, !tbaa !1045
  %7 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1911, !tbaa !1045
  %cmp2 = icmp eq %struct._object* %7, null, !dbg !1913
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1914

if.then.3:                                        ; preds = %if.end
  br label %err, !dbg !1915

if.end.4:                                         ; preds = %if.end
  %8 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localdummytype, i32 0, i32 36), align 8, !dbg !1916, !tbaa !1665
  %call5 = call %struct._object* %8(%struct._typeobject* @localdummytype, i64 0), !dbg !1917
  %9 = bitcast %struct._object* %call5 to %struct.localdummyobject*, !dbg !1918
  store %struct.localdummyobject* %9, %struct.localdummyobject** %dummy, align 8, !dbg !1919, !tbaa !1045
  %10 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8, !dbg !1920, !tbaa !1045
  %cmp6 = icmp eq %struct.localdummyobject* %10, null, !dbg !1922
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !1923

if.then.7:                                        ; preds = %if.end.4
  br label %err, !dbg !1924

if.end.8:                                         ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1925, !tbaa !1045
  %12 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8, !dbg !1926, !tbaa !1045
  %localdict = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %12, i32 0, i32 1, !dbg !1927
  store %struct._object* %11, %struct._object** %localdict, align 8, !dbg !1928, !tbaa !1885
  %13 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8, !dbg !1929, !tbaa !1045
  %14 = bitcast %struct.localdummyobject* %13 to %struct._object*, !dbg !1930
  %15 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1931, !tbaa !1045
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %15, i32 0, i32 6, !dbg !1932
  %16 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1932, !tbaa !1547
  %call9 = call %struct._object* @PyWeakref_NewRef(%struct._object* %14, %struct._object* %16), !dbg !1933
  store %struct._object* %call9, %struct._object** %wr, align 8, !dbg !1934, !tbaa !1045
  %17 = load %struct._object*, %struct._object** %wr, align 8, !dbg !1935, !tbaa !1045
  %cmp10 = icmp eq %struct._object* %17, null, !dbg !1937
  br i1 %cmp10, label %if.then.11, label %if.end.12, !dbg !1938

if.then.11:                                       ; preds = %if.end.8
  br label %err, !dbg !1939

if.end.12:                                        ; preds = %if.end.8
  %18 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1940, !tbaa !1045
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %18, i32 0, i32 5, !dbg !1941
  %19 = load %struct._object*, %struct._object** %dummies, align 8, !dbg !1941, !tbaa !1380
  %20 = load %struct._object*, %struct._object** %wr, align 8, !dbg !1942, !tbaa !1045
  %21 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !1943, !tbaa !1045
  %call13 = call i32 @PyDict_SetItem(%struct._object* %19, %struct._object* %20, %struct._object* %21), !dbg !1944
  store i32 %call13, i32* %r, align 4, !dbg !1945, !tbaa !1221
  %22 = load i32, i32* %r, align 4, !dbg !1946, !tbaa !1221
  %cmp14 = icmp slt i32 %22, 0, !dbg !1948
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !1949

if.then.15:                                       ; preds = %if.end.12
  br label %err, !dbg !1950

if.end.16:                                        ; preds = %if.end.12
  br label %do.body, !dbg !1951

do.body:                                          ; preds = %if.end.16
  %23 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1952
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !1952
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp, metadata !528, metadata !1019), !dbg !1954
  %24 = load %struct._object*, %struct._object** %wr, align 8, !dbg !1955, !tbaa !1045
  store %struct._object* %24, %struct._object** %_py_tmp, align 8, !dbg !1954, !tbaa !1045
  %25 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1956, !tbaa !1045
  %cmp17 = icmp ne %struct._object* %25, null, !dbg !1957
  br i1 %cmp17, label %if.then.18, label %if.end.23, !dbg !1958

if.then.18:                                       ; preds = %do.body
  store %struct._object* null, %struct._object** %wr, align 8, !dbg !1959, !tbaa !1045
  br label %do.body.19, !dbg !1961

do.body.19:                                       ; preds = %if.then.18
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1962
  call void @llvm.lifetime.start(i64 8, i8* %26) #1, !dbg !1962
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !530, metadata !1019), !dbg !1964
  %27 = load %struct._object*, %struct._object** %_py_tmp, align 8, !dbg !1965, !tbaa !1045
  store %struct._object* %27, %struct._object** %_py_decref_tmp, align 8, !dbg !1964, !tbaa !1045
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1966, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0, !dbg !1968
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !1969, !tbaa !1075
  %dec = add i64 %29, -1, !dbg !1969
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1969, !tbaa !1075
  %cmp20 = icmp ne i64 %dec, 0, !dbg !1970
  br i1 %cmp20, label %if.then.21, label %if.else, !dbg !1971

if.then.21:                                       ; preds = %do.body.19
  br label %if.end.22, !dbg !1972

if.else:                                          ; preds = %do.body.19
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1974, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1, !dbg !1976
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1976, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4, !dbg !1977
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1977, !tbaa !1180
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !1978, !tbaa !1045
  call void %32(%struct._object* %33), !dbg !1979
  br label %if.end.22

if.end.22:                                        ; preds = %if.else, %if.then.21
  %34 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !1980
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !1980
  br label %do.cond, !dbg !1982

do.cond:                                          ; preds = %if.end.22
  br label %do.end, !dbg !1983

do.end:                                           ; preds = %do.cond
  br label %if.end.23, !dbg !1985

if.end.23:                                        ; preds = %do.end, %do.body
  %35 = bitcast %struct._object** %_py_tmp to i8*, !dbg !1987
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !1987
  br label %do.cond.24, !dbg !1990

do.cond.24:                                       ; preds = %if.end.23
  br label %do.end.25, !dbg !1991

do.end.25:                                        ; preds = %do.cond.24
  %36 = load %struct._object*, %struct._object** %tdict, align 8, !dbg !1993, !tbaa !1045
  %37 = load %struct.localobject*, %struct.localobject** %self.addr, align 8, !dbg !1994, !tbaa !1045
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %37, i32 0, i32 1, !dbg !1995
  %38 = load %struct._object*, %struct._object** %key, align 8, !dbg !1995, !tbaa !1158
  %39 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8, !dbg !1996, !tbaa !1045
  %40 = bitcast %struct.localdummyobject* %39 to %struct._object*, !dbg !1997
  %call26 = call i32 @PyDict_SetItem(%struct._object* %36, %struct._object* %38, %struct._object* %40), !dbg !1998
  store i32 %call26, i32* %r, align 4, !dbg !1999, !tbaa !1221
  %41 = load i32, i32* %r, align 4, !dbg !2000, !tbaa !1221
  %cmp27 = icmp slt i32 %41, 0, !dbg !2002
  br i1 %cmp27, label %if.then.28, label %if.end.29, !dbg !2003

if.then.28:                                       ; preds = %do.end.25
  br label %err, !dbg !2004

if.end.29:                                        ; preds = %do.end.25
  br label %do.body.30, !dbg !2005

do.body.30:                                       ; preds = %if.end.29
  %42 = bitcast %struct._object** %_py_tmp31 to i8*, !dbg !2006
  call void @llvm.lifetime.start(i64 8, i8* %42) #1, !dbg !2006
  call void @llvm.dbg.declare(metadata %struct._object** %_py_tmp31, metadata !534, metadata !1019), !dbg !2008
  %43 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8, !dbg !2009, !tbaa !1045
  %44 = bitcast %struct.localdummyobject* %43 to %struct._object*, !dbg !2010
  store %struct._object* %44, %struct._object** %_py_tmp31, align 8, !dbg !2008, !tbaa !1045
  %45 = load %struct._object*, %struct._object** %_py_tmp31, align 8, !dbg !2011, !tbaa !1045
  %cmp32 = icmp ne %struct._object* %45, null, !dbg !2012
  br i1 %cmp32, label %if.then.33, label %if.end.46, !dbg !2013

if.then.33:                                       ; preds = %do.body.30
  store %struct.localdummyobject* null, %struct.localdummyobject** %dummy, align 8, !dbg !2014, !tbaa !1045
  br label %do.body.34, !dbg !2016

do.body.34:                                       ; preds = %if.then.33
  %46 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !2017
  call void @llvm.lifetime.start(i64 8, i8* %46) #1, !dbg !2017
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !536, metadata !1019), !dbg !2019
  %47 = load %struct._object*, %struct._object** %_py_tmp31, align 8, !dbg !2020, !tbaa !1045
  store %struct._object* %47, %struct._object** %_py_decref_tmp35, align 8, !dbg !2019, !tbaa !1045
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2021, !tbaa !1045
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 0, !dbg !2023
  %49 = load i64, i64* %ob_refcnt36, align 8, !dbg !2024, !tbaa !1075
  %dec37 = add i64 %49, -1, !dbg !2024
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !2024, !tbaa !1075
  %cmp38 = icmp ne i64 %dec37, 0, !dbg !2025
  br i1 %cmp38, label %if.then.39, label %if.else.40, !dbg !2026

if.then.39:                                       ; preds = %do.body.34
  br label %if.end.43, !dbg !2027

if.else.40:                                       ; preds = %do.body.34
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2029, !tbaa !1045
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 1, !dbg !2031
  %51 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !2031, !tbaa !1130
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %51, i32 0, i32 4, !dbg !2032
  %52 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !2032, !tbaa !1180
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !2033, !tbaa !1045
  call void %52(%struct._object* %53), !dbg !2034
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.39
  %54 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !2035
  call void @llvm.lifetime.end(i64 8, i8* %54) #1, !dbg !2035
  br label %do.cond.44, !dbg !2037

do.cond.44:                                       ; preds = %if.end.43
  br label %do.end.45, !dbg !2038

do.end.45:                                        ; preds = %do.cond.44
  br label %if.end.46, !dbg !2040

if.end.46:                                        ; preds = %do.end.45, %do.body.30
  %55 = bitcast %struct._object** %_py_tmp31 to i8*, !dbg !2042
  call void @llvm.lifetime.end(i64 8, i8* %55) #1, !dbg !2042
  br label %do.cond.47, !dbg !2043

do.cond.47:                                       ; preds = %if.end.46
  br label %do.end.48, !dbg !2044

do.end.48:                                        ; preds = %do.cond.47
  br label %do.body.49, !dbg !2046

do.body.49:                                       ; preds = %do.end.48
  %56 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !2047
  call void @llvm.lifetime.start(i64 8, i8* %56) #1, !dbg !2047
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp50, metadata !540, metadata !1019), !dbg !2049
  %57 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !2050, !tbaa !1045
  store %struct._object* %57, %struct._object** %_py_decref_tmp50, align 8, !dbg !2049, !tbaa !1045
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2051, !tbaa !1045
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 0, !dbg !2053
  %59 = load i64, i64* %ob_refcnt51, align 8, !dbg !2054, !tbaa !1075
  %dec52 = add i64 %59, -1, !dbg !2054
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !2054, !tbaa !1075
  %cmp53 = icmp ne i64 %dec52, 0, !dbg !2055
  br i1 %cmp53, label %if.then.54, label %if.else.55, !dbg !2056

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58, !dbg !2057

if.else.55:                                       ; preds = %do.body.49
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2059, !tbaa !1045
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 1, !dbg !2061
  %61 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !2061, !tbaa !1130
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %61, i32 0, i32 4, !dbg !2062
  %62 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !2062, !tbaa !1180
  %63 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8, !dbg !2063, !tbaa !1045
  call void %62(%struct._object* %63), !dbg !2064
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  %64 = bitcast %struct._object** %_py_decref_tmp50 to i8*, !dbg !2065
  call void @llvm.lifetime.end(i64 8, i8* %64) #1, !dbg !2065
  br label %do.cond.59, !dbg !2067

do.cond.59:                                       ; preds = %if.end.58
  br label %do.end.60, !dbg !2068

do.end.60:                                        ; preds = %do.cond.59
  %65 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !2070, !tbaa !1045
  store %struct._object* %65, %struct._object** %retval, !dbg !2071
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2071

err:                                              ; preds = %if.then.28, %if.then.15, %if.then.11, %if.then.7, %if.then.3, %if.then
  br label %do.body.61, !dbg !2072

do.body.61:                                       ; preds = %err
  %66 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2073
  call void @llvm.lifetime.start(i64 8, i8* %66) #1, !dbg !2073
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !542, metadata !1019), !dbg !2075
  %67 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !2076, !tbaa !1045
  store %struct._object* %67, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2075, !tbaa !1045
  %68 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2077, !tbaa !1045
  %cmp62 = icmp ne %struct._object* %68, null, !dbg !2078
  br i1 %cmp62, label %if.then.63, label %if.end.76, !dbg !2079

if.then.63:                                       ; preds = %do.body.61
  br label %do.body.64, !dbg !2080

do.body.64:                                       ; preds = %if.then.63
  %69 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !2082
  call void @llvm.lifetime.start(i64 8, i8* %69) #1, !dbg !2082
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp65, metadata !544, metadata !1019), !dbg !2084
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !2085, !tbaa !1045
  store %struct._object* %70, %struct._object** %_py_decref_tmp65, align 8, !dbg !2084, !tbaa !1045
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !2086, !tbaa !1045
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0, !dbg !2088
  %72 = load i64, i64* %ob_refcnt66, align 8, !dbg !2089, !tbaa !1075
  %dec67 = add i64 %72, -1, !dbg !2089
  store i64 %dec67, i64* %ob_refcnt66, align 8, !dbg !2089, !tbaa !1075
  %cmp68 = icmp ne i64 %dec67, 0, !dbg !2090
  br i1 %cmp68, label %if.then.69, label %if.else.70, !dbg !2091

if.then.69:                                       ; preds = %do.body.64
  br label %if.end.73, !dbg !2092

if.else.70:                                       ; preds = %do.body.64
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !2094, !tbaa !1045
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1, !dbg !2096
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8, !dbg !2096, !tbaa !1130
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4, !dbg !2097
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8, !dbg !2097, !tbaa !1180
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8, !dbg !2098, !tbaa !1045
  call void %75(%struct._object* %76), !dbg !2099
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  %77 = bitcast %struct._object** %_py_decref_tmp65 to i8*, !dbg !2100
  call void @llvm.lifetime.end(i64 8, i8* %77) #1, !dbg !2100
  br label %do.cond.74, !dbg !2102

do.cond.74:                                       ; preds = %if.end.73
  br label %do.end.75, !dbg !2103

do.end.75:                                        ; preds = %do.cond.74
  br label %if.end.76, !dbg !2105

if.end.76:                                        ; preds = %do.end.75, %do.body.61
  %78 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !2107
  call void @llvm.lifetime.end(i64 8, i8* %78) #1, !dbg !2107
  br label %do.cond.77, !dbg !2108

do.cond.77:                                       ; preds = %if.end.76
  br label %do.end.78, !dbg !2109

do.end.78:                                        ; preds = %do.cond.77
  br label %do.body.79, !dbg !2111

do.body.79:                                       ; preds = %do.end.78
  %79 = bitcast %struct._object** %_py_xdecref_tmp80 to i8*, !dbg !2112
  call void @llvm.lifetime.start(i64 8, i8* %79) #1, !dbg !2112
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp80, metadata !547, metadata !1019), !dbg !2114
  %80 = load %struct._object*, %struct._object** %wr, align 8, !dbg !2115, !tbaa !1045
  store %struct._object* %80, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !2114, !tbaa !1045
  %81 = load %struct._object*, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !2116, !tbaa !1045
  %cmp81 = icmp ne %struct._object* %81, null, !dbg !2117
  br i1 %cmp81, label %if.then.82, label %if.end.95, !dbg !2118

if.then.82:                                       ; preds = %do.body.79
  br label %do.body.83, !dbg !2119

do.body.83:                                       ; preds = %if.then.82
  %82 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2121
  call void @llvm.lifetime.start(i64 8, i8* %82) #1, !dbg !2121
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp84, metadata !549, metadata !1019), !dbg !2123
  %83 = load %struct._object*, %struct._object** %_py_xdecref_tmp80, align 8, !dbg !2124, !tbaa !1045
  store %struct._object* %83, %struct._object** %_py_decref_tmp84, align 8, !dbg !2123, !tbaa !1045
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2125, !tbaa !1045
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %84, i32 0, i32 0, !dbg !2127
  %85 = load i64, i64* %ob_refcnt85, align 8, !dbg !2128, !tbaa !1075
  %dec86 = add i64 %85, -1, !dbg !2128
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !2128, !tbaa !1075
  %cmp87 = icmp ne i64 %dec86, 0, !dbg !2129
  br i1 %cmp87, label %if.then.88, label %if.else.89, !dbg !2130

if.then.88:                                       ; preds = %do.body.83
  br label %if.end.92, !dbg !2131

if.else.89:                                       ; preds = %do.body.83
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2133, !tbaa !1045
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 1, !dbg !2135
  %87 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !2135, !tbaa !1130
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %87, i32 0, i32 4, !dbg !2136
  %88 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !2136, !tbaa !1180
  %89 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8, !dbg !2137, !tbaa !1045
  call void %88(%struct._object* %89), !dbg !2138
  br label %if.end.92

if.end.92:                                        ; preds = %if.else.89, %if.then.88
  %90 = bitcast %struct._object** %_py_decref_tmp84 to i8*, !dbg !2139
  call void @llvm.lifetime.end(i64 8, i8* %90) #1, !dbg !2139
  br label %do.cond.93, !dbg !2141

do.cond.93:                                       ; preds = %if.end.92
  br label %do.end.94, !dbg !2142

do.end.94:                                        ; preds = %do.cond.93
  br label %if.end.95, !dbg !2144

if.end.95:                                        ; preds = %do.end.94, %do.body.79
  %91 = bitcast %struct._object** %_py_xdecref_tmp80 to i8*, !dbg !2146
  call void @llvm.lifetime.end(i64 8, i8* %91) #1, !dbg !2146
  br label %do.cond.96, !dbg !2147

do.cond.96:                                       ; preds = %if.end.95
  br label %do.end.97, !dbg !2148

do.end.97:                                        ; preds = %do.cond.96
  br label %do.body.98, !dbg !2150

do.body.98:                                       ; preds = %do.end.97
  %92 = bitcast %struct._object** %_py_xdecref_tmp99 to i8*, !dbg !2151
  call void @llvm.lifetime.start(i64 8, i8* %92) #1, !dbg !2151
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp99, metadata !552, metadata !1019), !dbg !2153
  %93 = load %struct.localdummyobject*, %struct.localdummyobject** %dummy, align 8, !dbg !2154, !tbaa !1045
  %94 = bitcast %struct.localdummyobject* %93 to %struct._object*, !dbg !2155
  store %struct._object* %94, %struct._object** %_py_xdecref_tmp99, align 8, !dbg !2153, !tbaa !1045
  %95 = load %struct._object*, %struct._object** %_py_xdecref_tmp99, align 8, !dbg !2156, !tbaa !1045
  %cmp100 = icmp ne %struct._object* %95, null, !dbg !2157
  br i1 %cmp100, label %if.then.101, label %if.end.114, !dbg !2158

if.then.101:                                      ; preds = %do.body.98
  br label %do.body.102, !dbg !2159

do.body.102:                                      ; preds = %if.then.101
  %96 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !2161
  call void @llvm.lifetime.start(i64 8, i8* %96) #1, !dbg !2161
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp103, metadata !554, metadata !1019), !dbg !2163
  %97 = load %struct._object*, %struct._object** %_py_xdecref_tmp99, align 8, !dbg !2164, !tbaa !1045
  store %struct._object* %97, %struct._object** %_py_decref_tmp103, align 8, !dbg !2163, !tbaa !1045
  %98 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2165, !tbaa !1045
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0, !dbg !2167
  %99 = load i64, i64* %ob_refcnt104, align 8, !dbg !2168, !tbaa !1075
  %dec105 = add i64 %99, -1, !dbg !2168
  store i64 %dec105, i64* %ob_refcnt104, align 8, !dbg !2168, !tbaa !1075
  %cmp106 = icmp ne i64 %dec105, 0, !dbg !2169
  br i1 %cmp106, label %if.then.107, label %if.else.108, !dbg !2170

if.then.107:                                      ; preds = %do.body.102
  br label %if.end.111, !dbg !2171

if.else.108:                                      ; preds = %do.body.102
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2173, !tbaa !1045
  %ob_type109 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1, !dbg !2175
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type109, align 8, !dbg !2175, !tbaa !1130
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 4, !dbg !2176
  %102 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8, !dbg !2176, !tbaa !1180
  %103 = load %struct._object*, %struct._object** %_py_decref_tmp103, align 8, !dbg !2177, !tbaa !1045
  call void %102(%struct._object* %103), !dbg !2178
  br label %if.end.111

if.end.111:                                       ; preds = %if.else.108, %if.then.107
  %104 = bitcast %struct._object** %_py_decref_tmp103 to i8*, !dbg !2179
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !2179
  br label %do.cond.112, !dbg !2181

do.cond.112:                                      ; preds = %if.end.111
  br label %do.end.113, !dbg !2182

do.end.113:                                       ; preds = %do.cond.112
  br label %if.end.114, !dbg !2184

if.end.114:                                       ; preds = %do.end.113, %do.body.98
  %105 = bitcast %struct._object** %_py_xdecref_tmp99 to i8*, !dbg !2186
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !2186
  br label %do.cond.115, !dbg !2187

do.cond.115:                                      ; preds = %if.end.114
  br label %do.end.116, !dbg !2188

do.end.116:                                       ; preds = %do.cond.115
  store %struct._object* null, %struct._object** %retval, !dbg !2190
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2190

cleanup:                                          ; preds = %do.end.116, %do.end.60
  %106 = bitcast i32* %r to i8*, !dbg !2191
  call void @llvm.lifetime.end(i64 4, i8* %106) #1, !dbg !2191
  %107 = bitcast %struct.localdummyobject** %dummy to i8*, !dbg !2191
  call void @llvm.lifetime.end(i64 8, i8* %107) #1, !dbg !2191
  %108 = bitcast %struct._object** %wr to i8*, !dbg !2191
  call void @llvm.lifetime.end(i64 8, i8* %108) #1, !dbg !2191
  %109 = bitcast %struct._object** %ldict to i8*, !dbg !2191
  call void @llvm.lifetime.end(i64 8, i8* %109) #1, !dbg !2191
  %110 = bitcast %struct._object** %tdict to i8*, !dbg !2191
  call void @llvm.lifetime.end(i64 8, i8* %110) #1, !dbg !2191
  %111 = load %struct._object*, %struct._object** %retval, !dbg !2191
  ret %struct._object* %111, !dbg !2191
}

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyDict_New() #3

declare %struct._object* @PyWeakref_NewRef(%struct._object*, %struct._object*) #3

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #3

declare i32 @_PyObject_GenericSetAttrWithDict(%struct._object*, %struct._object*, %struct._object*, %struct._object*) #3

declare %struct._ts* @PyThreadState_Get() #3

declare %struct._ts* @PyInterpreterState_ThreadHead(%struct._is*) #3

declare %struct._ts* @PyThreadState_Next(%struct._ts*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @_localdummy_destroyed(%struct._object* %localweakref, %struct._object* %dummyweakref) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %localweakref.addr = alloca %struct._object*, align 8
  %dummyweakref.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %self = alloca %struct.localobject*, align 8
  %cleanup.dest.slot = alloca i32
  %ldict = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %localweakref, %struct._object** %localweakref.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %localweakref.addr, metadata !636, metadata !1019), !dbg !2192
  store %struct._object* %dummyweakref, %struct._object** %dummyweakref.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %dummyweakref.addr, metadata !637, metadata !1019), !dbg !2193
  %0 = bitcast %struct._object** %obj to i8*, !dbg !2194
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2194
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !638, metadata !1019), !dbg !2195
  %1 = bitcast %struct.localobject** %self to i8*, !dbg !2196
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2196
  call void @llvm.dbg.declare(metadata %struct.localobject** %self, metadata !639, metadata !1019), !dbg !2197
  %2 = load %struct._object*, %struct._object** %localweakref.addr, align 8, !dbg !2198, !tbaa !1045
  %3 = bitcast %struct._object* %2 to %struct._PyWeakReference*, !dbg !2199
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %3, i32 0, i32 1, !dbg !2200
  %4 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !2200, !tbaa !2201
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0, !dbg !2203
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !2203, !tbaa !1075
  %cmp = icmp sgt i64 %5, 0, !dbg !2204
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2205

cond.true:                                        ; preds = %entry
  %6 = load %struct._object*, %struct._object** %localweakref.addr, align 8, !dbg !2206, !tbaa !1045
  %7 = bitcast %struct._object* %6 to %struct._PyWeakReference*, !dbg !2208
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %7, i32 0, i32 1, !dbg !2209
  %8 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !2209, !tbaa !2201
  br label %cond.end, !dbg !2205

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2210

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %8, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !2205
  store %struct._object* %cond, %struct._object** %obj, align 8, !dbg !2212, !tbaa !1045
  %9 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2215, !tbaa !1045
  %cmp2 = icmp eq %struct._object* %9, @_Py_NoneStruct, !dbg !2217
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2218

if.then:                                          ; preds = %cond.end
  %10 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2219, !tbaa !1075
  %inc = add i64 %10, 1, !dbg !2219
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2219, !tbaa !1075
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2220
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2220

if.end:                                           ; preds = %cond.end
  %11 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2221, !tbaa !1045
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !2222
  %12 = load i64, i64* %ob_refcnt3, align 8, !dbg !2223, !tbaa !1075
  %inc4 = add i64 %12, 1, !dbg !2223
  store i64 %inc4, i64* %ob_refcnt3, align 8, !dbg !2223, !tbaa !1075
  %13 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2224, !tbaa !1045
  %14 = bitcast %struct._object* %13 to %struct.localobject*, !dbg !2225
  store %struct.localobject* %14, %struct.localobject** %self, align 8, !dbg !2226, !tbaa !1045
  %15 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !2227, !tbaa !1045
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %15, i32 0, i32 5, !dbg !2228
  %16 = load %struct._object*, %struct._object** %dummies, align 8, !dbg !2228, !tbaa !1380
  %cmp5 = icmp ne %struct._object* %16, null, !dbg !2229
  br i1 %cmp5, label %if.then.6, label %if.end.16, !dbg !2230

if.then.6:                                        ; preds = %if.end
  %17 = bitcast %struct._object** %ldict to i8*, !dbg !2231
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !2231
  call void @llvm.dbg.declare(metadata %struct._object** %ldict, metadata !640, metadata !1019), !dbg !2232
  %18 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !2233, !tbaa !1045
  %dummies7 = getelementptr inbounds %struct.localobject, %struct.localobject* %18, i32 0, i32 5, !dbg !2234
  %19 = load %struct._object*, %struct._object** %dummies7, align 8, !dbg !2234, !tbaa !1380
  %20 = load %struct._object*, %struct._object** %dummyweakref.addr, align 8, !dbg !2235, !tbaa !1045
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %19, %struct._object* %20), !dbg !2236
  store %struct._object* %call, %struct._object** %ldict, align 8, !dbg !2237, !tbaa !1045
  %21 = load %struct._object*, %struct._object** %ldict, align 8, !dbg !2238, !tbaa !1045
  %cmp8 = icmp ne %struct._object* %21, null, !dbg !2240
  br i1 %cmp8, label %if.then.9, label %if.end.12, !dbg !2241

if.then.9:                                        ; preds = %if.then.6
  %22 = load %struct.localobject*, %struct.localobject** %self, align 8, !dbg !2242, !tbaa !1045
  %dummies10 = getelementptr inbounds %struct.localobject, %struct.localobject* %22, i32 0, i32 5, !dbg !2244
  %23 = load %struct._object*, %struct._object** %dummies10, align 8, !dbg !2244, !tbaa !1380
  %24 = load %struct._object*, %struct._object** %dummyweakref.addr, align 8, !dbg !2245, !tbaa !1045
  %call11 = call i32 @PyDict_DelItem(%struct._object* %23, %struct._object* %24), !dbg !2246
  br label %if.end.12, !dbg !2247

if.end.12:                                        ; preds = %if.then.9, %if.then.6
  %call13 = call %struct._object* @PyErr_Occurred(), !dbg !2248
  %tobool = icmp ne %struct._object* %call13, null, !dbg !2248
  br i1 %tobool, label %if.then.14, label %if.end.15, !dbg !2250

if.then.14:                                       ; preds = %if.end.12
  %25 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2251, !tbaa !1045
  call void @PyErr_WriteUnraisable(%struct._object* %25), !dbg !2252
  br label %if.end.15, !dbg !2252

if.end.15:                                        ; preds = %if.then.14, %if.end.12
  %26 = bitcast %struct._object** %ldict to i8*, !dbg !2253
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !2253
  br label %if.end.16, !dbg !2254

if.end.16:                                        ; preds = %if.end.15, %if.end
  br label %do.body, !dbg !2255

do.body:                                          ; preds = %if.end.16
  %27 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2256
  call void @llvm.lifetime.start(i64 8, i8* %27) #1, !dbg !2256
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !643, metadata !1019), !dbg !2258
  %28 = load %struct._object*, %struct._object** %obj, align 8, !dbg !2259, !tbaa !1045
  store %struct._object* %28, %struct._object** %_py_decref_tmp, align 8, !dbg !2258, !tbaa !1045
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2260, !tbaa !1045
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0, !dbg !2262
  %30 = load i64, i64* %ob_refcnt17, align 8, !dbg !2263, !tbaa !1075
  %dec = add i64 %30, -1, !dbg !2263
  store i64 %dec, i64* %ob_refcnt17, align 8, !dbg !2263, !tbaa !1075
  %cmp18 = icmp ne i64 %dec, 0, !dbg !2264
  br i1 %cmp18, label %if.then.19, label %if.else, !dbg !2265

if.then.19:                                       ; preds = %do.body
  br label %if.end.20, !dbg !2266

if.else:                                          ; preds = %do.body
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2268, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 1, !dbg !2270
  %32 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2270, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %32, i32 0, i32 4, !dbg !2271
  %33 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2271, !tbaa !1180
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2272, !tbaa !1045
  call void %33(%struct._object* %34), !dbg !2273
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.then.19
  %35 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2274
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !2274
  br label %do.cond, !dbg !2276

do.cond:                                          ; preds = %if.end.20
  br label %do.end, !dbg !2277

do.end:                                           ; preds = %do.cond
  %36 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2279, !tbaa !1075
  %inc21 = add i64 %36, 1, !dbg !2279
  store i64 %inc21, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2279, !tbaa !1075
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2280
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2280

cleanup:                                          ; preds = %do.end, %if.then
  %37 = bitcast %struct.localobject** %self to i8*, !dbg !2281
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !2281
  %38 = bitcast %struct._object** %obj to i8*, !dbg !2281
  call void @llvm.lifetime.end(i64 8, i8* %38) #1, !dbg !2281
  %39 = load %struct._object*, %struct._object** %retval, !dbg !2281
  ret %struct._object* %39, !dbg !2281
}

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @lock_dealloc(%struct.lockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.lockobject*, align 8
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.lockobject** %self.addr, metadata !649, metadata !1019), !dbg !2282
  %0 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2283, !tbaa !1045
  %in_weakreflist = getelementptr inbounds %struct.lockobject, %struct.lockobject* %0, i32 0, i32 2, !dbg !2285
  %1 = load %struct._object*, %struct._object** %in_weakreflist, align 8, !dbg !2285, !tbaa !2286
  %cmp = icmp ne %struct._object* %1, null, !dbg !2288
  br i1 %cmp, label %if.then, label %if.end, !dbg !2289

if.then:                                          ; preds = %entry
  %2 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2290, !tbaa !1045
  %3 = bitcast %struct.lockobject* %2 to %struct._object*, !dbg !2291
  call void @PyObject_ClearWeakRefs(%struct._object* %3), !dbg !2292
  br label %if.end, !dbg !2292

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2293, !tbaa !1045
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %4, i32 0, i32 1, !dbg !2295
  %5 = load i8*, i8** %lock_lock, align 8, !dbg !2295, !tbaa !2296
  %cmp1 = icmp ne i8* %5, null, !dbg !2297
  br i1 %cmp1, label %if.then.2, label %if.end.7, !dbg !2298

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2299, !tbaa !1045
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %6, i32 0, i32 3, !dbg !2302
  %7 = load i8, i8* %locked, align 1, !dbg !2302, !tbaa !2303
  %tobool = icmp ne i8 %7, 0, !dbg !2299
  br i1 %tobool, label %if.then.3, label %if.end.5, !dbg !2304

if.then.3:                                        ; preds = %if.then.2
  %8 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2305, !tbaa !1045
  %lock_lock4 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %8, i32 0, i32 1, !dbg !2306
  %9 = load i8*, i8** %lock_lock4, align 8, !dbg !2306, !tbaa !2296
  call void @PyThread_release_lock(i8* %9), !dbg !2307
  br label %if.end.5, !dbg !2307

if.end.5:                                         ; preds = %if.then.3, %if.then.2
  %10 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2308, !tbaa !1045
  %lock_lock6 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %10, i32 0, i32 1, !dbg !2309
  %11 = load i8*, i8** %lock_lock6, align 8, !dbg !2309, !tbaa !2296
  call void @PyThread_free_lock(i8* %11), !dbg !2310
  br label %if.end.7, !dbg !2311

if.end.7:                                         ; preds = %if.end.5, %if.end
  %12 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2312, !tbaa !1045
  %13 = bitcast %struct.lockobject* %12 to i8*, !dbg !2312
  call void @PyObject_Free(i8* %13), !dbg !2313
  ret void, !dbg !2314
}

declare void @PyThread_release_lock(i8*) #3

declare void @PyThread_free_lock(i8*) #3

declare void @PyObject_Free(i8*) #3

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
  %cleanup.dest.slot = alloca i32
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.lockobject** %self.addr, metadata !654, metadata !1019), !dbg !2315
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !655, metadata !1019), !dbg !2316
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !656, metadata !1019), !dbg !2317
  %0 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !2318
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !2318
  call void @llvm.dbg.declare(metadata [3 x i8*]* %kwlist, metadata !657, metadata !1019), !dbg !2319
  %1 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !2319
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([3 x i8*]* @lock_PyThread_acquire_lock.kwlist to i8*), i64 24, i32 16, i1 false), !dbg !2319
  %2 = bitcast i32* %blocking to i8*, !dbg !2320
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2320
  call void @llvm.dbg.declare(metadata i32* %blocking, metadata !661, metadata !1019), !dbg !2321
  store i32 1, i32* %blocking, align 4, !dbg !2321, !tbaa !1221
  %3 = bitcast double* %timeout to i8*, !dbg !2322
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2322
  call void @llvm.dbg.declare(metadata double* %timeout, metadata !662, metadata !1019), !dbg !2323
  store double -1.000000e+00, double* %timeout, align 8, !dbg !2323, !tbaa !2324
  %4 = bitcast i64* %microseconds to i8*, !dbg !2326
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2326
  call void @llvm.dbg.declare(metadata i64* %microseconds, metadata !663, metadata !1019), !dbg !2327
  %5 = bitcast i32* %r to i8*, !dbg !2328
  call void @llvm.lifetime.start(i64 4, i8* %5) #1, !dbg !2328
  call void @llvm.dbg.declare(metadata i32* %r, metadata !664, metadata !1019), !dbg !2329
  %6 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2330, !tbaa !1045
  %7 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2332, !tbaa !1045
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0, !dbg !2333
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %6, %struct._object* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8** %arraydecay, i32* %blocking, double* %timeout), !dbg !2334
  %tobool = icmp ne i32 %call, 0, !dbg !2334
  br i1 %tobool, label %if.end, label %if.then, !dbg !2335

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2336
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2336

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %blocking, align 4, !dbg !2337, !tbaa !1221
  %tobool1 = icmp ne i32 %8, 0, !dbg !2337
  br i1 %tobool1, label %if.end.3, label %land.lhs.true, !dbg !2339

land.lhs.true:                                    ; preds = %if.end
  %9 = load double, double* %timeout, align 8, !dbg !2340, !tbaa !2324
  %cmp = fcmp une double %9, -1.000000e+00, !dbg !2342
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2343

if.then.2:                                        ; preds = %land.lhs.true
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2344, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i32 0, i32 0)), !dbg !2346
  store %struct._object* null, %struct._object** %retval, !dbg !2347
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2347

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %11 = load double, double* %timeout, align 8, !dbg !2348, !tbaa !2324
  %cmp4 = fcmp olt double %11, 0.000000e+00, !dbg !2350
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.8, !dbg !2351

land.lhs.true.5:                                  ; preds = %if.end.3
  %12 = load double, double* %timeout, align 8, !dbg !2352, !tbaa !2324
  %cmp6 = fcmp une double %12, -1.000000e+00, !dbg !2354
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2355

if.then.7:                                        ; preds = %land.lhs.true.5
  %13 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2356, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0)), !dbg !2358
  store %struct._object* null, %struct._object** %retval, !dbg !2359
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2359

if.end.8:                                         ; preds = %land.lhs.true.5, %if.end.3
  %14 = load i32, i32* %blocking, align 4, !dbg !2360, !tbaa !1221
  %tobool9 = icmp ne i32 %14, 0, !dbg !2360
  br i1 %tobool9, label %if.else, label %if.then.10, !dbg !2362

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %microseconds, align 8, !dbg !2363, !tbaa !2364
  br label %if.end.18, !dbg !2366

if.else:                                          ; preds = %if.end.8
  %15 = load double, double* %timeout, align 8, !dbg !2367, !tbaa !2324
  %cmp11 = fcmp oeq double %15, -1.000000e+00, !dbg !2369
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !2370

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %microseconds, align 8, !dbg !2371, !tbaa !2364
  br label %if.end.17, !dbg !2372

if.else.13:                                       ; preds = %if.else
  %16 = load double, double* %timeout, align 8, !dbg !2373, !tbaa !2324
  %mul = fmul double %16, 1.000000e+06, !dbg !2373
  store double %mul, double* %timeout, align 8, !dbg !2373, !tbaa !2324
  %17 = load double, double* %timeout, align 8, !dbg !2375, !tbaa !2324
  %cmp14 = fcmp oge double %17, 0x43E0000000000000, !dbg !2377
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !2378

if.then.15:                                       ; preds = %if.else.13
  %18 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2379, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0)), !dbg !2381
  store %struct._object* null, %struct._object** %retval, !dbg !2382
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2382

if.end.16:                                        ; preds = %if.else.13
  %19 = load double, double* %timeout, align 8, !dbg !2383, !tbaa !2324
  %conv = fptosi double %19 to i64, !dbg !2384
  store i64 %conv, i64* %microseconds, align 8, !dbg !2385, !tbaa !2364
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %20 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2386, !tbaa !1045
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %20, i32 0, i32 1, !dbg !2387
  %21 = load i8*, i8** %lock_lock, align 8, !dbg !2387, !tbaa !2296
  %22 = load i64, i64* %microseconds, align 8, !dbg !2388, !tbaa !2364
  %call19 = call i32 @acquire_timed(i8* %21, i64 %22), !dbg !2389
  store i32 %call19, i32* %r, align 4, !dbg !2390, !tbaa !2391
  %23 = load i32, i32* %r, align 4, !dbg !2392, !tbaa !2391
  %cmp20 = icmp eq i32 %23, 2, !dbg !2394
  br i1 %cmp20, label %if.then.22, label %if.end.23, !dbg !2395

if.then.22:                                       ; preds = %if.end.18
  store %struct._object* null, %struct._object** %retval, !dbg !2396
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2396

if.end.23:                                        ; preds = %if.end.18
  %24 = load i32, i32* %r, align 4, !dbg !2398, !tbaa !2391
  %cmp24 = icmp eq i32 %24, 1, !dbg !2400
  br i1 %cmp24, label %if.then.26, label %if.end.27, !dbg !2401

if.then.26:                                       ; preds = %if.end.23
  %25 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2402, !tbaa !1045
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %25, i32 0, i32 3, !dbg !2403
  store i8 1, i8* %locked, align 1, !dbg !2404, !tbaa !2303
  br label %if.end.27, !dbg !2402

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %26 = load i32, i32* %r, align 4, !dbg !2405, !tbaa !2391
  %cmp28 = icmp eq i32 %26, 1, !dbg !2406
  %conv29 = zext i1 %cmp28 to i32, !dbg !2406
  %conv30 = sext i32 %conv29 to i64, !dbg !2405
  %call31 = call %struct._object* @PyBool_FromLong(i64 %conv30), !dbg !2407
  store %struct._object* %call31, %struct._object** %retval, !dbg !2408
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2408

cleanup:                                          ; preds = %if.end.27, %if.then.22, %if.then.15, %if.then.7, %if.then.2, %if.then
  %27 = bitcast i32* %r to i8*, !dbg !2409
  call void @llvm.lifetime.end(i64 4, i8* %27) #1, !dbg !2409
  %28 = bitcast i64* %microseconds to i8*, !dbg !2409
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !2409
  %29 = bitcast double* %timeout to i8*, !dbg !2409
  call void @llvm.lifetime.end(i64 8, i8* %29) #1, !dbg !2409
  %30 = bitcast i32* %blocking to i8*, !dbg !2409
  call void @llvm.lifetime.end(i64 4, i8* %30) #1, !dbg !2409
  %31 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !2409
  call void @llvm.lifetime.end(i64 24, i8* %31) #1, !dbg !2409
  %32 = load %struct._object*, %struct._object** %retval, !dbg !2409
  ret %struct._object* %32, !dbg !2409
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_PyThread_release_lock(%struct.lockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.lockobject*, align 8
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.lockobject** %self.addr, metadata !693, metadata !1019), !dbg !2410
  %0 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2411, !tbaa !1045
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %0, i32 0, i32 3, !dbg !2413
  %1 = load i8, i8* %locked, align 1, !dbg !2413, !tbaa !2303
  %tobool = icmp ne i8 %1, 0, !dbg !2411
  br i1 %tobool, label %if.end, label %if.then, !dbg !2414

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2415, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i32 0, i32 0)), !dbg !2417
  store %struct._object* null, %struct._object** %retval, !dbg !2418
  br label %return, !dbg !2418

if.end:                                           ; preds = %entry
  %3 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2419, !tbaa !1045
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %3, i32 0, i32 1, !dbg !2420
  %4 = load i8*, i8** %lock_lock, align 8, !dbg !2420, !tbaa !2296
  call void @PyThread_release_lock(i8* %4), !dbg !2421
  %5 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2422, !tbaa !1045
  %locked1 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %5, i32 0, i32 3, !dbg !2423
  store i8 0, i8* %locked1, align 1, !dbg !2424, !tbaa !2303
  %6 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2425, !tbaa !1075
  %inc = add i64 %6, 1, !dbg !2425
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2425, !tbaa !1075
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2426
  br label %return, !dbg !2426

return:                                           ; preds = %if.end, %if.then
  %7 = load %struct._object*, %struct._object** %retval, !dbg !2427
  ret %struct._object* %7, !dbg !2427
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_locked_lock(%struct.lockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.lockobject*, align 8
  store %struct.lockobject* %self, %struct.lockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.lockobject** %self.addr, metadata !696, metadata !1019), !dbg !2428
  %0 = load %struct.lockobject*, %struct.lockobject** %self.addr, align 8, !dbg !2429, !tbaa !1045
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %0, i32 0, i32 3, !dbg !2430
  %1 = load i8, i8* %locked, align 1, !dbg !2430, !tbaa !2303
  %conv = sext i8 %1 to i64, !dbg !2431
  %call = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !2432
  ret %struct._object* %call, !dbg !2433
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

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
  %cleanup.dest.slot = alloca i32
  store i8* %lock, i8** %lock.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata i8** %lock.addr, metadata !670, metadata !1019), !dbg !2434
  store i64 %microseconds, i64* %microseconds.addr, align 8, !tbaa !2364
  call void @llvm.dbg.declare(metadata i64* %microseconds.addr, metadata !671, metadata !1019), !dbg !2435
  %0 = bitcast i32* %r to i8*, !dbg !2436
  call void @llvm.lifetime.start(i64 4, i8* %0) #1, !dbg !2436
  call void @llvm.dbg.declare(metadata i32* %r, metadata !672, metadata !1019), !dbg !2437
  %1 = bitcast %struct.timeval* %curtime to i8*, !dbg !2438
  call void @llvm.lifetime.start(i64 16, i8* %1) #1, !dbg !2438
  call void @llvm.dbg.declare(metadata %struct.timeval* %curtime, metadata !673, metadata !1019), !dbg !2439
  %2 = bitcast %struct.timeval* %endtime to i8*, !dbg !2440
  call void @llvm.lifetime.start(i64 16, i8* %2) #1, !dbg !2440
  call void @llvm.dbg.declare(metadata %struct.timeval* %endtime, metadata !683, metadata !1019), !dbg !2441
  %3 = load i64, i64* %microseconds.addr, align 8, !dbg !2442, !tbaa !2364
  %cmp = icmp sgt i64 %3, 0, !dbg !2444
  br i1 %cmp, label %if.then, label %if.end, !dbg !2445

if.then:                                          ; preds = %entry
  call void @_PyTime_gettimeofday(%struct.timeval* %endtime), !dbg !2446
  %4 = load i64, i64* %microseconds.addr, align 8, !dbg !2448, !tbaa !2364
  %div = sdiv i64 %4, 1000000, !dbg !2449
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 0, !dbg !2450
  %5 = load i64, i64* %tv_sec, align 8, !dbg !2451, !tbaa !2452
  %add = add i64 %5, %div, !dbg !2451
  store i64 %add, i64* %tv_sec, align 8, !dbg !2451, !tbaa !2452
  %6 = load i64, i64* %microseconds.addr, align 8, !dbg !2454, !tbaa !2364
  %rem = srem i64 %6, 1000000, !dbg !2455
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 1, !dbg !2456
  %7 = load i64, i64* %tv_usec, align 8, !dbg !2457, !tbaa !2458
  %add1 = add i64 %7, %rem, !dbg !2457
  store i64 %add1, i64* %tv_usec, align 8, !dbg !2457, !tbaa !2458
  br label %if.end, !dbg !2459

if.end:                                           ; preds = %if.then, %entry
  br label %do.body, !dbg !2460

do.body:                                          ; preds = %do.cond, %if.end
  %8 = load i8*, i8** %lock.addr, align 8, !dbg !2461, !tbaa !1045
  %call = call i32 @PyThread_acquire_lock_timed(i8* %8, i64 0, i32 0), !dbg !2462
  store i32 %call, i32* %r, align 4, !dbg !2463, !tbaa !2391
  %9 = load i32, i32* %r, align 4, !dbg !2464, !tbaa !2391
  %cmp2 = icmp eq i32 %9, 0, !dbg !2465
  br i1 %cmp2, label %land.lhs.true, label %if.end.7, !dbg !2466

land.lhs.true:                                    ; preds = %do.body
  %10 = load i64, i64* %microseconds.addr, align 8, !dbg !2467, !tbaa !2364
  %cmp3 = icmp ne i64 %10, 0, !dbg !2469
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !2470

if.then.4:                                        ; preds = %land.lhs.true
  %11 = bitcast %struct._ts** %_save to i8*, !dbg !2471
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !2471
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !684, metadata !1019), !dbg !2472
  %call5 = call %struct._ts* @PyEval_SaveThread(), !dbg !2473
  store %struct._ts* %call5, %struct._ts** %_save, align 8, !dbg !2474, !tbaa !1045
  %12 = load i8*, i8** %lock.addr, align 8, !dbg !2475, !tbaa !1045
  %13 = load i64, i64* %microseconds.addr, align 8, !dbg !2476, !tbaa !2364
  %call6 = call i32 @PyThread_acquire_lock_timed(i8* %12, i64 %13, i32 1), !dbg !2477
  store i32 %call6, i32* %r, align 4, !dbg !2478, !tbaa !2391
  %14 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2479, !tbaa !1045
  call void @PyEval_RestoreThread(%struct._ts* %14), !dbg !2480
  %15 = bitcast %struct._ts** %_save to i8*, !dbg !2481
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2481
  br label %if.end.7, !dbg !2482

if.end.7:                                         ; preds = %if.then.4, %land.lhs.true, %do.body
  %16 = load i32, i32* %r, align 4, !dbg !2483, !tbaa !2391
  %cmp8 = icmp eq i32 %16, 2, !dbg !2485
  br i1 %cmp8, label %if.then.9, label %if.end.26, !dbg !2486

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i32 @Py_MakePendingCalls(), !dbg !2487
  %cmp11 = icmp slt i32 %call10, 0, !dbg !2490
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !2491

if.then.12:                                       ; preds = %if.then.9
  store i32 2, i32* %retval, !dbg !2492
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2492

if.end.13:                                        ; preds = %if.then.9
  %17 = load i64, i64* %microseconds.addr, align 8, !dbg !2494, !tbaa !2364
  %cmp14 = icmp sgt i64 %17, 0, !dbg !2496
  br i1 %cmp14, label %if.then.15, label %if.end.25, !dbg !2497

if.then.15:                                       ; preds = %if.end.13
  call void @_PyTime_gettimeofday(%struct.timeval* %curtime), !dbg !2498
  %tv_sec16 = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 0, !dbg !2500
  %18 = load i64, i64* %tv_sec16, align 8, !dbg !2500, !tbaa !2452
  %tv_sec17 = getelementptr inbounds %struct.timeval, %struct.timeval* %curtime, i32 0, i32 0, !dbg !2501
  %19 = load i64, i64* %tv_sec17, align 8, !dbg !2501, !tbaa !2452
  %sub = sub i64 %18, %19, !dbg !2502
  %mul = mul i64 %sub, 1000000, !dbg !2503
  %tv_usec18 = getelementptr inbounds %struct.timeval, %struct.timeval* %endtime, i32 0, i32 1, !dbg !2504
  %20 = load i64, i64* %tv_usec18, align 8, !dbg !2504, !tbaa !2458
  %tv_usec19 = getelementptr inbounds %struct.timeval, %struct.timeval* %curtime, i32 0, i32 1, !dbg !2505
  %21 = load i64, i64* %tv_usec19, align 8, !dbg !2505, !tbaa !2458
  %sub20 = sub i64 %20, %21, !dbg !2506
  %add21 = add i64 %mul, %sub20, !dbg !2507
  store i64 %add21, i64* %microseconds.addr, align 8, !dbg !2508, !tbaa !2364
  %22 = load i64, i64* %microseconds.addr, align 8, !dbg !2509, !tbaa !2364
  %cmp22 = icmp sle i64 %22, 0, !dbg !2511
  br i1 %cmp22, label %if.then.23, label %if.end.24, !dbg !2512

if.then.23:                                       ; preds = %if.then.15
  store i32 0, i32* %r, align 4, !dbg !2513, !tbaa !2391
  br label %if.end.24, !dbg !2515

if.end.24:                                        ; preds = %if.then.23, %if.then.15
  br label %if.end.25, !dbg !2516

if.end.25:                                        ; preds = %if.end.24, %if.end.13
  br label %if.end.26, !dbg !2517

if.end.26:                                        ; preds = %if.end.25, %if.end.7
  br label %do.cond, !dbg !2518

do.cond:                                          ; preds = %if.end.26
  %23 = load i32, i32* %r, align 4, !dbg !2519, !tbaa !2391
  %cmp27 = icmp eq i32 %23, 2, !dbg !2521
  br i1 %cmp27, label %do.body, label %do.end, !dbg !2518

do.end:                                           ; preds = %do.cond
  %24 = load i32, i32* %r, align 4, !dbg !2522, !tbaa !2391
  store i32 %24, i32* %retval, !dbg !2523
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2523

cleanup:                                          ; preds = %do.end, %if.then.12
  %25 = bitcast %struct.timeval* %endtime to i8*, !dbg !2524
  call void @llvm.lifetime.end(i64 16, i8* %25) #1, !dbg !2524
  %26 = bitcast %struct.timeval* %curtime to i8*, !dbg !2524
  call void @llvm.lifetime.end(i64 16, i8* %26) #1, !dbg !2524
  %27 = bitcast i32* %r to i8*, !dbg !2524
  call void @llvm.lifetime.end(i64 4, i8* %27) #1, !dbg !2524
  %28 = load i32, i32* %retval, !dbg !2524
  ret i32 %28, !dbg !2524
}

declare %struct._object* @PyBool_FromLong(i64) #3

declare void @_PyTime_gettimeofday(%struct.timeval*) #3

declare i32 @PyThread_acquire_lock_timed(i8*, i64, i32) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

declare i32 @Py_MakePendingCalls() #3

; Function Attrs: nounwind uwtable
define internal void @rlock_dealloc(%struct.rlockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.rlockobject*, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self.addr, metadata !701, metadata !1019), !dbg !2525
  %0 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2526, !tbaa !1045
  %in_weakreflist = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %0, i32 0, i32 4, !dbg !2528
  %1 = load %struct._object*, %struct._object** %in_weakreflist, align 8, !dbg !2528, !tbaa !2529
  %cmp = icmp ne %struct._object* %1, null, !dbg !2531
  br i1 %cmp, label %if.then, label %if.end, !dbg !2532

if.then:                                          ; preds = %entry
  %2 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2533, !tbaa !1045
  %3 = bitcast %struct.rlockobject* %2 to %struct._object*, !dbg !2534
  call void @PyObject_ClearWeakRefs(%struct._object* %3), !dbg !2535
  br label %if.end, !dbg !2535

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2536, !tbaa !1045
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %4, i32 0, i32 1, !dbg !2538
  %5 = load i8*, i8** %rlock_lock, align 8, !dbg !2538, !tbaa !2539
  %cmp1 = icmp ne i8* %5, null, !dbg !2540
  br i1 %cmp1, label %if.then.2, label %if.end.8, !dbg !2541

if.then.2:                                        ; preds = %if.end
  %6 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2542, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %6, i32 0, i32 3, !dbg !2545
  %7 = load i64, i64* %rlock_count, align 8, !dbg !2545, !tbaa !2546
  %cmp3 = icmp ugt i64 %7, 0, !dbg !2547
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !2548

if.then.4:                                        ; preds = %if.then.2
  %8 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2549, !tbaa !1045
  %rlock_lock5 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %8, i32 0, i32 1, !dbg !2550
  %9 = load i8*, i8** %rlock_lock5, align 8, !dbg !2550, !tbaa !2539
  call void @PyThread_release_lock(i8* %9), !dbg !2551
  br label %if.end.6, !dbg !2551

if.end.6:                                         ; preds = %if.then.4, %if.then.2
  %10 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2552, !tbaa !1045
  %rlock_lock7 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %10, i32 0, i32 1, !dbg !2553
  %11 = load i8*, i8** %rlock_lock7, align 8, !dbg !2553, !tbaa !2539
  call void @PyThread_free_lock(i8* %11), !dbg !2554
  br label %if.end.8, !dbg !2555

if.end.8:                                         ; preds = %if.end.6, %if.end
  %12 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2556, !tbaa !1045
  %13 = bitcast %struct.rlockobject* %12 to %struct._object*, !dbg !2557
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2558
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2558, !tbaa !1130
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 38, !dbg !2559
  %15 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !2559, !tbaa !1132
  %16 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2560, !tbaa !1045
  %17 = bitcast %struct.rlockobject* %16 to i8*, !dbg !2560
  call void %15(i8* %17), !dbg !2561
  ret void, !dbg !2562
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_repr(%struct.rlockobject* %self) #0 {
entry:
  %self.addr = alloca %struct.rlockobject*, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self.addr, metadata !706, metadata !1019), !dbg !2563
  %0 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2564, !tbaa !1045
  %1 = bitcast %struct.rlockobject* %0 to %struct._object*, !dbg !2565
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i32 0, i32 1, !dbg !2566
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2566, !tbaa !1130
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i32 0, i32 1, !dbg !2567
  %3 = load i8*, i8** %tp_name, align 8, !dbg !2567, !tbaa !1298
  %4 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2568, !tbaa !1045
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %4, i32 0, i32 2, !dbg !2569
  %5 = load i64, i64* %rlock_owner, align 8, !dbg !2569, !tbaa !2570
  %6 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2571, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %6, i32 0, i32 3, !dbg !2572
  %7 = load i64, i64* %rlock_count, align 8, !dbg !2572, !tbaa !2546
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i32 0, i32 0), i8* %3, i64 %5, i64 %7), !dbg !2573
  ret %struct._object* %call, !dbg !2574
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %self = alloca %struct.rlockobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !751, metadata !1019), !dbg !2575
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !752, metadata !1019), !dbg !2576
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !753, metadata !1019), !dbg !2577
  %0 = bitcast %struct.rlockobject** %self to i8*, !dbg !2578
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2578
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self, metadata !754, metadata !1019), !dbg !2579
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2580, !tbaa !1045
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %1, i32 0, i32 36, !dbg !2581
  %2 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !2581, !tbaa !1665
  %3 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !2582, !tbaa !1045
  %call = call %struct._object* %2(%struct._typeobject* %3, i64 0), !dbg !2580
  %4 = bitcast %struct._object* %call to %struct.rlockobject*, !dbg !2583
  store %struct.rlockobject* %4, %struct.rlockobject** %self, align 8, !dbg !2584, !tbaa !1045
  %5 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2585, !tbaa !1045
  %cmp = icmp ne %struct.rlockobject* %5, null, !dbg !2586
  br i1 %cmp, label %if.then, label %if.end.8, !dbg !2587

if.then:                                          ; preds = %entry
  %6 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2588, !tbaa !1045
  %in_weakreflist = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %6, i32 0, i32 4, !dbg !2589
  store %struct._object* null, %struct._object** %in_weakreflist, align 8, !dbg !2590, !tbaa !2529
  %7 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2591, !tbaa !1045
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %7, i32 0, i32 2, !dbg !2592
  store i64 0, i64* %rlock_owner, align 8, !dbg !2593, !tbaa !2570
  %8 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2594, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %8, i32 0, i32 3, !dbg !2595
  store i64 0, i64* %rlock_count, align 8, !dbg !2596, !tbaa !2546
  %call1 = call i8* @PyThread_allocate_lock(), !dbg !2597
  %9 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2598, !tbaa !1045
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %9, i32 0, i32 1, !dbg !2599
  store i8* %call1, i8** %rlock_lock, align 8, !dbg !2600, !tbaa !2539
  %10 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2601, !tbaa !1045
  %rlock_lock2 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %10, i32 0, i32 1, !dbg !2602
  %11 = load i8*, i8** %rlock_lock2, align 8, !dbg !2602, !tbaa !2539
  %cmp3 = icmp eq i8* %11, null, !dbg !2603
  br i1 %cmp3, label %if.then.4, label %if.end.7, !dbg !2604

if.then.4:                                        ; preds = %if.then
  br label %do.body, !dbg !2605

do.body:                                          ; preds = %if.then.4
  %12 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2606
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !2606
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !755, metadata !1019), !dbg !2608
  %13 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2609, !tbaa !1045
  %14 = bitcast %struct.rlockobject* %13 to %struct._object*, !dbg !2610
  store %struct._object* %14, %struct._object** %_py_decref_tmp, align 8, !dbg !2608, !tbaa !1045
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2611, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 0, !dbg !2613
  %16 = load i64, i64* %ob_refcnt, align 8, !dbg !2614, !tbaa !1075
  %dec = add i64 %16, -1, !dbg !2614
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2614, !tbaa !1075
  %cmp5 = icmp ne i64 %dec, 0, !dbg !2615
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !2616

if.then.6:                                        ; preds = %do.body
  br label %if.end, !dbg !2617

if.else:                                          ; preds = %do.body
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2619, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1, !dbg !2621
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2621, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 4, !dbg !2622
  %19 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2622, !tbaa !1180
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !2623, !tbaa !1045
  call void %19(%struct._object* %20), !dbg !2624
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.6
  %21 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !2625
  call void @llvm.lifetime.end(i64 8, i8* %21) #1, !dbg !2625
  br label %do.cond, !dbg !2627

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !2628

do.end:                                           ; preds = %do.cond
  %22 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2630, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0)), !dbg !2631
  store %struct._object* null, %struct._object** %retval, !dbg !2632
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2632

if.end.7:                                         ; preds = %if.then
  br label %if.end.8, !dbg !2633

if.end.8:                                         ; preds = %if.end.7, %entry
  %23 = load %struct.rlockobject*, %struct.rlockobject** %self, align 8, !dbg !2634, !tbaa !1045
  %24 = bitcast %struct.rlockobject* %23 to %struct._object*, !dbg !2635
  store %struct._object* %24, %struct._object** %retval, !dbg !2636
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2636

cleanup:                                          ; preds = %if.end.8, %do.end
  %25 = bitcast %struct.rlockobject** %self to i8*, !dbg !2637
  call void @llvm.lifetime.end(i64 8, i8* %25) #1, !dbg !2637
  %26 = load %struct._object*, %struct._object** %retval, !dbg !2637
  ret %struct._object* %26, !dbg !2637
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
  %cleanup.dest.slot = alloca i32
  %count = alloca i64, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self.addr, metadata !711, metadata !1019), !dbg !2638
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !712, metadata !1019), !dbg !2639
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !713, metadata !1019), !dbg !2640
  %0 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !2641
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !2641
  call void @llvm.dbg.declare(metadata [3 x i8*]* %kwlist, metadata !714, metadata !1019), !dbg !2642
  %1 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !2642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %1, i8* bitcast ([3 x i8*]* @rlock_acquire.kwlist to i8*), i64 24, i32 16, i1 false), !dbg !2642
  %2 = bitcast i32* %blocking to i8*, !dbg !2643
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2643
  call void @llvm.dbg.declare(metadata i32* %blocking, metadata !715, metadata !1019), !dbg !2644
  store i32 1, i32* %blocking, align 4, !dbg !2644, !tbaa !1221
  %3 = bitcast double* %timeout to i8*, !dbg !2645
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2645
  call void @llvm.dbg.declare(metadata double* %timeout, metadata !716, metadata !1019), !dbg !2646
  store double -1.000000e+00, double* %timeout, align 8, !dbg !2646, !tbaa !2324
  %4 = bitcast i64* %microseconds to i8*, !dbg !2647
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2647
  call void @llvm.dbg.declare(metadata i64* %microseconds, metadata !717, metadata !1019), !dbg !2648
  %5 = bitcast i64* %tid to i8*, !dbg !2649
  call void @llvm.lifetime.start(i64 8, i8* %5) #1, !dbg !2649
  call void @llvm.dbg.declare(metadata i64* %tid, metadata !718, metadata !1019), !dbg !2650
  %6 = bitcast i32* %r to i8*, !dbg !2651
  call void @llvm.lifetime.start(i64 4, i8* %6) #1, !dbg !2651
  call void @llvm.dbg.declare(metadata i32* %r, metadata !719, metadata !1019), !dbg !2652
  store i32 1, i32* %r, align 4, !dbg !2652, !tbaa !2391
  %7 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2653, !tbaa !1045
  %8 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !2655, !tbaa !1045
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i32 0, i32 0, !dbg !2656
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %7, %struct._object* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8** %arraydecay, i32* %blocking, double* %timeout), !dbg !2657
  %tobool = icmp ne i32 %call, 0, !dbg !2657
  br i1 %tobool, label %if.end, label %if.then, !dbg !2658

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2659
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !2659

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %blocking, align 4, !dbg !2660, !tbaa !1221
  %tobool1 = icmp ne i32 %9, 0, !dbg !2660
  br i1 %tobool1, label %if.end.3, label %land.lhs.true, !dbg !2662

land.lhs.true:                                    ; preds = %if.end
  %10 = load double, double* %timeout, align 8, !dbg !2663, !tbaa !2324
  %cmp = fcmp une double %10, -1.000000e+00, !dbg !2665
  br i1 %cmp, label %if.then.2, label %if.end.3, !dbg !2666

if.then.2:                                        ; preds = %land.lhs.true
  %11 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2667, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i32 0, i32 0)), !dbg !2669
  store %struct._object* null, %struct._object** %retval, !dbg !2670
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !2670

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %12 = load double, double* %timeout, align 8, !dbg !2671, !tbaa !2324
  %cmp4 = fcmp olt double %12, 0.000000e+00, !dbg !2673
  br i1 %cmp4, label %land.lhs.true.5, label %if.end.8, !dbg !2674

land.lhs.true.5:                                  ; preds = %if.end.3
  %13 = load double, double* %timeout, align 8, !dbg !2675, !tbaa !2324
  %cmp6 = fcmp une double %13, -1.000000e+00, !dbg !2677
  br i1 %cmp6, label %if.then.7, label %if.end.8, !dbg !2678

if.then.7:                                        ; preds = %land.lhs.true.5
  %14 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2679, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i32 0, i32 0)), !dbg !2681
  store %struct._object* null, %struct._object** %retval, !dbg !2682
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !2682

if.end.8:                                         ; preds = %land.lhs.true.5, %if.end.3
  %15 = load i32, i32* %blocking, align 4, !dbg !2683, !tbaa !1221
  %tobool9 = icmp ne i32 %15, 0, !dbg !2683
  br i1 %tobool9, label %if.else, label %if.then.10, !dbg !2685

if.then.10:                                       ; preds = %if.end.8
  store i64 0, i64* %microseconds, align 8, !dbg !2686, !tbaa !2364
  br label %if.end.18, !dbg !2687

if.else:                                          ; preds = %if.end.8
  %16 = load double, double* %timeout, align 8, !dbg !2688, !tbaa !2324
  %cmp11 = fcmp oeq double %16, -1.000000e+00, !dbg !2690
  br i1 %cmp11, label %if.then.12, label %if.else.13, !dbg !2691

if.then.12:                                       ; preds = %if.else
  store i64 -1, i64* %microseconds, align 8, !dbg !2692, !tbaa !2364
  br label %if.end.17, !dbg !2693

if.else.13:                                       ; preds = %if.else
  %17 = load double, double* %timeout, align 8, !dbg !2694, !tbaa !2324
  %mul = fmul double %17, 1.000000e+06, !dbg !2694
  store double %mul, double* %timeout, align 8, !dbg !2694, !tbaa !2324
  %18 = load double, double* %timeout, align 8, !dbg !2696, !tbaa !2324
  %cmp14 = fcmp oge double %18, 0x43E0000000000000, !dbg !2698
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !2699

if.then.15:                                       ; preds = %if.else.13
  %19 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2700, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i32 0, i32 0)), !dbg !2702
  store %struct._object* null, %struct._object** %retval, !dbg !2703
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !2703

if.end.16:                                        ; preds = %if.else.13
  %20 = load double, double* %timeout, align 8, !dbg !2704, !tbaa !2324
  %conv = fptosi double %20 to i64, !dbg !2705
  store i64 %conv, i64* %microseconds, align 8, !dbg !2706, !tbaa !2364
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.then.12
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.then.10
  %call19 = call i64 @PyThread_get_thread_ident(), !dbg !2707
  store i64 %call19, i64* %tid, align 8, !dbg !2708, !tbaa !1104
  %21 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2709, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %21, i32 0, i32 3, !dbg !2710
  %22 = load i64, i64* %rlock_count, align 8, !dbg !2710, !tbaa !2546
  %cmp20 = icmp ugt i64 %22, 0, !dbg !2711
  br i1 %cmp20, label %land.lhs.true.22, label %if.end.33, !dbg !2712

land.lhs.true.22:                                 ; preds = %if.end.18
  %23 = load i64, i64* %tid, align 8, !dbg !2713, !tbaa !1104
  %24 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2715, !tbaa !1045
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %24, i32 0, i32 2, !dbg !2716
  %25 = load i64, i64* %rlock_owner, align 8, !dbg !2716, !tbaa !2570
  %cmp23 = icmp eq i64 %23, %25, !dbg !2717
  br i1 %cmp23, label %if.then.25, label %if.end.33, !dbg !2718

if.then.25:                                       ; preds = %land.lhs.true.22
  %26 = bitcast i64* %count to i8*, !dbg !2719
  call void @llvm.lifetime.start(i64 8, i8* %26) #1, !dbg !2719
  call void @llvm.dbg.declare(metadata i64* %count, metadata !720, metadata !1019), !dbg !2720
  %27 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2721, !tbaa !1045
  %rlock_count26 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %27, i32 0, i32 3, !dbg !2722
  %28 = load i64, i64* %rlock_count26, align 8, !dbg !2722, !tbaa !2546
  %add = add i64 %28, 1, !dbg !2723
  store i64 %add, i64* %count, align 8, !dbg !2720, !tbaa !1104
  %29 = load i64, i64* %count, align 8, !dbg !2724, !tbaa !1104
  %30 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2726, !tbaa !1045
  %rlock_count27 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %30, i32 0, i32 3, !dbg !2727
  %31 = load i64, i64* %rlock_count27, align 8, !dbg !2727, !tbaa !2546
  %cmp28 = icmp ule i64 %29, %31, !dbg !2728
  br i1 %cmp28, label %if.then.30, label %if.end.31, !dbg !2729

if.then.30:                                       ; preds = %if.then.25
  %32 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !2730, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i32 0, i32 0)), !dbg !2732
  store %struct._object* null, %struct._object** %retval, !dbg !2733
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2733

if.end.31:                                        ; preds = %if.then.25
  %33 = load i64, i64* %count, align 8, !dbg !2734, !tbaa !1104
  %34 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2735, !tbaa !1045
  %rlock_count32 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %34, i32 0, i32 3, !dbg !2736
  store i64 %33, i64* %rlock_count32, align 8, !dbg !2737, !tbaa !2546
  %35 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2738, !tbaa !1075
  %inc = add i64 %35, 1, !dbg !2738
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2738, !tbaa !1075
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2739
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2739

cleanup:                                          ; preds = %if.end.31, %if.then.30
  %36 = bitcast i64* %count to i8*, !dbg !2740
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !2740
  br label %cleanup.50

if.end.33:                                        ; preds = %land.lhs.true.22, %if.end.18
  %37 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2741, !tbaa !1045
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %37, i32 0, i32 1, !dbg !2742
  %38 = load i8*, i8** %rlock_lock, align 8, !dbg !2742, !tbaa !2539
  %39 = load i64, i64* %microseconds, align 8, !dbg !2743, !tbaa !2364
  %call34 = call i32 @acquire_timed(i8* %38, i64 %39), !dbg !2744
  store i32 %call34, i32* %r, align 4, !dbg !2745, !tbaa !2391
  %40 = load i32, i32* %r, align 4, !dbg !2746, !tbaa !2391
  %cmp35 = icmp eq i32 %40, 1, !dbg !2748
  br i1 %cmp35, label %if.then.37, label %if.else.40, !dbg !2749

if.then.37:                                       ; preds = %if.end.33
  %41 = load i64, i64* %tid, align 8, !dbg !2750, !tbaa !1104
  %42 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2752, !tbaa !1045
  %rlock_owner38 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %42, i32 0, i32 2, !dbg !2753
  store i64 %41, i64* %rlock_owner38, align 8, !dbg !2754, !tbaa !2570
  %43 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2755, !tbaa !1045
  %rlock_count39 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %43, i32 0, i32 3, !dbg !2756
  store i64 1, i64* %rlock_count39, align 8, !dbg !2757, !tbaa !2546
  br label %if.end.45, !dbg !2758

if.else.40:                                       ; preds = %if.end.33
  %44 = load i32, i32* %r, align 4, !dbg !2759, !tbaa !2391
  %cmp41 = icmp eq i32 %44, 2, !dbg !2761
  br i1 %cmp41, label %if.then.43, label %if.end.44, !dbg !2762

if.then.43:                                       ; preds = %if.else.40
  store %struct._object* null, %struct._object** %retval, !dbg !2763
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !2763

if.end.44:                                        ; preds = %if.else.40
  br label %if.end.45

if.end.45:                                        ; preds = %if.end.44, %if.then.37
  %45 = load i32, i32* %r, align 4, !dbg !2765, !tbaa !2391
  %cmp46 = icmp eq i32 %45, 1, !dbg !2766
  %conv47 = zext i1 %cmp46 to i32, !dbg !2766
  %conv48 = sext i32 %conv47 to i64, !dbg !2765
  %call49 = call %struct._object* @PyBool_FromLong(i64 %conv48), !dbg !2767
  store %struct._object* %call49, %struct._object** %retval, !dbg !2768
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup.50, !dbg !2768

cleanup.50:                                       ; preds = %if.end.45, %if.then.43, %cleanup, %if.then.15, %if.then.7, %if.then.2, %if.then
  %46 = bitcast i32* %r to i8*, !dbg !2769
  call void @llvm.lifetime.end(i64 4, i8* %46) #1, !dbg !2769
  %47 = bitcast i64* %tid to i8*, !dbg !2769
  call void @llvm.lifetime.end(i64 8, i8* %47) #1, !dbg !2769
  %48 = bitcast i64* %microseconds to i8*, !dbg !2769
  call void @llvm.lifetime.end(i64 8, i8* %48) #1, !dbg !2769
  %49 = bitcast double* %timeout to i8*, !dbg !2769
  call void @llvm.lifetime.end(i64 8, i8* %49) #1, !dbg !2769
  %50 = bitcast i32* %blocking to i8*, !dbg !2769
  call void @llvm.lifetime.end(i64 4, i8* %50) #1, !dbg !2769
  %51 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !2769
  call void @llvm.lifetime.end(i64 24, i8* %51) #1, !dbg !2769
  %52 = load %struct._object*, %struct._object** %retval, !dbg !2769
  ret %struct._object* %52, !dbg !2769
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_release(%struct.rlockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %tid = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self.addr, metadata !725, metadata !1019), !dbg !2770
  %0 = bitcast i64* %tid to i8*, !dbg !2771
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2771
  call void @llvm.dbg.declare(metadata i64* %tid, metadata !726, metadata !1019), !dbg !2772
  %call = call i64 @PyThread_get_thread_ident(), !dbg !2773
  store i64 %call, i64* %tid, align 8, !dbg !2772, !tbaa !1104
  %1 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2774, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %1, i32 0, i32 3, !dbg !2776
  %2 = load i64, i64* %rlock_count, align 8, !dbg !2776, !tbaa !2546
  %cmp = icmp eq i64 %2, 0, !dbg !2777
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2778

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2779, !tbaa !1045
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %3, i32 0, i32 2, !dbg !2781
  %4 = load i64, i64* %rlock_owner, align 8, !dbg !2781, !tbaa !2570
  %5 = load i64, i64* %tid, align 8, !dbg !2782, !tbaa !1104
  %cmp1 = icmp ne i64 %4, %5, !dbg !2783
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2784

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2785, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0)), !dbg !2787
  store %struct._object* null, %struct._object** %retval, !dbg !2788
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2788

if.end:                                           ; preds = %lor.lhs.false
  %7 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2789, !tbaa !1045
  %rlock_count2 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %7, i32 0, i32 3, !dbg !2791
  %8 = load i64, i64* %rlock_count2, align 8, !dbg !2792, !tbaa !2546
  %dec = add i64 %8, -1, !dbg !2792
  store i64 %dec, i64* %rlock_count2, align 8, !dbg !2792, !tbaa !2546
  %cmp3 = icmp eq i64 %dec, 0, !dbg !2793
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !2794

if.then.4:                                        ; preds = %if.end
  %9 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2795, !tbaa !1045
  %rlock_owner5 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %9, i32 0, i32 2, !dbg !2797
  store i64 0, i64* %rlock_owner5, align 8, !dbg !2798, !tbaa !2570
  %10 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2799, !tbaa !1045
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %10, i32 0, i32 1, !dbg !2800
  %11 = load i8*, i8** %rlock_lock, align 8, !dbg !2800, !tbaa !2539
  call void @PyThread_release_lock(i8* %11), !dbg !2801
  br label %if.end.6, !dbg !2802

if.end.6:                                         ; preds = %if.then.4, %if.end
  %12 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2803, !tbaa !1075
  %inc = add i64 %12, 1, !dbg !2803
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2803, !tbaa !1075
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2804
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2804

cleanup:                                          ; preds = %if.end.6, %if.then
  %13 = bitcast i64* %tid to i8*, !dbg !2805
  call void @llvm.lifetime.end(i64 8, i8* %13) #1, !dbg !2805
  %14 = load %struct._object*, %struct._object** %retval, !dbg !2805
  ret %struct._object* %14, !dbg !2805
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_is_owned(%struct.rlockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %tid = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self.addr, metadata !729, metadata !1019), !dbg !2806
  %0 = bitcast i64* %tid to i8*, !dbg !2807
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2807
  call void @llvm.dbg.declare(metadata i64* %tid, metadata !730, metadata !1019), !dbg !2808
  %call = call i64 @PyThread_get_thread_ident(), !dbg !2809
  store i64 %call, i64* %tid, align 8, !dbg !2808, !tbaa !1104
  %1 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2810, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %1, i32 0, i32 3, !dbg !2812
  %2 = load i64, i64* %rlock_count, align 8, !dbg !2812, !tbaa !2546
  %cmp = icmp ugt i64 %2, 0, !dbg !2813
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2814

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2815, !tbaa !1045
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %3, i32 0, i32 2, !dbg !2817
  %4 = load i64, i64* %rlock_owner, align 8, !dbg !2817, !tbaa !2570
  %5 = load i64, i64* %tid, align 8, !dbg !2818, !tbaa !1104
  %cmp1 = icmp eq i64 %4, %5, !dbg !2819
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2820

if.then:                                          ; preds = %land.lhs.true
  %6 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2821, !tbaa !1075
  %inc = add i64 %6, 1, !dbg !2821
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2821, !tbaa !1075
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2823
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2823

if.end:                                           ; preds = %land.lhs.true, %entry
  %7 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2824, !tbaa !1075
  %inc2 = add i64 %7, 1, !dbg !2824
  store i64 %inc2, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !2824, !tbaa !1075
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !2825
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2825

cleanup:                                          ; preds = %if.end, %if.then
  %8 = bitcast i64* %tid to i8*, !dbg !2826
  call void @llvm.lifetime.end(i64 8, i8* %8) #1, !dbg !2826
  %9 = load %struct._object*, %struct._object** %retval, !dbg !2826
  ret %struct._object* %9, !dbg !2826
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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self.addr, metadata !735, metadata !1019), !dbg !2827
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !736, metadata !1019), !dbg !2828
  %0 = bitcast i64* %owner to i8*, !dbg !2829
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2829
  call void @llvm.dbg.declare(metadata i64* %owner, metadata !737, metadata !1019), !dbg !2830
  %1 = bitcast i64* %count to i8*, !dbg !2831
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2831
  call void @llvm.dbg.declare(metadata i64* %count, metadata !738, metadata !1019), !dbg !2832
  %2 = bitcast i32* %r to i8*, !dbg !2833
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !2833
  call void @llvm.dbg.declare(metadata i32* %r, metadata !739, metadata !1019), !dbg !2834
  store i32 1, i32* %r, align 4, !dbg !2834, !tbaa !1221
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !2835, !tbaa !1045
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i32 0, i32 0), i64* %count, i64* %owner), !dbg !2837
  %tobool = icmp ne i32 %call, 0, !dbg !2837
  br i1 %tobool, label %if.end, label %if.then, !dbg !2838

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2839
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2839

if.end:                                           ; preds = %entry
  %4 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2840, !tbaa !1045
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %4, i32 0, i32 1, !dbg !2841
  %5 = load i8*, i8** %rlock_lock, align 8, !dbg !2841, !tbaa !2539
  %call1 = call i32 @PyThread_acquire_lock(i8* %5, i32 0), !dbg !2842
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2842
  br i1 %tobool2, label %if.end.7, label %if.then.3, !dbg !2843

if.then.3:                                        ; preds = %if.end
  %6 = bitcast %struct._ts** %_save to i8*, !dbg !2844
  call void @llvm.lifetime.start(i64 8, i8* %6) #1, !dbg !2844
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !740, metadata !1019), !dbg !2845
  %call4 = call %struct._ts* @PyEval_SaveThread(), !dbg !2846
  store %struct._ts* %call4, %struct._ts** %_save, align 8, !dbg !2847, !tbaa !1045
  %7 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2848, !tbaa !1045
  %rlock_lock5 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %7, i32 0, i32 1, !dbg !2849
  %8 = load i8*, i8** %rlock_lock5, align 8, !dbg !2849, !tbaa !2539
  %call6 = call i32 @PyThread_acquire_lock(i8* %8, i32 1), !dbg !2850
  store i32 %call6, i32* %r, align 4, !dbg !2851, !tbaa !1221
  %9 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !2852, !tbaa !1045
  call void @PyEval_RestoreThread(%struct._ts* %9), !dbg !2853
  %10 = bitcast %struct._ts** %_save to i8*, !dbg !2854
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2854
  br label %if.end.7, !dbg !2855

if.end.7:                                         ; preds = %if.then.3, %if.end
  %11 = load i32, i32* %r, align 4, !dbg !2856, !tbaa !1221
  %tobool8 = icmp ne i32 %11, 0, !dbg !2856
  br i1 %tobool8, label %if.end.10, label %if.then.9, !dbg !2858

if.then.9:                                        ; preds = %if.end.7
  %12 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2859, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0)), !dbg !2861
  store %struct._object* null, %struct._object** %retval, !dbg !2862
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2862

if.end.10:                                        ; preds = %if.end.7
  %13 = load i64, i64* %owner, align 8, !dbg !2863, !tbaa !1104
  %14 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2864, !tbaa !1045
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %14, i32 0, i32 2, !dbg !2865
  store i64 %13, i64* %rlock_owner, align 8, !dbg !2866, !tbaa !2570
  %15 = load i64, i64* %count, align 8, !dbg !2867, !tbaa !1104
  %16 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2868, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %16, i32 0, i32 3, !dbg !2869
  store i64 %15, i64* %rlock_count, align 8, !dbg !2870, !tbaa !2546
  %17 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2871, !tbaa !1075
  %inc = add i64 %17, 1, !dbg !2871
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !2871, !tbaa !1075
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !2872
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2872

cleanup:                                          ; preds = %if.end.10, %if.then.9, %if.then
  %18 = bitcast i32* %r to i8*, !dbg !2873
  call void @llvm.lifetime.end(i64 4, i8* %18) #1, !dbg !2873
  %19 = bitcast i64* %count to i8*, !dbg !2873
  call void @llvm.lifetime.end(i64 8, i8* %19) #1, !dbg !2873
  %20 = bitcast i64* %owner to i8*, !dbg !2873
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !2873
  %21 = load %struct._object*, %struct._object** %retval, !dbg !2873
  ret %struct._object* %21, !dbg !2873
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_release_save(%struct.rlockobject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.rlockobject*, align 8
  %owner = alloca i64, align 8
  %count = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct.rlockobject* %self, %struct.rlockobject** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct.rlockobject** %self.addr, metadata !746, metadata !1019), !dbg !2874
  %0 = bitcast i64* %owner to i8*, !dbg !2875
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2875
  call void @llvm.dbg.declare(metadata i64* %owner, metadata !747, metadata !1019), !dbg !2876
  %1 = bitcast i64* %count to i8*, !dbg !2877
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2877
  call void @llvm.dbg.declare(metadata i64* %count, metadata !748, metadata !1019), !dbg !2878
  %2 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2879, !tbaa !1045
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %2, i32 0, i32 3, !dbg !2881
  %3 = load i64, i64* %rlock_count, align 8, !dbg !2881, !tbaa !2546
  %cmp = icmp eq i64 %3, 0, !dbg !2882
  br i1 %cmp, label %if.then, label %if.end, !dbg !2883

if.then:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !2884, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0)), !dbg !2886
  store %struct._object* null, %struct._object** %retval, !dbg !2887
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2887

if.end:                                           ; preds = %entry
  %5 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2888, !tbaa !1045
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %5, i32 0, i32 2, !dbg !2889
  %6 = load i64, i64* %rlock_owner, align 8, !dbg !2889, !tbaa !2570
  store i64 %6, i64* %owner, align 8, !dbg !2890, !tbaa !1104
  %7 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2891, !tbaa !1045
  %rlock_count1 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %7, i32 0, i32 3, !dbg !2892
  %8 = load i64, i64* %rlock_count1, align 8, !dbg !2892, !tbaa !2546
  store i64 %8, i64* %count, align 8, !dbg !2893, !tbaa !1104
  %9 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2894, !tbaa !1045
  %rlock_count2 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %9, i32 0, i32 3, !dbg !2895
  store i64 0, i64* %rlock_count2, align 8, !dbg !2896, !tbaa !2546
  %10 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2897, !tbaa !1045
  %rlock_owner3 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %10, i32 0, i32 2, !dbg !2898
  store i64 0, i64* %rlock_owner3, align 8, !dbg !2899, !tbaa !2570
  %11 = load %struct.rlockobject*, %struct.rlockobject** %self.addr, align 8, !dbg !2900, !tbaa !1045
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %11, i32 0, i32 1, !dbg !2901
  %12 = load i8*, i8** %rlock_lock, align 8, !dbg !2901, !tbaa !2539
  call void @PyThread_release_lock(i8* %12), !dbg !2902
  %13 = load i64, i64* %count, align 8, !dbg !2903, !tbaa !1104
  %14 = load i64, i64* %owner, align 8, !dbg !2904, !tbaa !1104
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i32 0, i32 0), i64 %13, i64 %14), !dbg !2905
  store %struct._object* %call, %struct._object** %retval, !dbg !2906
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2906

cleanup:                                          ; preds = %if.end, %if.then
  %15 = bitcast i64* %count to i8*, !dbg !2907
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !2907
  %16 = bitcast i64* %owner to i8*, !dbg !2907
  call void @llvm.lifetime.end(i64 8, i8* %16) #1, !dbg !2907
  %17 = load %struct._object*, %struct._object** %retval, !dbg !2907
  ret %struct._object* %17, !dbg !2907
}

declare i64 @PyThread_get_thread_ident() #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @PyThread_acquire_lock(i8*, i32) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i8* @PyThread_allocate_lock() #3

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
  %cleanup.dest.slot = alloca i32
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp55 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp72 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !763, metadata !1019), !dbg !2908
  store %struct._object* %fargs, %struct._object** %fargs.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %fargs.addr, metadata !764, metadata !1019), !dbg !2909
  %0 = bitcast %struct._object** %func to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2910
  call void @llvm.dbg.declare(metadata %struct._object** %func, metadata !765, metadata !1019), !dbg !2911
  %1 = bitcast %struct._object** %args to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !2910
  call void @llvm.dbg.declare(metadata %struct._object** %args, metadata !766, metadata !1019), !dbg !2912
  %2 = bitcast %struct._object** %keyw to i8*, !dbg !2910
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !2910
  call void @llvm.dbg.declare(metadata %struct._object** %keyw, metadata !767, metadata !1019), !dbg !2913
  store %struct._object* null, %struct._object** %keyw, align 8, !dbg !2913, !tbaa !1045
  %3 = bitcast %struct.bootstate** %boot to i8*, !dbg !2914
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !2914
  call void @llvm.dbg.declare(metadata %struct.bootstate** %boot, metadata !768, metadata !1019), !dbg !2915
  %4 = bitcast i64* %ident to i8*, !dbg !2916
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !2916
  call void @llvm.dbg.declare(metadata i64* %ident, metadata !769, metadata !1019), !dbg !2917
  %5 = load %struct._object*, %struct._object** %fargs.addr, align 8, !dbg !2918, !tbaa !1045
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i32 0, i32 0), i64 2, i64 3, %struct._object** %func, %struct._object** %args, %struct._object** %keyw), !dbg !2920
  %tobool = icmp ne i32 %call, 0, !dbg !2920
  br i1 %tobool, label %if.end, label %if.then, !dbg !2921

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !2922
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2922

if.end:                                           ; preds = %entry
  %6 = load %struct._object*, %struct._object** %func, align 8, !dbg !2923, !tbaa !1045
  %call1 = call i32 @PyCallable_Check(%struct._object* %6), !dbg !2925
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2925
  br i1 %tobool2, label %if.end.4, label %if.then.3, !dbg !2926

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2927, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i32 0, i32 0)), !dbg !2929
  store %struct._object* null, %struct._object** %retval, !dbg !2930
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2930

if.end.4:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %args, align 8, !dbg !2931, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1, !dbg !2933
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2933, !tbaa !1130
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19, !dbg !2934
  %10 = load i64, i64* %tp_flags, align 8, !dbg !2934, !tbaa !2935
  %and = and i64 %10, 67108864, !dbg !2936
  %cmp = icmp ne i64 %and, 0, !dbg !2937
  br i1 %cmp, label %if.end.6, label %if.then.5, !dbg !2938

if.then.5:                                        ; preds = %if.end.4
  %11 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2939, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i32 0, i32 0)), !dbg !2941
  store %struct._object* null, %struct._object** %retval, !dbg !2942
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2942

if.end.6:                                         ; preds = %if.end.4
  %12 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !2943, !tbaa !1045
  %cmp7 = icmp ne %struct._object* %12, null, !dbg !2945
  br i1 %cmp7, label %land.lhs.true, label %if.end.13, !dbg !2946

land.lhs.true:                                    ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !2947, !tbaa !1045
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !2949
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !2949, !tbaa !1130
  %tp_flags9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 19, !dbg !2950
  %15 = load i64, i64* %tp_flags9, align 8, !dbg !2950, !tbaa !2935
  %and10 = and i64 %15, 536870912, !dbg !2951
  %cmp11 = icmp ne i64 %and10, 0, !dbg !2952
  br i1 %cmp11, label %if.end.13, label %if.then.12, !dbg !2953

if.then.12:                                       ; preds = %land.lhs.true
  %16 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !2954, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %16, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i32 0, i32 0)), !dbg !2956
  store %struct._object* null, %struct._object** %retval, !dbg !2957
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2957

if.end.13:                                        ; preds = %land.lhs.true, %if.end.6
  %call14 = call i8* @PyMem_Malloc(i64 40), !dbg !2958
  %17 = bitcast i8* %call14 to %struct.bootstate*, !dbg !2959
  store %struct.bootstate* %17, %struct.bootstate** %boot, align 8, !dbg !2960, !tbaa !1045
  %18 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !2961, !tbaa !1045
  %cmp15 = icmp eq %struct.bootstate* %18, null, !dbg !2963
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !2964

if.then.16:                                       ; preds = %if.end.13
  %call17 = call %struct._object* @PyErr_NoMemory(), !dbg !2965
  store %struct._object* %call17, %struct._object** %retval, !dbg !2966
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !2966

if.end.18:                                        ; preds = %if.end.13
  %19 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !2967
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !2967
  call void @llvm.dbg.declare(metadata %struct._Py_atomic_address** %atomic_val, metadata !770, metadata !1019), !dbg !2968
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2968, !tbaa !1045
  %20 = bitcast i8** %result to i8*, !dbg !2969
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !2969
  call void @llvm.dbg.declare(metadata i8** %result, metadata !777, metadata !1019), !dbg !2970
  %21 = bitcast i8*** %volatile_data to i8*, !dbg !2971
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !2971
  call void @llvm.dbg.declare(metadata i8*** %volatile_data, metadata !778, metadata !1019), !dbg !2972
  %22 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2973, !tbaa !1045
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %22, i32 0, i32 0, !dbg !2974
  store i8** %_value, i8*** %volatile_data, align 8, !dbg !2972, !tbaa !1045
  %23 = bitcast i32* %order to i8*, !dbg !2975
  call void @llvm.lifetime.start(i64 4, i8* %23) #1, !dbg !2975
  call void @llvm.dbg.declare(metadata i32* %order, metadata !781, metadata !1019), !dbg !2976
  store i32 0, i32* %order, align 4, !dbg !2976, !tbaa !2391
  %24 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8, !dbg !2977, !tbaa !1045
  %25 = bitcast %struct._Py_atomic_address* %24 to i8*, !dbg !2977
  %26 = load i32, i32* %order, align 4, !dbg !2978, !tbaa !2391
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %25, i32 %26), !dbg !2979
  %27 = load i32, i32* %order, align 4, !dbg !2980, !tbaa !2391
  switch i32 %27, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ], !dbg !2981

sw.bb:                                            ; preds = %if.end.18, %if.end.18, %if.end.18
  call void @_Py_atomic_thread_fence(i32 2), !dbg !2982
  br label %sw.epilog, !dbg !2987

sw.default:                                       ; preds = %if.end.18
  br label %sw.epilog, !dbg !2988

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %28 = load i8**, i8*** %volatile_data, align 8, !dbg !2990, !tbaa !1045
  %29 = load volatile i8*, i8** %28, align 8, !dbg !2993, !tbaa !1045
  store i8* %29, i8** %result, align 8, !dbg !2994, !tbaa !1045
  %30 = load i32, i32* %order, align 4, !dbg !2995, !tbaa !2391
  switch i32 %30, label %sw.default.20 [
    i32 1, label %sw.bb.19
    i32 3, label %sw.bb.19
    i32 4, label %sw.bb.19
  ], !dbg !2996

sw.bb.19:                                         ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1), !dbg !2997
  br label %sw.epilog.21, !dbg !3002

sw.default.20:                                    ; preds = %sw.epilog
  br label %sw.epilog.21, !dbg !3003

sw.epilog.21:                                     ; preds = %sw.default.20, %sw.bb.19
  %31 = load i8*, i8** %result, align 8, !dbg !3005, !tbaa !1045
  store i8* %31, i8** %tmp, !dbg !3008, !tbaa !1045
  %32 = bitcast i32* %order to i8*, !dbg !3009
  call void @llvm.lifetime.end(i64 4, i8* %32) #1, !dbg !3009
  %33 = bitcast i8*** %volatile_data to i8*, !dbg !3009
  call void @llvm.lifetime.end(i64 8, i8* %33) #1, !dbg !3009
  %34 = bitcast i8** %result to i8*, !dbg !3009
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !3009
  %35 = bitcast %struct._Py_atomic_address** %atomic_val to i8*, !dbg !3009
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3009
  %36 = load i8*, i8** %tmp, !dbg !3010, !tbaa !1045
  %37 = bitcast i8* %36 to %struct._ts*, !dbg !3011
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %37, i32 0, i32 2, !dbg !3012
  %38 = load %struct._is*, %struct._is** %interp, align 8, !dbg !3012, !tbaa !1595
  %39 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3013, !tbaa !1045
  %interp22 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %39, i32 0, i32 0, !dbg !3014
  store %struct._is* %38, %struct._is** %interp22, align 8, !dbg !3015, !tbaa !3016
  %40 = load %struct._object*, %struct._object** %func, align 8, !dbg !3018, !tbaa !1045
  %41 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3019, !tbaa !1045
  %func23 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %41, i32 0, i32 1, !dbg !3020
  store %struct._object* %40, %struct._object** %func23, align 8, !dbg !3021, !tbaa !3022
  %42 = load %struct._object*, %struct._object** %args, align 8, !dbg !3023, !tbaa !1045
  %43 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3024, !tbaa !1045
  %args24 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %43, i32 0, i32 2, !dbg !3025
  store %struct._object* %42, %struct._object** %args24, align 8, !dbg !3026, !tbaa !3027
  %44 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !3028, !tbaa !1045
  %45 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3029, !tbaa !1045
  %keyw25 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %45, i32 0, i32 3, !dbg !3030
  store %struct._object* %44, %struct._object** %keyw25, align 8, !dbg !3031, !tbaa !3032
  %46 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3033, !tbaa !1045
  %interp26 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %46, i32 0, i32 0, !dbg !3034
  %47 = load %struct._is*, %struct._is** %interp26, align 8, !dbg !3034, !tbaa !3016
  %call27 = call %struct._ts* @_PyThreadState_Prealloc(%struct._is* %47), !dbg !3035
  %48 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3036, !tbaa !1045
  %tstate = getelementptr inbounds %struct.bootstate, %struct.bootstate* %48, i32 0, i32 4, !dbg !3037
  store %struct._ts* %call27, %struct._ts** %tstate, align 8, !dbg !3038, !tbaa !3039
  %49 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3040, !tbaa !1045
  %tstate28 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %49, i32 0, i32 4, !dbg !3042
  %50 = load %struct._ts*, %struct._ts** %tstate28, align 8, !dbg !3042, !tbaa !3039
  %cmp29 = icmp eq %struct._ts* %50, null, !dbg !3043
  br i1 %cmp29, label %if.then.30, label %if.end.32, !dbg !3044

if.then.30:                                       ; preds = %sw.epilog.21
  %51 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3045, !tbaa !1045
  %52 = bitcast %struct.bootstate* %51 to i8*, !dbg !3045
  call void @PyMem_Free(i8* %52), !dbg !3047
  %call31 = call %struct._object* @PyErr_NoMemory(), !dbg !3048
  store %struct._object* %call31, %struct._object** %retval, !dbg !3049
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3049

if.end.32:                                        ; preds = %sw.epilog.21
  %53 = load %struct._object*, %struct._object** %func, align 8, !dbg !3050, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0, !dbg !3051
  %54 = load i64, i64* %ob_refcnt, align 8, !dbg !3052, !tbaa !1075
  %inc = add i64 %54, 1, !dbg !3052
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !3052, !tbaa !1075
  %55 = load %struct._object*, %struct._object** %args, align 8, !dbg !3053, !tbaa !1045
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 0, !dbg !3054
  %56 = load i64, i64* %ob_refcnt33, align 8, !dbg !3055, !tbaa !1075
  %inc34 = add i64 %56, 1, !dbg !3055
  store i64 %inc34, i64* %ob_refcnt33, align 8, !dbg !3055, !tbaa !1075
  br label %do.body, !dbg !3056

do.body:                                          ; preds = %if.end.32
  %57 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3057
  call void @llvm.lifetime.start(i64 8, i8* %57) #1, !dbg !3057
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xincref_tmp, metadata !783, metadata !1019), !dbg !3059
  %58 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !3060, !tbaa !1045
  store %struct._object* %58, %struct._object** %_py_xincref_tmp, align 8, !dbg !3059, !tbaa !1045
  %59 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3061, !tbaa !1045
  %cmp36 = icmp ne %struct._object* %59, null, !dbg !3063
  br i1 %cmp36, label %if.then.37, label %if.end.40, !dbg !3064

if.then.37:                                       ; preds = %do.body
  %60 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8, !dbg !3065, !tbaa !1045
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !3067
  %61 = load i64, i64* %ob_refcnt38, align 8, !dbg !3068, !tbaa !1075
  %inc39 = add i64 %61, 1, !dbg !3068
  store i64 %inc39, i64* %ob_refcnt38, align 8, !dbg !3068, !tbaa !1075
  br label %if.end.40, !dbg !3069

if.end.40:                                        ; preds = %if.then.37, %do.body
  %62 = bitcast %struct._object** %_py_xincref_tmp to i8*, !dbg !3070
  call void @llvm.lifetime.end(i64 8, i8* %62) #1, !dbg !3070
  br label %do.cond, !dbg !3073

do.cond:                                          ; preds = %if.end.40
  br label %do.end, !dbg !3074

do.end:                                           ; preds = %do.cond
  call void @PyEval_InitThreads(), !dbg !3076
  %63 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3077, !tbaa !1045
  %64 = bitcast %struct.bootstate* %63 to i8*, !dbg !3078
  %call41 = call i64 @PyThread_start_new_thread(void (i8*)* @t_bootstrap, i8* %64), !dbg !3079
  store i64 %call41, i64* %ident, align 8, !dbg !3080, !tbaa !1104
  %65 = load i64, i64* %ident, align 8, !dbg !3081, !tbaa !1104
  %cmp42 = icmp eq i64 %65, -1, !dbg !3082
  br i1 %cmp42, label %if.then.43, label %if.end.87, !dbg !3083

if.then.43:                                       ; preds = %do.end
  %66 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !3084, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %66, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i32 0, i32 0)), !dbg !3085
  br label %do.body.44, !dbg !3086

do.body.44:                                       ; preds = %if.then.43
  %67 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3087
  call void @llvm.lifetime.start(i64 8, i8* %67) #1, !dbg !3087
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !785, metadata !1019), !dbg !3089
  %68 = load %struct._object*, %struct._object** %func, align 8, !dbg !3090, !tbaa !1045
  store %struct._object* %68, %struct._object** %_py_decref_tmp, align 8, !dbg !3089, !tbaa !1045
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3091, !tbaa !1045
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0, !dbg !3093
  %70 = load i64, i64* %ob_refcnt46, align 8, !dbg !3094, !tbaa !1075
  %dec = add i64 %70, -1, !dbg !3094
  store i64 %dec, i64* %ob_refcnt46, align 8, !dbg !3094, !tbaa !1075
  %cmp47 = icmp ne i64 %dec, 0, !dbg !3095
  br i1 %cmp47, label %if.then.48, label %if.else, !dbg !3096

if.then.48:                                       ; preds = %do.body.44
  br label %if.end.50, !dbg !3097

if.else:                                          ; preds = %do.body.44
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3099, !tbaa !1045
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1, !dbg !3101
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !3101, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4, !dbg !3102
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3102, !tbaa !1180
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3103, !tbaa !1045
  call void %73(%struct._object* %74), !dbg !3104
  br label %if.end.50

if.end.50:                                        ; preds = %if.else, %if.then.48
  %75 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3105
  call void @llvm.lifetime.end(i64 8, i8* %75) #1, !dbg !3105
  br label %do.cond.51, !dbg !3107

do.cond.51:                                       ; preds = %if.end.50
  br label %do.end.52, !dbg !3108

do.end.52:                                        ; preds = %do.cond.51
  br label %do.body.53, !dbg !3110

do.body.53:                                       ; preds = %do.end.52
  %76 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !3111
  call void @llvm.lifetime.start(i64 8, i8* %76) #1, !dbg !3111
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp55, metadata !789, metadata !1019), !dbg !3113
  %77 = load %struct._object*, %struct._object** %args, align 8, !dbg !3114, !tbaa !1045
  store %struct._object* %77, %struct._object** %_py_decref_tmp55, align 8, !dbg !3113, !tbaa !1045
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !3115, !tbaa !1045
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %78, i32 0, i32 0, !dbg !3117
  %79 = load i64, i64* %ob_refcnt56, align 8, !dbg !3118, !tbaa !1075
  %dec57 = add i64 %79, -1, !dbg !3118
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !3118, !tbaa !1075
  %cmp58 = icmp ne i64 %dec57, 0, !dbg !3119
  br i1 %cmp58, label %if.then.59, label %if.else.60, !dbg !3120

if.then.59:                                       ; preds = %do.body.53
  br label %if.end.63, !dbg !3121

if.else.60:                                       ; preds = %do.body.53
  %80 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !3123, !tbaa !1045
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %80, i32 0, i32 1, !dbg !3125
  %81 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !3125, !tbaa !1130
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %81, i32 0, i32 4, !dbg !3126
  %82 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !3126, !tbaa !1180
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp55, align 8, !dbg !3127, !tbaa !1045
  call void %82(%struct._object* %83), !dbg !3128
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.60, %if.then.59
  %84 = bitcast %struct._object** %_py_decref_tmp55 to i8*, !dbg !3129
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !3129
  br label %do.cond.64, !dbg !3130

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !3131

do.end.65:                                        ; preds = %do.cond.64
  br label %do.body.66, !dbg !3133

do.body.66:                                       ; preds = %do.end.65
  %85 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3134
  call void @llvm.lifetime.start(i64 8, i8* %85) #1, !dbg !3134
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !791, metadata !1019), !dbg !3136
  %86 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !3137, !tbaa !1045
  store %struct._object* %86, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3136, !tbaa !1045
  %87 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3138, !tbaa !1045
  %cmp68 = icmp ne %struct._object* %87, null, !dbg !3139
  br i1 %cmp68, label %if.then.69, label %if.end.83, !dbg !3140

if.then.69:                                       ; preds = %do.body.66
  br label %do.body.70, !dbg !3141

do.body.70:                                       ; preds = %if.then.69
  %88 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !3143
  call void @llvm.lifetime.start(i64 8, i8* %88) #1, !dbg !3143
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp72, metadata !793, metadata !1019), !dbg !3145
  %89 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3146, !tbaa !1045
  store %struct._object* %89, %struct._object** %_py_decref_tmp72, align 8, !dbg !3145, !tbaa !1045
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !3147, !tbaa !1045
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0, !dbg !3149
  %91 = load i64, i64* %ob_refcnt73, align 8, !dbg !3150, !tbaa !1075
  %dec74 = add i64 %91, -1, !dbg !3150
  store i64 %dec74, i64* %ob_refcnt73, align 8, !dbg !3150, !tbaa !1075
  %cmp75 = icmp ne i64 %dec74, 0, !dbg !3151
  br i1 %cmp75, label %if.then.76, label %if.else.77, !dbg !3152

if.then.76:                                       ; preds = %do.body.70
  br label %if.end.80, !dbg !3153

if.else.77:                                       ; preds = %do.body.70
  %92 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !3155, !tbaa !1045
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %92, i32 0, i32 1, !dbg !3157
  %93 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8, !dbg !3157, !tbaa !1130
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %93, i32 0, i32 4, !dbg !3158
  %94 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8, !dbg !3158, !tbaa !1180
  %95 = load %struct._object*, %struct._object** %_py_decref_tmp72, align 8, !dbg !3159, !tbaa !1045
  call void %94(%struct._object* %95), !dbg !3160
  br label %if.end.80

if.end.80:                                        ; preds = %if.else.77, %if.then.76
  %96 = bitcast %struct._object** %_py_decref_tmp72 to i8*, !dbg !3161
  call void @llvm.lifetime.end(i64 8, i8* %96) #1, !dbg !3161
  br label %do.cond.81, !dbg !3163

do.cond.81:                                       ; preds = %if.end.80
  br label %do.end.82, !dbg !3164

do.end.82:                                        ; preds = %do.cond.81
  br label %if.end.83, !dbg !3166

if.end.83:                                        ; preds = %do.end.82, %do.body.66
  %97 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3168
  call void @llvm.lifetime.end(i64 8, i8* %97) #1, !dbg !3168
  br label %do.cond.84, !dbg !3171

do.cond.84:                                       ; preds = %if.end.83
  br label %do.end.85, !dbg !3172

do.end.85:                                        ; preds = %do.cond.84
  %98 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3174, !tbaa !1045
  %tstate86 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %98, i32 0, i32 4, !dbg !3175
  %99 = load %struct._ts*, %struct._ts** %tstate86, align 8, !dbg !3175, !tbaa !3039
  call void @PyThreadState_Clear(%struct._ts* %99), !dbg !3176
  %100 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3177, !tbaa !1045
  %101 = bitcast %struct.bootstate* %100 to i8*, !dbg !3177
  call void @PyMem_Free(i8* %101), !dbg !3178
  store %struct._object* null, %struct._object** %retval, !dbg !3179
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3179

if.end.87:                                        ; preds = %do.end
  %102 = load i64, i64* %ident, align 8, !dbg !3180, !tbaa !1104
  %call88 = call %struct._object* @PyLong_FromLong(i64 %102), !dbg !3181
  store %struct._object* %call88, %struct._object** %retval, !dbg !3182
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3182

cleanup:                                          ; preds = %if.end.87, %do.end.85, %if.then.30, %if.then.16, %if.then.12, %if.then.5, %if.then.3, %if.then
  %103 = bitcast i64* %ident to i8*, !dbg !3183
  call void @llvm.lifetime.end(i64 8, i8* %103) #1, !dbg !3183
  %104 = bitcast %struct.bootstate** %boot to i8*, !dbg !3183
  call void @llvm.lifetime.end(i64 8, i8* %104) #1, !dbg !3183
  %105 = bitcast %struct._object** %keyw to i8*, !dbg !3183
  call void @llvm.lifetime.end(i64 8, i8* %105) #1, !dbg !3183
  %106 = bitcast %struct._object** %args to i8*, !dbg !3183
  call void @llvm.lifetime.end(i64 8, i8* %106) #1, !dbg !3183
  %107 = bitcast %struct._object** %func to i8*, !dbg !3183
  call void @llvm.lifetime.end(i64 8, i8* %107) #1, !dbg !3183
  %108 = load %struct._object*, %struct._object** %retval, !dbg !3183
  ret %struct._object* %108, !dbg !3183
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_allocate_lock(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !840, metadata !1019), !dbg !3184
  %call = call %struct.lockobject* @newlockobject(), !dbg !3185
  %0 = bitcast %struct.lockobject* %call to %struct._object*, !dbg !3186
  ret %struct._object* %0, !dbg !3187
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_exit_thread(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !852, metadata !1019), !dbg !3188
  %0 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8, !dbg !3189, !tbaa !1045
  call void @PyErr_SetNone(%struct._object* %0), !dbg !3190
  ret %struct._object* null, !dbg !3191
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_interrupt_main(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !855, metadata !1019), !dbg !3192
  call void @PyErr_SetInterrupt(), !dbg !3193
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3194, !tbaa !1075
  %inc = add i64 %0, 1, !dbg !3194
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !3194, !tbaa !1075
  ret %struct._object* @_Py_NoneStruct, !dbg !3195
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_get_ident(%struct._object* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct._object*, align 8
  %ident = alloca i64, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !858, metadata !1019), !dbg !3196
  %0 = bitcast i64* %ident to i8*, !dbg !3197
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3197
  call void @llvm.dbg.declare(metadata i64* %ident, metadata !859, metadata !1019), !dbg !3198
  %call = call i64 @PyThread_get_thread_ident(), !dbg !3199
  store i64 %call, i64* %ident, align 8, !dbg !3200, !tbaa !1104
  %1 = load i64, i64* %ident, align 8, !dbg !3201, !tbaa !1104
  %cmp = icmp eq i64 %1, -1, !dbg !3203
  br i1 %cmp, label %if.then, label %if.end, !dbg !3204

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !3205, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i32 0, i32 0)), !dbg !3207
  store %struct._object* null, %struct._object** %retval, !dbg !3208
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3208

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %ident, align 8, !dbg !3209, !tbaa !1104
  %call1 = call %struct._object* @PyLong_FromLong(i64 %3), !dbg !3210
  store %struct._object* %call1, %struct._object** %retval, !dbg !3211
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3211

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i64* %ident to i8*, !dbg !3212
  call void @llvm.lifetime.end(i64 8, i8* %4) #1, !dbg !3212
  %5 = load %struct._object*, %struct._object** %retval, !dbg !3212
  ret %struct._object* %5, !dbg !3212
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread__count(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !862, metadata !1019), !dbg !3213
  %0 = load i64, i64* @nb_threads, align 8, !dbg !3214, !tbaa !1104
  %call = call %struct._object* @PyLong_FromLong(i64 %0), !dbg !3215
  ret %struct._object* %call, !dbg !3216
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
  %cleanup.dest.slot = alloca i32
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !865, metadata !1019), !dbg !3217
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !866, metadata !1019), !dbg !3218
  %0 = bitcast i64* %old_size to i8*, !dbg !3219
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3219
  call void @llvm.dbg.declare(metadata i64* %old_size, metadata !867, metadata !1019), !dbg !3220
  %1 = bitcast i64* %new_size to i8*, !dbg !3221
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3221
  call void @llvm.dbg.declare(metadata i64* %new_size, metadata !868, metadata !1019), !dbg !3222
  store i64 0, i64* %new_size, align 8, !dbg !3222, !tbaa !1104
  %2 = bitcast i32* %rc to i8*, !dbg !3223
  call void @llvm.lifetime.start(i64 4, i8* %2) #1, !dbg !3223
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !869, metadata !1019), !dbg !3224
  %3 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !3225, !tbaa !1045
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i32 0, i32 0), i64* %new_size), !dbg !3227
  %tobool = icmp ne i32 %call, 0, !dbg !3227
  br i1 %tobool, label %if.end, label %if.then, !dbg !3228

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !3229
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3229

if.end:                                           ; preds = %entry
  %4 = load i64, i64* %new_size, align 8, !dbg !3230, !tbaa !1104
  %cmp = icmp slt i64 %4, 0, !dbg !3232
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !3233

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3234, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i32 0, i32 0)), !dbg !3236
  store %struct._object* null, %struct._object** %retval, !dbg !3237
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3237

if.end.2:                                         ; preds = %if.end
  %call3 = call i64 @PyThread_get_stacksize(), !dbg !3238
  store i64 %call3, i64* %old_size, align 8, !dbg !3239, !tbaa !1104
  %6 = load i64, i64* %new_size, align 8, !dbg !3240, !tbaa !1104
  %call4 = call i32 @PyThread_set_stacksize(i64 %6), !dbg !3241
  store i32 %call4, i32* %rc, align 4, !dbg !3242, !tbaa !1221
  %7 = load i32, i32* %rc, align 4, !dbg !3243, !tbaa !1221
  %cmp5 = icmp eq i32 %7, -1, !dbg !3245
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !3246

if.then.6:                                        ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !3247, !tbaa !1045
  %9 = load i64, i64* %new_size, align 8, !dbg !3249, !tbaa !1104
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i32 0, i32 0), i64 %9), !dbg !3250
  store %struct._object* null, %struct._object** %retval, !dbg !3251
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3251

if.end.8:                                         ; preds = %if.end.2
  %10 = load i32, i32* %rc, align 4, !dbg !3252, !tbaa !1221
  %cmp9 = icmp eq i32 %10, -2, !dbg !3254
  br i1 %cmp9, label %if.then.10, label %if.end.11, !dbg !3255

if.then.10:                                       ; preds = %if.end.8
  %11 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !3256, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %11, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i32 0, i32 0)), !dbg !3258
  store %struct._object* null, %struct._object** %retval, !dbg !3259
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3259

if.end.11:                                        ; preds = %if.end.8
  %12 = load i64, i64* %old_size, align 8, !dbg !3260, !tbaa !1104
  %call12 = call %struct._object* @PyLong_FromSsize_t(i64 %12), !dbg !3261
  store %struct._object* %call12, %struct._object** %retval, !dbg !3262
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3262

cleanup:                                          ; preds = %if.end.11, %if.then.10, %if.then.6, %if.then.1, %if.then
  %13 = bitcast i32* %rc to i8*, !dbg !3263
  call void @llvm.lifetime.end(i64 4, i8* %13) #1, !dbg !3263
  %14 = bitcast i64* %new_size to i8*, !dbg !3263
  call void @llvm.lifetime.end(i64 8, i8* %14) #1, !dbg !3263
  %15 = bitcast i64* %old_size to i8*, !dbg !3263
  call void @llvm.lifetime.end(i64 8, i8* %15) #1, !dbg !3263
  %16 = load %struct._object*, %struct._object** %retval, !dbg !3263
  ret %struct._object* %16, !dbg !3263
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
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata %struct._object** %self.addr, metadata !872, metadata !1019), !dbg !3264
  %0 = bitcast %struct._object** %wr to i8*, !dbg !3265
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3265
  call void @llvm.dbg.declare(metadata %struct._object** %wr, metadata !873, metadata !1019), !dbg !3266
  %1 = bitcast %struct._ts** %tstate to i8*, !dbg !3267
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !3267
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !874, metadata !1019), !dbg !3268
  %call = call %struct._ts* @PyThreadState_Get(), !dbg !3269
  store %struct._ts* %call, %struct._ts** %tstate, align 8, !dbg !3268, !tbaa !1045
  %2 = bitcast %struct.lockobject** %lock to i8*, !dbg !3270
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !3270
  call void @llvm.dbg.declare(metadata %struct.lockobject** %lock, metadata !875, metadata !1019), !dbg !3271
  %3 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3272, !tbaa !1045
  %on_delete_data = getelementptr inbounds %struct._ts, %struct._ts* %3, i32 0, i32 26, !dbg !3273
  %4 = load i8*, i8** %on_delete_data, align 8, !dbg !3273, !tbaa !3274
  %cmp = icmp ne i8* %4, null, !dbg !3275
  br i1 %cmp, label %if.then, label %if.end.5, !dbg !3276

if.then:                                          ; preds = %entry
  %5 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3277, !tbaa !1045
  %on_delete_data1 = getelementptr inbounds %struct._ts, %struct._ts* %5, i32 0, i32 26, !dbg !3278
  %6 = load i8*, i8** %on_delete_data1, align 8, !dbg !3278, !tbaa !3274
  %7 = bitcast i8* %6 to %struct._object*, !dbg !3279
  store %struct._object* %7, %struct._object** %wr, align 8, !dbg !3280, !tbaa !1045
  %8 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3281, !tbaa !1045
  %on_delete = getelementptr inbounds %struct._ts, %struct._ts* %8, i32 0, i32 25, !dbg !3282
  store void (i8*)* null, void (i8*)** %on_delete, align 8, !dbg !3283, !tbaa !3284
  %9 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3285, !tbaa !1045
  %on_delete_data2 = getelementptr inbounds %struct._ts, %struct._ts* %9, i32 0, i32 26, !dbg !3286
  store i8* null, i8** %on_delete_data2, align 8, !dbg !3287, !tbaa !3274
  br label %do.body, !dbg !3288

do.body:                                          ; preds = %if.then
  %10 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3289
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !3289
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !876, metadata !1019), !dbg !3291
  %11 = load %struct._object*, %struct._object** %wr, align 8, !dbg !3292, !tbaa !1045
  store %struct._object* %11, %struct._object** %_py_decref_tmp, align 8, !dbg !3291, !tbaa !1045
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3293, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 0, !dbg !3295
  %13 = load i64, i64* %ob_refcnt, align 8, !dbg !3296, !tbaa !1075
  %dec = add i64 %13, -1, !dbg !3296
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3296, !tbaa !1075
  %cmp3 = icmp ne i64 %dec, 0, !dbg !3297
  br i1 %cmp3, label %if.then.4, label %if.else, !dbg !3298

if.then.4:                                        ; preds = %do.body
  br label %if.end, !dbg !3299

if.else:                                          ; preds = %do.body
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3301, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1, !dbg !3303
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3303, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 4, !dbg !3304
  %16 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3304, !tbaa !1180
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3305, !tbaa !1045
  call void %16(%struct._object* %17), !dbg !3306
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  %18 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3307
  call void @llvm.lifetime.end(i64 8, i8* %18) #1, !dbg !3307
  br label %do.cond, !dbg !3309

do.cond:                                          ; preds = %if.end
  br label %do.end, !dbg !3310

do.end:                                           ; preds = %do.cond
  br label %if.end.5, !dbg !3312

if.end.5:                                         ; preds = %do.end, %entry
  %call6 = call %struct.lockobject* @newlockobject(), !dbg !3313
  store %struct.lockobject* %call6, %struct.lockobject** %lock, align 8, !dbg !3314, !tbaa !1045
  %19 = load %struct.lockobject*, %struct.lockobject** %lock, align 8, !dbg !3315, !tbaa !1045
  %cmp7 = icmp eq %struct.lockobject* %19, null, !dbg !3317
  br i1 %cmp7, label %if.then.8, label %if.end.9, !dbg !3318

if.then.8:                                        ; preds = %if.end.5
  store %struct._object* null, %struct._object** %retval, !dbg !3319
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3319

if.end.9:                                         ; preds = %if.end.5
  %20 = load %struct.lockobject*, %struct.lockobject** %lock, align 8, !dbg !3320, !tbaa !1045
  %21 = bitcast %struct.lockobject* %20 to %struct._object*, !dbg !3321
  %call10 = call %struct._object* @PyWeakref_NewRef(%struct._object* %21, %struct._object* null), !dbg !3322
  store %struct._object* %call10, %struct._object** %wr, align 8, !dbg !3323, !tbaa !1045
  %22 = load %struct._object*, %struct._object** %wr, align 8, !dbg !3324, !tbaa !1045
  %cmp11 = icmp eq %struct._object* %22, null, !dbg !3325
  br i1 %cmp11, label %if.then.12, label %if.end.25, !dbg !3326

if.then.12:                                       ; preds = %if.end.9
  br label %do.body.13, !dbg !3327

do.body.13:                                       ; preds = %if.then.12
  %23 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3328
  call void @llvm.lifetime.start(i64 8, i8* %23) #1, !dbg !3328
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp14, metadata !880, metadata !1019), !dbg !3330
  %24 = load %struct.lockobject*, %struct.lockobject** %lock, align 8, !dbg !3331, !tbaa !1045
  %25 = bitcast %struct.lockobject* %24 to %struct._object*, !dbg !3332
  store %struct._object* %25, %struct._object** %_py_decref_tmp14, align 8, !dbg !3330, !tbaa !1045
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3333, !tbaa !1045
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0, !dbg !3335
  %27 = load i64, i64* %ob_refcnt15, align 8, !dbg !3336, !tbaa !1075
  %dec16 = add i64 %27, -1, !dbg !3336
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !3336, !tbaa !1075
  %cmp17 = icmp ne i64 %dec16, 0, !dbg !3337
  br i1 %cmp17, label %if.then.18, label %if.else.19, !dbg !3338

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.22, !dbg !3339

if.else.19:                                       ; preds = %do.body.13
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3341, !tbaa !1045
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1, !dbg !3343
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !3343, !tbaa !1130
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4, !dbg !3344
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !3344, !tbaa !1180
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8, !dbg !3345, !tbaa !1045
  call void %30(%struct._object* %31), !dbg !3346
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.19, %if.then.18
  %32 = bitcast %struct._object** %_py_decref_tmp14 to i8*, !dbg !3347
  call void @llvm.lifetime.end(i64 8, i8* %32) #1, !dbg !3347
  br label %do.cond.23, !dbg !3349

do.cond.23:                                       ; preds = %if.end.22
  br label %do.end.24, !dbg !3350

do.end.24:                                        ; preds = %do.cond.23
  store %struct._object* null, %struct._object** %retval, !dbg !3352
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3352

if.end.25:                                        ; preds = %if.end.9
  %33 = load %struct._object*, %struct._object** %wr, align 8, !dbg !3353, !tbaa !1045
  %34 = bitcast %struct._object* %33 to i8*, !dbg !3354
  %35 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3355, !tbaa !1045
  %on_delete_data26 = getelementptr inbounds %struct._ts, %struct._ts* %35, i32 0, i32 26, !dbg !3356
  store i8* %34, i8** %on_delete_data26, align 8, !dbg !3357, !tbaa !3274
  %36 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3358, !tbaa !1045
  %on_delete27 = getelementptr inbounds %struct._ts, %struct._ts* %36, i32 0, i32 25, !dbg !3359
  store void (i8*)* @release_sentinel, void (i8*)** %on_delete27, align 8, !dbg !3360, !tbaa !3284
  %37 = load %struct.lockobject*, %struct.lockobject** %lock, align 8, !dbg !3361, !tbaa !1045
  %38 = bitcast %struct.lockobject* %37 to %struct._object*, !dbg !3362
  store %struct._object* %38, %struct._object** %retval, !dbg !3363
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3363

cleanup:                                          ; preds = %if.end.25, %do.end.24, %if.then.8
  %39 = bitcast %struct.lockobject** %lock to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %39) #1, !dbg !3364
  %40 = bitcast %struct._ts** %tstate to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %40) #1, !dbg !3364
  %41 = bitcast %struct._object** %wr to i8*, !dbg !3364
  call void @llvm.lifetime.end(i64 8, i8* %41) #1, !dbg !3364
  %42 = load %struct._object*, %struct._object** %retval, !dbg !3364
  ret %struct._object* %42, !dbg !3364
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_ANNOTATE_MEMORY_ORDER(i8* %address, i32 %order) #4 {
entry:
  %address.addr = alloca i8*, align 8
  %order.addr = alloca i32, align 4
  store i8* %address, i8** %address.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata i8** %address.addr, metadata !803, metadata !1019), !dbg !3365
  store i32 %order, i32* %order.addr, align 4, !tbaa !2391
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !804, metadata !1019), !dbg !3366
  %0 = load i8*, i8** %address.addr, align 8, !dbg !3367, !tbaa !1045
  %1 = load i32, i32* %order.addr, align 4, !dbg !3368, !tbaa !2391
  switch i32 %1, label %sw.epilog [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
    i32 0, label %sw.bb.1
    i32 1, label %sw.bb.1
  ], !dbg !3369

sw.bb:                                            ; preds = %entry, %entry, %entry
  br label %sw.epilog, !dbg !3370

sw.bb.1:                                          ; preds = %entry, %entry
  br label %sw.epilog, !dbg !3372

sw.epilog:                                        ; preds = %entry, %sw.bb.1, %sw.bb
  %2 = load i32, i32* %order.addr, align 4, !dbg !3373, !tbaa !2391
  switch i32 %2, label %sw.epilog.4 [
    i32 1, label %sw.bb.2
    i32 3, label %sw.bb.2
    i32 4, label %sw.bb.2
    i32 0, label %sw.bb.3
    i32 2, label %sw.bb.3
  ], !dbg !3374

sw.bb.2:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !3375

sw.bb.3:                                          ; preds = %sw.epilog, %sw.epilog
  br label %sw.epilog.4, !dbg !3377

sw.epilog.4:                                      ; preds = %sw.epilog, %sw.bb.3, %sw.bb.2
  ret void, !dbg !3378
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_thread_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !2391
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !809, metadata !1019), !dbg !3379
  %0 = load i32, i32* %order.addr, align 4, !dbg !3380, !tbaa !2391
  %cmp = icmp ne i32 %0, 0, !dbg !3382
  br i1 %cmp, label %if.then, label %if.end, !dbg !3383

if.then:                                          ; preds = %entry
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !dbg !3384, !srcloc !3385
  br label %if.end, !dbg !3384

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3386
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @_Py_atomic_signal_fence(i32 %order) #4 {
entry:
  %order.addr = alloca i32, align 4
  store i32 %order, i32* %order.addr, align 4, !tbaa !2391
  call void @llvm.dbg.declare(metadata i32* %order.addr, metadata !812, metadata !1019), !dbg !3387
  %0 = load i32, i32* %order.addr, align 4, !dbg !3388, !tbaa !2391
  %cmp = icmp ne i32 %0, 0, !dbg !3390
  br i1 %cmp, label %if.then, label %if.end, !dbg !3391

if.then:                                          ; preds = %entry
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #1, !dbg !3392, !srcloc !3393
  br label %if.end, !dbg !3392

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3394
}

declare %struct._ts* @_PyThreadState_Prealloc(%struct._is*) #3

declare void @PyMem_Free(i8*) #3

declare void @PyEval_InitThreads() #3

declare i64 @PyThread_start_new_thread(void (i8*)*, i8*) #3

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
  %_py_decref_tmp35 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp52 = alloca %struct._object*, align 8
  store i8* %boot_raw, i8** %boot_raw.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata i8** %boot_raw.addr, metadata !815, metadata !1019), !dbg !3395
  %0 = bitcast %struct.bootstate** %boot to i8*, !dbg !3396
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3396
  call void @llvm.dbg.declare(metadata %struct.bootstate** %boot, metadata !816, metadata !1019), !dbg !3397
  %1 = load i8*, i8** %boot_raw.addr, align 8, !dbg !3398, !tbaa !1045
  %2 = bitcast i8* %1 to %struct.bootstate*, !dbg !3399
  store %struct.bootstate* %2, %struct.bootstate** %boot, align 8, !dbg !3397, !tbaa !1045
  %3 = bitcast %struct._ts** %tstate to i8*, !dbg !3400
  call void @llvm.lifetime.start(i64 8, i8* %3) #1, !dbg !3400
  call void @llvm.dbg.declare(metadata %struct._ts** %tstate, metadata !817, metadata !1019), !dbg !3401
  %4 = bitcast %struct._object** %res to i8*, !dbg !3402
  call void @llvm.lifetime.start(i64 8, i8* %4) #1, !dbg !3402
  call void @llvm.dbg.declare(metadata %struct._object** %res, metadata !818, metadata !1019), !dbg !3403
  %5 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3404, !tbaa !1045
  %tstate1 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %5, i32 0, i32 4, !dbg !3405
  %6 = load %struct._ts*, %struct._ts** %tstate1, align 8, !dbg !3405, !tbaa !3039
  store %struct._ts* %6, %struct._ts** %tstate, align 8, !dbg !3406, !tbaa !1045
  %call = call i64 @PyThread_get_thread_ident(), !dbg !3407
  %7 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3408, !tbaa !1045
  %thread_id = getelementptr inbounds %struct._ts, %struct._ts* %7, i32 0, i32 22, !dbg !3409
  store i64 %call, i64* %thread_id, align 8, !dbg !3410, !tbaa !3411
  %8 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3412, !tbaa !1045
  call void @_PyThreadState_Init(%struct._ts* %8), !dbg !3413
  %9 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3414, !tbaa !1045
  call void @PyEval_AcquireThread(%struct._ts* %9), !dbg !3415
  %10 = load i64, i64* @nb_threads, align 8, !dbg !3416, !tbaa !1104
  %inc = add i64 %10, 1, !dbg !3416
  store i64 %inc, i64* @nb_threads, align 8, !dbg !3416, !tbaa !1104
  %11 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3417, !tbaa !1045
  %func = getelementptr inbounds %struct.bootstate, %struct.bootstate* %11, i32 0, i32 1, !dbg !3418
  %12 = load %struct._object*, %struct._object** %func, align 8, !dbg !3418, !tbaa !3022
  %13 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3419, !tbaa !1045
  %args = getelementptr inbounds %struct.bootstate, %struct.bootstate* %13, i32 0, i32 2, !dbg !3420
  %14 = load %struct._object*, %struct._object** %args, align 8, !dbg !3420, !tbaa !3027
  %15 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3421, !tbaa !1045
  %keyw = getelementptr inbounds %struct.bootstate, %struct.bootstate* %15, i32 0, i32 3, !dbg !3422
  %16 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !3422, !tbaa !3032
  %call2 = call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %12, %struct._object* %14, %struct._object* %16), !dbg !3423
  store %struct._object* %call2, %struct._object** %res, align 8, !dbg !3424, !tbaa !1045
  %17 = load %struct._object*, %struct._object** %res, align 8, !dbg !3425, !tbaa !1045
  %cmp = icmp eq %struct._object* %17, null, !dbg !3426
  br i1 %cmp, label %if.then, label %if.else.15, !dbg !3427

if.then:                                          ; preds = %entry
  %18 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8, !dbg !3428, !tbaa !1045
  %call3 = call i32 @PyErr_ExceptionMatches(%struct._object* %18), !dbg !3429
  %tobool = icmp ne i32 %call3, 0, !dbg !3429
  br i1 %tobool, label %if.then.4, label %if.else, !dbg !3430

if.then.4:                                        ; preds = %if.then
  call void @PyErr_Clear(), !dbg !3431
  br label %if.end.14, !dbg !3431

if.else:                                          ; preds = %if.then
  %19 = bitcast %struct._object** %file to i8*, !dbg !3432
  call void @llvm.lifetime.start(i64 8, i8* %19) #1, !dbg !3432
  call void @llvm.dbg.declare(metadata %struct._object** %file, metadata !819, metadata !1019), !dbg !3433
  %20 = bitcast %struct._object** %exc to i8*, !dbg !3434
  call void @llvm.lifetime.start(i64 8, i8* %20) #1, !dbg !3434
  call void @llvm.dbg.declare(metadata %struct._object** %exc, metadata !824, metadata !1019), !dbg !3435
  %21 = bitcast %struct._object** %value to i8*, !dbg !3434
  call void @llvm.lifetime.start(i64 8, i8* %21) #1, !dbg !3434
  call void @llvm.dbg.declare(metadata %struct._object** %value, metadata !825, metadata !1019), !dbg !3436
  %22 = bitcast %struct._object** %tb to i8*, !dbg !3434
  call void @llvm.lifetime.start(i64 8, i8* %22) #1, !dbg !3434
  call void @llvm.dbg.declare(metadata %struct._object** %tb, metadata !826, metadata !1019), !dbg !3437
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i32 0, i32 0)), !dbg !3438
  call void @PyErr_Fetch(%struct._object** %exc, %struct._object** %value, %struct._object** %tb), !dbg !3439
  %call5 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* @PyId_stderr), !dbg !3440
  store %struct._object* %call5, %struct._object** %file, align 8, !dbg !3441, !tbaa !1045
  %23 = load %struct._object*, %struct._object** %file, align 8, !dbg !3442, !tbaa !1045
  %cmp6 = icmp ne %struct._object* %23, null, !dbg !3444
  br i1 %cmp6, label %land.lhs.true, label %if.else.11, !dbg !3445

land.lhs.true:                                    ; preds = %if.else
  %24 = load %struct._object*, %struct._object** %file, align 8, !dbg !3446, !tbaa !1045
  %cmp7 = icmp ne %struct._object* %24, @_Py_NoneStruct, !dbg !3448
  br i1 %cmp7, label %if.then.8, label %if.else.11, !dbg !3449

if.then.8:                                        ; preds = %land.lhs.true
  %25 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3450, !tbaa !1045
  %func9 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %25, i32 0, i32 1, !dbg !3451
  %26 = load %struct._object*, %struct._object** %func9, align 8, !dbg !3451, !tbaa !3022
  %27 = load %struct._object*, %struct._object** %file, align 8, !dbg !3452, !tbaa !1045
  %call10 = call i32 @PyFile_WriteObject(%struct._object* %26, %struct._object* %27, i32 0), !dbg !3453
  br label %if.end, !dbg !3453

if.else.11:                                       ; preds = %land.lhs.true, %if.else
  %28 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3454, !tbaa !1045
  %func12 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %28, i32 0, i32 1, !dbg !3455
  %29 = load %struct._object*, %struct._object** %func12, align 8, !dbg !3455, !tbaa !3022
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3456, !tbaa !1045
  %call13 = call i32 @PyObject_Print(%struct._object* %29, %struct._IO_FILE* %30, i32 0), !dbg !3457
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i32 0, i32 0)), !dbg !3458
  %31 = load %struct._object*, %struct._object** %exc, align 8, !dbg !3459, !tbaa !1045
  %32 = load %struct._object*, %struct._object** %value, align 8, !dbg !3460, !tbaa !1045
  %33 = load %struct._object*, %struct._object** %tb, align 8, !dbg !3461, !tbaa !1045
  call void @PyErr_Restore(%struct._object* %31, %struct._object* %32, %struct._object* %33), !dbg !3462
  call void @PyErr_PrintEx(i32 0), !dbg !3463
  %34 = bitcast %struct._object** %tb to i8*, !dbg !3464
  call void @llvm.lifetime.end(i64 8, i8* %34) #1, !dbg !3464
  %35 = bitcast %struct._object** %value to i8*, !dbg !3464
  call void @llvm.lifetime.end(i64 8, i8* %35) #1, !dbg !3464
  %36 = bitcast %struct._object** %exc to i8*, !dbg !3464
  call void @llvm.lifetime.end(i64 8, i8* %36) #1, !dbg !3464
  %37 = bitcast %struct._object** %file to i8*, !dbg !3464
  call void @llvm.lifetime.end(i64 8, i8* %37) #1, !dbg !3464
  br label %if.end.14

if.end.14:                                        ; preds = %if.end, %if.then.4
  br label %if.end.20, !dbg !3465

if.else.15:                                       ; preds = %entry
  br label %do.body, !dbg !3466

do.body:                                          ; preds = %if.else.15
  %38 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3467
  call void @llvm.lifetime.start(i64 8, i8* %38) #1, !dbg !3467
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !827, metadata !1019), !dbg !3469
  %39 = load %struct._object*, %struct._object** %res, align 8, !dbg !3470, !tbaa !1045
  store %struct._object* %39, %struct._object** %_py_decref_tmp, align 8, !dbg !3469, !tbaa !1045
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3471, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %40, i32 0, i32 0, !dbg !3473
  %41 = load i64, i64* %ob_refcnt, align 8, !dbg !3474, !tbaa !1075
  %dec = add i64 %41, -1, !dbg !3474
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3474, !tbaa !1075
  %cmp16 = icmp ne i64 %dec, 0, !dbg !3475
  br i1 %cmp16, label %if.then.17, label %if.else.18, !dbg !3476

if.then.17:                                       ; preds = %do.body
  br label %if.end.19, !dbg !3477

if.else.18:                                       ; preds = %do.body
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3479, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 1, !dbg !3481
  %43 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3481, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %43, i32 0, i32 4, !dbg !3482
  %44 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3482, !tbaa !1180
  %45 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3483, !tbaa !1045
  call void %44(%struct._object* %45), !dbg !3484
  br label %if.end.19

if.end.19:                                        ; preds = %if.else.18, %if.then.17
  %46 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3485
  call void @llvm.lifetime.end(i64 8, i8* %46) #1, !dbg !3485
  br label %do.cond, !dbg !3487

do.cond:                                          ; preds = %if.end.19
  br label %do.end, !dbg !3488

do.end:                                           ; preds = %do.cond
  br label %if.end.20

if.end.20:                                        ; preds = %do.end, %if.end.14
  br label %do.body.21, !dbg !3490

do.body.21:                                       ; preds = %if.end.20
  %47 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3491
  call void @llvm.lifetime.start(i64 8, i8* %47) #1, !dbg !3491
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp22, metadata !829, metadata !1019), !dbg !3493
  %48 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3494, !tbaa !1045
  %func23 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %48, i32 0, i32 1, !dbg !3495
  %49 = load %struct._object*, %struct._object** %func23, align 8, !dbg !3495, !tbaa !3022
  store %struct._object* %49, %struct._object** %_py_decref_tmp22, align 8, !dbg !3493, !tbaa !1045
  %50 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3496, !tbaa !1045
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %50, i32 0, i32 0, !dbg !3498
  %51 = load i64, i64* %ob_refcnt24, align 8, !dbg !3499, !tbaa !1075
  %dec25 = add i64 %51, -1, !dbg !3499
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !3499, !tbaa !1075
  %cmp26 = icmp ne i64 %dec25, 0, !dbg !3500
  br i1 %cmp26, label %if.then.27, label %if.else.28, !dbg !3501

if.then.27:                                       ; preds = %do.body.21
  br label %if.end.31, !dbg !3502

if.else.28:                                       ; preds = %do.body.21
  %52 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3504, !tbaa !1045
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %52, i32 0, i32 1, !dbg !3506
  %53 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !3506, !tbaa !1130
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %53, i32 0, i32 4, !dbg !3507
  %54 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !3507, !tbaa !1180
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp22, align 8, !dbg !3508, !tbaa !1045
  call void %54(%struct._object* %55), !dbg !3509
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.28, %if.then.27
  %56 = bitcast %struct._object** %_py_decref_tmp22 to i8*, !dbg !3510
  call void @llvm.lifetime.end(i64 8, i8* %56) #1, !dbg !3510
  br label %do.cond.32, !dbg !3512

do.cond.32:                                       ; preds = %if.end.31
  br label %do.end.33, !dbg !3513

do.end.33:                                        ; preds = %do.cond.32
  br label %do.body.34, !dbg !3515

do.body.34:                                       ; preds = %do.end.33
  %57 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !3516
  call void @llvm.lifetime.start(i64 8, i8* %57) #1, !dbg !3516
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp35, metadata !831, metadata !1019), !dbg !3518
  %58 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3519, !tbaa !1045
  %args36 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %58, i32 0, i32 2, !dbg !3520
  %59 = load %struct._object*, %struct._object** %args36, align 8, !dbg !3520, !tbaa !3027
  store %struct._object* %59, %struct._object** %_py_decref_tmp35, align 8, !dbg !3518, !tbaa !1045
  %60 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !3521, !tbaa !1045
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %60, i32 0, i32 0, !dbg !3523
  %61 = load i64, i64* %ob_refcnt37, align 8, !dbg !3524, !tbaa !1075
  %dec38 = add i64 %61, -1, !dbg !3524
  store i64 %dec38, i64* %ob_refcnt37, align 8, !dbg !3524, !tbaa !1075
  %cmp39 = icmp ne i64 %dec38, 0, !dbg !3525
  br i1 %cmp39, label %if.then.40, label %if.else.41, !dbg !3526

if.then.40:                                       ; preds = %do.body.34
  br label %if.end.44, !dbg !3527

if.else.41:                                       ; preds = %do.body.34
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !3529, !tbaa !1045
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %62, i32 0, i32 1, !dbg !3531
  %63 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !3531, !tbaa !1130
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %63, i32 0, i32 4, !dbg !3532
  %64 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8, !dbg !3532, !tbaa !1180
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp35, align 8, !dbg !3533, !tbaa !1045
  call void %64(%struct._object* %65), !dbg !3534
  br label %if.end.44

if.end.44:                                        ; preds = %if.else.41, %if.then.40
  %66 = bitcast %struct._object** %_py_decref_tmp35 to i8*, !dbg !3535
  call void @llvm.lifetime.end(i64 8, i8* %66) #1, !dbg !3535
  br label %do.cond.45, !dbg !3536

do.cond.45:                                       ; preds = %if.end.44
  br label %do.end.46, !dbg !3537

do.end.46:                                        ; preds = %do.cond.45
  br label %do.body.47, !dbg !3539

do.body.47:                                       ; preds = %do.end.46
  %67 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3540
  call void @llvm.lifetime.start(i64 8, i8* %67) #1, !dbg !3540
  call void @llvm.dbg.declare(metadata %struct._object** %_py_xdecref_tmp, metadata !833, metadata !1019), !dbg !3542
  %68 = load %struct.bootstate*, %struct.bootstate** %boot, align 8, !dbg !3543, !tbaa !1045
  %keyw48 = getelementptr inbounds %struct.bootstate, %struct.bootstate* %68, i32 0, i32 3, !dbg !3544
  %69 = load %struct._object*, %struct._object** %keyw48, align 8, !dbg !3544, !tbaa !3032
  store %struct._object* %69, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3542, !tbaa !1045
  %70 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3545, !tbaa !1045
  %cmp49 = icmp ne %struct._object* %70, null, !dbg !3546
  br i1 %cmp49, label %if.then.50, label %if.end.63, !dbg !3547

if.then.50:                                       ; preds = %do.body.47
  br label %do.body.51, !dbg !3548

do.body.51:                                       ; preds = %if.then.50
  %71 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !3550
  call void @llvm.lifetime.start(i64 8, i8* %71) #1, !dbg !3550
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp52, metadata !835, metadata !1019), !dbg !3552
  %72 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8, !dbg !3553, !tbaa !1045
  store %struct._object* %72, %struct._object** %_py_decref_tmp52, align 8, !dbg !3552, !tbaa !1045
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !3554, !tbaa !1045
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 0, !dbg !3556
  %74 = load i64, i64* %ob_refcnt53, align 8, !dbg !3557, !tbaa !1075
  %dec54 = add i64 %74, -1, !dbg !3557
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !3557, !tbaa !1075
  %cmp55 = icmp ne i64 %dec54, 0, !dbg !3558
  br i1 %cmp55, label %if.then.56, label %if.else.57, !dbg !3559

if.then.56:                                       ; preds = %do.body.51
  br label %if.end.60, !dbg !3560

if.else.57:                                       ; preds = %do.body.51
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !3562, !tbaa !1045
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %75, i32 0, i32 1, !dbg !3564
  %76 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !3564, !tbaa !1130
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %76, i32 0, i32 4, !dbg !3565
  %77 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !3565, !tbaa !1180
  %78 = load %struct._object*, %struct._object** %_py_decref_tmp52, align 8, !dbg !3566, !tbaa !1045
  call void %77(%struct._object* %78), !dbg !3567
  br label %if.end.60

if.end.60:                                        ; preds = %if.else.57, %if.then.56
  %79 = bitcast %struct._object** %_py_decref_tmp52 to i8*, !dbg !3568
  call void @llvm.lifetime.end(i64 8, i8* %79) #1, !dbg !3568
  br label %do.cond.61, !dbg !3570

do.cond.61:                                       ; preds = %if.end.60
  br label %do.end.62, !dbg !3571

do.end.62:                                        ; preds = %do.cond.61
  br label %if.end.63, !dbg !3573

if.end.63:                                        ; preds = %do.end.62, %do.body.47
  %80 = bitcast %struct._object** %_py_xdecref_tmp to i8*, !dbg !3575
  call void @llvm.lifetime.end(i64 8, i8* %80) #1, !dbg !3575
  br label %do.cond.64, !dbg !3578

do.cond.64:                                       ; preds = %if.end.63
  br label %do.end.65, !dbg !3579

do.end.65:                                        ; preds = %do.cond.64
  %81 = load i8*, i8** %boot_raw.addr, align 8, !dbg !3581, !tbaa !1045
  call void @PyMem_Free(i8* %81), !dbg !3582
  %82 = load i64, i64* @nb_threads, align 8, !dbg !3583, !tbaa !1104
  %dec66 = add i64 %82, -1, !dbg !3583
  store i64 %dec66, i64* @nb_threads, align 8, !dbg !3583, !tbaa !1104
  %83 = load %struct._ts*, %struct._ts** %tstate, align 8, !dbg !3584, !tbaa !1045
  call void @PyThreadState_Clear(%struct._ts* %83), !dbg !3585
  call void @PyThreadState_DeleteCurrent(), !dbg !3586
  call void @PyThread_exit_thread(), !dbg !3587
  %84 = bitcast %struct._object** %res to i8*, !dbg !3588
  call void @llvm.lifetime.end(i64 8, i8* %84) #1, !dbg !3588
  %85 = bitcast %struct._ts** %tstate to i8*, !dbg !3588
  call void @llvm.lifetime.end(i64 8, i8* %85) #1, !dbg !3588
  %86 = bitcast %struct.bootstate** %boot to i8*, !dbg !3588
  call void @llvm.lifetime.end(i64 8, i8* %86) #1, !dbg !3588
  ret void, !dbg !3588
}

declare void @PyThreadState_Clear(%struct._ts*) #3

declare %struct._object* @PyLong_FromLong(i64) #3

declare void @_PyThreadState_Init(%struct._ts*) #3

declare void @PyEval_AcquireThread(%struct._ts*) #3

declare %struct._object* @PyEval_CallObjectWithKeywords(%struct._object*, %struct._object*, %struct._object*) #3

declare i32 @PyErr_ExceptionMatches(%struct._object*) #3

declare void @PyErr_Clear() #3

declare void @PySys_WriteStderr(i8*, ...) #3

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #3

declare %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier*) #3

declare i32 @PyFile_WriteObject(%struct._object*, %struct._object*, i32) #3

declare i32 @PyObject_Print(%struct._object*, %struct._IO_FILE*, i32) #3

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #3

declare void @PyErr_PrintEx(i32) #3

declare void @PyThreadState_DeleteCurrent() #3

declare void @PyThread_exit_thread() #3

; Function Attrs: nounwind uwtable
define internal %struct.lockobject* @newlockobject() #0 {
entry:
  %retval = alloca %struct.lockobject*, align 8
  %self = alloca %struct.lockobject*, align 8
  %cleanup.dest.slot = alloca i32
  %_py_decref_tmp = alloca %struct._object*, align 8
  %0 = bitcast %struct.lockobject** %self to i8*, !dbg !3589
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3589
  call void @llvm.dbg.declare(metadata %struct.lockobject** %self, metadata !845, metadata !1019), !dbg !3590
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* @Locktype), !dbg !3591
  %1 = bitcast %struct._object* %call to %struct.lockobject*, !dbg !3592
  store %struct.lockobject* %1, %struct.lockobject** %self, align 8, !dbg !3593, !tbaa !1045
  %2 = load %struct.lockobject*, %struct.lockobject** %self, align 8, !dbg !3594, !tbaa !1045
  %cmp = icmp eq %struct.lockobject* %2, null, !dbg !3596
  br i1 %cmp, label %if.then, label %if.end, !dbg !3597

if.then:                                          ; preds = %entry
  store %struct.lockobject* null, %struct.lockobject** %retval, !dbg !3598
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3598

if.end:                                           ; preds = %entry
  %call1 = call i8* @PyThread_allocate_lock(), !dbg !3599
  %3 = load %struct.lockobject*, %struct.lockobject** %self, align 8, !dbg !3600, !tbaa !1045
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %3, i32 0, i32 1, !dbg !3601
  store i8* %call1, i8** %lock_lock, align 8, !dbg !3602, !tbaa !2296
  %4 = load %struct.lockobject*, %struct.lockobject** %self, align 8, !dbg !3603, !tbaa !1045
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %4, i32 0, i32 3, !dbg !3604
  store i8 0, i8* %locked, align 1, !dbg !3605, !tbaa !2303
  %5 = load %struct.lockobject*, %struct.lockobject** %self, align 8, !dbg !3606, !tbaa !1045
  %in_weakreflist = getelementptr inbounds %struct.lockobject, %struct.lockobject* %5, i32 0, i32 2, !dbg !3607
  store %struct._object* null, %struct._object** %in_weakreflist, align 8, !dbg !3608, !tbaa !2286
  %6 = load %struct.lockobject*, %struct.lockobject** %self, align 8, !dbg !3609, !tbaa !1045
  %lock_lock2 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %6, i32 0, i32 1, !dbg !3610
  %7 = load i8*, i8** %lock_lock2, align 8, !dbg !3610, !tbaa !2296
  %cmp3 = icmp eq i8* %7, null, !dbg !3611
  br i1 %cmp3, label %if.then.4, label %if.end.8, !dbg !3612

if.then.4:                                        ; preds = %if.end
  br label %do.body, !dbg !3613

do.body:                                          ; preds = %if.then.4
  %8 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3614
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3614
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !846, metadata !1019), !dbg !3616
  %9 = load %struct.lockobject*, %struct.lockobject** %self, align 8, !dbg !3617, !tbaa !1045
  %10 = bitcast %struct.lockobject* %9 to %struct._object*, !dbg !3618
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8, !dbg !3616, !tbaa !1045
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3619, !tbaa !1045
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0, !dbg !3621
  %12 = load i64, i64* %ob_refcnt, align 8, !dbg !3622, !tbaa !1075
  %dec = add i64 %12, -1, !dbg !3622
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !3622, !tbaa !1075
  %cmp5 = icmp ne i64 %dec, 0, !dbg !3623
  br i1 %cmp5, label %if.then.6, label %if.else, !dbg !3624

if.then.6:                                        ; preds = %do.body
  br label %if.end.7, !dbg !3625

if.else:                                          ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3627, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1, !dbg !3629
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3629, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4, !dbg !3630
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3630, !tbaa !1180
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3631, !tbaa !1045
  call void %15(%struct._object* %16), !dbg !3632
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %if.then.6
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3633
  call void @llvm.lifetime.end(i64 8, i8* %17) #1, !dbg !3633
  br label %do.cond, !dbg !3635

do.cond:                                          ; preds = %if.end.7
  br label %do.end, !dbg !3636

do.end:                                           ; preds = %do.cond
  %18 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !3638, !tbaa !1045
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i32 0, i32 0)), !dbg !3639
  store %struct.lockobject* null, %struct.lockobject** %retval, !dbg !3640
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3640

if.end.8:                                         ; preds = %if.end
  %19 = load %struct.lockobject*, %struct.lockobject** %self, align 8, !dbg !3641, !tbaa !1045
  store %struct.lockobject* %19, %struct.lockobject** %retval, !dbg !3642
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !3642

cleanup:                                          ; preds = %if.end.8, %do.end, %if.then
  %20 = bitcast %struct.lockobject** %self to i8*, !dbg !3643
  call void @llvm.lifetime.end(i64 8, i8* %20) #1, !dbg !3643
  %21 = load %struct.lockobject*, %struct.lockobject** %retval, !dbg !3643
  ret %struct.lockobject* %21, !dbg !3643
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

declare void @PyErr_SetNone(%struct._object*) #3

declare void @PyErr_SetInterrupt() #3

declare i64 @PyThread_get_stacksize() #3

declare i32 @PyThread_set_stacksize(i64) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

; Function Attrs: nounwind uwtable
define internal void @release_sentinel(i8* %wr) #0 {
entry:
  %wr.addr = alloca i8*, align 8
  %obj = alloca %struct._object*, align 8
  %lock = alloca %struct.lockobject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store i8* %wr, i8** %wr.addr, align 8, !tbaa !1045
  call void @llvm.dbg.declare(metadata i8** %wr.addr, metadata !886, metadata !1019), !dbg !3644
  %0 = bitcast %struct._object** %obj to i8*, !dbg !3645
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !3645
  call void @llvm.dbg.declare(metadata %struct._object** %obj, metadata !887, metadata !1019), !dbg !3646
  %1 = load i8*, i8** %wr.addr, align 8, !dbg !3647, !tbaa !1045
  %2 = bitcast i8* %1 to %struct._PyWeakReference*, !dbg !3648
  %wr_object = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %2, i32 0, i32 1, !dbg !3649
  %3 = load %struct._object*, %struct._object** %wr_object, align 8, !dbg !3649, !tbaa !2201
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0, !dbg !3650
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !3650, !tbaa !1075
  %cmp = icmp sgt i64 %4, 0, !dbg !3651
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3652

cond.true:                                        ; preds = %entry
  %5 = load i8*, i8** %wr.addr, align 8, !dbg !3653, !tbaa !1045
  %6 = bitcast i8* %5 to %struct._PyWeakReference*, !dbg !3655
  %wr_object1 = getelementptr inbounds %struct._PyWeakReference, %struct._PyWeakReference* %6, i32 0, i32 1, !dbg !3656
  %7 = load %struct._object*, %struct._object** %wr_object1, align 8, !dbg !3656, !tbaa !2201
  br label %cond.end, !dbg !3652

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !3657

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %7, %cond.true ], [ @_Py_NoneStruct, %cond.false ], !dbg !3652
  store %struct._object* %cond, %struct._object** %obj, align 8, !dbg !3659, !tbaa !1045
  %8 = bitcast %struct.lockobject** %lock to i8*, !dbg !3662
  call void @llvm.lifetime.start(i64 8, i8* %8) #1, !dbg !3662
  call void @llvm.dbg.declare(metadata %struct.lockobject** %lock, metadata !888, metadata !1019), !dbg !3663
  %9 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3664, !tbaa !1045
  %cmp2 = icmp ne %struct._object* %9, @_Py_NoneStruct, !dbg !3666
  br i1 %cmp2, label %if.then, label %if.end.5, !dbg !3667

if.then:                                          ; preds = %cond.end
  %10 = load %struct._object*, %struct._object** %obj, align 8, !dbg !3668, !tbaa !1045
  %11 = bitcast %struct._object* %10 to %struct.lockobject*, !dbg !3670
  store %struct.lockobject* %11, %struct.lockobject** %lock, align 8, !dbg !3671, !tbaa !1045
  %12 = load %struct.lockobject*, %struct.lockobject** %lock, align 8, !dbg !3672, !tbaa !1045
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %12, i32 0, i32 3, !dbg !3674
  %13 = load i8, i8* %locked, align 1, !dbg !3674, !tbaa !2303
  %tobool = icmp ne i8 %13, 0, !dbg !3672
  br i1 %tobool, label %if.then.3, label %if.end, !dbg !3675

if.then.3:                                        ; preds = %if.then
  %14 = load %struct.lockobject*, %struct.lockobject** %lock, align 8, !dbg !3676, !tbaa !1045
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %14, i32 0, i32 1, !dbg !3678
  %15 = load i8*, i8** %lock_lock, align 8, !dbg !3678, !tbaa !2296
  call void @PyThread_release_lock(i8* %15), !dbg !3679
  %16 = load %struct.lockobject*, %struct.lockobject** %lock, align 8, !dbg !3680, !tbaa !1045
  %locked4 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %16, i32 0, i32 3, !dbg !3681
  store i8 0, i8* %locked4, align 1, !dbg !3682, !tbaa !2303
  br label %if.end, !dbg !3683

if.end:                                           ; preds = %if.then.3, %if.then
  br label %if.end.5, !dbg !3684

if.end.5:                                         ; preds = %if.end, %cond.end
  br label %do.body, !dbg !3685

do.body:                                          ; preds = %if.end.5
  %17 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3686
  call void @llvm.lifetime.start(i64 8, i8* %17) #1, !dbg !3686
  call void @llvm.dbg.declare(metadata %struct._object** %_py_decref_tmp, metadata !889, metadata !1019), !dbg !3688
  %18 = load i8*, i8** %wr.addr, align 8, !dbg !3689, !tbaa !1045
  %19 = bitcast i8* %18 to %struct._object*, !dbg !3690
  store %struct._object* %19, %struct._object** %_py_decref_tmp, align 8, !dbg !3688, !tbaa !1045
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3691, !tbaa !1045
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0, !dbg !3693
  %21 = load i64, i64* %ob_refcnt6, align 8, !dbg !3694, !tbaa !1075
  %dec = add i64 %21, -1, !dbg !3694
  store i64 %dec, i64* %ob_refcnt6, align 8, !dbg !3694, !tbaa !1075
  %cmp7 = icmp ne i64 %dec, 0, !dbg !3695
  br i1 %cmp7, label %if.then.8, label %if.else, !dbg !3696

if.then.8:                                        ; preds = %do.body
  br label %if.end.9, !dbg !3697

if.else:                                          ; preds = %do.body
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3699, !tbaa !1045
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1, !dbg !3701
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !3701, !tbaa !1130
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4, !dbg !3702
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !3702, !tbaa !1180
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8, !dbg !3703, !tbaa !1045
  call void %24(%struct._object* %25), !dbg !3704
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  %26 = bitcast %struct._object** %_py_decref_tmp to i8*, !dbg !3705
  call void @llvm.lifetime.end(i64 8, i8* %26) #1, !dbg !3705
  br label %do.cond, !dbg !3707

do.cond:                                          ; preds = %if.end.9
  br label %do.end, !dbg !3708

do.end:                                           ; preds = %do.cond
  %27 = bitcast %struct.lockobject** %lock to i8*, !dbg !3710
  call void @llvm.lifetime.end(i64 8, i8* %27) #1, !dbg !3710
  %28 = bitcast %struct._object** %obj to i8*, !dbg !3710
  call void @llvm.lifetime.end(i64 8, i8* %28) #1, !dbg !3710
  ret void, !dbg !3710
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1015, !1016}
!llvm.ident = !{!1017}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !17, subprograms: !480, globals: !891)
!1 = !DIFile(filename: "_threadmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyLockStatus", file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pythread.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PY_LOCK_FAILURE", value: 0)
!7 = !DIEnumerator(name: "PY_LOCK_ACQUIRED", value: 1)
!8 = !DIEnumerator(name: "PY_LOCK_INTR", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !10, line: 23, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!13 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!14 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!15 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!16 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!17 = !{!18, !19, !364, !372, !383, !394, !395, !31, !396, !406, !470, !472, !108, !25}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !21, line: 109, baseType: !22)
!21 = !DIFile(filename: "Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !21, line: 105, size: 128, align: 64, elements: !23)
!23 = !{!24, !32}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !22, file: !21, line: 107, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !26, line: 177, baseType: !27)
!26 = !DIFile(filename: "Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 102, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 181, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!31 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !22, file: !21, line: 108, baseType: !33, size: 64, align: 64, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !21, line: 334, size: 3200, align: 64, elements: !35)
!35 = !{!36, !42, !46, !47, !48, !53, !116, !121, !126, !127, !132, !184, !215, !227, !233, !234, !235, !237, !239, !270, !271, !272, !281, !282, !287, !288, !290, !292, !302, !312, !330, !331, !332, !334, !336, !337, !339, !344, !349, !354, !355, !356, !357, !358, !359, !360, !361, !363}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !34, file: !21, line: 335, baseType: !37, size: 192, align: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !21, line: 114, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 111, size: 192, align: 64, elements: !39)
!39 = !{!40, !41}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !38, file: !21, line: 112, baseType: !20, size: 128, align: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !38, file: !21, line: 113, baseType: !25, size: 64, align: 64, offset: 128)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !34, file: !21, line: 336, baseType: !43, size: 64, align: 64, offset: 192)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64, align: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !34, file: !21, line: 337, baseType: !25, size: 64, align: 64, offset: 256)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !34, file: !21, line: 337, baseType: !25, size: 64, align: 64, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !34, file: !21, line: 341, baseType: !49, size: 64, align: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !21, line: 308, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !19}
!53 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !34, file: !21, line: 342, baseType: !54, size: 64, align: 64, offset: 448)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !21, line: 314, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64, align: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!58, !19, !59, !58}
!58 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64, align: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 48, baseType: !61)
!61 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 246, size: 1728, align: 64, elements: !63)
!62 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!63 = !{!64, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !85, !86, !87, !88, !90, !92, !94, !98, !101, !103, !104, !105, !106, !107, !111, !112}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !62, line: 247, baseType: !58, size: 32, align: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !61, file: !62, line: 252, baseType: !66, size: 64, align: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64, align: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !61, file: !62, line: 253, baseType: !66, size: 64, align: 64, offset: 128)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !61, file: !62, line: 254, baseType: !66, size: 64, align: 64, offset: 192)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !61, file: !62, line: 255, baseType: !66, size: 64, align: 64, offset: 256)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !61, file: !62, line: 256, baseType: !66, size: 64, align: 64, offset: 320)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !61, file: !62, line: 257, baseType: !66, size: 64, align: 64, offset: 384)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !61, file: !62, line: 258, baseType: !66, size: 64, align: 64, offset: 448)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !61, file: !62, line: 259, baseType: !66, size: 64, align: 64, offset: 512)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !61, file: !62, line: 261, baseType: !66, size: 64, align: 64, offset: 576)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !61, file: !62, line: 262, baseType: !66, size: 64, align: 64, offset: 640)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !61, file: !62, line: 263, baseType: !66, size: 64, align: 64, offset: 704)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !61, file: !62, line: 265, baseType: !78, size: 64, align: 64, offset: 768)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64, align: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !62, line: 161, size: 192, align: 64, elements: !80)
!80 = !{!81, !82, !84}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !79, file: !62, line: 162, baseType: !78, size: 64, align: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !79, file: !62, line: 163, baseType: !83, size: 64, align: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !79, file: !62, line: 167, baseType: !58, size: 32, align: 32, offset: 128)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !61, file: !62, line: 267, baseType: !83, size: 64, align: 64, offset: 832)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !61, file: !62, line: 269, baseType: !58, size: 32, align: 32, offset: 896)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !62, line: 273, baseType: !58, size: 32, align: 32, offset: 928)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !61, file: !62, line: 275, baseType: !89, size: 64, align: 64, offset: 960)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !30, line: 140, baseType: !31)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !61, file: !62, line: 279, baseType: !91, size: 16, align: 16, offset: 1024)
!91 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !61, file: !62, line: 280, baseType: !93, size: 8, align: 8, offset: 1040)
!93 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !61, file: !62, line: 281, baseType: !95, size: 8, align: 8, offset: 1048)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8, align: 8, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 1)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !62, line: 285, baseType: !99, size: 64, align: 64, offset: 1088)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64, align: 64)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !62, line: 155, baseType: null)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !62, line: 294, baseType: !102, size: 64, align: 64, offset: 1152)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !30, line: 141, baseType: !31)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !61, file: !62, line: 303, baseType: !18, size: 64, align: 64, offset: 1216)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !61, file: !62, line: 304, baseType: !18, size: 64, align: 64, offset: 1280)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !61, file: !62, line: 305, baseType: !18, size: 64, align: 64, offset: 1344)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !61, file: !62, line: 306, baseType: !18, size: 64, align: 64, offset: 1408)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !61, file: !62, line: 307, baseType: !108, size: 64, align: 64, offset: 1472)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !109, line: 62, baseType: !110)
!109 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!110 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !61, file: !62, line: 309, baseType: !58, size: 32, align: 32, offset: 1536)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !61, file: !62, line: 311, baseType: !113, size: 160, align: 8, offset: 1568)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 160, align: 8, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 20)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !34, file: !21, line: 343, baseType: !117, size: 64, align: 64, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !21, line: 316, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64, align: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!19, !19, !66}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !34, file: !21, line: 344, baseType: !122, size: 64, align: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !21, line: 318, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64, align: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!58, !19, !66, !19}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !34, file: !21, line: 345, baseType: !18, size: 64, align: 64, offset: 640)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !34, file: !21, line: 346, baseType: !128, size: 64, align: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !21, line: 320, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64, align: 64)
!130 = !DISubroutineType(types: !131)
!131 = !{!19, !19}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !34, file: !21, line: 350, baseType: !133, size: 64, align: 64, offset: 768)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64, align: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !21, line: 278, baseType: !135)
!135 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 236, size: 2176, align: 64, elements: !136)
!136 = !{!137, !142, !143, !144, !145, !146, !151, !153, !154, !155, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !135, file: !21, line: 241, baseType: !138, size: 64, align: 64)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !21, line: 166, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!19, !19, !19}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !135, file: !21, line: 242, baseType: !138, size: 64, align: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !135, file: !21, line: 243, baseType: !138, size: 64, align: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !135, file: !21, line: 244, baseType: !138, size: 64, align: 64, offset: 192)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !135, file: !21, line: 245, baseType: !138, size: 64, align: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !135, file: !21, line: 246, baseType: !147, size: 64, align: 64, offset: 320)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !21, line: 167, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!19, !19, !19, !19}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !135, file: !21, line: 247, baseType: !152, size: 64, align: 64, offset: 384)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !21, line: 165, baseType: !129)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !135, file: !21, line: 248, baseType: !152, size: 64, align: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !135, file: !21, line: 249, baseType: !152, size: 64, align: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !135, file: !21, line: 250, baseType: !156, size: 64, align: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !21, line: 168, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64, align: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!58, !19}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !135, file: !21, line: 251, baseType: !152, size: 64, align: 64, offset: 640)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !135, file: !21, line: 252, baseType: !138, size: 64, align: 64, offset: 704)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !135, file: !21, line: 253, baseType: !138, size: 64, align: 64, offset: 768)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !135, file: !21, line: 254, baseType: !138, size: 64, align: 64, offset: 832)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !135, file: !21, line: 255, baseType: !138, size: 64, align: 64, offset: 896)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !135, file: !21, line: 256, baseType: !138, size: 64, align: 64, offset: 960)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !135, file: !21, line: 257, baseType: !152, size: 64, align: 64, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !135, file: !21, line: 258, baseType: !18, size: 64, align: 64, offset: 1088)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !135, file: !21, line: 259, baseType: !152, size: 64, align: 64, offset: 1152)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !135, file: !21, line: 261, baseType: !138, size: 64, align: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !135, file: !21, line: 262, baseType: !138, size: 64, align: 64, offset: 1280)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !135, file: !21, line: 263, baseType: !138, size: 64, align: 64, offset: 1344)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !135, file: !21, line: 264, baseType: !138, size: 64, align: 64, offset: 1408)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !135, file: !21, line: 265, baseType: !147, size: 64, align: 64, offset: 1472)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !135, file: !21, line: 266, baseType: !138, size: 64, align: 64, offset: 1536)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !135, file: !21, line: 267, baseType: !138, size: 64, align: 64, offset: 1600)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !135, file: !21, line: 268, baseType: !138, size: 64, align: 64, offset: 1664)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !135, file: !21, line: 269, baseType: !138, size: 64, align: 64, offset: 1728)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !135, file: !21, line: 270, baseType: !138, size: 64, align: 64, offset: 1792)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !135, file: !21, line: 272, baseType: !138, size: 64, align: 64, offset: 1856)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !135, file: !21, line: 273, baseType: !138, size: 64, align: 64, offset: 1920)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !135, file: !21, line: 274, baseType: !138, size: 64, align: 64, offset: 1984)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !135, file: !21, line: 275, baseType: !138, size: 64, align: 64, offset: 2048)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !135, file: !21, line: 277, baseType: !152, size: 64, align: 64, offset: 2112)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !34, file: !21, line: 351, baseType: !185, size: 64, align: 64, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64, align: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !21, line: 292, baseType: !187)
!187 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 280, size: 640, align: 64, elements: !188)
!188 = !{!189, !194, !195, !200, !201, !202, !207, !208, !213, !214}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !187, file: !21, line: 281, baseType: !190, size: 64, align: 64)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !21, line: 169, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64, align: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!25, !19}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !187, file: !21, line: 282, baseType: !138, size: 64, align: 64, offset: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !187, file: !21, line: 283, baseType: !196, size: 64, align: 64, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !21, line: 170, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64, align: 64)
!198 = !DISubroutineType(types: !199)
!199 = !{!19, !19, !25}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !187, file: !21, line: 284, baseType: !196, size: 64, align: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !187, file: !21, line: 285, baseType: !18, size: 64, align: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !187, file: !21, line: 286, baseType: !203, size: 64, align: 64, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !21, line: 172, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64, align: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!58, !19, !25, !19}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !187, file: !21, line: 287, baseType: !18, size: 64, align: 64, offset: 384)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !187, file: !21, line: 288, baseType: !209, size: 64, align: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !21, line: 231, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64, align: 64)
!211 = !DISubroutineType(types: !212)
!212 = !{!58, !19, !19}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !187, file: !21, line: 290, baseType: !138, size: 64, align: 64, offset: 512)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !187, file: !21, line: 291, baseType: !196, size: 64, align: 64, offset: 576)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !34, file: !21, line: 352, baseType: !216, size: 64, align: 64, offset: 896)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64, align: 64)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !21, line: 298, baseType: !218)
!218 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 294, size: 192, align: 64, elements: !219)
!219 = !{!220, !221, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !218, file: !21, line: 295, baseType: !190, size: 64, align: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !218, file: !21, line: 296, baseType: !138, size: 64, align: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !218, file: !21, line: 297, baseType: !223, size: 64, align: 64, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !21, line: 174, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64, align: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!58, !19, !19, !19}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !34, file: !21, line: 356, baseType: !228, size: 64, align: 64, offset: 960)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !21, line: 321, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64, align: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!232, !19}
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !26, line: 186, baseType: !25)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !34, file: !21, line: 357, baseType: !147, size: 64, align: 64, offset: 1024)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !34, file: !21, line: 358, baseType: !128, size: 64, align: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !34, file: !21, line: 359, baseType: !236, size: 64, align: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !21, line: 317, baseType: !139)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !34, file: !21, line: 360, baseType: !238, size: 64, align: 64, offset: 1216)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !21, line: 319, baseType: !224)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !34, file: !21, line: 363, baseType: !240, size: 64, align: 64, offset: 1280)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !21, line: 304, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, file: !21, line: 301, size: 128, align: 64, elements: !243)
!243 = !{!244, !265}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !242, file: !21, line: 302, baseType: !245, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !21, line: 193, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64, align: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!58, !19, !249, !58}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64, align: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !21, line: 191, baseType: !251)
!251 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !21, line: 178, size: 640, align: 64, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !262, !263, !264}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !251, file: !21, line: 179, baseType: !18, size: 64, align: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !251, file: !21, line: 180, baseType: !19, size: 64, align: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !251, file: !21, line: 181, baseType: !25, size: 64, align: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !251, file: !21, line: 182, baseType: !25, size: 64, align: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !251, file: !21, line: 184, baseType: !58, size: 32, align: 32, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !251, file: !21, line: 185, baseType: !58, size: 32, align: 32, offset: 288)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !251, file: !21, line: 186, baseType: !66, size: 64, align: 64, offset: 320)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !251, file: !21, line: 187, baseType: !261, size: 64, align: 64, offset: 384)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64, align: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !251, file: !21, line: 188, baseType: !261, size: 64, align: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !251, file: !21, line: 189, baseType: !261, size: 64, align: 64, offset: 512)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !251, file: !21, line: 190, baseType: !18, size: 64, align: 64, offset: 576)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !242, file: !21, line: 303, baseType: !266, size: 64, align: 64, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !21, line: 194, baseType: !267)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64, align: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !19, !249}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !34, file: !21, line: 366, baseType: !110, size: 64, align: 64, offset: 1344)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !34, file: !21, line: 368, baseType: !43, size: 64, align: 64, offset: 1408)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !34, file: !21, line: 372, baseType: !273, size: 64, align: 64, offset: 1472)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !21, line: 233, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64, align: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!58, !19, !277, !18}
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !21, line: 232, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, align: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!58, !19, !18}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !34, file: !21, line: 375, baseType: !156, size: 64, align: 64, offset: 1536)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !34, file: !21, line: 379, baseType: !283, size: 64, align: 64, offset: 1600)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !21, line: 322, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{!19, !19, !19, !58}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !34, file: !21, line: 382, baseType: !25, size: 64, align: 64, offset: 1664)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !34, file: !21, line: 385, baseType: !289, size: 64, align: 64, offset: 1728)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !21, line: 323, baseType: !129)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !34, file: !21, line: 386, baseType: !291, size: 64, align: 64, offset: 1792)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !21, line: 324, baseType: !129)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !34, file: !21, line: 389, baseType: !293, size: 64, align: 64, offset: 1856)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64, align: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !295, line: 40, size: 256, align: 64, elements: !296)
!295 = !DIFile(filename: "Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!296 = !{!297, !298, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !294, file: !295, line: 41, baseType: !43, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !294, file: !295, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !295, line: 18, baseType: !139)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !294, file: !295, line: 43, baseType: !58, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !294, file: !295, line: 45, baseType: !43, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !34, file: !21, line: 390, baseType: !303, size: 64, align: 64, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !305, line: 18, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!306 = !{!307, !308, !309, !310, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 19, baseType: !66, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !305, line: 20, baseType: !58, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !304, file: !305, line: 21, baseType: !25, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 22, baseType: !58, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 23, baseType: !66, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !34, file: !21, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!316 = !{!317, !318, !323, !328, !329}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !314, file: !315, line: 12, baseType: !66, size: 64, align: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !314, file: !315, line: 13, baseType: !319, size: 64, align: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !315, line: 8, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64, align: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!19, !19, !18}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !314, file: !315, line: 14, baseType: !324, size: 64, align: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !315, line: 9, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64, align: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!58, !19, !19, !18}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !314, file: !315, line: 15, baseType: !66, size: 64, align: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !314, file: !315, line: 16, baseType: !18, size: 64, align: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !34, file: !21, line: 392, baseType: !33, size: 64, align: 64, offset: 2048)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !34, file: !21, line: 393, baseType: !19, size: 64, align: 64, offset: 2112)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !34, file: !21, line: 394, baseType: !333, size: 64, align: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !21, line: 325, baseType: !148)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !34, file: !21, line: 395, baseType: !335, size: 64, align: 64, offset: 2240)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !21, line: 326, baseType: !224)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !34, file: !21, line: 396, baseType: !25, size: 64, align: 64, offset: 2304)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !34, file: !21, line: 397, baseType: !338, size: 64, align: 64, offset: 2368)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !21, line: 327, baseType: !224)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !34, file: !21, line: 398, baseType: !340, size: 64, align: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !21, line: 329, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64, align: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!19, !33, !25}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !34, file: !21, line: 399, baseType: !345, size: 64, align: 64, offset: 2496)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !21, line: 328, baseType: !346)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64, align: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{!19, !33, !19, !19}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !34, file: !21, line: 400, baseType: !350, size: 64, align: 64, offset: 2560)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !21, line: 307, baseType: !351)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64, align: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !18}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !34, file: !21, line: 401, baseType: !156, size: 64, align: 64, offset: 2624)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !34, file: !21, line: 402, baseType: !19, size: 64, align: 64, offset: 2688)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !34, file: !21, line: 403, baseType: !19, size: 64, align: 64, offset: 2752)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !34, file: !21, line: 404, baseType: !19, size: 64, align: 64, offset: 2816)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !34, file: !21, line: 405, baseType: !19, size: 64, align: 64, offset: 2880)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !34, file: !21, line: 406, baseType: !19, size: 64, align: 64, offset: 2944)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !34, file: !21, line: 407, baseType: !49, size: 64, align: 64, offset: 3008)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !34, file: !21, line: 410, baseType: !362, size: 32, align: 32, offset: 3072)
!362 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !34, file: !21, line: 412, baseType: !49, size: 64, align: 64, offset: 3136)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "localdummyobject", file: !366, line: 609, baseType: !367)
!366 = !DIFile(filename: "./Modules/_threadmodule.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!367 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 605, size: 256, align: 64, elements: !368)
!368 = !{!369, !370, !371}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !367, file: !366, line: 606, baseType: !20, size: 128, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "localdict", scope: !367, file: !366, line: 607, baseType: !19, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !367, file: !366, line: 608, baseType: !19, size: 64, align: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64, align: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "localobject", file: !366, line: 658, baseType: !374)
!374 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 648, size: 512, align: 64, elements: !375)
!375 = !{!376, !377, !378, !379, !380, !381, !382}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !374, file: !366, line: 649, baseType: !20, size: 128, align: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !374, file: !366, line: 650, baseType: !19, size: 64, align: 64, offset: 128)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !374, file: !366, line: 651, baseType: !19, size: 64, align: 64, offset: 192)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "kw", scope: !374, file: !366, line: 652, baseType: !19, size: 64, align: 64, offset: 256)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !374, file: !366, line: 653, baseType: !19, size: 64, align: 64, offset: 320)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "dummies", scope: !374, file: !366, line: 655, baseType: !19, size: 64, align: 64, offset: 384)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !374, file: !366, line: 657, baseType: !19, size: 64, align: 64, offset: 448)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64, align: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !385, line: 10, baseType: !386)
!385 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!386 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !385, line: 16, size: 448, align: 64, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !386, file: !385, line: 17, baseType: !20, size: 128, align: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !386, file: !385, line: 23, baseType: !19, size: 64, align: 64, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !386, file: !385, line: 26, baseType: !19, size: 64, align: 64, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !386, file: !385, line: 31, baseType: !232, size: 64, align: 64, offset: 256)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !386, file: !385, line: 38, baseType: !383, size: 64, align: 64, offset: 320)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !386, file: !385, line: 39, baseType: !383, size: 64, align: 64, offset: 384)
!394 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!395 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64, align: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlockobject", file: !366, line: 255, baseType: !398)
!398 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 249, size: 384, align: 64, elements: !399)
!399 = !{!400, !401, !403, !404, !405}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !398, file: !366, line: 250, baseType: !20, size: 128, align: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "rlock_lock", scope: !398, file: !366, line: 251, baseType: !402, size: 64, align: 64, offset: 128)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !4, line: 5, baseType: !18)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rlock_owner", scope: !398, file: !366, line: 252, baseType: !31, size: 64, align: 64, offset: 192)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "rlock_count", scope: !398, file: !366, line: 253, baseType: !110, size: 64, align: 64, offset: 256)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !398, file: !366, line: 254, baseType: !19, size: 64, align: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64, align: 64)
!407 = !DICompositeType(tag: DW_TAG_structure_type, name: "bootstate", file: !366, line: 979, size: 320, align: 64, elements: !408)
!408 = !{!409, !466, !467, !468, !469}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !407, file: !366, line: 980, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64, align: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !412, line: 44, baseType: !413)
!412 = !DIFile(filename: "Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!413 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !412, line: 19, size: 832, align: 64, elements: !414)
!414 = !{!415, !417, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !413, file: !412, line: 21, baseType: !416, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64, align: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !413, file: !412, line: 22, baseType: !418, size: 64, align: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64, align: 64)
!419 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !412, line: 69, size: 1536, align: 64, elements: !420)
!420 = !{!421, !422, !423, !424, !427, !428, !429, !430, !431, !432, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !419, file: !412, line: 72, baseType: !418, size: 64, align: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !419, file: !412, line: 73, baseType: !418, size: 64, align: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !419, file: !412, line: 74, baseType: !410, size: 64, align: 64, offset: 128)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !419, file: !412, line: 76, baseType: !425, size: 64, align: 64, offset: 192)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64, align: 64)
!426 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !412, line: 50, flags: DIFlagFwdDecl)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !419, file: !412, line: 77, baseType: !58, size: 32, align: 32, offset: 256)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !419, file: !412, line: 78, baseType: !45, size: 8, align: 8, offset: 288)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !419, file: !412, line: 80, baseType: !45, size: 8, align: 8, offset: 296)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !419, file: !412, line: 85, baseType: !58, size: 32, align: 32, offset: 320)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !419, file: !412, line: 86, baseType: !58, size: 32, align: 32, offset: 352)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !419, file: !412, line: 88, baseType: !433, size: 64, align: 64, offset: 384)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !412, line: 54, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64, align: 64)
!435 = !DISubroutineType(types: !436)
!436 = !{!58, !19, !425, !58, !19}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !419, file: !412, line: 89, baseType: !433, size: 64, align: 64, offset: 448)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !419, file: !412, line: 90, baseType: !19, size: 64, align: 64, offset: 512)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !419, file: !412, line: 91, baseType: !19, size: 64, align: 64, offset: 576)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !419, file: !412, line: 93, baseType: !19, size: 64, align: 64, offset: 640)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !419, file: !412, line: 94, baseType: !19, size: 64, align: 64, offset: 704)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !419, file: !412, line: 95, baseType: !19, size: 64, align: 64, offset: 768)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !419, file: !412, line: 97, baseType: !19, size: 64, align: 64, offset: 832)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !419, file: !412, line: 98, baseType: !19, size: 64, align: 64, offset: 896)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !419, file: !412, line: 99, baseType: !19, size: 64, align: 64, offset: 960)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !419, file: !412, line: 101, baseType: !19, size: 64, align: 64, offset: 1024)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !419, file: !412, line: 103, baseType: !58, size: 32, align: 32, offset: 1088)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !419, file: !412, line: 105, baseType: !19, size: 64, align: 64, offset: 1152)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !419, file: !412, line: 106, baseType: !31, size: 64, align: 64, offset: 1216)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !419, file: !412, line: 108, baseType: !58, size: 32, align: 32, offset: 1280)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !419, file: !412, line: 109, baseType: !19, size: 64, align: 64, offset: 1344)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !419, file: !412, line: 134, baseType: !351, size: 64, align: 64, offset: 1408)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !419, file: !412, line: 135, baseType: !18, size: 64, align: 64, offset: 1472)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !413, file: !412, line: 24, baseType: !19, size: 64, align: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !413, file: !412, line: 25, baseType: !19, size: 64, align: 64, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !413, file: !412, line: 26, baseType: !19, size: 64, align: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !413, file: !412, line: 27, baseType: !19, size: 64, align: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !413, file: !412, line: 28, baseType: !19, size: 64, align: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !413, file: !412, line: 30, baseType: !19, size: 64, align: 64, offset: 448)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !413, file: !412, line: 31, baseType: !19, size: 64, align: 64, offset: 512)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !413, file: !412, line: 32, baseType: !19, size: 64, align: 64, offset: 576)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !413, file: !412, line: 33, baseType: !58, size: 32, align: 32, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !413, file: !412, line: 34, baseType: !58, size: 32, align: 32, offset: 672)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !413, file: !412, line: 37, baseType: !58, size: 32, align: 32, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !413, file: !412, line: 43, baseType: !19, size: 64, align: 64, offset: 768)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !407, file: !366, line: 981, baseType: !19, size: 64, align: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !407, file: !366, line: 982, baseType: !19, size: 64, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "keyw", scope: !407, file: !366, line: 983, baseType: !19, size: 64, align: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "tstate", scope: !407, file: !366, line: 984, baseType: !470, size: 64, align: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64, align: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !412, line: 139, baseType: !419)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64, align: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockobject", file: !366, line: 29, baseType: !474)
!474 = !DICompositeType(tag: DW_TAG_structure_type, file: !366, line: 24, size: 320, align: 64, elements: !475)
!475 = !{!476, !477, !478, !479}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !474, file: !366, line: 25, baseType: !20, size: 128, align: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "lock_lock", scope: !474, file: !366, line: 26, baseType: !402, size: 64, align: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !474, file: !366, line: 27, baseType: !19, size: 64, align: 64, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !474, file: !366, line: 28, baseType: !45, size: 8, align: 8, offset: 256)
!480 = !{!481, !488, !493, !503, !512, !520, !557, !566, !585, !615, !634, !645, !650, !666, !689, !694, !697, !702, !707, !723, !727, !731, !744, !749, !761, !796, !805, !810, !813, !838, !841, !850, !853, !856, !860, !863, !870, !884}
!481 = !DISubprogram(name: "PyInit__thread", scope: !366, file: !366, line: 1354, type: !482, isLocal: false, isDefinition: true, scopeLine: 1355, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__thread, variables: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!19}
!484 = !{!485, !486, !487}
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !481, file: !366, line: 1356, type: !19)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !481, file: !366, line: 1356, type: !19)
!487 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout_max", scope: !481, file: !366, line: 1356, type: !19)
!488 = !DISubprogram(name: "localdummy_dealloc", scope: !366, file: !366, line: 612, type: !489, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.localdummyobject*)* @localdummy_dealloc, variables: !491)
!489 = !DISubroutineType(types: !490)
!490 = !{null, !364}
!491 = !{!492}
!492 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !488, file: !366, line: 612, type: !364)
!493 = !DISubprogram(name: "local_dealloc", scope: !366, file: !366, line: 797, type: !494, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.localobject*)* @local_dealloc, variables: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{null, !372}
!496 = !{!497, !498, !500}
!497 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !493, file: !366, line: 797, type: !372)
!498 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !499, file: !366, line: 807, type: !19)
!499 = distinct !DILexicalBlock(scope: !493, file: !366, line: 807, column: 8)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !501, file: !366, line: 807, type: !19)
!501 = distinct !DILexicalBlock(scope: !502, file: !366, line: 807, column: 101)
!502 = distinct !DILexicalBlock(scope: !499, file: !366, line: 807, column: 67)
!503 = !DISubprogram(name: "local_getattro", scope: !366, file: !366, line: 918, type: !504, isLocal: true, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.localobject*, %struct._object*)* @local_getattro, variables: !506)
!504 = !DISubroutineType(types: !505)
!505 = !{!19, !372, !19}
!506 = !{!507, !508, !509, !510, !511}
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !503, file: !366, line: 918, type: !372)
!508 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !503, file: !366, line: 918, type: !19)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !503, file: !366, line: 920, type: !19)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !503, file: !366, line: 920, type: !19)
!511 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !503, file: !366, line: 921, type: !58)
!512 = !DISubprogram(name: "_ldict", scope: !366, file: !366, line: 813, type: !513, isLocal: true, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.localobject*)* @_ldict, variables: !515)
!513 = !DISubroutineType(types: !514)
!514 = !{!19, !372}
!515 = !{!516, !517, !518, !519}
!516 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !512, file: !366, line: 813, type: !372)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tdict", scope: !512, file: !366, line: 815, type: !19)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !512, file: !366, line: 815, type: !19)
!519 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !512, file: !366, line: 815, type: !19)
!520 = !DISubprogram(name: "_local_create_dummy", scope: !366, file: !366, line: 667, type: !513, isLocal: true, isDefinition: true, scopeLine: 668, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.localobject*)* @_local_create_dummy, variables: !521)
!521 = !{!522, !523, !524, !525, !526, !527, !528, !530, !534, !536, !540, !542, !544, !547, !549, !552, !554}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !520, file: !366, line: 667, type: !372)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tdict", scope: !520, file: !366, line: 669, type: !19)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !520, file: !366, line: 669, type: !19)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !520, file: !366, line: 669, type: !19)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !520, file: !366, line: 670, type: !364)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !520, file: !366, line: 671, type: !58)
!528 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !529, file: !366, line: 696, type: !19)
!529 = distinct !DILexicalBlock(scope: !520, file: !366, line: 696, column: 8)
!530 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !531, file: !366, line: 696, type: !19)
!531 = distinct !DILexicalBlock(scope: !532, file: !366, line: 696, column: 99)
!532 = distinct !DILexicalBlock(scope: !533, file: !366, line: 696, column: 75)
!533 = distinct !DILexicalBlock(scope: !529, file: !366, line: 696, column: 52)
!534 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !535, file: !366, line: 700, type: !19)
!535 = distinct !DILexicalBlock(scope: !520, file: !366, line: 700, column: 8)
!536 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !537, file: !366, line: 700, type: !19)
!537 = distinct !DILexicalBlock(scope: !538, file: !366, line: 700, column: 105)
!538 = distinct !DILexicalBlock(scope: !539, file: !366, line: 700, column: 78)
!539 = distinct !DILexicalBlock(scope: !535, file: !366, line: 700, column: 55)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !541, file: !366, line: 702, type: !19)
!541 = distinct !DILexicalBlock(scope: !520, file: !366, line: 702, column: 8)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !543, file: !366, line: 706, type: !19)
!543 = distinct !DILexicalBlock(scope: !520, file: !366, line: 706, column: 8)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !545, file: !366, line: 706, type: !19)
!545 = distinct !DILexicalBlock(scope: !546, file: !366, line: 706, column: 97)
!546 = distinct !DILexicalBlock(scope: !543, file: !366, line: 706, column: 63)
!547 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !548, file: !366, line: 707, type: !19)
!548 = distinct !DILexicalBlock(scope: !520, file: !366, line: 707, column: 8)
!549 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !550, file: !366, line: 707, type: !19)
!550 = distinct !DILexicalBlock(scope: !551, file: !366, line: 707, column: 94)
!551 = distinct !DILexicalBlock(scope: !548, file: !366, line: 707, column: 60)
!552 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !553, file: !366, line: 708, type: !19)
!553 = distinct !DILexicalBlock(scope: !520, file: !366, line: 708, column: 8)
!554 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !555, file: !366, line: 708, type: !19)
!555 = distinct !DILexicalBlock(scope: !556, file: !366, line: 708, column: 97)
!556 = distinct !DILexicalBlock(scope: !553, file: !366, line: 708, column: 63)
!557 = !DISubprogram(name: "local_setattro", scope: !366, file: !366, line: 849, type: !558, isLocal: true, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.localobject*, %struct._object*, %struct._object*)* @local_setattro, variables: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!58, !372, !19, !19}
!560 = !{!561, !562, !563, !564, !565}
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !557, file: !366, line: 849, type: !372)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !557, file: !366, line: 849, type: !19)
!563 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !557, file: !366, line: 849, type: !19)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !557, file: !366, line: 851, type: !19)
!565 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !557, file: !366, line: 852, type: !58)
!566 = !DISubprogram(name: "local_traverse", scope: !366, file: !366, line: 766, type: !567, isLocal: true, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.localobject*, i32 (%struct._object*, i8*)*, i8*)* @local_traverse, variables: !569)
!567 = !DISubroutineType(types: !568)
!568 = !{!58, !372, !277, !18}
!569 = !{!570, !571, !572, !573, !577, !581}
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !566, file: !366, line: 766, type: !372)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !566, file: !366, line: 766, type: !277)
!572 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !566, file: !366, line: 766, type: !18)
!573 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !574, file: !366, line: 768, type: !58)
!574 = distinct !DILexicalBlock(scope: !575, file: !366, line: 768, column: 26)
!575 = distinct !DILexicalBlock(scope: !576, file: !366, line: 768, column: 14)
!576 = distinct !DILexicalBlock(scope: !566, file: !366, line: 768, column: 8)
!577 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !578, file: !366, line: 769, type: !58)
!578 = distinct !DILexicalBlock(scope: !579, file: !366, line: 769, column: 24)
!579 = distinct !DILexicalBlock(scope: !580, file: !366, line: 769, column: 14)
!580 = distinct !DILexicalBlock(scope: !566, file: !366, line: 769, column: 8)
!581 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !582, file: !366, line: 770, type: !58)
!582 = distinct !DILexicalBlock(scope: !583, file: !366, line: 770, column: 29)
!583 = distinct !DILexicalBlock(scope: !584, file: !366, line: 770, column: 14)
!584 = distinct !DILexicalBlock(scope: !566, file: !366, line: 770, column: 8)
!585 = !DISubprogram(name: "local_clear", scope: !366, file: !366, line: 775, type: !586, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.localobject*)* @local_clear, variables: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!58, !372}
!588 = !{!589, !590, !591, !593, !597, !599, !603, !605, !609, !611}
!589 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !585, file: !366, line: 775, type: !372)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !585, file: !366, line: 777, type: !470)
!591 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !592, file: !366, line: 778, type: !19)
!592 = distinct !DILexicalBlock(scope: !585, file: !366, line: 778, column: 8)
!593 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !594, file: !366, line: 778, type: !19)
!594 = distinct !DILexicalBlock(scope: !595, file: !366, line: 778, column: 115)
!595 = distinct !DILexicalBlock(scope: !596, file: !366, line: 778, column: 83)
!596 = distinct !DILexicalBlock(scope: !592, file: !366, line: 778, column: 60)
!597 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !598, file: !366, line: 779, type: !19)
!598 = distinct !DILexicalBlock(scope: !585, file: !366, line: 779, column: 8)
!599 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !600, file: !366, line: 779, type: !19)
!600 = distinct !DILexicalBlock(scope: !601, file: !366, line: 779, column: 111)
!601 = distinct !DILexicalBlock(scope: !602, file: !366, line: 779, column: 81)
!602 = distinct !DILexicalBlock(scope: !598, file: !366, line: 779, column: 58)
!603 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !604, file: !366, line: 780, type: !19)
!604 = distinct !DILexicalBlock(scope: !585, file: !366, line: 780, column: 8)
!605 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !606, file: !366, line: 780, type: !19)
!606 = distinct !DILexicalBlock(scope: !607, file: !366, line: 780, column: 121)
!607 = distinct !DILexicalBlock(scope: !608, file: !366, line: 780, column: 86)
!608 = distinct !DILexicalBlock(scope: !604, file: !366, line: 780, column: 63)
!609 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !610, file: !366, line: 781, type: !19)
!610 = distinct !DILexicalBlock(scope: !585, file: !366, line: 781, column: 8)
!611 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !612, file: !366, line: 781, type: !19)
!612 = distinct !DILexicalBlock(scope: !613, file: !366, line: 781, column: 129)
!613 = distinct !DILexicalBlock(scope: !614, file: !366, line: 781, column: 90)
!614 = distinct !DILexicalBlock(scope: !610, file: !366, line: 781, column: 67)
!615 = !DISubprogram(name: "local_new", scope: !366, file: !366, line: 713, type: !616, isLocal: true, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @local_new, variables: !620)
!616 = !DISubroutineType(types: !617)
!617 = !{!19, !618, !19, !19}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64, align: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !21, line: 422, baseType: !34)
!620 = !{!621, !622, !623, !624, !625, !626, !628, !630, !632}
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !615, file: !366, line: 713, type: !618)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !615, file: !366, line: 713, type: !19)
!623 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !615, file: !366, line: 713, type: !19)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !615, file: !366, line: 715, type: !372)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !615, file: !366, line: 716, type: !19)
!626 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !627, file: !366, line: 733, type: !19)
!627 = distinct !DILexicalBlock(scope: !615, file: !366, line: 733, column: 8)
!628 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !629, file: !366, line: 735, type: !19)
!629 = distinct !DILexicalBlock(scope: !615, file: !366, line: 735, column: 8)
!630 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !631, file: !366, line: 751, type: !19)
!631 = distinct !DILexicalBlock(scope: !615, file: !366, line: 751, column: 8)
!632 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !633, file: !366, line: 761, type: !19)
!633 = distinct !DILexicalBlock(scope: !615, file: !366, line: 761, column: 8)
!634 = !DISubprogram(name: "_localdummy_destroyed", scope: !366, file: !366, line: 951, type: !140, isLocal: true, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_localdummy_destroyed, variables: !635)
!635 = !{!636, !637, !638, !639, !640, !643}
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "localweakref", arg: 1, scope: !634, file: !366, line: 951, type: !19)
!637 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dummyweakref", arg: 2, scope: !634, file: !366, line: 951, type: !19)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !634, file: !366, line: 953, type: !19)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !634, file: !366, line: 954, type: !372)
!640 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !641, file: !366, line: 965, type: !19)
!641 = distinct !DILexicalBlock(scope: !642, file: !366, line: 964, column: 38)
!642 = distinct !DILexicalBlock(scope: !634, file: !366, line: 964, column: 9)
!643 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !644, file: !366, line: 973, type: !19)
!644 = distinct !DILexicalBlock(scope: !634, file: !366, line: 973, column: 8)
!645 = !DISubprogram(name: "lock_dealloc", scope: !366, file: !366, line: 32, type: !646, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.lockobject*)* @lock_dealloc, variables: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{null, !472}
!648 = !{!649}
!649 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !645, file: !366, line: 32, type: !472)
!650 = !DISubprogram(name: "lock_PyThread_acquire_lock", scope: !366, file: !366, line: 103, type: !651, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.lockobject*, %struct._object*, %struct._object*)* @lock_PyThread_acquire_lock, variables: !653)
!651 = !DISubroutineType(types: !652)
!652 = !{!19, !472, !19, !19}
!653 = !{!654, !655, !656, !657, !661, !662, !663, !664}
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !650, file: !366, line: 103, type: !472)
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !650, file: !366, line: 103, type: !19)
!656 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !650, file: !366, line: 103, type: !19)
!657 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !650, file: !366, line: 105, type: !658)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 192, align: 64, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 3)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocking", scope: !650, file: !366, line: 106, type: !58)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !650, file: !366, line: 107, type: !394)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "microseconds", scope: !650, file: !366, line: 108, type: !395)
!664 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !650, file: !366, line: 109, type: !665)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLockStatus", file: !4, line: 18, baseType: !3)
!666 = !DISubprogram(name: "acquire_timed", scope: !366, file: !366, line: 52, type: !667, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64)* @acquire_timed, variables: !669)
!667 = !DISubroutineType(types: !668)
!668 = !{!665, !402, !395}
!669 = !{!670, !671, !672, !673, !683, !684}
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !666, file: !366, line: 52, type: !402)
!671 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "microseconds", arg: 2, scope: !666, file: !366, line: 52, type: !395)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !666, file: !366, line: 54, type: !665)
!673 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curtime", scope: !666, file: !366, line: 55, type: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyTime_timeval", file: !675, line: 17, baseType: !676)
!675 = !DIFile(filename: "Include/pytime.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !677, line: 30, size: 128, align: 64, elements: !678)
!677 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!678 = !{!679, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !676, file: !677, line: 32, baseType: !680, size: 64, align: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !30, line: 148, baseType: !31)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !676, file: !677, line: 33, baseType: !682, size: 64, align: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !30, line: 150, baseType: !31)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endtime", scope: !666, file: !366, line: 56, type: !674)
!684 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !685, file: !366, line: 70, type: !470)
!685 = distinct !DILexicalBlock(scope: !686, file: !366, line: 70, column: 13)
!686 = distinct !DILexicalBlock(scope: !687, file: !366, line: 69, column: 56)
!687 = distinct !DILexicalBlock(scope: !688, file: !366, line: 69, column: 13)
!688 = distinct !DILexicalBlock(scope: !666, file: !366, line: 66, column: 8)
!689 = !DISubprogram(name: "lock_PyThread_release_lock", scope: !366, file: !366, line: 161, type: !690, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.lockobject*)* @lock_PyThread_release_lock, variables: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!19, !472}
!692 = !{!693}
!693 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !689, file: !366, line: 161, type: !472)
!694 = !DISubprogram(name: "lock_locked_lock", scope: !366, file: !366, line: 184, type: !690, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.lockobject*)* @lock_locked_lock, variables: !695)
!695 = !{!696}
!696 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !694, file: !366, line: 184, type: !472)
!697 = !DISubprogram(name: "rlock_dealloc", scope: !366, file: !366, line: 258, type: !698, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.rlockobject*)* @rlock_dealloc, variables: !700)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !396}
!700 = !{!701}
!701 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !697, file: !366, line: 258, type: !396)
!702 = !DISubprogram(name: "rlock_repr", scope: !366, file: !366, line: 476, type: !703, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_repr, variables: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!19, !396}
!705 = !{!706}
!706 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !702, file: !366, line: 476, type: !396)
!707 = !DISubprogram(name: "rlock_acquire", scope: !366, file: !366, line: 275, type: !708, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*, %struct._object*, %struct._object*)* @rlock_acquire, variables: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!19, !396, !19, !19}
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718, !719, !720}
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !707, file: !366, line: 275, type: !396)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !707, file: !366, line: 275, type: !19)
!713 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !707, file: !366, line: 275, type: !19)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !707, file: !366, line: 277, type: !658)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocking", scope: !707, file: !366, line: 278, type: !58)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !707, file: !366, line: 279, type: !394)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "microseconds", scope: !707, file: !366, line: 280, type: !395)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tid", scope: !707, file: !366, line: 281, type: !31)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !707, file: !366, line: 282, type: !665)
!720 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !721, file: !366, line: 314, type: !110)
!721 = distinct !DILexicalBlock(scope: !722, file: !366, line: 313, column: 60)
!722 = distinct !DILexicalBlock(scope: !707, file: !366, line: 313, column: 9)
!723 = !DISubprogram(name: "rlock_release", scope: !366, file: !366, line: 353, type: !703, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_release, variables: !724)
!724 = !{!725, !726}
!725 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !723, file: !366, line: 353, type: !396)
!726 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tid", scope: !723, file: !366, line: 355, type: !31)
!727 = !DISubprogram(name: "rlock_is_owned", scope: !366, file: !366, line: 438, type: !703, isLocal: true, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_is_owned, variables: !728)
!728 = !{!729, !730}
!729 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !727, file: !366, line: 438, type: !396)
!730 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tid", scope: !727, file: !366, line: 440, type: !31)
!731 = !DISubprogram(name: "rlock_acquire_restore", scope: !366, file: !366, line: 382, type: !732, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*, %struct._object*)* @rlock_acquire_restore, variables: !734)
!732 = !DISubroutineType(types: !733)
!733 = !{!19, !396, !19}
!734 = !{!735, !736, !737, !738, !739, !740}
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !731, file: !366, line: 382, type: !396)
!736 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !731, file: !366, line: 382, type: !19)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "owner", scope: !731, file: !366, line: 384, type: !31)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !731, file: !366, line: 385, type: !110)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !731, file: !366, line: 386, type: !58)
!740 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !741, file: !366, line: 392, type: !470)
!741 = distinct !DILexicalBlock(scope: !742, file: !366, line: 392, column: 9)
!742 = distinct !DILexicalBlock(scope: !743, file: !366, line: 391, column: 54)
!743 = distinct !DILexicalBlock(scope: !731, file: !366, line: 391, column: 9)
!744 = !DISubprogram(name: "rlock_release_save", scope: !366, file: !366, line: 412, type: !703, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_release_save, variables: !745)
!745 = !{!746, !747, !748}
!746 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !744, file: !366, line: 412, type: !396)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "owner", scope: !744, file: !366, line: 414, type: !31)
!748 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !744, file: !366, line: 415, type: !110)
!749 = !DISubprogram(name: "rlock_new", scope: !366, file: !366, line: 454, type: !616, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @rlock_new, variables: !750)
!750 = !{!751, !752, !753, !754, !755}
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !749, file: !366, line: 454, type: !618)
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !749, file: !366, line: 454, type: !19)
!753 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !749, file: !366, line: 454, type: !19)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !749, file: !366, line: 456, type: !396)
!755 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !756, file: !366, line: 466, type: !19)
!756 = distinct !DILexicalBlock(scope: !757, file: !366, line: 466, column: 16)
!757 = distinct !DILexicalBlock(scope: !758, file: !366, line: 465, column: 45)
!758 = distinct !DILexicalBlock(scope: !759, file: !366, line: 465, column: 13)
!759 = distinct !DILexicalBlock(scope: !760, file: !366, line: 459, column: 29)
!760 = distinct !DILexicalBlock(scope: !749, file: !366, line: 459, column: 9)
!761 = !DISubprogram(name: "thread_PyThread_start_new_thread", scope: !366, file: !366, line: 1033, type: !140, isLocal: true, isDefinition: true, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @thread_PyThread_start_new_thread, variables: !762)
!762 = !{!763, !764, !765, !766, !767, !768, !769, !770, !777, !778, !781, !783, !785, !789, !791, !793}
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !761, file: !366, line: 1033, type: !19)
!764 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fargs", arg: 2, scope: !761, file: !366, line: 1033, type: !19)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !761, file: !366, line: 1035, type: !19)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !761, file: !366, line: 1035, type: !19)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keyw", scope: !761, file: !366, line: 1035, type: !19)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "boot", scope: !761, file: !366, line: 1036, type: !406)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ident", scope: !761, file: !366, line: 1037, type: !31)
!770 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !771, file: !366, line: 1060, type: !772)
!771 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1060, column: 52)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !10, line: 33, baseType: !774)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !10, line: 31, size: 64, align: 64, elements: !775)
!775 = !{!776}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !774, file: !10, line: 32, baseType: !18, size: 64, align: 64)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !771, file: !366, line: 1060, type: !18)
!778 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !771, file: !366, line: 1060, type: !779)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64, align: 64)
!780 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!781 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !771, file: !366, line: 1060, type: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !10, line: 29, baseType: !9)
!783 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !784, file: !366, line: 1071, type: !19)
!784 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1071, column: 8)
!785 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !786, file: !366, line: 1076, type: !19)
!786 = distinct !DILexicalBlock(scope: !787, file: !366, line: 1076, column: 12)
!787 = distinct !DILexicalBlock(scope: !788, file: !366, line: 1074, column: 22)
!788 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1074, column: 9)
!789 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !790, file: !366, line: 1077, type: !19)
!790 = distinct !DILexicalBlock(scope: !787, file: !366, line: 1077, column: 12)
!791 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !792, file: !366, line: 1078, type: !19)
!792 = distinct !DILexicalBlock(scope: !787, file: !366, line: 1078, column: 12)
!793 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !794, file: !366, line: 1078, type: !19)
!794 = distinct !DILexicalBlock(scope: !795, file: !366, line: 1078, column: 100)
!795 = distinct !DILexicalBlock(scope: !792, file: !366, line: 1078, column: 66)
!796 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !10, file: !10, line: 59, type: !797, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*, i32)* @_Py_ANNOTATE_MEMORY_ORDER, variables: !802)
!797 = !DISubroutineType(types: !798)
!798 = !{null, !799, !782}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64, align: 64)
!800 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!802 = !{!803, !804}
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !796, file: !10, line: 59, type: !799)
!804 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !796, file: !10, line: 59, type: !782)
!805 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !10, file: !10, line: 51, type: !806, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_thread_fence, variables: !808)
!806 = !DISubroutineType(types: !807)
!807 = !{null, !782}
!808 = !{!809}
!809 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !805, file: !10, line: 51, type: !782)
!810 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !10, file: !10, line: 44, type: !806, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, function: void (i32)* @_Py_atomic_signal_fence, variables: !811)
!811 = !{!812}
!812 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !810, file: !10, line: 44, type: !782)
!813 = !DISubprogram(name: "t_bootstrap", scope: !366, file: !366, line: 988, type: !352, isLocal: true, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @t_bootstrap, variables: !814)
!814 = !{!815, !816, !817, !818, !819, !824, !825, !826, !827, !829, !831, !833, !835}
!815 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "boot_raw", arg: 1, scope: !813, file: !366, line: 988, type: !18)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "boot", scope: !813, file: !366, line: 990, type: !406)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !813, file: !366, line: 991, type: !470)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !813, file: !366, line: 992, type: !19)
!819 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !820, file: !366, line: 1005, type: !19)
!820 = distinct !DILexicalBlock(scope: !821, file: !366, line: 1004, column: 14)
!821 = distinct !DILexicalBlock(scope: !822, file: !366, line: 1002, column: 13)
!822 = distinct !DILexicalBlock(scope: !823, file: !366, line: 1001, column: 28)
!823 = distinct !DILexicalBlock(scope: !813, file: !366, line: 1001, column: 9)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !820, file: !366, line: 1006, type: !19)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !820, file: !366, line: 1006, type: !19)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !820, file: !366, line: 1006, type: !19)
!827 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !828, file: !366, line: 1021, type: !19)
!828 = distinct !DILexicalBlock(scope: !823, file: !366, line: 1021, column: 12)
!829 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !830, file: !366, line: 1022, type: !19)
!830 = distinct !DILexicalBlock(scope: !813, file: !366, line: 1022, column: 8)
!831 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !832, file: !366, line: 1023, type: !19)
!832 = distinct !DILexicalBlock(scope: !813, file: !366, line: 1023, column: 8)
!833 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !834, file: !366, line: 1024, type: !19)
!834 = distinct !DILexicalBlock(scope: !813, file: !366, line: 1024, column: 8)
!835 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !836, file: !366, line: 1024, type: !19)
!836 = distinct !DILexicalBlock(scope: !837, file: !366, line: 1024, column: 102)
!837 = distinct !DILexicalBlock(scope: !834, file: !366, line: 1024, column: 68)
!838 = !DISubprogram(name: "thread_PyThread_allocate_lock", scope: !366, file: !366, line: 1129, type: !130, isLocal: true, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_PyThread_allocate_lock, variables: !839)
!839 = !{!840}
!840 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !838, file: !366, line: 1129, type: !19)
!841 = !DISubprogram(name: "newlockobject", scope: !366, file: !366, line: 545, type: !842, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, function: %struct.lockobject* ()* @newlockobject, variables: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!472}
!844 = !{!845, !846}
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !841, file: !366, line: 547, type: !472)
!846 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !847, file: !366, line: 555, type: !19)
!847 = distinct !DILexicalBlock(scope: !848, file: !366, line: 555, column: 12)
!848 = distinct !DILexicalBlock(scope: !849, file: !366, line: 554, column: 40)
!849 = distinct !DILexicalBlock(scope: !841, file: !366, line: 554, column: 9)
!850 = !DISubprogram(name: "thread_PyThread_exit_thread", scope: !366, file: !366, line: 1098, type: !130, isLocal: true, isDefinition: true, scopeLine: 1099, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_PyThread_exit_thread, variables: !851)
!851 = !{!852}
!852 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !850, file: !366, line: 1098, type: !19)
!853 = !DISubprogram(name: "thread_PyThread_interrupt_main", scope: !366, file: !366, line: 1112, type: !130, isLocal: true, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_PyThread_interrupt_main, variables: !854)
!854 = !{!855}
!855 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !853, file: !366, line: 1112, type: !19)
!856 = !DISubprogram(name: "thread_get_ident", scope: !366, file: !366, line: 1141, type: !130, isLocal: true, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_get_ident, variables: !857)
!857 = !{!858, !859}
!858 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !856, file: !366, line: 1141, type: !19)
!859 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ident", scope: !856, file: !366, line: 1143, type: !31)
!860 = !DISubprogram(name: "thread__count", scope: !366, file: !366, line: 1164, type: !130, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread__count, variables: !861)
!861 = !{!862}
!862 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !860, file: !366, line: 1164, type: !19)
!863 = !DISubprogram(name: "thread_stack_size", scope: !366, file: !366, line: 1242, type: !140, isLocal: true, isDefinition: true, scopeLine: 1243, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @thread_stack_size, variables: !864)
!864 = !{!865, !866, !867, !868, !869}
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !863, file: !366, line: 1242, type: !19)
!866 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !863, file: !366, line: 1242, type: !19)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_size", scope: !863, file: !366, line: 1244, type: !108)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_size", scope: !863, file: !366, line: 1245, type: !25)
!869 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !863, file: !366, line: 1246, type: !58)
!870 = !DISubprogram(name: "thread__set_sentinel", scope: !366, file: !366, line: 1203, type: !130, isLocal: true, isDefinition: true, scopeLine: 1204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread__set_sentinel, variables: !871)
!871 = !{!872, !873, !874, !875, !876, !880}
!872 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !870, file: !366, line: 1203, type: !19)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !870, file: !366, line: 1205, type: !19)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !870, file: !366, line: 1206, type: !470)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lock", scope: !870, file: !366, line: 1207, type: !472)
!876 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !877, file: !366, line: 1216, type: !19)
!877 = distinct !DILexicalBlock(scope: !878, file: !366, line: 1216, column: 12)
!878 = distinct !DILexicalBlock(scope: !879, file: !366, line: 1209, column: 47)
!879 = distinct !DILexicalBlock(scope: !870, file: !366, line: 1209, column: 9)
!880 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !881, file: !366, line: 1225, type: !19)
!881 = distinct !DILexicalBlock(scope: !882, file: !366, line: 1225, column: 12)
!882 = distinct !DILexicalBlock(scope: !883, file: !366, line: 1224, column: 27)
!883 = distinct !DILexicalBlock(scope: !870, file: !366, line: 1224, column: 9)
!884 = !DISubprogram(name: "release_sentinel", scope: !366, file: !366, line: 1182, type: !352, isLocal: true, isDefinition: true, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @release_sentinel, variables: !885)
!885 = !{!886, !887, !888, !889}
!886 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wr", arg: 1, scope: !884, file: !366, line: 1182, type: !18)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !884, file: !366, line: 1187, type: !19)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lock", scope: !884, file: !366, line: 1188, type: !472)
!889 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !890, file: !366, line: 1199, type: !19)
!890 = distinct !DILexicalBlock(scope: !884, file: !366, line: 1199, column: 8)
!891 = !{!892, !893, !894, !895, !896, !898, !899, !903, !907, !911, !915, !916, !920, !924, !928, !932, !936, !940, !962, !966, !970, !978, !982, !986, !990, !994, !998, !1002, !1006, !1010, !1014}
!892 = !DIGlobalVariable(name: "ThreadError", scope: !0, file: !366, line: 16, type: !19, isLocal: true, isDefinition: true, variable: %struct._object** @ThreadError)
!893 = !DIGlobalVariable(name: "str_dict", scope: !0, file: !366, line: 18, type: !19, isLocal: true, isDefinition: true, variable: %struct._object** @str_dict)
!894 = !DIGlobalVariable(name: "localdummytype", scope: !0, file: !366, line: 619, type: !619, isLocal: true, isDefinition: true, variable: %struct._typeobject* @localdummytype)
!895 = !DIGlobalVariable(name: "localtype", scope: !0, file: !366, line: 873, type: !619, isLocal: true, isDefinition: true, variable: %struct._typeobject* @localtype)
!896 = !DIGlobalVariable(name: "wr_callback_def", scope: !615, file: !366, line: 717, type: !897, isLocal: true, isDefinition: true, variable: %struct.PyMethodDef* @local_new.wr_callback_def)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !295, line: 47, baseType: !294)
!898 = !DIGlobalVariable(name: "Locktype", scope: !0, file: !366, line: 215, type: !619, isLocal: true, isDefinition: true, variable: %struct._typeobject* @Locktype)
!899 = !DIGlobalVariable(name: "lock_methods", scope: !0, file: !366, line: 195, type: !900, isLocal: true, isDefinition: true, variable: [9 x %struct.PyMethodDef]* @lock_methods)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 2304, align: 64, elements: !901)
!901 = !{!902}
!902 = !DISubrange(count: 9)
!903 = !DIGlobalVariable(name: "acquire_doc", scope: !0, file: !366, line: 149, type: !904, isLocal: true, isDefinition: true, variable: [424 x i8]* @acquire_doc)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3392, align: 8, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 424)
!907 = !DIGlobalVariable(name: "release_doc", scope: !0, file: !366, line: 175, type: !908, isLocal: true, isDefinition: true, variable: [251 x i8]* @release_doc)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2008, align: 8, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 251)
!911 = !DIGlobalVariable(name: "locked_doc", scope: !0, file: !366, line: 189, type: !912, isLocal: true, isDefinition: true, variable: [105 x i8]* @locked_doc)
!912 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 840, align: 8, elements: !913)
!913 = !{!914}
!914 = !DISubrange(count: 105)
!915 = !DIGlobalVariable(name: "RLocktype", scope: !0, file: !366, line: 502, type: !619, isLocal: true, isDefinition: true, variable: %struct._typeobject* @RLocktype)
!916 = !DIGlobalVariable(name: "rlock_methods", scope: !0, file: !366, line: 483, type: !917, isLocal: true, isDefinition: true, variable: [8 x %struct.PyMethodDef]* @rlock_methods)
!917 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 2048, align: 64, elements: !918)
!918 = !{!919}
!919 = !DISubrange(count: 8)
!920 = !DIGlobalVariable(name: "rlock_acquire_doc", scope: !0, file: !366, line: 336, type: !921, isLocal: true, isDefinition: true, variable: [667 x i8]* @rlock_acquire_doc)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 5336, align: 8, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 667)
!924 = !DIGlobalVariable(name: "rlock_release_doc", scope: !0, file: !366, line: 369, type: !925, isLocal: true, isDefinition: true, variable: [421 x i8]* @rlock_release_doc)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3368, align: 8, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 421)
!928 = !DIGlobalVariable(name: "rlock_is_owned_doc", scope: !0, file: !366, line: 448, type: !929, isLocal: true, isDefinition: true, variable: [64 x i8]* @rlock_is_owned_doc)
!929 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, align: 8, elements: !930)
!930 = !{!931}
!931 = !DISubrange(count: 64)
!932 = !DIGlobalVariable(name: "rlock_acquire_restore_doc", scope: !0, file: !366, line: 406, type: !933, isLocal: true, isDefinition: true, variable: [76 x i8]* @rlock_acquire_restore_doc)
!933 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 608, align: 8, elements: !934)
!934 = !{!935}
!935 = !DISubrange(count: 76)
!936 = !DIGlobalVariable(name: "rlock_release_save_doc", scope: !0, file: !366, line: 431, type: !937, isLocal: true, isDefinition: true, variable: [69 x i8]* @rlock_release_save_doc)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 552, align: 8, elements: !938)
!938 = !{!939}
!939 = !DISubrange(count: 69)
!940 = !DIGlobalVariable(name: "threadmodule", scope: !0, file: !366, line: 1340, type: !941, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @threadmodule)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !942, line: 47, size: 832, align: 64, elements: !943)
!942 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!943 = !{!944, !953, !954, !955, !956, !958, !959, !960, !961}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !941, file: !942, line: 48, baseType: !945, size: 320, align: 64)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !942, line: 38, baseType: !946)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !942, line: 33, size: 320, align: 64, elements: !947)
!947 = !{!948, !949, !951, !952}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !946, file: !942, line: 34, baseType: !20, size: 128, align: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !946, file: !942, line: 35, baseType: !950, size: 64, align: 64, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64, align: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !946, file: !942, line: 36, baseType: !25, size: 64, align: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !946, file: !942, line: 37, baseType: !19, size: 64, align: 64, offset: 256)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !941, file: !942, line: 49, baseType: !43, size: 64, align: 64, offset: 320)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !941, file: !942, line: 50, baseType: !43, size: 64, align: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !941, file: !942, line: 51, baseType: !25, size: 64, align: 64, offset: 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !941, file: !942, line: 52, baseType: !957, size: 64, align: 64, offset: 512)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64, align: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !941, file: !942, line: 53, baseType: !156, size: 64, align: 64, offset: 576)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !941, file: !942, line: 54, baseType: !273, size: 64, align: 64, offset: 640)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !941, file: !942, line: 55, baseType: !156, size: 64, align: 64, offset: 704)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !941, file: !942, line: 56, baseType: !350, size: 64, align: 64, offset: 768)
!962 = !DIGlobalVariable(name: "thread_doc", scope: !0, file: !366, line: 1324, type: !963, isLocal: true, isDefinition: true, variable: [137 x i8]* @thread_doc)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1096, align: 8, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 137)
!966 = !DIGlobalVariable(name: "thread_methods", scope: !0, file: !366, line: 1295, type: !967, isLocal: true, isDefinition: true, variable: [12 x %struct.PyMethodDef]* @thread_methods)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !897, size: 3072, align: 64, elements: !968)
!968 = !{!969}
!969 = !DISubrange(count: 12)
!970 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !366, line: 20, type: !971, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !21, line: 144, baseType: !972)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !21, line: 140, size: 192, align: 64, elements: !973)
!973 = !{!974, !976, !977}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !972, file: !21, line: 141, baseType: !975, size: 64, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64, align: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !972, file: !21, line: 142, baseType: !43, size: 64, align: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !972, file: !21, line: 143, baseType: !19, size: 64, align: 64, offset: 128)
!978 = !DIGlobalVariable(name: "start_new_doc", scope: !0, file: !366, line: 1086, type: !979, isLocal: true, isDefinition: true, variable: [490 x i8]* @start_new_doc)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3920, align: 8, elements: !980)
!980 = !{!981}
!981 = !DISubrange(count: 490)
!982 = !DIGlobalVariable(name: "allocate_doc", scope: !0, file: !366, line: 1134, type: !983, isLocal: true, isDefinition: true, variable: [143 x i8]* @allocate_doc)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1144, align: 8, elements: !984)
!984 = !{!985}
!985 = !DISubrange(count: 143)
!986 = !DIGlobalVariable(name: "exit_doc", scope: !0, file: !366, line: 1104, type: !987, isLocal: true, isDefinition: true, variable: [174 x i8]* @exit_doc)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1392, align: 8, elements: !988)
!988 = !{!989}
!989 = !DISubrange(count: 174)
!990 = !DIGlobalVariable(name: "interrupt_doc", scope: !0, file: !366, line: 1119, type: !991, isLocal: true, isDefinition: true, variable: [128 x i8]* @interrupt_doc)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1024, align: 8, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 128)
!994 = !DIGlobalVariable(name: "get_ident_doc", scope: !0, file: !366, line: 1152, type: !995, isLocal: true, isDefinition: true, variable: [471 x i8]* @get_ident_doc)
!995 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3768, align: 8, elements: !996)
!996 = !{!997}
!997 = !DISubrange(count: 471)
!998 = !DIGlobalVariable(name: "_count_doc", scope: !0, file: !366, line: 1169, type: !999, isLocal: true, isDefinition: true, variable: [373 x i8]* @_count_doc)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2984, align: 8, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 373)
!1002 = !DIGlobalVariable(name: "stack_size_doc", scope: !0, file: !366, line: 1275, type: !1003, isLocal: true, isDefinition: true, variable: [1035 x i8]* @stack_size_doc)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8280, align: 8, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 1035)
!1006 = !DIGlobalVariable(name: "_set_sentinel_doc", scope: !0, file: !366, line: 1233, type: !1007, isLocal: true, isDefinition: true, variable: [202 x i8]* @_set_sentinel_doc)
!1007 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1616, align: 8, elements: !1008)
!1008 = !{!1009}
!1009 = !DISubrange(count: 202)
!1010 = !DIGlobalVariable(name: "lock_doc", scope: !0, file: !366, line: 1328, type: !1011, isLocal: true, isDefinition: true, variable: [491 x i8]* @lock_doc)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3928, align: 8, elements: !1012)
!1012 = !{!1013}
!1013 = !DISubrange(count: 491)
!1014 = !DIGlobalVariable(name: "nb_threads", scope: !0, file: !366, line: 17, type: !31, isLocal: true, isDefinition: true, variable: i64* @nb_threads)
!1015 = !{i32 2, !"Dwarf Version", i32 4}
!1016 = !{i32 2, !"Debug Info Version", i32 3}
!1017 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!1018 = !DILocation(line: 1356, column: 5, scope: !481)
!1019 = !DIExpression()
!1020 = !DILocation(line: 1356, column: 15, scope: !481)
!1021 = !DILocation(line: 1356, column: 19, scope: !481)
!1022 = !DILocation(line: 1356, column: 23, scope: !481)
!1023 = !DILocation(line: 1359, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1359, column: 9)
!1025 = !DILocation(line: 1359, column: 39, scope: !1024)
!1026 = !DILocation(line: 1359, column: 9, scope: !481)
!1027 = !DILocation(line: 1360, column: 9, scope: !1024)
!1028 = !DILocation(line: 1361, column: 9, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1361, column: 9)
!1030 = !DILocation(line: 1361, column: 34, scope: !1029)
!1031 = !DILocation(line: 1361, column: 9, scope: !481)
!1032 = !DILocation(line: 1362, column: 9, scope: !1029)
!1033 = !DILocation(line: 1363, column: 9, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1363, column: 9)
!1035 = !DILocation(line: 1363, column: 33, scope: !1034)
!1036 = !DILocation(line: 1363, column: 9, scope: !481)
!1037 = !DILocation(line: 1364, column: 9, scope: !1034)
!1038 = !DILocation(line: 1365, column: 9, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1365, column: 9)
!1040 = !DILocation(line: 1365, column: 34, scope: !1039)
!1041 = !DILocation(line: 1365, column: 9, scope: !481)
!1042 = !DILocation(line: 1366, column: 9, scope: !1039)
!1043 = !DILocation(line: 1369, column: 9, scope: !481)
!1044 = !DILocation(line: 1369, column: 7, scope: !481)
!1045 = !{!1046, !1046, i64 0}
!1046 = !{!"any pointer", !1047, i64 0}
!1047 = !{!"omnipotent char", !1048, i64 0}
!1048 = !{!"Simple C/C++ TBAA"}
!1049 = !DILocation(line: 1370, column: 9, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1370, column: 9)
!1051 = !DILocation(line: 1370, column: 11, scope: !1050)
!1052 = !DILocation(line: 1370, column: 9, scope: !481)
!1053 = !DILocation(line: 1371, column: 9, scope: !1050)
!1054 = !DILocation(line: 1373, column: 19, scope: !481)
!1055 = !DILocation(line: 1373, column: 17, scope: !481)
!1056 = !DILocation(line: 1374, column: 10, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1374, column: 9)
!1058 = !DILocation(line: 1374, column: 9, scope: !481)
!1059 = !DILocation(line: 1375, column: 9, scope: !1057)
!1060 = !DILocation(line: 1376, column: 28, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1376, column: 9)
!1062 = !DILocation(line: 1376, column: 46, scope: !1061)
!1063 = !DILocation(line: 1376, column: 9, scope: !1061)
!1064 = !DILocation(line: 1376, column: 59, scope: !1061)
!1065 = !DILocation(line: 1376, column: 9, scope: !481)
!1066 = !DILocation(line: 1377, column: 9, scope: !1061)
!1067 = !DILocation(line: 1380, column: 26, scope: !481)
!1068 = !DILocation(line: 1380, column: 9, scope: !481)
!1069 = !DILocation(line: 1380, column: 7, scope: !481)
!1070 = !DILocation(line: 1381, column: 19, scope: !481)
!1071 = !DILocation(line: 1381, column: 17, scope: !481)
!1072 = !DILocation(line: 1382, column: 21, scope: !481)
!1073 = !DILocation(line: 1382, column: 36, scope: !481)
!1074 = !DILocation(line: 1382, column: 45, scope: !481)
!1075 = !{!1076, !1077, i64 0}
!1076 = !{!"_object", !1077, i64 0, !1046, i64 8}
!1077 = !{!"long", !1047, i64 0}
!1078 = !DILocation(line: 1384, column: 26, scope: !481)
!1079 = !DILocation(line: 1384, column: 38, scope: !481)
!1080 = !DILocation(line: 1384, column: 5, scope: !481)
!1081 = !DILocation(line: 1385, column: 21, scope: !481)
!1082 = !{!1083, !1046, i64 176}
!1083 = !{!"_typeobject", !1084, i64 0, !1046, i64 24, !1077, i64 32, !1077, i64 40, !1046, i64 48, !1046, i64 56, !1046, i64 64, !1046, i64 72, !1046, i64 80, !1046, i64 88, !1046, i64 96, !1046, i64 104, !1046, i64 112, !1046, i64 120, !1046, i64 128, !1046, i64 136, !1046, i64 144, !1046, i64 152, !1046, i64 160, !1077, i64 168, !1046, i64 176, !1046, i64 184, !1046, i64 192, !1046, i64 200, !1077, i64 208, !1046, i64 216, !1046, i64 224, !1046, i64 232, !1046, i64 240, !1046, i64 248, !1046, i64 256, !1046, i64 264, !1046, i64 272, !1046, i64 280, !1077, i64 288, !1046, i64 296, !1046, i64 304, !1046, i64 312, !1046, i64 320, !1046, i64 328, !1046, i64 336, !1046, i64 344, !1046, i64 352, !1046, i64 360, !1046, i64 368, !1046, i64 376, !1085, i64 384, !1046, i64 392}
!1084 = !{!"", !1076, i64 0, !1077, i64 16}
!1085 = !{!"int", !1047, i64 0}
!1086 = !DILocation(line: 1386, column: 43, scope: !481)
!1087 = !DILocation(line: 1387, column: 26, scope: !481)
!1088 = !DILocation(line: 1387, column: 5, scope: !481)
!1089 = !DILocation(line: 1389, column: 44, scope: !481)
!1090 = !DILocation(line: 1390, column: 28, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1390, column: 9)
!1092 = !DILocation(line: 1390, column: 9, scope: !1091)
!1093 = !DILocation(line: 1390, column: 64, scope: !1091)
!1094 = !DILocation(line: 1390, column: 9, scope: !481)
!1095 = !DILocation(line: 1391, column: 9, scope: !1091)
!1096 = !DILocation(line: 1393, column: 44, scope: !481)
!1097 = !DILocation(line: 1394, column: 28, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1394, column: 9)
!1099 = !DILocation(line: 1394, column: 9, scope: !1098)
!1100 = !DILocation(line: 1394, column: 65, scope: !1098)
!1101 = !DILocation(line: 1394, column: 9, scope: !481)
!1102 = !DILocation(line: 1395, column: 9, scope: !1098)
!1103 = !DILocation(line: 1397, column: 16, scope: !481)
!1104 = !{!1077, !1077, i64 0}
!1105 = !DILocation(line: 1399, column: 16, scope: !481)
!1106 = !DILocation(line: 1399, column: 14, scope: !481)
!1107 = !DILocation(line: 1400, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !481, file: !366, line: 1400, column: 9)
!1109 = !DILocation(line: 1400, column: 18, scope: !1108)
!1110 = !DILocation(line: 1400, column: 9, scope: !481)
!1111 = !DILocation(line: 1401, column: 9, scope: !1108)
!1112 = !DILocation(line: 1404, column: 5, scope: !481)
!1113 = !DILocation(line: 1405, column: 12, scope: !481)
!1114 = !DILocation(line: 1405, column: 5, scope: !481)
!1115 = !DILocation(line: 1406, column: 1, scope: !481)
!1116 = !DILocation(line: 612, column: 38, scope: !488)
!1117 = !DILocation(line: 614, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !488, file: !366, line: 614, column: 9)
!1119 = !DILocation(line: 614, column: 15, scope: !1118)
!1120 = !{!1121, !1046, i64 24}
!1121 = !{!"", !1076, i64 0, !1046, i64 16, !1046, i64 24}
!1122 = !DILocation(line: 614, column: 27, scope: !1118)
!1123 = !DILocation(line: 614, column: 9, scope: !488)
!1124 = !DILocation(line: 615, column: 45, scope: !1118)
!1125 = !DILocation(line: 615, column: 32, scope: !1118)
!1126 = !DILocation(line: 615, column: 9, scope: !1118)
!1127 = !DILocation(line: 616, column: 19, scope: !488)
!1128 = !DILocation(line: 616, column: 7, scope: !488)
!1129 = !DILocation(line: 616, column: 27, scope: !488)
!1130 = !{!1076, !1046, i64 8}
!1131 = !DILocation(line: 616, column: 37, scope: !488)
!1132 = !{!1083, !1046, i64 320}
!1133 = !DILocation(line: 616, column: 56, scope: !488)
!1134 = !DILocation(line: 616, column: 45, scope: !488)
!1135 = !DILocation(line: 616, column: 5, scope: !488)
!1136 = !DILocation(line: 617, column: 1, scope: !488)
!1137 = !DILocation(line: 797, column: 28, scope: !493)
!1138 = !DILocation(line: 801, column: 9, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !493, file: !366, line: 801, column: 9)
!1140 = !DILocation(line: 801, column: 15, scope: !1139)
!1141 = !{!1142, !1046, i64 40}
!1142 = !{!"", !1076, i64 0, !1046, i64 16, !1046, i64 24, !1046, i64 32, !1046, i64 40, !1046, i64 48, !1046, i64 56}
!1143 = !DILocation(line: 801, column: 27, scope: !1139)
!1144 = !DILocation(line: 801, column: 9, scope: !493)
!1145 = !DILocation(line: 802, column: 45, scope: !1139)
!1146 = !DILocation(line: 802, column: 32, scope: !1139)
!1147 = !DILocation(line: 802, column: 9, scope: !1139)
!1148 = !DILocation(line: 804, column: 25, scope: !493)
!1149 = !DILocation(line: 804, column: 5, scope: !493)
!1150 = !DILocation(line: 806, column: 17, scope: !493)
!1151 = !DILocation(line: 806, column: 5, scope: !493)
!1152 = !DILocation(line: 807, column: 5, scope: !493)
!1153 = !DILocation(line: 807, column: 10, scope: !1154)
!1154 = !DILexicalBlockFile(scope: !499, file: !366, discriminator: 1)
!1155 = !DILocation(line: 807, column: 20, scope: !499)
!1156 = !DILocation(line: 807, column: 51, scope: !499)
!1157 = !DILocation(line: 807, column: 57, scope: !499)
!1158 = !{!1142, !1046, i64 16}
!1159 = !DILocation(line: 807, column: 67, scope: !502)
!1160 = !DILocation(line: 807, column: 83, scope: !502)
!1161 = !DILocation(line: 807, column: 67, scope: !499)
!1162 = !DILocation(line: 807, column: 98, scope: !1163)
!1163 = !DILexicalBlockFile(scope: !502, file: !366, discriminator: 2)
!1164 = !DILocation(line: 807, column: 103, scope: !1165)
!1165 = !DILexicalBlockFile(scope: !501, file: !366, discriminator: 4)
!1166 = !DILocation(line: 807, column: 113, scope: !501)
!1167 = !DILocation(line: 807, column: 143, scope: !501)
!1168 = !DILocation(line: 807, column: 169, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !501, file: !366, line: 807, column: 166)
!1170 = !DILocation(line: 807, column: 186, scope: !1169)
!1171 = !DILocation(line: 807, column: 166, scope: !1169)
!1172 = !DILocation(line: 807, column: 196, scope: !1169)
!1173 = !DILocation(line: 807, column: 166, scope: !501)
!1174 = !DILocation(line: 807, column: 166, scope: !1175)
!1175 = !DILexicalBlockFile(scope: !501, file: !366, discriminator: 5)
!1176 = !DILocation(line: 807, column: 227, scope: !1177)
!1177 = !DILexicalBlockFile(scope: !1169, file: !366, discriminator: 6)
!1178 = !DILocation(line: 807, column: 245, scope: !1169)
!1179 = !DILocation(line: 807, column: 255, scope: !1169)
!1180 = !{!1083, !1046, i64 48}
!1181 = !DILocation(line: 807, column: 280, scope: !1169)
!1182 = !DILocation(line: 807, column: 211, scope: !1169)
!1183 = !DILocation(line: 807, column: 299, scope: !1184)
!1184 = !DILexicalBlockFile(scope: !502, file: !366, discriminator: 7)
!1185 = !DILocation(line: 807, column: 299, scope: !501)
!1186 = !DILocation(line: 807, column: 299, scope: !1187)
!1187 = !DILexicalBlockFile(scope: !501, file: !366, discriminator: 8)
!1188 = !DILocation(line: 807, column: 299, scope: !1189)
!1189 = !DILexicalBlockFile(scope: !501, file: !366, discriminator: 9)
!1190 = !DILocation(line: 807, column: 312, scope: !1191)
!1191 = !DILexicalBlockFile(scope: !1192, file: !366, discriminator: 10)
!1192 = !DILexicalBlockFile(scope: !493, file: !366, discriminator: 3)
!1193 = !DILocation(line: 807, column: 312, scope: !499)
!1194 = !DILocation(line: 808, column: 19, scope: !493)
!1195 = !DILocation(line: 808, column: 7, scope: !493)
!1196 = !DILocation(line: 808, column: 27, scope: !493)
!1197 = !DILocation(line: 808, column: 37, scope: !493)
!1198 = !DILocation(line: 808, column: 56, scope: !493)
!1199 = !DILocation(line: 808, column: 45, scope: !493)
!1200 = !DILocation(line: 808, column: 5, scope: !493)
!1201 = !DILocation(line: 809, column: 1, scope: !493)
!1202 = !DILocation(line: 918, column: 29, scope: !503)
!1203 = !DILocation(line: 918, column: 45, scope: !503)
!1204 = !DILocation(line: 920, column: 5, scope: !503)
!1205 = !DILocation(line: 920, column: 15, scope: !503)
!1206 = !DILocation(line: 920, column: 23, scope: !503)
!1207 = !DILocation(line: 921, column: 5, scope: !503)
!1208 = !DILocation(line: 921, column: 9, scope: !503)
!1209 = !DILocation(line: 923, column: 20, scope: !503)
!1210 = !DILocation(line: 923, column: 13, scope: !503)
!1211 = !DILocation(line: 923, column: 11, scope: !503)
!1212 = !DILocation(line: 924, column: 9, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !503, file: !366, line: 924, column: 9)
!1214 = !DILocation(line: 924, column: 15, scope: !1213)
!1215 = !DILocation(line: 924, column: 9, scope: !503)
!1216 = !DILocation(line: 925, column: 9, scope: !1213)
!1217 = !DILocation(line: 927, column: 34, scope: !503)
!1218 = !DILocation(line: 927, column: 40, scope: !503)
!1219 = !DILocation(line: 927, column: 9, scope: !503)
!1220 = !DILocation(line: 927, column: 7, scope: !503)
!1221 = !{!1085, !1085, i64 0}
!1222 = !DILocation(line: 928, column: 9, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !503, file: !366, line: 928, column: 9)
!1224 = !DILocation(line: 928, column: 11, scope: !1223)
!1225 = !DILocation(line: 928, column: 9, scope: !503)
!1226 = !DILocation(line: 929, column: 25, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1223, file: !366, line: 928, column: 17)
!1228 = !DILocation(line: 929, column: 34, scope: !1227)
!1229 = !DILocation(line: 929, column: 43, scope: !1227)
!1230 = !DILocation(line: 930, column: 16, scope: !1227)
!1231 = !DILocation(line: 930, column: 9, scope: !1227)
!1232 = !DILocation(line: 932, column: 9, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !503, file: !366, line: 932, column: 9)
!1234 = !DILocation(line: 932, column: 11, scope: !1233)
!1235 = !DILocation(line: 932, column: 9, scope: !503)
!1236 = !DILocation(line: 933, column: 9, scope: !1233)
!1237 = !DILocation(line: 935, column: 23, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !503, file: !366, line: 935, column: 9)
!1239 = !DILocation(line: 935, column: 11, scope: !1238)
!1240 = !DILocation(line: 935, column: 31, scope: !1238)
!1241 = !DILocation(line: 935, column: 40, scope: !1238)
!1242 = !DILocation(line: 935, column: 9, scope: !503)
!1243 = !DILocation(line: 937, column: 61, scope: !1238)
!1244 = !DILocation(line: 937, column: 49, scope: !1238)
!1245 = !DILocation(line: 937, column: 67, scope: !1238)
!1246 = !DILocation(line: 937, column: 73, scope: !1238)
!1247 = !DILocation(line: 937, column: 16, scope: !1238)
!1248 = !DILocation(line: 937, column: 9, scope: !1238)
!1249 = !DILocation(line: 940, column: 28, scope: !503)
!1250 = !DILocation(line: 940, column: 35, scope: !503)
!1251 = !DILocation(line: 940, column: 13, scope: !503)
!1252 = !DILocation(line: 940, column: 11, scope: !503)
!1253 = !DILocation(line: 941, column: 9, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !503, file: !366, line: 941, column: 9)
!1255 = !DILocation(line: 941, column: 15, scope: !1254)
!1256 = !DILocation(line: 941, column: 9, scope: !503)
!1257 = !DILocation(line: 943, column: 61, scope: !1254)
!1258 = !DILocation(line: 943, column: 49, scope: !1254)
!1259 = !DILocation(line: 943, column: 67, scope: !1254)
!1260 = !DILocation(line: 943, column: 73, scope: !1254)
!1261 = !DILocation(line: 943, column: 16, scope: !1254)
!1262 = !DILocation(line: 943, column: 9, scope: !1254)
!1263 = !DILocation(line: 945, column: 21, scope: !503)
!1264 = !DILocation(line: 945, column: 30, scope: !503)
!1265 = !DILocation(line: 945, column: 39, scope: !503)
!1266 = !DILocation(line: 946, column: 12, scope: !503)
!1267 = !DILocation(line: 946, column: 5, scope: !503)
!1268 = !DILocation(line: 947, column: 1, scope: !503)
!1269 = !DILocation(line: 849, column: 29, scope: !557)
!1270 = !DILocation(line: 849, column: 45, scope: !557)
!1271 = !DILocation(line: 849, column: 61, scope: !557)
!1272 = !DILocation(line: 851, column: 5, scope: !557)
!1273 = !DILocation(line: 851, column: 15, scope: !557)
!1274 = !DILocation(line: 852, column: 5, scope: !557)
!1275 = !DILocation(line: 852, column: 9, scope: !557)
!1276 = !DILocation(line: 854, column: 20, scope: !557)
!1277 = !DILocation(line: 854, column: 13, scope: !557)
!1278 = !DILocation(line: 854, column: 11, scope: !557)
!1279 = !DILocation(line: 855, column: 9, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !557, file: !366, line: 855, column: 9)
!1281 = !DILocation(line: 855, column: 15, scope: !1280)
!1282 = !DILocation(line: 855, column: 9, scope: !557)
!1283 = !DILocation(line: 856, column: 9, scope: !1280)
!1284 = !DILocation(line: 858, column: 34, scope: !557)
!1285 = !DILocation(line: 858, column: 40, scope: !557)
!1286 = !DILocation(line: 858, column: 9, scope: !557)
!1287 = !DILocation(line: 858, column: 7, scope: !557)
!1288 = !DILocation(line: 859, column: 9, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !557, file: !366, line: 859, column: 9)
!1290 = !DILocation(line: 859, column: 11, scope: !1289)
!1291 = !DILocation(line: 859, column: 9, scope: !557)
!1292 = !DILocation(line: 860, column: 22, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !366, line: 859, column: 17)
!1294 = !DILocation(line: 862, column: 36, scope: !1293)
!1295 = !DILocation(line: 862, column: 24, scope: !1293)
!1296 = !DILocation(line: 862, column: 44, scope: !1293)
!1297 = !DILocation(line: 862, column: 54, scope: !1293)
!1298 = !{!1083, !1046, i64 24}
!1299 = !DILocation(line: 862, column: 63, scope: !1293)
!1300 = !DILocation(line: 860, column: 9, scope: !1293)
!1301 = !DILocation(line: 863, column: 9, scope: !1293)
!1302 = !DILocation(line: 865, column: 9, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !557, file: !366, line: 865, column: 9)
!1304 = !DILocation(line: 865, column: 11, scope: !1303)
!1305 = !DILocation(line: 865, column: 9, scope: !557)
!1306 = !DILocation(line: 866, column: 9, scope: !1303)
!1307 = !DILocation(line: 868, column: 57, scope: !557)
!1308 = !DILocation(line: 868, column: 45, scope: !557)
!1309 = !DILocation(line: 868, column: 63, scope: !557)
!1310 = !DILocation(line: 868, column: 69, scope: !557)
!1311 = !DILocation(line: 868, column: 72, scope: !557)
!1312 = !DILocation(line: 868, column: 12, scope: !557)
!1313 = !DILocation(line: 868, column: 5, scope: !557)
!1314 = !DILocation(line: 869, column: 1, scope: !557)
!1315 = !DILocation(line: 766, column: 29, scope: !566)
!1316 = !DILocation(line: 766, column: 45, scope: !566)
!1317 = !DILocation(line: 766, column: 58, scope: !566)
!1318 = !DILocation(line: 768, column: 5, scope: !566)
!1319 = !DILocation(line: 768, column: 14, scope: !1320)
!1320 = !DILexicalBlockFile(scope: !575, file: !366, discriminator: 1)
!1321 = !DILocation(line: 768, column: 20, scope: !575)
!1322 = !{!1142, !1046, i64 24}
!1323 = !DILocation(line: 768, column: 14, scope: !575)
!1324 = !DILocation(line: 768, column: 14, scope: !576)
!1325 = !DILocation(line: 768, column: 28, scope: !1326)
!1326 = !DILexicalBlockFile(scope: !574, file: !366, discriminator: 2)
!1327 = !DILocation(line: 768, column: 32, scope: !574)
!1328 = !DILocation(line: 768, column: 39, scope: !574)
!1329 = !DILocation(line: 768, column: 58, scope: !574)
!1330 = !DILocation(line: 768, column: 64, scope: !574)
!1331 = !DILocation(line: 768, column: 71, scope: !574)
!1332 = !DILocation(line: 768, column: 81, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !574, file: !366, line: 768, column: 81)
!1334 = !DILocation(line: 768, column: 81, scope: !574)
!1335 = !DILocation(line: 768, column: 94, scope: !1336)
!1336 = !DILexicalBlockFile(scope: !1333, file: !366, discriminator: 4)
!1337 = !DILocation(line: 768, column: 87, scope: !1333)
!1338 = !DILocation(line: 768, column: 100, scope: !1339)
!1339 = !DILexicalBlockFile(scope: !575, file: !366, discriminator: 5)
!1340 = !DILocation(line: 768, column: 100, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !1342, file: !366, discriminator: 7)
!1342 = !DILexicalBlockFile(scope: !575, file: !366, discriminator: 6)
!1343 = !DILocation(line: 768, column: 100, scope: !574)
!1344 = !DILocation(line: 768, column: 102, scope: !1345)
!1345 = !DILexicalBlockFile(scope: !1346, file: !366, discriminator: 8)
!1346 = !DILexicalBlockFile(scope: !576, file: !366, discriminator: 3)
!1347 = !DILocation(line: 769, column: 5, scope: !566)
!1348 = !DILocation(line: 769, column: 14, scope: !1349)
!1349 = !DILexicalBlockFile(scope: !579, file: !366, discriminator: 1)
!1350 = !DILocation(line: 769, column: 20, scope: !579)
!1351 = !{!1142, !1046, i64 32}
!1352 = !DILocation(line: 769, column: 14, scope: !579)
!1353 = !DILocation(line: 769, column: 14, scope: !580)
!1354 = !DILocation(line: 769, column: 26, scope: !1355)
!1355 = !DILexicalBlockFile(scope: !578, file: !366, discriminator: 2)
!1356 = !DILocation(line: 769, column: 30, scope: !578)
!1357 = !DILocation(line: 769, column: 37, scope: !578)
!1358 = !DILocation(line: 769, column: 56, scope: !578)
!1359 = !DILocation(line: 769, column: 62, scope: !578)
!1360 = !DILocation(line: 769, column: 67, scope: !578)
!1361 = !DILocation(line: 769, column: 77, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !578, file: !366, line: 769, column: 77)
!1363 = !DILocation(line: 769, column: 77, scope: !578)
!1364 = !DILocation(line: 769, column: 90, scope: !1365)
!1365 = !DILexicalBlockFile(scope: !1362, file: !366, discriminator: 4)
!1366 = !DILocation(line: 769, column: 83, scope: !1362)
!1367 = !DILocation(line: 769, column: 96, scope: !1368)
!1368 = !DILexicalBlockFile(scope: !579, file: !366, discriminator: 5)
!1369 = !DILocation(line: 769, column: 96, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !1371, file: !366, discriminator: 7)
!1371 = !DILexicalBlockFile(scope: !579, file: !366, discriminator: 6)
!1372 = !DILocation(line: 769, column: 96, scope: !578)
!1373 = !DILocation(line: 769, column: 98, scope: !1374)
!1374 = !DILexicalBlockFile(scope: !1375, file: !366, discriminator: 8)
!1375 = !DILexicalBlockFile(scope: !580, file: !366, discriminator: 3)
!1376 = !DILocation(line: 770, column: 5, scope: !566)
!1377 = !DILocation(line: 770, column: 14, scope: !1378)
!1378 = !DILexicalBlockFile(scope: !583, file: !366, discriminator: 1)
!1379 = !DILocation(line: 770, column: 20, scope: !583)
!1380 = !{!1142, !1046, i64 48}
!1381 = !DILocation(line: 770, column: 14, scope: !583)
!1382 = !DILocation(line: 770, column: 14, scope: !584)
!1383 = !DILocation(line: 770, column: 31, scope: !1384)
!1384 = !DILexicalBlockFile(scope: !582, file: !366, discriminator: 2)
!1385 = !DILocation(line: 770, column: 35, scope: !582)
!1386 = !DILocation(line: 770, column: 42, scope: !582)
!1387 = !DILocation(line: 770, column: 61, scope: !582)
!1388 = !DILocation(line: 770, column: 67, scope: !582)
!1389 = !DILocation(line: 770, column: 77, scope: !582)
!1390 = !DILocation(line: 770, column: 87, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !582, file: !366, line: 770, column: 87)
!1392 = !DILocation(line: 770, column: 87, scope: !582)
!1393 = !DILocation(line: 770, column: 100, scope: !1394)
!1394 = !DILexicalBlockFile(scope: !1391, file: !366, discriminator: 4)
!1395 = !DILocation(line: 770, column: 93, scope: !1391)
!1396 = !DILocation(line: 770, column: 106, scope: !1397)
!1397 = !DILexicalBlockFile(scope: !583, file: !366, discriminator: 5)
!1398 = !DILocation(line: 770, column: 106, scope: !1399)
!1399 = !DILexicalBlockFile(scope: !1400, file: !366, discriminator: 7)
!1400 = !DILexicalBlockFile(scope: !583, file: !366, discriminator: 6)
!1401 = !DILocation(line: 770, column: 106, scope: !582)
!1402 = !DILocation(line: 770, column: 108, scope: !1403)
!1403 = !DILexicalBlockFile(scope: !1404, file: !366, discriminator: 8)
!1404 = !DILexicalBlockFile(scope: !584, file: !366, discriminator: 3)
!1405 = !DILocation(line: 771, column: 5, scope: !566)
!1406 = !DILocation(line: 772, column: 1, scope: !566)
!1407 = !DILocation(line: 775, column: 26, scope: !585)
!1408 = !DILocation(line: 777, column: 5, scope: !585)
!1409 = !DILocation(line: 777, column: 20, scope: !585)
!1410 = !DILocation(line: 778, column: 5, scope: !585)
!1411 = !DILocation(line: 778, column: 10, scope: !1412)
!1412 = !DILexicalBlockFile(scope: !592, file: !366, discriminator: 1)
!1413 = !DILocation(line: 778, column: 20, scope: !592)
!1414 = !DILocation(line: 778, column: 43, scope: !592)
!1415 = !DILocation(line: 778, column: 49, scope: !592)
!1416 = !DILocation(line: 778, column: 60, scope: !596)
!1417 = !DILocation(line: 778, column: 68, scope: !596)
!1418 = !DILocation(line: 778, column: 60, scope: !592)
!1419 = !DILocation(line: 778, column: 86, scope: !1420)
!1420 = !DILexicalBlockFile(scope: !595, file: !366, discriminator: 2)
!1421 = !DILocation(line: 778, column: 92, scope: !595)
!1422 = !DILocation(line: 778, column: 98, scope: !595)
!1423 = !DILocation(line: 778, column: 112, scope: !595)
!1424 = !DILocation(line: 778, column: 117, scope: !1425)
!1425 = !DILexicalBlockFile(scope: !594, file: !366, discriminator: 4)
!1426 = !DILocation(line: 778, column: 127, scope: !594)
!1427 = !DILocation(line: 778, column: 157, scope: !594)
!1428 = !DILocation(line: 778, column: 175, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !594, file: !366, line: 778, column: 172)
!1430 = !DILocation(line: 778, column: 192, scope: !1429)
!1431 = !DILocation(line: 778, column: 172, scope: !1429)
!1432 = !DILocation(line: 778, column: 202, scope: !1429)
!1433 = !DILocation(line: 778, column: 172, scope: !594)
!1434 = !DILocation(line: 778, column: 172, scope: !1435)
!1435 = !DILexicalBlockFile(scope: !594, file: !366, discriminator: 5)
!1436 = !DILocation(line: 778, column: 233, scope: !1437)
!1437 = !DILexicalBlockFile(scope: !1429, file: !366, discriminator: 6)
!1438 = !DILocation(line: 778, column: 251, scope: !1429)
!1439 = !DILocation(line: 778, column: 261, scope: !1429)
!1440 = !DILocation(line: 778, column: 286, scope: !1429)
!1441 = !DILocation(line: 778, column: 217, scope: !1429)
!1442 = !DILocation(line: 778, column: 305, scope: !1443)
!1443 = !DILexicalBlockFile(scope: !595, file: !366, discriminator: 7)
!1444 = !DILocation(line: 778, column: 305, scope: !594)
!1445 = !DILocation(line: 778, column: 305, scope: !1446)
!1446 = !DILexicalBlockFile(scope: !594, file: !366, discriminator: 8)
!1447 = !DILocation(line: 778, column: 318, scope: !1448)
!1448 = !DILexicalBlockFile(scope: !595, file: !366, discriminator: 9)
!1449 = !DILocation(line: 778, column: 320, scope: !1450)
!1450 = !DILexicalBlockFile(scope: !1451, file: !366, discriminator: 10)
!1451 = !DILexicalBlockFile(scope: !585, file: !366, discriminator: 3)
!1452 = !DILocation(line: 778, column: 320, scope: !592)
!1453 = !DILocation(line: 778, column: 320, scope: !1454)
!1454 = !DILexicalBlockFile(scope: !592, file: !366, discriminator: 11)
!1455 = !DILocation(line: 779, column: 5, scope: !585)
!1456 = !DILocation(line: 779, column: 10, scope: !1457)
!1457 = !DILexicalBlockFile(scope: !598, file: !366, discriminator: 1)
!1458 = !DILocation(line: 779, column: 20, scope: !598)
!1459 = !DILocation(line: 779, column: 43, scope: !598)
!1460 = !DILocation(line: 779, column: 49, scope: !598)
!1461 = !DILocation(line: 779, column: 58, scope: !602)
!1462 = !DILocation(line: 779, column: 66, scope: !602)
!1463 = !DILocation(line: 779, column: 58, scope: !598)
!1464 = !DILocation(line: 779, column: 84, scope: !1465)
!1465 = !DILexicalBlockFile(scope: !601, file: !366, discriminator: 2)
!1466 = !DILocation(line: 779, column: 90, scope: !601)
!1467 = !DILocation(line: 779, column: 94, scope: !601)
!1468 = !DILocation(line: 779, column: 108, scope: !601)
!1469 = !DILocation(line: 779, column: 113, scope: !1470)
!1470 = !DILexicalBlockFile(scope: !600, file: !366, discriminator: 4)
!1471 = !DILocation(line: 779, column: 123, scope: !600)
!1472 = !DILocation(line: 779, column: 153, scope: !600)
!1473 = !DILocation(line: 779, column: 171, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !600, file: !366, line: 779, column: 168)
!1475 = !DILocation(line: 779, column: 188, scope: !1474)
!1476 = !DILocation(line: 779, column: 168, scope: !1474)
!1477 = !DILocation(line: 779, column: 198, scope: !1474)
!1478 = !DILocation(line: 779, column: 168, scope: !600)
!1479 = !DILocation(line: 779, column: 168, scope: !1480)
!1480 = !DILexicalBlockFile(scope: !600, file: !366, discriminator: 5)
!1481 = !DILocation(line: 779, column: 229, scope: !1482)
!1482 = !DILexicalBlockFile(scope: !1474, file: !366, discriminator: 6)
!1483 = !DILocation(line: 779, column: 247, scope: !1474)
!1484 = !DILocation(line: 779, column: 257, scope: !1474)
!1485 = !DILocation(line: 779, column: 282, scope: !1474)
!1486 = !DILocation(line: 779, column: 213, scope: !1474)
!1487 = !DILocation(line: 779, column: 301, scope: !1488)
!1488 = !DILexicalBlockFile(scope: !601, file: !366, discriminator: 7)
!1489 = !DILocation(line: 779, column: 301, scope: !600)
!1490 = !DILocation(line: 779, column: 301, scope: !1491)
!1491 = !DILexicalBlockFile(scope: !600, file: !366, discriminator: 8)
!1492 = !DILocation(line: 779, column: 314, scope: !1493)
!1493 = !DILexicalBlockFile(scope: !601, file: !366, discriminator: 9)
!1494 = !DILocation(line: 779, column: 316, scope: !1450)
!1495 = !DILocation(line: 779, column: 316, scope: !598)
!1496 = !DILocation(line: 779, column: 316, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !598, file: !366, discriminator: 11)
!1498 = !DILocation(line: 780, column: 5, scope: !585)
!1499 = !DILocation(line: 780, column: 10, scope: !1500)
!1500 = !DILexicalBlockFile(scope: !604, file: !366, discriminator: 1)
!1501 = !DILocation(line: 780, column: 20, scope: !604)
!1502 = !DILocation(line: 780, column: 43, scope: !604)
!1503 = !DILocation(line: 780, column: 49, scope: !604)
!1504 = !DILocation(line: 780, column: 63, scope: !608)
!1505 = !DILocation(line: 780, column: 71, scope: !608)
!1506 = !DILocation(line: 780, column: 63, scope: !604)
!1507 = !DILocation(line: 780, column: 89, scope: !1508)
!1508 = !DILexicalBlockFile(scope: !607, file: !366, discriminator: 2)
!1509 = !DILocation(line: 780, column: 95, scope: !607)
!1510 = !DILocation(line: 780, column: 104, scope: !607)
!1511 = !DILocation(line: 780, column: 118, scope: !607)
!1512 = !DILocation(line: 780, column: 123, scope: !1513)
!1513 = !DILexicalBlockFile(scope: !606, file: !366, discriminator: 4)
!1514 = !DILocation(line: 780, column: 133, scope: !606)
!1515 = !DILocation(line: 780, column: 163, scope: !606)
!1516 = !DILocation(line: 780, column: 181, scope: !1517)
!1517 = distinct !DILexicalBlock(scope: !606, file: !366, line: 780, column: 178)
!1518 = !DILocation(line: 780, column: 198, scope: !1517)
!1519 = !DILocation(line: 780, column: 178, scope: !1517)
!1520 = !DILocation(line: 780, column: 208, scope: !1517)
!1521 = !DILocation(line: 780, column: 178, scope: !606)
!1522 = !DILocation(line: 780, column: 178, scope: !1523)
!1523 = !DILexicalBlockFile(scope: !606, file: !366, discriminator: 5)
!1524 = !DILocation(line: 780, column: 239, scope: !1525)
!1525 = !DILexicalBlockFile(scope: !1517, file: !366, discriminator: 6)
!1526 = !DILocation(line: 780, column: 257, scope: !1517)
!1527 = !DILocation(line: 780, column: 267, scope: !1517)
!1528 = !DILocation(line: 780, column: 292, scope: !1517)
!1529 = !DILocation(line: 780, column: 223, scope: !1517)
!1530 = !DILocation(line: 780, column: 311, scope: !1531)
!1531 = !DILexicalBlockFile(scope: !607, file: !366, discriminator: 7)
!1532 = !DILocation(line: 780, column: 311, scope: !606)
!1533 = !DILocation(line: 780, column: 311, scope: !1534)
!1534 = !DILexicalBlockFile(scope: !606, file: !366, discriminator: 8)
!1535 = !DILocation(line: 780, column: 324, scope: !1536)
!1536 = !DILexicalBlockFile(scope: !607, file: !366, discriminator: 9)
!1537 = !DILocation(line: 780, column: 326, scope: !1450)
!1538 = !DILocation(line: 780, column: 326, scope: !604)
!1539 = !DILocation(line: 780, column: 326, scope: !1540)
!1540 = !DILexicalBlockFile(scope: !604, file: !366, discriminator: 11)
!1541 = !DILocation(line: 781, column: 5, scope: !585)
!1542 = !DILocation(line: 781, column: 10, scope: !1543)
!1543 = !DILexicalBlockFile(scope: !610, file: !366, discriminator: 1)
!1544 = !DILocation(line: 781, column: 20, scope: !610)
!1545 = !DILocation(line: 781, column: 43, scope: !610)
!1546 = !DILocation(line: 781, column: 49, scope: !610)
!1547 = !{!1142, !1046, i64 56}
!1548 = !DILocation(line: 781, column: 67, scope: !614)
!1549 = !DILocation(line: 781, column: 75, scope: !614)
!1550 = !DILocation(line: 781, column: 67, scope: !610)
!1551 = !DILocation(line: 781, column: 93, scope: !1552)
!1552 = !DILexicalBlockFile(scope: !613, file: !366, discriminator: 2)
!1553 = !DILocation(line: 781, column: 99, scope: !613)
!1554 = !DILocation(line: 781, column: 112, scope: !613)
!1555 = !DILocation(line: 781, column: 126, scope: !613)
!1556 = !DILocation(line: 781, column: 131, scope: !1557)
!1557 = !DILexicalBlockFile(scope: !612, file: !366, discriminator: 4)
!1558 = !DILocation(line: 781, column: 141, scope: !612)
!1559 = !DILocation(line: 781, column: 171, scope: !612)
!1560 = !DILocation(line: 781, column: 189, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !612, file: !366, line: 781, column: 186)
!1562 = !DILocation(line: 781, column: 206, scope: !1561)
!1563 = !DILocation(line: 781, column: 186, scope: !1561)
!1564 = !DILocation(line: 781, column: 216, scope: !1561)
!1565 = !DILocation(line: 781, column: 186, scope: !612)
!1566 = !DILocation(line: 781, column: 186, scope: !1567)
!1567 = !DILexicalBlockFile(scope: !612, file: !366, discriminator: 5)
!1568 = !DILocation(line: 781, column: 247, scope: !1569)
!1569 = !DILexicalBlockFile(scope: !1561, file: !366, discriminator: 6)
!1570 = !DILocation(line: 781, column: 265, scope: !1561)
!1571 = !DILocation(line: 781, column: 275, scope: !1561)
!1572 = !DILocation(line: 781, column: 300, scope: !1561)
!1573 = !DILocation(line: 781, column: 231, scope: !1561)
!1574 = !DILocation(line: 781, column: 319, scope: !1575)
!1575 = !DILexicalBlockFile(scope: !613, file: !366, discriminator: 7)
!1576 = !DILocation(line: 781, column: 319, scope: !612)
!1577 = !DILocation(line: 781, column: 319, scope: !1578)
!1578 = !DILexicalBlockFile(scope: !612, file: !366, discriminator: 8)
!1579 = !DILocation(line: 781, column: 332, scope: !1580)
!1580 = !DILexicalBlockFile(scope: !613, file: !366, discriminator: 9)
!1581 = !DILocation(line: 781, column: 334, scope: !1450)
!1582 = !DILocation(line: 781, column: 334, scope: !610)
!1583 = !DILocation(line: 781, column: 334, scope: !1584)
!1584 = !DILexicalBlockFile(scope: !610, file: !366, discriminator: 11)
!1585 = !DILocation(line: 783, column: 9, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !585, file: !366, line: 783, column: 9)
!1587 = !DILocation(line: 783, column: 15, scope: !1586)
!1588 = !DILocation(line: 784, column: 9, scope: !1586)
!1589 = !DILocation(line: 784, column: 22, scope: !1590)
!1590 = !DILexicalBlockFile(scope: !1586, file: !366, discriminator: 1)
!1591 = !DILocation(line: 784, column: 20, scope: !1586)
!1592 = !DILocation(line: 785, column: 9, scope: !1586)
!1593 = !DILocation(line: 785, column: 12, scope: !1590)
!1594 = !DILocation(line: 785, column: 20, scope: !1586)
!1595 = !{!1596, !1046, i64 16}
!1596 = !{!"_ts", !1046, i64 0, !1046, i64 8, !1046, i64 16, !1046, i64 24, !1085, i64 32, !1047, i64 36, !1047, i64 37, !1085, i64 40, !1085, i64 44, !1046, i64 48, !1046, i64 56, !1046, i64 64, !1046, i64 72, !1046, i64 80, !1046, i64 88, !1046, i64 96, !1046, i64 104, !1046, i64 112, !1046, i64 120, !1046, i64 128, !1085, i64 136, !1046, i64 144, !1077, i64 152, !1085, i64 160, !1046, i64 168, !1046, i64 176, !1046, i64 184}
!1597 = !DILocation(line: 785, column: 12, scope: !1586)
!1598 = !DILocation(line: 783, column: 9, scope: !585)
!1599 = !DILocation(line: 786, column: 52, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1601, file: !366, line: 786, column: 9)
!1601 = distinct !DILexicalBlock(scope: !1586, file: !366, line: 785, column: 28)
!1602 = !DILocation(line: 786, column: 60, scope: !1600)
!1603 = !DILocation(line: 786, column: 22, scope: !1600)
!1604 = !DILocation(line: 786, column: 20, scope: !1600)
!1605 = !DILocation(line: 786, column: 13, scope: !1600)
!1606 = !DILocation(line: 787, column: 13, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1600, file: !366, line: 786, column: 9)
!1608 = !DILocation(line: 786, column: 9, scope: !1600)
!1609 = !DILocation(line: 789, column: 17, scope: !1610)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !366, line: 789, column: 17)
!1611 = !DILocation(line: 789, column: 25, scope: !1610)
!1612 = !{!1596, !1046, i64 128}
!1613 = !DILocation(line: 789, column: 30, scope: !1610)
!1614 = !DILocation(line: 790, column: 32, scope: !1610)
!1615 = !DILocation(line: 790, column: 40, scope: !1610)
!1616 = !DILocation(line: 790, column: 46, scope: !1610)
!1617 = !DILocation(line: 790, column: 52, scope: !1610)
!1618 = !DILocation(line: 790, column: 17, scope: !1610)
!1619 = !DILocation(line: 789, column: 17, scope: !1607)
!1620 = !DILocation(line: 791, column: 32, scope: !1610)
!1621 = !DILocation(line: 791, column: 40, scope: !1610)
!1622 = !DILocation(line: 791, column: 46, scope: !1610)
!1623 = !DILocation(line: 791, column: 52, scope: !1610)
!1624 = !DILocation(line: 791, column: 17, scope: !1610)
!1625 = !DILocation(line: 790, column: 55, scope: !1610)
!1626 = !DILocation(line: 788, column: 41, scope: !1607)
!1627 = !DILocation(line: 788, column: 22, scope: !1607)
!1628 = !DILocation(line: 788, column: 20, scope: !1607)
!1629 = !DILocation(line: 786, column: 9, scope: !1607)
!1630 = !DILocation(line: 792, column: 5, scope: !1601)
!1631 = !DILocation(line: 794, column: 1, scope: !585)
!1632 = !DILocation(line: 793, column: 5, scope: !585)
!1633 = !DILocation(line: 713, column: 25, scope: !615)
!1634 = !DILocation(line: 713, column: 41, scope: !615)
!1635 = !DILocation(line: 713, column: 57, scope: !615)
!1636 = !DILocation(line: 715, column: 5, scope: !615)
!1637 = !DILocation(line: 715, column: 18, scope: !615)
!1638 = !DILocation(line: 716, column: 5, scope: !615)
!1639 = !DILocation(line: 716, column: 15, scope: !615)
!1640 = !DILocation(line: 721, column: 9, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !615, file: !366, line: 721, column: 9)
!1642 = !DILocation(line: 721, column: 15, scope: !1641)
!1643 = !{!1083, !1046, i64 296}
!1644 = !DILocation(line: 721, column: 44, scope: !1641)
!1645 = !DILocation(line: 721, column: 23, scope: !1641)
!1646 = !DILocation(line: 722, column: 9, scope: !1641)
!1647 = !DILocation(line: 722, column: 14, scope: !1648)
!1648 = !DILexicalBlockFile(scope: !1641, file: !366, discriminator: 1)
!1649 = !DILocation(line: 722, column: 19, scope: !1641)
!1650 = !DILocation(line: 722, column: 38, scope: !1651)
!1651 = !DILexicalBlockFile(scope: !1641, file: !366, discriminator: 2)
!1652 = !DILocation(line: 722, column: 22, scope: !1641)
!1653 = !DILocation(line: 723, column: 9, scope: !1641)
!1654 = !DILocation(line: 723, column: 13, scope: !1648)
!1655 = !DILocation(line: 723, column: 16, scope: !1641)
!1656 = !DILocation(line: 723, column: 35, scope: !1651)
!1657 = !DILocation(line: 723, column: 19, scope: !1641)
!1658 = !DILocation(line: 721, column: 9, scope: !615)
!1659 = !DILocation(line: 724, column: 25, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1641, file: !366, line: 723, column: 42)
!1661 = !DILocation(line: 724, column: 9, scope: !1660)
!1662 = !DILocation(line: 726, column: 9, scope: !1660)
!1663 = !DILocation(line: 729, column: 27, scope: !615)
!1664 = !DILocation(line: 729, column: 33, scope: !615)
!1665 = !{!1083, !1046, i64 304}
!1666 = !DILocation(line: 729, column: 42, scope: !615)
!1667 = !DILocation(line: 729, column: 12, scope: !615)
!1668 = !DILocation(line: 729, column: 10, scope: !615)
!1669 = !DILocation(line: 730, column: 9, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !615, file: !366, line: 730, column: 9)
!1671 = !DILocation(line: 730, column: 14, scope: !1670)
!1672 = !DILocation(line: 730, column: 9, scope: !615)
!1673 = !DILocation(line: 731, column: 9, scope: !1670)
!1674 = !DILocation(line: 733, column: 5, scope: !615)
!1675 = !DILocation(line: 733, column: 10, scope: !1676)
!1676 = !DILexicalBlockFile(scope: !627, file: !366, discriminator: 1)
!1677 = !DILocation(line: 733, column: 20, scope: !627)
!1678 = !DILocation(line: 733, column: 51, scope: !627)
!1679 = !DILocation(line: 733, column: 62, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !627, file: !366, line: 733, column: 62)
!1681 = !DILocation(line: 733, column: 78, scope: !1680)
!1682 = !DILocation(line: 733, column: 62, scope: !627)
!1683 = !DILocation(line: 733, column: 109, scope: !1684)
!1684 = !DILexicalBlockFile(scope: !1680, file: !366, discriminator: 2)
!1685 = !DILocation(line: 733, column: 128, scope: !1680)
!1686 = !DILocation(line: 733, column: 137, scope: !1680)
!1687 = !DILocation(line: 733, column: 93, scope: !1680)
!1688 = !DILocation(line: 733, column: 142, scope: !1689)
!1689 = !DILexicalBlockFile(scope: !1690, file: !366, discriminator: 4)
!1690 = !DILexicalBlockFile(scope: !615, file: !366, discriminator: 3)
!1691 = !DILocation(line: 733, column: 142, scope: !627)
!1692 = !DILocation(line: 733, column: 142, scope: !1693)
!1693 = !DILexicalBlockFile(scope: !627, file: !366, discriminator: 5)
!1694 = !DILocation(line: 734, column: 18, scope: !615)
!1695 = !DILocation(line: 734, column: 5, scope: !615)
!1696 = !DILocation(line: 734, column: 11, scope: !615)
!1697 = !DILocation(line: 734, column: 16, scope: !615)
!1698 = !DILocation(line: 735, column: 5, scope: !615)
!1699 = !DILocation(line: 735, column: 10, scope: !1700)
!1700 = !DILexicalBlockFile(scope: !629, file: !366, discriminator: 1)
!1701 = !DILocation(line: 735, column: 20, scope: !629)
!1702 = !DILocation(line: 735, column: 51, scope: !629)
!1703 = !DILocation(line: 735, column: 60, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !629, file: !366, line: 735, column: 60)
!1705 = !DILocation(line: 735, column: 76, scope: !1704)
!1706 = !DILocation(line: 735, column: 60, scope: !629)
!1707 = !DILocation(line: 735, column: 107, scope: !1708)
!1708 = !DILexicalBlockFile(scope: !1704, file: !366, discriminator: 2)
!1709 = !DILocation(line: 735, column: 126, scope: !1704)
!1710 = !DILocation(line: 735, column: 135, scope: !1704)
!1711 = !DILocation(line: 735, column: 91, scope: !1704)
!1712 = !DILocation(line: 735, column: 140, scope: !1689)
!1713 = !DILocation(line: 735, column: 140, scope: !629)
!1714 = !DILocation(line: 735, column: 140, scope: !1715)
!1715 = !DILexicalBlockFile(scope: !629, file: !366, discriminator: 5)
!1716 = !DILocation(line: 736, column: 16, scope: !615)
!1717 = !DILocation(line: 736, column: 5, scope: !615)
!1718 = !DILocation(line: 736, column: 11, scope: !615)
!1719 = !DILocation(line: 736, column: 14, scope: !615)
!1720 = !DILocation(line: 737, column: 57, scope: !615)
!1721 = !DILocation(line: 737, column: 17, scope: !615)
!1722 = !DILocation(line: 737, column: 5, scope: !615)
!1723 = !DILocation(line: 737, column: 11, scope: !615)
!1724 = !DILocation(line: 737, column: 15, scope: !615)
!1725 = !DILocation(line: 738, column: 9, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !615, file: !366, line: 738, column: 9)
!1727 = !DILocation(line: 738, column: 15, scope: !1726)
!1728 = !DILocation(line: 738, column: 19, scope: !1726)
!1729 = !DILocation(line: 738, column: 9, scope: !615)
!1730 = !DILocation(line: 739, column: 9, scope: !1726)
!1731 = !DILocation(line: 741, column: 21, scope: !615)
!1732 = !DILocation(line: 741, column: 5, scope: !615)
!1733 = !DILocation(line: 741, column: 11, scope: !615)
!1734 = !DILocation(line: 741, column: 19, scope: !615)
!1735 = !DILocation(line: 742, column: 9, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !615, file: !366, line: 742, column: 9)
!1737 = !DILocation(line: 742, column: 15, scope: !1736)
!1738 = !DILocation(line: 742, column: 23, scope: !1736)
!1739 = !DILocation(line: 742, column: 9, scope: !615)
!1740 = !DILocation(line: 743, column: 9, scope: !1736)
!1741 = !DILocation(line: 747, column: 40, scope: !615)
!1742 = !DILocation(line: 747, column: 27, scope: !615)
!1743 = !DILocation(line: 747, column: 10, scope: !615)
!1744 = !DILocation(line: 747, column: 8, scope: !615)
!1745 = !DILocation(line: 748, column: 9, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !615, file: !366, line: 748, column: 9)
!1747 = !DILocation(line: 748, column: 12, scope: !1746)
!1748 = !DILocation(line: 748, column: 9, scope: !615)
!1749 = !DILocation(line: 749, column: 9, scope: !1746)
!1750 = !DILocation(line: 750, column: 61, scope: !615)
!1751 = !DILocation(line: 750, column: 25, scope: !615)
!1752 = !DILocation(line: 750, column: 5, scope: !615)
!1753 = !DILocation(line: 750, column: 11, scope: !615)
!1754 = !DILocation(line: 750, column: 23, scope: !615)
!1755 = !DILocation(line: 751, column: 5, scope: !615)
!1756 = !DILocation(line: 751, column: 10, scope: !1757)
!1757 = !DILexicalBlockFile(scope: !631, file: !366, discriminator: 1)
!1758 = !DILocation(line: 751, column: 20, scope: !631)
!1759 = !DILocation(line: 751, column: 50, scope: !631)
!1760 = !DILocation(line: 751, column: 63, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !631, file: !366, line: 751, column: 60)
!1762 = !DILocation(line: 751, column: 80, scope: !1761)
!1763 = !DILocation(line: 751, column: 60, scope: !1761)
!1764 = !DILocation(line: 751, column: 90, scope: !1761)
!1765 = !DILocation(line: 751, column: 60, scope: !631)
!1766 = !DILocation(line: 751, column: 60, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !631, file: !366, discriminator: 2)
!1768 = !DILocation(line: 751, column: 121, scope: !1769)
!1769 = !DILexicalBlockFile(scope: !1761, file: !366, discriminator: 3)
!1770 = !DILocation(line: 751, column: 139, scope: !1761)
!1771 = !DILocation(line: 751, column: 149, scope: !1761)
!1772 = !DILocation(line: 751, column: 174, scope: !1761)
!1773 = !DILocation(line: 751, column: 105, scope: !1761)
!1774 = !DILocation(line: 751, column: 193, scope: !1775)
!1775 = !DILexicalBlockFile(scope: !615, file: !366, discriminator: 4)
!1776 = !DILocation(line: 751, column: 193, scope: !631)
!1777 = !DILocation(line: 751, column: 193, scope: !1778)
!1778 = !DILexicalBlockFile(scope: !631, file: !366, discriminator: 5)
!1779 = !DILocation(line: 752, column: 9, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !615, file: !366, line: 752, column: 9)
!1781 = !DILocation(line: 752, column: 15, scope: !1780)
!1782 = !DILocation(line: 752, column: 27, scope: !1780)
!1783 = !DILocation(line: 752, column: 9, scope: !615)
!1784 = !DILocation(line: 753, column: 9, scope: !1780)
!1785 = !DILocation(line: 755, column: 29, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !615, file: !366, line: 755, column: 9)
!1787 = !DILocation(line: 755, column: 9, scope: !1786)
!1788 = !DILocation(line: 755, column: 35, scope: !1786)
!1789 = !DILocation(line: 755, column: 9, scope: !615)
!1790 = !DILocation(line: 756, column: 9, scope: !1786)
!1791 = !DILocation(line: 758, column: 24, scope: !615)
!1792 = !DILocation(line: 758, column: 12, scope: !615)
!1793 = !DILocation(line: 758, column: 5, scope: !615)
!1794 = !DILocation(line: 761, column: 5, scope: !615)
!1795 = !DILocation(line: 761, column: 10, scope: !1796)
!1796 = !DILexicalBlockFile(scope: !633, file: !366, discriminator: 1)
!1797 = !DILocation(line: 761, column: 20, scope: !633)
!1798 = !DILocation(line: 761, column: 50, scope: !633)
!1799 = !DILocation(line: 761, column: 37, scope: !633)
!1800 = !DILocation(line: 761, column: 65, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !633, file: !366, line: 761, column: 62)
!1802 = !DILocation(line: 761, column: 82, scope: !1801)
!1803 = !DILocation(line: 761, column: 62, scope: !1801)
!1804 = !DILocation(line: 761, column: 92, scope: !1801)
!1805 = !DILocation(line: 761, column: 62, scope: !633)
!1806 = !DILocation(line: 761, column: 62, scope: !1807)
!1807 = !DILexicalBlockFile(scope: !633, file: !366, discriminator: 2)
!1808 = !DILocation(line: 761, column: 123, scope: !1809)
!1809 = !DILexicalBlockFile(scope: !1801, file: !366, discriminator: 3)
!1810 = !DILocation(line: 761, column: 141, scope: !1801)
!1811 = !DILocation(line: 761, column: 151, scope: !1801)
!1812 = !DILocation(line: 761, column: 176, scope: !1801)
!1813 = !DILocation(line: 761, column: 107, scope: !1801)
!1814 = !DILocation(line: 761, column: 195, scope: !1775)
!1815 = !DILocation(line: 761, column: 195, scope: !633)
!1816 = !DILocation(line: 761, column: 195, scope: !1817)
!1817 = !DILexicalBlockFile(scope: !633, file: !366, discriminator: 5)
!1818 = !DILocation(line: 762, column: 5, scope: !615)
!1819 = !DILocation(line: 763, column: 1, scope: !615)
!1820 = !DILocation(line: 813, column: 21, scope: !512)
!1821 = !DILocation(line: 815, column: 5, scope: !512)
!1822 = !DILocation(line: 815, column: 15, scope: !512)
!1823 = !DILocation(line: 815, column: 23, scope: !512)
!1824 = !DILocation(line: 815, column: 31, scope: !512)
!1825 = !DILocation(line: 817, column: 13, scope: !512)
!1826 = !DILocation(line: 817, column: 11, scope: !512)
!1827 = !DILocation(line: 818, column: 9, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !512, file: !366, line: 818, column: 9)
!1829 = !DILocation(line: 818, column: 15, scope: !1828)
!1830 = !DILocation(line: 818, column: 9, scope: !512)
!1831 = !DILocation(line: 819, column: 25, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !366, line: 818, column: 30)
!1833 = !DILocation(line: 819, column: 9, scope: !1832)
!1834 = !DILocation(line: 821, column: 9, scope: !1832)
!1835 = !DILocation(line: 824, column: 28, scope: !512)
!1836 = !DILocation(line: 824, column: 35, scope: !512)
!1837 = !DILocation(line: 824, column: 41, scope: !512)
!1838 = !DILocation(line: 824, column: 13, scope: !512)
!1839 = !DILocation(line: 824, column: 11, scope: !512)
!1840 = !DILocation(line: 825, column: 9, scope: !1841)
!1841 = distinct !DILexicalBlock(scope: !512, file: !366, line: 825, column: 9)
!1842 = !DILocation(line: 825, column: 15, scope: !1841)
!1843 = !DILocation(line: 825, column: 9, scope: !512)
!1844 = !DILocation(line: 826, column: 37, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1841, file: !366, line: 825, column: 30)
!1846 = !DILocation(line: 826, column: 17, scope: !1845)
!1847 = !DILocation(line: 826, column: 15, scope: !1845)
!1848 = !DILocation(line: 827, column: 13, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1845, file: !366, line: 827, column: 13)
!1850 = !DILocation(line: 827, column: 19, scope: !1849)
!1851 = !DILocation(line: 827, column: 13, scope: !1845)
!1852 = !DILocation(line: 828, column: 13, scope: !1849)
!1853 = !DILocation(line: 830, column: 27, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1845, file: !366, line: 830, column: 13)
!1855 = !DILocation(line: 830, column: 15, scope: !1854)
!1856 = !DILocation(line: 830, column: 35, scope: !1854)
!1857 = !DILocation(line: 830, column: 45, scope: !1854)
!1858 = !DILocation(line: 830, column: 74, scope: !1854)
!1859 = !DILocation(line: 830, column: 53, scope: !1854)
!1860 = !DILocation(line: 830, column: 82, scope: !1854)
!1861 = !DILocation(line: 831, column: 27, scope: !1854)
!1862 = !DILocation(line: 831, column: 15, scope: !1854)
!1863 = !DILocation(line: 831, column: 35, scope: !1854)
!1864 = !DILocation(line: 831, column: 45, scope: !1854)
!1865 = !DILocation(line: 831, column: 64, scope: !1854)
!1866 = !DILocation(line: 831, column: 53, scope: !1854)
!1867 = !DILocation(line: 832, column: 36, scope: !1854)
!1868 = !DILocation(line: 832, column: 42, scope: !1854)
!1869 = !DILocation(line: 832, column: 48, scope: !1854)
!1870 = !DILocation(line: 832, column: 54, scope: !1854)
!1871 = !DILocation(line: 831, column: 13, scope: !1854)
!1872 = !DILocation(line: 832, column: 58, scope: !1854)
!1873 = !DILocation(line: 830, column: 13, scope: !1845)
!1874 = !DILocation(line: 836, column: 28, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1854, file: !366, line: 832, column: 63)
!1876 = !DILocation(line: 836, column: 35, scope: !1875)
!1877 = !DILocation(line: 836, column: 41, scope: !1875)
!1878 = !DILocation(line: 836, column: 13, scope: !1875)
!1879 = !DILocation(line: 837, column: 13, scope: !1875)
!1880 = !DILocation(line: 839, column: 5, scope: !1845)
!1881 = !DILocation(line: 842, column: 39, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1841, file: !366, line: 840, column: 10)
!1883 = !DILocation(line: 842, column: 18, scope: !1882)
!1884 = !DILocation(line: 842, column: 47, scope: !1882)
!1885 = !{!1121, !1046, i64 16}
!1886 = !DILocation(line: 842, column: 15, scope: !1882)
!1887 = !DILocation(line: 845, column: 12, scope: !512)
!1888 = !DILocation(line: 845, column: 5, scope: !512)
!1889 = !DILocation(line: 846, column: 1, scope: !512)
!1890 = !DILocation(line: 667, column: 34, scope: !520)
!1891 = !DILocation(line: 669, column: 5, scope: !520)
!1892 = !DILocation(line: 669, column: 15, scope: !520)
!1893 = !DILocation(line: 669, column: 23, scope: !520)
!1894 = !DILocation(line: 669, column: 44, scope: !520)
!1895 = !DILocation(line: 670, column: 5, scope: !520)
!1896 = !DILocation(line: 670, column: 23, scope: !520)
!1897 = !DILocation(line: 671, column: 5, scope: !520)
!1898 = !DILocation(line: 671, column: 9, scope: !520)
!1899 = !DILocation(line: 673, column: 13, scope: !520)
!1900 = !DILocation(line: 673, column: 11, scope: !520)
!1901 = !DILocation(line: 674, column: 9, scope: !1902)
!1902 = distinct !DILexicalBlock(scope: !520, file: !366, line: 674, column: 9)
!1903 = !DILocation(line: 674, column: 15, scope: !1902)
!1904 = !DILocation(line: 674, column: 9, scope: !520)
!1905 = !DILocation(line: 675, column: 25, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1902, file: !366, line: 674, column: 30)
!1907 = !DILocation(line: 675, column: 9, scope: !1906)
!1908 = !DILocation(line: 677, column: 9, scope: !1906)
!1909 = !DILocation(line: 680, column: 13, scope: !520)
!1910 = !DILocation(line: 680, column: 11, scope: !520)
!1911 = !DILocation(line: 681, column: 9, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !520, file: !366, line: 681, column: 9)
!1913 = !DILocation(line: 681, column: 15, scope: !1912)
!1914 = !DILocation(line: 681, column: 9, scope: !520)
!1915 = !DILocation(line: 682, column: 9, scope: !1912)
!1916 = !DILocation(line: 683, column: 49, scope: !520)
!1917 = !DILocation(line: 683, column: 34, scope: !520)
!1918 = !DILocation(line: 683, column: 13, scope: !520)
!1919 = !DILocation(line: 683, column: 11, scope: !520)
!1920 = !DILocation(line: 684, column: 9, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !520, file: !366, line: 684, column: 9)
!1922 = !DILocation(line: 684, column: 15, scope: !1921)
!1923 = !DILocation(line: 684, column: 9, scope: !520)
!1924 = !DILocation(line: 685, column: 9, scope: !1921)
!1925 = !DILocation(line: 686, column: 24, scope: !520)
!1926 = !DILocation(line: 686, column: 5, scope: !520)
!1927 = !DILocation(line: 686, column: 12, scope: !520)
!1928 = !DILocation(line: 686, column: 22, scope: !520)
!1929 = !DILocation(line: 687, column: 40, scope: !520)
!1930 = !DILocation(line: 687, column: 27, scope: !520)
!1931 = !DILocation(line: 687, column: 47, scope: !520)
!1932 = !DILocation(line: 687, column: 53, scope: !520)
!1933 = !DILocation(line: 687, column: 10, scope: !520)
!1934 = !DILocation(line: 687, column: 8, scope: !520)
!1935 = !DILocation(line: 688, column: 9, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !520, file: !366, line: 688, column: 9)
!1937 = !DILocation(line: 688, column: 12, scope: !1936)
!1938 = !DILocation(line: 688, column: 9, scope: !520)
!1939 = !DILocation(line: 689, column: 9, scope: !1936)
!1940 = !DILocation(line: 693, column: 24, scope: !520)
!1941 = !DILocation(line: 693, column: 30, scope: !520)
!1942 = !DILocation(line: 693, column: 39, scope: !520)
!1943 = !DILocation(line: 693, column: 43, scope: !520)
!1944 = !DILocation(line: 693, column: 9, scope: !520)
!1945 = !DILocation(line: 693, column: 7, scope: !520)
!1946 = !DILocation(line: 694, column: 9, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !520, file: !366, line: 694, column: 9)
!1948 = !DILocation(line: 694, column: 11, scope: !1947)
!1949 = !DILocation(line: 694, column: 9, scope: !520)
!1950 = !DILocation(line: 695, column: 9, scope: !1947)
!1951 = !DILocation(line: 696, column: 5, scope: !520)
!1952 = !DILocation(line: 696, column: 10, scope: !1953)
!1953 = !DILexicalBlockFile(scope: !529, file: !366, discriminator: 1)
!1954 = !DILocation(line: 696, column: 20, scope: !529)
!1955 = !DILocation(line: 696, column: 43, scope: !529)
!1956 = !DILocation(line: 696, column: 52, scope: !533)
!1957 = !DILocation(line: 696, column: 60, scope: !533)
!1958 = !DILocation(line: 696, column: 52, scope: !529)
!1959 = !DILocation(line: 696, column: 82, scope: !1960)
!1960 = !DILexicalBlockFile(scope: !532, file: !366, discriminator: 2)
!1961 = !DILocation(line: 696, column: 96, scope: !532)
!1962 = !DILocation(line: 696, column: 101, scope: !1963)
!1963 = !DILexicalBlockFile(scope: !531, file: !366, discriminator: 4)
!1964 = !DILocation(line: 696, column: 111, scope: !531)
!1965 = !DILocation(line: 696, column: 141, scope: !531)
!1966 = !DILocation(line: 696, column: 159, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !531, file: !366, line: 696, column: 156)
!1968 = !DILocation(line: 696, column: 176, scope: !1967)
!1969 = !DILocation(line: 696, column: 156, scope: !1967)
!1970 = !DILocation(line: 696, column: 186, scope: !1967)
!1971 = !DILocation(line: 696, column: 156, scope: !531)
!1972 = !DILocation(line: 696, column: 156, scope: !1973)
!1973 = !DILexicalBlockFile(scope: !531, file: !366, discriminator: 5)
!1974 = !DILocation(line: 696, column: 217, scope: !1975)
!1975 = !DILexicalBlockFile(scope: !1967, file: !366, discriminator: 6)
!1976 = !DILocation(line: 696, column: 235, scope: !1967)
!1977 = !DILocation(line: 696, column: 245, scope: !1967)
!1978 = !DILocation(line: 696, column: 270, scope: !1967)
!1979 = !DILocation(line: 696, column: 201, scope: !1967)
!1980 = !DILocation(line: 696, column: 289, scope: !1981)
!1981 = !DILexicalBlockFile(scope: !532, file: !366, discriminator: 7)
!1982 = !DILocation(line: 696, column: 289, scope: !531)
!1983 = !DILocation(line: 696, column: 289, scope: !1984)
!1984 = !DILexicalBlockFile(scope: !531, file: !366, discriminator: 8)
!1985 = !DILocation(line: 696, column: 302, scope: !1986)
!1986 = !DILexicalBlockFile(scope: !532, file: !366, discriminator: 9)
!1987 = !DILocation(line: 696, column: 304, scope: !1988)
!1988 = !DILexicalBlockFile(scope: !1989, file: !366, discriminator: 10)
!1989 = !DILexicalBlockFile(scope: !520, file: !366, discriminator: 3)
!1990 = !DILocation(line: 696, column: 304, scope: !529)
!1991 = !DILocation(line: 696, column: 304, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !529, file: !366, discriminator: 11)
!1993 = !DILocation(line: 697, column: 24, scope: !520)
!1994 = !DILocation(line: 697, column: 31, scope: !520)
!1995 = !DILocation(line: 697, column: 37, scope: !520)
!1996 = !DILocation(line: 697, column: 55, scope: !520)
!1997 = !DILocation(line: 697, column: 42, scope: !520)
!1998 = !DILocation(line: 697, column: 9, scope: !520)
!1999 = !DILocation(line: 697, column: 7, scope: !520)
!2000 = !DILocation(line: 698, column: 9, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !520, file: !366, line: 698, column: 9)
!2002 = !DILocation(line: 698, column: 11, scope: !2001)
!2003 = !DILocation(line: 698, column: 9, scope: !520)
!2004 = !DILocation(line: 699, column: 9, scope: !2001)
!2005 = !DILocation(line: 700, column: 5, scope: !520)
!2006 = !DILocation(line: 700, column: 10, scope: !2007)
!2007 = !DILexicalBlockFile(scope: !535, file: !366, discriminator: 1)
!2008 = !DILocation(line: 700, column: 20, scope: !535)
!2009 = !DILocation(line: 700, column: 43, scope: !535)
!2010 = !DILocation(line: 700, column: 30, scope: !535)
!2011 = !DILocation(line: 700, column: 55, scope: !539)
!2012 = !DILocation(line: 700, column: 63, scope: !539)
!2013 = !DILocation(line: 700, column: 55, scope: !535)
!2014 = !DILocation(line: 700, column: 88, scope: !2015)
!2015 = !DILexicalBlockFile(scope: !538, file: !366, discriminator: 2)
!2016 = !DILocation(line: 700, column: 102, scope: !538)
!2017 = !DILocation(line: 700, column: 107, scope: !2018)
!2018 = !DILexicalBlockFile(scope: !537, file: !366, discriminator: 4)
!2019 = !DILocation(line: 700, column: 117, scope: !537)
!2020 = !DILocation(line: 700, column: 147, scope: !537)
!2021 = !DILocation(line: 700, column: 165, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !537, file: !366, line: 700, column: 162)
!2023 = !DILocation(line: 700, column: 182, scope: !2022)
!2024 = !DILocation(line: 700, column: 162, scope: !2022)
!2025 = !DILocation(line: 700, column: 192, scope: !2022)
!2026 = !DILocation(line: 700, column: 162, scope: !537)
!2027 = !DILocation(line: 700, column: 162, scope: !2028)
!2028 = !DILexicalBlockFile(scope: !537, file: !366, discriminator: 5)
!2029 = !DILocation(line: 700, column: 223, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2022, file: !366, discriminator: 6)
!2031 = !DILocation(line: 700, column: 241, scope: !2022)
!2032 = !DILocation(line: 700, column: 251, scope: !2022)
!2033 = !DILocation(line: 700, column: 276, scope: !2022)
!2034 = !DILocation(line: 700, column: 207, scope: !2022)
!2035 = !DILocation(line: 700, column: 295, scope: !2036)
!2036 = !DILexicalBlockFile(scope: !538, file: !366, discriminator: 7)
!2037 = !DILocation(line: 700, column: 295, scope: !537)
!2038 = !DILocation(line: 700, column: 295, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !537, file: !366, discriminator: 8)
!2040 = !DILocation(line: 700, column: 308, scope: !2041)
!2041 = !DILexicalBlockFile(scope: !538, file: !366, discriminator: 9)
!2042 = !DILocation(line: 700, column: 310, scope: !1988)
!2043 = !DILocation(line: 700, column: 310, scope: !535)
!2044 = !DILocation(line: 700, column: 310, scope: !2045)
!2045 = !DILexicalBlockFile(scope: !535, file: !366, discriminator: 11)
!2046 = !DILocation(line: 702, column: 5, scope: !520)
!2047 = !DILocation(line: 702, column: 10, scope: !2048)
!2048 = !DILexicalBlockFile(scope: !541, file: !366, discriminator: 1)
!2049 = !DILocation(line: 702, column: 20, scope: !541)
!2050 = !DILocation(line: 702, column: 50, scope: !541)
!2051 = !DILocation(line: 702, column: 66, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !541, file: !366, line: 702, column: 63)
!2053 = !DILocation(line: 702, column: 83, scope: !2052)
!2054 = !DILocation(line: 702, column: 63, scope: !2052)
!2055 = !DILocation(line: 702, column: 93, scope: !2052)
!2056 = !DILocation(line: 702, column: 63, scope: !541)
!2057 = !DILocation(line: 702, column: 63, scope: !2058)
!2058 = !DILexicalBlockFile(scope: !541, file: !366, discriminator: 2)
!2059 = !DILocation(line: 702, column: 124, scope: !2060)
!2060 = !DILexicalBlockFile(scope: !2052, file: !366, discriminator: 3)
!2061 = !DILocation(line: 702, column: 142, scope: !2052)
!2062 = !DILocation(line: 702, column: 152, scope: !2052)
!2063 = !DILocation(line: 702, column: 177, scope: !2052)
!2064 = !DILocation(line: 702, column: 108, scope: !2052)
!2065 = !DILocation(line: 702, column: 196, scope: !2066)
!2066 = !DILexicalBlockFile(scope: !520, file: !366, discriminator: 4)
!2067 = !DILocation(line: 702, column: 196, scope: !541)
!2068 = !DILocation(line: 702, column: 196, scope: !2069)
!2069 = !DILexicalBlockFile(scope: !541, file: !366, discriminator: 5)
!2070 = !DILocation(line: 703, column: 12, scope: !520)
!2071 = !DILocation(line: 703, column: 5, scope: !520)
!2072 = !DILocation(line: 706, column: 5, scope: !520)
!2073 = !DILocation(line: 706, column: 10, scope: !2074)
!2074 = !DILexicalBlockFile(scope: !543, file: !366, discriminator: 1)
!2075 = !DILocation(line: 706, column: 20, scope: !543)
!2076 = !DILocation(line: 706, column: 51, scope: !543)
!2077 = !DILocation(line: 706, column: 63, scope: !546)
!2078 = !DILocation(line: 706, column: 79, scope: !546)
!2079 = !DILocation(line: 706, column: 63, scope: !543)
!2080 = !DILocation(line: 706, column: 94, scope: !2081)
!2081 = !DILexicalBlockFile(scope: !546, file: !366, discriminator: 2)
!2082 = !DILocation(line: 706, column: 99, scope: !2083)
!2083 = !DILexicalBlockFile(scope: !545, file: !366, discriminator: 4)
!2084 = !DILocation(line: 706, column: 109, scope: !545)
!2085 = !DILocation(line: 706, column: 139, scope: !545)
!2086 = !DILocation(line: 706, column: 165, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !545, file: !366, line: 706, column: 162)
!2088 = !DILocation(line: 706, column: 182, scope: !2087)
!2089 = !DILocation(line: 706, column: 162, scope: !2087)
!2090 = !DILocation(line: 706, column: 192, scope: !2087)
!2091 = !DILocation(line: 706, column: 162, scope: !545)
!2092 = !DILocation(line: 706, column: 162, scope: !2093)
!2093 = !DILexicalBlockFile(scope: !545, file: !366, discriminator: 5)
!2094 = !DILocation(line: 706, column: 223, scope: !2095)
!2095 = !DILexicalBlockFile(scope: !2087, file: !366, discriminator: 6)
!2096 = !DILocation(line: 706, column: 241, scope: !2087)
!2097 = !DILocation(line: 706, column: 251, scope: !2087)
!2098 = !DILocation(line: 706, column: 276, scope: !2087)
!2099 = !DILocation(line: 706, column: 207, scope: !2087)
!2100 = !DILocation(line: 706, column: 295, scope: !2101)
!2101 = !DILexicalBlockFile(scope: !546, file: !366, discriminator: 7)
!2102 = !DILocation(line: 706, column: 295, scope: !545)
!2103 = !DILocation(line: 706, column: 295, scope: !2104)
!2104 = !DILexicalBlockFile(scope: !545, file: !366, discriminator: 8)
!2105 = !DILocation(line: 706, column: 295, scope: !2106)
!2106 = !DILexicalBlockFile(scope: !545, file: !366, discriminator: 9)
!2107 = !DILocation(line: 706, column: 308, scope: !1988)
!2108 = !DILocation(line: 706, column: 308, scope: !543)
!2109 = !DILocation(line: 706, column: 308, scope: !2110)
!2110 = !DILexicalBlockFile(scope: !543, file: !366, discriminator: 11)
!2111 = !DILocation(line: 707, column: 5, scope: !520)
!2112 = !DILocation(line: 707, column: 10, scope: !2113)
!2113 = !DILexicalBlockFile(scope: !548, file: !366, discriminator: 1)
!2114 = !DILocation(line: 707, column: 20, scope: !548)
!2115 = !DILocation(line: 707, column: 51, scope: !548)
!2116 = !DILocation(line: 707, column: 60, scope: !551)
!2117 = !DILocation(line: 707, column: 76, scope: !551)
!2118 = !DILocation(line: 707, column: 60, scope: !548)
!2119 = !DILocation(line: 707, column: 91, scope: !2120)
!2120 = !DILexicalBlockFile(scope: !551, file: !366, discriminator: 2)
!2121 = !DILocation(line: 707, column: 96, scope: !2122)
!2122 = !DILexicalBlockFile(scope: !550, file: !366, discriminator: 4)
!2123 = !DILocation(line: 707, column: 106, scope: !550)
!2124 = !DILocation(line: 707, column: 136, scope: !550)
!2125 = !DILocation(line: 707, column: 162, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !550, file: !366, line: 707, column: 159)
!2127 = !DILocation(line: 707, column: 179, scope: !2126)
!2128 = !DILocation(line: 707, column: 159, scope: !2126)
!2129 = !DILocation(line: 707, column: 189, scope: !2126)
!2130 = !DILocation(line: 707, column: 159, scope: !550)
!2131 = !DILocation(line: 707, column: 159, scope: !2132)
!2132 = !DILexicalBlockFile(scope: !550, file: !366, discriminator: 5)
!2133 = !DILocation(line: 707, column: 220, scope: !2134)
!2134 = !DILexicalBlockFile(scope: !2126, file: !366, discriminator: 6)
!2135 = !DILocation(line: 707, column: 238, scope: !2126)
!2136 = !DILocation(line: 707, column: 248, scope: !2126)
!2137 = !DILocation(line: 707, column: 273, scope: !2126)
!2138 = !DILocation(line: 707, column: 204, scope: !2126)
!2139 = !DILocation(line: 707, column: 292, scope: !2140)
!2140 = !DILexicalBlockFile(scope: !551, file: !366, discriminator: 7)
!2141 = !DILocation(line: 707, column: 292, scope: !550)
!2142 = !DILocation(line: 707, column: 292, scope: !2143)
!2143 = !DILexicalBlockFile(scope: !550, file: !366, discriminator: 8)
!2144 = !DILocation(line: 707, column: 292, scope: !2145)
!2145 = !DILexicalBlockFile(scope: !550, file: !366, discriminator: 9)
!2146 = !DILocation(line: 707, column: 305, scope: !1988)
!2147 = !DILocation(line: 707, column: 305, scope: !548)
!2148 = !DILocation(line: 707, column: 305, scope: !2149)
!2149 = !DILexicalBlockFile(scope: !548, file: !366, discriminator: 11)
!2150 = !DILocation(line: 708, column: 5, scope: !520)
!2151 = !DILocation(line: 708, column: 10, scope: !2152)
!2152 = !DILexicalBlockFile(scope: !553, file: !366, discriminator: 1)
!2153 = !DILocation(line: 708, column: 20, scope: !553)
!2154 = !DILocation(line: 708, column: 51, scope: !553)
!2155 = !DILocation(line: 708, column: 38, scope: !553)
!2156 = !DILocation(line: 708, column: 63, scope: !556)
!2157 = !DILocation(line: 708, column: 79, scope: !556)
!2158 = !DILocation(line: 708, column: 63, scope: !553)
!2159 = !DILocation(line: 708, column: 94, scope: !2160)
!2160 = !DILexicalBlockFile(scope: !556, file: !366, discriminator: 2)
!2161 = !DILocation(line: 708, column: 99, scope: !2162)
!2162 = !DILexicalBlockFile(scope: !555, file: !366, discriminator: 4)
!2163 = !DILocation(line: 708, column: 109, scope: !555)
!2164 = !DILocation(line: 708, column: 139, scope: !555)
!2165 = !DILocation(line: 708, column: 165, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !555, file: !366, line: 708, column: 162)
!2167 = !DILocation(line: 708, column: 182, scope: !2166)
!2168 = !DILocation(line: 708, column: 162, scope: !2166)
!2169 = !DILocation(line: 708, column: 192, scope: !2166)
!2170 = !DILocation(line: 708, column: 162, scope: !555)
!2171 = !DILocation(line: 708, column: 162, scope: !2172)
!2172 = !DILexicalBlockFile(scope: !555, file: !366, discriminator: 5)
!2173 = !DILocation(line: 708, column: 223, scope: !2174)
!2174 = !DILexicalBlockFile(scope: !2166, file: !366, discriminator: 6)
!2175 = !DILocation(line: 708, column: 241, scope: !2166)
!2176 = !DILocation(line: 708, column: 251, scope: !2166)
!2177 = !DILocation(line: 708, column: 276, scope: !2166)
!2178 = !DILocation(line: 708, column: 207, scope: !2166)
!2179 = !DILocation(line: 708, column: 295, scope: !2180)
!2180 = !DILexicalBlockFile(scope: !556, file: !366, discriminator: 7)
!2181 = !DILocation(line: 708, column: 295, scope: !555)
!2182 = !DILocation(line: 708, column: 295, scope: !2183)
!2183 = !DILexicalBlockFile(scope: !555, file: !366, discriminator: 8)
!2184 = !DILocation(line: 708, column: 295, scope: !2185)
!2185 = !DILexicalBlockFile(scope: !555, file: !366, discriminator: 9)
!2186 = !DILocation(line: 708, column: 308, scope: !1988)
!2187 = !DILocation(line: 708, column: 308, scope: !553)
!2188 = !DILocation(line: 708, column: 308, scope: !2189)
!2189 = !DILexicalBlockFile(scope: !553, file: !366, discriminator: 11)
!2190 = !DILocation(line: 709, column: 5, scope: !520)
!2191 = !DILocation(line: 710, column: 1, scope: !520)
!2192 = !DILocation(line: 951, column: 33, scope: !634)
!2193 = !DILocation(line: 951, column: 57, scope: !634)
!2194 = !DILocation(line: 953, column: 5, scope: !634)
!2195 = !DILocation(line: 953, column: 15, scope: !634)
!2196 = !DILocation(line: 954, column: 5, scope: !634)
!2197 = !DILocation(line: 954, column: 18, scope: !634)
!2198 = !DILocation(line: 956, column: 47, scope: !634)
!2199 = !DILocation(line: 956, column: 27, scope: !634)
!2200 = !DILocation(line: 956, column: 63, scope: !634)
!2201 = !{!2202, !1046, i64 16}
!2202 = !{!"_PyWeakReference", !1076, i64 0, !1046, i64 16, !1046, i64 24, !1077, i64 32, !1046, i64 40, !1046, i64 48}
!2203 = !DILocation(line: 956, column: 76, scope: !634)
!2204 = !DILocation(line: 956, column: 87, scope: !634)
!2205 = !DILocation(line: 956, column: 12, scope: !634)
!2206 = !DILocation(line: 956, column: 114, scope: !2207)
!2207 = !DILexicalBlockFile(scope: !634, file: !366, discriminator: 1)
!2208 = !DILocation(line: 956, column: 94, scope: !634)
!2209 = !DILocation(line: 956, column: 130, scope: !634)
!2210 = !DILocation(line: 956, column: 12, scope: !2211)
!2211 = !DILexicalBlockFile(scope: !634, file: !366, discriminator: 2)
!2212 = !DILocation(line: 956, column: 9, scope: !2213)
!2213 = !DILexicalBlockFile(scope: !2214, file: !366, discriminator: 4)
!2214 = !DILexicalBlockFile(scope: !634, file: !366, discriminator: 3)
!2215 = !DILocation(line: 957, column: 9, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !634, file: !366, line: 957, column: 9)
!2217 = !DILocation(line: 957, column: 13, scope: !2216)
!2218 = !DILocation(line: 957, column: 9, scope: !634)
!2219 = !DILocation(line: 958, column: 62, scope: !2216)
!2220 = !DILocation(line: 958, column: 9, scope: !2216)
!2221 = !DILocation(line: 959, column: 21, scope: !634)
!2222 = !DILocation(line: 959, column: 28, scope: !634)
!2223 = !DILocation(line: 959, column: 37, scope: !634)
!2224 = !DILocation(line: 963, column: 28, scope: !634)
!2225 = !DILocation(line: 963, column: 12, scope: !634)
!2226 = !DILocation(line: 963, column: 10, scope: !634)
!2227 = !DILocation(line: 964, column: 9, scope: !642)
!2228 = !DILocation(line: 964, column: 15, scope: !642)
!2229 = !DILocation(line: 964, column: 23, scope: !642)
!2230 = !DILocation(line: 964, column: 9, scope: !634)
!2231 = !DILocation(line: 965, column: 9, scope: !641)
!2232 = !DILocation(line: 965, column: 19, scope: !641)
!2233 = !DILocation(line: 966, column: 32, scope: !641)
!2234 = !DILocation(line: 966, column: 38, scope: !641)
!2235 = !DILocation(line: 966, column: 47, scope: !641)
!2236 = !DILocation(line: 966, column: 17, scope: !641)
!2237 = !DILocation(line: 966, column: 15, scope: !641)
!2238 = !DILocation(line: 967, column: 13, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !641, file: !366, line: 967, column: 13)
!2240 = !DILocation(line: 967, column: 19, scope: !2239)
!2241 = !DILocation(line: 967, column: 13, scope: !641)
!2242 = !DILocation(line: 968, column: 28, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2239, file: !366, line: 967, column: 34)
!2244 = !DILocation(line: 968, column: 34, scope: !2243)
!2245 = !DILocation(line: 968, column: 43, scope: !2243)
!2246 = !DILocation(line: 968, column: 13, scope: !2243)
!2247 = !DILocation(line: 969, column: 9, scope: !2243)
!2248 = !DILocation(line: 970, column: 13, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !641, file: !366, line: 970, column: 13)
!2250 = !DILocation(line: 970, column: 13, scope: !641)
!2251 = !DILocation(line: 971, column: 35, scope: !2249)
!2252 = !DILocation(line: 971, column: 13, scope: !2249)
!2253 = !DILocation(line: 972, column: 5, scope: !642)
!2254 = !DILocation(line: 972, column: 5, scope: !641)
!2255 = !DILocation(line: 973, column: 5, scope: !634)
!2256 = !DILocation(line: 973, column: 10, scope: !2257)
!2257 = !DILexicalBlockFile(scope: !644, file: !366, discriminator: 1)
!2258 = !DILocation(line: 973, column: 20, scope: !644)
!2259 = !DILocation(line: 973, column: 50, scope: !644)
!2260 = !DILocation(line: 973, column: 64, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !644, file: !366, line: 973, column: 61)
!2262 = !DILocation(line: 973, column: 81, scope: !2261)
!2263 = !DILocation(line: 973, column: 61, scope: !2261)
!2264 = !DILocation(line: 973, column: 91, scope: !2261)
!2265 = !DILocation(line: 973, column: 61, scope: !644)
!2266 = !DILocation(line: 973, column: 61, scope: !2267)
!2267 = !DILexicalBlockFile(scope: !644, file: !366, discriminator: 2)
!2268 = !DILocation(line: 973, column: 122, scope: !2269)
!2269 = !DILexicalBlockFile(scope: !2261, file: !366, discriminator: 3)
!2270 = !DILocation(line: 973, column: 140, scope: !2261)
!2271 = !DILocation(line: 973, column: 150, scope: !2261)
!2272 = !DILocation(line: 973, column: 175, scope: !2261)
!2273 = !DILocation(line: 973, column: 106, scope: !2261)
!2274 = !DILocation(line: 973, column: 194, scope: !2275)
!2275 = !DILexicalBlockFile(scope: !634, file: !366, discriminator: 4)
!2276 = !DILocation(line: 973, column: 194, scope: !644)
!2277 = !DILocation(line: 973, column: 194, scope: !2278)
!2278 = !DILexicalBlockFile(scope: !644, file: !366, discriminator: 5)
!2279 = !DILocation(line: 974, column: 58, scope: !634)
!2280 = !DILocation(line: 974, column: 5, scope: !634)
!2281 = !DILocation(line: 975, column: 1, scope: !634)
!2282 = !DILocation(line: 32, column: 26, scope: !645)
!2283 = !DILocation(line: 34, column: 9, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !645, file: !366, line: 34, column: 9)
!2285 = !DILocation(line: 34, column: 15, scope: !2284)
!2286 = !{!2287, !1046, i64 24}
!2287 = !{!"", !1076, i64 0, !1046, i64 16, !1046, i64 24, !1047, i64 32}
!2288 = !DILocation(line: 34, column: 30, scope: !2284)
!2289 = !DILocation(line: 34, column: 9, scope: !645)
!2290 = !DILocation(line: 35, column: 45, scope: !2284)
!2291 = !DILocation(line: 35, column: 32, scope: !2284)
!2292 = !DILocation(line: 35, column: 9, scope: !2284)
!2293 = !DILocation(line: 36, column: 9, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !645, file: !366, line: 36, column: 9)
!2295 = !DILocation(line: 36, column: 15, scope: !2294)
!2296 = !{!2287, !1046, i64 16}
!2297 = !DILocation(line: 36, column: 25, scope: !2294)
!2298 = !DILocation(line: 36, column: 9, scope: !645)
!2299 = !DILocation(line: 38, column: 13, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !366, line: 38, column: 13)
!2301 = distinct !DILexicalBlock(scope: !2294, file: !366, line: 36, column: 40)
!2302 = !DILocation(line: 38, column: 19, scope: !2300)
!2303 = !{!2287, !1047, i64 32}
!2304 = !DILocation(line: 38, column: 13, scope: !2301)
!2305 = !DILocation(line: 39, column: 35, scope: !2300)
!2306 = !DILocation(line: 39, column: 41, scope: !2300)
!2307 = !DILocation(line: 39, column: 13, scope: !2300)
!2308 = !DILocation(line: 40, column: 28, scope: !2301)
!2309 = !DILocation(line: 40, column: 34, scope: !2301)
!2310 = !DILocation(line: 40, column: 9, scope: !2301)
!2311 = !DILocation(line: 41, column: 5, scope: !2301)
!2312 = !DILocation(line: 42, column: 19, scope: !645)
!2313 = !DILocation(line: 42, column: 5, scope: !645)
!2314 = !DILocation(line: 43, column: 1, scope: !645)
!2315 = !DILocation(line: 103, column: 40, scope: !650)
!2316 = !DILocation(line: 103, column: 56, scope: !650)
!2317 = !DILocation(line: 103, column: 72, scope: !650)
!2318 = !DILocation(line: 105, column: 5, scope: !650)
!2319 = !DILocation(line: 105, column: 11, scope: !650)
!2320 = !DILocation(line: 106, column: 5, scope: !650)
!2321 = !DILocation(line: 106, column: 9, scope: !650)
!2322 = !DILocation(line: 107, column: 5, scope: !650)
!2323 = !DILocation(line: 107, column: 12, scope: !650)
!2324 = !{!2325, !2325, i64 0}
!2325 = !{!"double", !1047, i64 0}
!2326 = !DILocation(line: 108, column: 5, scope: !650)
!2327 = !DILocation(line: 108, column: 15, scope: !650)
!2328 = !DILocation(line: 109, column: 5, scope: !650)
!2329 = !DILocation(line: 109, column: 18, scope: !650)
!2330 = !DILocation(line: 111, column: 38, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !650, file: !366, line: 111, column: 9)
!2332 = !DILocation(line: 111, column: 44, scope: !2331)
!2333 = !DILocation(line: 111, column: 65, scope: !2331)
!2334 = !DILocation(line: 111, column: 10, scope: !2331)
!2335 = !DILocation(line: 111, column: 9, scope: !650)
!2336 = !DILocation(line: 113, column: 9, scope: !2331)
!2337 = !DILocation(line: 115, column: 10, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !650, file: !366, line: 115, column: 9)
!2339 = !DILocation(line: 115, column: 19, scope: !2338)
!2340 = !DILocation(line: 115, column: 22, scope: !2341)
!2341 = !DILexicalBlockFile(scope: !2338, file: !366, discriminator: 1)
!2342 = !DILocation(line: 115, column: 30, scope: !2338)
!2343 = !DILocation(line: 115, column: 9, scope: !650)
!2344 = !DILocation(line: 116, column: 25, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2338, file: !366, line: 115, column: 37)
!2346 = !DILocation(line: 116, column: 9, scope: !2345)
!2347 = !DILocation(line: 118, column: 9, scope: !2345)
!2348 = !DILocation(line: 120, column: 9, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !650, file: !366, line: 120, column: 9)
!2350 = !DILocation(line: 120, column: 17, scope: !2349)
!2351 = !DILocation(line: 120, column: 21, scope: !2349)
!2352 = !DILocation(line: 120, column: 24, scope: !2353)
!2353 = !DILexicalBlockFile(scope: !2349, file: !366, discriminator: 1)
!2354 = !DILocation(line: 120, column: 32, scope: !2349)
!2355 = !DILocation(line: 120, column: 9, scope: !650)
!2356 = !DILocation(line: 121, column: 25, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2349, file: !366, line: 120, column: 39)
!2358 = !DILocation(line: 121, column: 9, scope: !2357)
!2359 = !DILocation(line: 123, column: 9, scope: !2357)
!2360 = !DILocation(line: 125, column: 10, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !650, file: !366, line: 125, column: 9)
!2362 = !DILocation(line: 125, column: 9, scope: !650)
!2363 = !DILocation(line: 126, column: 22, scope: !2361)
!2364 = !{!2365, !2365, i64 0}
!2365 = !{!"long long", !1047, i64 0}
!2366 = !DILocation(line: 126, column: 9, scope: !2361)
!2367 = !DILocation(line: 127, column: 14, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2361, file: !366, line: 127, column: 14)
!2369 = !DILocation(line: 127, column: 22, scope: !2368)
!2370 = !DILocation(line: 127, column: 14, scope: !2361)
!2371 = !DILocation(line: 128, column: 22, scope: !2368)
!2372 = !DILocation(line: 128, column: 9, scope: !2368)
!2373 = !DILocation(line: 130, column: 17, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2368, file: !366, line: 129, column: 10)
!2375 = !DILocation(line: 131, column: 13, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2374, file: !366, line: 131, column: 13)
!2377 = !DILocation(line: 131, column: 21, scope: !2376)
!2378 = !DILocation(line: 131, column: 13, scope: !2374)
!2379 = !DILocation(line: 132, column: 29, scope: !2380)
!2380 = distinct !DILexicalBlock(scope: !2376, file: !366, line: 131, column: 56)
!2381 = !DILocation(line: 132, column: 13, scope: !2380)
!2382 = !DILocation(line: 134, column: 13, scope: !2380)
!2383 = !DILocation(line: 136, column: 36, scope: !2374)
!2384 = !DILocation(line: 136, column: 24, scope: !2374)
!2385 = !DILocation(line: 136, column: 22, scope: !2374)
!2386 = !DILocation(line: 139, column: 23, scope: !650)
!2387 = !DILocation(line: 139, column: 29, scope: !650)
!2388 = !DILocation(line: 139, column: 40, scope: !650)
!2389 = !DILocation(line: 139, column: 9, scope: !650)
!2390 = !DILocation(line: 139, column: 7, scope: !650)
!2391 = !{!1047, !1047, i64 0}
!2392 = !DILocation(line: 140, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !650, file: !366, line: 140, column: 9)
!2394 = !DILocation(line: 140, column: 11, scope: !2393)
!2395 = !DILocation(line: 140, column: 9, scope: !650)
!2396 = !DILocation(line: 141, column: 9, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2393, file: !366, line: 140, column: 28)
!2398 = !DILocation(line: 144, column: 9, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !650, file: !366, line: 144, column: 9)
!2400 = !DILocation(line: 144, column: 11, scope: !2399)
!2401 = !DILocation(line: 144, column: 9, scope: !650)
!2402 = !DILocation(line: 145, column: 9, scope: !2399)
!2403 = !DILocation(line: 145, column: 15, scope: !2399)
!2404 = !DILocation(line: 145, column: 22, scope: !2399)
!2405 = !DILocation(line: 146, column: 28, scope: !650)
!2406 = !DILocation(line: 146, column: 30, scope: !650)
!2407 = !DILocation(line: 146, column: 12, scope: !650)
!2408 = !DILocation(line: 146, column: 5, scope: !650)
!2409 = !DILocation(line: 147, column: 1, scope: !650)
!2410 = !DILocation(line: 161, column: 40, scope: !689)
!2411 = !DILocation(line: 164, column: 10, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !689, file: !366, line: 164, column: 9)
!2413 = !DILocation(line: 164, column: 16, scope: !2412)
!2414 = !DILocation(line: 164, column: 9, scope: !689)
!2415 = !DILocation(line: 165, column: 25, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2412, file: !366, line: 164, column: 24)
!2417 = !DILocation(line: 165, column: 9, scope: !2416)
!2418 = !DILocation(line: 166, column: 9, scope: !2416)
!2419 = !DILocation(line: 169, column: 27, scope: !689)
!2420 = !DILocation(line: 169, column: 33, scope: !689)
!2421 = !DILocation(line: 169, column: 5, scope: !689)
!2422 = !DILocation(line: 170, column: 5, scope: !689)
!2423 = !DILocation(line: 170, column: 11, scope: !689)
!2424 = !DILocation(line: 170, column: 18, scope: !689)
!2425 = !DILocation(line: 171, column: 51, scope: !689)
!2426 = !DILocation(line: 172, column: 5, scope: !689)
!2427 = !DILocation(line: 173, column: 1, scope: !689)
!2428 = !DILocation(line: 184, column: 30, scope: !694)
!2429 = !DILocation(line: 186, column: 34, scope: !694)
!2430 = !DILocation(line: 186, column: 40, scope: !694)
!2431 = !DILocation(line: 186, column: 28, scope: !694)
!2432 = !DILocation(line: 186, column: 12, scope: !694)
!2433 = !DILocation(line: 186, column: 5, scope: !694)
!2434 = !DILocation(line: 52, column: 34, scope: !666)
!2435 = !DILocation(line: 52, column: 50, scope: !666)
!2436 = !DILocation(line: 54, column: 5, scope: !666)
!2437 = !DILocation(line: 54, column: 18, scope: !666)
!2438 = !DILocation(line: 55, column: 5, scope: !666)
!2439 = !DILocation(line: 55, column: 21, scope: !666)
!2440 = !DILocation(line: 56, column: 5, scope: !666)
!2441 = !DILocation(line: 56, column: 21, scope: !666)
!2442 = !DILocation(line: 59, column: 9, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !666, file: !366, line: 59, column: 9)
!2444 = !DILocation(line: 59, column: 22, scope: !2443)
!2445 = !DILocation(line: 59, column: 9, scope: !666)
!2446 = !DILocation(line: 60, column: 9, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2443, file: !366, line: 59, column: 27)
!2448 = !DILocation(line: 61, column: 27, scope: !2447)
!2449 = !DILocation(line: 61, column: 40, scope: !2447)
!2450 = !DILocation(line: 61, column: 17, scope: !2447)
!2451 = !DILocation(line: 61, column: 24, scope: !2447)
!2452 = !{!2453, !1077, i64 0}
!2453 = !{!"timeval", !1077, i64 0, !1077, i64 8}
!2454 = !DILocation(line: 62, column: 28, scope: !2447)
!2455 = !DILocation(line: 62, column: 41, scope: !2447)
!2456 = !DILocation(line: 62, column: 17, scope: !2447)
!2457 = !DILocation(line: 62, column: 25, scope: !2447)
!2458 = !{!2453, !1077, i64 8}
!2459 = !DILocation(line: 63, column: 5, scope: !2447)
!2460 = !DILocation(line: 66, column: 5, scope: !666)
!2461 = !DILocation(line: 68, column: 41, scope: !688)
!2462 = !DILocation(line: 68, column: 13, scope: !688)
!2463 = !DILocation(line: 68, column: 11, scope: !688)
!2464 = !DILocation(line: 69, column: 13, scope: !687)
!2465 = !DILocation(line: 69, column: 15, scope: !687)
!2466 = !DILocation(line: 69, column: 34, scope: !687)
!2467 = !DILocation(line: 69, column: 37, scope: !2468)
!2468 = !DILexicalBlockFile(scope: !687, file: !366, discriminator: 1)
!2469 = !DILocation(line: 69, column: 50, scope: !687)
!2470 = !DILocation(line: 69, column: 13, scope: !688)
!2471 = !DILocation(line: 70, column: 15, scope: !685)
!2472 = !DILocation(line: 70, column: 30, scope: !685)
!2473 = !DILocation(line: 70, column: 45, scope: !685)
!2474 = !DILocation(line: 70, column: 43, scope: !685)
!2475 = !DILocation(line: 71, column: 45, scope: !685)
!2476 = !DILocation(line: 71, column: 51, scope: !685)
!2477 = !DILocation(line: 71, column: 17, scope: !685)
!2478 = !DILocation(line: 71, column: 15, scope: !685)
!2479 = !DILocation(line: 72, column: 34, scope: !685)
!2480 = !DILocation(line: 72, column: 13, scope: !685)
!2481 = !DILocation(line: 72, column: 42, scope: !686)
!2482 = !DILocation(line: 73, column: 9, scope: !686)
!2483 = !DILocation(line: 75, column: 13, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !688, file: !366, line: 75, column: 13)
!2485 = !DILocation(line: 75, column: 15, scope: !2484)
!2486 = !DILocation(line: 75, column: 13, scope: !688)
!2487 = !DILocation(line: 79, column: 17, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !366, line: 79, column: 17)
!2489 = distinct !DILexicalBlock(scope: !2484, file: !366, line: 75, column: 32)
!2490 = !DILocation(line: 79, column: 39, scope: !2488)
!2491 = !DILocation(line: 79, column: 17, scope: !2489)
!2492 = !DILocation(line: 80, column: 17, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2488, file: !366, line: 79, column: 44)
!2494 = !DILocation(line: 85, column: 17, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2489, file: !366, line: 85, column: 17)
!2496 = !DILocation(line: 85, column: 30, scope: !2495)
!2497 = !DILocation(line: 85, column: 17, scope: !2489)
!2498 = !DILocation(line: 86, column: 17, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !366, line: 85, column: 35)
!2500 = !DILocation(line: 87, column: 42, scope: !2499)
!2501 = !DILocation(line: 87, column: 59, scope: !2499)
!2502 = !DILocation(line: 87, column: 49, scope: !2499)
!2503 = !DILocation(line: 87, column: 67, scope: !2499)
!2504 = !DILocation(line: 88, column: 42, scope: !2499)
!2505 = !DILocation(line: 88, column: 60, scope: !2499)
!2506 = !DILocation(line: 88, column: 50, scope: !2499)
!2507 = !DILocation(line: 87, column: 77, scope: !2499)
!2508 = !DILocation(line: 87, column: 30, scope: !2499)
!2509 = !DILocation(line: 92, column: 21, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2499, file: !366, line: 92, column: 21)
!2511 = !DILocation(line: 92, column: 34, scope: !2510)
!2512 = !DILocation(line: 92, column: 21, scope: !2499)
!2513 = !DILocation(line: 93, column: 23, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2510, file: !366, line: 92, column: 40)
!2515 = !DILocation(line: 94, column: 17, scope: !2514)
!2516 = !DILocation(line: 95, column: 13, scope: !2499)
!2517 = !DILocation(line: 96, column: 9, scope: !2489)
!2518 = !DILocation(line: 97, column: 5, scope: !688)
!2519 = !DILocation(line: 97, column: 14, scope: !2520)
!2520 = !DILexicalBlockFile(scope: !666, file: !366, discriminator: 1)
!2521 = !DILocation(line: 97, column: 16, scope: !666)
!2522 = !DILocation(line: 99, column: 12, scope: !666)
!2523 = !DILocation(line: 99, column: 5, scope: !666)
!2524 = !DILocation(line: 100, column: 1, scope: !666)
!2525 = !DILocation(line: 258, column: 28, scope: !697)
!2526 = !DILocation(line: 260, column: 9, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !697, file: !366, line: 260, column: 9)
!2528 = !DILocation(line: 260, column: 15, scope: !2527)
!2529 = !{!2530, !1046, i64 40}
!2530 = !{!"", !1076, i64 0, !1046, i64 16, !1077, i64 24, !1077, i64 32, !1046, i64 40}
!2531 = !DILocation(line: 260, column: 30, scope: !2527)
!2532 = !DILocation(line: 260, column: 9, scope: !697)
!2533 = !DILocation(line: 261, column: 45, scope: !2527)
!2534 = !DILocation(line: 261, column: 32, scope: !2527)
!2535 = !DILocation(line: 261, column: 9, scope: !2527)
!2536 = !DILocation(line: 264, column: 9, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !697, file: !366, line: 264, column: 9)
!2538 = !DILocation(line: 264, column: 15, scope: !2537)
!2539 = !{!2530, !1046, i64 16}
!2540 = !DILocation(line: 264, column: 26, scope: !2537)
!2541 = !DILocation(line: 264, column: 9, scope: !697)
!2542 = !DILocation(line: 266, column: 13, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !366, line: 266, column: 13)
!2544 = distinct !DILexicalBlock(scope: !2537, file: !366, line: 264, column: 41)
!2545 = !DILocation(line: 266, column: 19, scope: !2543)
!2546 = !{!2530, !1077, i64 32}
!2547 = !DILocation(line: 266, column: 31, scope: !2543)
!2548 = !DILocation(line: 266, column: 13, scope: !2544)
!2549 = !DILocation(line: 267, column: 35, scope: !2543)
!2550 = !DILocation(line: 267, column: 41, scope: !2543)
!2551 = !DILocation(line: 267, column: 13, scope: !2543)
!2552 = !DILocation(line: 269, column: 28, scope: !2544)
!2553 = !DILocation(line: 269, column: 34, scope: !2544)
!2554 = !DILocation(line: 269, column: 9, scope: !2544)
!2555 = !DILocation(line: 270, column: 5, scope: !2544)
!2556 = !DILocation(line: 271, column: 19, scope: !697)
!2557 = !DILocation(line: 271, column: 7, scope: !697)
!2558 = !DILocation(line: 271, column: 27, scope: !697)
!2559 = !DILocation(line: 271, column: 37, scope: !697)
!2560 = !DILocation(line: 271, column: 45, scope: !697)
!2561 = !DILocation(line: 271, column: 5, scope: !697)
!2562 = !DILocation(line: 272, column: 1, scope: !697)
!2563 = !DILocation(line: 476, column: 25, scope: !702)
!2564 = !DILocation(line: 479, column: 23, scope: !702)
!2565 = !DILocation(line: 479, column: 11, scope: !702)
!2566 = !DILocation(line: 479, column: 31, scope: !702)
!2567 = !DILocation(line: 479, column: 41, scope: !702)
!2568 = !DILocation(line: 479, column: 50, scope: !702)
!2569 = !DILocation(line: 479, column: 56, scope: !702)
!2570 = !{!2530, !1077, i64 24}
!2571 = !DILocation(line: 479, column: 69, scope: !702)
!2572 = !DILocation(line: 479, column: 75, scope: !702)
!2573 = !DILocation(line: 478, column: 12, scope: !702)
!2574 = !DILocation(line: 478, column: 5, scope: !702)
!2575 = !DILocation(line: 454, column: 25, scope: !749)
!2576 = !DILocation(line: 454, column: 41, scope: !749)
!2577 = !DILocation(line: 454, column: 57, scope: !749)
!2578 = !DILocation(line: 456, column: 5, scope: !749)
!2579 = !DILocation(line: 456, column: 18, scope: !749)
!2580 = !DILocation(line: 458, column: 28, scope: !749)
!2581 = !DILocation(line: 458, column: 34, scope: !749)
!2582 = !DILocation(line: 458, column: 43, scope: !749)
!2583 = !DILocation(line: 458, column: 12, scope: !749)
!2584 = !DILocation(line: 458, column: 10, scope: !749)
!2585 = !DILocation(line: 459, column: 9, scope: !760)
!2586 = !DILocation(line: 459, column: 14, scope: !760)
!2587 = !DILocation(line: 459, column: 9, scope: !749)
!2588 = !DILocation(line: 460, column: 9, scope: !759)
!2589 = !DILocation(line: 460, column: 15, scope: !759)
!2590 = !DILocation(line: 460, column: 30, scope: !759)
!2591 = !DILocation(line: 461, column: 9, scope: !759)
!2592 = !DILocation(line: 461, column: 15, scope: !759)
!2593 = !DILocation(line: 461, column: 27, scope: !759)
!2594 = !DILocation(line: 462, column: 9, scope: !759)
!2595 = !DILocation(line: 462, column: 15, scope: !759)
!2596 = !DILocation(line: 462, column: 27, scope: !759)
!2597 = !DILocation(line: 464, column: 28, scope: !759)
!2598 = !DILocation(line: 464, column: 9, scope: !759)
!2599 = !DILocation(line: 464, column: 15, scope: !759)
!2600 = !DILocation(line: 464, column: 26, scope: !759)
!2601 = !DILocation(line: 465, column: 13, scope: !758)
!2602 = !DILocation(line: 465, column: 19, scope: !758)
!2603 = !DILocation(line: 465, column: 30, scope: !758)
!2604 = !DILocation(line: 465, column: 13, scope: !759)
!2605 = !DILocation(line: 466, column: 13, scope: !757)
!2606 = !DILocation(line: 466, column: 18, scope: !2607)
!2607 = !DILexicalBlockFile(scope: !756, file: !366, discriminator: 1)
!2608 = !DILocation(line: 466, column: 28, scope: !756)
!2609 = !DILocation(line: 466, column: 58, scope: !756)
!2610 = !DILocation(line: 466, column: 45, scope: !756)
!2611 = !DILocation(line: 466, column: 73, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !756, file: !366, line: 466, column: 70)
!2613 = !DILocation(line: 466, column: 90, scope: !2612)
!2614 = !DILocation(line: 466, column: 70, scope: !2612)
!2615 = !DILocation(line: 466, column: 100, scope: !2612)
!2616 = !DILocation(line: 466, column: 70, scope: !756)
!2617 = !DILocation(line: 466, column: 70, scope: !2618)
!2618 = !DILexicalBlockFile(scope: !756, file: !366, discriminator: 2)
!2619 = !DILocation(line: 466, column: 131, scope: !2620)
!2620 = !DILexicalBlockFile(scope: !2612, file: !366, discriminator: 3)
!2621 = !DILocation(line: 466, column: 149, scope: !2612)
!2622 = !DILocation(line: 466, column: 159, scope: !2612)
!2623 = !DILocation(line: 466, column: 184, scope: !2612)
!2624 = !DILocation(line: 466, column: 115, scope: !2612)
!2625 = !DILocation(line: 466, column: 203, scope: !2626)
!2626 = !DILexicalBlockFile(scope: !757, file: !366, discriminator: 4)
!2627 = !DILocation(line: 466, column: 203, scope: !756)
!2628 = !DILocation(line: 466, column: 203, scope: !2629)
!2629 = !DILexicalBlockFile(scope: !756, file: !366, discriminator: 5)
!2630 = !DILocation(line: 467, column: 29, scope: !757)
!2631 = !DILocation(line: 467, column: 13, scope: !757)
!2632 = !DILocation(line: 468, column: 13, scope: !757)
!2633 = !DILocation(line: 470, column: 5, scope: !759)
!2634 = !DILocation(line: 472, column: 25, scope: !749)
!2635 = !DILocation(line: 472, column: 12, scope: !749)
!2636 = !DILocation(line: 472, column: 5, scope: !749)
!2637 = !DILocation(line: 473, column: 1, scope: !749)
!2638 = !DILocation(line: 275, column: 28, scope: !707)
!2639 = !DILocation(line: 275, column: 44, scope: !707)
!2640 = !DILocation(line: 275, column: 60, scope: !707)
!2641 = !DILocation(line: 277, column: 5, scope: !707)
!2642 = !DILocation(line: 277, column: 11, scope: !707)
!2643 = !DILocation(line: 278, column: 5, scope: !707)
!2644 = !DILocation(line: 278, column: 9, scope: !707)
!2645 = !DILocation(line: 279, column: 5, scope: !707)
!2646 = !DILocation(line: 279, column: 12, scope: !707)
!2647 = !DILocation(line: 280, column: 5, scope: !707)
!2648 = !DILocation(line: 280, column: 15, scope: !707)
!2649 = !DILocation(line: 281, column: 5, scope: !707)
!2650 = !DILocation(line: 281, column: 10, scope: !707)
!2651 = !DILocation(line: 282, column: 5, scope: !707)
!2652 = !DILocation(line: 282, column: 18, scope: !707)
!2653 = !DILocation(line: 284, column: 38, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !707, file: !366, line: 284, column: 9)
!2655 = !DILocation(line: 284, column: 44, scope: !2654)
!2656 = !DILocation(line: 284, column: 65, scope: !2654)
!2657 = !DILocation(line: 284, column: 10, scope: !2654)
!2658 = !DILocation(line: 284, column: 9, scope: !707)
!2659 = !DILocation(line: 286, column: 9, scope: !2654)
!2660 = !DILocation(line: 288, column: 10, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !707, file: !366, line: 288, column: 9)
!2662 = !DILocation(line: 288, column: 19, scope: !2661)
!2663 = !DILocation(line: 288, column: 22, scope: !2664)
!2664 = !DILexicalBlockFile(scope: !2661, file: !366, discriminator: 1)
!2665 = !DILocation(line: 288, column: 30, scope: !2661)
!2666 = !DILocation(line: 288, column: 9, scope: !707)
!2667 = !DILocation(line: 289, column: 25, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2661, file: !366, line: 288, column: 37)
!2669 = !DILocation(line: 289, column: 9, scope: !2668)
!2670 = !DILocation(line: 291, column: 9, scope: !2668)
!2671 = !DILocation(line: 293, column: 9, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !707, file: !366, line: 293, column: 9)
!2673 = !DILocation(line: 293, column: 17, scope: !2672)
!2674 = !DILocation(line: 293, column: 21, scope: !2672)
!2675 = !DILocation(line: 293, column: 24, scope: !2676)
!2676 = !DILexicalBlockFile(scope: !2672, file: !366, discriminator: 1)
!2677 = !DILocation(line: 293, column: 32, scope: !2672)
!2678 = !DILocation(line: 293, column: 9, scope: !707)
!2679 = !DILocation(line: 294, column: 25, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2672, file: !366, line: 293, column: 39)
!2681 = !DILocation(line: 294, column: 9, scope: !2680)
!2682 = !DILocation(line: 296, column: 9, scope: !2680)
!2683 = !DILocation(line: 298, column: 10, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !707, file: !366, line: 298, column: 9)
!2685 = !DILocation(line: 298, column: 9, scope: !707)
!2686 = !DILocation(line: 299, column: 22, scope: !2684)
!2687 = !DILocation(line: 299, column: 9, scope: !2684)
!2688 = !DILocation(line: 300, column: 14, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2684, file: !366, line: 300, column: 14)
!2690 = !DILocation(line: 300, column: 22, scope: !2689)
!2691 = !DILocation(line: 300, column: 14, scope: !2684)
!2692 = !DILocation(line: 301, column: 22, scope: !2689)
!2693 = !DILocation(line: 301, column: 9, scope: !2689)
!2694 = !DILocation(line: 303, column: 17, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2689, file: !366, line: 302, column: 10)
!2696 = !DILocation(line: 304, column: 13, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2695, file: !366, line: 304, column: 13)
!2698 = !DILocation(line: 304, column: 21, scope: !2697)
!2699 = !DILocation(line: 304, column: 13, scope: !2695)
!2700 = !DILocation(line: 305, column: 29, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2697, file: !366, line: 304, column: 56)
!2702 = !DILocation(line: 305, column: 13, scope: !2701)
!2703 = !DILocation(line: 307, column: 13, scope: !2701)
!2704 = !DILocation(line: 309, column: 36, scope: !2695)
!2705 = !DILocation(line: 309, column: 24, scope: !2695)
!2706 = !DILocation(line: 309, column: 22, scope: !2695)
!2707 = !DILocation(line: 312, column: 11, scope: !707)
!2708 = !DILocation(line: 312, column: 9, scope: !707)
!2709 = !DILocation(line: 313, column: 9, scope: !722)
!2710 = !DILocation(line: 313, column: 15, scope: !722)
!2711 = !DILocation(line: 313, column: 27, scope: !722)
!2712 = !DILocation(line: 313, column: 31, scope: !722)
!2713 = !DILocation(line: 313, column: 34, scope: !2714)
!2714 = !DILexicalBlockFile(scope: !722, file: !366, discriminator: 1)
!2715 = !DILocation(line: 313, column: 41, scope: !722)
!2716 = !DILocation(line: 313, column: 47, scope: !722)
!2717 = !DILocation(line: 313, column: 38, scope: !722)
!2718 = !DILocation(line: 313, column: 9, scope: !707)
!2719 = !DILocation(line: 314, column: 9, scope: !721)
!2720 = !DILocation(line: 314, column: 23, scope: !721)
!2721 = !DILocation(line: 314, column: 31, scope: !721)
!2722 = !DILocation(line: 314, column: 37, scope: !721)
!2723 = !DILocation(line: 314, column: 49, scope: !721)
!2724 = !DILocation(line: 315, column: 13, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !721, file: !366, line: 315, column: 13)
!2726 = !DILocation(line: 315, column: 22, scope: !2725)
!2727 = !DILocation(line: 315, column: 28, scope: !2725)
!2728 = !DILocation(line: 315, column: 19, scope: !2725)
!2729 = !DILocation(line: 315, column: 13, scope: !721)
!2730 = !DILocation(line: 316, column: 29, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2725, file: !366, line: 315, column: 41)
!2732 = !DILocation(line: 316, column: 13, scope: !2731)
!2733 = !DILocation(line: 318, column: 13, scope: !2731)
!2734 = !DILocation(line: 320, column: 29, scope: !721)
!2735 = !DILocation(line: 320, column: 9, scope: !721)
!2736 = !DILocation(line: 320, column: 15, scope: !721)
!2737 = !DILocation(line: 320, column: 27, scope: !721)
!2738 = !DILocation(line: 321, column: 75, scope: !721)
!2739 = !DILocation(line: 321, column: 9, scope: !721)
!2740 = !DILocation(line: 322, column: 5, scope: !722)
!2741 = !DILocation(line: 323, column: 23, scope: !707)
!2742 = !DILocation(line: 323, column: 29, scope: !707)
!2743 = !DILocation(line: 323, column: 41, scope: !707)
!2744 = !DILocation(line: 323, column: 9, scope: !707)
!2745 = !DILocation(line: 323, column: 7, scope: !707)
!2746 = !DILocation(line: 324, column: 9, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !707, file: !366, line: 324, column: 9)
!2748 = !DILocation(line: 324, column: 11, scope: !2747)
!2749 = !DILocation(line: 324, column: 9, scope: !707)
!2750 = !DILocation(line: 326, column: 29, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2747, file: !366, line: 324, column: 32)
!2752 = !DILocation(line: 326, column: 9, scope: !2751)
!2753 = !DILocation(line: 326, column: 15, scope: !2751)
!2754 = !DILocation(line: 326, column: 27, scope: !2751)
!2755 = !DILocation(line: 327, column: 9, scope: !2751)
!2756 = !DILocation(line: 327, column: 15, scope: !2751)
!2757 = !DILocation(line: 327, column: 27, scope: !2751)
!2758 = !DILocation(line: 328, column: 5, scope: !2751)
!2759 = !DILocation(line: 329, column: 14, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2747, file: !366, line: 329, column: 14)
!2761 = !DILocation(line: 329, column: 16, scope: !2760)
!2762 = !DILocation(line: 329, column: 14, scope: !2747)
!2763 = !DILocation(line: 330, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2760, file: !366, line: 329, column: 33)
!2765 = !DILocation(line: 333, column: 28, scope: !707)
!2766 = !DILocation(line: 333, column: 30, scope: !707)
!2767 = !DILocation(line: 333, column: 12, scope: !707)
!2768 = !DILocation(line: 333, column: 5, scope: !707)
!2769 = !DILocation(line: 334, column: 1, scope: !707)
!2770 = !DILocation(line: 353, column: 28, scope: !723)
!2771 = !DILocation(line: 355, column: 5, scope: !723)
!2772 = !DILocation(line: 355, column: 10, scope: !723)
!2773 = !DILocation(line: 355, column: 16, scope: !723)
!2774 = !DILocation(line: 357, column: 9, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !723, file: !366, line: 357, column: 9)
!2776 = !DILocation(line: 357, column: 15, scope: !2775)
!2777 = !DILocation(line: 357, column: 27, scope: !2775)
!2778 = !DILocation(line: 357, column: 32, scope: !2775)
!2779 = !DILocation(line: 357, column: 35, scope: !2780)
!2780 = !DILexicalBlockFile(scope: !2775, file: !366, discriminator: 1)
!2781 = !DILocation(line: 357, column: 41, scope: !2775)
!2782 = !DILocation(line: 357, column: 56, scope: !2775)
!2783 = !DILocation(line: 357, column: 53, scope: !2775)
!2784 = !DILocation(line: 357, column: 9, scope: !723)
!2785 = !DILocation(line: 358, column: 25, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2775, file: !366, line: 357, column: 61)
!2787 = !DILocation(line: 358, column: 9, scope: !2786)
!2788 = !DILocation(line: 360, column: 9, scope: !2786)
!2789 = !DILocation(line: 362, column: 11, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !723, file: !366, line: 362, column: 9)
!2791 = !DILocation(line: 362, column: 17, scope: !2790)
!2792 = !DILocation(line: 362, column: 9, scope: !2790)
!2793 = !DILocation(line: 362, column: 29, scope: !2790)
!2794 = !DILocation(line: 362, column: 9, scope: !723)
!2795 = !DILocation(line: 363, column: 9, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2790, file: !366, line: 362, column: 35)
!2797 = !DILocation(line: 363, column: 15, scope: !2796)
!2798 = !DILocation(line: 363, column: 27, scope: !2796)
!2799 = !DILocation(line: 364, column: 31, scope: !2796)
!2800 = !DILocation(line: 364, column: 37, scope: !2796)
!2801 = !DILocation(line: 364, column: 9, scope: !2796)
!2802 = !DILocation(line: 365, column: 5, scope: !2796)
!2803 = !DILocation(line: 366, column: 58, scope: !723)
!2804 = !DILocation(line: 366, column: 5, scope: !723)
!2805 = !DILocation(line: 367, column: 1, scope: !723)
!2806 = !DILocation(line: 438, column: 29, scope: !727)
!2807 = !DILocation(line: 440, column: 5, scope: !727)
!2808 = !DILocation(line: 440, column: 10, scope: !727)
!2809 = !DILocation(line: 440, column: 16, scope: !727)
!2810 = !DILocation(line: 442, column: 9, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !727, file: !366, line: 442, column: 9)
!2812 = !DILocation(line: 442, column: 15, scope: !2811)
!2813 = !DILocation(line: 442, column: 27, scope: !2811)
!2814 = !DILocation(line: 442, column: 31, scope: !2811)
!2815 = !DILocation(line: 442, column: 34, scope: !2816)
!2816 = !DILexicalBlockFile(scope: !2811, file: !366, discriminator: 1)
!2817 = !DILocation(line: 442, column: 40, scope: !2811)
!2818 = !DILocation(line: 442, column: 55, scope: !2811)
!2819 = !DILocation(line: 442, column: 52, scope: !2811)
!2820 = !DILocation(line: 442, column: 9, scope: !727)
!2821 = !DILocation(line: 443, column: 75, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2811, file: !366, line: 442, column: 60)
!2823 = !DILocation(line: 443, column: 9, scope: !2822)
!2824 = !DILocation(line: 445, column: 72, scope: !727)
!2825 = !DILocation(line: 445, column: 5, scope: !727)
!2826 = !DILocation(line: 446, column: 1, scope: !727)
!2827 = !DILocation(line: 382, column: 36, scope: !731)
!2828 = !DILocation(line: 382, column: 52, scope: !731)
!2829 = !DILocation(line: 384, column: 5, scope: !731)
!2830 = !DILocation(line: 384, column: 10, scope: !731)
!2831 = !DILocation(line: 385, column: 5, scope: !731)
!2832 = !DILocation(line: 385, column: 19, scope: !731)
!2833 = !DILocation(line: 386, column: 5, scope: !731)
!2834 = !DILocation(line: 386, column: 9, scope: !731)
!2835 = !DILocation(line: 388, column: 27, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !731, file: !366, line: 388, column: 9)
!2837 = !DILocation(line: 388, column: 10, scope: !2836)
!2838 = !DILocation(line: 388, column: 9, scope: !731)
!2839 = !DILocation(line: 389, column: 9, scope: !2836)
!2840 = !DILocation(line: 391, column: 32, scope: !743)
!2841 = !DILocation(line: 391, column: 38, scope: !743)
!2842 = !DILocation(line: 391, column: 10, scope: !743)
!2843 = !DILocation(line: 391, column: 9, scope: !731)
!2844 = !DILocation(line: 392, column: 11, scope: !741)
!2845 = !DILocation(line: 392, column: 26, scope: !741)
!2846 = !DILocation(line: 392, column: 41, scope: !741)
!2847 = !DILocation(line: 392, column: 39, scope: !741)
!2848 = !DILocation(line: 393, column: 35, scope: !741)
!2849 = !DILocation(line: 393, column: 41, scope: !741)
!2850 = !DILocation(line: 393, column: 13, scope: !741)
!2851 = !DILocation(line: 393, column: 11, scope: !741)
!2852 = !DILocation(line: 394, column: 30, scope: !741)
!2853 = !DILocation(line: 394, column: 9, scope: !741)
!2854 = !DILocation(line: 394, column: 38, scope: !742)
!2855 = !DILocation(line: 395, column: 5, scope: !742)
!2856 = !DILocation(line: 396, column: 10, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !731, file: !366, line: 396, column: 9)
!2858 = !DILocation(line: 396, column: 9, scope: !731)
!2859 = !DILocation(line: 397, column: 25, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !366, line: 396, column: 13)
!2861 = !DILocation(line: 397, column: 9, scope: !2860)
!2862 = !DILocation(line: 398, column: 9, scope: !2860)
!2863 = !DILocation(line: 401, column: 25, scope: !731)
!2864 = !DILocation(line: 401, column: 5, scope: !731)
!2865 = !DILocation(line: 401, column: 11, scope: !731)
!2866 = !DILocation(line: 401, column: 23, scope: !731)
!2867 = !DILocation(line: 402, column: 25, scope: !731)
!2868 = !DILocation(line: 402, column: 5, scope: !731)
!2869 = !DILocation(line: 402, column: 11, scope: !731)
!2870 = !DILocation(line: 402, column: 23, scope: !731)
!2871 = !DILocation(line: 403, column: 58, scope: !731)
!2872 = !DILocation(line: 403, column: 5, scope: !731)
!2873 = !DILocation(line: 404, column: 1, scope: !731)
!2874 = !DILocation(line: 412, column: 33, scope: !744)
!2875 = !DILocation(line: 414, column: 5, scope: !744)
!2876 = !DILocation(line: 414, column: 10, scope: !744)
!2877 = !DILocation(line: 415, column: 5, scope: !744)
!2878 = !DILocation(line: 415, column: 19, scope: !744)
!2879 = !DILocation(line: 417, column: 9, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !744, file: !366, line: 417, column: 9)
!2881 = !DILocation(line: 417, column: 15, scope: !2880)
!2882 = !DILocation(line: 417, column: 27, scope: !2880)
!2883 = !DILocation(line: 417, column: 9, scope: !744)
!2884 = !DILocation(line: 418, column: 25, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !366, line: 417, column: 33)
!2886 = !DILocation(line: 418, column: 9, scope: !2885)
!2887 = !DILocation(line: 420, column: 9, scope: !2885)
!2888 = !DILocation(line: 423, column: 13, scope: !744)
!2889 = !DILocation(line: 423, column: 19, scope: !744)
!2890 = !DILocation(line: 423, column: 11, scope: !744)
!2891 = !DILocation(line: 424, column: 13, scope: !744)
!2892 = !DILocation(line: 424, column: 19, scope: !744)
!2893 = !DILocation(line: 424, column: 11, scope: !744)
!2894 = !DILocation(line: 425, column: 5, scope: !744)
!2895 = !DILocation(line: 425, column: 11, scope: !744)
!2896 = !DILocation(line: 425, column: 23, scope: !744)
!2897 = !DILocation(line: 426, column: 5, scope: !744)
!2898 = !DILocation(line: 426, column: 11, scope: !744)
!2899 = !DILocation(line: 426, column: 23, scope: !744)
!2900 = !DILocation(line: 427, column: 27, scope: !744)
!2901 = !DILocation(line: 427, column: 33, scope: !744)
!2902 = !DILocation(line: 427, column: 5, scope: !744)
!2903 = !DILocation(line: 428, column: 32, scope: !744)
!2904 = !DILocation(line: 428, column: 39, scope: !744)
!2905 = !DILocation(line: 428, column: 12, scope: !744)
!2906 = !DILocation(line: 428, column: 5, scope: !744)
!2907 = !DILocation(line: 429, column: 1, scope: !744)
!2908 = !DILocation(line: 1033, column: 44, scope: !761)
!2909 = !DILocation(line: 1033, column: 60, scope: !761)
!2910 = !DILocation(line: 1035, column: 5, scope: !761)
!2911 = !DILocation(line: 1035, column: 15, scope: !761)
!2912 = !DILocation(line: 1035, column: 22, scope: !761)
!2913 = !DILocation(line: 1035, column: 29, scope: !761)
!2914 = !DILocation(line: 1036, column: 5, scope: !761)
!2915 = !DILocation(line: 1036, column: 23, scope: !761)
!2916 = !DILocation(line: 1037, column: 5, scope: !761)
!2917 = !DILocation(line: 1037, column: 10, scope: !761)
!2918 = !DILocation(line: 1039, column: 28, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1039, column: 9)
!2920 = !DILocation(line: 1039, column: 10, scope: !2919)
!2921 = !DILocation(line: 1039, column: 9, scope: !761)
!2922 = !DILocation(line: 1041, column: 9, scope: !2919)
!2923 = !DILocation(line: 1042, column: 27, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1042, column: 9)
!2925 = !DILocation(line: 1042, column: 10, scope: !2924)
!2926 = !DILocation(line: 1042, column: 9, scope: !761)
!2927 = !DILocation(line: 1043, column: 25, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2924, file: !366, line: 1042, column: 34)
!2929 = !DILocation(line: 1043, column: 9, scope: !2928)
!2930 = !DILocation(line: 1045, column: 9, scope: !2928)
!2931 = !DILocation(line: 1047, column: 27, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1047, column: 9)
!2933 = !DILocation(line: 1047, column: 35, scope: !2932)
!2934 = !DILocation(line: 1047, column: 46, scope: !2932)
!2935 = !{!1083, !1077, i64 168}
!2936 = !DILocation(line: 1047, column: 55, scope: !2932)
!2937 = !DILocation(line: 1047, column: 72, scope: !2932)
!2938 = !DILocation(line: 1047, column: 9, scope: !761)
!2939 = !DILocation(line: 1048, column: 25, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2932, file: !366, line: 1047, column: 79)
!2941 = !DILocation(line: 1048, column: 9, scope: !2940)
!2942 = !DILocation(line: 1050, column: 9, scope: !2940)
!2943 = !DILocation(line: 1052, column: 9, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1052, column: 9)
!2945 = !DILocation(line: 1052, column: 14, scope: !2944)
!2946 = !DILocation(line: 1052, column: 28, scope: !2944)
!2947 = !DILocation(line: 1052, column: 49, scope: !2948)
!2948 = !DILexicalBlockFile(scope: !2944, file: !366, discriminator: 1)
!2949 = !DILocation(line: 1052, column: 57, scope: !2944)
!2950 = !DILocation(line: 1052, column: 68, scope: !2944)
!2951 = !DILocation(line: 1052, column: 77, scope: !2944)
!2952 = !DILocation(line: 1052, column: 94, scope: !2944)
!2953 = !DILocation(line: 1052, column: 9, scope: !761)
!2954 = !DILocation(line: 1053, column: 25, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2944, file: !366, line: 1052, column: 101)
!2956 = !DILocation(line: 1053, column: 9, scope: !2955)
!2957 = !DILocation(line: 1055, column: 9, scope: !2955)
!2958 = !DILocation(line: 1057, column: 127, scope: !761)
!2959 = !DILocation(line: 1057, column: 106, scope: !761)
!2960 = !DILocation(line: 1057, column: 10, scope: !761)
!2961 = !DILocation(line: 1058, column: 9, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1058, column: 9)
!2963 = !DILocation(line: 1058, column: 14, scope: !2962)
!2964 = !DILocation(line: 1058, column: 9, scope: !761)
!2965 = !DILocation(line: 1059, column: 16, scope: !2962)
!2966 = !DILocation(line: 1059, column: 9, scope: !2962)
!2967 = !DILocation(line: 1060, column: 54, scope: !771)
!2968 = !DILocation(line: 1060, column: 90, scope: !771)
!2969 = !DILocation(line: 1060, column: 128, scope: !771)
!2970 = !DILocation(line: 1060, column: 159, scope: !771)
!2971 = !DILocation(line: 1060, column: 167, scope: !771)
!2972 = !DILocation(line: 1060, column: 196, scope: !771)
!2973 = !DILocation(line: 1060, column: 213, scope: !771)
!2974 = !DILocation(line: 1060, column: 225, scope: !771)
!2975 = !DILocation(line: 1060, column: 233, scope: !771)
!2976 = !DILocation(line: 1060, column: 250, scope: !771)
!2977 = !DILocation(line: 1060, column: 310, scope: !771)
!2978 = !DILocation(line: 1060, column: 322, scope: !771)
!2979 = !DILocation(line: 1060, column: 284, scope: !771)
!2980 = !DILocation(line: 1060, column: 339, scope: !771)
!2981 = !DILocation(line: 1060, column: 332, scope: !771)
!2982 = !DILocation(line: 1060, column: 441, scope: !2983)
!2983 = !DILexicalBlockFile(scope: !2984, file: !366, discriminator: 4)
!2984 = !DILexicalBlockFile(scope: !2985, file: !366, discriminator: 3)
!2985 = !DILexicalBlockFile(scope: !2986, file: !366, discriminator: 2)
!2986 = distinct !DILexicalBlock(scope: !771, file: !366, line: 1060, column: 346)
!2987 = !DILocation(line: 1060, column: 492, scope: !2986)
!2988 = !DILocation(line: 1060, column: 508, scope: !2989)
!2989 = !DILexicalBlockFile(scope: !2986, file: !366, discriminator: 1)
!2990 = !DILocation(line: 1060, column: 527, scope: !2991)
!2991 = !DILexicalBlockFile(scope: !2992, file: !366, discriminator: 6)
!2992 = !DILexicalBlockFile(scope: !771, file: !366, discriminator: 5)
!2993 = !DILocation(line: 1060, column: 526, scope: !771)
!2994 = !DILocation(line: 1060, column: 524, scope: !771)
!2995 = !DILocation(line: 1060, column: 549, scope: !771)
!2996 = !DILocation(line: 1060, column: 542, scope: !771)
!2997 = !DILocation(line: 1060, column: 651, scope: !2998)
!2998 = !DILexicalBlockFile(scope: !2999, file: !366, discriminator: 10)
!2999 = !DILexicalBlockFile(scope: !3000, file: !366, discriminator: 9)
!3000 = !DILexicalBlockFile(scope: !3001, file: !366, discriminator: 8)
!3001 = distinct !DILexicalBlock(scope: !771, file: !366, line: 1060, column: 556)
!3002 = !DILocation(line: 1060, column: 702, scope: !3001)
!3003 = !DILocation(line: 1060, column: 718, scope: !3004)
!3004 = !DILexicalBlockFile(scope: !3001, file: !366, discriminator: 7)
!3005 = !DILocation(line: 1060, column: 729, scope: !3006)
!3006 = !DILexicalBlockFile(scope: !3007, file: !366, discriminator: 12)
!3007 = !DILexicalBlockFile(scope: !771, file: !366, discriminator: 11)
!3008 = !DILocation(line: 1060, column: 725, scope: !3001)
!3009 = !DILocation(line: 1060, column: 737, scope: !761)
!3010 = !DILocation(line: 1060, column: 737, scope: !771)
!3011 = !DILocation(line: 1060, column: 21, scope: !761)
!3012 = !DILocation(line: 1060, column: 742, scope: !761)
!3013 = !DILocation(line: 1060, column: 5, scope: !761)
!3014 = !DILocation(line: 1060, column: 11, scope: !761)
!3015 = !DILocation(line: 1060, column: 18, scope: !761)
!3016 = !{!3017, !1046, i64 0}
!3017 = !{!"bootstate", !1046, i64 0, !1046, i64 8, !1046, i64 16, !1046, i64 24, !1046, i64 32}
!3018 = !DILocation(line: 1061, column: 18, scope: !761)
!3019 = !DILocation(line: 1061, column: 5, scope: !761)
!3020 = !DILocation(line: 1061, column: 11, scope: !761)
!3021 = !DILocation(line: 1061, column: 16, scope: !761)
!3022 = !{!3017, !1046, i64 8}
!3023 = !DILocation(line: 1062, column: 18, scope: !761)
!3024 = !DILocation(line: 1062, column: 5, scope: !761)
!3025 = !DILocation(line: 1062, column: 11, scope: !761)
!3026 = !DILocation(line: 1062, column: 16, scope: !761)
!3027 = !{!3017, !1046, i64 16}
!3028 = !DILocation(line: 1063, column: 18, scope: !761)
!3029 = !DILocation(line: 1063, column: 5, scope: !761)
!3030 = !DILocation(line: 1063, column: 11, scope: !761)
!3031 = !DILocation(line: 1063, column: 16, scope: !761)
!3032 = !{!3017, !1046, i64 24}
!3033 = !DILocation(line: 1064, column: 44, scope: !761)
!3034 = !DILocation(line: 1064, column: 50, scope: !761)
!3035 = !DILocation(line: 1064, column: 20, scope: !761)
!3036 = !DILocation(line: 1064, column: 5, scope: !761)
!3037 = !DILocation(line: 1064, column: 11, scope: !761)
!3038 = !DILocation(line: 1064, column: 18, scope: !761)
!3039 = !{!3017, !1046, i64 32}
!3040 = !DILocation(line: 1065, column: 9, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !761, file: !366, line: 1065, column: 9)
!3042 = !DILocation(line: 1065, column: 15, scope: !3041)
!3043 = !DILocation(line: 1065, column: 22, scope: !3041)
!3044 = !DILocation(line: 1065, column: 9, scope: !761)
!3045 = !DILocation(line: 1066, column: 20, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3041, file: !366, line: 1065, column: 37)
!3047 = !DILocation(line: 1066, column: 9, scope: !3046)
!3048 = !DILocation(line: 1067, column: 16, scope: !3046)
!3049 = !DILocation(line: 1067, column: 9, scope: !3046)
!3050 = !DILocation(line: 1069, column: 21, scope: !761)
!3051 = !DILocation(line: 1069, column: 29, scope: !761)
!3052 = !DILocation(line: 1069, column: 38, scope: !761)
!3053 = !DILocation(line: 1070, column: 21, scope: !761)
!3054 = !DILocation(line: 1070, column: 29, scope: !761)
!3055 = !DILocation(line: 1070, column: 38, scope: !761)
!3056 = !DILocation(line: 1071, column: 5, scope: !761)
!3057 = !DILocation(line: 1071, column: 10, scope: !3058)
!3058 = !DILexicalBlockFile(scope: !784, file: !366, discriminator: 1)
!3059 = !DILocation(line: 1071, column: 20, scope: !784)
!3060 = !DILocation(line: 1071, column: 51, scope: !784)
!3061 = !DILocation(line: 1071, column: 62, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !784, file: !366, line: 1071, column: 62)
!3063 = !DILocation(line: 1071, column: 78, scope: !3062)
!3064 = !DILocation(line: 1071, column: 62, scope: !784)
!3065 = !DILocation(line: 1071, column: 109, scope: !3066)
!3066 = !DILexicalBlockFile(scope: !3062, file: !366, discriminator: 2)
!3067 = !DILocation(line: 1071, column: 128, scope: !3062)
!3068 = !DILocation(line: 1071, column: 137, scope: !3062)
!3069 = !DILocation(line: 1071, column: 93, scope: !3062)
!3070 = !DILocation(line: 1071, column: 142, scope: !3071)
!3071 = !DILexicalBlockFile(scope: !3072, file: !366, discriminator: 4)
!3072 = !DILexicalBlockFile(scope: !761, file: !366, discriminator: 3)
!3073 = !DILocation(line: 1071, column: 142, scope: !784)
!3074 = !DILocation(line: 1071, column: 142, scope: !3075)
!3075 = !DILexicalBlockFile(scope: !784, file: !366, discriminator: 5)
!3076 = !DILocation(line: 1072, column: 5, scope: !761)
!3077 = !DILocation(line: 1073, column: 60, scope: !761)
!3078 = !DILocation(line: 1073, column: 52, scope: !761)
!3079 = !DILocation(line: 1073, column: 13, scope: !761)
!3080 = !DILocation(line: 1073, column: 11, scope: !761)
!3081 = !DILocation(line: 1074, column: 9, scope: !788)
!3082 = !DILocation(line: 1074, column: 15, scope: !788)
!3083 = !DILocation(line: 1074, column: 9, scope: !761)
!3084 = !DILocation(line: 1075, column: 25, scope: !787)
!3085 = !DILocation(line: 1075, column: 9, scope: !787)
!3086 = !DILocation(line: 1076, column: 9, scope: !787)
!3087 = !DILocation(line: 1076, column: 14, scope: !3088)
!3088 = !DILexicalBlockFile(scope: !786, file: !366, discriminator: 1)
!3089 = !DILocation(line: 1076, column: 24, scope: !786)
!3090 = !DILocation(line: 1076, column: 54, scope: !786)
!3091 = !DILocation(line: 1076, column: 69, scope: !3092)
!3092 = distinct !DILexicalBlock(scope: !786, file: !366, line: 1076, column: 66)
!3093 = !DILocation(line: 1076, column: 86, scope: !3092)
!3094 = !DILocation(line: 1076, column: 66, scope: !3092)
!3095 = !DILocation(line: 1076, column: 96, scope: !3092)
!3096 = !DILocation(line: 1076, column: 66, scope: !786)
!3097 = !DILocation(line: 1076, column: 66, scope: !3098)
!3098 = !DILexicalBlockFile(scope: !786, file: !366, discriminator: 2)
!3099 = !DILocation(line: 1076, column: 127, scope: !3100)
!3100 = !DILexicalBlockFile(scope: !3092, file: !366, discriminator: 3)
!3101 = !DILocation(line: 1076, column: 145, scope: !3092)
!3102 = !DILocation(line: 1076, column: 155, scope: !3092)
!3103 = !DILocation(line: 1076, column: 180, scope: !3092)
!3104 = !DILocation(line: 1076, column: 111, scope: !3092)
!3105 = !DILocation(line: 1076, column: 199, scope: !3106)
!3106 = !DILexicalBlockFile(scope: !787, file: !366, discriminator: 4)
!3107 = !DILocation(line: 1076, column: 199, scope: !786)
!3108 = !DILocation(line: 1076, column: 199, scope: !3109)
!3109 = !DILexicalBlockFile(scope: !786, file: !366, discriminator: 5)
!3110 = !DILocation(line: 1077, column: 9, scope: !787)
!3111 = !DILocation(line: 1077, column: 14, scope: !3112)
!3112 = !DILexicalBlockFile(scope: !790, file: !366, discriminator: 1)
!3113 = !DILocation(line: 1077, column: 24, scope: !790)
!3114 = !DILocation(line: 1077, column: 54, scope: !790)
!3115 = !DILocation(line: 1077, column: 69, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !790, file: !366, line: 1077, column: 66)
!3117 = !DILocation(line: 1077, column: 86, scope: !3116)
!3118 = !DILocation(line: 1077, column: 66, scope: !3116)
!3119 = !DILocation(line: 1077, column: 96, scope: !3116)
!3120 = !DILocation(line: 1077, column: 66, scope: !790)
!3121 = !DILocation(line: 1077, column: 66, scope: !3122)
!3122 = !DILexicalBlockFile(scope: !790, file: !366, discriminator: 2)
!3123 = !DILocation(line: 1077, column: 127, scope: !3124)
!3124 = !DILexicalBlockFile(scope: !3116, file: !366, discriminator: 3)
!3125 = !DILocation(line: 1077, column: 145, scope: !3116)
!3126 = !DILocation(line: 1077, column: 155, scope: !3116)
!3127 = !DILocation(line: 1077, column: 180, scope: !3116)
!3128 = !DILocation(line: 1077, column: 111, scope: !3116)
!3129 = !DILocation(line: 1077, column: 199, scope: !3106)
!3130 = !DILocation(line: 1077, column: 199, scope: !790)
!3131 = !DILocation(line: 1077, column: 199, scope: !3132)
!3132 = !DILexicalBlockFile(scope: !790, file: !366, discriminator: 5)
!3133 = !DILocation(line: 1078, column: 9, scope: !787)
!3134 = !DILocation(line: 1078, column: 14, scope: !3135)
!3135 = !DILexicalBlockFile(scope: !792, file: !366, discriminator: 1)
!3136 = !DILocation(line: 1078, column: 24, scope: !792)
!3137 = !DILocation(line: 1078, column: 55, scope: !792)
!3138 = !DILocation(line: 1078, column: 66, scope: !795)
!3139 = !DILocation(line: 1078, column: 82, scope: !795)
!3140 = !DILocation(line: 1078, column: 66, scope: !792)
!3141 = !DILocation(line: 1078, column: 97, scope: !3142)
!3142 = !DILexicalBlockFile(scope: !795, file: !366, discriminator: 2)
!3143 = !DILocation(line: 1078, column: 102, scope: !3144)
!3144 = !DILexicalBlockFile(scope: !794, file: !366, discriminator: 4)
!3145 = !DILocation(line: 1078, column: 112, scope: !794)
!3146 = !DILocation(line: 1078, column: 142, scope: !794)
!3147 = !DILocation(line: 1078, column: 168, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !794, file: !366, line: 1078, column: 165)
!3149 = !DILocation(line: 1078, column: 185, scope: !3148)
!3150 = !DILocation(line: 1078, column: 165, scope: !3148)
!3151 = !DILocation(line: 1078, column: 195, scope: !3148)
!3152 = !DILocation(line: 1078, column: 165, scope: !794)
!3153 = !DILocation(line: 1078, column: 165, scope: !3154)
!3154 = !DILexicalBlockFile(scope: !794, file: !366, discriminator: 5)
!3155 = !DILocation(line: 1078, column: 226, scope: !3156)
!3156 = !DILexicalBlockFile(scope: !3148, file: !366, discriminator: 6)
!3157 = !DILocation(line: 1078, column: 244, scope: !3148)
!3158 = !DILocation(line: 1078, column: 254, scope: !3148)
!3159 = !DILocation(line: 1078, column: 279, scope: !3148)
!3160 = !DILocation(line: 1078, column: 210, scope: !3148)
!3161 = !DILocation(line: 1078, column: 298, scope: !3162)
!3162 = !DILexicalBlockFile(scope: !795, file: !366, discriminator: 7)
!3163 = !DILocation(line: 1078, column: 298, scope: !794)
!3164 = !DILocation(line: 1078, column: 298, scope: !3165)
!3165 = !DILexicalBlockFile(scope: !794, file: !366, discriminator: 8)
!3166 = !DILocation(line: 1078, column: 298, scope: !3167)
!3167 = !DILexicalBlockFile(scope: !794, file: !366, discriminator: 9)
!3168 = !DILocation(line: 1078, column: 311, scope: !3169)
!3169 = !DILexicalBlockFile(scope: !3170, file: !366, discriminator: 10)
!3170 = !DILexicalBlockFile(scope: !787, file: !366, discriminator: 3)
!3171 = !DILocation(line: 1078, column: 311, scope: !792)
!3172 = !DILocation(line: 1078, column: 311, scope: !3173)
!3173 = !DILexicalBlockFile(scope: !792, file: !366, discriminator: 11)
!3174 = !DILocation(line: 1079, column: 29, scope: !787)
!3175 = !DILocation(line: 1079, column: 35, scope: !787)
!3176 = !DILocation(line: 1079, column: 9, scope: !787)
!3177 = !DILocation(line: 1080, column: 20, scope: !787)
!3178 = !DILocation(line: 1080, column: 9, scope: !787)
!3179 = !DILocation(line: 1081, column: 9, scope: !787)
!3180 = !DILocation(line: 1083, column: 28, scope: !761)
!3181 = !DILocation(line: 1083, column: 12, scope: !761)
!3182 = !DILocation(line: 1083, column: 5, scope: !761)
!3183 = !DILocation(line: 1084, column: 1, scope: !761)
!3184 = !DILocation(line: 1129, column: 41, scope: !838)
!3185 = !DILocation(line: 1131, column: 25, scope: !838)
!3186 = !DILocation(line: 1131, column: 12, scope: !838)
!3187 = !DILocation(line: 1131, column: 5, scope: !838)
!3188 = !DILocation(line: 1098, column: 39, scope: !850)
!3189 = !DILocation(line: 1100, column: 19, scope: !850)
!3190 = !DILocation(line: 1100, column: 5, scope: !850)
!3191 = !DILocation(line: 1101, column: 5, scope: !850)
!3192 = !DILocation(line: 1112, column: 43, scope: !853)
!3193 = !DILocation(line: 1114, column: 5, scope: !853)
!3194 = !DILocation(line: 1115, column: 51, scope: !853)
!3195 = !DILocation(line: 1116, column: 5, scope: !853)
!3196 = !DILocation(line: 1141, column: 28, scope: !856)
!3197 = !DILocation(line: 1143, column: 5, scope: !856)
!3198 = !DILocation(line: 1143, column: 10, scope: !856)
!3199 = !DILocation(line: 1144, column: 13, scope: !856)
!3200 = !DILocation(line: 1144, column: 11, scope: !856)
!3201 = !DILocation(line: 1145, column: 9, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !856, file: !366, line: 1145, column: 9)
!3203 = !DILocation(line: 1145, column: 15, scope: !3202)
!3204 = !DILocation(line: 1145, column: 9, scope: !856)
!3205 = !DILocation(line: 1146, column: 25, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3202, file: !366, line: 1145, column: 22)
!3207 = !DILocation(line: 1146, column: 9, scope: !3206)
!3208 = !DILocation(line: 1147, column: 9, scope: !3206)
!3209 = !DILocation(line: 1149, column: 28, scope: !856)
!3210 = !DILocation(line: 1149, column: 12, scope: !856)
!3211 = !DILocation(line: 1149, column: 5, scope: !856)
!3212 = !DILocation(line: 1150, column: 1, scope: !856)
!3213 = !DILocation(line: 1164, column: 25, scope: !860)
!3214 = !DILocation(line: 1166, column: 28, scope: !860)
!3215 = !DILocation(line: 1166, column: 12, scope: !860)
!3216 = !DILocation(line: 1166, column: 5, scope: !860)
!3217 = !DILocation(line: 1242, column: 29, scope: !863)
!3218 = !DILocation(line: 1242, column: 45, scope: !863)
!3219 = !DILocation(line: 1244, column: 5, scope: !863)
!3220 = !DILocation(line: 1244, column: 12, scope: !863)
!3221 = !DILocation(line: 1245, column: 5, scope: !863)
!3222 = !DILocation(line: 1245, column: 16, scope: !863)
!3223 = !DILocation(line: 1246, column: 5, scope: !863)
!3224 = !DILocation(line: 1246, column: 9, scope: !863)
!3225 = !DILocation(line: 1248, column: 27, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !863, file: !366, line: 1248, column: 9)
!3227 = !DILocation(line: 1248, column: 10, scope: !3226)
!3228 = !DILocation(line: 1248, column: 9, scope: !863)
!3229 = !DILocation(line: 1249, column: 9, scope: !3226)
!3230 = !DILocation(line: 1251, column: 9, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !863, file: !366, line: 1251, column: 9)
!3232 = !DILocation(line: 1251, column: 18, scope: !3231)
!3233 = !DILocation(line: 1251, column: 9, scope: !863)
!3234 = !DILocation(line: 1252, column: 25, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3231, file: !366, line: 1251, column: 23)
!3236 = !DILocation(line: 1252, column: 9, scope: !3235)
!3237 = !DILocation(line: 1254, column: 9, scope: !3235)
!3238 = !DILocation(line: 1257, column: 16, scope: !863)
!3239 = !DILocation(line: 1257, column: 14, scope: !863)
!3240 = !DILocation(line: 1259, column: 42, scope: !863)
!3241 = !DILocation(line: 1259, column: 10, scope: !863)
!3242 = !DILocation(line: 1259, column: 8, scope: !863)
!3243 = !DILocation(line: 1260, column: 9, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !863, file: !366, line: 1260, column: 9)
!3245 = !DILocation(line: 1260, column: 12, scope: !3244)
!3246 = !DILocation(line: 1260, column: 9, scope: !863)
!3247 = !DILocation(line: 1261, column: 22, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3244, file: !366, line: 1260, column: 19)
!3249 = !DILocation(line: 1263, column: 22, scope: !3248)
!3250 = !DILocation(line: 1261, column: 9, scope: !3248)
!3251 = !DILocation(line: 1264, column: 9, scope: !3248)
!3252 = !DILocation(line: 1266, column: 9, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !863, file: !366, line: 1266, column: 9)
!3254 = !DILocation(line: 1266, column: 12, scope: !3253)
!3255 = !DILocation(line: 1266, column: 9, scope: !863)
!3256 = !DILocation(line: 1267, column: 25, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3253, file: !366, line: 1266, column: 19)
!3258 = !DILocation(line: 1267, column: 9, scope: !3257)
!3259 = !DILocation(line: 1269, column: 9, scope: !3257)
!3260 = !DILocation(line: 1272, column: 44, scope: !863)
!3261 = !DILocation(line: 1272, column: 12, scope: !863)
!3262 = !DILocation(line: 1272, column: 5, scope: !863)
!3263 = !DILocation(line: 1273, column: 1, scope: !863)
!3264 = !DILocation(line: 1203, column: 32, scope: !870)
!3265 = !DILocation(line: 1205, column: 5, scope: !870)
!3266 = !DILocation(line: 1205, column: 15, scope: !870)
!3267 = !DILocation(line: 1206, column: 5, scope: !870)
!3268 = !DILocation(line: 1206, column: 20, scope: !870)
!3269 = !DILocation(line: 1206, column: 29, scope: !870)
!3270 = !DILocation(line: 1207, column: 5, scope: !870)
!3271 = !DILocation(line: 1207, column: 17, scope: !870)
!3272 = !DILocation(line: 1209, column: 9, scope: !879)
!3273 = !DILocation(line: 1209, column: 17, scope: !879)
!3274 = !{!1596, !1046, i64 184}
!3275 = !DILocation(line: 1209, column: 32, scope: !879)
!3276 = !DILocation(line: 1209, column: 9, scope: !870)
!3277 = !DILocation(line: 1213, column: 27, scope: !878)
!3278 = !DILocation(line: 1213, column: 35, scope: !878)
!3279 = !DILocation(line: 1213, column: 14, scope: !878)
!3280 = !DILocation(line: 1213, column: 12, scope: !878)
!3281 = !DILocation(line: 1214, column: 9, scope: !878)
!3282 = !DILocation(line: 1214, column: 17, scope: !878)
!3283 = !DILocation(line: 1214, column: 27, scope: !878)
!3284 = !{!1596, !1046, i64 176}
!3285 = !DILocation(line: 1215, column: 9, scope: !878)
!3286 = !DILocation(line: 1215, column: 17, scope: !878)
!3287 = !DILocation(line: 1215, column: 32, scope: !878)
!3288 = !DILocation(line: 1216, column: 9, scope: !878)
!3289 = !DILocation(line: 1216, column: 14, scope: !3290)
!3290 = !DILexicalBlockFile(scope: !877, file: !366, discriminator: 1)
!3291 = !DILocation(line: 1216, column: 24, scope: !877)
!3292 = !DILocation(line: 1216, column: 54, scope: !877)
!3293 = !DILocation(line: 1216, column: 67, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !877, file: !366, line: 1216, column: 64)
!3295 = !DILocation(line: 1216, column: 84, scope: !3294)
!3296 = !DILocation(line: 1216, column: 64, scope: !3294)
!3297 = !DILocation(line: 1216, column: 94, scope: !3294)
!3298 = !DILocation(line: 1216, column: 64, scope: !877)
!3299 = !DILocation(line: 1216, column: 64, scope: !3300)
!3300 = !DILexicalBlockFile(scope: !877, file: !366, discriminator: 2)
!3301 = !DILocation(line: 1216, column: 125, scope: !3302)
!3302 = !DILexicalBlockFile(scope: !3294, file: !366, discriminator: 3)
!3303 = !DILocation(line: 1216, column: 143, scope: !3294)
!3304 = !DILocation(line: 1216, column: 153, scope: !3294)
!3305 = !DILocation(line: 1216, column: 178, scope: !3294)
!3306 = !DILocation(line: 1216, column: 109, scope: !3294)
!3307 = !DILocation(line: 1216, column: 197, scope: !3308)
!3308 = !DILexicalBlockFile(scope: !878, file: !366, discriminator: 4)
!3309 = !DILocation(line: 1216, column: 197, scope: !877)
!3310 = !DILocation(line: 1216, column: 197, scope: !3311)
!3311 = !DILexicalBlockFile(scope: !877, file: !366, discriminator: 5)
!3312 = !DILocation(line: 1217, column: 5, scope: !878)
!3313 = !DILocation(line: 1218, column: 12, scope: !870)
!3314 = !DILocation(line: 1218, column: 10, scope: !870)
!3315 = !DILocation(line: 1219, column: 9, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !870, file: !366, line: 1219, column: 9)
!3317 = !DILocation(line: 1219, column: 14, scope: !3316)
!3318 = !DILocation(line: 1219, column: 9, scope: !870)
!3319 = !DILocation(line: 1220, column: 9, scope: !3316)
!3320 = !DILocation(line: 1223, column: 40, scope: !870)
!3321 = !DILocation(line: 1223, column: 27, scope: !870)
!3322 = !DILocation(line: 1223, column: 10, scope: !870)
!3323 = !DILocation(line: 1223, column: 8, scope: !870)
!3324 = !DILocation(line: 1224, column: 9, scope: !883)
!3325 = !DILocation(line: 1224, column: 12, scope: !883)
!3326 = !DILocation(line: 1224, column: 9, scope: !870)
!3327 = !DILocation(line: 1225, column: 9, scope: !882)
!3328 = !DILocation(line: 1225, column: 14, scope: !3329)
!3329 = !DILexicalBlockFile(scope: !881, file: !366, discriminator: 1)
!3330 = !DILocation(line: 1225, column: 24, scope: !881)
!3331 = !DILocation(line: 1225, column: 54, scope: !881)
!3332 = !DILocation(line: 1225, column: 41, scope: !881)
!3333 = !DILocation(line: 1225, column: 69, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !881, file: !366, line: 1225, column: 66)
!3335 = !DILocation(line: 1225, column: 86, scope: !3334)
!3336 = !DILocation(line: 1225, column: 66, scope: !3334)
!3337 = !DILocation(line: 1225, column: 96, scope: !3334)
!3338 = !DILocation(line: 1225, column: 66, scope: !881)
!3339 = !DILocation(line: 1225, column: 66, scope: !3340)
!3340 = !DILexicalBlockFile(scope: !881, file: !366, discriminator: 2)
!3341 = !DILocation(line: 1225, column: 127, scope: !3342)
!3342 = !DILexicalBlockFile(scope: !3334, file: !366, discriminator: 3)
!3343 = !DILocation(line: 1225, column: 145, scope: !3334)
!3344 = !DILocation(line: 1225, column: 155, scope: !3334)
!3345 = !DILocation(line: 1225, column: 180, scope: !3334)
!3346 = !DILocation(line: 1225, column: 111, scope: !3334)
!3347 = !DILocation(line: 1225, column: 199, scope: !3348)
!3348 = !DILexicalBlockFile(scope: !882, file: !366, discriminator: 4)
!3349 = !DILocation(line: 1225, column: 199, scope: !881)
!3350 = !DILocation(line: 1225, column: 199, scope: !3351)
!3351 = !DILexicalBlockFile(scope: !881, file: !366, discriminator: 5)
!3352 = !DILocation(line: 1226, column: 9, scope: !882)
!3353 = !DILocation(line: 1228, column: 39, scope: !870)
!3354 = !DILocation(line: 1228, column: 30, scope: !870)
!3355 = !DILocation(line: 1228, column: 5, scope: !870)
!3356 = !DILocation(line: 1228, column: 13, scope: !870)
!3357 = !DILocation(line: 1228, column: 28, scope: !870)
!3358 = !DILocation(line: 1229, column: 5, scope: !870)
!3359 = !DILocation(line: 1229, column: 13, scope: !870)
!3360 = !DILocation(line: 1229, column: 23, scope: !870)
!3361 = !DILocation(line: 1230, column: 25, scope: !870)
!3362 = !DILocation(line: 1230, column: 12, scope: !870)
!3363 = !DILocation(line: 1230, column: 5, scope: !870)
!3364 = !DILocation(line: 1231, column: 1, scope: !870)
!3365 = !DILocation(line: 59, column: 48, scope: !796)
!3366 = !DILocation(line: 59, column: 74, scope: !796)
!3367 = !DILocation(line: 61, column: 11, scope: !796)
!3368 = !DILocation(line: 62, column: 12, scope: !796)
!3369 = !DILocation(line: 62, column: 5, scope: !796)
!3370 = !DILocation(line: 67, column: 9, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !796, file: !10, line: 62, column: 19)
!3372 = !DILocation(line: 70, column: 9, scope: !3371)
!3373 = !DILocation(line: 72, column: 12, scope: !796)
!3374 = !DILocation(line: 72, column: 5, scope: !796)
!3375 = !DILocation(line: 77, column: 9, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !796, file: !10, line: 72, column: 19)
!3377 = !DILocation(line: 80, column: 9, scope: !3376)
!3378 = !DILocation(line: 82, column: 1, scope: !796)
!3379 = !DILocation(line: 51, column: 42, scope: !805)
!3380 = !DILocation(line: 53, column: 9, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !805, file: !10, line: 53, column: 9)
!3382 = !DILocation(line: 53, column: 15, scope: !3381)
!3383 = !DILocation(line: 53, column: 9, scope: !805)
!3384 = !DILocation(line: 54, column: 9, scope: !3381)
!3385 = !{i32 154985}
!3386 = !DILocation(line: 55, column: 1, scope: !805)
!3387 = !DILocation(line: 44, column: 42, scope: !810)
!3388 = !DILocation(line: 46, column: 9, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !810, file: !10, line: 46, column: 9)
!3390 = !DILocation(line: 46, column: 15, scope: !3389)
!3391 = !DILocation(line: 46, column: 9, scope: !810)
!3392 = !DILocation(line: 47, column: 9, scope: !3389)
!3393 = !{i32 154825}
!3394 = !DILocation(line: 48, column: 1, scope: !810)
!3395 = !DILocation(line: 988, column: 19, scope: !813)
!3396 = !DILocation(line: 990, column: 5, scope: !813)
!3397 = !DILocation(line: 990, column: 23, scope: !813)
!3398 = !DILocation(line: 990, column: 51, scope: !813)
!3399 = !DILocation(line: 990, column: 30, scope: !813)
!3400 = !DILocation(line: 991, column: 5, scope: !813)
!3401 = !DILocation(line: 991, column: 20, scope: !813)
!3402 = !DILocation(line: 992, column: 5, scope: !813)
!3403 = !DILocation(line: 992, column: 15, scope: !813)
!3404 = !DILocation(line: 994, column: 14, scope: !813)
!3405 = !DILocation(line: 994, column: 20, scope: !813)
!3406 = !DILocation(line: 994, column: 12, scope: !813)
!3407 = !DILocation(line: 995, column: 25, scope: !813)
!3408 = !DILocation(line: 995, column: 5, scope: !813)
!3409 = !DILocation(line: 995, column: 13, scope: !813)
!3410 = !DILocation(line: 995, column: 23, scope: !813)
!3411 = !{!1596, !1077, i64 152}
!3412 = !DILocation(line: 996, column: 25, scope: !813)
!3413 = !DILocation(line: 996, column: 5, scope: !813)
!3414 = !DILocation(line: 997, column: 26, scope: !813)
!3415 = !DILocation(line: 997, column: 5, scope: !813)
!3416 = !DILocation(line: 998, column: 15, scope: !813)
!3417 = !DILocation(line: 1000, column: 9, scope: !813)
!3418 = !DILocation(line: 1000, column: 15, scope: !813)
!3419 = !DILocation(line: 1000, column: 21, scope: !813)
!3420 = !DILocation(line: 1000, column: 27, scope: !813)
!3421 = !DILocation(line: 1000, column: 33, scope: !813)
!3422 = !DILocation(line: 1000, column: 39, scope: !813)
!3423 = !DILocation(line: 999, column: 11, scope: !813)
!3424 = !DILocation(line: 999, column: 9, scope: !813)
!3425 = !DILocation(line: 1001, column: 9, scope: !823)
!3426 = !DILocation(line: 1001, column: 13, scope: !823)
!3427 = !DILocation(line: 1001, column: 9, scope: !813)
!3428 = !DILocation(line: 1002, column: 36, scope: !821)
!3429 = !DILocation(line: 1002, column: 13, scope: !821)
!3430 = !DILocation(line: 1002, column: 13, scope: !822)
!3431 = !DILocation(line: 1003, column: 13, scope: !821)
!3432 = !DILocation(line: 1005, column: 13, scope: !820)
!3433 = !DILocation(line: 1005, column: 23, scope: !820)
!3434 = !DILocation(line: 1006, column: 13, scope: !820)
!3435 = !DILocation(line: 1006, column: 23, scope: !820)
!3436 = !DILocation(line: 1006, column: 29, scope: !820)
!3437 = !DILocation(line: 1006, column: 37, scope: !820)
!3438 = !DILocation(line: 1007, column: 13, scope: !820)
!3439 = !DILocation(line: 1009, column: 13, scope: !820)
!3440 = !DILocation(line: 1010, column: 20, scope: !820)
!3441 = !DILocation(line: 1010, column: 18, scope: !820)
!3442 = !DILocation(line: 1011, column: 17, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !820, file: !366, line: 1011, column: 17)
!3444 = !DILocation(line: 1011, column: 22, scope: !3443)
!3445 = !DILocation(line: 1011, column: 36, scope: !3443)
!3446 = !DILocation(line: 1011, column: 39, scope: !3447)
!3447 = !DILexicalBlockFile(scope: !3443, file: !366, discriminator: 1)
!3448 = !DILocation(line: 1011, column: 44, scope: !3443)
!3449 = !DILocation(line: 1011, column: 17, scope: !820)
!3450 = !DILocation(line: 1012, column: 36, scope: !3443)
!3451 = !DILocation(line: 1012, column: 42, scope: !3443)
!3452 = !DILocation(line: 1012, column: 48, scope: !3443)
!3453 = !DILocation(line: 1012, column: 17, scope: !3443)
!3454 = !DILocation(line: 1014, column: 32, scope: !3443)
!3455 = !DILocation(line: 1014, column: 38, scope: !3443)
!3456 = !DILocation(line: 1014, column: 44, scope: !3443)
!3457 = !DILocation(line: 1014, column: 17, scope: !3443)
!3458 = !DILocation(line: 1015, column: 13, scope: !820)
!3459 = !DILocation(line: 1016, column: 27, scope: !820)
!3460 = !DILocation(line: 1016, column: 32, scope: !820)
!3461 = !DILocation(line: 1016, column: 39, scope: !820)
!3462 = !DILocation(line: 1016, column: 13, scope: !820)
!3463 = !DILocation(line: 1017, column: 13, scope: !820)
!3464 = !DILocation(line: 1018, column: 9, scope: !821)
!3465 = !DILocation(line: 1019, column: 5, scope: !822)
!3466 = !DILocation(line: 1021, column: 9, scope: !823)
!3467 = !DILocation(line: 1021, column: 14, scope: !3468)
!3468 = !DILexicalBlockFile(scope: !828, file: !366, discriminator: 1)
!3469 = !DILocation(line: 1021, column: 24, scope: !828)
!3470 = !DILocation(line: 1021, column: 54, scope: !828)
!3471 = !DILocation(line: 1021, column: 68, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !828, file: !366, line: 1021, column: 65)
!3473 = !DILocation(line: 1021, column: 85, scope: !3472)
!3474 = !DILocation(line: 1021, column: 65, scope: !3472)
!3475 = !DILocation(line: 1021, column: 95, scope: !3472)
!3476 = !DILocation(line: 1021, column: 65, scope: !828)
!3477 = !DILocation(line: 1021, column: 65, scope: !3478)
!3478 = !DILexicalBlockFile(scope: !828, file: !366, discriminator: 2)
!3479 = !DILocation(line: 1021, column: 126, scope: !3480)
!3480 = !DILexicalBlockFile(scope: !3472, file: !366, discriminator: 3)
!3481 = !DILocation(line: 1021, column: 144, scope: !3472)
!3482 = !DILocation(line: 1021, column: 154, scope: !3472)
!3483 = !DILocation(line: 1021, column: 179, scope: !3472)
!3484 = !DILocation(line: 1021, column: 110, scope: !3472)
!3485 = !DILocation(line: 1021, column: 198, scope: !3486)
!3486 = !DILexicalBlockFile(scope: !823, file: !366, discriminator: 4)
!3487 = !DILocation(line: 1021, column: 198, scope: !828)
!3488 = !DILocation(line: 1021, column: 198, scope: !3489)
!3489 = !DILexicalBlockFile(scope: !828, file: !366, discriminator: 5)
!3490 = !DILocation(line: 1022, column: 5, scope: !813)
!3491 = !DILocation(line: 1022, column: 10, scope: !3492)
!3492 = !DILexicalBlockFile(scope: !830, file: !366, discriminator: 1)
!3493 = !DILocation(line: 1022, column: 20, scope: !830)
!3494 = !DILocation(line: 1022, column: 50, scope: !830)
!3495 = !DILocation(line: 1022, column: 56, scope: !830)
!3496 = !DILocation(line: 1022, column: 71, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !830, file: !366, line: 1022, column: 68)
!3498 = !DILocation(line: 1022, column: 88, scope: !3497)
!3499 = !DILocation(line: 1022, column: 68, scope: !3497)
!3500 = !DILocation(line: 1022, column: 98, scope: !3497)
!3501 = !DILocation(line: 1022, column: 68, scope: !830)
!3502 = !DILocation(line: 1022, column: 68, scope: !3503)
!3503 = !DILexicalBlockFile(scope: !830, file: !366, discriminator: 2)
!3504 = !DILocation(line: 1022, column: 129, scope: !3505)
!3505 = !DILexicalBlockFile(scope: !3497, file: !366, discriminator: 3)
!3506 = !DILocation(line: 1022, column: 147, scope: !3497)
!3507 = !DILocation(line: 1022, column: 157, scope: !3497)
!3508 = !DILocation(line: 1022, column: 182, scope: !3497)
!3509 = !DILocation(line: 1022, column: 113, scope: !3497)
!3510 = !DILocation(line: 1022, column: 201, scope: !3511)
!3511 = !DILexicalBlockFile(scope: !813, file: !366, discriminator: 4)
!3512 = !DILocation(line: 1022, column: 201, scope: !830)
!3513 = !DILocation(line: 1022, column: 201, scope: !3514)
!3514 = !DILexicalBlockFile(scope: !830, file: !366, discriminator: 5)
!3515 = !DILocation(line: 1023, column: 5, scope: !813)
!3516 = !DILocation(line: 1023, column: 10, scope: !3517)
!3517 = !DILexicalBlockFile(scope: !832, file: !366, discriminator: 1)
!3518 = !DILocation(line: 1023, column: 20, scope: !832)
!3519 = !DILocation(line: 1023, column: 50, scope: !832)
!3520 = !DILocation(line: 1023, column: 56, scope: !832)
!3521 = !DILocation(line: 1023, column: 71, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !832, file: !366, line: 1023, column: 68)
!3523 = !DILocation(line: 1023, column: 88, scope: !3522)
!3524 = !DILocation(line: 1023, column: 68, scope: !3522)
!3525 = !DILocation(line: 1023, column: 98, scope: !3522)
!3526 = !DILocation(line: 1023, column: 68, scope: !832)
!3527 = !DILocation(line: 1023, column: 68, scope: !3528)
!3528 = !DILexicalBlockFile(scope: !832, file: !366, discriminator: 2)
!3529 = !DILocation(line: 1023, column: 129, scope: !3530)
!3530 = !DILexicalBlockFile(scope: !3522, file: !366, discriminator: 3)
!3531 = !DILocation(line: 1023, column: 147, scope: !3522)
!3532 = !DILocation(line: 1023, column: 157, scope: !3522)
!3533 = !DILocation(line: 1023, column: 182, scope: !3522)
!3534 = !DILocation(line: 1023, column: 113, scope: !3522)
!3535 = !DILocation(line: 1023, column: 201, scope: !3511)
!3536 = !DILocation(line: 1023, column: 201, scope: !832)
!3537 = !DILocation(line: 1023, column: 201, scope: !3538)
!3538 = !DILexicalBlockFile(scope: !832, file: !366, discriminator: 5)
!3539 = !DILocation(line: 1024, column: 5, scope: !813)
!3540 = !DILocation(line: 1024, column: 10, scope: !3541)
!3541 = !DILexicalBlockFile(scope: !834, file: !366, discriminator: 1)
!3542 = !DILocation(line: 1024, column: 20, scope: !834)
!3543 = !DILocation(line: 1024, column: 51, scope: !834)
!3544 = !DILocation(line: 1024, column: 57, scope: !834)
!3545 = !DILocation(line: 1024, column: 68, scope: !837)
!3546 = !DILocation(line: 1024, column: 84, scope: !837)
!3547 = !DILocation(line: 1024, column: 68, scope: !834)
!3548 = !DILocation(line: 1024, column: 99, scope: !3549)
!3549 = !DILexicalBlockFile(scope: !837, file: !366, discriminator: 2)
!3550 = !DILocation(line: 1024, column: 104, scope: !3551)
!3551 = !DILexicalBlockFile(scope: !836, file: !366, discriminator: 4)
!3552 = !DILocation(line: 1024, column: 114, scope: !836)
!3553 = !DILocation(line: 1024, column: 144, scope: !836)
!3554 = !DILocation(line: 1024, column: 170, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !836, file: !366, line: 1024, column: 167)
!3556 = !DILocation(line: 1024, column: 187, scope: !3555)
!3557 = !DILocation(line: 1024, column: 167, scope: !3555)
!3558 = !DILocation(line: 1024, column: 197, scope: !3555)
!3559 = !DILocation(line: 1024, column: 167, scope: !836)
!3560 = !DILocation(line: 1024, column: 167, scope: !3561)
!3561 = !DILexicalBlockFile(scope: !836, file: !366, discriminator: 5)
!3562 = !DILocation(line: 1024, column: 228, scope: !3563)
!3563 = !DILexicalBlockFile(scope: !3555, file: !366, discriminator: 6)
!3564 = !DILocation(line: 1024, column: 246, scope: !3555)
!3565 = !DILocation(line: 1024, column: 256, scope: !3555)
!3566 = !DILocation(line: 1024, column: 281, scope: !3555)
!3567 = !DILocation(line: 1024, column: 212, scope: !3555)
!3568 = !DILocation(line: 1024, column: 300, scope: !3569)
!3569 = !DILexicalBlockFile(scope: !837, file: !366, discriminator: 7)
!3570 = !DILocation(line: 1024, column: 300, scope: !836)
!3571 = !DILocation(line: 1024, column: 300, scope: !3572)
!3572 = !DILexicalBlockFile(scope: !836, file: !366, discriminator: 8)
!3573 = !DILocation(line: 1024, column: 300, scope: !3574)
!3574 = !DILexicalBlockFile(scope: !836, file: !366, discriminator: 9)
!3575 = !DILocation(line: 1024, column: 313, scope: !3576)
!3576 = !DILexicalBlockFile(scope: !3577, file: !366, discriminator: 10)
!3577 = !DILexicalBlockFile(scope: !813, file: !366, discriminator: 3)
!3578 = !DILocation(line: 1024, column: 313, scope: !834)
!3579 = !DILocation(line: 1024, column: 313, scope: !3580)
!3580 = !DILexicalBlockFile(scope: !834, file: !366, discriminator: 11)
!3581 = !DILocation(line: 1025, column: 16, scope: !813)
!3582 = !DILocation(line: 1025, column: 5, scope: !813)
!3583 = !DILocation(line: 1026, column: 15, scope: !813)
!3584 = !DILocation(line: 1027, column: 25, scope: !813)
!3585 = !DILocation(line: 1027, column: 5, scope: !813)
!3586 = !DILocation(line: 1028, column: 5, scope: !813)
!3587 = !DILocation(line: 1029, column: 5, scope: !813)
!3588 = !DILocation(line: 1030, column: 1, scope: !813)
!3589 = !DILocation(line: 547, column: 5, scope: !841)
!3590 = !DILocation(line: 547, column: 17, scope: !841)
!3591 = !DILocation(line: 548, column: 29, scope: !841)
!3592 = !DILocation(line: 548, column: 14, scope: !841)
!3593 = !DILocation(line: 548, column: 10, scope: !841)
!3594 = !DILocation(line: 549, column: 9, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !841, file: !366, line: 549, column: 9)
!3596 = !DILocation(line: 549, column: 14, scope: !3595)
!3597 = !DILocation(line: 549, column: 9, scope: !841)
!3598 = !DILocation(line: 550, column: 9, scope: !3595)
!3599 = !DILocation(line: 551, column: 23, scope: !841)
!3600 = !DILocation(line: 551, column: 5, scope: !841)
!3601 = !DILocation(line: 551, column: 11, scope: !841)
!3602 = !DILocation(line: 551, column: 21, scope: !841)
!3603 = !DILocation(line: 552, column: 5, scope: !841)
!3604 = !DILocation(line: 552, column: 11, scope: !841)
!3605 = !DILocation(line: 552, column: 18, scope: !841)
!3606 = !DILocation(line: 553, column: 5, scope: !841)
!3607 = !DILocation(line: 553, column: 11, scope: !841)
!3608 = !DILocation(line: 553, column: 26, scope: !841)
!3609 = !DILocation(line: 554, column: 9, scope: !849)
!3610 = !DILocation(line: 554, column: 15, scope: !849)
!3611 = !DILocation(line: 554, column: 25, scope: !849)
!3612 = !DILocation(line: 554, column: 9, scope: !841)
!3613 = !DILocation(line: 555, column: 9, scope: !848)
!3614 = !DILocation(line: 555, column: 14, scope: !3615)
!3615 = !DILexicalBlockFile(scope: !847, file: !366, discriminator: 1)
!3616 = !DILocation(line: 555, column: 24, scope: !847)
!3617 = !DILocation(line: 555, column: 54, scope: !847)
!3618 = !DILocation(line: 555, column: 41, scope: !847)
!3619 = !DILocation(line: 555, column: 69, scope: !3620)
!3620 = distinct !DILexicalBlock(scope: !847, file: !366, line: 555, column: 66)
!3621 = !DILocation(line: 555, column: 86, scope: !3620)
!3622 = !DILocation(line: 555, column: 66, scope: !3620)
!3623 = !DILocation(line: 555, column: 96, scope: !3620)
!3624 = !DILocation(line: 555, column: 66, scope: !847)
!3625 = !DILocation(line: 555, column: 66, scope: !3626)
!3626 = !DILexicalBlockFile(scope: !847, file: !366, discriminator: 2)
!3627 = !DILocation(line: 555, column: 127, scope: !3628)
!3628 = !DILexicalBlockFile(scope: !3620, file: !366, discriminator: 3)
!3629 = !DILocation(line: 555, column: 145, scope: !3620)
!3630 = !DILocation(line: 555, column: 155, scope: !3620)
!3631 = !DILocation(line: 555, column: 180, scope: !3620)
!3632 = !DILocation(line: 555, column: 111, scope: !3620)
!3633 = !DILocation(line: 555, column: 199, scope: !3634)
!3634 = !DILexicalBlockFile(scope: !848, file: !366, discriminator: 4)
!3635 = !DILocation(line: 555, column: 199, scope: !847)
!3636 = !DILocation(line: 555, column: 199, scope: !3637)
!3637 = !DILexicalBlockFile(scope: !847, file: !366, discriminator: 5)
!3638 = !DILocation(line: 556, column: 25, scope: !848)
!3639 = !DILocation(line: 556, column: 9, scope: !848)
!3640 = !DILocation(line: 557, column: 9, scope: !848)
!3641 = !DILocation(line: 559, column: 12, scope: !841)
!3642 = !DILocation(line: 559, column: 5, scope: !841)
!3643 = !DILocation(line: 560, column: 1, scope: !841)
!3644 = !DILocation(line: 1182, column: 24, scope: !884)
!3645 = !DILocation(line: 1187, column: 5, scope: !884)
!3646 = !DILocation(line: 1187, column: 15, scope: !884)
!3647 = !DILocation(line: 1187, column: 57, scope: !884)
!3648 = !DILocation(line: 1187, column: 37, scope: !884)
!3649 = !DILocation(line: 1187, column: 63, scope: !884)
!3650 = !DILocation(line: 1187, column: 76, scope: !884)
!3651 = !DILocation(line: 1187, column: 87, scope: !884)
!3652 = !DILocation(line: 1187, column: 22, scope: !884)
!3653 = !DILocation(line: 1187, column: 114, scope: !3654)
!3654 = !DILexicalBlockFile(scope: !884, file: !366, discriminator: 1)
!3655 = !DILocation(line: 1187, column: 94, scope: !884)
!3656 = !DILocation(line: 1187, column: 120, scope: !884)
!3657 = !DILocation(line: 1187, column: 22, scope: !3658)
!3658 = !DILexicalBlockFile(scope: !884, file: !366, discriminator: 2)
!3659 = !DILocation(line: 1187, column: 15, scope: !3660)
!3660 = !DILexicalBlockFile(scope: !3661, file: !366, discriminator: 4)
!3661 = !DILexicalBlockFile(scope: !884, file: !366, discriminator: 3)
!3662 = !DILocation(line: 1188, column: 5, scope: !884)
!3663 = !DILocation(line: 1188, column: 17, scope: !884)
!3664 = !DILocation(line: 1189, column: 9, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !884, file: !366, line: 1189, column: 9)
!3666 = !DILocation(line: 1189, column: 13, scope: !3665)
!3667 = !DILocation(line: 1189, column: 9, scope: !884)
!3668 = !DILocation(line: 1191, column: 31, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3665, file: !366, line: 1189, column: 35)
!3670 = !DILocation(line: 1191, column: 16, scope: !3669)
!3671 = !DILocation(line: 1191, column: 14, scope: !3669)
!3672 = !DILocation(line: 1192, column: 13, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3669, file: !366, line: 1192, column: 13)
!3674 = !DILocation(line: 1192, column: 19, scope: !3673)
!3675 = !DILocation(line: 1192, column: 13, scope: !3669)
!3676 = !DILocation(line: 1193, column: 35, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3673, file: !366, line: 1192, column: 27)
!3678 = !DILocation(line: 1193, column: 41, scope: !3677)
!3679 = !DILocation(line: 1193, column: 13, scope: !3677)
!3680 = !DILocation(line: 1194, column: 13, scope: !3677)
!3681 = !DILocation(line: 1194, column: 19, scope: !3677)
!3682 = !DILocation(line: 1194, column: 26, scope: !3677)
!3683 = !DILocation(line: 1195, column: 9, scope: !3677)
!3684 = !DILocation(line: 1196, column: 5, scope: !3669)
!3685 = !DILocation(line: 1199, column: 5, scope: !884)
!3686 = !DILocation(line: 1199, column: 10, scope: !3687)
!3687 = !DILexicalBlockFile(scope: !890, file: !366, discriminator: 1)
!3688 = !DILocation(line: 1199, column: 20, scope: !890)
!3689 = !DILocation(line: 1199, column: 50, scope: !890)
!3690 = !DILocation(line: 1199, column: 37, scope: !890)
!3691 = !DILocation(line: 1199, column: 63, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !890, file: !366, line: 1199, column: 60)
!3693 = !DILocation(line: 1199, column: 80, scope: !3692)
!3694 = !DILocation(line: 1199, column: 60, scope: !3692)
!3695 = !DILocation(line: 1199, column: 90, scope: !3692)
!3696 = !DILocation(line: 1199, column: 60, scope: !890)
!3697 = !DILocation(line: 1199, column: 60, scope: !3698)
!3698 = !DILexicalBlockFile(scope: !890, file: !366, discriminator: 2)
!3699 = !DILocation(line: 1199, column: 121, scope: !3700)
!3700 = !DILexicalBlockFile(scope: !3692, file: !366, discriminator: 3)
!3701 = !DILocation(line: 1199, column: 139, scope: !3692)
!3702 = !DILocation(line: 1199, column: 149, scope: !3692)
!3703 = !DILocation(line: 1199, column: 174, scope: !3692)
!3704 = !DILocation(line: 1199, column: 105, scope: !3692)
!3705 = !DILocation(line: 1199, column: 193, scope: !3706)
!3706 = !DILexicalBlockFile(scope: !884, file: !366, discriminator: 4)
!3707 = !DILocation(line: 1199, column: 193, scope: !890)
!3708 = !DILocation(line: 1199, column: 193, scope: !3709)
!3709 = !DILexicalBlockFile(scope: !890, file: !366, discriminator: 5)
!3710 = !DILocation(line: 1200, column: 1, scope: !884)
