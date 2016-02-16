; ModuleID = '_threadmodule.o.bc'
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
%struct.lockobject = type { %struct._object, i8*, %struct._object*, i8 }
%struct.timeval = type { i64, i64 }
%struct.rlockobject = type { %struct._object, i8*, i64, i64, %struct._object* }

@localdummytype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), i64 32, i64 0, void (%struct._object*)* bitcast (void (%struct.localdummyobject*)* @localdummy_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 24, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@localtype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.localobject*)* @local_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.localobject*, %struct._object*)* @local_getattro to %struct._object* (%struct._object*, %struct._object*)*), i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.localobject*, %struct._object*, %struct._object*)* @local_setattro to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct.PyBufferProcs* null, i64 279552, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.localobject*, i32 (%struct._object*, i8*)*, i8*)* @local_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (i32 (%struct.localobject*)* @local_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @local_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@Locktype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0), i64 40, i64 0, void (%struct._object*)* bitcast (void (%struct.lockobject*)* @lock_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 262144, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 24, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([9 x %struct.PyMethodDef], [9 x %struct.PyMethodDef]* @lock_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@RLocktype = internal global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.rlockobject*)* @rlock_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.rlockobject*)* @rlock_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([8 x %struct.PyMethodDef], [8 x %struct.PyMethodDef]* @rlock_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* @PyType_GenericAlloc, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @rlock_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@threadmodule = internal global %struct.PyModuleDef { %struct.PyModuleDef_Base { %struct._object { i64 1, %struct._typeobject* null }, %struct._object* ()* null, i64 0, %struct._object* null }, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([137 x i8], [137 x i8]* @thread_doc, i32 0, i32 0), i64 -1, %struct.PyMethodDef* getelementptr inbounds ([12 x %struct.PyMethodDef], [12 x %struct.PyMethodDef]* @thread_methods, i32 0, i32 0), i32 (%struct._object*)* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, void (i8*)* null }, align 8
@.str = private unnamed_addr constant [12 x i8] c"TIMEOUT_MAX\00", align 1
@PyExc_RuntimeError = external global %struct._object*, align 8
@ThreadError = internal unnamed_addr global %struct._object* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@lock_doc = internal global [491 x i8] c"A lock object is a synchronization primitive.  To create a lock,\0Acall the PyThread_allocate_lock() function.  Methods are:\0A\0Aacquire() -- lock the lock, possibly blocking until it can be obtained\0Arelease() -- unlock of the lock\0Alocked() -- test whether the lock is currently locked\0A\0AA lock is not owned by the thread that locked it; another thread may\0Aunlock it.  A thread attempting to lock a lock that it has already locked\0Awill block until another thread unlocks it.  Deadlocks may ensue.\00", align 16
@.str.2 = private unnamed_addr constant [9 x i8] c"LockType\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"RLock\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"_local\00", align 1
@nb_threads = internal unnamed_addr global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"__dict__\00", align 1
@str_dict = internal unnamed_addr global %struct._object* null, align 8
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
  %call = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @localdummytype) #1, !dbg !1017
  %cmp = icmp slt i32 %call, 0, !dbg !1019
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1020

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @localtype) #1, !dbg !1021
  %cmp2 = icmp slt i32 %call1, 0, !dbg !1023
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !1024

if.end.4:                                         ; preds = %if.end
  %call5 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @Locktype) #1, !dbg !1025
  %cmp6 = icmp slt i32 %call5, 0, !dbg !1027
  br i1 %cmp6, label %cleanup, label %if.end.8, !dbg !1028

if.end.8:                                         ; preds = %if.end.4
  %call9 = tail call i32 @PyType_Ready(%struct._typeobject* nonnull @RLocktype) #1, !dbg !1029
  %cmp10 = icmp slt i32 %call9, 0, !dbg !1031
  br i1 %cmp10, label %cleanup, label %if.end.12, !dbg !1032

if.end.12:                                        ; preds = %if.end.8
  %call13 = tail call %struct._object* @PyModule_Create2(%struct.PyModuleDef* nonnull @threadmodule, i32 1013) #1, !dbg !1033
  tail call void @llvm.dbg.value(metadata %struct._object* %call13, i64 0, metadata !484, metadata !1034), !dbg !1035
  %cmp14 = icmp eq %struct._object* %call13, null, !dbg !1036
  br i1 %cmp14, label %cleanup, label %if.end.16, !dbg !1038

if.end.16:                                        ; preds = %if.end.12
  %call17 = tail call %struct._object* @PyFloat_FromDouble(double 0x42A0C6F7A0B5EC00) #1, !dbg !1039
  tail call void @llvm.dbg.value(metadata %struct._object* %call17, i64 0, metadata !486, metadata !1034), !dbg !1040
  %tobool = icmp eq %struct._object* %call17, null, !dbg !1041
  br i1 %tobool, label %cleanup, label %if.end.19, !dbg !1043

if.end.19:                                        ; preds = %if.end.16
  %call20 = tail call i32 @PyModule_AddObject(%struct._object* %call13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct._object* %call17) #1, !dbg !1044
  %cmp21 = icmp slt i32 %call20, 0, !dbg !1046
  br i1 %cmp21, label %cleanup, label %if.end.23, !dbg !1047

if.end.23:                                        ; preds = %if.end.19
  %call24 = tail call %struct._object* @PyModule_GetDict(%struct._object* %call13) #1, !dbg !1048
  tail call void @llvm.dbg.value(metadata %struct._object* %call24, i64 0, metadata !485, metadata !1034), !dbg !1049
  %0 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1050, !tbaa !1051
  store %struct._object* %0, %struct._object** @ThreadError, align 8, !dbg !1055, !tbaa !1051
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1056
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1056, !tbaa !1057
  %inc = add i64 %1, 1, !dbg !1056
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1056, !tbaa !1057
  %call25 = tail call i32 @PyDict_SetItemString(%struct._object* %call24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %struct._object* %0) #1, !dbg !1060
  store i8* getelementptr inbounds ([491 x i8], [491 x i8]* @lock_doc, i64 0, i64 0), i8** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i64 0, i32 20), align 8, !dbg !1061, !tbaa !1062
  %2 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1066, !tbaa !1057
  %inc26 = add i64 %2, 1, !dbg !1066
  store i64 %inc26, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1066, !tbaa !1057
  %call27 = tail call i32 @PyDict_SetItemString(%struct._object* %call24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @Locktype, i64 0, i32 0, i32 0)) #1, !dbg !1067
  %3 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1068, !tbaa !1057
  %inc28 = add i64 %3, 1, !dbg !1068
  store i64 %inc28, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1068, !tbaa !1057
  %call29 = tail call i32 @PyModule_AddObject(%struct._object* %call13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @RLocktype, i64 0, i32 0, i32 0)) #1, !dbg !1069
  %cmp30 = icmp slt i32 %call29, 0, !dbg !1071
  br i1 %cmp30, label %cleanup, label %if.end.32, !dbg !1072

if.end.32:                                        ; preds = %if.end.23
  %4 = load i64, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1073, !tbaa !1057
  %inc33 = add i64 %4, 1, !dbg !1073
  store i64 %inc33, i64* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1073, !tbaa !1057
  %call34 = tail call i32 @PyModule_AddObject(%struct._object* %call13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localtype, i64 0, i32 0, i32 0)) #1, !dbg !1074
  %cmp35 = icmp slt i32 %call34, 0, !dbg !1076
  br i1 %cmp35, label %cleanup, label %if.end.37, !dbg !1077

if.end.37:                                        ; preds = %if.end.32
  store i64 0, i64* @nb_threads, align 8, !dbg !1078, !tbaa !1079
  %call38 = tail call %struct._object* @PyUnicode_InternFromString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)) #1, !dbg !1080
  store %struct._object* %call38, %struct._object** @str_dict, align 8, !dbg !1081, !tbaa !1051
  %cmp39 = icmp eq %struct._object* %call38, null, !dbg !1082
  br i1 %cmp39, label %cleanup, label %if.end.41, !dbg !1084

if.end.41:                                        ; preds = %if.end.37
  tail call void @PyThread_init_thread() #1, !dbg !1085
  br label %cleanup, !dbg !1086

cleanup:                                          ; preds = %if.end.37, %if.end.32, %if.end.23, %if.end.19, %if.end.16, %if.end.12, %if.end.8, %if.end.4, %if.end, %entry, %if.end.41
  %retval.0 = phi %struct._object* [ %call13, %if.end.41 ], [ null, %entry ], [ null, %if.end ], [ null, %if.end.4 ], [ null, %if.end.8 ], [ null, %if.end.12 ], [ null, %if.end.16 ], [ null, %if.end.19 ], [ null, %if.end.23 ], [ null, %if.end.32 ], [ null, %if.end.37 ]
  ret %struct._object* %retval.0, !dbg !1087
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
  tail call void @llvm.dbg.value(metadata %struct.localdummyobject* %self, i64 0, metadata !491, metadata !1034), !dbg !1088
  %weakreflist = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %self, i64 0, i32 2, !dbg !1089
  %0 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1089, !tbaa !1091
  %cmp = icmp eq %struct._object* %0, null, !dbg !1093
  br i1 %cmp, label %if.end, label %if.then, !dbg !1094

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %self, i64 0, i32 0, !dbg !1095
  tail call void @PyObject_ClearWeakRefs(%struct._object* %1) #1, !dbg !1096
  br label %if.end, !dbg !1096

if.end:                                           ; preds = %entry, %if.then
  %ob_type = getelementptr inbounds %struct.localdummyobject, %struct.localdummyobject* %self, i64 0, i32 0, i32 1, !dbg !1097
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1097, !tbaa !1098
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 38, !dbg !1099
  %3 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1099, !tbaa !1100
  %4 = bitcast %struct.localdummyobject* %self to i8*, !dbg !1101
  tail call void %3(i8* %4) #1, !dbg !1097
  ret void, !dbg !1102
}

declare void @PyObject_ClearWeakRefs(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @local_dealloc(%struct.localobject* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.localobject* %self, i64 0, metadata !496, metadata !1034), !dbg !1103
  %weakreflist = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 4, !dbg !1104
  %0 = load %struct._object*, %struct._object** %weakreflist, align 8, !dbg !1104, !tbaa !1106
  %cmp = icmp eq %struct._object* %0, null, !dbg !1108
  br i1 %cmp, label %if.end, label %if.then, !dbg !1109

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, !dbg !1110
  tail call void @PyObject_ClearWeakRefs(%struct._object* %1) #1, !dbg !1111
  br label %if.end, !dbg !1111

if.end:                                           ; preds = %entry, %if.then
  %2 = bitcast %struct.localobject* %self to i8*, !dbg !1112
  tail call void @PyObject_GC_UnTrack(i8* %2) #1, !dbg !1113
  %call = tail call i32 @local_clear(%struct.localobject* %self), !dbg !1114
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 1, !dbg !1115
  %3 = load %struct._object*, %struct._object** %key, align 8, !dbg !1115, !tbaa !1117
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !497, metadata !1034), !dbg !1115
  %cmp1 = icmp eq %struct._object* %3, null, !dbg !1118
  br i1 %cmp1, label %if.end.7, label %do.body.3, !dbg !1119

do.body.3:                                        ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !499, metadata !1034), !dbg !1120
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 0, !dbg !1122
  %4 = load i64, i64* %ob_refcnt, align 8, !dbg !1122, !tbaa !1057
  %dec = add i64 %4, -1, !dbg !1122
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1122, !tbaa !1057
  %cmp4 = icmp eq i64 %dec, 0, !dbg !1122
  br i1 %cmp4, label %if.else, label %if.end.7, !dbg !1124

if.else:                                          ; preds = %do.body.3
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %3, i64 0, i32 1, !dbg !1125
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1125, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !1125
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1125, !tbaa !1127
  tail call void %6(%struct._object* %3) #1, !dbg !1125
  br label %if.end.7

if.end.7:                                         ; preds = %if.else, %do.body.3, %if.end
  %ob_type10 = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, i32 1, !dbg !1128
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8, !dbg !1128, !tbaa !1098
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 38, !dbg !1129
  %8 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1129, !tbaa !1100
  tail call void %8(i8* %2) #1, !dbg !1128
  ret void, !dbg !1130
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @local_getattro(%struct.localobject* %self, %struct._object* %name) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.localobject* %self, i64 0, metadata !506, metadata !1034), !dbg !1131
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !507, metadata !1034), !dbg !1132
  %call = tail call fastcc %struct._object* @_ldict(%struct.localobject* %self), !dbg !1133
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !508, metadata !1034), !dbg !1134
  %cmp = icmp eq %struct._object* %call, null, !dbg !1135
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1137

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** @str_dict, align 8, !dbg !1138, !tbaa !1051
  %call1 = tail call i32 @PyObject_RichCompareBool(%struct._object* %name, %struct._object* %0, i32 2) #1, !dbg !1139
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !510, metadata !1034), !dbg !1140
  switch i32 %call1, label %if.end.7 [
    i32 1, label %if.then.3
    i32 -1, label %cleanup
  ], !dbg !1141

if.then.3:                                        ; preds = %if.end
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1142
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1142, !tbaa !1057
  %inc = add i64 %1, 1, !dbg !1142
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1142, !tbaa !1057
  br label %cleanup, !dbg !1145

if.end.7:                                         ; preds = %if.end
  %2 = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, !dbg !1146
  %ob_type = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, i32 1, !dbg !1146
  %3 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1146, !tbaa !1098
  %cmp8 = icmp eq %struct._typeobject* %3, @localtype, !dbg !1148
  br i1 %cmp8, label %if.end.11, label %if.then.9, !dbg !1149

if.then.9:                                        ; preds = %if.end.7
  %call10 = tail call %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %2, %struct._object* %name, %struct._object* %call) #1, !dbg !1150
  br label %cleanup, !dbg !1151

if.end.11:                                        ; preds = %if.end.7
  %call12 = tail call %struct._object* @PyDict_GetItem(%struct._object* %call, %struct._object* %name) #1, !dbg !1152
  tail call void @llvm.dbg.value(metadata %struct._object* %call12, i64 0, metadata !509, metadata !1034), !dbg !1153
  %cmp13 = icmp eq %struct._object* %call12, null, !dbg !1154
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1156

if.then.14:                                       ; preds = %if.end.11
  %call15 = tail call %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object* %2, %struct._object* %name, %struct._object* %call) #1, !dbg !1157
  br label %cleanup, !dbg !1158

if.end.16:                                        ; preds = %if.end.11
  %ob_refcnt17 = getelementptr inbounds %struct._object, %struct._object* %call12, i64 0, i32 0, !dbg !1159
  %4 = load i64, i64* %ob_refcnt17, align 8, !dbg !1159, !tbaa !1057
  %inc18 = add i64 %4, 1, !dbg !1159
  store i64 %inc18, i64* %ob_refcnt17, align 8, !dbg !1159, !tbaa !1057
  br label %cleanup, !dbg !1160

cleanup:                                          ; preds = %if.end, %entry, %if.end.16, %if.then.14, %if.then.9, %if.then.3
  %retval.0 = phi %struct._object* [ %call, %if.then.3 ], [ %call10, %if.then.9 ], [ %call15, %if.then.14 ], [ %call12, %if.end.16 ], [ null, %entry ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !1161
}

; Function Attrs: nounwind uwtable
define internal i32 @local_setattro(%struct.localobject* %self, %struct._object* %name, %struct._object* %v) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.localobject* %self, i64 0, metadata !560, metadata !1034), !dbg !1162
  tail call void @llvm.dbg.value(metadata %struct._object* %name, i64 0, metadata !561, metadata !1034), !dbg !1163
  tail call void @llvm.dbg.value(metadata %struct._object* %v, i64 0, metadata !562, metadata !1034), !dbg !1164
  %call = tail call fastcc %struct._object* @_ldict(%struct.localobject* %self), !dbg !1165
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !563, metadata !1034), !dbg !1166
  %cmp = icmp eq %struct._object* %call, null, !dbg !1167
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1169

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** @str_dict, align 8, !dbg !1170, !tbaa !1051
  %call1 = tail call i32 @PyObject_RichCompareBool(%struct._object* %name, %struct._object* %0, i32 2) #1, !dbg !1171
  tail call void @llvm.dbg.value(metadata i32 %call1, i64 0, metadata !564, metadata !1034), !dbg !1172
  switch i32 %call1, label %if.end.8 [
    i32 1, label %if.then.3
    i32 -1, label %cleanup
  ], !dbg !1173

if.then.3:                                        ; preds = %if.end
  %1 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8, !dbg !1174, !tbaa !1051
  %ob_type = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, i32 1, !dbg !1177
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1177, !tbaa !1098
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 1, !dbg !1178
  %3 = load i8*, i8** %tp_name, align 8, !dbg !1178, !tbaa !1179
  %call4 = tail call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0), i8* %3, %struct._object* %name) #1, !dbg !1180
  br label %cleanup, !dbg !1181

if.end.8:                                         ; preds = %if.end
  %4 = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, !dbg !1182
  %call9 = tail call i32 @_PyObject_GenericSetAttrWithDict(%struct._object* %4, %struct._object* %name, %struct._object* %v, %struct._object* %call) #1, !dbg !1183
  br label %cleanup, !dbg !1184

cleanup:                                          ; preds = %if.end, %entry, %if.end.8, %if.then.3
  %retval.0 = phi i32 [ -1, %if.then.3 ], [ %call9, %if.end.8 ], [ -1, %entry ], [ -1, %if.end ]
  ret i32 %retval.0, !dbg !1185
}

; Function Attrs: nounwind uwtable
define internal i32 @local_traverse(%struct.localobject* nocapture readonly %self, i32 (%struct._object*, i8*)* nocapture %visit, i8* %arg) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.localobject* %self, i64 0, metadata !569, metadata !1034), !dbg !1186
  tail call void @llvm.dbg.value(metadata i32 (%struct._object*, i8*)* %visit, i64 0, metadata !570, metadata !1034), !dbg !1187
  tail call void @llvm.dbg.value(metadata i8* %arg, i64 0, metadata !571, metadata !1034), !dbg !1188
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 2, !dbg !1189
  %0 = load %struct._object*, %struct._object** %args, align 8, !dbg !1189, !tbaa !1191
  %tobool = icmp eq %struct._object* %0, null, !dbg !1189
  br i1 %tobool, label %do.body.5, label %if.then, !dbg !1192

if.then:                                          ; preds = %entry
  %call = tail call i32 %visit(%struct._object* %0, i8* %arg) #1, !dbg !1193
  tail call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !572, metadata !1034), !dbg !1193
  %tobool2 = icmp eq i32 %call, 0, !dbg !1195
  br i1 %tobool2, label %do.body.5, label %return

do.body.5:                                        ; preds = %entry, %if.then
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 3, !dbg !1197
  %1 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1197, !tbaa !1199
  %tobool6 = icmp eq %struct._object* %1, null, !dbg !1197
  br i1 %tobool6, label %do.body.19, label %if.then.7, !dbg !1200

if.then.7:                                        ; preds = %do.body.5
  %call10 = tail call i32 %visit(%struct._object* %1, i8* %arg) #1, !dbg !1201
  tail call void @llvm.dbg.value(metadata i32 %call10, i64 0, metadata !576, metadata !1034), !dbg !1201
  %tobool11 = icmp eq i32 %call10, 0, !dbg !1203
  br i1 %tobool11, label %do.body.19, label %return

do.body.19:                                       ; preds = %do.body.5, %if.then.7
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 5, !dbg !1205
  %2 = load %struct._object*, %struct._object** %dummies, align 8, !dbg !1205, !tbaa !1207
  %tobool20 = icmp eq %struct._object* %2, null, !dbg !1205
  br i1 %tobool20, label %do.end.32, label %if.then.21, !dbg !1208

if.then.21:                                       ; preds = %do.body.19
  %call24 = tail call i32 %visit(%struct._object* %2, i8* %arg) #1, !dbg !1209
  tail call void @llvm.dbg.value(metadata i32 %call24, i64 0, metadata !580, metadata !1034), !dbg !1209
  %tobool25 = icmp eq i32 %call24, 0, !dbg !1211
  br i1 %tobool25, label %do.end.32, label %return

do.end.32:                                        ; preds = %do.body.19, %if.then.21
  br label %return, !dbg !1213

return:                                           ; preds = %if.then.21, %if.then.7, %if.then, %do.end.32
  %retval.5 = phi i32 [ 0, %do.end.32 ], [ %call24, %if.then.21 ], [ %call10, %if.then.7 ], [ %call, %if.then ]
  ret i32 %retval.5, !dbg !1214
}

; Function Attrs: nounwind uwtable
define internal i32 @local_clear(%struct.localobject* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.localobject* %self, i64 0, metadata !588, metadata !1034), !dbg !1215
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 2, !dbg !1216
  %0 = load %struct._object*, %struct._object** %args, align 8, !dbg !1216, !tbaa !1191
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !590, metadata !1034), !dbg !1216
  %cmp = icmp eq %struct._object* %0, null, !dbg !1218
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !1219

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %args, align 8, !dbg !1220, !tbaa !1191
  tail call void @llvm.dbg.value(metadata %struct._object* %0, i64 0, metadata !592, metadata !1034), !dbg !1222
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 0, !dbg !1224
  %1 = load i64, i64* %ob_refcnt, align 8, !dbg !1224, !tbaa !1057
  %dec = add i64 %1, -1, !dbg !1224
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1224, !tbaa !1057
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1224
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !1226

if.else:                                          ; preds = %if.then
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i64 0, i32 1, !dbg !1227
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1227, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 4, !dbg !1227
  %3 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1227, !tbaa !1127
  tail call void %3(%struct._object* %0) #1, !dbg !1227
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 3, !dbg !1229
  %4 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1229, !tbaa !1199
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !596, metadata !1034), !dbg !1229
  %cmp10 = icmp eq %struct._object* %4, null, !dbg !1231
  br i1 %cmp10, label %if.end.25, label %if.then.11, !dbg !1232

if.then.11:                                       ; preds = %if.end.5
  store %struct._object* null, %struct._object** %kw, align 8, !dbg !1233, !tbaa !1199
  tail call void @llvm.dbg.value(metadata %struct._object* %4, i64 0, metadata !598, metadata !1034), !dbg !1235
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 0, !dbg !1237
  %5 = load i64, i64* %ob_refcnt15, align 8, !dbg !1237, !tbaa !1057
  %dec16 = add i64 %5, -1, !dbg !1237
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !1237, !tbaa !1057
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !1237
  br i1 %cmp17, label %if.else.19, label %if.end.25, !dbg !1239

if.else.19:                                       ; preds = %if.then.11
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %4, i64 0, i32 1, !dbg !1240
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8, !dbg !1240, !tbaa !1098
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1240
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !1240, !tbaa !1127
  tail call void %7(%struct._object* %4) #1, !dbg !1240
  br label %if.end.25

if.end.25:                                        ; preds = %if.else.19, %if.then.11, %if.end.5
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 5, !dbg !1242
  %8 = load %struct._object*, %struct._object** %dummies, align 8, !dbg !1242, !tbaa !1207
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !602, metadata !1034), !dbg !1242
  %cmp30 = icmp eq %struct._object* %8, null, !dbg !1244
  br i1 %cmp30, label %if.end.45, label %if.then.31, !dbg !1245

if.then.31:                                       ; preds = %if.end.25
  store %struct._object* null, %struct._object** %dummies, align 8, !dbg !1246, !tbaa !1207
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !604, metadata !1034), !dbg !1248
  %ob_refcnt35 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 0, !dbg !1250
  %9 = load i64, i64* %ob_refcnt35, align 8, !dbg !1250, !tbaa !1057
  %dec36 = add i64 %9, -1, !dbg !1250
  store i64 %dec36, i64* %ob_refcnt35, align 8, !dbg !1250, !tbaa !1057
  %cmp37 = icmp eq i64 %dec36, 0, !dbg !1250
  br i1 %cmp37, label %if.else.39, label %if.end.45, !dbg !1252

if.else.39:                                       ; preds = %if.then.31
  %ob_type40 = getelementptr inbounds %struct._object, %struct._object* %8, i64 0, i32 1, !dbg !1253
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type40, align 8, !dbg !1253, !tbaa !1098
  %tp_dealloc41 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1253
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc41, align 8, !dbg !1253, !tbaa !1127
  tail call void %11(%struct._object* %8) #1, !dbg !1253
  br label %if.end.45

if.end.45:                                        ; preds = %if.else.39, %if.then.31, %if.end.25
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 6, !dbg !1255
  %12 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1255, !tbaa !1257
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !608, metadata !1034), !dbg !1255
  %cmp50 = icmp eq %struct._object* %12, null, !dbg !1258
  br i1 %cmp50, label %if.end.65, label %if.then.51, !dbg !1259

if.then.51:                                       ; preds = %if.end.45
  store %struct._object* null, %struct._object** %wr_callback, align 8, !dbg !1260, !tbaa !1257
  tail call void @llvm.dbg.value(metadata %struct._object* %12, i64 0, metadata !610, metadata !1034), !dbg !1262
  %ob_refcnt55 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 0, !dbg !1264
  %13 = load i64, i64* %ob_refcnt55, align 8, !dbg !1264, !tbaa !1057
  %dec56 = add i64 %13, -1, !dbg !1264
  store i64 %dec56, i64* %ob_refcnt55, align 8, !dbg !1264, !tbaa !1057
  %cmp57 = icmp eq i64 %dec56, 0, !dbg !1264
  br i1 %cmp57, label %if.else.59, label %if.end.65, !dbg !1266

if.else.59:                                       ; preds = %if.then.51
  %ob_type60 = getelementptr inbounds %struct._object, %struct._object* %12, i64 0, i32 1, !dbg !1267
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type60, align 8, !dbg !1267, !tbaa !1098
  %tp_dealloc61 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i64 0, i32 4, !dbg !1267
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc61, align 8, !dbg !1267, !tbaa !1127
  tail call void %15(%struct._object* %12) #1, !dbg !1267
  br label %if.end.65

if.end.65:                                        ; preds = %if.else.59, %if.then.51, %if.end.45
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 1, !dbg !1269
  %16 = load %struct._object*, %struct._object** %key, align 8, !dbg !1269, !tbaa !1117
  %tobool = icmp eq %struct._object* %16, null, !dbg !1271
  br i1 %tobool, label %if.end.87, label %land.lhs.true, !dbg !1272

land.lhs.true:                                    ; preds = %if.end.65
  %call = tail call %struct._ts* @PyThreadState_Get() #1, !dbg !1273
  tail call void @llvm.dbg.value(metadata %struct._ts* %call, i64 0, metadata !589, metadata !1034), !dbg !1275
  %tobool68 = icmp eq %struct._ts* %call, null, !dbg !1276
  br i1 %tobool68, label %if.end.87, label %land.lhs.true.69, !dbg !1277

land.lhs.true.69:                                 ; preds = %land.lhs.true
  %interp = getelementptr inbounds %struct._ts, %struct._ts* %call, i64 0, i32 2, !dbg !1278
  %17 = load %struct._is*, %struct._is** %interp, align 8, !dbg !1278, !tbaa !1279
  %tobool70 = icmp eq %struct._is* %17, null, !dbg !1281
  br i1 %tobool70, label %if.end.87, label %if.then.71, !dbg !1282

if.then.71:                                       ; preds = %land.lhs.true.69
  %call73 = tail call %struct._ts* @PyInterpreterState_ThreadHead(%struct._is* %17) #1, !dbg !1283
  tail call void @llvm.dbg.value(metadata %struct._ts* %call73, i64 0, metadata !589, metadata !1034), !dbg !1275
  %tobool74.125 = icmp eq %struct._ts* %call73, null, !dbg !1286
  br i1 %tobool74.125, label %if.end.87, label %for.body.preheader, !dbg !1286

for.body.preheader:                               ; preds = %if.then.71
  br label %for.body, !dbg !1287

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %tstate.0126 = phi %struct._ts* [ %call86, %for.inc ], [ %call73, %for.body.preheader ]
  %dict = getelementptr inbounds %struct._ts, %struct._ts* %tstate.0126, i64 0, i32 19, !dbg !1287
  %18 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1287, !tbaa !1290
  %tobool75 = icmp eq %struct._object* %18, null, !dbg !1291
  br i1 %tobool75, label %for.inc, label %land.lhs.true.76, !dbg !1292

land.lhs.true.76:                                 ; preds = %for.body
  %19 = load %struct._object*, %struct._object** %key, align 8, !dbg !1293, !tbaa !1117
  %call79 = tail call %struct._object* @PyDict_GetItem(%struct._object* %18, %struct._object* %19) #1, !dbg !1294
  %tobool80 = icmp eq %struct._object* %call79, null, !dbg !1294
  br i1 %tobool80, label %for.inc, label %if.then.81, !dbg !1295

if.then.81:                                       ; preds = %land.lhs.true.76
  %20 = load %struct._object*, %struct._object** %dict, align 8, !dbg !1296, !tbaa !1290
  %21 = load %struct._object*, %struct._object** %key, align 8, !dbg !1297, !tbaa !1117
  %call84 = tail call i32 @PyDict_DelItem(%struct._object* %20, %struct._object* %21) #1, !dbg !1298
  br label %for.inc, !dbg !1298

for.inc:                                          ; preds = %land.lhs.true.76, %for.body, %if.then.81
  %call86 = tail call %struct._ts* @PyThreadState_Next(%struct._ts* %tstate.0126) #1, !dbg !1299
  tail call void @llvm.dbg.value(metadata %struct._ts* %call86, i64 0, metadata !589, metadata !1034), !dbg !1275
  %tobool74 = icmp eq %struct._ts* %call86, null, !dbg !1286
  br i1 %tobool74, label %if.end.87.loopexit, label %for.body, !dbg !1286

if.end.87.loopexit:                               ; preds = %for.inc
  br label %if.end.87, !dbg !1300

if.end.87:                                        ; preds = %if.end.87.loopexit, %if.then.71, %land.lhs.true.69, %land.lhs.true, %if.end.65
  ret i32 0, !dbg !1300
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @local_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kw) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !620, metadata !1034), !dbg !1301
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !621, metadata !1034), !dbg !1302
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !622, metadata !1034), !dbg !1303
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 35, !dbg !1304
  %0 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8, !dbg !1304, !tbaa !1306
  %1 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBaseObject_Type, i64 0, i32 35), align 8, !dbg !1307, !tbaa !1306
  %cmp = icmp eq i32 (%struct._object*, %struct._object*, %struct._object*)* %0, %1, !dbg !1308
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !1309

land.lhs.true:                                    ; preds = %entry
  %tobool = icmp eq %struct._object* %args, null, !dbg !1310
  br i1 %tobool, label %lor.lhs.false, label %land.lhs.true.1, !dbg !1312

land.lhs.true.1:                                  ; preds = %land.lhs.true
  %call = tail call i32 @PyObject_IsTrue(%struct._object* %args) #1, !dbg !1313
  %tobool2 = icmp eq i32 %call, 0, !dbg !1313
  br i1 %tobool2, label %lor.lhs.false, label %if.then, !dbg !1314

lor.lhs.false:                                    ; preds = %land.lhs.true.1, %land.lhs.true
  %tobool3 = icmp eq %struct._object* %kw, null, !dbg !1315
  br i1 %tobool3, label %if.end, label %land.lhs.true.4, !dbg !1316

land.lhs.true.4:                                  ; preds = %lor.lhs.false
  %call5 = tail call i32 @PyObject_IsTrue(%struct._object* %kw) #1, !dbg !1317
  %tobool6 = icmp eq i32 %call5, 0, !dbg !1317
  br i1 %tobool6, label %if.end, label %if.then, !dbg !1318

if.then:                                          ; preds = %land.lhs.true.1, %land.lhs.true.4
  %2 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1319, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i64 0, i64 0)) #1, !dbg !1321
  br label %cleanup, !dbg !1322

if.end:                                           ; preds = %land.lhs.true.4, %lor.lhs.false, %entry
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1323
  %3 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1323, !tbaa !1324
  %call7 = tail call %struct._object* %3(%struct._typeobject* %type, i64 0) #1, !dbg !1325
  %4 = bitcast %struct._object* %call7 to %struct.localobject*, !dbg !1326
  tail call void @llvm.dbg.value(metadata %struct.localobject* %4, i64 0, metadata !623, metadata !1034), !dbg !1327
  %cmp8 = icmp eq %struct._object* %call7, null, !dbg !1328
  br i1 %cmp8, label %cleanup, label %do.body, !dbg !1330

do.body:                                          ; preds = %if.end
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !625, metadata !1034), !dbg !1331
  %cmp11 = icmp eq %struct._object* %args, null, !dbg !1333
  br i1 %cmp11, label %if.end.13, label %if.then.12, !dbg !1335

if.then.12:                                       ; preds = %do.body
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %args, i64 0, i32 0, !dbg !1336
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1336, !tbaa !1057
  %inc = add i64 %5, 1, !dbg !1336
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !1336, !tbaa !1057
  br label %if.end.13, !dbg !1336

if.end.13:                                        ; preds = %do.body, %if.then.12
  %args14 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 1, i32 1, !dbg !1338
  %6 = bitcast %struct._typeobject** %args14 to %struct._object**, !dbg !1338
  store %struct._object* %args, %struct._object** %6, align 8, !dbg !1339, !tbaa !1191
  tail call void @llvm.dbg.value(metadata %struct._object* %kw, i64 0, metadata !627, metadata !1034), !dbg !1340
  %cmp17 = icmp eq %struct._object* %kw, null, !dbg !1342
  br i1 %cmp17, label %if.end.21, label %if.then.18, !dbg !1344

if.then.18:                                       ; preds = %if.end.13
  %ob_refcnt19 = getelementptr inbounds %struct._object, %struct._object* %kw, i64 0, i32 0, !dbg !1345
  %7 = load i64, i64* %ob_refcnt19, align 8, !dbg !1345, !tbaa !1057
  %inc20 = add i64 %7, 1, !dbg !1345
  store i64 %inc20, i64* %ob_refcnt19, align 8, !dbg !1345, !tbaa !1057
  br label %if.end.21, !dbg !1345

if.end.21:                                        ; preds = %if.end.13, %if.then.18
  %kw24 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 2, !dbg !1347
  %8 = bitcast %struct._object* %kw24 to %struct._object**, !dbg !1347
  store %struct._object* %kw, %struct._object** %8, align 8, !dbg !1348, !tbaa !1199
  %call25 = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), %struct._object* %call7) #1, !dbg !1349
  %key = getelementptr inbounds %struct._object, %struct._object* %call7, i64 1, !dbg !1350
  %9 = bitcast %struct._object* %key to %struct._object**, !dbg !1350
  store %struct._object* %call25, %struct._object** %9, align 8, !dbg !1351, !tbaa !1117
  %cmp27 = icmp eq %struct._object* %call25, null, !dbg !1352
  br i1 %cmp27, label %do.body.55, label %if.end.29, !dbg !1354

if.end.29:                                        ; preds = %if.end.21
  %call30 = tail call %struct._object* @PyDict_New() #1, !dbg !1355
  %dummies = getelementptr inbounds %struct._object, %struct._object* %call7, i64 3, !dbg !1356
  %10 = bitcast %struct._object* %dummies to %struct._object**, !dbg !1356
  store %struct._object* %call30, %struct._object** %10, align 8, !dbg !1357, !tbaa !1207
  %cmp32 = icmp eq %struct._object* %call30, null, !dbg !1358
  br i1 %cmp32, label %do.body.55, label %if.end.34, !dbg !1360

if.end.34:                                        ; preds = %if.end.29
  %call35 = tail call %struct._object* @PyWeakref_NewRef(%struct._object* %call7, %struct._object* null) #1, !dbg !1361
  tail call void @llvm.dbg.value(metadata %struct._object* %call35, i64 0, metadata !624, metadata !1034), !dbg !1362
  %cmp36 = icmp eq %struct._object* %call35, null, !dbg !1363
  br i1 %cmp36, label %do.body.55, label %if.end.38, !dbg !1365

if.end.38:                                        ; preds = %if.end.34
  %call39 = tail call %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef* nonnull @local_new.wr_callback_def, %struct._object* %call35, %struct._object* null) #1, !dbg !1366
  %wr_callback = getelementptr inbounds %struct._object, %struct._object* %call7, i64 3, i32 1, !dbg !1367
  %11 = bitcast %struct._typeobject** %wr_callback to %struct._object**, !dbg !1367
  store %struct._object* %call39, %struct._object** %11, align 8, !dbg !1368, !tbaa !1257
  tail call void @llvm.dbg.value(metadata %struct._object* %call35, i64 0, metadata !629, metadata !1034), !dbg !1369
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %call35, i64 0, i32 0, !dbg !1371
  %12 = load i64, i64* %ob_refcnt41, align 8, !dbg !1371, !tbaa !1057
  %dec = add i64 %12, -1, !dbg !1371
  store i64 %dec, i64* %ob_refcnt41, align 8, !dbg !1371, !tbaa !1057
  %cmp42 = icmp eq i64 %dec, 0, !dbg !1371
  br i1 %cmp42, label %if.else, label %if.end.44, !dbg !1373

if.else:                                          ; preds = %if.end.38
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call35, i64 0, i32 1, !dbg !1374
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1374, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1374
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1374, !tbaa !1127
  tail call void %14(%struct._object* %call35) #1, !dbg !1374
  %.pre = load %struct._object*, %struct._object** %11, align 8, !dbg !1376, !tbaa !1257
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.38, %if.else
  %15 = phi %struct._object* [ %call39, %if.end.38 ], [ %.pre, %if.else ], !dbg !1376
  %cmp48 = icmp eq %struct._object* %15, null, !dbg !1378
  br i1 %cmp48, label %do.body.55, label %if.end.50, !dbg !1379

if.end.50:                                        ; preds = %if.end.44
  %call51 = tail call fastcc %struct._object* @_local_create_dummy(%struct.localobject* %4), !dbg !1380
  %cmp52 = icmp eq %struct._object* %call51, null, !dbg !1382
  br i1 %cmp52, label %do.body.55, label %cleanup, !dbg !1383

do.body.55:                                       ; preds = %if.end.21, %if.end.29, %if.end.34, %if.end.44, %if.end.50
  tail call void @llvm.dbg.value(metadata %struct._object* %call7, i64 0, metadata !631, metadata !1034), !dbg !1384
  %ob_refcnt57 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 0, !dbg !1386
  %16 = load i64, i64* %ob_refcnt57, align 8, !dbg !1386, !tbaa !1057
  %dec58 = add i64 %16, -1, !dbg !1386
  store i64 %dec58, i64* %ob_refcnt57, align 8, !dbg !1386, !tbaa !1057
  %cmp59 = icmp eq i64 %dec58, 0, !dbg !1386
  br i1 %cmp59, label %if.else.61, label %cleanup, !dbg !1388

if.else.61:                                       ; preds = %do.body.55
  %ob_type62 = getelementptr inbounds %struct._object, %struct._object* %call7, i64 0, i32 1, !dbg !1389
  %17 = load %struct._typeobject*, %struct._typeobject** %ob_type62, align 8, !dbg !1389, !tbaa !1098
  %tp_dealloc63 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %17, i64 0, i32 4, !dbg !1389
  %18 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc63, align 8, !dbg !1389, !tbaa !1127
  tail call void %18(%struct._object* %call7) #1, !dbg !1389
  br label %cleanup

cleanup:                                          ; preds = %if.else.61, %do.body.55, %if.end.50, %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.end ], [ %call7, %if.end.50 ], [ null, %do.body.55 ], [ null, %if.else.61 ]
  ret %struct._object* %retval.0, !dbg !1391
}

declare void @PyObject_GC_UnTrack(i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @_ldict(%struct.localobject* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.localobject* %self, i64 0, metadata !515, metadata !1034), !dbg !1392
  %call = tail call %struct._object* @PyThreadState_GetDict() #1, !dbg !1393
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !516, metadata !1034), !dbg !1394
  %cmp = icmp eq %struct._object* %call, null, !dbg !1395
  br i1 %cmp, label %if.then, label %if.end, !dbg !1397

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1398, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0)) #1, !dbg !1400
  br label %cleanup, !dbg !1401

if.end:                                           ; preds = %entry
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 1, !dbg !1402
  %1 = load %struct._object*, %struct._object** %key, align 8, !dbg !1402, !tbaa !1117
  %call1 = tail call %struct._object* @PyDict_GetItem(%struct._object* %call, %struct._object* %1) #1, !dbg !1403
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !518, metadata !1034), !dbg !1404
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1405
  br i1 %cmp2, label %if.then.3, label %if.else, !dbg !1407

if.then.3:                                        ; preds = %if.end
  %call4 = tail call fastcc %struct._object* @_local_create_dummy(%struct.localobject* %self), !dbg !1408
  tail call void @llvm.dbg.value(metadata %struct._object* %call4, i64 0, metadata !517, metadata !1034), !dbg !1410
  %cmp5 = icmp eq %struct._object* %call4, null, !dbg !1411
  br i1 %cmp5, label %cleanup, label %if.end.7, !dbg !1413

if.end.7:                                         ; preds = %if.then.3
  %ob_type = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, i32 1, !dbg !1414
  %2 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1414, !tbaa !1098
  %tp_init = getelementptr inbounds %struct._typeobject, %struct._typeobject* %2, i64 0, i32 35, !dbg !1416
  %3 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** %tp_init, align 8, !dbg !1416, !tbaa !1306
  %4 = load i32 (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @PyBaseObject_Type, i64 0, i32 35), align 8, !dbg !1417, !tbaa !1306
  %cmp8 = icmp eq i32 (%struct._object*, %struct._object*, %struct._object*)* %3, %4, !dbg !1418
  br i1 %cmp8, label %cleanup, label %land.lhs.true, !dbg !1419

land.lhs.true:                                    ; preds = %if.end.7
  %5 = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 0, !dbg !1414
  %args = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 2, !dbg !1420
  %6 = load %struct._object*, %struct._object** %args, align 8, !dbg !1420, !tbaa !1191
  %kw = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 3, !dbg !1421
  %7 = load %struct._object*, %struct._object** %kw, align 8, !dbg !1421, !tbaa !1199
  %call11 = tail call i32 %3(%struct._object* %5, %struct._object* %6, %struct._object* %7) #1, !dbg !1422
  %cmp12 = icmp slt i32 %call11, 0, !dbg !1423
  br i1 %cmp12, label %if.then.13, label %cleanup, !dbg !1424

if.then.13:                                       ; preds = %land.lhs.true
  %8 = load %struct._object*, %struct._object** %key, align 8, !dbg !1425, !tbaa !1117
  %call15 = tail call i32 @PyDict_DelItem(%struct._object* %call, %struct._object* %8) #1, !dbg !1427
  br label %cleanup, !dbg !1428

if.else:                                          ; preds = %if.end
  %localdict = getelementptr inbounds %struct._object, %struct._object* %call1, i64 1, !dbg !1429
  %9 = bitcast %struct._object* %localdict to %struct._object**, !dbg !1429
  %10 = load %struct._object*, %struct._object** %9, align 8, !dbg !1429, !tbaa !1431
  tail call void @llvm.dbg.value(metadata %struct._object* %10, i64 0, metadata !517, metadata !1034), !dbg !1410
  br label %cleanup

cleanup:                                          ; preds = %if.else, %land.lhs.true, %if.end.7, %if.then.3, %if.then.13, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ null, %if.then.13 ], [ null, %if.then.3 ], [ %call4, %land.lhs.true ], [ %call4, %if.end.7 ], [ %10, %if.else ]
  ret %struct._object* %retval.0, !dbg !1432
}

declare i32 @PyObject_RichCompareBool(%struct._object*, %struct._object*, i32) #3

declare %struct._object* @_PyObject_GenericGetAttrWithDict(%struct._object*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #3

declare %struct._object* @PyThreadState_GetDict() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind uwtable
define internal fastcc %struct._object* @_local_create_dummy(%struct.localobject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.localobject* %self, i64 0, metadata !521, metadata !1034), !dbg !1433
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !523, metadata !1034), !dbg !1434
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !524, metadata !1034), !dbg !1435
  tail call void @llvm.dbg.value(metadata %struct.localdummyobject* null, i64 0, metadata !525, metadata !1034), !dbg !1436
  %call = tail call %struct._object* @PyThreadState_GetDict() #1, !dbg !1437
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !522, metadata !1034), !dbg !1438
  %cmp = icmp eq %struct._object* %call, null, !dbg !1439
  br i1 %cmp, label %if.then, label %if.end, !dbg !1441

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8, !dbg !1442, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0)) #1, !dbg !1444
  br label %cleanup, !dbg !1445

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyDict_New() #1, !dbg !1446
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !523, metadata !1034), !dbg !1434
  %cmp2 = icmp eq %struct._object* %call1, null, !dbg !1447
  br i1 %cmp2, label %cleanup, label %if.end.4, !dbg !1449

if.end.4:                                         ; preds = %if.end
  %1 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @localdummytype, i64 0, i32 36), align 8, !dbg !1450, !tbaa !1324
  %call5 = tail call %struct._object* %1(%struct._typeobject* nonnull @localdummytype, i64 0) #1, !dbg !1451
  %cmp6 = icmp eq %struct._object* %call5, null, !dbg !1452
  br i1 %cmp6, label %do.body.64, label %if.end.8, !dbg !1454

if.end.8:                                         ; preds = %if.end.4
  %localdict = getelementptr inbounds %struct._object, %struct._object* %call5, i64 1, !dbg !1455
  %2 = bitcast %struct._object* %localdict to %struct._object**, !dbg !1455
  store %struct._object* %call1, %struct._object** %2, align 8, !dbg !1456, !tbaa !1431
  %wr_callback = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 6, !dbg !1457
  %3 = load %struct._object*, %struct._object** %wr_callback, align 8, !dbg !1457, !tbaa !1257
  %call9 = tail call %struct._object* @PyWeakref_NewRef(%struct._object* %call5, %struct._object* %3) #1, !dbg !1458
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !524, metadata !1034), !dbg !1435
  %cmp10 = icmp eq %struct._object* %call9, null, !dbg !1459
  br i1 %cmp10, label %do.body.64, label %if.end.12, !dbg !1461

if.end.12:                                        ; preds = %if.end.8
  %dummies = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 5, !dbg !1462
  %4 = load %struct._object*, %struct._object** %dummies, align 8, !dbg !1462, !tbaa !1207
  %call13 = tail call i32 @PyDict_SetItem(%struct._object* %4, %struct._object* %call9, %struct._object* %call1) #1, !dbg !1463
  tail call void @llvm.dbg.value(metadata i32 %call13, i64 0, metadata !526, metadata !1034), !dbg !1464
  %cmp14 = icmp slt i32 %call13, 0, !dbg !1465
  br i1 %cmp14, label %do.body.64, label %if.then.18, !dbg !1467

if.then.18:                                       ; preds = %if.end.12
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !527, metadata !1034), !dbg !1468
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !524, metadata !1034), !dbg !1435
  tail call void @llvm.dbg.value(metadata %struct._object* %call9, i64 0, metadata !529, metadata !1034), !dbg !1470
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 0, !dbg !1472
  %5 = load i64, i64* %ob_refcnt, align 8, !dbg !1472, !tbaa !1057
  %dec = add i64 %5, -1, !dbg !1472
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1472, !tbaa !1057
  %cmp20 = icmp eq i64 %dec, 0, !dbg !1472
  br i1 %cmp20, label %if.else, label %if.end.23, !dbg !1474

if.else:                                          ; preds = %if.then.18
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call9, i64 0, i32 1, !dbg !1475
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1475, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 4, !dbg !1475
  %7 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1475, !tbaa !1127
  tail call void %7(%struct._object* %call9) #1, !dbg !1475
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.18
  %key = getelementptr inbounds %struct.localobject, %struct.localobject* %self, i64 0, i32 1, !dbg !1477
  %8 = load %struct._object*, %struct._object** %key, align 8, !dbg !1477, !tbaa !1117
  %call26 = tail call i32 @PyDict_SetItem(%struct._object* %call, %struct._object* %8, %struct._object* %call5) #1, !dbg !1478
  tail call void @llvm.dbg.value(metadata i32 %call26, i64 0, metadata !526, metadata !1034), !dbg !1464
  %cmp27 = icmp slt i32 %call26, 0, !dbg !1479
  br i1 %cmp27, label %do.body.64, label %if.then.33, !dbg !1481

if.then.33:                                       ; preds = %if.end.23
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !533, metadata !1034), !dbg !1482
  tail call void @llvm.dbg.value(metadata %struct.localdummyobject* null, i64 0, metadata !525, metadata !1034), !dbg !1436
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !535, metadata !1034), !dbg !1484
  %ob_refcnt36 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1486
  %9 = load i64, i64* %ob_refcnt36, align 8, !dbg !1486, !tbaa !1057
  %dec37 = add i64 %9, -1, !dbg !1486
  store i64 %dec37, i64* %ob_refcnt36, align 8, !dbg !1486, !tbaa !1057
  %cmp38 = icmp eq i64 %dec37, 0, !dbg !1486
  br i1 %cmp38, label %if.else.40, label %if.end.46, !dbg !1488

if.else.40:                                       ; preds = %if.then.33
  %ob_type41 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1489
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type41, align 8, !dbg !1489, !tbaa !1098
  %tp_dealloc42 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !1489
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc42, align 8, !dbg !1489, !tbaa !1127
  tail call void %11(%struct._object* %call5) #1, !dbg !1489
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.40, %if.then.33
  tail call void @llvm.dbg.value(metadata %struct._object* %call1, i64 0, metadata !539, metadata !1034), !dbg !1491
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1493
  %12 = load i64, i64* %ob_refcnt51, align 8, !dbg !1493, !tbaa !1057
  %dec52 = add i64 %12, -1, !dbg !1493
  store i64 %dec52, i64* %ob_refcnt51, align 8, !dbg !1493, !tbaa !1057
  %cmp53 = icmp eq i64 %dec52, 0, !dbg !1493
  br i1 %cmp53, label %if.else.55, label %cleanup, !dbg !1495

if.else.55:                                       ; preds = %if.end.46
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1496
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8, !dbg !1496, !tbaa !1098
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i64 0, i32 4, !dbg !1496
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8, !dbg !1496, !tbaa !1127
  tail call void %14(%struct._object* %call1) #1, !dbg !1496
  br label %cleanup

do.body.64:                                       ; preds = %if.end.4, %if.end.8, %if.end.12, %if.end.23
  %wr.1.ph = phi %struct._object* [ null, %if.end.23 ], [ %call9, %if.end.12 ], [ null, %if.end.8 ], [ null, %if.end.4 ]
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 0, !dbg !1498
  %15 = load i64, i64* %ob_refcnt66, align 8, !dbg !1498, !tbaa !1057
  %dec67 = add i64 %15, -1, !dbg !1498
  store i64 %dec67, i64* %ob_refcnt66, align 8, !dbg !1498, !tbaa !1057
  %cmp68 = icmp eq i64 %dec67, 0, !dbg !1498
  br i1 %cmp68, label %if.else.70, label %if.end.76, !dbg !1500

if.else.70:                                       ; preds = %do.body.64
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %call1, i64 0, i32 1, !dbg !1501
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8, !dbg !1501, !tbaa !1098
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !1501
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8, !dbg !1501, !tbaa !1127
  tail call void %17(%struct._object* %call1) #1, !dbg !1501
  br label %if.end.76

if.end.76:                                        ; preds = %if.else.70, %do.body.64
  %cmp81 = icmp eq %struct._object* %wr.1.ph, null, !dbg !1503
  br i1 %cmp81, label %if.end.95, label %do.body.83, !dbg !1504

do.body.83:                                       ; preds = %if.end.76
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %wr.1.ph, i64 0, i32 0, !dbg !1505
  %18 = load i64, i64* %ob_refcnt85, align 8, !dbg !1505, !tbaa !1057
  %dec86 = add i64 %18, -1, !dbg !1505
  store i64 %dec86, i64* %ob_refcnt85, align 8, !dbg !1505, !tbaa !1057
  %cmp87 = icmp eq i64 %dec86, 0, !dbg !1505
  br i1 %cmp87, label %if.else.89, label %if.end.95, !dbg !1507

if.else.89:                                       ; preds = %do.body.83
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %wr.1.ph, i64 0, i32 1, !dbg !1508
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8, !dbg !1508, !tbaa !1098
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !1508
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc91, align 8, !dbg !1508, !tbaa !1127
  tail call void %20(%struct._object* %wr.1.ph) #1, !dbg !1508
  br label %if.end.95

if.end.95:                                        ; preds = %if.else.89, %do.body.83, %if.end.76
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !551, metadata !1034), !dbg !1510
  br i1 %cmp6, label %cleanup, label %do.body.102, !dbg !1512

do.body.102:                                      ; preds = %if.end.95
  tail call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !553, metadata !1034), !dbg !1513
  %ob_refcnt104 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 0, !dbg !1515
  %21 = load i64, i64* %ob_refcnt104, align 8, !dbg !1515, !tbaa !1057
  %dec105 = add i64 %21, -1, !dbg !1515
  store i64 %dec105, i64* %ob_refcnt104, align 8, !dbg !1515, !tbaa !1057
  %cmp106 = icmp eq i64 %dec105, 0, !dbg !1515
  br i1 %cmp106, label %if.else.108, label %cleanup, !dbg !1517

if.else.108:                                      ; preds = %do.body.102
  %22 = getelementptr inbounds %struct._object, %struct._object* %call5, i64 0, i32 1, !dbg !1518
  %23 = load %struct._typeobject*, %struct._typeobject** %22, align 8, !dbg !1518, !tbaa !1098
  %tp_dealloc110 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !1518
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc110, align 8, !dbg !1518, !tbaa !1127
  tail call void %24(%struct._object* %call5) #1, !dbg !1518
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then, %if.end.95, %do.body.102, %if.else.108, %if.else.55, %if.end.46
  %retval.0 = phi %struct._object* [ %call1, %if.end.46 ], [ %call1, %if.else.55 ], [ null, %if.else.108 ], [ null, %do.body.102 ], [ null, %if.end.95 ], [ null, %if.then ], [ null, %if.end ]
  ret %struct._object* %retval.0, !dbg !1520
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
define internal %struct._object* @_localdummy_destroyed(%struct._object* nocapture readonly %localweakref, %struct._object* %dummyweakref) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %localweakref, i64 0, metadata !635, metadata !1034), !dbg !1521
  tail call void @llvm.dbg.value(metadata %struct._object* %dummyweakref, i64 0, metadata !636, metadata !1034), !dbg !1522
  %wr_object = getelementptr inbounds %struct._object, %struct._object* %localweakref, i64 1, !dbg !1523
  %0 = bitcast %struct._object* %wr_object to %struct._object**, !dbg !1523
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !1523, !tbaa !1524
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !1523
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !1526, !tbaa !1057
  %cmp237 = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !1527
  %not.cmp = icmp slt i64 %2, 1, !dbg !1527
  %cmp2 = or i1 %cmp237, %not.cmp, !dbg !1527
  br i1 %cmp2, label %cleanup, label %if.end, !dbg !1529

if.end:                                           ; preds = %entry
  %inc4 = add i64 %2, 1, !dbg !1526
  store i64 %inc4, i64* %ob_refcnt, align 8, !dbg !1526, !tbaa !1057
  %dummies = getelementptr inbounds %struct._object, %struct._object* %1, i64 3, !dbg !1530
  %3 = bitcast %struct._object* %dummies to %struct._object**, !dbg !1530
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !1530, !tbaa !1207
  %cmp5 = icmp eq %struct._object* %4, null, !dbg !1531
  br i1 %cmp5, label %do.body, label %if.then.6, !dbg !1532

if.then.6:                                        ; preds = %if.end
  %call = tail call %struct._object* @PyDict_GetItem(%struct._object* %4, %struct._object* %dummyweakref) #1, !dbg !1533
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !639, metadata !1034), !dbg !1534
  %cmp8 = icmp eq %struct._object* %call, null, !dbg !1535
  br i1 %cmp8, label %if.end.12, label %if.then.9, !dbg !1537

if.then.9:                                        ; preds = %if.then.6
  %5 = load %struct._object*, %struct._object** %3, align 8, !dbg !1538, !tbaa !1207
  %call11 = tail call i32 @PyDict_DelItem(%struct._object* %5, %struct._object* %dummyweakref) #1, !dbg !1540
  br label %if.end.12, !dbg !1541

if.end.12:                                        ; preds = %if.then.6, %if.then.9
  %call13 = tail call %struct._object* @PyErr_Occurred() #1, !dbg !1542
  %tobool = icmp eq %struct._object* %call13, null, !dbg !1542
  br i1 %tobool, label %do.body, label %if.then.14, !dbg !1544

if.then.14:                                       ; preds = %if.end.12
  tail call void @PyErr_WriteUnraisable(%struct._object* %1) #1, !dbg !1545
  br label %do.body, !dbg !1545

do.body:                                          ; preds = %if.then.14, %if.end.12, %if.end
  %6 = load i64, i64* %ob_refcnt, align 8, !dbg !1546, !tbaa !1057
  %dec = add i64 %6, -1, !dbg !1546
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1546, !tbaa !1057
  %cmp18 = icmp eq i64 %dec, 0, !dbg !1546
  br i1 %cmp18, label %if.else, label %cleanup, !dbg !1548

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 1, !dbg !1549
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1549, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i64 0, i32 4, !dbg !1549
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1549, !tbaa !1127
  tail call void %8(%struct._object* %1) #1, !dbg !1549
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.body, %entry
  %storemerge.in = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1551
  %storemerge = add i64 %storemerge.in, 1, !dbg !1551
  store i64 %storemerge, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1552, !tbaa !1057
  ret %struct._object* @_Py_NoneStruct, !dbg !1553
}

declare i32 @PyObject_IsTrue(%struct._object*) #3

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #3

declare %struct._object* @PyCFunction_NewEx(%struct.PyMethodDef*, %struct._object*, %struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

declare void @PyErr_WriteUnraisable(%struct._object*) #3

; Function Attrs: nounwind uwtable
define internal void @lock_dealloc(%struct.lockobject* %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.lockobject* %self, i64 0, metadata !648, metadata !1034), !dbg !1554
  %in_weakreflist = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 2, !dbg !1555
  %0 = load %struct._object*, %struct._object** %in_weakreflist, align 8, !dbg !1555, !tbaa !1557
  %cmp = icmp eq %struct._object* %0, null, !dbg !1559
  br i1 %cmp, label %if.end, label %if.then, !dbg !1560

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 0, !dbg !1561
  tail call void @PyObject_ClearWeakRefs(%struct._object* %1) #1, !dbg !1562
  br label %if.end, !dbg !1562

if.end:                                           ; preds = %entry, %if.then
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 1, !dbg !1563
  %2 = load i8*, i8** %lock_lock, align 8, !dbg !1563, !tbaa !1565
  %cmp1 = icmp eq i8* %2, null, !dbg !1566
  br i1 %cmp1, label %if.end.7, label %if.then.2, !dbg !1567

if.then.2:                                        ; preds = %if.end
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 3, !dbg !1568
  %3 = load i8, i8* %locked, align 1, !dbg !1568, !tbaa !1571
  %tobool = icmp eq i8 %3, 0, !dbg !1572
  br i1 %tobool, label %if.end.5, label %if.then.3, !dbg !1573

if.then.3:                                        ; preds = %if.then.2
  tail call void @PyThread_release_lock(i8* %2) #1, !dbg !1574
  %.pre = load i8*, i8** %lock_lock, align 8, !dbg !1575, !tbaa !1565
  br label %if.end.5, !dbg !1574

if.end.5:                                         ; preds = %if.then.2, %if.then.3
  %4 = phi i8* [ %2, %if.then.2 ], [ %.pre, %if.then.3 ], !dbg !1575
  tail call void @PyThread_free_lock(i8* %4) #1, !dbg !1576
  br label %if.end.7, !dbg !1577

if.end.7:                                         ; preds = %if.end, %if.end.5
  %5 = bitcast %struct.lockobject* %self to i8*, !dbg !1578
  tail call void @PyObject_Free(i8* %5) #1, !dbg !1579
  ret void, !dbg !1580
}

declare void @PyThread_release_lock(i8*) #3

declare void @PyThread_free_lock(i8*) #3

declare void @PyObject_Free(i8*) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_PyThread_acquire_lock(%struct.lockobject* nocapture %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %kwlist = alloca [3 x i8*], align 16
  %blocking = alloca i32, align 4
  %timeout = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.lockobject* %self, i64 0, metadata !653, metadata !1034), !dbg !1581
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !654, metadata !1034), !dbg !1582
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !655, metadata !1034), !dbg !1583
  %0 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !1584
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !1584
  tail call void @llvm.dbg.declare(metadata [3 x i8*]* %kwlist, metadata !656, metadata !1034), !dbg !1585
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @rlock_acquire.kwlist to i8*), i64 24, i32 16, i1 false), !dbg !1585
  %1 = bitcast i32* %blocking to i8*, !dbg !1586
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1586
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !660, metadata !1034), !dbg !1587
  store i32 1, i32* %blocking, align 4, !dbg !1587, !tbaa !1588
  %2 = bitcast double* %timeout to i8*, !dbg !1589
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1589
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, i64 0, metadata !661, metadata !1034), !dbg !1590
  store double -1.000000e+00, double* %timeout, align 8, !dbg !1590, !tbaa !1591
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i64 0, i64 0, !dbg !1593
  tail call void @llvm.dbg.value(metadata i32* %blocking, i64 0, metadata !660, metadata !1034), !dbg !1587
  tail call void @llvm.dbg.value(metadata double* %timeout, i64 0, metadata !661, metadata !1034), !dbg !1590
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %arraydecay, i32* nonnull %blocking, double* nonnull %timeout) #1, !dbg !1595
  %tobool = icmp eq i32 %call, 0, !dbg !1595
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1596

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %blocking, i64 0, metadata !660, metadata !1034), !dbg !1587
  %3 = load i32, i32* %blocking, align 4, !dbg !1597, !tbaa !1588
  %tobool1 = icmp eq i32 %3, 0, !dbg !1597
  call void @llvm.dbg.value(metadata double* %timeout, i64 0, metadata !661, metadata !1034), !dbg !1590
  %4 = load double, double* %timeout, align 8
  %cmp = fcmp une double %4, -1.000000e+00, !dbg !1599
  %or.cond = and i1 %tobool1, %cmp, !dbg !1600
  br i1 %or.cond, label %if.then.2, label %if.end.3, !dbg !1600

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1601, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0)) #1, !dbg !1603
  br label %cleanup, !dbg !1604

if.end.3:                                         ; preds = %if.end
  %cmp4 = fcmp olt double %4, 0.000000e+00, !dbg !1605
  %or.cond36 = and i1 %cmp4, %cmp, !dbg !1607
  br i1 %or.cond36, label %if.then.7, label %if.end.8, !dbg !1607

if.then.7:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1608, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0)) #1, !dbg !1610
  br label %cleanup, !dbg !1611

if.end.8:                                         ; preds = %if.end.3
  br i1 %tobool1, label %if.end.18, label %if.else, !dbg !1612

if.else:                                          ; preds = %if.end.8
  %cmp11 = fcmp oeq double %4, -1.000000e+00, !dbg !1613
  br i1 %cmp11, label %if.end.18, label %if.else.13, !dbg !1616

if.else.13:                                       ; preds = %if.else
  %mul = fmul double %4, 1.000000e+06, !dbg !1617
  call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !661, metadata !1034), !dbg !1590
  store double %mul, double* %timeout, align 8, !dbg !1617, !tbaa !1591
  %cmp14 = fcmp ult double %mul, 0x43E0000000000000, !dbg !1619
  br i1 %cmp14, label %if.end.16, label %if.then.15, !dbg !1621

if.then.15:                                       ; preds = %if.else.13
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1622, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0)) #1, !dbg !1624
  br label %cleanup, !dbg !1625

if.end.16:                                        ; preds = %if.else.13
  %conv = fptosi double %mul to i64, !dbg !1626
  call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !662, metadata !1034), !dbg !1627
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.8, %if.end.16
  %microseconds.0 = phi i64 [ %conv, %if.end.16 ], [ 0, %if.end.8 ], [ -1, %if.else ]
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 1, !dbg !1628
  %8 = load i8*, i8** %lock_lock, align 8, !dbg !1628, !tbaa !1565
  %call19 = call fastcc i32 @acquire_timed(i8* %8, i64 %microseconds.0), !dbg !1629
  call void @llvm.dbg.value(metadata i32 %call19, i64 0, metadata !663, metadata !1034), !dbg !1630
  %cmp20 = icmp eq i32 %call19, 2, !dbg !1631
  br i1 %cmp20, label %cleanup, label %if.end.23, !dbg !1633

if.end.23:                                        ; preds = %if.end.18
  %cmp24 = icmp eq i32 %call19, 1, !dbg !1634
  br i1 %cmp24, label %if.then.26, label %if.end.27, !dbg !1636

if.then.26:                                       ; preds = %if.end.23
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 3, !dbg !1637
  store i8 1, i8* %locked, align 1, !dbg !1638, !tbaa !1571
  br label %if.end.27, !dbg !1639

if.end.27:                                        ; preds = %if.then.26, %if.end.23
  %conv30 = zext i1 %cmp24 to i64, !dbg !1640
  %call31 = call %struct._object* @PyBool_FromLong(i64 %conv30) #1, !dbg !1641
  br label %cleanup, !dbg !1642

cleanup:                                          ; preds = %if.end.18, %entry, %if.end.27, %if.then.15, %if.then.7, %if.then.2
  %retval.0 = phi %struct._object* [ null, %if.then.2 ], [ null, %if.then.7 ], [ %call31, %if.end.27 ], [ null, %if.then.15 ], [ null, %entry ], [ null, %if.end.18 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1643
  call void @llvm.lifetime.end(i64 4, i8* %1) #1, !dbg !1643
  call void @llvm.lifetime.end(i64 24, i8* %0) #1, !dbg !1643
  ret %struct._object* %retval.0, !dbg !1643
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_PyThread_release_lock(%struct.lockobject* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.lockobject* %self, i64 0, metadata !692, metadata !1034), !dbg !1644
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 3, !dbg !1645
  %0 = load i8, i8* %locked, align 1, !dbg !1645, !tbaa !1571
  %tobool = icmp eq i8 %0, 0, !dbg !1647
  br i1 %tobool, label %if.then, label %if.end, !dbg !1648

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !1649, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0)) #1, !dbg !1651
  br label %return, !dbg !1652

if.end:                                           ; preds = %entry
  %lock_lock = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 1, !dbg !1653
  %2 = load i8*, i8** %lock_lock, align 8, !dbg !1653, !tbaa !1565
  tail call void @PyThread_release_lock(i8* %2) #1, !dbg !1654
  store i8 0, i8* %locked, align 1, !dbg !1655, !tbaa !1571
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1656, !tbaa !1057
  %inc = add i64 %3, 1, !dbg !1656
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1656, !tbaa !1057
  br label %return, !dbg !1657

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end ], [ null, %if.then ]
  ret %struct._object* %retval.0, !dbg !1658
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @lock_locked_lock(%struct.lockobject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.lockobject* %self, i64 0, metadata !695, metadata !1034), !dbg !1659
  %locked = getelementptr inbounds %struct.lockobject, %struct.lockobject* %self, i64 0, i32 3, !dbg !1660
  %0 = load i8, i8* %locked, align 1, !dbg !1660, !tbaa !1571
  %conv = sext i8 %0 to i64, !dbg !1661
  %call = tail call %struct._object* @PyBool_FromLong(i64 %conv) #1, !dbg !1662
  ret %struct._object* %call, !dbg !1663
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #1

declare i32 @PyArg_ParseTupleAndKeywords(%struct._object*, %struct._object*, i8*, i8**, ...) #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @acquire_timed(i8* %lock, i64 %microseconds) #0 {
entry:
  %curtime = alloca %struct.timeval, align 8
  %endtime = alloca <2 x i64>, align 16
  %tmpcast = bitcast <2 x i64>* %endtime to %struct.timeval*
  tail call void @llvm.dbg.value(metadata i8* %lock, i64 0, metadata !669, metadata !1034), !dbg !1664
  tail call void @llvm.dbg.value(metadata i64 %microseconds, i64 0, metadata !670, metadata !1034), !dbg !1665
  %0 = bitcast %struct.timeval* %curtime to i8*, !dbg !1666
  call void @llvm.lifetime.start(i64 16, i8* %0) #1, !dbg !1666
  %1 = bitcast <2 x i64>* %endtime to i8*, !dbg !1667
  call void @llvm.lifetime.start(i64 16, i8* %1) #1, !dbg !1667
  %cmp = icmp sgt i64 %microseconds, 0, !dbg !1668
  br i1 %cmp, label %if.then, label %entry.do.body.preheader_crit_edge, !dbg !1670

entry.do.body.preheader_crit_edge:                ; preds = %entry
  %.pre = getelementptr inbounds <2 x i64>, <2 x i64>* %endtime, i64 0, i64 0, !dbg !1671
  br label %do.body.preheader, !dbg !1670

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct.timeval* %tmpcast, i64 0, metadata !682, metadata !1034), !dbg !1676
  call void @_PyTime_gettimeofday(%struct.timeval* nonnull %tmpcast) #1, !dbg !1677
  %div = sdiv i64 %microseconds, 1000000, !dbg !1679
  %tv_sec = getelementptr inbounds <2 x i64>, <2 x i64>* %endtime, i64 0, i64 0, !dbg !1680
  %rem = srem i64 %microseconds, 1000000, !dbg !1681
  %2 = load <2 x i64>, <2 x i64>* %endtime, align 16, !dbg !1682, !tbaa !1079
  %3 = insertelement <2 x i64> undef, i64 %div, i32 0, !dbg !1682
  %4 = insertelement <2 x i64> %3, i64 %rem, i32 1, !dbg !1682
  %5 = add <2 x i64> %2, %4, !dbg !1682
  store <2 x i64> %5, <2 x i64>* %endtime, align 16, !dbg !1682, !tbaa !1079
  br label %do.body.preheader, !dbg !1683

do.body.preheader:                                ; preds = %entry.do.body.preheader_crit_edge, %if.then
  %tv_sec16.pre-phi = phi i64* [ %.pre, %entry.do.body.preheader_crit_edge ], [ %tv_sec, %if.then ], !dbg !1671
  %tv_usec18.pre-phi = getelementptr inbounds %struct.timeval, %struct.timeval* %tmpcast, i64 0, i32 1, !dbg !1684
  %tv_sec17 = getelementptr inbounds %struct.timeval, %struct.timeval* %curtime, i64 0, i32 0, !dbg !1685
  %tv_usec19 = getelementptr inbounds %struct.timeval, %struct.timeval* %curtime, i64 0, i32 1, !dbg !1686
  br label %do.body.outer, !dbg !1687

do.body.outer:                                    ; preds = %do.body.preheader, %if.then.15
  %microseconds.addr.0.ph = phi i64 [ %microseconds, %do.body.preheader ], [ %add21, %if.then.15 ]
  %cmp3 = icmp eq i64 %microseconds.addr.0.ph, 0, !dbg !1688
  br i1 %cmp3, label %if.end.7.preheader, label %do.body.outer.split.us, !dbg !1689

if.end.7.preheader:                               ; preds = %do.body.outer
  br label %if.end.7, !dbg !1687

do.body.outer.split.us:                           ; preds = %do.body.outer
  %cmp14 = icmp sgt i64 %microseconds.addr.0.ph, 0, !dbg !1690
  br i1 %cmp14, label %do.body.outer.split.us.split.us, label %do.body.us.preheader, !dbg !1691

do.body.us.preheader:                             ; preds = %do.body.outer.split.us
  %microseconds.addr.0.ph.lcssa79 = phi i64 [ %microseconds.addr.0.ph, %do.body.outer.split.us ]
  br label %do.body.us, !dbg !1687

do.body.outer.split.us.split.us:                  ; preds = %do.body.outer.split.us
  %call.us.us = call i32 @PyThread_acquire_lock_timed(i8* %lock, i64 0, i32 0) #1, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %call.us.us, i64 0, metadata !671, metadata !1034), !dbg !1692
  %cmp2.us.us = icmp eq i32 %call.us.us, 0, !dbg !1693
  br i1 %cmp2.us.us, label %if.then.4.us.us, label %if.end.7.us.us, !dbg !1689

if.then.4.us.us:                                  ; preds = %do.body.outer.split.us.split.us
  %call5.us.us = call %struct._ts* @PyEval_SaveThread() #1, !dbg !1694
  call void @llvm.dbg.value(metadata %struct._ts* %call5.us.us, i64 0, metadata !683, metadata !1034), !dbg !1694
  %call6.us.us = call i32 @PyThread_acquire_lock_timed(i8* %lock, i64 %microseconds.addr.0.ph, i32 1) #1, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %call6.us.us, i64 0, metadata !671, metadata !1034), !dbg !1692
  call void @PyEval_RestoreThread(%struct._ts* %call5.us.us) #1, !dbg !1696
  br label %if.end.7.us.us, !dbg !1697

if.end.7.us.us:                                   ; preds = %if.then.4.us.us, %do.body.outer.split.us.split.us
  %r.0.us.us = phi i32 [ %call6.us.us, %if.then.4.us.us ], [ %call.us.us, %do.body.outer.split.us.split.us ]
  %cmp8.us.us = icmp eq i32 %r.0.us.us, 2, !dbg !1698
  br i1 %cmp8.us.us, label %if.then.9.us.us, label %cleanup.loopexit75, !dbg !1699

if.then.9.us.us:                                  ; preds = %if.end.7.us.us
  %call10.us.us = call i32 @Py_MakePendingCalls() #1, !dbg !1700
  %cmp11.us.us = icmp slt i32 %call10.us.us, 0, !dbg !1702
  br i1 %cmp11.us.us, label %cleanup.loopexit75, label %if.then.15, !dbg !1703

do.body.us:                                       ; preds = %do.body.us.preheader, %if.then.9.us
  %call.us = call i32 @PyThread_acquire_lock_timed(i8* %lock, i64 0, i32 0) #1, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %call.us, i64 0, metadata !671, metadata !1034), !dbg !1692
  %cmp2.us = icmp eq i32 %call.us, 0, !dbg !1693
  br i1 %cmp2.us, label %if.then.4.us, label %if.end.7.us, !dbg !1689

if.then.4.us:                                     ; preds = %do.body.us
  %call5.us = call %struct._ts* @PyEval_SaveThread() #1, !dbg !1694
  call void @llvm.dbg.value(metadata %struct._ts* %call5.us, i64 0, metadata !683, metadata !1034), !dbg !1694
  %call6.us = call i32 @PyThread_acquire_lock_timed(i8* %lock, i64 %microseconds.addr.0.ph.lcssa79, i32 1) #1, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %call6.us, i64 0, metadata !671, metadata !1034), !dbg !1692
  call void @PyEval_RestoreThread(%struct._ts* %call5.us) #1, !dbg !1696
  br label %if.end.7.us, !dbg !1697

if.end.7.us:                                      ; preds = %if.then.4.us, %do.body.us
  %r.0.us = phi i32 [ %call6.us, %if.then.4.us ], [ %call.us, %do.body.us ]
  %cmp8.us = icmp eq i32 %r.0.us, 2, !dbg !1698
  br i1 %cmp8.us, label %if.then.9.us, label %cleanup.loopexit73, !dbg !1699

if.then.9.us:                                     ; preds = %if.end.7.us
  %call10.us = call i32 @Py_MakePendingCalls() #1, !dbg !1700
  %cmp11.us = icmp slt i32 %call10.us, 0, !dbg !1702
  br i1 %cmp11.us, label %cleanup.loopexit73, label %do.body.us, !dbg !1703

if.end.7:                                         ; preds = %if.end.7.preheader, %if.then.9
  %call = call i32 @PyThread_acquire_lock_timed(i8* %lock, i64 0, i32 0) #1, !dbg !1687
  call void @llvm.dbg.value(metadata i32 %call, i64 0, metadata !671, metadata !1034), !dbg !1692
  %cmp8 = icmp eq i32 %call, 2, !dbg !1698
  br i1 %cmp8, label %if.then.9, label %cleanup.loopexit, !dbg !1699

if.then.9:                                        ; preds = %if.end.7
  %call10 = call i32 @Py_MakePendingCalls() #1, !dbg !1700
  %cmp11 = icmp slt i32 %call10, 0, !dbg !1702
  br i1 %cmp11, label %cleanup.loopexit, label %if.end.7, !dbg !1703

if.then.15:                                       ; preds = %if.then.9.us.us
  call void @llvm.dbg.value(metadata %struct.timeval* %curtime, i64 0, metadata !672, metadata !1034), !dbg !1704
  call void @_PyTime_gettimeofday(%struct.timeval* nonnull %curtime) #1, !dbg !1705
  %6 = load i64, i64* %tv_sec16.pre-phi, align 8, !dbg !1671, !tbaa !1706
  %7 = load i64, i64* %tv_sec17, align 8, !dbg !1685, !tbaa !1706
  %sub = sub i64 %6, %7, !dbg !1708
  %mul = mul i64 %sub, 1000000, !dbg !1709
  %8 = load i64, i64* %tv_usec18.pre-phi, align 8, !dbg !1684, !tbaa !1710
  %9 = load i64, i64* %tv_usec19, align 8, !dbg !1686, !tbaa !1710
  %sub20 = sub i64 %8, %9, !dbg !1711
  %add21 = add i64 %sub20, %mul, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %add21, i64 0, metadata !670, metadata !1034), !dbg !1665
  %cmp22 = icmp slt i64 %add21, 1, !dbg !1713
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !671, metadata !1034), !dbg !1692
  br i1 %cmp22, label %cleanup.loopexit75, label %do.body.outer

cleanup.loopexit:                                 ; preds = %if.then.9, %if.end.7
  %retval.0.ph = phi i32 [ 2, %if.then.9 ], [ %call, %if.end.7 ]
  br label %cleanup, !dbg !1715

cleanup.loopexit73:                               ; preds = %if.end.7.us, %if.then.9.us
  %retval.0.ph74 = phi i32 [ 2, %if.then.9.us ], [ %r.0.us, %if.end.7.us ]
  br label %cleanup, !dbg !1715

cleanup.loopexit75:                               ; preds = %if.then.9.us.us, %if.end.7.us.us, %if.then.15
  %retval.0.ph76 = phi i32 [ 0, %if.then.15 ], [ 2, %if.then.9.us.us ], [ %r.0.us.us, %if.end.7.us.us ]
  br label %cleanup, !dbg !1715

cleanup:                                          ; preds = %cleanup.loopexit75, %cleanup.loopexit73, %cleanup.loopexit
  %retval.0 = phi i32 [ %retval.0.ph, %cleanup.loopexit ], [ %retval.0.ph74, %cleanup.loopexit73 ], [ %retval.0.ph76, %cleanup.loopexit75 ]
  call void @llvm.lifetime.end(i64 16, i8* %1) #1, !dbg !1715
  call void @llvm.lifetime.end(i64 16, i8* %0) #1, !dbg !1715
  ret i32 %retval.0, !dbg !1715
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
  tail call void @llvm.dbg.value(metadata %struct.rlockobject* %self, i64 0, metadata !700, metadata !1034), !dbg !1716
  %in_weakreflist = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 4, !dbg !1717
  %0 = load %struct._object*, %struct._object** %in_weakreflist, align 8, !dbg !1717, !tbaa !1719
  %cmp = icmp eq %struct._object* %0, null, !dbg !1721
  br i1 %cmp, label %if.end, label %if.then, !dbg !1722

if.then:                                          ; preds = %entry
  %1 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 0, !dbg !1723
  tail call void @PyObject_ClearWeakRefs(%struct._object* %1) #1, !dbg !1724
  br label %if.end, !dbg !1724

if.end:                                           ; preds = %entry, %if.then
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 1, !dbg !1725
  %2 = load i8*, i8** %rlock_lock, align 8, !dbg !1725, !tbaa !1727
  %cmp1 = icmp eq i8* %2, null, !dbg !1728
  br i1 %cmp1, label %if.end.8, label %if.then.2, !dbg !1729

if.then.2:                                        ; preds = %if.end
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 3, !dbg !1730
  %3 = load i64, i64* %rlock_count, align 8, !dbg !1730, !tbaa !1733
  %cmp3 = icmp eq i64 %3, 0, !dbg !1734
  br i1 %cmp3, label %if.end.6, label %if.then.4, !dbg !1735

if.then.4:                                        ; preds = %if.then.2
  tail call void @PyThread_release_lock(i8* %2) #1, !dbg !1736
  %.pre = load i8*, i8** %rlock_lock, align 8, !dbg !1737, !tbaa !1727
  br label %if.end.6, !dbg !1736

if.end.6:                                         ; preds = %if.then.2, %if.then.4
  %4 = phi i8* [ %2, %if.then.2 ], [ %.pre, %if.then.4 ], !dbg !1737
  tail call void @PyThread_free_lock(i8* %4) #1, !dbg !1738
  br label %if.end.8, !dbg !1739

if.end.8:                                         ; preds = %if.end, %if.end.6
  %ob_type = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 0, i32 1, !dbg !1740
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1740, !tbaa !1098
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 38, !dbg !1741
  %6 = load void (i8*)*, void (i8*)** %tp_free, align 8, !dbg !1741, !tbaa !1100
  %7 = bitcast %struct.rlockobject* %self to i8*, !dbg !1742
  tail call void %6(i8* %7) #1, !dbg !1740
  ret void, !dbg !1743
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_repr(%struct.rlockobject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rlockobject* %self, i64 0, metadata !705, metadata !1034), !dbg !1744
  %ob_type = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 0, i32 1, !dbg !1745
  %0 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1745, !tbaa !1098
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %0, i64 0, i32 1, !dbg !1746
  %1 = load i8*, i8** %tp_name, align 8, !dbg !1746, !tbaa !1179
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 2, !dbg !1747
  %2 = load i64, i64* %rlock_owner, align 8, !dbg !1747, !tbaa !1748
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 3, !dbg !1749
  %3 = load i64, i64* %rlock_count, align 8, !dbg !1749, !tbaa !1733
  %call = tail call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.32, i64 0, i64 0), i8* %1, i64 %2, i64 %3) #1, !dbg !1750
  ret %struct._object* %call, !dbg !1751
}

declare %struct._object* @PyType_GenericAlloc(%struct._typeobject*, i64) #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_new(%struct._typeobject* %type, %struct._object* nocapture readnone %args, %struct._object* nocapture readnone %kwds) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._typeobject* %type, i64 0, metadata !750, metadata !1034), !dbg !1752
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !751, metadata !1034), !dbg !1753
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !752, metadata !1034), !dbg !1754
  %tp_alloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %type, i64 0, i32 36, !dbg !1755
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** %tp_alloc, align 8, !dbg !1755, !tbaa !1324
  %call = tail call %struct._object* %0(%struct._typeobject* %type, i64 0) #1, !dbg !1756
  %cmp = icmp eq %struct._object* %call, null, !dbg !1757
  br i1 %cmp, label %cleanup, label %if.then, !dbg !1758

if.then:                                          ; preds = %entry
  %rlock_owner = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, i32 1, !dbg !1759
  %1 = bitcast %struct._typeobject** %rlock_owner to i8*, !dbg !1760
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 24, i32 8, i1 false), !dbg !1761
  %call1 = tail call i8* @PyThread_allocate_lock() #1, !dbg !1760
  %rlock_lock = getelementptr inbounds %struct._object, %struct._object* %call, i64 1, !dbg !1762
  %2 = bitcast %struct._object* %rlock_lock to i8**, !dbg !1762
  store i8* %call1, i8** %2, align 8, !dbg !1763, !tbaa !1727
  %cmp3 = icmp eq i8* %call1, null, !dbg !1764
  br i1 %cmp3, label %do.body, label %cleanup, !dbg !1765

do.body:                                          ; preds = %if.then
  tail call void @llvm.dbg.value(metadata %struct._object* %call, i64 0, metadata !754, metadata !1034), !dbg !1766
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 0, !dbg !1768
  %3 = load i64, i64* %ob_refcnt, align 8, !dbg !1768, !tbaa !1057
  %dec = add i64 %3, -1, !dbg !1768
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !1768, !tbaa !1057
  %cmp5 = icmp eq i64 %dec, 0, !dbg !1768
  br i1 %cmp5, label %if.else, label %if.end, !dbg !1770

if.else:                                          ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call, i64 0, i32 1, !dbg !1771
  %4 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1771, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %4, i64 0, i32 4, !dbg !1771
  %5 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !1771, !tbaa !1127
  tail call void %5(%struct._object* %call) #1, !dbg !1771
  br label %if.end

if.end:                                           ; preds = %do.body, %if.else
  %6 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !1773, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #1, !dbg !1774
  br label %cleanup, !dbg !1775

cleanup:                                          ; preds = %if.then, %entry, %if.end
  %retval.0 = phi %struct._object* [ null, %if.end ], [ null, %entry ], [ %call, %if.then ]
  ret %struct._object* %retval.0, !dbg !1776
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_acquire(%struct.rlockobject* nocapture %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %kwlist = alloca [3 x i8*], align 16
  %blocking = alloca i32, align 4
  %timeout = alloca double, align 8
  tail call void @llvm.dbg.value(metadata %struct.rlockobject* %self, i64 0, metadata !710, metadata !1034), !dbg !1777
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !711, metadata !1034), !dbg !1778
  tail call void @llvm.dbg.value(metadata %struct._object* %kwds, i64 0, metadata !712, metadata !1034), !dbg !1779
  %0 = bitcast [3 x i8*]* %kwlist to i8*, !dbg !1780
  call void @llvm.lifetime.start(i64 24, i8* %0) #1, !dbg !1780
  tail call void @llvm.dbg.declare(metadata [3 x i8*]* %kwlist, metadata !713, metadata !1034), !dbg !1781
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([3 x i8*]* @rlock_acquire.kwlist to i8*), i64 24, i32 16, i1 false), !dbg !1781
  %1 = bitcast i32* %blocking to i8*, !dbg !1782
  call void @llvm.lifetime.start(i64 4, i8* %1) #1, !dbg !1782
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !714, metadata !1034), !dbg !1783
  store i32 1, i32* %blocking, align 4, !dbg !1783, !tbaa !1588
  %2 = bitcast double* %timeout to i8*, !dbg !1784
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1784
  tail call void @llvm.dbg.value(metadata double -1.000000e+00, i64 0, metadata !715, metadata !1034), !dbg !1785
  store double -1.000000e+00, double* %timeout, align 8, !dbg !1785, !tbaa !1591
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !718, metadata !1034), !dbg !1786
  %arraydecay = getelementptr inbounds [3 x i8*], [3 x i8*]* %kwlist, i64 0, i64 0, !dbg !1787
  tail call void @llvm.dbg.value(metadata i32* %blocking, i64 0, metadata !714, metadata !1034), !dbg !1783
  tail call void @llvm.dbg.value(metadata double* %timeout, i64 0, metadata !715, metadata !1034), !dbg !1785
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @PyArg_ParseTupleAndKeywords(%struct._object* %args, %struct._object* %kwds, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8** %arraydecay, i32* nonnull %blocking, double* nonnull %timeout) #1, !dbg !1789
  %tobool = icmp eq i32 %call, 0, !dbg !1789
  br i1 %tobool, label %cleanup.50, label %if.end, !dbg !1790

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %blocking, i64 0, metadata !714, metadata !1034), !dbg !1783
  %3 = load i32, i32* %blocking, align 4, !dbg !1791, !tbaa !1588
  %tobool1 = icmp eq i32 %3, 0, !dbg !1791
  call void @llvm.dbg.value(metadata double* %timeout, i64 0, metadata !715, metadata !1034), !dbg !1785
  %4 = load double, double* %timeout, align 8
  %cmp = fcmp une double %4, -1.000000e+00, !dbg !1793
  %or.cond = and i1 %tobool1, %cmp, !dbg !1794
  br i1 %or.cond, label %if.then.2, label %if.end.3, !dbg !1794

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1795, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.27, i64 0, i64 0)) #1, !dbg !1797
  br label %cleanup.50, !dbg !1798

if.end.3:                                         ; preds = %if.end
  %cmp4 = fcmp olt double %4, 0.000000e+00, !dbg !1799
  %or.cond56 = and i1 %cmp4, %cmp, !dbg !1801
  br i1 %or.cond56, label %if.then.7, label %if.end.8, !dbg !1801

if.then.7:                                        ; preds = %if.end.3
  %6 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !1802, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.28, i64 0, i64 0)) #1, !dbg !1804
  br label %cleanup.50, !dbg !1805

if.end.8:                                         ; preds = %if.end.3
  br i1 %tobool1, label %if.end.18, label %if.else, !dbg !1806

if.else:                                          ; preds = %if.end.8
  %cmp11 = fcmp oeq double %4, -1.000000e+00, !dbg !1807
  br i1 %cmp11, label %if.end.18, label %if.else.13, !dbg !1810

if.else.13:                                       ; preds = %if.else
  %mul = fmul double %4, 1.000000e+06, !dbg !1811
  call void @llvm.dbg.value(metadata double %mul, i64 0, metadata !715, metadata !1034), !dbg !1785
  store double %mul, double* %timeout, align 8, !dbg !1811, !tbaa !1591
  %cmp14 = fcmp ult double %mul, 0x43E0000000000000, !dbg !1813
  br i1 %cmp14, label %if.end.16, label %if.then.15, !dbg !1815

if.then.15:                                       ; preds = %if.else.13
  %7 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1816, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0)) #1, !dbg !1818
  br label %cleanup.50, !dbg !1819

if.end.16:                                        ; preds = %if.else.13
  %conv = fptosi double %mul to i64, !dbg !1820
  call void @llvm.dbg.value(metadata i64 %conv, i64 0, metadata !716, metadata !1034), !dbg !1821
  br label %if.end.18

if.end.18:                                        ; preds = %if.else, %if.end.8, %if.end.16
  %microseconds.0 = phi i64 [ %conv, %if.end.16 ], [ 0, %if.end.8 ], [ -1, %if.else ]
  %call19 = call i64 @PyThread_get_thread_ident() #1, !dbg !1822
  call void @llvm.dbg.value(metadata i64 %call19, i64 0, metadata !717, metadata !1034), !dbg !1823
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 3, !dbg !1824
  %8 = load i64, i64* %rlock_count, align 8, !dbg !1824, !tbaa !1733
  %cmp20 = icmp eq i64 %8, 0, !dbg !1825
  br i1 %cmp20, label %if.end.33, label %land.lhs.true.22, !dbg !1826

land.lhs.true.22:                                 ; preds = %if.end.18
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 2, !dbg !1827
  %9 = load i64, i64* %rlock_owner, align 8, !dbg !1827, !tbaa !1748
  %cmp23 = icmp eq i64 %call19, %9, !dbg !1828
  br i1 %cmp23, label %if.then.25, label %if.end.33, !dbg !1829

if.then.25:                                       ; preds = %land.lhs.true.22
  call void @llvm.dbg.value(metadata i64 %add, i64 0, metadata !719, metadata !1034), !dbg !1830
  %cmp28 = icmp eq i64 %8, -1, !dbg !1831
  br i1 %cmp28, label %if.then.30, label %if.end.31, !dbg !1833

if.then.30:                                       ; preds = %if.then.25
  %10 = load %struct._object*, %struct._object** @PyExc_OverflowError, align 8, !dbg !1834, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0)) #1, !dbg !1836
  br label %cleanup.50, !dbg !1837

if.end.31:                                        ; preds = %if.then.25
  %add = add i64 %8, 1, !dbg !1838
  store i64 %add, i64* %rlock_count, align 8, !dbg !1839, !tbaa !1733
  %11 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1840, !tbaa !1057
  %inc = add i64 %11, 1, !dbg !1840
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1840, !tbaa !1057
  br label %cleanup.50, !dbg !1840

if.end.33:                                        ; preds = %if.end.18, %land.lhs.true.22
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 1, !dbg !1841
  %12 = load i8*, i8** %rlock_lock, align 8, !dbg !1841, !tbaa !1727
  %call34 = call fastcc i32 @acquire_timed(i8* %12, i64 %microseconds.0), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %call34, i64 0, metadata !718, metadata !1034), !dbg !1786
  %cmp35 = icmp eq i32 %call34, 1, !dbg !1843
  br i1 %cmp35, label %if.then.37, label %if.else.40, !dbg !1845

if.then.37:                                       ; preds = %if.end.33
  %rlock_owner38 = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 2, !dbg !1846
  store i64 %call19, i64* %rlock_owner38, align 8, !dbg !1848, !tbaa !1748
  store i64 1, i64* %rlock_count, align 8, !dbg !1849, !tbaa !1733
  br label %if.end.45, !dbg !1850

if.else.40:                                       ; preds = %if.end.33
  %cmp41 = icmp eq i32 %call34, 2, !dbg !1851
  br i1 %cmp41, label %cleanup.50, label %if.end.45, !dbg !1853

if.end.45:                                        ; preds = %if.else.40, %if.then.37
  %conv48 = zext i1 %cmp35 to i64, !dbg !1854
  %call49 = call %struct._object* @PyBool_FromLong(i64 %conv48) #1, !dbg !1855
  br label %cleanup.50, !dbg !1856

cleanup.50:                                       ; preds = %if.else.40, %if.then.30, %if.end.31, %entry, %if.end.45, %if.then.15, %if.then.7, %if.then.2
  %retval.1 = phi %struct._object* [ null, %if.then.2 ], [ null, %if.then.7 ], [ %call49, %if.end.45 ], [ null, %if.then.15 ], [ null, %entry ], [ null, %if.then.30 ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.end.31 ], [ null, %if.else.40 ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !1857
  call void @llvm.lifetime.end(i64 4, i8* %1) #1, !dbg !1857
  call void @llvm.lifetime.end(i64 24, i8* %0) #1, !dbg !1857
  ret %struct._object* %retval.1, !dbg !1857
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_release(%struct.rlockobject* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rlockobject* %self, i64 0, metadata !724, metadata !1034), !dbg !1858
  %call = tail call i64 @PyThread_get_thread_ident() #1, !dbg !1859
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !725, metadata !1034), !dbg !1860
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 3, !dbg !1861
  %0 = load i64, i64* %rlock_count, align 8, !dbg !1861, !tbaa !1733
  %cmp = icmp eq i64 %0, 0, !dbg !1863
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !1864

lor.lhs.false:                                    ; preds = %entry
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 2, !dbg !1865
  %1 = load i64, i64* %rlock_owner, align 8, !dbg !1865, !tbaa !1748
  %cmp1 = icmp eq i64 %1, %call, !dbg !1866
  br i1 %cmp1, label %if.end, label %if.then, !dbg !1867

if.then:                                          ; preds = %lor.lhs.false, %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1868, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #1, !dbg !1870
  br label %cleanup, !dbg !1871

if.end:                                           ; preds = %lor.lhs.false
  %dec = add i64 %0, -1, !dbg !1872
  store i64 %dec, i64* %rlock_count, align 8, !dbg !1872, !tbaa !1733
  %cmp3 = icmp eq i64 %dec, 0, !dbg !1874
  br i1 %cmp3, label %if.then.4, label %if.end.6, !dbg !1875

if.then.4:                                        ; preds = %if.end
  store i64 0, i64* %rlock_owner, align 8, !dbg !1876, !tbaa !1748
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 1, !dbg !1878
  %3 = load i8*, i8** %rlock_lock, align 8, !dbg !1878, !tbaa !1727
  tail call void @PyThread_release_lock(i8* %3) #1, !dbg !1879
  br label %if.end.6, !dbg !1880

if.end.6:                                         ; preds = %if.then.4, %if.end
  %4 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1881, !tbaa !1057
  %inc = add i64 %4, 1, !dbg !1881
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1881, !tbaa !1057
  br label %cleanup, !dbg !1881

cleanup:                                          ; preds = %if.end.6, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ @_Py_NoneStruct, %if.end.6 ]
  ret %struct._object* %retval.0, !dbg !1882
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_is_owned(%struct.rlockobject* nocapture readonly %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rlockobject* %self, i64 0, metadata !728, metadata !1034), !dbg !1883
  %call = tail call i64 @PyThread_get_thread_ident() #1, !dbg !1884
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !729, metadata !1034), !dbg !1885
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 3, !dbg !1886
  %0 = load i64, i64* %rlock_count, align 8, !dbg !1886, !tbaa !1733
  %cmp = icmp eq i64 %0, 0, !dbg !1888
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !1889

land.lhs.true:                                    ; preds = %entry
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 2, !dbg !1890
  %1 = load i64, i64* %rlock_owner, align 8, !dbg !1890, !tbaa !1748
  %cmp1 = icmp eq i64 %1, %call, !dbg !1891
  br i1 %cmp1, label %if.then, label %if.end, !dbg !1892

if.then:                                          ; preds = %land.lhs.true
  %2 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1893, !tbaa !1057
  %inc = add i64 %2, 1, !dbg !1893
  store i64 %inc, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1893, !tbaa !1057
  br label %cleanup, !dbg !1893

if.end:                                           ; preds = %entry, %land.lhs.true
  %3 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1895, !tbaa !1057
  %inc2 = add i64 %3, 1, !dbg !1895
  store i64 %inc2, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0, i32 0), align 8, !dbg !1895, !tbaa !1057
  br label %cleanup, !dbg !1895

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i64 0, i32 0, i32 0), %if.then ], [ getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i64 0, i32 0, i32 0), %if.end ]
  ret %struct._object* %retval.0, !dbg !1896
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_acquire_restore(%struct.rlockobject* nocapture %self, %struct._object* %args) #0 {
entry:
  %owner = alloca i64, align 8
  %count = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct.rlockobject* %self, i64 0, metadata !734, metadata !1034), !dbg !1897
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !735, metadata !1034), !dbg !1898
  %0 = bitcast i64* %owner to i8*, !dbg !1899
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1899
  %1 = bitcast i64* %count to i8*, !dbg !1900
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1900
  tail call void @llvm.dbg.value(metadata i32 1, i64 0, metadata !738, metadata !1034), !dbg !1901
  tail call void @llvm.dbg.value(metadata i64* %owner, i64 0, metadata !736, metadata !1034), !dbg !1902
  tail call void @llvm.dbg.value(metadata i64* %count, i64 0, metadata !737, metadata !1034), !dbg !1903
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.38, i64 0, i64 0), i64* nonnull %count, i64* nonnull %owner) #1, !dbg !1904
  %tobool = icmp eq i32 %call, 0, !dbg !1904
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1906

if.end:                                           ; preds = %entry
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 1, !dbg !1907
  %2 = load i8*, i8** %rlock_lock, align 8, !dbg !1907, !tbaa !1727
  %call1 = call i32 @PyThread_acquire_lock(i8* %2, i32 0) #1, !dbg !1908
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1908
  br i1 %tobool2, label %if.then.3, label %if.end.10, !dbg !1909

if.then.3:                                        ; preds = %if.end
  %call4 = call %struct._ts* @PyEval_SaveThread() #1, !dbg !1910
  call void @llvm.dbg.value(metadata %struct._ts* %call4, i64 0, metadata !739, metadata !1034), !dbg !1910
  %3 = load i8*, i8** %rlock_lock, align 8, !dbg !1911, !tbaa !1727
  %call6 = call i32 @PyThread_acquire_lock(i8* %3, i32 1) #1, !dbg !1912
  call void @llvm.dbg.value(metadata i32 %call6, i64 0, metadata !738, metadata !1034), !dbg !1901
  call void @PyEval_RestoreThread(%struct._ts* %call4) #1, !dbg !1913
  %phitmp = icmp eq i32 %call6, 0, !dbg !1914
  br i1 %phitmp, label %if.then.9, label %if.end.10, !dbg !1915

if.then.9:                                        ; preds = %if.then.3
  %4 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !1916, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i64 0, i64 0)) #1, !dbg !1919
  br label %cleanup, !dbg !1920

if.end.10:                                        ; preds = %if.then.3, %if.end
  call void @llvm.dbg.value(metadata i64* %owner, i64 0, metadata !736, metadata !1034), !dbg !1902
  %5 = load i64, i64* %owner, align 8, !dbg !1921, !tbaa !1079
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 2, !dbg !1922
  store i64 %5, i64* %rlock_owner, align 8, !dbg !1923, !tbaa !1748
  call void @llvm.dbg.value(metadata i64* %count, i64 0, metadata !737, metadata !1034), !dbg !1903
  %6 = load i64, i64* %count, align 8, !dbg !1924, !tbaa !1079
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 3, !dbg !1925
  store i64 %6, i64* %rlock_count, align 8, !dbg !1926, !tbaa !1733
  %7 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1927, !tbaa !1057
  %inc = add i64 %7, 1, !dbg !1927
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !1927, !tbaa !1057
  br label %cleanup, !dbg !1927

cleanup:                                          ; preds = %entry, %if.end.10, %if.then.9
  %retval.0 = phi %struct._object* [ @_Py_NoneStruct, %if.end.10 ], [ null, %if.then.9 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !1928
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !1928
  ret %struct._object* %retval.0, !dbg !1928
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @rlock_release_save(%struct.rlockobject* nocapture %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct.rlockobject* %self, i64 0, metadata !745, metadata !1034), !dbg !1929
  %rlock_count = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 3, !dbg !1930
  %0 = load i64, i64* %rlock_count, align 8, !dbg !1930, !tbaa !1733
  %cmp = icmp eq i64 %0, 0, !dbg !1932
  br i1 %cmp, label %if.then, label %if.end, !dbg !1933

if.then:                                          ; preds = %entry
  %1 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8, !dbg !1934, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i64 0, i64 0)) #1, !dbg !1936
  br label %cleanup, !dbg !1937

if.end:                                           ; preds = %entry
  %rlock_owner = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 2, !dbg !1938
  %2 = load i64, i64* %rlock_owner, align 8, !dbg !1938, !tbaa !1748
  tail call void @llvm.dbg.value(metadata i64 %2, i64 0, metadata !746, metadata !1034), !dbg !1939
  tail call void @llvm.dbg.value(metadata i64 %0, i64 0, metadata !747, metadata !1034), !dbg !1940
  %rlock_lock = getelementptr inbounds %struct.rlockobject, %struct.rlockobject* %self, i64 0, i32 1, !dbg !1941
  %3 = bitcast i64* %rlock_owner to i8*, !dbg !1941
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 16, i32 8, i1 false), !dbg !1942
  %4 = load i8*, i8** %rlock_lock, align 8, !dbg !1941, !tbaa !1727
  tail call void @PyThread_release_lock(i8* %4) #1, !dbg !1943
  %call = tail call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0), i64 %0, i64 %2) #1, !dbg !1944
  br label %cleanup, !dbg !1945

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call, %if.end ]
  ret %struct._object* %retval.0, !dbg !1946
}

declare i64 @PyThread_get_thread_ident() #3

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #3

declare i32 @PyThread_acquire_lock(i8*, i32) #3

declare %struct._object* @Py_BuildValue(i8*, ...) #3

declare i8* @PyThread_allocate_lock() #3

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_start_new_thread(%struct._object* nocapture readnone %self, %struct._object* %fargs) #0 {
entry:
  %func = alloca %struct._object*, align 8
  %args = alloca %struct._object*, align 8
  %keyw = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !762, metadata !1034), !dbg !1947
  tail call void @llvm.dbg.value(metadata %struct._object* %fargs, i64 0, metadata !763, metadata !1034), !dbg !1948
  %0 = bitcast %struct._object** %func to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !1949
  %1 = bitcast %struct._object** %args to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %1) #1, !dbg !1949
  %2 = bitcast %struct._object** %keyw to i8*, !dbg !1949
  call void @llvm.lifetime.start(i64 8, i8* %2) #1, !dbg !1949
  tail call void @llvm.dbg.value(metadata %struct._object* null, i64 0, metadata !766, metadata !1034), !dbg !1950
  store %struct._object* null, %struct._object** %keyw, align 8, !dbg !1950, !tbaa !1051
  tail call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !764, metadata !1034), !dbg !1951
  tail call void @llvm.dbg.value(metadata %struct._object** %args, i64 0, metadata !765, metadata !1034), !dbg !1952
  tail call void @llvm.dbg.value(metadata %struct._object** %keyw, i64 0, metadata !766, metadata !1034), !dbg !1950
  %call = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %fargs, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.43, i64 0, i64 0), i64 2, i64 3, %struct._object** nonnull %func, %struct._object** nonnull %args, %struct._object** nonnull %keyw) #1, !dbg !1953
  %tobool = icmp eq i32 %call, 0, !dbg !1953
  br i1 %tobool, label %cleanup, label %if.end, !dbg !1955

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !764, metadata !1034), !dbg !1951
  %3 = load %struct._object*, %struct._object** %func, align 8, !dbg !1956, !tbaa !1051
  %call1 = call i32 @PyCallable_Check(%struct._object* %3) #1, !dbg !1958
  %tobool2 = icmp eq i32 %call1, 0, !dbg !1958
  br i1 %tobool2, label %if.then.3, label %if.end.4, !dbg !1959

if.then.3:                                        ; preds = %if.end
  %4 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1960, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.54, i64 0, i64 0)) #1, !dbg !1962
  br label %cleanup, !dbg !1963

if.end.4:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata %struct._object** %args, i64 0, metadata !765, metadata !1034), !dbg !1952
  %5 = load %struct._object*, %struct._object** %args, align 8, !dbg !1964, !tbaa !1051
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %5, i64 0, i32 1, !dbg !1964
  %6 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !1964, !tbaa !1098
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %6, i64 0, i32 19, !dbg !1964
  %7 = load i64, i64* %tp_flags, align 8, !dbg !1964, !tbaa !1966
  %and = and i64 %7, 67108864, !dbg !1964
  %cmp = icmp eq i64 %and, 0, !dbg !1964
  br i1 %cmp, label %if.then.5, label %if.end.6, !dbg !1967

if.then.5:                                        ; preds = %if.end.4
  %8 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1968, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.55, i64 0, i64 0)) #1, !dbg !1970
  br label %cleanup, !dbg !1971

if.end.6:                                         ; preds = %if.end.4
  call void @llvm.dbg.value(metadata %struct._object** %keyw, i64 0, metadata !766, metadata !1034), !dbg !1950
  %9 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !1972, !tbaa !1051
  %cmp7 = icmp eq %struct._object* %9, null, !dbg !1974
  br i1 %cmp7, label %if.end.13, label %land.lhs.true, !dbg !1975

land.lhs.true:                                    ; preds = %if.end.6
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %9, i64 0, i32 1, !dbg !1976
  %10 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8, !dbg !1976, !tbaa !1098
  %tp_flags9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 19, !dbg !1976
  %11 = load i64, i64* %tp_flags9, align 8, !dbg !1976, !tbaa !1966
  %and10 = and i64 %11, 536870912, !dbg !1976
  %cmp11 = icmp eq i64 %and10, 0, !dbg !1976
  br i1 %cmp11, label %if.then.12, label %if.end.13, !dbg !1978

if.then.12:                                       ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8, !dbg !1979, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.56, i64 0, i64 0)) #1, !dbg !1981
  br label %cleanup, !dbg !1982

if.end.13:                                        ; preds = %land.lhs.true, %if.end.6
  %call14 = call i8* @PyMem_Malloc(i64 40) #1, !dbg !1983
  %cmp15 = icmp eq i8* %call14, null, !dbg !1984
  br i1 %cmp15, label %if.then.16, label %if.end.18, !dbg !1986

if.then.16:                                       ; preds = %if.end.13
  %call17 = call %struct._object* @PyErr_NoMemory() #1, !dbg !1987
  br label %cleanup, !dbg !1988

if.end.18:                                        ; preds = %if.end.13
  call void @llvm.dbg.value(metadata %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, metadata !769, metadata !1034), !dbg !1989
  call void @llvm.dbg.value(metadata !1990, i64 0, metadata !777, metadata !1034), !dbg !1989
  call void @llvm.dbg.value(metadata i32 0, i64 0, metadata !780, metadata !1034), !dbg !1989
  %13 = load volatile i8*, i8** getelementptr inbounds (%struct._Py_atomic_address, %struct._Py_atomic_address* @_PyThreadState_Current, i64 0, i32 0), align 8, !dbg !1991, !tbaa !1051
  call void @llvm.dbg.value(metadata i8* %13, i64 0, metadata !776, metadata !1034), !dbg !1989
  %interp = getelementptr inbounds i8, i8* %13, i64 16, !dbg !1994
  %14 = bitcast i8* %interp to i64*, !dbg !1994
  %15 = load i64, i64* %14, align 8, !dbg !1994, !tbaa !1279
  %16 = bitcast i8* %call14 to i64*, !dbg !1995
  store i64 %15, i64* %16, align 8, !dbg !1995, !tbaa !1996
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !764, metadata !1034), !dbg !1951
  %17 = bitcast %struct._object** %func to i64*, !dbg !1998
  %18 = load i64, i64* %17, align 8, !dbg !1998, !tbaa !1051
  %func23 = getelementptr inbounds i8, i8* %call14, i64 8, !dbg !1999
  %19 = bitcast i8* %func23 to i64*, !dbg !2000
  store i64 %18, i64* %19, align 8, !dbg !2000, !tbaa !2001
  call void @llvm.dbg.value(metadata %struct._object** %args, i64 0, metadata !765, metadata !1034), !dbg !1952
  %20 = bitcast %struct._object** %args to i64*, !dbg !2002
  %21 = load i64, i64* %20, align 8, !dbg !2002, !tbaa !1051
  %args24 = getelementptr inbounds i8, i8* %call14, i64 16, !dbg !2003
  %22 = bitcast i8* %args24 to i64*, !dbg !2004
  store i64 %21, i64* %22, align 8, !dbg !2004, !tbaa !2005
  call void @llvm.dbg.value(metadata %struct._object** %keyw, i64 0, metadata !766, metadata !1034), !dbg !1950
  %23 = bitcast %struct._object** %keyw to i64*, !dbg !2006
  %24 = load i64, i64* %23, align 8, !dbg !2006, !tbaa !1051
  %keyw25 = getelementptr inbounds i8, i8* %call14, i64 24, !dbg !2007
  %25 = bitcast i8* %keyw25 to i64*, !dbg !2008
  store i64 %24, i64* %25, align 8, !dbg !2008, !tbaa !2009
  %26 = inttoptr i64 %15 to %struct._is*, !dbg !2010
  %call27 = call %struct._ts* @_PyThreadState_Prealloc(%struct._is* %26) #1, !dbg !2011
  %tstate = getelementptr inbounds i8, i8* %call14, i64 32, !dbg !2012
  %27 = bitcast i8* %tstate to %struct._ts**, !dbg !2012
  store %struct._ts* %call27, %struct._ts** %27, align 8, !dbg !2013, !tbaa !2014
  %cmp29 = icmp eq %struct._ts* %call27, null, !dbg !2015
  br i1 %cmp29, label %if.then.30, label %if.end.32, !dbg !2017

if.then.30:                                       ; preds = %if.end.18
  call void @PyMem_Free(i8* %call14) #1, !dbg !2018
  %call31 = call %struct._object* @PyErr_NoMemory() #1, !dbg !2020
  br label %cleanup, !dbg !2021

if.end.32:                                        ; preds = %if.end.18
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !764, metadata !1034), !dbg !1951
  %28 = load %struct._object*, %struct._object** %func, align 8, !dbg !2022, !tbaa !1051
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %28, i64 0, i32 0, !dbg !2022
  %29 = load i64, i64* %ob_refcnt, align 8, !dbg !2022, !tbaa !1057
  %inc = add i64 %29, 1, !dbg !2022
  store i64 %inc, i64* %ob_refcnt, align 8, !dbg !2022, !tbaa !1057
  call void @llvm.dbg.value(metadata %struct._object** %args, i64 0, metadata !765, metadata !1034), !dbg !1952
  %30 = load %struct._object*, %struct._object** %args, align 8, !dbg !2023, !tbaa !1051
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %30, i64 0, i32 0, !dbg !2023
  %31 = load i64, i64* %ob_refcnt33, align 8, !dbg !2023, !tbaa !1057
  %inc34 = add i64 %31, 1, !dbg !2023
  store i64 %inc34, i64* %ob_refcnt33, align 8, !dbg !2023, !tbaa !1057
  call void @llvm.dbg.value(metadata %struct._object** %keyw, i64 0, metadata !766, metadata !1034), !dbg !1950
  %32 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !2024, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object* %32, i64 0, metadata !782, metadata !1034), !dbg !2024
  %cmp36 = icmp eq %struct._object* %32, null, !dbg !2026
  br i1 %cmp36, label %if.end.40, label %if.then.37, !dbg !2028

if.then.37:                                       ; preds = %if.end.32
  %ob_refcnt38 = getelementptr inbounds %struct._object, %struct._object* %32, i64 0, i32 0, !dbg !2029
  %33 = load i64, i64* %ob_refcnt38, align 8, !dbg !2029, !tbaa !1057
  %inc39 = add i64 %33, 1, !dbg !2029
  store i64 %inc39, i64* %ob_refcnt38, align 8, !dbg !2029, !tbaa !1057
  br label %if.end.40, !dbg !2029

if.end.40:                                        ; preds = %if.end.32, %if.then.37
  call void @PyEval_InitThreads() #1, !dbg !2031
  %call41 = call i64 @PyThread_start_new_thread(void (i8*)* nonnull @t_bootstrap, i8* %call14) #1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %call41, i64 0, metadata !768, metadata !1034), !dbg !2033
  %cmp42 = icmp eq i64 %call41, -1, !dbg !2034
  br i1 %cmp42, label %if.then.43, label %if.end.87, !dbg !2035

if.then.43:                                       ; preds = %if.end.40
  %34 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2036, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0)) #1, !dbg !2037
  call void @llvm.dbg.value(metadata %struct._object** %func, i64 0, metadata !764, metadata !1034), !dbg !1951
  %35 = load %struct._object*, %struct._object** %func, align 8, !dbg !2038, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object* %35, i64 0, metadata !784, metadata !1034), !dbg !2038
  %ob_refcnt46 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 0, !dbg !2040
  %36 = load i64, i64* %ob_refcnt46, align 8, !dbg !2040, !tbaa !1057
  %dec = add i64 %36, -1, !dbg !2040
  store i64 %dec, i64* %ob_refcnt46, align 8, !dbg !2040, !tbaa !1057
  %cmp47 = icmp eq i64 %dec, 0, !dbg !2040
  br i1 %cmp47, label %if.else, label %if.end.50, !dbg !2042

if.else:                                          ; preds = %if.then.43
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %35, i64 0, i32 1, !dbg !2043
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8, !dbg !2043, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i64 0, i32 4, !dbg !2043
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2043, !tbaa !1127
  call void %38(%struct._object* %35) #1, !dbg !2043
  br label %if.end.50

if.end.50:                                        ; preds = %if.then.43, %if.else
  call void @llvm.dbg.value(metadata %struct._object** %args, i64 0, metadata !765, metadata !1034), !dbg !1952
  %39 = load %struct._object*, %struct._object** %args, align 8, !dbg !2045, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object* %39, i64 0, metadata !788, metadata !1034), !dbg !2045
  %ob_refcnt56 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 0, !dbg !2047
  %40 = load i64, i64* %ob_refcnt56, align 8, !dbg !2047, !tbaa !1057
  %dec57 = add i64 %40, -1, !dbg !2047
  store i64 %dec57, i64* %ob_refcnt56, align 8, !dbg !2047, !tbaa !1057
  %cmp58 = icmp eq i64 %dec57, 0, !dbg !2047
  br i1 %cmp58, label %if.else.60, label %if.end.63, !dbg !2049

if.else.60:                                       ; preds = %if.end.50
  %ob_type61 = getelementptr inbounds %struct._object, %struct._object* %39, i64 0, i32 1, !dbg !2050
  %41 = load %struct._typeobject*, %struct._typeobject** %ob_type61, align 8, !dbg !2050, !tbaa !1098
  %tp_dealloc62 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %41, i64 0, i32 4, !dbg !2050
  %42 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc62, align 8, !dbg !2050, !tbaa !1127
  call void %42(%struct._object* %39) #1, !dbg !2050
  br label %if.end.63

if.end.63:                                        ; preds = %if.end.50, %if.else.60
  call void @llvm.dbg.value(metadata %struct._object** %keyw, i64 0, metadata !766, metadata !1034), !dbg !1950
  %43 = load %struct._object*, %struct._object** %keyw, align 8, !dbg !2052, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !790, metadata !1034), !dbg !2052
  %cmp68 = icmp eq %struct._object* %43, null, !dbg !2054
  br i1 %cmp68, label %if.end.83, label %do.body.70, !dbg !2055

do.body.70:                                       ; preds = %if.end.63
  call void @llvm.dbg.value(metadata %struct._object* %43, i64 0, metadata !792, metadata !1034), !dbg !2056
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 0, !dbg !2058
  %44 = load i64, i64* %ob_refcnt73, align 8, !dbg !2058, !tbaa !1057
  %dec74 = add i64 %44, -1, !dbg !2058
  store i64 %dec74, i64* %ob_refcnt73, align 8, !dbg !2058, !tbaa !1057
  %cmp75 = icmp eq i64 %dec74, 0, !dbg !2058
  br i1 %cmp75, label %if.else.77, label %if.end.83, !dbg !2060

if.else.77:                                       ; preds = %do.body.70
  %ob_type78 = getelementptr inbounds %struct._object, %struct._object* %43, i64 0, i32 1, !dbg !2061
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type78, align 8, !dbg !2061, !tbaa !1098
  %tp_dealloc79 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i64 0, i32 4, !dbg !2061
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc79, align 8, !dbg !2061, !tbaa !1127
  call void %46(%struct._object* %43) #1, !dbg !2061
  br label %if.end.83

if.end.83:                                        ; preds = %if.else.77, %do.body.70, %if.end.63
  %47 = load %struct._ts*, %struct._ts** %27, align 8, !dbg !2063, !tbaa !2014
  call void @PyThreadState_Clear(%struct._ts* %47) #1, !dbg !2064
  call void @PyMem_Free(i8* %call14) #1, !dbg !2065
  br label %cleanup, !dbg !2066

if.end.87:                                        ; preds = %if.end.40
  %call88 = call %struct._object* @PyLong_FromLong(i64 %call41) #1, !dbg !2067
  br label %cleanup, !dbg !2068

cleanup:                                          ; preds = %entry, %if.end.87, %if.end.83, %if.then.30, %if.then.16, %if.then.12, %if.then.5, %if.then.3
  %retval.0 = phi %struct._object* [ %call17, %if.then.16 ], [ %call31, %if.then.30 ], [ null, %if.end.83 ], [ %call88, %if.end.87 ], [ null, %if.then.12 ], [ null, %if.then.5 ], [ null, %if.then.3 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %2) #1, !dbg !2069
  call void @llvm.lifetime.end(i64 8, i8* %1) #1, !dbg !2069
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2069
  ret %struct._object* %retval.0, !dbg !2069
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_allocate_lock(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !839, metadata !1034), !dbg !2070
  %call.i = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @Locktype) #1, !dbg !2071
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2073
  br i1 %cmp.i, label %newlockobject.exit, label %if.end.i, !dbg !2075

if.end.i:                                         ; preds = %entry
  %0 = bitcast %struct._object* %call.i to %struct.lockobject*, !dbg !2071
  %call1.i = tail call i8* @PyThread_allocate_lock() #1, !dbg !2076
  %lock_lock.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !2077
  %1 = bitcast %struct._object* %lock_lock.i to i8**, !dbg !2077
  store i8* %call1.i, i8** %1, align 8, !dbg !2078, !tbaa !1565
  %locked.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !2079
  %2 = bitcast %struct._object* %locked.i to i8*, !dbg !2079
  store i8 0, i8* %2, align 1, !dbg !2080, !tbaa !1571
  %in_weakreflist.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2081
  %3 = bitcast %struct._typeobject** %in_weakreflist.i to %struct._object**, !dbg !2081
  store %struct._object* null, %struct._object** %3, align 8, !dbg !2082, !tbaa !1557
  %cmp3.i = icmp eq i8* %call1.i, null, !dbg !2083
  br i1 %cmp3.i, label %do.body.i, label %newlockobject.exit, !dbg !2084

do.body.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !845, metadata !1034) #1, !dbg !2085
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2087
  %4 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2087, !tbaa !1057
  %dec.i = add i64 %4, -1, !dbg !2087
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2087, !tbaa !1057
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !2087
  br i1 %cmp5.i, label %if.else.i, label %if.end.7.i, !dbg !2089

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2090
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2090, !tbaa !1098
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2090
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2090, !tbaa !1127
  tail call void %6(%struct._object* %call.i) #1, !dbg !2090
  br label %if.end.7.i, !dbg !2092

if.end.7.i:                                       ; preds = %if.else.i, %do.body.i
  %7 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2093, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #1, !dbg !2094
  br label %newlockobject.exit, !dbg !2095

newlockobject.exit:                               ; preds = %entry, %if.end.i, %if.end.7.i
  %retval.0.i = phi %struct.lockobject* [ null, %if.end.7.i ], [ null, %entry ], [ %0, %if.end.i ], !dbg !2092
  %8 = getelementptr inbounds %struct.lockobject, %struct.lockobject* %retval.0.i, i64 0, i32 0, !dbg !2096
  ret %struct._object* %8, !dbg !2097
}

; Function Attrs: nounwind uwtable
define internal noalias %struct._object* @thread_PyThread_exit_thread(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !851, metadata !1034), !dbg !2098
  %0 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8, !dbg !2099, !tbaa !1051
  tail call void @PyErr_SetNone(%struct._object* %0) #1, !dbg !2100
  ret %struct._object* null, !dbg !2101
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_PyThread_interrupt_main(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !854, metadata !1034), !dbg !2102
  tail call void @PyErr_SetInterrupt() #1, !dbg !2103
  %0 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2104, !tbaa !1057
  %inc = add i64 %0, 1, !dbg !2104
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i64 0, i32 0), align 8, !dbg !2104, !tbaa !1057
  ret %struct._object* @_Py_NoneStruct, !dbg !2105
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_get_ident(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !857, metadata !1034), !dbg !2106
  %call = tail call i64 @PyThread_get_thread_ident() #1, !dbg !2107
  tail call void @llvm.dbg.value(metadata i64 %call, i64 0, metadata !858, metadata !1034), !dbg !2108
  %cmp = icmp eq i64 %call, -1, !dbg !2109
  br i1 %cmp, label %if.then, label %if.end, !dbg !2111

if.then:                                          ; preds = %entry
  %0 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2112, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.61, i64 0, i64 0)) #1, !dbg !2114
  br label %cleanup, !dbg !2115

if.end:                                           ; preds = %entry
  %call1 = tail call %struct._object* @PyLong_FromLong(i64 %call) #1, !dbg !2116
  br label %cleanup, !dbg !2117

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct._object* [ null, %if.then ], [ %call1, %if.end ]
  ret %struct._object* %retval.0, !dbg !2118
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread__count(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !861, metadata !1034), !dbg !2119
  %0 = load i64, i64* @nb_threads, align 8, !dbg !2120, !tbaa !1079
  %call = tail call %struct._object* @PyLong_FromLong(i64 %0) #1, !dbg !2121
  ret %struct._object* %call, !dbg !2122
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread_stack_size(%struct._object* nocapture readnone %self, %struct._object* %args) #0 {
entry:
  %new_size = alloca i64, align 8
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !864, metadata !1034), !dbg !2123
  tail call void @llvm.dbg.value(metadata %struct._object* %args, i64 0, metadata !865, metadata !1034), !dbg !2124
  %0 = bitcast i64* %new_size to i8*, !dbg !2125
  call void @llvm.lifetime.start(i64 8, i8* %0) #1, !dbg !2125
  tail call void @llvm.dbg.value(metadata i64 0, i64 0, metadata !867, metadata !1034), !dbg !2126
  store i64 0, i64* %new_size, align 8, !dbg !2126, !tbaa !1079
  tail call void @llvm.dbg.value(metadata i64* %new_size, i64 0, metadata !867, metadata !1034), !dbg !2126
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %args, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.62, i64 0, i64 0), i64* nonnull %new_size) #1, !dbg !2127
  %tobool = icmp eq i32 %call, 0, !dbg !2127
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2129

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i64* %new_size, i64 0, metadata !867, metadata !1034), !dbg !2126
  %1 = load i64, i64* %new_size, align 8, !dbg !2130, !tbaa !1079
  %cmp = icmp slt i64 %1, 0, !dbg !2132
  br i1 %cmp, label %if.then.1, label %if.end.2, !dbg !2133

if.then.1:                                        ; preds = %if.end
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2134, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.63, i64 0, i64 0)) #1, !dbg !2136
  br label %cleanup, !dbg !2137

if.end.2:                                         ; preds = %if.end
  %call3 = call i64 @PyThread_get_stacksize() #1, !dbg !2138
  call void @llvm.dbg.value(metadata i64 %call3, i64 0, metadata !866, metadata !1034), !dbg !2139
  call void @llvm.dbg.value(metadata i64* %new_size, i64 0, metadata !867, metadata !1034), !dbg !2126
  %3 = load i64, i64* %new_size, align 8, !dbg !2140, !tbaa !1079
  %call4 = call i32 @PyThread_set_stacksize(i64 %3) #1, !dbg !2141
  call void @llvm.dbg.value(metadata i32 %call4, i64 0, metadata !868, metadata !1034), !dbg !2142
  switch i32 %call4, label %if.end.11 [
    i32 -1, label %if.then.6
    i32 -2, label %if.then.10
  ], !dbg !2143

if.then.6:                                        ; preds = %if.end.2
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !2144, !tbaa !1051
  call void @llvm.dbg.value(metadata i64* %new_size, i64 0, metadata !867, metadata !1034), !dbg !2126
  %5 = load i64, i64* %new_size, align 8, !dbg !2147, !tbaa !1079
  %call7 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.64, i64 0, i64 0), i64 %5) #1, !dbg !2148
  br label %cleanup, !dbg !2149

if.then.10:                                       ; preds = %if.end.2
  %6 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2150, !tbaa !1051
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.65, i64 0, i64 0)) #1, !dbg !2153
  br label %cleanup, !dbg !2154

if.end.11:                                        ; preds = %if.end.2
  %call12 = call %struct._object* @PyLong_FromSsize_t(i64 %call3) #1, !dbg !2155
  br label %cleanup, !dbg !2156

cleanup:                                          ; preds = %entry, %if.end.11, %if.then.10, %if.then.6, %if.then.1
  %retval.0 = phi %struct._object* [ null, %if.then.1 ], [ null, %if.then.6 ], [ null, %if.then.10 ], [ %call12, %if.end.11 ], [ null, %entry ]
  call void @llvm.lifetime.end(i64 8, i8* %0) #1, !dbg !2157
  ret %struct._object* %retval.0, !dbg !2157
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @thread__set_sentinel(%struct._object* nocapture readnone %self) #0 {
entry:
  tail call void @llvm.dbg.value(metadata %struct._object* %self, i64 0, metadata !871, metadata !1034), !dbg !2158
  %call = tail call %struct._ts* @PyThreadState_Get() #1, !dbg !2159
  tail call void @llvm.dbg.value(metadata %struct._ts* %call, i64 0, metadata !873, metadata !1034), !dbg !2160
  %on_delete_data = getelementptr inbounds %struct._ts, %struct._ts* %call, i64 0, i32 26, !dbg !2161
  %0 = load i8*, i8** %on_delete_data, align 8, !dbg !2161, !tbaa !2162
  %cmp = icmp eq i8* %0, null, !dbg !2163
  br i1 %cmp, label %if.end.5, label %if.then, !dbg !2164

if.then:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !872, metadata !1034), !dbg !2165
  %on_delete = getelementptr inbounds %struct._ts, %struct._ts* %call, i64 0, i32 25, !dbg !2166
  tail call void @llvm.dbg.value(metadata %struct._object* %3, i64 0, metadata !875, metadata !1034), !dbg !2167
  %ob_refcnt = bitcast i8* %0 to i64*, !dbg !2169
  %1 = bitcast void (i8*)** %on_delete to i8*, !dbg !2169
  call void @llvm.memset.p0i8.i64(i8* %1, i8 0, i64 16, i32 8, i1 false), !dbg !2171
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2169, !tbaa !1057
  %dec = add i64 %2, -1, !dbg !2169
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2169, !tbaa !1057
  %cmp3 = icmp eq i64 %dec, 0, !dbg !2169
  br i1 %cmp3, label %if.else, label %if.end.5, !dbg !2172

if.else:                                          ; preds = %if.then
  %3 = bitcast i8* %0 to %struct._object*, !dbg !2173
  %ob_type = getelementptr inbounds i8, i8* %0, i64 8, !dbg !2174
  %4 = bitcast i8* %ob_type to %struct._typeobject**, !dbg !2174
  %5 = load %struct._typeobject*, %struct._typeobject** %4, align 8, !dbg !2174, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i64 0, i32 4, !dbg !2174
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2174, !tbaa !1127
  tail call void %6(%struct._object* %3) #1, !dbg !2174
  br label %if.end.5

if.end.5:                                         ; preds = %if.else, %if.then, %entry
  %call.i = tail call %struct._object* @_PyObject_New(%struct._typeobject* nonnull @Locktype) #1, !dbg !2176
  %cmp.i = icmp eq %struct._object* %call.i, null, !dbg !2178
  br i1 %cmp.i, label %cleanup, label %if.end.i, !dbg !2179

if.end.i:                                         ; preds = %if.end.5
  %call1.i = tail call i8* @PyThread_allocate_lock() #1, !dbg !2180
  %lock_lock.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, !dbg !2181
  %7 = bitcast %struct._object* %lock_lock.i to i8**, !dbg !2181
  store i8* %call1.i, i8** %7, align 8, !dbg !2182, !tbaa !1565
  %locked.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 2, !dbg !2183
  %8 = bitcast %struct._object* %locked.i to i8*, !dbg !2183
  store i8 0, i8* %8, align 1, !dbg !2184, !tbaa !1571
  %in_weakreflist.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 1, i32 1, !dbg !2185
  %9 = bitcast %struct._typeobject** %in_weakreflist.i to %struct._object**, !dbg !2185
  store %struct._object* null, %struct._object** %9, align 8, !dbg !2186, !tbaa !1557
  %cmp3.i = icmp eq i8* %call1.i, null, !dbg !2187
  br i1 %cmp3.i, label %do.body.i, label %if.end.9, !dbg !2188

do.body.i:                                        ; preds = %if.end.i
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !845, metadata !1034) #1, !dbg !2189
  %ob_refcnt.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2190
  %10 = load i64, i64* %ob_refcnt.i, align 8, !dbg !2190, !tbaa !1057
  %dec.i = add i64 %10, -1, !dbg !2190
  store i64 %dec.i, i64* %ob_refcnt.i, align 8, !dbg !2190, !tbaa !1057
  %cmp5.i = icmp eq i64 %dec.i, 0, !dbg !2190
  br i1 %cmp5.i, label %if.else.i, label %if.end.7.i, !dbg !2191

if.else.i:                                        ; preds = %do.body.i
  %ob_type.i = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2192
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type.i, align 8, !dbg !2192, !tbaa !1098
  %tp_dealloc.i = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i64 0, i32 4, !dbg !2192
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc.i, align 8, !dbg !2192, !tbaa !1127
  tail call void %12(%struct._object* %call.i) #1, !dbg !2192
  br label %if.end.7.i, !dbg !2193

if.end.7.i:                                       ; preds = %if.else.i, %do.body.i
  %13 = load %struct._object*, %struct._object** @ThreadError, align 8, !dbg !2194, !tbaa !1051
  tail call void @PyErr_SetString(%struct._object* %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.41, i64 0, i64 0)) #1, !dbg !2195
  br label %cleanup, !dbg !2196

if.end.9:                                         ; preds = %if.end.i
  %call10 = tail call %struct._object* @PyWeakref_NewRef(%struct._object* %call.i, %struct._object* null) #1, !dbg !2197
  tail call void @llvm.dbg.value(metadata %struct._object* %call10, i64 0, metadata !872, metadata !1034), !dbg !2165
  %cmp11 = icmp eq %struct._object* %call10, null, !dbg !2198
  br i1 %cmp11, label %do.body.13, label %if.end.25, !dbg !2199

do.body.13:                                       ; preds = %if.end.9
  tail call void @llvm.dbg.value(metadata %struct._object* %call.i, i64 0, metadata !879, metadata !1034), !dbg !2200
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 0, !dbg !2202
  %14 = load i64, i64* %ob_refcnt15, align 8, !dbg !2202, !tbaa !1057
  %dec16 = add i64 %14, -1, !dbg !2202
  store i64 %dec16, i64* %ob_refcnt15, align 8, !dbg !2202, !tbaa !1057
  %cmp17 = icmp eq i64 %dec16, 0, !dbg !2202
  br i1 %cmp17, label %if.else.19, label %cleanup, !dbg !2204

if.else.19:                                       ; preds = %do.body.13
  %15 = getelementptr inbounds %struct._object, %struct._object* %call.i, i64 0, i32 1, !dbg !2205
  %16 = load %struct._typeobject*, %struct._typeobject** %15, align 8, !dbg !2205, !tbaa !1098
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i64 0, i32 4, !dbg !2205
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8, !dbg !2205, !tbaa !1127
  tail call void %17(%struct._object* %call.i) #1, !dbg !2205
  br label %cleanup

if.end.25:                                        ; preds = %if.end.9
  %18 = bitcast i8** %on_delete_data to %struct._object**, !dbg !2207
  store %struct._object* %call10, %struct._object** %18, align 8, !dbg !2207, !tbaa !2162
  %on_delete27 = getelementptr inbounds %struct._ts, %struct._ts* %call, i64 0, i32 25, !dbg !2208
  store void (i8*)* @release_sentinel, void (i8*)** %on_delete27, align 8, !dbg !2209, !tbaa !2210
  br label %cleanup, !dbg !2211

cleanup:                                          ; preds = %if.end.5, %if.end.7.i, %if.else.19, %do.body.13, %if.end.25
  %retval.0 = phi %struct._object* [ %call.i, %if.end.25 ], [ null, %do.body.13 ], [ null, %if.else.19 ], [ null, %if.end.7.i ], [ null, %if.end.5 ]
  ret %struct._object* %retval.0, !dbg !2212
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #3

declare i32 @PyCallable_Check(%struct._object*) #3

declare i8* @PyMem_Malloc(i64) #3

declare %struct._object* @PyErr_NoMemory() #3

declare %struct._ts* @_PyThreadState_Prealloc(%struct._is*) #3

declare void @PyMem_Free(i8*) #3

declare void @PyEval_InitThreads() #3

declare i64 @PyThread_start_new_thread(void (i8*)*, i8*) #3

; Function Attrs: nounwind uwtable
define internal void @t_bootstrap(i8* %boot_raw) #0 {
entry:
  %exc = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  tail call void @llvm.dbg.value(metadata i8* %boot_raw, i64 0, metadata !814, metadata !1034), !dbg !2213
  %tstate1 = getelementptr inbounds i8, i8* %boot_raw, i64 32, !dbg !2214
  %0 = bitcast i8* %tstate1 to %struct._ts**, !dbg !2214
  %1 = load %struct._ts*, %struct._ts** %0, align 8, !dbg !2214, !tbaa !2014
  tail call void @llvm.dbg.value(metadata %struct._ts* %1, i64 0, metadata !816, metadata !1034), !dbg !2215
  %call = tail call i64 @PyThread_get_thread_ident() #1, !dbg !2216
  %thread_id = getelementptr inbounds %struct._ts, %struct._ts* %1, i64 0, i32 22, !dbg !2217
  store i64 %call, i64* %thread_id, align 8, !dbg !2218, !tbaa !2219
  tail call void @_PyThreadState_Init(%struct._ts* %1) #1, !dbg !2220
  tail call void @PyEval_AcquireThread(%struct._ts* %1) #1, !dbg !2221
  %2 = load i64, i64* @nb_threads, align 8, !dbg !2222, !tbaa !1079
  %inc = add i64 %2, 1, !dbg !2222
  store i64 %inc, i64* @nb_threads, align 8, !dbg !2222, !tbaa !1079
  %func = getelementptr inbounds i8, i8* %boot_raw, i64 8, !dbg !2223
  %3 = bitcast i8* %func to %struct._object**, !dbg !2223
  %4 = load %struct._object*, %struct._object** %3, align 8, !dbg !2223, !tbaa !2001
  %args = getelementptr inbounds i8, i8* %boot_raw, i64 16, !dbg !2224
  %5 = bitcast i8* %args to %struct._object**, !dbg !2224
  %6 = load %struct._object*, %struct._object** %5, align 8, !dbg !2224, !tbaa !2005
  %keyw = getelementptr inbounds i8, i8* %boot_raw, i64 24, !dbg !2225
  %7 = bitcast i8* %keyw to %struct._object**, !dbg !2225
  %8 = load %struct._object*, %struct._object** %7, align 8, !dbg !2225, !tbaa !2009
  %call2 = tail call %struct._object* @PyEval_CallObjectWithKeywords(%struct._object* %4, %struct._object* %6, %struct._object* %8) #1, !dbg !2226
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !817, metadata !1034), !dbg !2227
  %cmp = icmp eq %struct._object* %call2, null, !dbg !2228
  br i1 %cmp, label %if.then, label %do.body, !dbg !2229

if.then:                                          ; preds = %entry
  %9 = load %struct._object*, %struct._object** @PyExc_SystemExit, align 8, !dbg !2230, !tbaa !1051
  %call3 = tail call i32 @PyErr_ExceptionMatches(%struct._object* %9) #1, !dbg !2231
  %tobool = icmp eq i32 %call3, 0, !dbg !2231
  br i1 %tobool, label %if.else, label %if.then.4, !dbg !2232

if.then.4:                                        ; preds = %if.then
  tail call void @PyErr_Clear() #1, !dbg !2233
  br label %do.body.21, !dbg !2233

if.else:                                          ; preds = %if.then
  %10 = bitcast %struct._object** %exc to i8*, !dbg !2234
  call void @llvm.lifetime.start(i64 8, i8* %10) #1, !dbg !2234
  %11 = bitcast %struct._object** %value to i8*, !dbg !2234
  call void @llvm.lifetime.start(i64 8, i8* %11) #1, !dbg !2234
  %12 = bitcast %struct._object** %tb to i8*, !dbg !2234
  call void @llvm.lifetime.start(i64 8, i8* %12) #1, !dbg !2234
  tail call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i64 0, i64 0)) #1, !dbg !2235
  tail call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !823, metadata !1034), !dbg !2236
  tail call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !824, metadata !1034), !dbg !2237
  tail call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !825, metadata !1034), !dbg !2238
  call void @PyErr_Fetch(%struct._object** nonnull %exc, %struct._object** nonnull %value, %struct._object** nonnull %tb) #1, !dbg !2239
  %call5 = call %struct._object* @_PySys_GetObjectId(%struct._Py_Identifier* nonnull @PyId_stderr) #1, !dbg !2240
  call void @llvm.dbg.value(metadata %struct._object* %call5, i64 0, metadata !818, metadata !1034), !dbg !2241
  %cmp6 = icmp ne %struct._object* %call5, null, !dbg !2242
  %cmp7 = icmp ne %struct._object* %call5, @_Py_NoneStruct, !dbg !2244
  %or.cond = and i1 %cmp6, %cmp7, !dbg !2245
  %13 = load %struct._object*, %struct._object** %3, align 8, !dbg !2246, !tbaa !2001
  br i1 %or.cond, label %if.then.8, label %if.else.11, !dbg !2245

if.then.8:                                        ; preds = %if.else
  %call10 = call i32 @PyFile_WriteObject(%struct._object* %13, %struct._object* %call5, i32 0) #1, !dbg !2247
  br label %if.end, !dbg !2247

if.else.11:                                       ; preds = %if.else
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2248, !tbaa !1051
  %call13 = call i32 @PyObject_Print(%struct._object* %13, %struct._IO_FILE* %14, i32 0) #1, !dbg !2249
  br label %if.end

if.end:                                           ; preds = %if.else.11, %if.then.8
  call void (i8*, ...) @PySys_WriteStderr(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.59, i64 0, i64 0)) #1, !dbg !2250
  call void @llvm.dbg.value(metadata %struct._object** %exc, i64 0, metadata !823, metadata !1034), !dbg !2236
  %15 = load %struct._object*, %struct._object** %exc, align 8, !dbg !2251, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object** %value, i64 0, metadata !824, metadata !1034), !dbg !2237
  %16 = load %struct._object*, %struct._object** %value, align 8, !dbg !2252, !tbaa !1051
  call void @llvm.dbg.value(metadata %struct._object** %tb, i64 0, metadata !825, metadata !1034), !dbg !2238
  %17 = load %struct._object*, %struct._object** %tb, align 8, !dbg !2253, !tbaa !1051
  call void @PyErr_Restore(%struct._object* %15, %struct._object* %16, %struct._object* %17) #1, !dbg !2254
  call void @PyErr_PrintEx(i32 0) #1, !dbg !2255
  call void @llvm.lifetime.end(i64 8, i8* %12) #1, !dbg !2256
  call void @llvm.lifetime.end(i64 8, i8* %11) #1, !dbg !2256
  call void @llvm.lifetime.end(i64 8, i8* %10) #1, !dbg !2256
  br label %do.body.21

do.body:                                          ; preds = %entry
  tail call void @llvm.dbg.value(metadata %struct._object* %call2, i64 0, metadata !826, metadata !1034), !dbg !2257
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 0, !dbg !2259
  %18 = load i64, i64* %ob_refcnt, align 8, !dbg !2259, !tbaa !1057
  %dec = add i64 %18, -1, !dbg !2259
  store i64 %dec, i64* %ob_refcnt, align 8, !dbg !2259, !tbaa !1057
  %cmp16 = icmp eq i64 %dec, 0, !dbg !2259
  br i1 %cmp16, label %if.else.18, label %do.body.21, !dbg !2261

if.else.18:                                       ; preds = %do.body
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %call2, i64 0, i32 1, !dbg !2262
  %19 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8, !dbg !2262, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %19, i64 0, i32 4, !dbg !2262
  %20 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2262, !tbaa !1127
  tail call void %20(%struct._object* %call2) #1, !dbg !2262
  br label %do.body.21

do.body.21:                                       ; preds = %if.else.18, %do.body, %if.end, %if.then.4
  %21 = load %struct._object*, %struct._object** %3, align 8, !dbg !2264, !tbaa !2001
  call void @llvm.dbg.value(metadata %struct._object* %21, i64 0, metadata !828, metadata !1034), !dbg !2264
  %ob_refcnt24 = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 0, !dbg !2266
  %22 = load i64, i64* %ob_refcnt24, align 8, !dbg !2266, !tbaa !1057
  %dec25 = add i64 %22, -1, !dbg !2266
  store i64 %dec25, i64* %ob_refcnt24, align 8, !dbg !2266, !tbaa !1057
  %cmp26 = icmp eq i64 %dec25, 0, !dbg !2266
  br i1 %cmp26, label %if.else.28, label %if.end.31, !dbg !2268

if.else.28:                                       ; preds = %do.body.21
  %ob_type29 = getelementptr inbounds %struct._object, %struct._object* %21, i64 0, i32 1, !dbg !2269
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type29, align 8, !dbg !2269, !tbaa !1098
  %tp_dealloc30 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i64 0, i32 4, !dbg !2269
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc30, align 8, !dbg !2269, !tbaa !1127
  call void %24(%struct._object* %21) #1, !dbg !2269
  br label %if.end.31

if.end.31:                                        ; preds = %do.body.21, %if.else.28
  %25 = load %struct._object*, %struct._object** %5, align 8, !dbg !2271, !tbaa !2005
  call void @llvm.dbg.value(metadata %struct._object* %25, i64 0, metadata !830, metadata !1034), !dbg !2271
  %ob_refcnt37 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 0, !dbg !2273
  %26 = load i64, i64* %ob_refcnt37, align 8, !dbg !2273, !tbaa !1057
  %dec38 = add i64 %26, -1, !dbg !2273
  store i64 %dec38, i64* %ob_refcnt37, align 8, !dbg !2273, !tbaa !1057
  %cmp39 = icmp eq i64 %dec38, 0, !dbg !2273
  br i1 %cmp39, label %if.else.41, label %if.end.44, !dbg !2275

if.else.41:                                       ; preds = %if.end.31
  %ob_type42 = getelementptr inbounds %struct._object, %struct._object* %25, i64 0, i32 1, !dbg !2276
  %27 = load %struct._typeobject*, %struct._typeobject** %ob_type42, align 8, !dbg !2276, !tbaa !1098
  %tp_dealloc43 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %27, i64 0, i32 4, !dbg !2276
  %28 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc43, align 8, !dbg !2276, !tbaa !1127
  call void %28(%struct._object* %25) #1, !dbg !2276
  br label %if.end.44

if.end.44:                                        ; preds = %if.end.31, %if.else.41
  %29 = load %struct._object*, %struct._object** %7, align 8, !dbg !2278, !tbaa !2009
  call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !832, metadata !1034), !dbg !2278
  %cmp49 = icmp eq %struct._object* %29, null, !dbg !2280
  br i1 %cmp49, label %if.end.63, label %do.body.51, !dbg !2281

do.body.51:                                       ; preds = %if.end.44
  call void @llvm.dbg.value(metadata %struct._object* %29, i64 0, metadata !834, metadata !1034), !dbg !2282
  %ob_refcnt53 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 0, !dbg !2284
  %30 = load i64, i64* %ob_refcnt53, align 8, !dbg !2284, !tbaa !1057
  %dec54 = add i64 %30, -1, !dbg !2284
  store i64 %dec54, i64* %ob_refcnt53, align 8, !dbg !2284, !tbaa !1057
  %cmp55 = icmp eq i64 %dec54, 0, !dbg !2284
  br i1 %cmp55, label %if.else.57, label %if.end.63, !dbg !2286

if.else.57:                                       ; preds = %do.body.51
  %ob_type58 = getelementptr inbounds %struct._object, %struct._object* %29, i64 0, i32 1, !dbg !2287
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type58, align 8, !dbg !2287, !tbaa !1098
  %tp_dealloc59 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i64 0, i32 4, !dbg !2287
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc59, align 8, !dbg !2287, !tbaa !1127
  call void %32(%struct._object* %29) #1, !dbg !2287
  br label %if.end.63

if.end.63:                                        ; preds = %if.else.57, %do.body.51, %if.end.44
  call void @PyMem_Free(i8* %boot_raw) #1, !dbg !2289
  %33 = load i64, i64* @nb_threads, align 8, !dbg !2290, !tbaa !1079
  %dec66 = add i64 %33, -1, !dbg !2290
  store i64 %dec66, i64* @nb_threads, align 8, !dbg !2290, !tbaa !1079
  call void @PyThreadState_Clear(%struct._ts* %1) #1, !dbg !2291
  call void @PyThreadState_DeleteCurrent() #1, !dbg !2292
  call void @PyThread_exit_thread() #1, !dbg !2293
  ret void, !dbg !2294
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

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

declare void @PyErr_SetNone(%struct._object*) #3

declare void @PyErr_SetInterrupt() #3

declare i64 @PyThread_get_stacksize() #3

declare i32 @PyThread_set_stacksize(i64) #3

declare %struct._object* @PyLong_FromSsize_t(i64) #3

; Function Attrs: nounwind uwtable
define internal void @release_sentinel(i8* %wr) #0 {
entry:
  tail call void @llvm.dbg.value(metadata i8* %wr, i64 0, metadata !885, metadata !1034), !dbg !2295
  %wr_object = getelementptr inbounds i8, i8* %wr, i64 16, !dbg !2296
  %0 = bitcast i8* %wr_object to %struct._object**, !dbg !2296
  %1 = load %struct._object*, %struct._object** %0, align 8, !dbg !2296, !tbaa !1524
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %1, i64 0, i32 0, !dbg !2296
  %2 = load i64, i64* %ob_refcnt, align 8, !dbg !2296, !tbaa !1057
  %cmp220 = icmp eq %struct._object* %1, @_Py_NoneStruct, !dbg !2297
  %not.cmp = icmp slt i64 %2, 1, !dbg !2297
  %cmp2 = or i1 %cmp220, %not.cmp, !dbg !2297
  br i1 %cmp2, label %do.body, label %if.then, !dbg !2299

if.then:                                          ; preds = %entry
  %locked = getelementptr inbounds %struct._object, %struct._object* %1, i64 2, !dbg !2300
  %3 = bitcast %struct._object* %locked to i8*, !dbg !2300
  %4 = load i8, i8* %3, align 1, !dbg !2300, !tbaa !1571
  %tobool = icmp eq i8 %4, 0, !dbg !2303
  br i1 %tobool, label %do.body, label %if.then.3, !dbg !2304

if.then.3:                                        ; preds = %if.then
  %lock_lock = getelementptr inbounds %struct._object, %struct._object* %1, i64 1, !dbg !2305
  %5 = bitcast %struct._object* %lock_lock to i8**, !dbg !2305
  %6 = load i8*, i8** %5, align 8, !dbg !2305, !tbaa !1565
  tail call void @PyThread_release_lock(i8* %6) #1, !dbg !2307
  store i8 0, i8* %3, align 1, !dbg !2308, !tbaa !1571
  br label %do.body, !dbg !2309

do.body:                                          ; preds = %if.then, %entry, %if.then.3
  tail call void @llvm.dbg.value(metadata %struct._object* %8, i64 0, metadata !888, metadata !1034), !dbg !2310
  %ob_refcnt6 = bitcast i8* %wr to i64*, !dbg !2312
  %7 = load i64, i64* %ob_refcnt6, align 8, !dbg !2312, !tbaa !1057
  %dec = add i64 %7, -1, !dbg !2312
  store i64 %dec, i64* %ob_refcnt6, align 8, !dbg !2312, !tbaa !1057
  %cmp7 = icmp eq i64 %dec, 0, !dbg !2312
  br i1 %cmp7, label %if.else, label %if.end.9, !dbg !2314

if.else:                                          ; preds = %do.body
  %8 = bitcast i8* %wr to %struct._object*, !dbg !2310
  %ob_type = getelementptr inbounds i8, i8* %wr, i64 8, !dbg !2315
  %9 = bitcast i8* %ob_type to %struct._typeobject**, !dbg !2315
  %10 = load %struct._typeobject*, %struct._typeobject** %9, align 8, !dbg !2315, !tbaa !1098
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %10, i64 0, i32 4, !dbg !2315
  %11 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8, !dbg !2315, !tbaa !1127
  tail call void %11(%struct._object* %8) #1, !dbg !2315
  br label %if.end.9

if.end.9:                                         ; preds = %do.body, %if.else
  ret void, !dbg !2317
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata, metadata) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1014, !1015}
!llvm.ident = !{!1016}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.0 (tags/RELEASE_370/final)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !17, subprograms: !479, globals: !890)
!1 = !DIFile(filename: "./Modules/_threadmodule.c", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!2 = !{!3, !9}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "PyLockStatus", file: !4, line: 14, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "Include/pythread.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!5 = !{!6, !7, !8}
!6 = !DIEnumerator(name: "PY_LOCK_FAILURE", value: 0)
!7 = !DIEnumerator(name: "PY_LOCK_ACQUIRED", value: 1)
!8 = !DIEnumerator(name: "PY_LOCK_INTR", value: 2)
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_Py_memory_order", file: !10, line: 23, size: 32, align: 32, elements: !11)
!10 = !DIFile(filename: "Include/pyatomic.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!11 = !{!12, !13, !14, !15, !16}
!12 = !DIEnumerator(name: "_Py_memory_order_relaxed", value: 0)
!13 = !DIEnumerator(name: "_Py_memory_order_acquire", value: 1)
!14 = !DIEnumerator(name: "_Py_memory_order_release", value: 2)
!15 = !DIEnumerator(name: "_Py_memory_order_acq_rel", value: 3)
!16 = !DIEnumerator(name: "_Py_memory_order_seq_cst", value: 4)
!17 = !{!18, !19, !364, !371, !382, !393, !394, !31, !395, !405, !469, !471, !108, !25}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64, align: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !21, line: 109, baseType: !22)
!21 = !DIFile(filename: "Include/object.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!22 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !21, line: 105, size: 128, align: 64, elements: !23)
!23 = !{!24, !32}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !22, file: !21, line: 107, baseType: !25, size: 64, align: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !26, line: 177, baseType: !27)
!26 = !DIFile(filename: "Include/pyport.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !28, line: 102, baseType: !29)
!28 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !30, line: 181, baseType: !31)
!30 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!62 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!109 = !DIFile(filename: "/home/juneyoung.lee/llvm-install-3.7.0/bin/../lib/clang/3.7.0/include/stddef.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!295 = !DIFile(filename: "Include/methodobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!296 = !{!297, !298, !300, !301}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !294, file: !295, line: 41, baseType: !43, size: 64, align: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !294, file: !295, line: 42, baseType: !299, size: 64, align: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !295, line: 18, baseType: !139)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !294, file: !295, line: 43, baseType: !58, size: 32, align: 32, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !294, file: !295, line: 45, baseType: !43, size: 64, align: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !34, file: !21, line: 390, baseType: !303, size: 64, align: 64, offset: 1920)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64, align: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !305, line: 18, size: 320, align: 64, elements: !306)
!305 = !DIFile(filename: "Include/structmember.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!306 = !{!307, !308, !309, !310, !311}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !304, file: !305, line: 19, baseType: !66, size: 64, align: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !304, file: !305, line: 20, baseType: !58, size: 32, align: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !304, file: !305, line: 21, baseType: !25, size: 64, align: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !304, file: !305, line: 22, baseType: !58, size: 32, align: 32, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !304, file: !305, line: 23, baseType: !66, size: 64, align: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !34, file: !21, line: 391, baseType: !313, size: 64, align: 64, offset: 1984)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, align: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !315, line: 11, size: 320, align: 64, elements: !316)
!315 = !DIFile(filename: "Include/descrobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
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
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "localdummyobject", file: !1, line: 609, baseType: !366)
!366 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 605, size: 256, align: 64, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !366, file: !1, line: 606, baseType: !20, size: 128, align: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "localdict", scope: !366, file: !1, line: 607, baseType: !19, size: 64, align: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !366, file: !1, line: 608, baseType: !19, size: 64, align: 64, offset: 192)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64, align: 64)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "localobject", file: !1, line: 658, baseType: !373)
!373 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 648, size: 512, align: 64, elements: !374)
!374 = !{!375, !376, !377, !378, !379, !380, !381}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !373, file: !1, line: 649, baseType: !20, size: 128, align: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !373, file: !1, line: 650, baseType: !19, size: 64, align: 64, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !373, file: !1, line: 651, baseType: !19, size: 64, align: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "kw", scope: !373, file: !1, line: 652, baseType: !19, size: 64, align: 64, offset: 256)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "weakreflist", scope: !373, file: !1, line: 653, baseType: !19, size: 64, align: 64, offset: 320)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "dummies", scope: !373, file: !1, line: 655, baseType: !19, size: 64, align: 64, offset: 384)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !373, file: !1, line: 657, baseType: !19, size: 64, align: 64, offset: 448)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64, align: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyWeakReference", file: !384, line: 10, baseType: !385)
!384 = !DIFile(filename: "Include/weakrefobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "_PyWeakReference", file: !384, line: 16, size: 448, align: 64, elements: !386)
!386 = !{!387, !388, !389, !390, !391, !392}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !385, file: !384, line: 17, baseType: !20, size: 128, align: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "wr_object", scope: !385, file: !384, line: 23, baseType: !19, size: 64, align: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "wr_callback", scope: !385, file: !384, line: 26, baseType: !19, size: 64, align: 64, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !385, file: !384, line: 31, baseType: !232, size: 64, align: 64, offset: 256)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wr_prev", scope: !385, file: !384, line: 38, baseType: !382, size: 64, align: 64, offset: 320)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wr_next", scope: !385, file: !384, line: 39, baseType: !382, size: 64, align: 64, offset: 384)
!393 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!394 = !DIBasicType(name: "long long int", size: 64, align: 64, encoding: DW_ATE_signed)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64, align: 64)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlockobject", file: !1, line: 255, baseType: !397)
!397 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 249, size: 384, align: 64, elements: !398)
!398 = !{!399, !400, !402, !403, !404}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !397, file: !1, line: 250, baseType: !20, size: 128, align: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rlock_lock", scope: !397, file: !1, line: 251, baseType: !401, size: 64, align: 64, offset: 128)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThread_type_lock", file: !4, line: 5, baseType: !18)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rlock_owner", scope: !397, file: !1, line: 252, baseType: !31, size: 64, align: 64, offset: 192)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rlock_count", scope: !397, file: !1, line: 253, baseType: !110, size: 64, align: 64, offset: 256)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !397, file: !1, line: 254, baseType: !19, size: 64, align: 64, offset: 320)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64, align: 64)
!406 = !DICompositeType(tag: DW_TAG_structure_type, name: "bootstate", file: !1, line: 979, size: 320, align: 64, elements: !407)
!407 = !{!408, !465, !466, !467, !468}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !406, file: !1, line: 980, baseType: !409, size: 64, align: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64, align: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !411, line: 44, baseType: !412)
!411 = !DIFile(filename: "Include/pystate.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!412 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !411, line: 19, size: 832, align: 64, elements: !413)
!413 = !{!414, !416, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !412, file: !411, line: 21, baseType: !415, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !412, size: 64, align: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !412, file: !411, line: 22, baseType: !417, size: 64, align: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !418, size: 64, align: 64)
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !411, line: 69, size: 1536, align: 64, elements: !419)
!419 = !{!420, !421, !422, !423, !426, !427, !428, !429, !430, !431, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452}
!420 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !418, file: !411, line: 72, baseType: !417, size: 64, align: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !418, file: !411, line: 73, baseType: !417, size: 64, align: 64, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !418, file: !411, line: 74, baseType: !409, size: 64, align: 64, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !418, file: !411, line: 76, baseType: !424, size: 64, align: 64, offset: 192)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !411, line: 50, flags: DIFlagFwdDecl)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !418, file: !411, line: 77, baseType: !58, size: 32, align: 32, offset: 256)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !418, file: !411, line: 78, baseType: !45, size: 8, align: 8, offset: 288)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !418, file: !411, line: 80, baseType: !45, size: 8, align: 8, offset: 296)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !418, file: !411, line: 85, baseType: !58, size: 32, align: 32, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !418, file: !411, line: 86, baseType: !58, size: 32, align: 32, offset: 352)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !418, file: !411, line: 88, baseType: !432, size: 64, align: 64, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !411, line: 54, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64, align: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!58, !19, !424, !58, !19}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !418, file: !411, line: 89, baseType: !432, size: 64, align: 64, offset: 448)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !418, file: !411, line: 90, baseType: !19, size: 64, align: 64, offset: 512)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !418, file: !411, line: 91, baseType: !19, size: 64, align: 64, offset: 576)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !418, file: !411, line: 93, baseType: !19, size: 64, align: 64, offset: 640)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !418, file: !411, line: 94, baseType: !19, size: 64, align: 64, offset: 704)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !418, file: !411, line: 95, baseType: !19, size: 64, align: 64, offset: 768)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !418, file: !411, line: 97, baseType: !19, size: 64, align: 64, offset: 832)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !418, file: !411, line: 98, baseType: !19, size: 64, align: 64, offset: 896)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !418, file: !411, line: 99, baseType: !19, size: 64, align: 64, offset: 960)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !418, file: !411, line: 101, baseType: !19, size: 64, align: 64, offset: 1024)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !418, file: !411, line: 103, baseType: !58, size: 32, align: 32, offset: 1088)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !418, file: !411, line: 105, baseType: !19, size: 64, align: 64, offset: 1152)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !418, file: !411, line: 106, baseType: !31, size: 64, align: 64, offset: 1216)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !418, file: !411, line: 108, baseType: !58, size: 32, align: 32, offset: 1280)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !418, file: !411, line: 109, baseType: !19, size: 64, align: 64, offset: 1344)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !418, file: !411, line: 134, baseType: !351, size: 64, align: 64, offset: 1408)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !418, file: !411, line: 135, baseType: !18, size: 64, align: 64, offset: 1472)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !412, file: !411, line: 24, baseType: !19, size: 64, align: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !412, file: !411, line: 25, baseType: !19, size: 64, align: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !412, file: !411, line: 26, baseType: !19, size: 64, align: 64, offset: 256)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !412, file: !411, line: 27, baseType: !19, size: 64, align: 64, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !412, file: !411, line: 28, baseType: !19, size: 64, align: 64, offset: 384)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !412, file: !411, line: 30, baseType: !19, size: 64, align: 64, offset: 448)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !412, file: !411, line: 31, baseType: !19, size: 64, align: 64, offset: 512)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !412, file: !411, line: 32, baseType: !19, size: 64, align: 64, offset: 576)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !412, file: !411, line: 33, baseType: !58, size: 32, align: 32, offset: 640)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !412, file: !411, line: 34, baseType: !58, size: 32, align: 32, offset: 672)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !412, file: !411, line: 37, baseType: !58, size: 32, align: 32, offset: 704)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !412, file: !411, line: 43, baseType: !19, size: 64, align: 64, offset: 768)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !406, file: !1, line: 981, baseType: !19, size: 64, align: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !406, file: !1, line: 982, baseType: !19, size: 64, align: 64, offset: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "keyw", scope: !406, file: !1, line: 983, baseType: !19, size: 64, align: 64, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "tstate", scope: !406, file: !1, line: 984, baseType: !469, size: 64, align: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !411, line: 139, baseType: !418)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64, align: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockobject", file: !1, line: 29, baseType: !473)
!473 = !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 24, size: 320, align: 64, elements: !474)
!474 = !{!475, !476, !477, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !473, file: !1, line: 25, baseType: !20, size: 128, align: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "lock_lock", scope: !473, file: !1, line: 26, baseType: !401, size: 64, align: 64, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "in_weakreflist", scope: !473, file: !1, line: 27, baseType: !19, size: 64, align: 64, offset: 192)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !473, file: !1, line: 28, baseType: !45, size: 8, align: 8, offset: 256)
!479 = !{!480, !487, !492, !502, !511, !519, !556, !565, !584, !614, !633, !644, !649, !665, !688, !693, !696, !701, !706, !722, !726, !730, !743, !748, !760, !795, !804, !809, !812, !837, !840, !849, !852, !855, !859, !862, !869, !883}
!480 = !DISubprogram(name: "PyInit__thread", scope: !1, file: !1, line: 1354, type: !481, isLocal: false, isDefinition: true, scopeLine: 1355, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* ()* @PyInit__thread, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!19}
!483 = !{!484, !485, !486}
!484 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "m", scope: !480, file: !1, line: 1356, type: !19)
!485 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "d", scope: !480, file: !1, line: 1356, type: !19)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout_max", scope: !480, file: !1, line: 1356, type: !19)
!487 = !DISubprogram(name: "localdummy_dealloc", scope: !1, file: !1, line: 612, type: !488, isLocal: true, isDefinition: true, scopeLine: 613, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.localdummyobject*)* @localdummy_dealloc, variables: !490)
!488 = !DISubroutineType(types: !489)
!489 = !{null, !364}
!490 = !{!491}
!491 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !487, file: !1, line: 612, type: !364)
!492 = !DISubprogram(name: "local_dealloc", scope: !1, file: !1, line: 797, type: !493, isLocal: true, isDefinition: true, scopeLine: 798, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.localobject*)* @local_dealloc, variables: !495)
!493 = !DISubroutineType(types: !494)
!494 = !{null, !371}
!495 = !{!496, !497, !499}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !492, file: !1, line: 797, type: !371)
!497 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !498, file: !1, line: 807, type: !19)
!498 = distinct !DILexicalBlock(scope: !492, file: !1, line: 807, column: 5)
!499 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !500, file: !1, line: 807, type: !19)
!500 = distinct !DILexicalBlock(scope: !501, file: !1, line: 807, column: 5)
!501 = distinct !DILexicalBlock(scope: !498, file: !1, line: 807, column: 5)
!502 = !DISubprogram(name: "local_getattro", scope: !1, file: !1, line: 918, type: !503, isLocal: true, isDefinition: true, scopeLine: 919, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.localobject*, %struct._object*)* @local_getattro, variables: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!19, !371, !19}
!505 = !{!506, !507, !508, !509, !510}
!506 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !502, file: !1, line: 918, type: !371)
!507 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !502, file: !1, line: 918, type: !19)
!508 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !502, file: !1, line: 920, type: !19)
!509 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !502, file: !1, line: 920, type: !19)
!510 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !502, file: !1, line: 921, type: !58)
!511 = !DISubprogram(name: "_ldict", scope: !1, file: !1, line: 813, type: !512, isLocal: true, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.localobject*)* @_ldict, variables: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{!19, !371}
!514 = !{!515, !516, !517, !518}
!515 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !511, file: !1, line: 813, type: !371)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tdict", scope: !511, file: !1, line: 815, type: !19)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !511, file: !1, line: 815, type: !19)
!518 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !511, file: !1, line: 815, type: !19)
!519 = !DISubprogram(name: "_local_create_dummy", scope: !1, file: !1, line: 667, type: !512, isLocal: true, isDefinition: true, scopeLine: 668, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.localobject*)* @_local_create_dummy, variables: !520)
!520 = !{!521, !522, !523, !524, !525, !526, !527, !529, !533, !535, !539, !541, !543, !546, !548, !551, !553}
!521 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !519, file: !1, line: 667, type: !371)
!522 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tdict", scope: !519, file: !1, line: 669, type: !19)
!523 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !519, file: !1, line: 669, type: !19)
!524 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !519, file: !1, line: 669, type: !19)
!525 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "dummy", scope: !519, file: !1, line: 670, type: !364)
!526 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !519, file: !1, line: 671, type: !58)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !528, file: !1, line: 696, type: !19)
!528 = distinct !DILexicalBlock(scope: !519, file: !1, line: 696, column: 5)
!529 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !530, file: !1, line: 696, type: !19)
!530 = distinct !DILexicalBlock(scope: !531, file: !1, line: 696, column: 5)
!531 = distinct !DILexicalBlock(scope: !532, file: !1, line: 696, column: 5)
!532 = distinct !DILexicalBlock(scope: !528, file: !1, line: 696, column: 5)
!533 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !534, file: !1, line: 700, type: !19)
!534 = distinct !DILexicalBlock(scope: !519, file: !1, line: 700, column: 5)
!535 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !536, file: !1, line: 700, type: !19)
!536 = distinct !DILexicalBlock(scope: !537, file: !1, line: 700, column: 5)
!537 = distinct !DILexicalBlock(scope: !538, file: !1, line: 700, column: 5)
!538 = distinct !DILexicalBlock(scope: !534, file: !1, line: 700, column: 5)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !540, file: !1, line: 702, type: !19)
!540 = distinct !DILexicalBlock(scope: !519, file: !1, line: 702, column: 5)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !542, file: !1, line: 706, type: !19)
!542 = distinct !DILexicalBlock(scope: !519, file: !1, line: 706, column: 5)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !544, file: !1, line: 706, type: !19)
!544 = distinct !DILexicalBlock(scope: !545, file: !1, line: 706, column: 5)
!545 = distinct !DILexicalBlock(scope: !542, file: !1, line: 706, column: 5)
!546 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !547, file: !1, line: 707, type: !19)
!547 = distinct !DILexicalBlock(scope: !519, file: !1, line: 707, column: 5)
!548 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !549, file: !1, line: 707, type: !19)
!549 = distinct !DILexicalBlock(scope: !550, file: !1, line: 707, column: 5)
!550 = distinct !DILexicalBlock(scope: !547, file: !1, line: 707, column: 5)
!551 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !552, file: !1, line: 708, type: !19)
!552 = distinct !DILexicalBlock(scope: !519, file: !1, line: 708, column: 5)
!553 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !554, file: !1, line: 708, type: !19)
!554 = distinct !DILexicalBlock(scope: !555, file: !1, line: 708, column: 5)
!555 = distinct !DILexicalBlock(scope: !552, file: !1, line: 708, column: 5)
!556 = !DISubprogram(name: "local_setattro", scope: !1, file: !1, line: 849, type: !557, isLocal: true, isDefinition: true, scopeLine: 850, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.localobject*, %struct._object*, %struct._object*)* @local_setattro, variables: !559)
!557 = !DISubroutineType(types: !558)
!558 = !{!58, !371, !19, !19}
!559 = !{!560, !561, !562, !563, !564}
!560 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !556, file: !1, line: 849, type: !371)
!561 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 2, scope: !556, file: !1, line: 849, type: !19)
!562 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "v", arg: 3, scope: !556, file: !1, line: 849, type: !19)
!563 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !556, file: !1, line: 851, type: !19)
!564 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !556, file: !1, line: 852, type: !58)
!565 = !DISubprogram(name: "local_traverse", scope: !1, file: !1, line: 766, type: !566, isLocal: true, isDefinition: true, scopeLine: 767, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.localobject*, i32 (%struct._object*, i8*)*, i8*)* @local_traverse, variables: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!58, !371, !277, !18}
!568 = !{!569, !570, !571, !572, !576, !580}
!569 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !565, file: !1, line: 766, type: !371)
!570 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "visit", arg: 2, scope: !565, file: !1, line: 766, type: !277)
!571 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "arg", arg: 3, scope: !565, file: !1, line: 766, type: !18)
!572 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !573, file: !1, line: 768, type: !58)
!573 = distinct !DILexicalBlock(scope: !574, file: !1, line: 768, column: 5)
!574 = distinct !DILexicalBlock(scope: !575, file: !1, line: 768, column: 5)
!575 = distinct !DILexicalBlock(scope: !565, file: !1, line: 768, column: 5)
!576 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !577, file: !1, line: 769, type: !58)
!577 = distinct !DILexicalBlock(scope: !578, file: !1, line: 769, column: 5)
!578 = distinct !DILexicalBlock(scope: !579, file: !1, line: 769, column: 5)
!579 = distinct !DILexicalBlock(scope: !565, file: !1, line: 769, column: 5)
!580 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "vret", scope: !581, file: !1, line: 770, type: !58)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 770, column: 5)
!582 = distinct !DILexicalBlock(scope: !583, file: !1, line: 770, column: 5)
!583 = distinct !DILexicalBlock(scope: !565, file: !1, line: 770, column: 5)
!584 = !DISubprogram(name: "local_clear", scope: !1, file: !1, line: 775, type: !585, isLocal: true, isDefinition: true, scopeLine: 776, flags: DIFlagPrototyped, isOptimized: true, function: i32 (%struct.localobject*)* @local_clear, variables: !587)
!585 = !DISubroutineType(types: !586)
!586 = !{!58, !371}
!587 = !{!588, !589, !590, !592, !596, !598, !602, !604, !608, !610}
!588 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !584, file: !1, line: 775, type: !371)
!589 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !584, file: !1, line: 777, type: !469)
!590 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !591, file: !1, line: 778, type: !19)
!591 = distinct !DILexicalBlock(scope: !584, file: !1, line: 778, column: 5)
!592 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !593, file: !1, line: 778, type: !19)
!593 = distinct !DILexicalBlock(scope: !594, file: !1, line: 778, column: 5)
!594 = distinct !DILexicalBlock(scope: !595, file: !1, line: 778, column: 5)
!595 = distinct !DILexicalBlock(scope: !591, file: !1, line: 778, column: 5)
!596 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !597, file: !1, line: 779, type: !19)
!597 = distinct !DILexicalBlock(scope: !584, file: !1, line: 779, column: 5)
!598 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !599, file: !1, line: 779, type: !19)
!599 = distinct !DILexicalBlock(scope: !600, file: !1, line: 779, column: 5)
!600 = distinct !DILexicalBlock(scope: !601, file: !1, line: 779, column: 5)
!601 = distinct !DILexicalBlock(scope: !597, file: !1, line: 779, column: 5)
!602 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !603, file: !1, line: 780, type: !19)
!603 = distinct !DILexicalBlock(scope: !584, file: !1, line: 780, column: 5)
!604 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !605, file: !1, line: 780, type: !19)
!605 = distinct !DILexicalBlock(scope: !606, file: !1, line: 780, column: 5)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 780, column: 5)
!607 = distinct !DILexicalBlock(scope: !603, file: !1, line: 780, column: 5)
!608 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_tmp", scope: !609, file: !1, line: 781, type: !19)
!609 = distinct !DILexicalBlock(scope: !584, file: !1, line: 781, column: 5)
!610 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !611, file: !1, line: 781, type: !19)
!611 = distinct !DILexicalBlock(scope: !612, file: !1, line: 781, column: 5)
!612 = distinct !DILexicalBlock(scope: !613, file: !1, line: 781, column: 5)
!613 = distinct !DILexicalBlock(scope: !609, file: !1, line: 781, column: 5)
!614 = !DISubprogram(name: "local_new", scope: !1, file: !1, line: 713, type: !615, isLocal: true, isDefinition: true, scopeLine: 714, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @local_new, variables: !619)
!615 = !DISubroutineType(types: !616)
!616 = !{!19, !617, !19, !19}
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64, align: 64)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !21, line: 422, baseType: !34)
!619 = !{!620, !621, !622, !623, !624, !625, !627, !629, !631}
!620 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !614, file: !1, line: 713, type: !617)
!621 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !614, file: !1, line: 713, type: !19)
!622 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kw", arg: 3, scope: !614, file: !1, line: 713, type: !19)
!623 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !614, file: !1, line: 715, type: !371)
!624 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !614, file: !1, line: 716, type: !19)
!625 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !626, file: !1, line: 733, type: !19)
!626 = distinct !DILexicalBlock(scope: !614, file: !1, line: 733, column: 5)
!627 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !628, file: !1, line: 735, type: !19)
!628 = distinct !DILexicalBlock(scope: !614, file: !1, line: 735, column: 5)
!629 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !630, file: !1, line: 751, type: !19)
!630 = distinct !DILexicalBlock(scope: !614, file: !1, line: 751, column: 5)
!631 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !632, file: !1, line: 761, type: !19)
!632 = distinct !DILexicalBlock(scope: !614, file: !1, line: 761, column: 5)
!633 = !DISubprogram(name: "_localdummy_destroyed", scope: !1, file: !1, line: 951, type: !140, isLocal: true, isDefinition: true, scopeLine: 952, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_localdummy_destroyed, variables: !634)
!634 = !{!635, !636, !637, !638, !639, !642}
!635 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "localweakref", arg: 1, scope: !633, file: !1, line: 951, type: !19)
!636 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "dummyweakref", arg: 2, scope: !633, file: !1, line: 951, type: !19)
!637 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !633, file: !1, line: 953, type: !19)
!638 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !633, file: !1, line: 954, type: !371)
!639 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ldict", scope: !640, file: !1, line: 965, type: !19)
!640 = distinct !DILexicalBlock(scope: !641, file: !1, line: 964, column: 32)
!641 = distinct !DILexicalBlock(scope: !633, file: !1, line: 964, column: 9)
!642 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !643, file: !1, line: 973, type: !19)
!643 = distinct !DILexicalBlock(scope: !633, file: !1, line: 973, column: 5)
!644 = !DISubprogram(name: "lock_dealloc", scope: !1, file: !1, line: 32, type: !645, isLocal: true, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.lockobject*)* @lock_dealloc, variables: !647)
!645 = !DISubroutineType(types: !646)
!646 = !{null, !471}
!647 = !{!648}
!648 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !644, file: !1, line: 32, type: !471)
!649 = !DISubprogram(name: "lock_PyThread_acquire_lock", scope: !1, file: !1, line: 103, type: !650, isLocal: true, isDefinition: true, scopeLine: 104, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.lockobject*, %struct._object*, %struct._object*)* @lock_PyThread_acquire_lock, variables: !652)
!650 = !DISubroutineType(types: !651)
!651 = !{!19, !471, !19, !19}
!652 = !{!653, !654, !655, !656, !660, !661, !662, !663}
!653 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !649, file: !1, line: 103, type: !471)
!654 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !649, file: !1, line: 103, type: !19)
!655 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !649, file: !1, line: 103, type: !19)
!656 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !649, file: !1, line: 105, type: !657)
!657 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 192, align: 64, elements: !658)
!658 = !{!659}
!659 = !DISubrange(count: 3)
!660 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocking", scope: !649, file: !1, line: 106, type: !58)
!661 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !649, file: !1, line: 107, type: !393)
!662 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "microseconds", scope: !649, file: !1, line: 108, type: !394)
!663 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !649, file: !1, line: 109, type: !664)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyLockStatus", file: !4, line: 18, baseType: !3)
!665 = !DISubprogram(name: "acquire_timed", scope: !1, file: !1, line: 52, type: !666, isLocal: true, isDefinition: true, scopeLine: 53, flags: DIFlagPrototyped, isOptimized: true, function: i32 (i8*, i64)* @acquire_timed, variables: !668)
!666 = !DISubroutineType(types: !667)
!667 = !{!664, !401, !394}
!668 = !{!669, !670, !671, !672, !682, !683}
!669 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "lock", arg: 1, scope: !665, file: !1, line: 52, type: !401)
!670 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "microseconds", arg: 2, scope: !665, file: !1, line: 52, type: !394)
!671 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !665, file: !1, line: 54, type: !664)
!672 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "curtime", scope: !665, file: !1, line: 55, type: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "_PyTime_timeval", file: !674, line: 17, baseType: !675)
!674 = !DIFile(filename: "Include/pytime.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!675 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !676, line: 30, size: 128, align: 64, elements: !677)
!676 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!677 = !{!678, !680}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !675, file: !676, line: 32, baseType: !679, size: 64, align: 64)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !30, line: 148, baseType: !31)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !675, file: !676, line: 33, baseType: !681, size: 64, align: 64, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !30, line: 150, baseType: !31)
!682 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "endtime", scope: !665, file: !1, line: 56, type: !673)
!683 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !684, file: !1, line: 70, type: !469)
!684 = distinct !DILexicalBlock(scope: !685, file: !1, line: 70, column: 13)
!685 = distinct !DILexicalBlock(scope: !686, file: !1, line: 69, column: 56)
!686 = distinct !DILexicalBlock(scope: !687, file: !1, line: 69, column: 13)
!687 = distinct !DILexicalBlock(scope: !665, file: !1, line: 66, column: 8)
!688 = !DISubprogram(name: "lock_PyThread_release_lock", scope: !1, file: !1, line: 161, type: !689, isLocal: true, isDefinition: true, scopeLine: 162, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.lockobject*)* @lock_PyThread_release_lock, variables: !691)
!689 = !DISubroutineType(types: !690)
!690 = !{!19, !471}
!691 = !{!692}
!692 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !688, file: !1, line: 161, type: !471)
!693 = !DISubprogram(name: "lock_locked_lock", scope: !1, file: !1, line: 184, type: !689, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.lockobject*)* @lock_locked_lock, variables: !694)
!694 = !{!695}
!695 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !693, file: !1, line: 184, type: !471)
!696 = !DISubprogram(name: "rlock_dealloc", scope: !1, file: !1, line: 258, type: !697, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.rlockobject*)* @rlock_dealloc, variables: !699)
!697 = !DISubroutineType(types: !698)
!698 = !{null, !395}
!699 = !{!700}
!700 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !696, file: !1, line: 258, type: !395)
!701 = !DISubprogram(name: "rlock_repr", scope: !1, file: !1, line: 476, type: !702, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_repr, variables: !704)
!702 = !DISubroutineType(types: !703)
!703 = !{!19, !395}
!704 = !{!705}
!705 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !701, file: !1, line: 476, type: !395)
!706 = !DISubprogram(name: "rlock_acquire", scope: !1, file: !1, line: 275, type: !707, isLocal: true, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*, %struct._object*, %struct._object*)* @rlock_acquire, variables: !709)
!707 = !DISubroutineType(types: !708)
!708 = !{!19, !395, !19, !19}
!709 = !{!710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!710 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !706, file: !1, line: 275, type: !395)
!711 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !706, file: !1, line: 275, type: !19)
!712 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !706, file: !1, line: 275, type: !19)
!713 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kwlist", scope: !706, file: !1, line: 277, type: !657)
!714 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocking", scope: !706, file: !1, line: 278, type: !58)
!715 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !706, file: !1, line: 279, type: !393)
!716 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "microseconds", scope: !706, file: !1, line: 280, type: !394)
!717 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tid", scope: !706, file: !1, line: 281, type: !31)
!718 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !706, file: !1, line: 282, type: !664)
!719 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !720, file: !1, line: 314, type: !110)
!720 = distinct !DILexicalBlock(scope: !721, file: !1, line: 313, column: 60)
!721 = distinct !DILexicalBlock(scope: !706, file: !1, line: 313, column: 9)
!722 = !DISubprogram(name: "rlock_release", scope: !1, file: !1, line: 353, type: !702, isLocal: true, isDefinition: true, scopeLine: 354, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_release, variables: !723)
!723 = !{!724, !725}
!724 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !722, file: !1, line: 353, type: !395)
!725 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tid", scope: !722, file: !1, line: 355, type: !31)
!726 = !DISubprogram(name: "rlock_is_owned", scope: !1, file: !1, line: 438, type: !702, isLocal: true, isDefinition: true, scopeLine: 439, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_is_owned, variables: !727)
!727 = !{!728, !729}
!728 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !726, file: !1, line: 438, type: !395)
!729 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tid", scope: !726, file: !1, line: 440, type: !31)
!730 = !DISubprogram(name: "rlock_acquire_restore", scope: !1, file: !1, line: 382, type: !731, isLocal: true, isDefinition: true, scopeLine: 383, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*, %struct._object*)* @rlock_acquire_restore, variables: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{!19, !395, !19}
!733 = !{!734, !735, !736, !737, !738, !739}
!734 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !730, file: !1, line: 382, type: !395)
!735 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !730, file: !1, line: 382, type: !19)
!736 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "owner", scope: !730, file: !1, line: 384, type: !31)
!737 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !730, file: !1, line: 385, type: !110)
!738 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "r", scope: !730, file: !1, line: 386, type: !58)
!739 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !740, file: !1, line: 392, type: !469)
!740 = distinct !DILexicalBlock(scope: !741, file: !1, line: 392, column: 9)
!741 = distinct !DILexicalBlock(scope: !742, file: !1, line: 391, column: 54)
!742 = distinct !DILexicalBlock(scope: !730, file: !1, line: 391, column: 9)
!743 = !DISubprogram(name: "rlock_release_save", scope: !1, file: !1, line: 412, type: !702, isLocal: true, isDefinition: true, scopeLine: 413, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.rlockobject*)* @rlock_release_save, variables: !744)
!744 = !{!745, !746, !747}
!745 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !743, file: !1, line: 412, type: !395)
!746 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "owner", scope: !743, file: !1, line: 414, type: !31)
!747 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "count", scope: !743, file: !1, line: 415, type: !110)
!748 = !DISubprogram(name: "rlock_new", scope: !1, file: !1, line: 454, type: !615, isLocal: true, isDefinition: true, scopeLine: 455, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @rlock_new, variables: !749)
!749 = !{!750, !751, !752, !753, !754}
!750 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !748, file: !1, line: 454, type: !617)
!751 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !748, file: !1, line: 454, type: !19)
!752 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !748, file: !1, line: 454, type: !19)
!753 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !748, file: !1, line: 456, type: !395)
!754 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !755, file: !1, line: 466, type: !19)
!755 = distinct !DILexicalBlock(scope: !756, file: !1, line: 466, column: 13)
!756 = distinct !DILexicalBlock(scope: !757, file: !1, line: 465, column: 39)
!757 = distinct !DILexicalBlock(scope: !758, file: !1, line: 465, column: 13)
!758 = distinct !DILexicalBlock(scope: !759, file: !1, line: 459, column: 23)
!759 = distinct !DILexicalBlock(scope: !748, file: !1, line: 459, column: 9)
!760 = !DISubprogram(name: "thread_PyThread_start_new_thread", scope: !1, file: !1, line: 1033, type: !140, isLocal: true, isDefinition: true, scopeLine: 1034, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @thread_PyThread_start_new_thread, variables: !761)
!761 = !{!762, !763, !764, !765, !766, !767, !768, !769, !776, !777, !780, !782, !784, !788, !790, !792}
!762 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !760, file: !1, line: 1033, type: !19)
!763 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "fargs", arg: 2, scope: !760, file: !1, line: 1033, type: !19)
!764 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "func", scope: !760, file: !1, line: 1035, type: !19)
!765 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "args", scope: !760, file: !1, line: 1035, type: !19)
!766 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "keyw", scope: !760, file: !1, line: 1035, type: !19)
!767 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "boot", scope: !760, file: !1, line: 1036, type: !405)
!768 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ident", scope: !760, file: !1, line: 1037, type: !31)
!769 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "atomic_val", scope: !770, file: !1, line: 1060, type: !771)
!770 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1060, column: 20)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64, align: 64)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_atomic_address", file: !10, line: 33, baseType: !773)
!773 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_atomic_address", file: !10, line: 31, size: 64, align: 64, elements: !774)
!774 = !{!775}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "_value", scope: !773, file: !10, line: 32, baseType: !18, size: 64, align: 64)
!776 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !770, file: !1, line: 1060, type: !18)
!777 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "volatile_data", scope: !770, file: !1, line: 1060, type: !778)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64, align: 64)
!779 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!780 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "order", scope: !770, file: !1, line: 1060, type: !781)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_memory_order", file: !10, line: 29, baseType: !9)
!782 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xincref_tmp", scope: !783, file: !1, line: 1071, type: !19)
!783 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1071, column: 5)
!784 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !785, file: !1, line: 1076, type: !19)
!785 = distinct !DILexicalBlock(scope: !786, file: !1, line: 1076, column: 9)
!786 = distinct !DILexicalBlock(scope: !787, file: !1, line: 1074, column: 22)
!787 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1074, column: 9)
!788 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !789, file: !1, line: 1077, type: !19)
!789 = distinct !DILexicalBlock(scope: !786, file: !1, line: 1077, column: 9)
!790 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !791, file: !1, line: 1078, type: !19)
!791 = distinct !DILexicalBlock(scope: !786, file: !1, line: 1078, column: 9)
!792 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !793, file: !1, line: 1078, type: !19)
!793 = distinct !DILexicalBlock(scope: !794, file: !1, line: 1078, column: 9)
!794 = distinct !DILexicalBlock(scope: !791, file: !1, line: 1078, column: 9)
!795 = !DISubprogram(name: "_Py_ANNOTATE_MEMORY_ORDER", scope: !10, file: !10, line: 59, type: !796, isLocal: true, isDefinition: true, scopeLine: 60, flags: DIFlagPrototyped, isOptimized: true, variables: !801)
!796 = !DISubroutineType(types: !797)
!797 = !{null, !798, !781}
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64, align: 64)
!799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!801 = !{!802, !803}
!802 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "address", arg: 1, scope: !795, file: !10, line: 59, type: !798)
!803 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 2, scope: !795, file: !10, line: 59, type: !781)
!804 = !DISubprogram(name: "_Py_atomic_thread_fence", scope: !10, file: !10, line: 51, type: !805, isLocal: true, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, variables: !807)
!805 = !DISubroutineType(types: !806)
!806 = !{null, !781}
!807 = !{!808}
!808 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !804, file: !10, line: 51, type: !781)
!809 = !DISubprogram(name: "_Py_atomic_signal_fence", scope: !10, file: !10, line: 44, type: !805, isLocal: true, isDefinition: true, scopeLine: 45, flags: DIFlagPrototyped, isOptimized: true, variables: !810)
!810 = !{!811}
!811 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "order", arg: 1, scope: !809, file: !10, line: 44, type: !781)
!812 = !DISubprogram(name: "t_bootstrap", scope: !1, file: !1, line: 988, type: !352, isLocal: true, isDefinition: true, scopeLine: 989, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @t_bootstrap, variables: !813)
!813 = !{!814, !815, !816, !817, !818, !823, !824, !825, !826, !828, !830, !832, !834}
!814 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "boot_raw", arg: 1, scope: !812, file: !1, line: 988, type: !18)
!815 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "boot", scope: !812, file: !1, line: 990, type: !405)
!816 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !812, file: !1, line: 991, type: !469)
!817 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !812, file: !1, line: 992, type: !19)
!818 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "file", scope: !819, file: !1, line: 1005, type: !19)
!819 = distinct !DILexicalBlock(scope: !820, file: !1, line: 1004, column: 14)
!820 = distinct !DILexicalBlock(scope: !821, file: !1, line: 1002, column: 13)
!821 = distinct !DILexicalBlock(scope: !822, file: !1, line: 1001, column: 22)
!822 = distinct !DILexicalBlock(scope: !812, file: !1, line: 1001, column: 9)
!823 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "exc", scope: !819, file: !1, line: 1006, type: !19)
!824 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !819, file: !1, line: 1006, type: !19)
!825 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tb", scope: !819, file: !1, line: 1006, type: !19)
!826 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !827, file: !1, line: 1021, type: !19)
!827 = distinct !DILexicalBlock(scope: !822, file: !1, line: 1021, column: 9)
!828 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !829, file: !1, line: 1022, type: !19)
!829 = distinct !DILexicalBlock(scope: !812, file: !1, line: 1022, column: 5)
!830 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !831, file: !1, line: 1023, type: !19)
!831 = distinct !DILexicalBlock(scope: !812, file: !1, line: 1023, column: 5)
!832 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_xdecref_tmp", scope: !833, file: !1, line: 1024, type: !19)
!833 = distinct !DILexicalBlock(scope: !812, file: !1, line: 1024, column: 5)
!834 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !835, file: !1, line: 1024, type: !19)
!835 = distinct !DILexicalBlock(scope: !836, file: !1, line: 1024, column: 5)
!836 = distinct !DILexicalBlock(scope: !833, file: !1, line: 1024, column: 5)
!837 = !DISubprogram(name: "thread_PyThread_allocate_lock", scope: !1, file: !1, line: 1129, type: !130, isLocal: true, isDefinition: true, scopeLine: 1130, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_PyThread_allocate_lock, variables: !838)
!838 = !{!839}
!839 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !837, file: !1, line: 1129, type: !19)
!840 = !DISubprogram(name: "newlockobject", scope: !1, file: !1, line: 545, type: !841, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, variables: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!471}
!843 = !{!844, !845}
!844 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !840, file: !1, line: 547, type: !471)
!845 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !846, file: !1, line: 555, type: !19)
!846 = distinct !DILexicalBlock(scope: !847, file: !1, line: 555, column: 9)
!847 = distinct !DILexicalBlock(scope: !848, file: !1, line: 554, column: 34)
!848 = distinct !DILexicalBlock(scope: !840, file: !1, line: 554, column: 9)
!849 = !DISubprogram(name: "thread_PyThread_exit_thread", scope: !1, file: !1, line: 1098, type: !130, isLocal: true, isDefinition: true, scopeLine: 1099, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_PyThread_exit_thread, variables: !850)
!850 = !{!851}
!851 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !849, file: !1, line: 1098, type: !19)
!852 = !DISubprogram(name: "thread_PyThread_interrupt_main", scope: !1, file: !1, line: 1112, type: !130, isLocal: true, isDefinition: true, scopeLine: 1113, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_PyThread_interrupt_main, variables: !853)
!853 = !{!854}
!854 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !852, file: !1, line: 1112, type: !19)
!855 = !DISubprogram(name: "thread_get_ident", scope: !1, file: !1, line: 1141, type: !130, isLocal: true, isDefinition: true, scopeLine: 1142, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread_get_ident, variables: !856)
!856 = !{!857, !858}
!857 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !855, file: !1, line: 1141, type: !19)
!858 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "ident", scope: !855, file: !1, line: 1143, type: !31)
!859 = !DISubprogram(name: "thread__count", scope: !1, file: !1, line: 1164, type: !130, isLocal: true, isDefinition: true, scopeLine: 1165, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread__count, variables: !860)
!860 = !{!861}
!861 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !859, file: !1, line: 1164, type: !19)
!862 = !DISubprogram(name: "thread_stack_size", scope: !1, file: !1, line: 1242, type: !140, isLocal: true, isDefinition: true, scopeLine: 1243, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @thread_stack_size, variables: !863)
!863 = !{!864, !865, !866, !867, !868}
!864 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !862, file: !1, line: 1242, type: !19)
!865 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !862, file: !1, line: 1242, type: !19)
!866 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "old_size", scope: !862, file: !1, line: 1244, type: !108)
!867 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "new_size", scope: !862, file: !1, line: 1245, type: !25)
!868 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "rc", scope: !862, file: !1, line: 1246, type: !58)
!869 = !DISubprogram(name: "thread__set_sentinel", scope: !1, file: !1, line: 1203, type: !130, isLocal: true, isDefinition: true, scopeLine: 1204, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*)* @thread__set_sentinel, variables: !870)
!870 = !{!871, !872, !873, !874, !875, !879}
!871 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !869, file: !1, line: 1203, type: !19)
!872 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "wr", scope: !869, file: !1, line: 1205, type: !19)
!873 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "tstate", scope: !869, file: !1, line: 1206, type: !469)
!874 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lock", scope: !869, file: !1, line: 1207, type: !471)
!875 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !876, file: !1, line: 1216, type: !19)
!876 = distinct !DILexicalBlock(scope: !877, file: !1, line: 1216, column: 9)
!877 = distinct !DILexicalBlock(scope: !878, file: !1, line: 1209, column: 41)
!878 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1209, column: 9)
!879 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !880, file: !1, line: 1225, type: !19)
!880 = distinct !DILexicalBlock(scope: !881, file: !1, line: 1225, column: 9)
!881 = distinct !DILexicalBlock(scope: !882, file: !1, line: 1224, column: 21)
!882 = distinct !DILexicalBlock(scope: !869, file: !1, line: 1224, column: 9)
!883 = !DISubprogram(name: "release_sentinel", scope: !1, file: !1, line: 1182, type: !352, isLocal: true, isDefinition: true, scopeLine: 1183, flags: DIFlagPrototyped, isOptimized: true, function: void (i8*)* @release_sentinel, variables: !884)
!884 = !{!885, !886, !887, !888}
!885 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "wr", arg: 1, scope: !883, file: !1, line: 1182, type: !18)
!886 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "obj", scope: !883, file: !1, line: 1187, type: !19)
!887 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "lock", scope: !883, file: !1, line: 1188, type: !471)
!888 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_py_decref_tmp", scope: !889, file: !1, line: 1199, type: !19)
!889 = distinct !DILexicalBlock(scope: !883, file: !1, line: 1199, column: 5)
!890 = !{!891, !892, !893, !894, !895, !897, !898, !902, !906, !910, !914, !915, !919, !923, !927, !931, !935, !939, !961, !965, !969, !977, !981, !985, !989, !993, !997, !1001, !1005, !1009, !1013}
!891 = !DIGlobalVariable(name: "ThreadError", scope: !0, file: !1, line: 16, type: !19, isLocal: true, isDefinition: true, variable: %struct._object** @ThreadError)
!892 = !DIGlobalVariable(name: "str_dict", scope: !0, file: !1, line: 18, type: !19, isLocal: true, isDefinition: true, variable: %struct._object** @str_dict)
!893 = !DIGlobalVariable(name: "localdummytype", scope: !0, file: !1, line: 619, type: !618, isLocal: true, isDefinition: true, variable: %struct._typeobject* @localdummytype)
!894 = !DIGlobalVariable(name: "localtype", scope: !0, file: !1, line: 873, type: !618, isLocal: true, isDefinition: true, variable: %struct._typeobject* @localtype)
!895 = !DIGlobalVariable(name: "wr_callback_def", scope: !614, file: !1, line: 717, type: !896, isLocal: true, isDefinition: true, variable: %struct.PyMethodDef* @local_new.wr_callback_def)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !295, line: 47, baseType: !294)
!897 = !DIGlobalVariable(name: "Locktype", scope: !0, file: !1, line: 215, type: !618, isLocal: true, isDefinition: true, variable: %struct._typeobject* @Locktype)
!898 = !DIGlobalVariable(name: "lock_methods", scope: !0, file: !1, line: 195, type: !899, isLocal: true, isDefinition: true, variable: [9 x %struct.PyMethodDef]* @lock_methods)
!899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 2304, align: 64, elements: !900)
!900 = !{!901}
!901 = !DISubrange(count: 9)
!902 = !DIGlobalVariable(name: "acquire_doc", scope: !0, file: !1, line: 149, type: !903, isLocal: true, isDefinition: true, variable: [424 x i8]* @acquire_doc)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3392, align: 8, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 424)
!906 = !DIGlobalVariable(name: "release_doc", scope: !0, file: !1, line: 175, type: !907, isLocal: true, isDefinition: true, variable: [251 x i8]* @release_doc)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2008, align: 8, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 251)
!910 = !DIGlobalVariable(name: "locked_doc", scope: !0, file: !1, line: 189, type: !911, isLocal: true, isDefinition: true, variable: [105 x i8]* @locked_doc)
!911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 840, align: 8, elements: !912)
!912 = !{!913}
!913 = !DISubrange(count: 105)
!914 = !DIGlobalVariable(name: "RLocktype", scope: !0, file: !1, line: 502, type: !618, isLocal: true, isDefinition: true, variable: %struct._typeobject* @RLocktype)
!915 = !DIGlobalVariable(name: "rlock_methods", scope: !0, file: !1, line: 483, type: !916, isLocal: true, isDefinition: true, variable: [8 x %struct.PyMethodDef]* @rlock_methods)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 2048, align: 64, elements: !917)
!917 = !{!918}
!918 = !DISubrange(count: 8)
!919 = !DIGlobalVariable(name: "rlock_acquire_doc", scope: !0, file: !1, line: 336, type: !920, isLocal: true, isDefinition: true, variable: [667 x i8]* @rlock_acquire_doc)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 5336, align: 8, elements: !921)
!921 = !{!922}
!922 = !DISubrange(count: 667)
!923 = !DIGlobalVariable(name: "rlock_release_doc", scope: !0, file: !1, line: 369, type: !924, isLocal: true, isDefinition: true, variable: [421 x i8]* @rlock_release_doc)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3368, align: 8, elements: !925)
!925 = !{!926}
!926 = !DISubrange(count: 421)
!927 = !DIGlobalVariable(name: "rlock_is_owned_doc", scope: !0, file: !1, line: 448, type: !928, isLocal: true, isDefinition: true, variable: [64 x i8]* @rlock_is_owned_doc)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 512, align: 8, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 64)
!931 = !DIGlobalVariable(name: "rlock_acquire_restore_doc", scope: !0, file: !1, line: 406, type: !932, isLocal: true, isDefinition: true, variable: [76 x i8]* @rlock_acquire_restore_doc)
!932 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 608, align: 8, elements: !933)
!933 = !{!934}
!934 = !DISubrange(count: 76)
!935 = !DIGlobalVariable(name: "rlock_release_save_doc", scope: !0, file: !1, line: 431, type: !936, isLocal: true, isDefinition: true, variable: [69 x i8]* @rlock_release_save_doc)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 552, align: 8, elements: !937)
!937 = !{!938}
!938 = !DISubrange(count: 69)
!939 = !DIGlobalVariable(name: "threadmodule", scope: !0, file: !1, line: 1340, type: !940, isLocal: true, isDefinition: true, variable: %struct.PyModuleDef* @threadmodule)
!940 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef", file: !941, line: 47, size: 832, align: 64, elements: !942)
!941 = !DIFile(filename: "Include/moduleobject.h", directory: "/home/juneyoung.lee/simplberry/simplberry/simplberry-tests/programs/Python-3.4.1")
!942 = !{!943, !952, !953, !954, !955, !957, !958, !959, !960}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "m_base", scope: !940, file: !941, line: 48, baseType: !944, size: 320, align: 64)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyModuleDef_Base", file: !941, line: 38, baseType: !945)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyModuleDef_Base", file: !941, line: 33, size: 320, align: 64, elements: !946)
!946 = !{!947, !948, !950, !951}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !945, file: !941, line: 34, baseType: !20, size: 128, align: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "m_init", scope: !945, file: !941, line: 35, baseType: !949, size: 64, align: 64, offset: 128)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64, align: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "m_index", scope: !945, file: !941, line: 36, baseType: !25, size: 64, align: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "m_copy", scope: !945, file: !941, line: 37, baseType: !19, size: 64, align: 64, offset: 256)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "m_name", scope: !940, file: !941, line: 49, baseType: !43, size: 64, align: 64, offset: 320)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "m_doc", scope: !940, file: !941, line: 50, baseType: !43, size: 64, align: 64, offset: 384)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "m_size", scope: !940, file: !941, line: 51, baseType: !25, size: 64, align: 64, offset: 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "m_methods", scope: !940, file: !941, line: 52, baseType: !956, size: 64, align: 64, offset: 512)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64, align: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "m_reload", scope: !940, file: !941, line: 53, baseType: !156, size: 64, align: 64, offset: 576)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "m_traverse", scope: !940, file: !941, line: 54, baseType: !273, size: 64, align: 64, offset: 640)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "m_clear", scope: !940, file: !941, line: 55, baseType: !156, size: 64, align: 64, offset: 704)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "m_free", scope: !940, file: !941, line: 56, baseType: !350, size: 64, align: 64, offset: 768)
!961 = !DIGlobalVariable(name: "thread_doc", scope: !0, file: !1, line: 1324, type: !962, isLocal: true, isDefinition: true, variable: [137 x i8]* @thread_doc)
!962 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1096, align: 8, elements: !963)
!963 = !{!964}
!964 = !DISubrange(count: 137)
!965 = !DIGlobalVariable(name: "thread_methods", scope: !0, file: !1, line: 1295, type: !966, isLocal: true, isDefinition: true, variable: [12 x %struct.PyMethodDef]* @thread_methods)
!966 = !DICompositeType(tag: DW_TAG_array_type, baseType: !896, size: 3072, align: 64, elements: !967)
!967 = !{!968}
!968 = !DISubrange(count: 12)
!969 = !DIGlobalVariable(name: "PyId_stderr", scope: !0, file: !1, line: 20, type: !970, isLocal: true, isDefinition: true, variable: %struct._Py_Identifier* @PyId_stderr)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "_Py_Identifier", file: !21, line: 144, baseType: !971)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "_Py_Identifier", file: !21, line: 140, size: 192, align: 64, elements: !972)
!972 = !{!973, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !971, file: !21, line: 141, baseType: !974, size: 64, align: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64, align: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !971, file: !21, line: 142, baseType: !43, size: 64, align: 64, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !971, file: !21, line: 143, baseType: !19, size: 64, align: 64, offset: 128)
!977 = !DIGlobalVariable(name: "start_new_doc", scope: !0, file: !1, line: 1086, type: !978, isLocal: true, isDefinition: true, variable: [490 x i8]* @start_new_doc)
!978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3920, align: 8, elements: !979)
!979 = !{!980}
!980 = !DISubrange(count: 490)
!981 = !DIGlobalVariable(name: "allocate_doc", scope: !0, file: !1, line: 1134, type: !982, isLocal: true, isDefinition: true, variable: [143 x i8]* @allocate_doc)
!982 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1144, align: 8, elements: !983)
!983 = !{!984}
!984 = !DISubrange(count: 143)
!985 = !DIGlobalVariable(name: "exit_doc", scope: !0, file: !1, line: 1104, type: !986, isLocal: true, isDefinition: true, variable: [174 x i8]* @exit_doc)
!986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1392, align: 8, elements: !987)
!987 = !{!988}
!988 = !DISubrange(count: 174)
!989 = !DIGlobalVariable(name: "interrupt_doc", scope: !0, file: !1, line: 1119, type: !990, isLocal: true, isDefinition: true, variable: [128 x i8]* @interrupt_doc)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1024, align: 8, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 128)
!993 = !DIGlobalVariable(name: "get_ident_doc", scope: !0, file: !1, line: 1152, type: !994, isLocal: true, isDefinition: true, variable: [471 x i8]* @get_ident_doc)
!994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3768, align: 8, elements: !995)
!995 = !{!996}
!996 = !DISubrange(count: 471)
!997 = !DIGlobalVariable(name: "_count_doc", scope: !0, file: !1, line: 1169, type: !998, isLocal: true, isDefinition: true, variable: [373 x i8]* @_count_doc)
!998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 2984, align: 8, elements: !999)
!999 = !{!1000}
!1000 = !DISubrange(count: 373)
!1001 = !DIGlobalVariable(name: "stack_size_doc", scope: !0, file: !1, line: 1275, type: !1002, isLocal: true, isDefinition: true, variable: [1035 x i8]* @stack_size_doc)
!1002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 8280, align: 8, elements: !1003)
!1003 = !{!1004}
!1004 = !DISubrange(count: 1035)
!1005 = !DIGlobalVariable(name: "_set_sentinel_doc", scope: !0, file: !1, line: 1233, type: !1006, isLocal: true, isDefinition: true, variable: [202 x i8]* @_set_sentinel_doc)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 1616, align: 8, elements: !1007)
!1007 = !{!1008}
!1008 = !DISubrange(count: 202)
!1009 = !DIGlobalVariable(name: "lock_doc", scope: !0, file: !1, line: 1328, type: !1010, isLocal: true, isDefinition: true, variable: [491 x i8]* @lock_doc)
!1010 = !DICompositeType(tag: DW_TAG_array_type, baseType: !45, size: 3928, align: 8, elements: !1011)
!1011 = !{!1012}
!1012 = !DISubrange(count: 491)
!1013 = !DIGlobalVariable(name: "nb_threads", scope: !0, file: !1, line: 17, type: !31, isLocal: true, isDefinition: true, variable: i64* @nb_threads)
!1014 = !{i32 2, !"Dwarf Version", i32 4}
!1015 = !{i32 2, !"Debug Info Version", i32 3}
!1016 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1017 = !DILocation(line: 1359, column: 9, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1359, column: 9)
!1019 = !DILocation(line: 1359, column: 39, scope: !1018)
!1020 = !DILocation(line: 1359, column: 9, scope: !480)
!1021 = !DILocation(line: 1361, column: 9, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1361, column: 9)
!1023 = !DILocation(line: 1361, column: 34, scope: !1022)
!1024 = !DILocation(line: 1361, column: 9, scope: !480)
!1025 = !DILocation(line: 1363, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1363, column: 9)
!1027 = !DILocation(line: 1363, column: 33, scope: !1026)
!1028 = !DILocation(line: 1363, column: 9, scope: !480)
!1029 = !DILocation(line: 1365, column: 9, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1365, column: 9)
!1031 = !DILocation(line: 1365, column: 34, scope: !1030)
!1032 = !DILocation(line: 1365, column: 9, scope: !480)
!1033 = !DILocation(line: 1369, column: 9, scope: !480)
!1034 = !DIExpression()
!1035 = !DILocation(line: 1356, column: 15, scope: !480)
!1036 = !DILocation(line: 1370, column: 11, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1370, column: 9)
!1038 = !DILocation(line: 1370, column: 9, scope: !480)
!1039 = !DILocation(line: 1373, column: 19, scope: !480)
!1040 = !DILocation(line: 1356, column: 23, scope: !480)
!1041 = !DILocation(line: 1374, column: 10, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1374, column: 9)
!1043 = !DILocation(line: 1374, column: 9, scope: !480)
!1044 = !DILocation(line: 1376, column: 9, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1376, column: 9)
!1046 = !DILocation(line: 1376, column: 59, scope: !1045)
!1047 = !DILocation(line: 1376, column: 9, scope: !480)
!1048 = !DILocation(line: 1380, column: 9, scope: !480)
!1049 = !DILocation(line: 1356, column: 19, scope: !480)
!1050 = !DILocation(line: 1381, column: 19, scope: !480)
!1051 = !{!1052, !1052, i64 0}
!1052 = !{!"any pointer", !1053, i64 0}
!1053 = !{!"omnipotent char", !1054, i64 0}
!1054 = !{!"Simple C/C++ TBAA"}
!1055 = !DILocation(line: 1381, column: 17, scope: !480)
!1056 = !DILocation(line: 1382, column: 5, scope: !480)
!1057 = !{!1058, !1059, i64 0}
!1058 = !{!"_object", !1059, i64 0, !1052, i64 8}
!1059 = !{!"long", !1053, i64 0}
!1060 = !DILocation(line: 1384, column: 5, scope: !480)
!1061 = !DILocation(line: 1385, column: 21, scope: !480)
!1062 = !{!1063, !1052, i64 176}
!1063 = !{!"_typeobject", !1064, i64 0, !1052, i64 24, !1059, i64 32, !1059, i64 40, !1052, i64 48, !1052, i64 56, !1052, i64 64, !1052, i64 72, !1052, i64 80, !1052, i64 88, !1052, i64 96, !1052, i64 104, !1052, i64 112, !1052, i64 120, !1052, i64 128, !1052, i64 136, !1052, i64 144, !1052, i64 152, !1052, i64 160, !1059, i64 168, !1052, i64 176, !1052, i64 184, !1052, i64 192, !1052, i64 200, !1059, i64 208, !1052, i64 216, !1052, i64 224, !1052, i64 232, !1052, i64 240, !1052, i64 248, !1052, i64 256, !1052, i64 264, !1052, i64 272, !1052, i64 280, !1059, i64 288, !1052, i64 296, !1052, i64 304, !1052, i64 312, !1052, i64 320, !1052, i64 328, !1052, i64 336, !1052, i64 344, !1052, i64 352, !1052, i64 360, !1052, i64 368, !1052, i64 376, !1065, i64 384, !1052, i64 392}
!1064 = !{!"", !1058, i64 0, !1059, i64 16}
!1065 = !{!"int", !1053, i64 0}
!1066 = !DILocation(line: 1386, column: 5, scope: !480)
!1067 = !DILocation(line: 1387, column: 5, scope: !480)
!1068 = !DILocation(line: 1389, column: 5, scope: !480)
!1069 = !DILocation(line: 1390, column: 9, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1390, column: 9)
!1071 = !DILocation(line: 1390, column: 64, scope: !1070)
!1072 = !DILocation(line: 1390, column: 9, scope: !480)
!1073 = !DILocation(line: 1393, column: 5, scope: !480)
!1074 = !DILocation(line: 1394, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1394, column: 9)
!1076 = !DILocation(line: 1394, column: 65, scope: !1075)
!1077 = !DILocation(line: 1394, column: 9, scope: !480)
!1078 = !DILocation(line: 1397, column: 16, scope: !480)
!1079 = !{!1059, !1059, i64 0}
!1080 = !DILocation(line: 1399, column: 16, scope: !480)
!1081 = !DILocation(line: 1399, column: 14, scope: !480)
!1082 = !DILocation(line: 1400, column: 18, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !480, file: !1, line: 1400, column: 9)
!1084 = !DILocation(line: 1400, column: 9, scope: !480)
!1085 = !DILocation(line: 1404, column: 5, scope: !480)
!1086 = !DILocation(line: 1405, column: 5, scope: !480)
!1087 = !DILocation(line: 1406, column: 1, scope: !480)
!1088 = !DILocation(line: 612, column: 38, scope: !487)
!1089 = !DILocation(line: 614, column: 15, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !487, file: !1, line: 614, column: 9)
!1091 = !{!1092, !1052, i64 24}
!1092 = !{!"", !1058, i64 0, !1052, i64 16, !1052, i64 24}
!1093 = !DILocation(line: 614, column: 27, scope: !1090)
!1094 = !DILocation(line: 614, column: 9, scope: !487)
!1095 = !DILocation(line: 615, column: 32, scope: !1090)
!1096 = !DILocation(line: 615, column: 9, scope: !1090)
!1097 = !DILocation(line: 616, column: 5, scope: !487)
!1098 = !{!1058, !1052, i64 8}
!1099 = !DILocation(line: 616, column: 20, scope: !487)
!1100 = !{!1063, !1052, i64 320}
!1101 = !DILocation(line: 616, column: 28, scope: !487)
!1102 = !DILocation(line: 617, column: 1, scope: !487)
!1103 = !DILocation(line: 797, column: 28, scope: !492)
!1104 = !DILocation(line: 801, column: 15, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !492, file: !1, line: 801, column: 9)
!1106 = !{!1107, !1052, i64 40}
!1107 = !{!"", !1058, i64 0, !1052, i64 16, !1052, i64 24, !1052, i64 32, !1052, i64 40, !1052, i64 48, !1052, i64 56}
!1108 = !DILocation(line: 801, column: 27, scope: !1105)
!1109 = !DILocation(line: 801, column: 9, scope: !492)
!1110 = !DILocation(line: 802, column: 32, scope: !1105)
!1111 = !DILocation(line: 802, column: 9, scope: !1105)
!1112 = !DILocation(line: 804, column: 25, scope: !492)
!1113 = !DILocation(line: 804, column: 5, scope: !492)
!1114 = !DILocation(line: 806, column: 5, scope: !492)
!1115 = !DILocation(line: 807, column: 5, scope: !1116)
!1116 = !DILexicalBlockFile(scope: !498, file: !1, discriminator: 1)
!1117 = !{!1107, !1052, i64 16}
!1118 = !DILocation(line: 807, column: 5, scope: !501)
!1119 = !DILocation(line: 807, column: 5, scope: !498)
!1120 = !DILocation(line: 807, column: 5, scope: !1121)
!1121 = !DILexicalBlockFile(scope: !500, file: !1, discriminator: 4)
!1122 = !DILocation(line: 807, column: 5, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !500, file: !1, line: 807, column: 5)
!1124 = !DILocation(line: 807, column: 5, scope: !500)
!1125 = !DILocation(line: 807, column: 5, scope: !1126)
!1126 = !DILexicalBlockFile(scope: !1123, file: !1, discriminator: 6)
!1127 = !{!1063, !1052, i64 48}
!1128 = !DILocation(line: 808, column: 5, scope: !492)
!1129 = !DILocation(line: 808, column: 20, scope: !492)
!1130 = !DILocation(line: 809, column: 1, scope: !492)
!1131 = !DILocation(line: 918, column: 29, scope: !502)
!1132 = !DILocation(line: 918, column: 45, scope: !502)
!1133 = !DILocation(line: 923, column: 13, scope: !502)
!1134 = !DILocation(line: 920, column: 15, scope: !502)
!1135 = !DILocation(line: 924, column: 15, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !502, file: !1, line: 924, column: 9)
!1137 = !DILocation(line: 924, column: 9, scope: !502)
!1138 = !DILocation(line: 927, column: 40, scope: !502)
!1139 = !DILocation(line: 927, column: 9, scope: !502)
!1140 = !DILocation(line: 921, column: 9, scope: !502)
!1141 = !DILocation(line: 928, column: 9, scope: !502)
!1142 = !DILocation(line: 929, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !1, line: 928, column: 17)
!1144 = distinct !DILexicalBlock(scope: !502, file: !1, line: 928, column: 9)
!1145 = !DILocation(line: 930, column: 9, scope: !1143)
!1146 = !DILocation(line: 935, column: 9, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !502, file: !1, line: 935, column: 9)
!1148 = !DILocation(line: 935, column: 23, scope: !1147)
!1149 = !DILocation(line: 935, column: 9, scope: !502)
!1150 = !DILocation(line: 937, column: 16, scope: !1147)
!1151 = !DILocation(line: 937, column: 9, scope: !1147)
!1152 = !DILocation(line: 940, column: 13, scope: !502)
!1153 = !DILocation(line: 920, column: 23, scope: !502)
!1154 = !DILocation(line: 941, column: 15, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !502, file: !1, line: 941, column: 9)
!1156 = !DILocation(line: 941, column: 9, scope: !502)
!1157 = !DILocation(line: 943, column: 16, scope: !1155)
!1158 = !DILocation(line: 943, column: 9, scope: !1155)
!1159 = !DILocation(line: 945, column: 5, scope: !502)
!1160 = !DILocation(line: 946, column: 5, scope: !502)
!1161 = !DILocation(line: 947, column: 1, scope: !502)
!1162 = !DILocation(line: 849, column: 29, scope: !556)
!1163 = !DILocation(line: 849, column: 45, scope: !556)
!1164 = !DILocation(line: 849, column: 61, scope: !556)
!1165 = !DILocation(line: 854, column: 13, scope: !556)
!1166 = !DILocation(line: 851, column: 15, scope: !556)
!1167 = !DILocation(line: 855, column: 15, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !556, file: !1, line: 855, column: 9)
!1169 = !DILocation(line: 855, column: 9, scope: !556)
!1170 = !DILocation(line: 858, column: 40, scope: !556)
!1171 = !DILocation(line: 858, column: 9, scope: !556)
!1172 = !DILocation(line: 852, column: 9, scope: !556)
!1173 = !DILocation(line: 859, column: 9, scope: !556)
!1174 = !DILocation(line: 860, column: 22, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !1, line: 859, column: 17)
!1176 = distinct !DILexicalBlock(scope: !556, file: !1, line: 859, column: 9)
!1177 = !DILocation(line: 862, column: 22, scope: !1175)
!1178 = !DILocation(line: 862, column: 37, scope: !1175)
!1179 = !{!1063, !1052, i64 24}
!1180 = !DILocation(line: 860, column: 9, scope: !1175)
!1181 = !DILocation(line: 863, column: 9, scope: !1175)
!1182 = !DILocation(line: 868, column: 45, scope: !556)
!1183 = !DILocation(line: 868, column: 12, scope: !556)
!1184 = !DILocation(line: 868, column: 5, scope: !556)
!1185 = !DILocation(line: 869, column: 1, scope: !556)
!1186 = !DILocation(line: 766, column: 29, scope: !565)
!1187 = !DILocation(line: 766, column: 45, scope: !565)
!1188 = !DILocation(line: 766, column: 58, scope: !565)
!1189 = !DILocation(line: 768, column: 5, scope: !1190)
!1190 = !DILexicalBlockFile(scope: !574, file: !1, discriminator: 1)
!1191 = !{!1107, !1052, i64 24}
!1192 = !DILocation(line: 768, column: 5, scope: !575)
!1193 = !DILocation(line: 768, column: 5, scope: !1194)
!1194 = !DILexicalBlockFile(scope: !573, file: !1, discriminator: 2)
!1195 = !DILocation(line: 768, column: 5, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !573, file: !1, line: 768, column: 5)
!1197 = !DILocation(line: 769, column: 5, scope: !1198)
!1198 = !DILexicalBlockFile(scope: !578, file: !1, discriminator: 1)
!1199 = !{!1107, !1052, i64 32}
!1200 = !DILocation(line: 769, column: 5, scope: !579)
!1201 = !DILocation(line: 769, column: 5, scope: !1202)
!1202 = !DILexicalBlockFile(scope: !577, file: !1, discriminator: 2)
!1203 = !DILocation(line: 769, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !577, file: !1, line: 769, column: 5)
!1205 = !DILocation(line: 770, column: 5, scope: !1206)
!1206 = !DILexicalBlockFile(scope: !582, file: !1, discriminator: 1)
!1207 = !{!1107, !1052, i64 48}
!1208 = !DILocation(line: 770, column: 5, scope: !583)
!1209 = !DILocation(line: 770, column: 5, scope: !1210)
!1210 = !DILexicalBlockFile(scope: !581, file: !1, discriminator: 2)
!1211 = !DILocation(line: 770, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !581, file: !1, line: 770, column: 5)
!1213 = !DILocation(line: 771, column: 5, scope: !565)
!1214 = !DILocation(line: 772, column: 1, scope: !565)
!1215 = !DILocation(line: 775, column: 26, scope: !584)
!1216 = !DILocation(line: 778, column: 5, scope: !1217)
!1217 = !DILexicalBlockFile(scope: !591, file: !1, discriminator: 1)
!1218 = !DILocation(line: 778, column: 5, scope: !595)
!1219 = !DILocation(line: 778, column: 5, scope: !591)
!1220 = !DILocation(line: 778, column: 5, scope: !1221)
!1221 = !DILexicalBlockFile(scope: !594, file: !1, discriminator: 2)
!1222 = !DILocation(line: 778, column: 5, scope: !1223)
!1223 = !DILexicalBlockFile(scope: !593, file: !1, discriminator: 4)
!1224 = !DILocation(line: 778, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !593, file: !1, line: 778, column: 5)
!1226 = !DILocation(line: 778, column: 5, scope: !593)
!1227 = !DILocation(line: 778, column: 5, scope: !1228)
!1228 = !DILexicalBlockFile(scope: !1225, file: !1, discriminator: 6)
!1229 = !DILocation(line: 779, column: 5, scope: !1230)
!1230 = !DILexicalBlockFile(scope: !597, file: !1, discriminator: 1)
!1231 = !DILocation(line: 779, column: 5, scope: !601)
!1232 = !DILocation(line: 779, column: 5, scope: !597)
!1233 = !DILocation(line: 779, column: 5, scope: !1234)
!1234 = !DILexicalBlockFile(scope: !600, file: !1, discriminator: 2)
!1235 = !DILocation(line: 779, column: 5, scope: !1236)
!1236 = !DILexicalBlockFile(scope: !599, file: !1, discriminator: 4)
!1237 = !DILocation(line: 779, column: 5, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !599, file: !1, line: 779, column: 5)
!1239 = !DILocation(line: 779, column: 5, scope: !599)
!1240 = !DILocation(line: 779, column: 5, scope: !1241)
!1241 = !DILexicalBlockFile(scope: !1238, file: !1, discriminator: 6)
!1242 = !DILocation(line: 780, column: 5, scope: !1243)
!1243 = !DILexicalBlockFile(scope: !603, file: !1, discriminator: 1)
!1244 = !DILocation(line: 780, column: 5, scope: !607)
!1245 = !DILocation(line: 780, column: 5, scope: !603)
!1246 = !DILocation(line: 780, column: 5, scope: !1247)
!1247 = !DILexicalBlockFile(scope: !606, file: !1, discriminator: 2)
!1248 = !DILocation(line: 780, column: 5, scope: !1249)
!1249 = !DILexicalBlockFile(scope: !605, file: !1, discriminator: 4)
!1250 = !DILocation(line: 780, column: 5, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !605, file: !1, line: 780, column: 5)
!1252 = !DILocation(line: 780, column: 5, scope: !605)
!1253 = !DILocation(line: 780, column: 5, scope: !1254)
!1254 = !DILexicalBlockFile(scope: !1251, file: !1, discriminator: 6)
!1255 = !DILocation(line: 781, column: 5, scope: !1256)
!1256 = !DILexicalBlockFile(scope: !609, file: !1, discriminator: 1)
!1257 = !{!1107, !1052, i64 56}
!1258 = !DILocation(line: 781, column: 5, scope: !613)
!1259 = !DILocation(line: 781, column: 5, scope: !609)
!1260 = !DILocation(line: 781, column: 5, scope: !1261)
!1261 = !DILexicalBlockFile(scope: !612, file: !1, discriminator: 2)
!1262 = !DILocation(line: 781, column: 5, scope: !1263)
!1263 = !DILexicalBlockFile(scope: !611, file: !1, discriminator: 4)
!1264 = !DILocation(line: 781, column: 5, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !611, file: !1, line: 781, column: 5)
!1266 = !DILocation(line: 781, column: 5, scope: !611)
!1267 = !DILocation(line: 781, column: 5, scope: !1268)
!1268 = !DILexicalBlockFile(scope: !1265, file: !1, discriminator: 6)
!1269 = !DILocation(line: 783, column: 15, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !584, file: !1, line: 783, column: 9)
!1271 = !DILocation(line: 783, column: 9, scope: !1270)
!1272 = !DILocation(line: 784, column: 9, scope: !1270)
!1273 = !DILocation(line: 784, column: 22, scope: !1274)
!1274 = !DILexicalBlockFile(scope: !1270, file: !1, discriminator: 1)
!1275 = !DILocation(line: 777, column: 20, scope: !584)
!1276 = !DILocation(line: 784, column: 20, scope: !1270)
!1277 = !DILocation(line: 785, column: 9, scope: !1270)
!1278 = !DILocation(line: 785, column: 20, scope: !1270)
!1279 = !{!1280, !1052, i64 16}
!1280 = !{!"_ts", !1052, i64 0, !1052, i64 8, !1052, i64 16, !1052, i64 24, !1065, i64 32, !1053, i64 36, !1053, i64 37, !1065, i64 40, !1065, i64 44, !1052, i64 48, !1052, i64 56, !1052, i64 64, !1052, i64 72, !1052, i64 80, !1052, i64 88, !1052, i64 96, !1052, i64 104, !1052, i64 112, !1052, i64 120, !1052, i64 128, !1065, i64 136, !1052, i64 144, !1059, i64 152, !1065, i64 160, !1052, i64 168, !1052, i64 176, !1052, i64 184}
!1281 = !DILocation(line: 785, column: 12, scope: !1270)
!1282 = !DILocation(line: 783, column: 9, scope: !584)
!1283 = !DILocation(line: 786, column: 22, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 786, column: 9)
!1285 = distinct !DILexicalBlock(scope: !1270, file: !1, line: 785, column: 28)
!1286 = !DILocation(line: 786, column: 9, scope: !1284)
!1287 = !DILocation(line: 789, column: 25, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !1, line: 789, column: 17)
!1289 = distinct !DILexicalBlock(scope: !1284, file: !1, line: 786, column: 9)
!1290 = !{!1280, !1052, i64 128}
!1291 = !DILocation(line: 789, column: 17, scope: !1288)
!1292 = !DILocation(line: 789, column: 30, scope: !1288)
!1293 = !DILocation(line: 790, column: 52, scope: !1288)
!1294 = !DILocation(line: 790, column: 17, scope: !1288)
!1295 = !DILocation(line: 789, column: 17, scope: !1289)
!1296 = !DILocation(line: 791, column: 40, scope: !1288)
!1297 = !DILocation(line: 791, column: 52, scope: !1288)
!1298 = !DILocation(line: 791, column: 17, scope: !1288)
!1299 = !DILocation(line: 788, column: 22, scope: !1289)
!1300 = !DILocation(line: 793, column: 5, scope: !584)
!1301 = !DILocation(line: 713, column: 25, scope: !614)
!1302 = !DILocation(line: 713, column: 41, scope: !614)
!1303 = !DILocation(line: 713, column: 57, scope: !614)
!1304 = !DILocation(line: 721, column: 15, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !614, file: !1, line: 721, column: 9)
!1306 = !{!1063, !1052, i64 296}
!1307 = !DILocation(line: 721, column: 44, scope: !1305)
!1308 = !DILocation(line: 721, column: 23, scope: !1305)
!1309 = !DILocation(line: 722, column: 9, scope: !1305)
!1310 = !DILocation(line: 722, column: 14, scope: !1311)
!1311 = !DILexicalBlockFile(scope: !1305, file: !1, discriminator: 1)
!1312 = !DILocation(line: 722, column: 19, scope: !1305)
!1313 = !DILocation(line: 722, column: 22, scope: !1305)
!1314 = !DILocation(line: 723, column: 9, scope: !1305)
!1315 = !DILocation(line: 723, column: 13, scope: !1311)
!1316 = !DILocation(line: 723, column: 16, scope: !1305)
!1317 = !DILocation(line: 723, column: 19, scope: !1305)
!1318 = !DILocation(line: 721, column: 9, scope: !614)
!1319 = !DILocation(line: 724, column: 25, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1305, file: !1, line: 723, column: 42)
!1321 = !DILocation(line: 724, column: 9, scope: !1320)
!1322 = !DILocation(line: 726, column: 9, scope: !1320)
!1323 = !DILocation(line: 729, column: 33, scope: !614)
!1324 = !{!1063, !1052, i64 304}
!1325 = !DILocation(line: 729, column: 27, scope: !614)
!1326 = !DILocation(line: 729, column: 12, scope: !614)
!1327 = !DILocation(line: 715, column: 18, scope: !614)
!1328 = !DILocation(line: 730, column: 14, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !614, file: !1, line: 730, column: 9)
!1330 = !DILocation(line: 730, column: 9, scope: !614)
!1331 = !DILocation(line: 733, column: 5, scope: !1332)
!1332 = !DILexicalBlockFile(scope: !626, file: !1, discriminator: 1)
!1333 = !DILocation(line: 733, column: 5, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !626, file: !1, line: 733, column: 5)
!1335 = !DILocation(line: 733, column: 5, scope: !626)
!1336 = !DILocation(line: 733, column: 5, scope: !1337)
!1337 = !DILexicalBlockFile(scope: !1334, file: !1, discriminator: 2)
!1338 = !DILocation(line: 734, column: 11, scope: !614)
!1339 = !DILocation(line: 734, column: 16, scope: !614)
!1340 = !DILocation(line: 735, column: 5, scope: !1341)
!1341 = !DILexicalBlockFile(scope: !628, file: !1, discriminator: 1)
!1342 = !DILocation(line: 735, column: 5, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !628, file: !1, line: 735, column: 5)
!1344 = !DILocation(line: 735, column: 5, scope: !628)
!1345 = !DILocation(line: 735, column: 5, scope: !1346)
!1346 = !DILexicalBlockFile(scope: !1343, file: !1, discriminator: 2)
!1347 = !DILocation(line: 736, column: 11, scope: !614)
!1348 = !DILocation(line: 736, column: 14, scope: !614)
!1349 = !DILocation(line: 737, column: 17, scope: !614)
!1350 = !DILocation(line: 737, column: 11, scope: !614)
!1351 = !DILocation(line: 737, column: 15, scope: !614)
!1352 = !DILocation(line: 738, column: 19, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !614, file: !1, line: 738, column: 9)
!1354 = !DILocation(line: 738, column: 9, scope: !614)
!1355 = !DILocation(line: 741, column: 21, scope: !614)
!1356 = !DILocation(line: 741, column: 11, scope: !614)
!1357 = !DILocation(line: 741, column: 19, scope: !614)
!1358 = !DILocation(line: 742, column: 23, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !614, file: !1, line: 742, column: 9)
!1360 = !DILocation(line: 742, column: 9, scope: !614)
!1361 = !DILocation(line: 747, column: 10, scope: !614)
!1362 = !DILocation(line: 716, column: 15, scope: !614)
!1363 = !DILocation(line: 748, column: 12, scope: !1364)
!1364 = distinct !DILexicalBlock(scope: !614, file: !1, line: 748, column: 9)
!1365 = !DILocation(line: 748, column: 9, scope: !614)
!1366 = !DILocation(line: 750, column: 25, scope: !614)
!1367 = !DILocation(line: 750, column: 11, scope: !614)
!1368 = !DILocation(line: 750, column: 23, scope: !614)
!1369 = !DILocation(line: 751, column: 5, scope: !1370)
!1370 = !DILexicalBlockFile(scope: !630, file: !1, discriminator: 1)
!1371 = !DILocation(line: 751, column: 5, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !630, file: !1, line: 751, column: 5)
!1373 = !DILocation(line: 751, column: 5, scope: !630)
!1374 = !DILocation(line: 751, column: 5, scope: !1375)
!1375 = !DILexicalBlockFile(scope: !1372, file: !1, discriminator: 3)
!1376 = !DILocation(line: 752, column: 15, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !614, file: !1, line: 752, column: 9)
!1378 = !DILocation(line: 752, column: 27, scope: !1377)
!1379 = !DILocation(line: 752, column: 9, scope: !614)
!1380 = !DILocation(line: 755, column: 9, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !614, file: !1, line: 755, column: 9)
!1382 = !DILocation(line: 755, column: 35, scope: !1381)
!1383 = !DILocation(line: 755, column: 9, scope: !614)
!1384 = !DILocation(line: 761, column: 5, scope: !1385)
!1385 = !DILexicalBlockFile(scope: !632, file: !1, discriminator: 1)
!1386 = !DILocation(line: 761, column: 5, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !632, file: !1, line: 761, column: 5)
!1388 = !DILocation(line: 761, column: 5, scope: !632)
!1389 = !DILocation(line: 761, column: 5, scope: !1390)
!1390 = !DILexicalBlockFile(scope: !1387, file: !1, discriminator: 3)
!1391 = !DILocation(line: 763, column: 1, scope: !614)
!1392 = !DILocation(line: 813, column: 21, scope: !511)
!1393 = !DILocation(line: 817, column: 13, scope: !511)
!1394 = !DILocation(line: 815, column: 15, scope: !511)
!1395 = !DILocation(line: 818, column: 15, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !511, file: !1, line: 818, column: 9)
!1397 = !DILocation(line: 818, column: 9, scope: !511)
!1398 = !DILocation(line: 819, column: 25, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !1, line: 818, column: 24)
!1400 = !DILocation(line: 819, column: 9, scope: !1399)
!1401 = !DILocation(line: 821, column: 9, scope: !1399)
!1402 = !DILocation(line: 824, column: 41, scope: !511)
!1403 = !DILocation(line: 824, column: 13, scope: !511)
!1404 = !DILocation(line: 815, column: 31, scope: !511)
!1405 = !DILocation(line: 825, column: 15, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !511, file: !1, line: 825, column: 9)
!1407 = !DILocation(line: 825, column: 9, scope: !511)
!1408 = !DILocation(line: 826, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 825, column: 24)
!1410 = !DILocation(line: 815, column: 23, scope: !511)
!1411 = !DILocation(line: 827, column: 19, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 827, column: 13)
!1413 = !DILocation(line: 827, column: 13, scope: !1409)
!1414 = !DILocation(line: 830, column: 13, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1409, file: !1, line: 830, column: 13)
!1416 = !DILocation(line: 830, column: 28, scope: !1415)
!1417 = !DILocation(line: 830, column: 57, scope: !1415)
!1418 = !DILocation(line: 830, column: 36, scope: !1415)
!1419 = !DILocation(line: 830, column: 65, scope: !1415)
!1420 = !DILocation(line: 832, column: 42, scope: !1415)
!1421 = !DILocation(line: 832, column: 54, scope: !1415)
!1422 = !DILocation(line: 831, column: 13, scope: !1415)
!1423 = !DILocation(line: 832, column: 58, scope: !1415)
!1424 = !DILocation(line: 830, column: 13, scope: !1409)
!1425 = !DILocation(line: 836, column: 41, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1415, file: !1, line: 832, column: 63)
!1427 = !DILocation(line: 836, column: 13, scope: !1426)
!1428 = !DILocation(line: 837, column: 13, scope: !1426)
!1429 = !DILocation(line: 842, column: 47, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1406, file: !1, line: 840, column: 10)
!1431 = !{!1092, !1052, i64 16}
!1432 = !DILocation(line: 846, column: 1, scope: !511)
!1433 = !DILocation(line: 667, column: 34, scope: !519)
!1434 = !DILocation(line: 669, column: 23, scope: !519)
!1435 = !DILocation(line: 669, column: 38, scope: !519)
!1436 = !DILocation(line: 670, column: 23, scope: !519)
!1437 = !DILocation(line: 673, column: 13, scope: !519)
!1438 = !DILocation(line: 669, column: 15, scope: !519)
!1439 = !DILocation(line: 674, column: 15, scope: !1440)
!1440 = distinct !DILexicalBlock(scope: !519, file: !1, line: 674, column: 9)
!1441 = !DILocation(line: 674, column: 9, scope: !519)
!1442 = !DILocation(line: 675, column: 25, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1440, file: !1, line: 674, column: 24)
!1444 = !DILocation(line: 675, column: 9, scope: !1443)
!1445 = !DILocation(line: 677, column: 9, scope: !1443)
!1446 = !DILocation(line: 680, column: 13, scope: !519)
!1447 = !DILocation(line: 681, column: 15, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !519, file: !1, line: 681, column: 9)
!1449 = !DILocation(line: 681, column: 9, scope: !519)
!1450 = !DILocation(line: 683, column: 49, scope: !519)
!1451 = !DILocation(line: 683, column: 34, scope: !519)
!1452 = !DILocation(line: 684, column: 15, scope: !1453)
!1453 = distinct !DILexicalBlock(scope: !519, file: !1, line: 684, column: 9)
!1454 = !DILocation(line: 684, column: 9, scope: !519)
!1455 = !DILocation(line: 686, column: 12, scope: !519)
!1456 = !DILocation(line: 686, column: 22, scope: !519)
!1457 = !DILocation(line: 687, column: 53, scope: !519)
!1458 = !DILocation(line: 687, column: 10, scope: !519)
!1459 = !DILocation(line: 688, column: 12, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !519, file: !1, line: 688, column: 9)
!1461 = !DILocation(line: 688, column: 9, scope: !519)
!1462 = !DILocation(line: 693, column: 30, scope: !519)
!1463 = !DILocation(line: 693, column: 9, scope: !519)
!1464 = !DILocation(line: 671, column: 9, scope: !519)
!1465 = !DILocation(line: 694, column: 11, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !519, file: !1, line: 694, column: 9)
!1467 = !DILocation(line: 694, column: 9, scope: !519)
!1468 = !DILocation(line: 696, column: 5, scope: !1469)
!1469 = !DILexicalBlockFile(scope: !528, file: !1, discriminator: 1)
!1470 = !DILocation(line: 696, column: 5, scope: !1471)
!1471 = !DILexicalBlockFile(scope: !530, file: !1, discriminator: 4)
!1472 = !DILocation(line: 696, column: 5, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !530, file: !1, line: 696, column: 5)
!1474 = !DILocation(line: 696, column: 5, scope: !530)
!1475 = !DILocation(line: 696, column: 5, scope: !1476)
!1476 = !DILexicalBlockFile(scope: !1473, file: !1, discriminator: 6)
!1477 = !DILocation(line: 697, column: 37, scope: !519)
!1478 = !DILocation(line: 697, column: 9, scope: !519)
!1479 = !DILocation(line: 698, column: 11, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !519, file: !1, line: 698, column: 9)
!1481 = !DILocation(line: 698, column: 9, scope: !519)
!1482 = !DILocation(line: 700, column: 5, scope: !1483)
!1483 = !DILexicalBlockFile(scope: !534, file: !1, discriminator: 1)
!1484 = !DILocation(line: 700, column: 5, scope: !1485)
!1485 = !DILexicalBlockFile(scope: !536, file: !1, discriminator: 4)
!1486 = !DILocation(line: 700, column: 5, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !536, file: !1, line: 700, column: 5)
!1488 = !DILocation(line: 700, column: 5, scope: !536)
!1489 = !DILocation(line: 700, column: 5, scope: !1490)
!1490 = !DILexicalBlockFile(scope: !1487, file: !1, discriminator: 6)
!1491 = !DILocation(line: 702, column: 5, scope: !1492)
!1492 = !DILexicalBlockFile(scope: !540, file: !1, discriminator: 1)
!1493 = !DILocation(line: 702, column: 5, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !540, file: !1, line: 702, column: 5)
!1495 = !DILocation(line: 702, column: 5, scope: !540)
!1496 = !DILocation(line: 702, column: 5, scope: !1497)
!1497 = !DILexicalBlockFile(scope: !1494, file: !1, discriminator: 3)
!1498 = !DILocation(line: 706, column: 5, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !544, file: !1, line: 706, column: 5)
!1500 = !DILocation(line: 706, column: 5, scope: !544)
!1501 = !DILocation(line: 706, column: 5, scope: !1502)
!1502 = !DILexicalBlockFile(scope: !1499, file: !1, discriminator: 6)
!1503 = !DILocation(line: 707, column: 5, scope: !550)
!1504 = !DILocation(line: 707, column: 5, scope: !547)
!1505 = !DILocation(line: 707, column: 5, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !549, file: !1, line: 707, column: 5)
!1507 = !DILocation(line: 707, column: 5, scope: !549)
!1508 = !DILocation(line: 707, column: 5, scope: !1509)
!1509 = !DILexicalBlockFile(scope: !1506, file: !1, discriminator: 6)
!1510 = !DILocation(line: 708, column: 5, scope: !1511)
!1511 = !DILexicalBlockFile(scope: !552, file: !1, discriminator: 1)
!1512 = !DILocation(line: 708, column: 5, scope: !552)
!1513 = !DILocation(line: 708, column: 5, scope: !1514)
!1514 = !DILexicalBlockFile(scope: !554, file: !1, discriminator: 4)
!1515 = !DILocation(line: 708, column: 5, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !554, file: !1, line: 708, column: 5)
!1517 = !DILocation(line: 708, column: 5, scope: !554)
!1518 = !DILocation(line: 708, column: 5, scope: !1519)
!1519 = !DILexicalBlockFile(scope: !1516, file: !1, discriminator: 6)
!1520 = !DILocation(line: 710, column: 1, scope: !519)
!1521 = !DILocation(line: 951, column: 33, scope: !633)
!1522 = !DILocation(line: 951, column: 57, scope: !633)
!1523 = !DILocation(line: 956, column: 11, scope: !633)
!1524 = !{!1525, !1052, i64 16}
!1525 = !{!"_PyWeakReference", !1058, i64 0, !1052, i64 16, !1052, i64 24, !1059, i64 32, !1052, i64 40, !1052, i64 48}
!1526 = !DILocation(line: 959, column: 5, scope: !633)
!1527 = !DILocation(line: 957, column: 13, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !633, file: !1, line: 957, column: 9)
!1529 = !DILocation(line: 957, column: 9, scope: !633)
!1530 = !DILocation(line: 964, column: 15, scope: !641)
!1531 = !DILocation(line: 964, column: 23, scope: !641)
!1532 = !DILocation(line: 964, column: 9, scope: !633)
!1533 = !DILocation(line: 966, column: 17, scope: !640)
!1534 = !DILocation(line: 965, column: 19, scope: !640)
!1535 = !DILocation(line: 967, column: 19, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !640, file: !1, line: 967, column: 13)
!1537 = !DILocation(line: 967, column: 13, scope: !640)
!1538 = !DILocation(line: 968, column: 34, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1536, file: !1, line: 967, column: 28)
!1540 = !DILocation(line: 968, column: 13, scope: !1539)
!1541 = !DILocation(line: 969, column: 9, scope: !1539)
!1542 = !DILocation(line: 970, column: 13, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !640, file: !1, line: 970, column: 13)
!1544 = !DILocation(line: 970, column: 13, scope: !640)
!1545 = !DILocation(line: 971, column: 13, scope: !1543)
!1546 = !DILocation(line: 973, column: 5, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !643, file: !1, line: 973, column: 5)
!1548 = !DILocation(line: 973, column: 5, scope: !643)
!1549 = !DILocation(line: 973, column: 5, scope: !1550)
!1550 = !DILexicalBlockFile(scope: !1547, file: !1, discriminator: 3)
!1551 = !DILocation(line: 974, column: 5, scope: !633)
!1552 = !DILocation(line: 958, column: 9, scope: !1528)
!1553 = !DILocation(line: 975, column: 1, scope: !633)
!1554 = !DILocation(line: 32, column: 26, scope: !644)
!1555 = !DILocation(line: 34, column: 15, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !644, file: !1, line: 34, column: 9)
!1557 = !{!1558, !1052, i64 24}
!1558 = !{!"", !1058, i64 0, !1052, i64 16, !1052, i64 24, !1053, i64 32}
!1559 = !DILocation(line: 34, column: 30, scope: !1556)
!1560 = !DILocation(line: 34, column: 9, scope: !644)
!1561 = !DILocation(line: 35, column: 32, scope: !1556)
!1562 = !DILocation(line: 35, column: 9, scope: !1556)
!1563 = !DILocation(line: 36, column: 15, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !644, file: !1, line: 36, column: 9)
!1565 = !{!1558, !1052, i64 16}
!1566 = !DILocation(line: 36, column: 25, scope: !1564)
!1567 = !DILocation(line: 36, column: 9, scope: !644)
!1568 = !DILocation(line: 38, column: 19, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !1, line: 38, column: 13)
!1570 = distinct !DILexicalBlock(scope: !1564, file: !1, line: 36, column: 34)
!1571 = !{!1558, !1053, i64 32}
!1572 = !DILocation(line: 38, column: 13, scope: !1569)
!1573 = !DILocation(line: 38, column: 13, scope: !1570)
!1574 = !DILocation(line: 39, column: 13, scope: !1569)
!1575 = !DILocation(line: 40, column: 34, scope: !1570)
!1576 = !DILocation(line: 40, column: 9, scope: !1570)
!1577 = !DILocation(line: 41, column: 5, scope: !1570)
!1578 = !DILocation(line: 42, column: 18, scope: !644)
!1579 = !DILocation(line: 42, column: 5, scope: !644)
!1580 = !DILocation(line: 43, column: 1, scope: !644)
!1581 = !DILocation(line: 103, column: 40, scope: !649)
!1582 = !DILocation(line: 103, column: 56, scope: !649)
!1583 = !DILocation(line: 103, column: 72, scope: !649)
!1584 = !DILocation(line: 105, column: 5, scope: !649)
!1585 = !DILocation(line: 105, column: 11, scope: !649)
!1586 = !DILocation(line: 106, column: 5, scope: !649)
!1587 = !DILocation(line: 106, column: 9, scope: !649)
!1588 = !{!1065, !1065, i64 0}
!1589 = !DILocation(line: 107, column: 5, scope: !649)
!1590 = !DILocation(line: 107, column: 12, scope: !649)
!1591 = !{!1592, !1592, i64 0}
!1592 = !{!"double", !1053, i64 0}
!1593 = !DILocation(line: 111, column: 65, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !649, file: !1, line: 111, column: 9)
!1595 = !DILocation(line: 111, column: 10, scope: !1594)
!1596 = !DILocation(line: 111, column: 9, scope: !649)
!1597 = !DILocation(line: 115, column: 10, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !649, file: !1, line: 115, column: 9)
!1599 = !DILocation(line: 115, column: 30, scope: !1598)
!1600 = !DILocation(line: 115, column: 19, scope: !1598)
!1601 = !DILocation(line: 116, column: 25, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !1, line: 115, column: 37)
!1603 = !DILocation(line: 116, column: 9, scope: !1602)
!1604 = !DILocation(line: 118, column: 9, scope: !1602)
!1605 = !DILocation(line: 120, column: 17, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !649, file: !1, line: 120, column: 9)
!1607 = !DILocation(line: 120, column: 21, scope: !1606)
!1608 = !DILocation(line: 121, column: 25, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1606, file: !1, line: 120, column: 39)
!1610 = !DILocation(line: 121, column: 9, scope: !1609)
!1611 = !DILocation(line: 123, column: 9, scope: !1609)
!1612 = !DILocation(line: 125, column: 9, scope: !649)
!1613 = !DILocation(line: 127, column: 22, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1615, file: !1, line: 127, column: 14)
!1615 = distinct !DILexicalBlock(scope: !649, file: !1, line: 125, column: 9)
!1616 = !DILocation(line: 127, column: 14, scope: !1615)
!1617 = !DILocation(line: 130, column: 17, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1614, file: !1, line: 129, column: 10)
!1619 = !DILocation(line: 131, column: 21, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1618, file: !1, line: 131, column: 13)
!1621 = !DILocation(line: 131, column: 13, scope: !1618)
!1622 = !DILocation(line: 132, column: 29, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1620, file: !1, line: 131, column: 49)
!1624 = !DILocation(line: 132, column: 13, scope: !1623)
!1625 = !DILocation(line: 134, column: 13, scope: !1623)
!1626 = !DILocation(line: 136, column: 24, scope: !1618)
!1627 = !DILocation(line: 108, column: 18, scope: !649)
!1628 = !DILocation(line: 139, column: 29, scope: !649)
!1629 = !DILocation(line: 139, column: 9, scope: !649)
!1630 = !DILocation(line: 109, column: 18, scope: !649)
!1631 = !DILocation(line: 140, column: 11, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !649, file: !1, line: 140, column: 9)
!1633 = !DILocation(line: 140, column: 9, scope: !649)
!1634 = !DILocation(line: 144, column: 11, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !649, file: !1, line: 144, column: 9)
!1636 = !DILocation(line: 144, column: 9, scope: !649)
!1637 = !DILocation(line: 145, column: 15, scope: !1635)
!1638 = !DILocation(line: 145, column: 22, scope: !1635)
!1639 = !DILocation(line: 145, column: 9, scope: !1635)
!1640 = !DILocation(line: 146, column: 28, scope: !649)
!1641 = !DILocation(line: 146, column: 12, scope: !649)
!1642 = !DILocation(line: 146, column: 5, scope: !649)
!1643 = !DILocation(line: 147, column: 1, scope: !649)
!1644 = !DILocation(line: 161, column: 40, scope: !688)
!1645 = !DILocation(line: 164, column: 16, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !688, file: !1, line: 164, column: 9)
!1647 = !DILocation(line: 164, column: 10, scope: !1646)
!1648 = !DILocation(line: 164, column: 9, scope: !688)
!1649 = !DILocation(line: 165, column: 25, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1646, file: !1, line: 164, column: 24)
!1651 = !DILocation(line: 165, column: 9, scope: !1650)
!1652 = !DILocation(line: 166, column: 9, scope: !1650)
!1653 = !DILocation(line: 169, column: 33, scope: !688)
!1654 = !DILocation(line: 169, column: 5, scope: !688)
!1655 = !DILocation(line: 170, column: 18, scope: !688)
!1656 = !DILocation(line: 171, column: 5, scope: !688)
!1657 = !DILocation(line: 172, column: 5, scope: !688)
!1658 = !DILocation(line: 173, column: 1, scope: !688)
!1659 = !DILocation(line: 184, column: 30, scope: !693)
!1660 = !DILocation(line: 186, column: 40, scope: !693)
!1661 = !DILocation(line: 186, column: 28, scope: !693)
!1662 = !DILocation(line: 186, column: 12, scope: !693)
!1663 = !DILocation(line: 186, column: 5, scope: !693)
!1664 = !DILocation(line: 52, column: 34, scope: !665)
!1665 = !DILocation(line: 52, column: 53, scope: !665)
!1666 = !DILocation(line: 55, column: 5, scope: !665)
!1667 = !DILocation(line: 56, column: 5, scope: !665)
!1668 = !DILocation(line: 59, column: 22, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !665, file: !1, line: 59, column: 9)
!1670 = !DILocation(line: 59, column: 9, scope: !665)
!1671 = !DILocation(line: 87, column: 42, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 85, column: 35)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 85, column: 17)
!1674 = distinct !DILexicalBlock(scope: !1675, file: !1, line: 75, column: 32)
!1675 = distinct !DILexicalBlock(scope: !687, file: !1, line: 75, column: 13)
!1676 = !DILocation(line: 56, column: 21, scope: !665)
!1677 = !DILocation(line: 60, column: 9, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1669, file: !1, line: 59, column: 27)
!1679 = !DILocation(line: 61, column: 40, scope: !1678)
!1680 = !DILocation(line: 61, column: 17, scope: !1678)
!1681 = !DILocation(line: 62, column: 41, scope: !1678)
!1682 = !DILocation(line: 61, column: 24, scope: !1678)
!1683 = !DILocation(line: 63, column: 5, scope: !1678)
!1684 = !DILocation(line: 88, column: 42, scope: !1672)
!1685 = !DILocation(line: 87, column: 59, scope: !1672)
!1686 = !DILocation(line: 88, column: 60, scope: !1672)
!1687 = !DILocation(line: 68, column: 13, scope: !687)
!1688 = !DILocation(line: 69, column: 50, scope: !686)
!1689 = !DILocation(line: 69, column: 34, scope: !686)
!1690 = !DILocation(line: 85, column: 30, scope: !1673)
!1691 = !DILocation(line: 85, column: 17, scope: !1674)
!1692 = !DILocation(line: 54, column: 18, scope: !665)
!1693 = !DILocation(line: 69, column: 15, scope: !686)
!1694 = !DILocation(line: 70, column: 13, scope: !684)
!1695 = !DILocation(line: 71, column: 17, scope: !684)
!1696 = !DILocation(line: 72, column: 13, scope: !684)
!1697 = !DILocation(line: 73, column: 9, scope: !685)
!1698 = !DILocation(line: 75, column: 15, scope: !1675)
!1699 = !DILocation(line: 75, column: 13, scope: !687)
!1700 = !DILocation(line: 79, column: 17, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1674, file: !1, line: 79, column: 17)
!1702 = !DILocation(line: 79, column: 39, scope: !1701)
!1703 = !DILocation(line: 79, column: 17, scope: !1674)
!1704 = !DILocation(line: 55, column: 21, scope: !665)
!1705 = !DILocation(line: 86, column: 17, scope: !1672)
!1706 = !{!1707, !1059, i64 0}
!1707 = !{!"timeval", !1059, i64 0, !1059, i64 8}
!1708 = !DILocation(line: 87, column: 49, scope: !1672)
!1709 = !DILocation(line: 87, column: 67, scope: !1672)
!1710 = !{!1707, !1059, i64 8}
!1711 = !DILocation(line: 88, column: 50, scope: !1672)
!1712 = !DILocation(line: 87, column: 77, scope: !1672)
!1713 = !DILocation(line: 92, column: 34, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1672, file: !1, line: 92, column: 21)
!1715 = !DILocation(line: 100, column: 1, scope: !665)
!1716 = !DILocation(line: 258, column: 28, scope: !696)
!1717 = !DILocation(line: 260, column: 15, scope: !1718)
!1718 = distinct !DILexicalBlock(scope: !696, file: !1, line: 260, column: 9)
!1719 = !{!1720, !1052, i64 40}
!1720 = !{!"", !1058, i64 0, !1052, i64 16, !1059, i64 24, !1059, i64 32, !1052, i64 40}
!1721 = !DILocation(line: 260, column: 30, scope: !1718)
!1722 = !DILocation(line: 260, column: 9, scope: !696)
!1723 = !DILocation(line: 261, column: 32, scope: !1718)
!1724 = !DILocation(line: 261, column: 9, scope: !1718)
!1725 = !DILocation(line: 264, column: 15, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !696, file: !1, line: 264, column: 9)
!1727 = !{!1720, !1052, i64 16}
!1728 = !DILocation(line: 264, column: 26, scope: !1726)
!1729 = !DILocation(line: 264, column: 9, scope: !696)
!1730 = !DILocation(line: 266, column: 19, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1, line: 266, column: 13)
!1732 = distinct !DILexicalBlock(scope: !1726, file: !1, line: 264, column: 35)
!1733 = !{!1720, !1059, i64 32}
!1734 = !DILocation(line: 266, column: 31, scope: !1731)
!1735 = !DILocation(line: 266, column: 13, scope: !1732)
!1736 = !DILocation(line: 267, column: 13, scope: !1731)
!1737 = !DILocation(line: 269, column: 34, scope: !1732)
!1738 = !DILocation(line: 269, column: 9, scope: !1732)
!1739 = !DILocation(line: 270, column: 5, scope: !1732)
!1740 = !DILocation(line: 271, column: 5, scope: !696)
!1741 = !DILocation(line: 271, column: 20, scope: !696)
!1742 = !DILocation(line: 271, column: 28, scope: !696)
!1743 = !DILocation(line: 272, column: 1, scope: !696)
!1744 = !DILocation(line: 476, column: 25, scope: !701)
!1745 = !DILocation(line: 479, column: 9, scope: !701)
!1746 = !DILocation(line: 479, column: 24, scope: !701)
!1747 = !DILocation(line: 479, column: 39, scope: !701)
!1748 = !{!1720, !1059, i64 24}
!1749 = !DILocation(line: 479, column: 58, scope: !701)
!1750 = !DILocation(line: 478, column: 12, scope: !701)
!1751 = !DILocation(line: 478, column: 5, scope: !701)
!1752 = !DILocation(line: 454, column: 25, scope: !748)
!1753 = !DILocation(line: 454, column: 41, scope: !748)
!1754 = !DILocation(line: 454, column: 57, scope: !748)
!1755 = !DILocation(line: 458, column: 34, scope: !748)
!1756 = !DILocation(line: 458, column: 28, scope: !748)
!1757 = !DILocation(line: 459, column: 14, scope: !759)
!1758 = !DILocation(line: 459, column: 9, scope: !748)
!1759 = !DILocation(line: 461, column: 15, scope: !758)
!1760 = !DILocation(line: 464, column: 28, scope: !758)
!1761 = !DILocation(line: 461, column: 27, scope: !758)
!1762 = !DILocation(line: 464, column: 15, scope: !758)
!1763 = !DILocation(line: 464, column: 26, scope: !758)
!1764 = !DILocation(line: 465, column: 30, scope: !757)
!1765 = !DILocation(line: 465, column: 13, scope: !758)
!1766 = !DILocation(line: 466, column: 13, scope: !1767)
!1767 = !DILexicalBlockFile(scope: !755, file: !1, discriminator: 1)
!1768 = !DILocation(line: 466, column: 13, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !755, file: !1, line: 466, column: 13)
!1770 = !DILocation(line: 466, column: 13, scope: !755)
!1771 = !DILocation(line: 466, column: 13, scope: !1772)
!1772 = !DILexicalBlockFile(scope: !1769, file: !1, discriminator: 3)
!1773 = !DILocation(line: 467, column: 29, scope: !756)
!1774 = !DILocation(line: 467, column: 13, scope: !756)
!1775 = !DILocation(line: 468, column: 13, scope: !756)
!1776 = !DILocation(line: 473, column: 1, scope: !748)
!1777 = !DILocation(line: 275, column: 28, scope: !706)
!1778 = !DILocation(line: 275, column: 44, scope: !706)
!1779 = !DILocation(line: 275, column: 60, scope: !706)
!1780 = !DILocation(line: 277, column: 5, scope: !706)
!1781 = !DILocation(line: 277, column: 11, scope: !706)
!1782 = !DILocation(line: 278, column: 5, scope: !706)
!1783 = !DILocation(line: 278, column: 9, scope: !706)
!1784 = !DILocation(line: 279, column: 5, scope: !706)
!1785 = !DILocation(line: 279, column: 12, scope: !706)
!1786 = !DILocation(line: 282, column: 18, scope: !706)
!1787 = !DILocation(line: 284, column: 65, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !706, file: !1, line: 284, column: 9)
!1789 = !DILocation(line: 284, column: 10, scope: !1788)
!1790 = !DILocation(line: 284, column: 9, scope: !706)
!1791 = !DILocation(line: 288, column: 10, scope: !1792)
!1792 = distinct !DILexicalBlock(scope: !706, file: !1, line: 288, column: 9)
!1793 = !DILocation(line: 288, column: 30, scope: !1792)
!1794 = !DILocation(line: 288, column: 19, scope: !1792)
!1795 = !DILocation(line: 289, column: 25, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1792, file: !1, line: 288, column: 37)
!1797 = !DILocation(line: 289, column: 9, scope: !1796)
!1798 = !DILocation(line: 291, column: 9, scope: !1796)
!1799 = !DILocation(line: 293, column: 17, scope: !1800)
!1800 = distinct !DILexicalBlock(scope: !706, file: !1, line: 293, column: 9)
!1801 = !DILocation(line: 293, column: 21, scope: !1800)
!1802 = !DILocation(line: 294, column: 25, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1800, file: !1, line: 293, column: 39)
!1804 = !DILocation(line: 294, column: 9, scope: !1803)
!1805 = !DILocation(line: 296, column: 9, scope: !1803)
!1806 = !DILocation(line: 298, column: 9, scope: !706)
!1807 = !DILocation(line: 300, column: 22, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1809, file: !1, line: 300, column: 14)
!1809 = distinct !DILexicalBlock(scope: !706, file: !1, line: 298, column: 9)
!1810 = !DILocation(line: 300, column: 14, scope: !1809)
!1811 = !DILocation(line: 303, column: 17, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1808, file: !1, line: 302, column: 10)
!1813 = !DILocation(line: 304, column: 21, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1812, file: !1, line: 304, column: 13)
!1815 = !DILocation(line: 304, column: 13, scope: !1812)
!1816 = !DILocation(line: 305, column: 29, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1814, file: !1, line: 304, column: 49)
!1818 = !DILocation(line: 305, column: 13, scope: !1817)
!1819 = !DILocation(line: 307, column: 13, scope: !1817)
!1820 = !DILocation(line: 309, column: 24, scope: !1812)
!1821 = !DILocation(line: 280, column: 18, scope: !706)
!1822 = !DILocation(line: 312, column: 11, scope: !706)
!1823 = !DILocation(line: 281, column: 10, scope: !706)
!1824 = !DILocation(line: 313, column: 15, scope: !721)
!1825 = !DILocation(line: 313, column: 27, scope: !721)
!1826 = !DILocation(line: 313, column: 31, scope: !721)
!1827 = !DILocation(line: 313, column: 47, scope: !721)
!1828 = !DILocation(line: 313, column: 38, scope: !721)
!1829 = !DILocation(line: 313, column: 9, scope: !706)
!1830 = !DILocation(line: 314, column: 23, scope: !720)
!1831 = !DILocation(line: 315, column: 19, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !720, file: !1, line: 315, column: 13)
!1833 = !DILocation(line: 315, column: 13, scope: !720)
!1834 = !DILocation(line: 316, column: 29, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1832, file: !1, line: 315, column: 41)
!1836 = !DILocation(line: 316, column: 13, scope: !1835)
!1837 = !DILocation(line: 318, column: 13, scope: !1835)
!1838 = !DILocation(line: 314, column: 49, scope: !720)
!1839 = !DILocation(line: 320, column: 27, scope: !720)
!1840 = !DILocation(line: 321, column: 9, scope: !720)
!1841 = !DILocation(line: 323, column: 29, scope: !706)
!1842 = !DILocation(line: 323, column: 9, scope: !706)
!1843 = !DILocation(line: 324, column: 11, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !706, file: !1, line: 324, column: 9)
!1845 = !DILocation(line: 324, column: 9, scope: !706)
!1846 = !DILocation(line: 326, column: 15, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 324, column: 32)
!1848 = !DILocation(line: 326, column: 27, scope: !1847)
!1849 = !DILocation(line: 327, column: 27, scope: !1847)
!1850 = !DILocation(line: 328, column: 5, scope: !1847)
!1851 = !DILocation(line: 329, column: 16, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1844, file: !1, line: 329, column: 14)
!1853 = !DILocation(line: 329, column: 14, scope: !1844)
!1854 = !DILocation(line: 333, column: 28, scope: !706)
!1855 = !DILocation(line: 333, column: 12, scope: !706)
!1856 = !DILocation(line: 333, column: 5, scope: !706)
!1857 = !DILocation(line: 334, column: 1, scope: !706)
!1858 = !DILocation(line: 353, column: 28, scope: !722)
!1859 = !DILocation(line: 355, column: 16, scope: !722)
!1860 = !DILocation(line: 355, column: 10, scope: !722)
!1861 = !DILocation(line: 357, column: 15, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !722, file: !1, line: 357, column: 9)
!1863 = !DILocation(line: 357, column: 27, scope: !1862)
!1864 = !DILocation(line: 357, column: 32, scope: !1862)
!1865 = !DILocation(line: 357, column: 41, scope: !1862)
!1866 = !DILocation(line: 357, column: 53, scope: !1862)
!1867 = !DILocation(line: 357, column: 9, scope: !722)
!1868 = !DILocation(line: 358, column: 25, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1862, file: !1, line: 357, column: 61)
!1870 = !DILocation(line: 358, column: 9, scope: !1869)
!1871 = !DILocation(line: 360, column: 9, scope: !1869)
!1872 = !DILocation(line: 362, column: 9, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !722, file: !1, line: 362, column: 9)
!1874 = !DILocation(line: 362, column: 29, scope: !1873)
!1875 = !DILocation(line: 362, column: 9, scope: !722)
!1876 = !DILocation(line: 363, column: 27, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1873, file: !1, line: 362, column: 35)
!1878 = !DILocation(line: 364, column: 37, scope: !1877)
!1879 = !DILocation(line: 364, column: 9, scope: !1877)
!1880 = !DILocation(line: 365, column: 5, scope: !1877)
!1881 = !DILocation(line: 366, column: 5, scope: !722)
!1882 = !DILocation(line: 367, column: 1, scope: !722)
!1883 = !DILocation(line: 438, column: 29, scope: !726)
!1884 = !DILocation(line: 440, column: 16, scope: !726)
!1885 = !DILocation(line: 440, column: 10, scope: !726)
!1886 = !DILocation(line: 442, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !726, file: !1, line: 442, column: 9)
!1888 = !DILocation(line: 442, column: 27, scope: !1887)
!1889 = !DILocation(line: 442, column: 31, scope: !1887)
!1890 = !DILocation(line: 442, column: 40, scope: !1887)
!1891 = !DILocation(line: 442, column: 52, scope: !1887)
!1892 = !DILocation(line: 442, column: 9, scope: !726)
!1893 = !DILocation(line: 443, column: 9, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1887, file: !1, line: 442, column: 60)
!1895 = !DILocation(line: 445, column: 5, scope: !726)
!1896 = !DILocation(line: 446, column: 1, scope: !726)
!1897 = !DILocation(line: 382, column: 36, scope: !730)
!1898 = !DILocation(line: 382, column: 52, scope: !730)
!1899 = !DILocation(line: 384, column: 5, scope: !730)
!1900 = !DILocation(line: 385, column: 5, scope: !730)
!1901 = !DILocation(line: 386, column: 9, scope: !730)
!1902 = !DILocation(line: 384, column: 10, scope: !730)
!1903 = !DILocation(line: 385, column: 19, scope: !730)
!1904 = !DILocation(line: 388, column: 10, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !730, file: !1, line: 388, column: 9)
!1906 = !DILocation(line: 388, column: 9, scope: !730)
!1907 = !DILocation(line: 391, column: 38, scope: !742)
!1908 = !DILocation(line: 391, column: 10, scope: !742)
!1909 = !DILocation(line: 391, column: 9, scope: !730)
!1910 = !DILocation(line: 392, column: 9, scope: !740)
!1911 = !DILocation(line: 393, column: 41, scope: !740)
!1912 = !DILocation(line: 393, column: 13, scope: !740)
!1913 = !DILocation(line: 394, column: 9, scope: !740)
!1914 = !DILocation(line: 395, column: 5, scope: !741)
!1915 = !DILocation(line: 396, column: 9, scope: !730)
!1916 = !DILocation(line: 397, column: 25, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1918, file: !1, line: 396, column: 13)
!1918 = distinct !DILexicalBlock(scope: !730, file: !1, line: 396, column: 9)
!1919 = !DILocation(line: 397, column: 9, scope: !1917)
!1920 = !DILocation(line: 398, column: 9, scope: !1917)
!1921 = !DILocation(line: 401, column: 25, scope: !730)
!1922 = !DILocation(line: 401, column: 11, scope: !730)
!1923 = !DILocation(line: 401, column: 23, scope: !730)
!1924 = !DILocation(line: 402, column: 25, scope: !730)
!1925 = !DILocation(line: 402, column: 11, scope: !730)
!1926 = !DILocation(line: 402, column: 23, scope: !730)
!1927 = !DILocation(line: 403, column: 5, scope: !730)
!1928 = !DILocation(line: 404, column: 1, scope: !730)
!1929 = !DILocation(line: 412, column: 33, scope: !743)
!1930 = !DILocation(line: 417, column: 15, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !743, file: !1, line: 417, column: 9)
!1932 = !DILocation(line: 417, column: 27, scope: !1931)
!1933 = !DILocation(line: 417, column: 9, scope: !743)
!1934 = !DILocation(line: 418, column: 25, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !1, line: 417, column: 33)
!1936 = !DILocation(line: 418, column: 9, scope: !1935)
!1937 = !DILocation(line: 420, column: 9, scope: !1935)
!1938 = !DILocation(line: 423, column: 19, scope: !743)
!1939 = !DILocation(line: 414, column: 10, scope: !743)
!1940 = !DILocation(line: 415, column: 19, scope: !743)
!1941 = !DILocation(line: 427, column: 33, scope: !743)
!1942 = !DILocation(line: 426, column: 23, scope: !743)
!1943 = !DILocation(line: 427, column: 5, scope: !743)
!1944 = !DILocation(line: 428, column: 12, scope: !743)
!1945 = !DILocation(line: 428, column: 5, scope: !743)
!1946 = !DILocation(line: 429, column: 1, scope: !743)
!1947 = !DILocation(line: 1033, column: 44, scope: !760)
!1948 = !DILocation(line: 1033, column: 60, scope: !760)
!1949 = !DILocation(line: 1035, column: 5, scope: !760)
!1950 = !DILocation(line: 1035, column: 29, scope: !760)
!1951 = !DILocation(line: 1035, column: 15, scope: !760)
!1952 = !DILocation(line: 1035, column: 22, scope: !760)
!1953 = !DILocation(line: 1039, column: 10, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1039, column: 9)
!1955 = !DILocation(line: 1039, column: 9, scope: !760)
!1956 = !DILocation(line: 1042, column: 27, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1042, column: 9)
!1958 = !DILocation(line: 1042, column: 10, scope: !1957)
!1959 = !DILocation(line: 1042, column: 9, scope: !760)
!1960 = !DILocation(line: 1043, column: 25, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1957, file: !1, line: 1042, column: 34)
!1962 = !DILocation(line: 1043, column: 9, scope: !1961)
!1963 = !DILocation(line: 1045, column: 9, scope: !1961)
!1964 = !DILocation(line: 1047, column: 10, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1047, column: 9)
!1966 = !{!1063, !1059, i64 168}
!1967 = !DILocation(line: 1047, column: 9, scope: !760)
!1968 = !DILocation(line: 1048, column: 25, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !1, line: 1047, column: 31)
!1970 = !DILocation(line: 1048, column: 9, scope: !1969)
!1971 = !DILocation(line: 1050, column: 9, scope: !1969)
!1972 = !DILocation(line: 1052, column: 9, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1052, column: 9)
!1974 = !DILocation(line: 1052, column: 14, scope: !1973)
!1975 = !DILocation(line: 1052, column: 22, scope: !1973)
!1976 = !DILocation(line: 1052, column: 26, scope: !1977)
!1977 = !DILexicalBlockFile(scope: !1973, file: !1, discriminator: 1)
!1978 = !DILocation(line: 1052, column: 9, scope: !760)
!1979 = !DILocation(line: 1053, column: 25, scope: !1980)
!1980 = distinct !DILexicalBlock(scope: !1973, file: !1, line: 1052, column: 46)
!1981 = !DILocation(line: 1053, column: 9, scope: !1980)
!1982 = !DILocation(line: 1055, column: 9, scope: !1980)
!1983 = !DILocation(line: 1057, column: 12, scope: !760)
!1984 = !DILocation(line: 1058, column: 14, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1058, column: 9)
!1986 = !DILocation(line: 1058, column: 9, scope: !760)
!1987 = !DILocation(line: 1059, column: 16, scope: !1985)
!1988 = !DILocation(line: 1059, column: 9, scope: !1985)
!1989 = !DILocation(line: 1060, column: 20, scope: !770)
!1990 = !{}
!1991 = !DILocation(line: 1060, column: 20, scope: !1992)
!1992 = !DILexicalBlockFile(scope: !1993, file: !1, discriminator: 6)
!1993 = !DILexicalBlockFile(scope: !770, file: !1, discriminator: 5)
!1994 = !DILocation(line: 1060, column: 41, scope: !760)
!1995 = !DILocation(line: 1060, column: 18, scope: !760)
!1996 = !{!1997, !1052, i64 0}
!1997 = !{!"bootstate", !1052, i64 0, !1052, i64 8, !1052, i64 16, !1052, i64 24, !1052, i64 32}
!1998 = !DILocation(line: 1061, column: 18, scope: !760)
!1999 = !DILocation(line: 1061, column: 11, scope: !760)
!2000 = !DILocation(line: 1061, column: 16, scope: !760)
!2001 = !{!1997, !1052, i64 8}
!2002 = !DILocation(line: 1062, column: 18, scope: !760)
!2003 = !DILocation(line: 1062, column: 11, scope: !760)
!2004 = !DILocation(line: 1062, column: 16, scope: !760)
!2005 = !{!1997, !1052, i64 16}
!2006 = !DILocation(line: 1063, column: 18, scope: !760)
!2007 = !DILocation(line: 1063, column: 11, scope: !760)
!2008 = !DILocation(line: 1063, column: 16, scope: !760)
!2009 = !{!1997, !1052, i64 24}
!2010 = !DILocation(line: 1064, column: 50, scope: !760)
!2011 = !DILocation(line: 1064, column: 20, scope: !760)
!2012 = !DILocation(line: 1064, column: 11, scope: !760)
!2013 = !DILocation(line: 1064, column: 18, scope: !760)
!2014 = !{!1997, !1052, i64 32}
!2015 = !DILocation(line: 1065, column: 22, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !760, file: !1, line: 1065, column: 9)
!2017 = !DILocation(line: 1065, column: 9, scope: !760)
!2018 = !DILocation(line: 1066, column: 9, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !2016, file: !1, line: 1065, column: 31)
!2020 = !DILocation(line: 1067, column: 16, scope: !2019)
!2021 = !DILocation(line: 1067, column: 9, scope: !2019)
!2022 = !DILocation(line: 1069, column: 5, scope: !760)
!2023 = !DILocation(line: 1070, column: 5, scope: !760)
!2024 = !DILocation(line: 1071, column: 5, scope: !2025)
!2025 = !DILexicalBlockFile(scope: !783, file: !1, discriminator: 1)
!2026 = !DILocation(line: 1071, column: 5, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !783, file: !1, line: 1071, column: 5)
!2028 = !DILocation(line: 1071, column: 5, scope: !783)
!2029 = !DILocation(line: 1071, column: 5, scope: !2030)
!2030 = !DILexicalBlockFile(scope: !2027, file: !1, discriminator: 2)
!2031 = !DILocation(line: 1072, column: 5, scope: !760)
!2032 = !DILocation(line: 1073, column: 13, scope: !760)
!2033 = !DILocation(line: 1037, column: 10, scope: !760)
!2034 = !DILocation(line: 1074, column: 15, scope: !787)
!2035 = !DILocation(line: 1074, column: 9, scope: !760)
!2036 = !DILocation(line: 1075, column: 25, scope: !786)
!2037 = !DILocation(line: 1075, column: 9, scope: !786)
!2038 = !DILocation(line: 1076, column: 9, scope: !2039)
!2039 = !DILexicalBlockFile(scope: !785, file: !1, discriminator: 1)
!2040 = !DILocation(line: 1076, column: 9, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !785, file: !1, line: 1076, column: 9)
!2042 = !DILocation(line: 1076, column: 9, scope: !785)
!2043 = !DILocation(line: 1076, column: 9, scope: !2044)
!2044 = !DILexicalBlockFile(scope: !2041, file: !1, discriminator: 3)
!2045 = !DILocation(line: 1077, column: 9, scope: !2046)
!2046 = !DILexicalBlockFile(scope: !789, file: !1, discriminator: 1)
!2047 = !DILocation(line: 1077, column: 9, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !789, file: !1, line: 1077, column: 9)
!2049 = !DILocation(line: 1077, column: 9, scope: !789)
!2050 = !DILocation(line: 1077, column: 9, scope: !2051)
!2051 = !DILexicalBlockFile(scope: !2048, file: !1, discriminator: 3)
!2052 = !DILocation(line: 1078, column: 9, scope: !2053)
!2053 = !DILexicalBlockFile(scope: !791, file: !1, discriminator: 1)
!2054 = !DILocation(line: 1078, column: 9, scope: !794)
!2055 = !DILocation(line: 1078, column: 9, scope: !791)
!2056 = !DILocation(line: 1078, column: 9, scope: !2057)
!2057 = !DILexicalBlockFile(scope: !793, file: !1, discriminator: 4)
!2058 = !DILocation(line: 1078, column: 9, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !793, file: !1, line: 1078, column: 9)
!2060 = !DILocation(line: 1078, column: 9, scope: !793)
!2061 = !DILocation(line: 1078, column: 9, scope: !2062)
!2062 = !DILexicalBlockFile(scope: !2059, file: !1, discriminator: 6)
!2063 = !DILocation(line: 1079, column: 35, scope: !786)
!2064 = !DILocation(line: 1079, column: 9, scope: !786)
!2065 = !DILocation(line: 1080, column: 9, scope: !786)
!2066 = !DILocation(line: 1081, column: 9, scope: !786)
!2067 = !DILocation(line: 1083, column: 12, scope: !760)
!2068 = !DILocation(line: 1083, column: 5, scope: !760)
!2069 = !DILocation(line: 1084, column: 1, scope: !760)
!2070 = !DILocation(line: 1129, column: 41, scope: !837)
!2071 = !DILocation(line: 548, column: 12, scope: !840, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 1131, column: 25, scope: !837)
!2073 = !DILocation(line: 549, column: 14, scope: !2074, inlinedAt: !2072)
!2074 = distinct !DILexicalBlock(scope: !840, file: !1, line: 549, column: 9)
!2075 = !DILocation(line: 549, column: 9, scope: !840, inlinedAt: !2072)
!2076 = !DILocation(line: 551, column: 23, scope: !840, inlinedAt: !2072)
!2077 = !DILocation(line: 551, column: 11, scope: !840, inlinedAt: !2072)
!2078 = !DILocation(line: 551, column: 21, scope: !840, inlinedAt: !2072)
!2079 = !DILocation(line: 552, column: 11, scope: !840, inlinedAt: !2072)
!2080 = !DILocation(line: 552, column: 18, scope: !840, inlinedAt: !2072)
!2081 = !DILocation(line: 553, column: 11, scope: !840, inlinedAt: !2072)
!2082 = !DILocation(line: 553, column: 26, scope: !840, inlinedAt: !2072)
!2083 = !DILocation(line: 554, column: 25, scope: !848, inlinedAt: !2072)
!2084 = !DILocation(line: 554, column: 9, scope: !840, inlinedAt: !2072)
!2085 = !DILocation(line: 555, column: 9, scope: !2086, inlinedAt: !2072)
!2086 = !DILexicalBlockFile(scope: !846, file: !1, discriminator: 1)
!2087 = !DILocation(line: 555, column: 9, scope: !2088, inlinedAt: !2072)
!2088 = distinct !DILexicalBlock(scope: !846, file: !1, line: 555, column: 9)
!2089 = !DILocation(line: 555, column: 9, scope: !846, inlinedAt: !2072)
!2090 = !DILocation(line: 555, column: 9, scope: !2091, inlinedAt: !2072)
!2091 = !DILexicalBlockFile(scope: !2088, file: !1, discriminator: 3)
!2092 = !DILocation(line: 1131, column: 25, scope: !837)
!2093 = !DILocation(line: 556, column: 25, scope: !847, inlinedAt: !2072)
!2094 = !DILocation(line: 556, column: 9, scope: !847, inlinedAt: !2072)
!2095 = !DILocation(line: 557, column: 9, scope: !847, inlinedAt: !2072)
!2096 = !DILocation(line: 1131, column: 12, scope: !837)
!2097 = !DILocation(line: 1131, column: 5, scope: !837)
!2098 = !DILocation(line: 1098, column: 39, scope: !849)
!2099 = !DILocation(line: 1100, column: 19, scope: !849)
!2100 = !DILocation(line: 1100, column: 5, scope: !849)
!2101 = !DILocation(line: 1101, column: 5, scope: !849)
!2102 = !DILocation(line: 1112, column: 43, scope: !852)
!2103 = !DILocation(line: 1114, column: 5, scope: !852)
!2104 = !DILocation(line: 1115, column: 5, scope: !852)
!2105 = !DILocation(line: 1116, column: 5, scope: !852)
!2106 = !DILocation(line: 1141, column: 28, scope: !855)
!2107 = !DILocation(line: 1144, column: 13, scope: !855)
!2108 = !DILocation(line: 1143, column: 10, scope: !855)
!2109 = !DILocation(line: 1145, column: 15, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !855, file: !1, line: 1145, column: 9)
!2111 = !DILocation(line: 1145, column: 9, scope: !855)
!2112 = !DILocation(line: 1146, column: 25, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !1, line: 1145, column: 22)
!2114 = !DILocation(line: 1146, column: 9, scope: !2113)
!2115 = !DILocation(line: 1147, column: 9, scope: !2113)
!2116 = !DILocation(line: 1149, column: 12, scope: !855)
!2117 = !DILocation(line: 1149, column: 5, scope: !855)
!2118 = !DILocation(line: 1150, column: 1, scope: !855)
!2119 = !DILocation(line: 1164, column: 25, scope: !859)
!2120 = !DILocation(line: 1166, column: 28, scope: !859)
!2121 = !DILocation(line: 1166, column: 12, scope: !859)
!2122 = !DILocation(line: 1166, column: 5, scope: !859)
!2123 = !DILocation(line: 1242, column: 29, scope: !862)
!2124 = !DILocation(line: 1242, column: 45, scope: !862)
!2125 = !DILocation(line: 1245, column: 5, scope: !862)
!2126 = !DILocation(line: 1245, column: 16, scope: !862)
!2127 = !DILocation(line: 1248, column: 10, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1248, column: 9)
!2129 = !DILocation(line: 1248, column: 9, scope: !862)
!2130 = !DILocation(line: 1251, column: 9, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1251, column: 9)
!2132 = !DILocation(line: 1251, column: 18, scope: !2131)
!2133 = !DILocation(line: 1251, column: 9, scope: !862)
!2134 = !DILocation(line: 1252, column: 25, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 1251, column: 23)
!2136 = !DILocation(line: 1252, column: 9, scope: !2135)
!2137 = !DILocation(line: 1254, column: 9, scope: !2135)
!2138 = !DILocation(line: 1257, column: 16, scope: !862)
!2139 = !DILocation(line: 1244, column: 12, scope: !862)
!2140 = !DILocation(line: 1259, column: 42, scope: !862)
!2141 = !DILocation(line: 1259, column: 10, scope: !862)
!2142 = !DILocation(line: 1246, column: 9, scope: !862)
!2143 = !DILocation(line: 1260, column: 9, scope: !862)
!2144 = !DILocation(line: 1261, column: 22, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2146, file: !1, line: 1260, column: 19)
!2146 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1260, column: 9)
!2147 = !DILocation(line: 1263, column: 22, scope: !2145)
!2148 = !DILocation(line: 1261, column: 9, scope: !2145)
!2149 = !DILocation(line: 1264, column: 9, scope: !2145)
!2150 = !DILocation(line: 1267, column: 25, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2152, file: !1, line: 1266, column: 19)
!2152 = distinct !DILexicalBlock(scope: !862, file: !1, line: 1266, column: 9)
!2153 = !DILocation(line: 1267, column: 9, scope: !2151)
!2154 = !DILocation(line: 1269, column: 9, scope: !2151)
!2155 = !DILocation(line: 1272, column: 12, scope: !862)
!2156 = !DILocation(line: 1272, column: 5, scope: !862)
!2157 = !DILocation(line: 1273, column: 1, scope: !862)
!2158 = !DILocation(line: 1203, column: 32, scope: !869)
!2159 = !DILocation(line: 1206, column: 29, scope: !869)
!2160 = !DILocation(line: 1206, column: 20, scope: !869)
!2161 = !DILocation(line: 1209, column: 17, scope: !878)
!2162 = !{!1280, !1052, i64 184}
!2163 = !DILocation(line: 1209, column: 32, scope: !878)
!2164 = !DILocation(line: 1209, column: 9, scope: !869)
!2165 = !DILocation(line: 1205, column: 15, scope: !869)
!2166 = !DILocation(line: 1214, column: 17, scope: !877)
!2167 = !DILocation(line: 1216, column: 9, scope: !2168)
!2168 = !DILexicalBlockFile(scope: !876, file: !1, discriminator: 1)
!2169 = !DILocation(line: 1216, column: 9, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !876, file: !1, line: 1216, column: 9)
!2171 = !DILocation(line: 1215, column: 32, scope: !877)
!2172 = !DILocation(line: 1216, column: 9, scope: !876)
!2173 = !DILocation(line: 1213, column: 14, scope: !877)
!2174 = !DILocation(line: 1216, column: 9, scope: !2175)
!2175 = !DILexicalBlockFile(scope: !2170, file: !1, discriminator: 3)
!2176 = !DILocation(line: 548, column: 12, scope: !840, inlinedAt: !2177)
!2177 = distinct !DILocation(line: 1218, column: 12, scope: !869)
!2178 = !DILocation(line: 549, column: 14, scope: !2074, inlinedAt: !2177)
!2179 = !DILocation(line: 549, column: 9, scope: !840, inlinedAt: !2177)
!2180 = !DILocation(line: 551, column: 23, scope: !840, inlinedAt: !2177)
!2181 = !DILocation(line: 551, column: 11, scope: !840, inlinedAt: !2177)
!2182 = !DILocation(line: 551, column: 21, scope: !840, inlinedAt: !2177)
!2183 = !DILocation(line: 552, column: 11, scope: !840, inlinedAt: !2177)
!2184 = !DILocation(line: 552, column: 18, scope: !840, inlinedAt: !2177)
!2185 = !DILocation(line: 553, column: 11, scope: !840, inlinedAt: !2177)
!2186 = !DILocation(line: 553, column: 26, scope: !840, inlinedAt: !2177)
!2187 = !DILocation(line: 554, column: 25, scope: !848, inlinedAt: !2177)
!2188 = !DILocation(line: 554, column: 9, scope: !840, inlinedAt: !2177)
!2189 = !DILocation(line: 555, column: 9, scope: !2086, inlinedAt: !2177)
!2190 = !DILocation(line: 555, column: 9, scope: !2088, inlinedAt: !2177)
!2191 = !DILocation(line: 555, column: 9, scope: !846, inlinedAt: !2177)
!2192 = !DILocation(line: 555, column: 9, scope: !2091, inlinedAt: !2177)
!2193 = !DILocation(line: 1218, column: 12, scope: !869)
!2194 = !DILocation(line: 556, column: 25, scope: !847, inlinedAt: !2177)
!2195 = !DILocation(line: 556, column: 9, scope: !847, inlinedAt: !2177)
!2196 = !DILocation(line: 557, column: 9, scope: !847, inlinedAt: !2177)
!2197 = !DILocation(line: 1223, column: 10, scope: !869)
!2198 = !DILocation(line: 1224, column: 12, scope: !882)
!2199 = !DILocation(line: 1224, column: 9, scope: !869)
!2200 = !DILocation(line: 1225, column: 9, scope: !2201)
!2201 = !DILexicalBlockFile(scope: !880, file: !1, discriminator: 1)
!2202 = !DILocation(line: 1225, column: 9, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !880, file: !1, line: 1225, column: 9)
!2204 = !DILocation(line: 1225, column: 9, scope: !880)
!2205 = !DILocation(line: 1225, column: 9, scope: !2206)
!2206 = !DILexicalBlockFile(scope: !2203, file: !1, discriminator: 3)
!2207 = !DILocation(line: 1228, column: 28, scope: !869)
!2208 = !DILocation(line: 1229, column: 13, scope: !869)
!2209 = !DILocation(line: 1229, column: 23, scope: !869)
!2210 = !{!1280, !1052, i64 176}
!2211 = !DILocation(line: 1230, column: 5, scope: !869)
!2212 = !DILocation(line: 1231, column: 1, scope: !869)
!2213 = !DILocation(line: 988, column: 19, scope: !812)
!2214 = !DILocation(line: 994, column: 20, scope: !812)
!2215 = !DILocation(line: 991, column: 20, scope: !812)
!2216 = !DILocation(line: 995, column: 25, scope: !812)
!2217 = !DILocation(line: 995, column: 13, scope: !812)
!2218 = !DILocation(line: 995, column: 23, scope: !812)
!2219 = !{!1280, !1059, i64 152}
!2220 = !DILocation(line: 996, column: 5, scope: !812)
!2221 = !DILocation(line: 997, column: 5, scope: !812)
!2222 = !DILocation(line: 998, column: 15, scope: !812)
!2223 = !DILocation(line: 1000, column: 15, scope: !812)
!2224 = !DILocation(line: 1000, column: 27, scope: !812)
!2225 = !DILocation(line: 1000, column: 39, scope: !812)
!2226 = !DILocation(line: 999, column: 11, scope: !812)
!2227 = !DILocation(line: 992, column: 15, scope: !812)
!2228 = !DILocation(line: 1001, column: 13, scope: !822)
!2229 = !DILocation(line: 1001, column: 9, scope: !812)
!2230 = !DILocation(line: 1002, column: 36, scope: !820)
!2231 = !DILocation(line: 1002, column: 13, scope: !820)
!2232 = !DILocation(line: 1002, column: 13, scope: !821)
!2233 = !DILocation(line: 1003, column: 13, scope: !820)
!2234 = !DILocation(line: 1006, column: 13, scope: !819)
!2235 = !DILocation(line: 1007, column: 13, scope: !819)
!2236 = !DILocation(line: 1006, column: 23, scope: !819)
!2237 = !DILocation(line: 1006, column: 29, scope: !819)
!2238 = !DILocation(line: 1006, column: 37, scope: !819)
!2239 = !DILocation(line: 1009, column: 13, scope: !819)
!2240 = !DILocation(line: 1010, column: 20, scope: !819)
!2241 = !DILocation(line: 1005, column: 23, scope: !819)
!2242 = !DILocation(line: 1011, column: 22, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !819, file: !1, line: 1011, column: 17)
!2244 = !DILocation(line: 1011, column: 38, scope: !2243)
!2245 = !DILocation(line: 1011, column: 30, scope: !2243)
!2246 = !DILocation(line: 1012, column: 42, scope: !2243)
!2247 = !DILocation(line: 1012, column: 17, scope: !2243)
!2248 = !DILocation(line: 1014, column: 44, scope: !2243)
!2249 = !DILocation(line: 1014, column: 17, scope: !2243)
!2250 = !DILocation(line: 1015, column: 13, scope: !819)
!2251 = !DILocation(line: 1016, column: 27, scope: !819)
!2252 = !DILocation(line: 1016, column: 32, scope: !819)
!2253 = !DILocation(line: 1016, column: 39, scope: !819)
!2254 = !DILocation(line: 1016, column: 13, scope: !819)
!2255 = !DILocation(line: 1017, column: 13, scope: !819)
!2256 = !DILocation(line: 1018, column: 9, scope: !820)
!2257 = !DILocation(line: 1021, column: 9, scope: !2258)
!2258 = !DILexicalBlockFile(scope: !827, file: !1, discriminator: 1)
!2259 = !DILocation(line: 1021, column: 9, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !827, file: !1, line: 1021, column: 9)
!2261 = !DILocation(line: 1021, column: 9, scope: !827)
!2262 = !DILocation(line: 1021, column: 9, scope: !2263)
!2263 = !DILexicalBlockFile(scope: !2260, file: !1, discriminator: 3)
!2264 = !DILocation(line: 1022, column: 5, scope: !2265)
!2265 = !DILexicalBlockFile(scope: !829, file: !1, discriminator: 1)
!2266 = !DILocation(line: 1022, column: 5, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !829, file: !1, line: 1022, column: 5)
!2268 = !DILocation(line: 1022, column: 5, scope: !829)
!2269 = !DILocation(line: 1022, column: 5, scope: !2270)
!2270 = !DILexicalBlockFile(scope: !2267, file: !1, discriminator: 3)
!2271 = !DILocation(line: 1023, column: 5, scope: !2272)
!2272 = !DILexicalBlockFile(scope: !831, file: !1, discriminator: 1)
!2273 = !DILocation(line: 1023, column: 5, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !831, file: !1, line: 1023, column: 5)
!2275 = !DILocation(line: 1023, column: 5, scope: !831)
!2276 = !DILocation(line: 1023, column: 5, scope: !2277)
!2277 = !DILexicalBlockFile(scope: !2274, file: !1, discriminator: 3)
!2278 = !DILocation(line: 1024, column: 5, scope: !2279)
!2279 = !DILexicalBlockFile(scope: !833, file: !1, discriminator: 1)
!2280 = !DILocation(line: 1024, column: 5, scope: !836)
!2281 = !DILocation(line: 1024, column: 5, scope: !833)
!2282 = !DILocation(line: 1024, column: 5, scope: !2283)
!2283 = !DILexicalBlockFile(scope: !835, file: !1, discriminator: 4)
!2284 = !DILocation(line: 1024, column: 5, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !835, file: !1, line: 1024, column: 5)
!2286 = !DILocation(line: 1024, column: 5, scope: !835)
!2287 = !DILocation(line: 1024, column: 5, scope: !2288)
!2288 = !DILexicalBlockFile(scope: !2285, file: !1, discriminator: 6)
!2289 = !DILocation(line: 1025, column: 5, scope: !812)
!2290 = !DILocation(line: 1026, column: 15, scope: !812)
!2291 = !DILocation(line: 1027, column: 5, scope: !812)
!2292 = !DILocation(line: 1028, column: 5, scope: !812)
!2293 = !DILocation(line: 1029, column: 5, scope: !812)
!2294 = !DILocation(line: 1030, column: 1, scope: !812)
!2295 = !DILocation(line: 1182, column: 24, scope: !883)
!2296 = !DILocation(line: 1187, column: 21, scope: !883)
!2297 = !DILocation(line: 1189, column: 13, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !883, file: !1, line: 1189, column: 9)
!2299 = !DILocation(line: 1189, column: 9, scope: !883)
!2300 = !DILocation(line: 1192, column: 19, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !1, line: 1192, column: 13)
!2302 = distinct !DILexicalBlock(scope: !2298, file: !1, line: 1189, column: 25)
!2303 = !DILocation(line: 1192, column: 13, scope: !2301)
!2304 = !DILocation(line: 1192, column: 13, scope: !2302)
!2305 = !DILocation(line: 1193, column: 41, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2301, file: !1, line: 1192, column: 27)
!2307 = !DILocation(line: 1193, column: 13, scope: !2306)
!2308 = !DILocation(line: 1194, column: 26, scope: !2306)
!2309 = !DILocation(line: 1195, column: 9, scope: !2306)
!2310 = !DILocation(line: 1199, column: 5, scope: !2311)
!2311 = !DILexicalBlockFile(scope: !889, file: !1, discriminator: 1)
!2312 = !DILocation(line: 1199, column: 5, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !889, file: !1, line: 1199, column: 5)
!2314 = !DILocation(line: 1199, column: 5, scope: !889)
!2315 = !DILocation(line: 1199, column: 5, scope: !2316)
!2316 = !DILexicalBlockFile(scope: !2313, file: !1, discriminator: 3)
!2317 = !DILocation(line: 1200, column: 1, scope: !883)
