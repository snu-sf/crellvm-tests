; ModuleID = './semaphore.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
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
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._longobject = type { %struct.PyVarObject, [1 x i32] }
%struct.SemLockObject = type { %struct._object, %union.sem_t*, i64, i32, i32, i32, i8* }
%union.sem_t = type { i64, [24 x i8] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct._frame = type opaque
%struct.timezone = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"_multiprocessing.SemLock\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Semaphore/Mutex type\00", align 1
@semlock_methods = internal global [11 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*, %struct._object*, %struct._object*)* @semlock_acquire to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*, %struct._object*)* @semlock_release to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*, %struct._object*, %struct._object*)* @semlock_acquire to %struct._object* (%struct._object*, %struct._object*)*), i32 3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*, %struct._object*)* @semlock_release to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*)* @semlock_count to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*)* @semlock_ismine to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.14, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*)* @semlock_getvalue to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.16, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*)* @semlock_iszero to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._typeobject*, %struct._object*)* @semlock_rebuild to %struct._object* (%struct._object*, %struct._object*)*), i32 17, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.21, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.SemLockObject*)* @semlock_afterfork to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@semlock_members = internal global [5 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i32 12, i64 16, i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i32 1, i64 40, i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i32 1, i64 36, i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyMemberDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i32 5, i64 48, i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i32 0, i32 0) }, %struct.PyMemberDef zeroinitializer], align 16
@_PyMp_SemLockType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct.SemLockObject*)* @semlock_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i32 0, i32 0), i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([11 x %struct.PyMethodDef], [11 x %struct.PyMethodDef]* @semlock_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([5 x %struct.PyMemberDef], [5 x %struct.PyMemberDef]* @semlock_members, i32 0, i32 0), %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @semlock_new, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"acquire\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"acquire the semaphore/lock\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"release the semaphore/lock\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"__enter__\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"enter the semaphore/lock\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"__exit__\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"exit the semaphore/lock\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"_count\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"num of `acquire()`s minus num of `release()`s for this process\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"_is_mine\00", align 1
@.str.14 = private unnamed_addr constant [41 x i8] c"whether the lock is owned by this thread\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"_get_value\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"get the value of the semaphore\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"_is_zero\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"returns whether semaphore has value zero\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"_rebuild\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [12 x i8] c"_after_fork\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"rezero the net acquisition count after fork()\00", align 1
@semlock_acquire.kwlist = internal global [3 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0), i8* null], align 16
@.str.23 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"|iO\00", align 1
@_Py_TrueStruct = external global %struct._longobject, align 8
@PyExc_OSError = external global %struct._object*, align 8
@_Py_FalseStruct = external global %struct._longobject, align 8
@PyExc_AssertionError = external global %struct._object*, align 8
@.str.26 = private unnamed_addr constant [54 x i8] c"attempt to release recursive lock not owned by thread\00", align 1
@PyExc_ValueError = external global %struct._object*, align 8
@.str.27 = private unnamed_addr constant [42 x i8] c"semaphore or lock released too many times\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"kiiz\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"handle\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"kind\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"maxvalue\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@semlock_new.kwlist = internal global [6 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* null], align 16
@.str.33 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"iiisi\00", align 1
@.str.36 = private unnamed_addr constant [18 x i8] c"unrecognized kind\00", align 1

; Function Attrs: nounwind uwtable
define internal void @semlock_dealloc(%struct.SemLockObject* %self) #0 {
entry:
  %self.addr = alloca %struct.SemLockObject*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 1
  %1 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %cmp = icmp ne %union.sem_t* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle1 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %2, i32 0, i32 1
  %3 = load %union.sem_t*, %union.sem_t** %handle1, align 8
  %call = call i32 @sem_close(%union.sem_t* %3) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %name = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %4, i32 0, i32 6
  %5 = load i8*, i8** %name, align 8
  call void @PyMem_Free(i8* %5)
  %6 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %7 = bitcast %struct.SemLockObject* %6 to i8*
  call void @PyObject_Free(i8* %7)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_new(%struct._typeobject* %type, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %handle = alloca %union.sem_t*, align 8
  %kind = alloca i32, align 4
  %maxvalue = alloca i32, align 4
  %value = alloca i32, align 4
  %unlink = alloca i32, align 4
  %result = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %name_copy = alloca i8*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store %union.sem_t* null, %union.sem_t** %handle, align 8
  store i8* null, i8** %name_copy, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %1 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %0, %struct._object* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @semlock_new.kwlist, i32 0, i32 0), i32* %kind, i32* %value, i32* %maxvalue, i8** %name, i32* %unlink)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %kind, align 4
  %cmp = icmp ne i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.3

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* %kind, align 4
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %land.lhs.true
  %4 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %5 = load i32, i32* %unlink, align 4
  %tobool4 = icmp ne i32 %5, 0
  br i1 %tobool4, label %if.end.12, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  %6 = load i8*, i8** %name, align 8
  %call6 = call i64 @strlen(i8* %6) #6
  %add = add i64 %call6, 1
  %call7 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call7, i8** %name_copy, align 8
  %7 = load i8*, i8** %name_copy, align 8
  %cmp8 = icmp eq i8* %7, null
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %if.then.5
  br label %failure

if.end.10:                                        ; preds = %if.then.5
  %8 = load i8*, i8** %name_copy, align 8
  %9 = load i8*, i8** %name, align 8
  %call11 = call i8* @strcpy(i8* %8, i8* %9) #3
  br label %if.end.12

if.end.12:                                        ; preds = %if.end.10, %if.end.3
  %10 = load i8*, i8** %name, align 8
  %11 = load i32, i32* %value, align 4
  %call13 = call %union.sem_t* (i8*, i32, ...) @sem_open(i8* %10, i32 192, i32 384, i32 %11) #3
  store %union.sem_t* %call13, %union.sem_t** %handle, align 8
  %12 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %cmp14 = icmp eq %union.sem_t* %12, null
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.end.12
  br label %failure

if.end.16:                                        ; preds = %if.end.12
  %13 = load i32, i32* %unlink, align 4
  %tobool17 = icmp ne i32 %13, 0
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.22

land.lhs.true.18:                                 ; preds = %if.end.16
  %14 = load i8*, i8** %name, align 8
  %call19 = call i32 @sem_unlink(i8* %14) #3
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.22

if.then.21:                                       ; preds = %land.lhs.true.18
  br label %failure

if.end.22:                                        ; preds = %land.lhs.true.18, %if.end.16
  %15 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %16 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %17 = load i32, i32* %kind, align 4
  %18 = load i32, i32* %maxvalue, align 4
  %19 = load i8*, i8** %name_copy, align 8
  %call23 = call %struct._object* @newsemlockobject(%struct._typeobject* %15, %union.sem_t* %16, i32 %17, i32 %18, i8* %19)
  store %struct._object* %call23, %struct._object** %result, align 8
  %20 = load %struct._object*, %struct._object** %result, align 8
  %tobool24 = icmp ne %struct._object* %20, null
  br i1 %tobool24, label %if.end.26, label %if.then.25

if.then.25:                                       ; preds = %if.end.22
  br label %failure

if.end.26:                                        ; preds = %if.end.22
  %21 = load %struct._object*, %struct._object** %result, align 8
  store %struct._object* %21, %struct._object** %retval
  br label %return

failure:                                          ; preds = %if.then.25, %if.then.21, %if.then.15, %if.then.9
  %22 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %cmp27 = icmp ne %union.sem_t* %22, null
  br i1 %cmp27, label %if.then.28, label %if.end.30

if.then.28:                                       ; preds = %failure
  %23 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %call29 = call i32 @sem_close(%union.sem_t* %23) #3
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.28, %failure
  %24 = load i8*, i8** %name_copy, align 8
  call void @PyMem_Free(i8* %24)
  %call31 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1)
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.end.26, %if.then.2, %if.then
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyMp_sem_unlink(%struct._object* %ignore, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ignore.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %call1 = call i32 @sem_unlink(i8* %1) #3
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %2 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %2, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.2, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind
declare i32 @sem_unlink(i8*) #2

declare %struct._object* @_PyMp_SetError(%struct._object*, i32) #1

; Function Attrs: nounwind
declare i32 @sem_close(%union.sem_t*) #2

declare void @PyMem_Free(i8*) #1

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_acquire(%struct.SemLockObject* %self, %struct._object* %args, %struct._object* %kwds) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SemLockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwds.addr = alloca %struct._object*, align 8
  %blocking = alloca i32, align 4
  %res = alloca i32, align 4
  %err = alloca i32, align 4
  %timeout = alloca double, align 8
  %timeout_obj = alloca %struct._object*, align 8
  %deadline = alloca %struct.timespec, align 8
  %now = alloca %struct.timeval, align 8
  %sec = alloca i64, align 8
  %nsec = alloca i64, align 8
  %_save = alloca %struct._ts*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8
  store i32 1, i32* %blocking, align 4
  store i32 0, i32* %err, align 4
  store %struct._object* @_Py_NoneStruct, %struct._object** %timeout_obj, align 8
  %0 = bitcast %struct.timespec* %deadline to i8*
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 16, i32 8, i1 false)
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %2 = load %struct._object*, %struct._object** %kwds.addr, align 8
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %1, %struct._object* %2, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @semlock_acquire.kwlist, i32 0, i32 0), i32* %blocking, %struct._object** %timeout_obj)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %kind = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %3, i32 0, i32 5
  %4 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %5 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %5, i32 0, i32 3
  %6 = load i32, i32* %count, align 4
  %cmp1 = icmp sgt i32 %6, 0
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.8

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %call3 = call i64 @PyThread_get_thread_ident()
  %7 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %7, i32 0, i32 2
  %8 = load i64, i64* %last_tid, align 8
  %cmp4 = icmp eq i64 %call3, %8
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true.2
  %9 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count6 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %9, i32 0, i32 3
  %10 = load i32, i32* %count6, align 4
  %inc = add i32 %10, 1
  store i32 %inc, i32* %count6, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc7 = add i64 %11, 1
  store i64 %inc7, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  %12 = load %struct._object*, %struct._object** %timeout_obj, align 8
  %cmp9 = icmp ne %struct._object* %12, @_Py_NoneStruct
  br i1 %cmp9, label %if.then.10, label %if.end.34

if.then.10:                                       ; preds = %if.end.8
  %13 = load %struct._object*, %struct._object** %timeout_obj, align 8
  %call11 = call double @PyFloat_AsDouble(%struct._object* %13)
  store double %call11, double* %timeout, align 8
  %call12 = call %struct._object* @PyErr_Occurred()
  %tobool13 = icmp ne %struct._object* %call12, null
  br i1 %tobool13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.then.10
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %if.then.10
  %14 = load double, double* %timeout, align 8
  %cmp16 = fcmp olt double %14, 0.000000e+00
  br i1 %cmp16, label %if.then.17, label %if.end.18

if.then.17:                                       ; preds = %if.end.15
  store double 0.000000e+00, double* %timeout, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %call19 = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* null) #3
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then.21, label %if.end.23

if.then.21:                                       ; preds = %if.end.18
  %15 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call22 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %15)
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.23:                                        ; preds = %if.end.18
  %16 = load double, double* %timeout, align 8
  %conv = fptosi double %16 to i64
  store i64 %conv, i64* %sec, align 8
  %17 = load double, double* %timeout, align 8
  %18 = load i64, i64* %sec, align 8
  %conv24 = sitofp i64 %18 to double
  %sub = fsub double %17, %conv24
  %mul = fmul double 1.000000e+09, %sub
  %add = fadd double %mul, 5.000000e-01
  %conv25 = fptosi double %add to i64
  store i64 %conv25, i64* %nsec, align 8
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0
  %19 = load i64, i64* %tv_sec, align 8
  %20 = load i64, i64* %sec, align 8
  %add26 = add i64 %19, %20
  %tv_sec27 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 0
  store i64 %add26, i64* %tv_sec27, align 8
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1
  %21 = load i64, i64* %tv_usec, align 8
  %mul28 = mul i64 %21, 1000
  %22 = load i64, i64* %nsec, align 8
  %add29 = add i64 %mul28, %22
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 1
  store i64 %add29, i64* %tv_nsec, align 8
  %tv_nsec30 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 1
  %23 = load i64, i64* %tv_nsec30, align 8
  %div = sdiv i64 %23, 1000000000
  %tv_sec31 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 0
  %24 = load i64, i64* %tv_sec31, align 8
  %add32 = add i64 %24, %div
  store i64 %add32, i64* %tv_sec31, align 8
  %tv_nsec33 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 1
  %25 = load i64, i64* %tv_nsec33, align 8
  %rem = srem i64 %25, 1000000000
  store i64 %rem, i64* %tv_nsec33, align 8
  br label %if.end.34

if.end.34:                                        ; preds = %if.end.23, %if.end.8
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end.34
  %call35 = call %struct._ts* @PyEval_SaveThread()
  store %struct._ts* %call35, %struct._ts** %_save, align 8
  %26 = load i32, i32* %blocking, align 4
  %tobool36 = icmp ne i32 %26, 0
  br i1 %tobool36, label %land.lhs.true.37, label %if.else

land.lhs.true.37:                                 ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %timeout_obj, align 8
  %cmp38 = icmp eq %struct._object* %27, @_Py_NoneStruct
  br i1 %cmp38, label %if.then.40, label %if.else

if.then.40:                                       ; preds = %land.lhs.true.37
  %28 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %28, i32 0, i32 1
  %29 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %call41 = call i32 @sem_wait(%union.sem_t* %29)
  store i32 %call41, i32* %res, align 4
  br label %if.end.50

if.else:                                          ; preds = %land.lhs.true.37, %do.body
  %30 = load i32, i32* %blocking, align 4
  %tobool42 = icmp ne i32 %30, 0
  br i1 %tobool42, label %if.else.46, label %if.then.43

if.then.43:                                       ; preds = %if.else
  %31 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle44 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %31, i32 0, i32 1
  %32 = load %union.sem_t*, %union.sem_t** %handle44, align 8
  %call45 = call i32 @sem_trywait(%union.sem_t* %32) #3
  store i32 %call45, i32* %res, align 4
  br label %if.end.49

if.else.46:                                       ; preds = %if.else
  %33 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle47 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %33, i32 0, i32 1
  %34 = load %union.sem_t*, %union.sem_t** %handle47, align 8
  %call48 = call i32 @sem_timedwait(%union.sem_t* %34, %struct.timespec* %deadline)
  store i32 %call48, i32* %res, align 4
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.40
  %35 = load %struct._ts*, %struct._ts** %_save, align 8
  call void @PyEval_RestoreThread(%struct._ts* %35)
  %call51 = call i32* @__errno_location() #7
  %36 = load i32, i32* %call51, align 4
  store i32 %36, i32* %err, align 4
  %37 = load i32, i32* %res, align 4
  %cmp52 = icmp eq i32 %37, -1003
  br i1 %cmp52, label %if.then.54, label %if.end.55

if.then.54:                                       ; preds = %if.end.50
  br label %do.end

if.end.55:                                        ; preds = %if.end.50
  br label %do.cond

do.cond:                                          ; preds = %if.end.55
  %38 = load i32, i32* %res, align 4
  %cmp56 = icmp slt i32 %38, 0
  br i1 %cmp56, label %land.lhs.true.58, label %land.end

land.lhs.true.58:                                 ; preds = %do.cond
  %call59 = call i32* @__errno_location() #7
  %39 = load i32, i32* %call59, align 4
  %cmp60 = icmp eq i32 %39, 4
  br i1 %cmp60, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %land.lhs.true.58
  %call62 = call i32 @PyErr_CheckSignals()
  %tobool63 = icmp ne i32 %call62, 0
  %lnot = xor i1 %tobool63, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.58, %do.cond
  %40 = phi i1 [ false, %land.lhs.true.58 ], [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %40, label %do.body, label %do.end

do.end:                                           ; preds = %land.end, %if.then.54
  %41 = load i32, i32* %res, align 4
  %cmp64 = icmp slt i32 %41, 0
  br i1 %cmp64, label %if.then.66, label %if.end.83

if.then.66:                                       ; preds = %do.end
  %42 = load i32, i32* %err, align 4
  %call67 = call i32* @__errno_location() #7
  store i32 %42, i32* %call67, align 4
  %call68 = call i32* @__errno_location() #7
  %43 = load i32, i32* %call68, align 4
  %cmp69 = icmp eq i32 %43, 11
  br i1 %cmp69, label %if.then.74, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.66
  %call71 = call i32* @__errno_location() #7
  %44 = load i32, i32* %call71, align 4
  %cmp72 = icmp eq i32 %44, 110
  br i1 %cmp72, label %if.then.74, label %if.else.76

if.then.74:                                       ; preds = %lor.lhs.false, %if.then.66
  %45 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc75 = add i64 %45, 1
  store i64 %inc75, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

if.else.76:                                       ; preds = %lor.lhs.false
  %call77 = call i32* @__errno_location() #7
  %46 = load i32, i32* %call77, align 4
  %cmp78 = icmp eq i32 %46, 4
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %if.else.76
  store %struct._object* null, %struct._object** %retval
  br label %return

if.else.81:                                       ; preds = %if.else.76
  %47 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call82 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %47)
  store %struct._object* %call82, %struct._object** %retval
  br label %return

if.end.83:                                        ; preds = %do.end
  %48 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count84 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %48, i32 0, i32 3
  %49 = load i32, i32* %count84, align 4
  %inc85 = add i32 %49, 1
  store i32 %inc85, i32* %count84, align 4
  %call86 = call i64 @PyThread_get_thread_ident()
  %50 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %last_tid87 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %50, i32 0, i32 2
  store i64 %call86, i64* %last_tid87, align 8
  %51 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  %inc88 = add i64 %51, 1
  store i64 %inc88, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.83, %if.else.81, %if.then.80, %if.then.74, %if.then.21, %if.then.14, %if.then.5, %if.then
  %52 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %52
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_release(%struct.SemLockObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SemLockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sval = alloca i32, align 4
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %kind = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 5
  %1 = load i32, i32* %kind, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %2, i32 0, i32 3
  %3 = load i32, i32* %count, align 4
  %cmp1 = icmp sgt i32 %3, 0
  br i1 %cmp1, label %land.lhs.true, label %if.then.3

land.lhs.true:                                    ; preds = %if.then
  %call = call i64 @PyThread_get_thread_ident()
  %4 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %4, i32 0, i32 2
  %5 = load i64, i64* %last_tid, align 8
  %cmp2 = icmp eq i64 %call, %5
  br i1 %cmp2, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %land.lhs.true, %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_AssertionError, align 8
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %land.lhs.true
  %7 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count4 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %7, i32 0, i32 3
  %8 = load i32, i32* %count4, align 4
  %cmp5 = icmp sgt i32 %8, 1
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count7 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %9, i32 0, i32 3
  %10 = load i32, i32* %count7, align 4
  %dec = add i32 %10, -1
  store i32 %dec, i32* %count7, align 4
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  br label %if.end.18

if.else:                                          ; preds = %entry
  %12 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %12, i32 0, i32 1
  %13 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %call9 = call i32 @sem_getvalue(%union.sem_t* %13, i32* %sval) #3
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then.11, label %if.else.13

if.then.11:                                       ; preds = %if.else
  %14 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %14)
  store %struct._object* %call12, %struct._object** %retval
  br label %return

if.else.13:                                       ; preds = %if.else
  %15 = load i32, i32* %sval, align 4
  %16 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %maxvalue = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %16, i32 0, i32 4
  %17 = load i32, i32* %maxvalue, align 4
  %cmp14 = icmp sge i32 %15, %17
  br i1 %cmp14, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %if.else.13
  %18 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.else.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  br label %if.end.18

if.end.18:                                        ; preds = %if.end.17, %if.end.8
  %19 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle19 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %19, i32 0, i32 1
  %20 = load %union.sem_t*, %union.sem_t** %handle19, align 8
  %call20 = call i32 @sem_post(%union.sem_t* %20) #3
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.end.18
  %21 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call23 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %21)
  store %struct._object* %call23, %struct._object** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.18
  %22 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count25 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %22, i32 0, i32 3
  %23 = load i32, i32* %count25, align 4
  %dec26 = add i32 %23, -1
  store i32 %dec26, i32* %count25, align 4
  %24 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc27 = add i64 %24, 1
  store i64 %inc27, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.24, %if.then.22, %if.then.15, %if.then.11, %if.then.6, %if.then.3
  %25 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %25
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_count(%struct.SemLockObject* %self) #0 {
entry:
  %self.addr = alloca %struct.SemLockObject*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %conv = sext i32 %1 to i64
  %call = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_ismine(%struct.SemLockObject* %self) #0 {
entry:
  %self.addr = alloca %struct.SemLockObject*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %call = call i64 @PyThread_get_thread_ident()
  %2 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %2, i32 0, i32 2
  %3 = load i64, i64* %last_tid, align 8
  %cmp1 = icmp eq i64 %call, %3
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  %conv = sext i32 %land.ext to i64
  %call2 = call %struct._object* @PyBool_FromLong(i64 %conv)
  ret %struct._object* %call2
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_getvalue(%struct.SemLockObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SemLockObject*, align 8
  %sval = alloca i32, align 4
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 1
  %1 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %call = call i32 @sem_getvalue(%union.sem_t* %1, i32* %sval) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %sval, align 4
  %cmp2 = icmp slt i32 %2, 0
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %sval, align 4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.3, %if.end
  %3 = load i32, i32* %sval, align 4
  %conv = sext i32 %3 to i64
  %call5 = call %struct._object* @PyLong_FromLong(i64 %conv)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_iszero(%struct.SemLockObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SemLockObject*, align 8
  %sval = alloca i32, align 4
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 1
  %1 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %call = call i32 @sem_getvalue(%union.sem_t* %1, i32* %sval) #3
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %sval, align 4
  %conv = sext i32 %2 to i64
  %cmp2 = icmp eq i64 %conv, 0
  %conv3 = zext i1 %cmp2 to i32
  %conv4 = sext i32 %conv3 to i64
  %call5 = call %struct._object* @PyBool_FromLong(i64 %conv4)
  store %struct._object* %call5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %3
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_rebuild(%struct._typeobject* %type, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %handle = alloca %union.sem_t*, align 8
  %kind = alloca i32, align 4
  %maxvalue = alloca i32, align 4
  %name = alloca i8*, align 8
  %name_copy = alloca i8*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store i8* null, i8** %name_copy, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %union.sem_t** %handle, i32* %kind, i32* %maxvalue, i8** %name)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load i8*, i8** %name, align 8
  %cmp = icmp ne i8* %1, null
  br i1 %cmp, label %if.then.1, label %if.end.9

if.then.1:                                        ; preds = %if.end
  %2 = load i8*, i8** %name, align 8
  %call2 = call i64 @strlen(i8* %2) #6
  %add = add i64 %call2, 1
  %call3 = call i8* @PyMem_Malloc(i64 %add)
  store i8* %call3, i8** %name_copy, align 8
  %3 = load i8*, i8** %name_copy, align 8
  %cmp4 = icmp eq i8* %3, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.then.1
  %call6 = call %struct._object* @PyErr_NoMemory()
  store %struct._object* %call6, %struct._object** %retval
  br label %return

if.end.7:                                         ; preds = %if.then.1
  %4 = load i8*, i8** %name_copy, align 8
  %5 = load i8*, i8** %name, align 8
  %call8 = call i8* @strcpy(i8* %4, i8* %5) #3
  br label %if.end.9

if.end.9:                                         ; preds = %if.end.7, %if.end
  %6 = load i8*, i8** %name, align 8
  %cmp10 = icmp ne i8* %6, null
  br i1 %cmp10, label %if.then.11, label %if.end.17

if.then.11:                                       ; preds = %if.end.9
  %7 = load i8*, i8** %name, align 8
  %call12 = call %union.sem_t* (i8*, i32, ...) @sem_open(i8* %7, i32 0) #3
  store %union.sem_t* %call12, %union.sem_t** %handle, align 8
  %8 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %cmp13 = icmp eq %union.sem_t* %8, null
  br i1 %cmp13, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.then.11
  %9 = load i8*, i8** %name_copy, align 8
  call void @PyMem_Free(i8* %9)
  %10 = load %struct._object*, %struct._object** @PyExc_OSError, align 8
  %call15 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %10)
  store %struct._object* %call15, %struct._object** %retval
  br label %return

if.end.16:                                        ; preds = %if.then.11
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  %11 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %12 = load %union.sem_t*, %union.sem_t** %handle, align 8
  %13 = load i32, i32* %kind, align 4
  %14 = load i32, i32* %maxvalue, align 4
  %15 = load i8*, i8** %name_copy, align 8
  %call18 = call %struct._object* @newsemlockobject(%struct._typeobject* %11, %union.sem_t* %12, i32 %13, i32 %14, i8* %15)
  store %struct._object* %call18, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.14, %if.then.5, %if.then
  %16 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %16
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_afterfork(%struct.SemLockObject* %self) #0 {
entry:
  %self.addr = alloca %struct.SemLockObject*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 3
  store i32 0, i32* %count, align 4
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %1, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  ret %struct._object* @_Py_NoneStruct
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #1

declare i64 @PyThread_get_thread_ident() #1

declare double @PyFloat_AsDouble(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #2

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #1

declare %struct._ts* @PyEval_SaveThread() #1

declare i32 @sem_wait(%union.sem_t*) #1

; Function Attrs: nounwind
declare i32 @sem_trywait(%union.sem_t*) #2

declare i32 @sem_timedwait(%union.sem_t*, %struct.timespec*) #1

declare void @PyEval_RestoreThread(%struct._ts*) #1

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #4

declare i32 @PyErr_CheckSignals() #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind
declare i32 @sem_getvalue(%union.sem_t*, i32*) #2

; Function Attrs: nounwind
declare i32 @sem_post(%union.sem_t*) #2

declare %struct._object* @PyLong_FromLong(i64) #1

declare %struct._object* @PyBool_FromLong(i64) #1

declare i8* @PyMem_Malloc(i64) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #5

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare %union.sem_t* @sem_open(i8*, i32, ...) #2

; Function Attrs: nounwind uwtable
define internal %struct._object* @newsemlockobject(%struct._typeobject* %type, %union.sem_t* %handle, i32 %kind, i32 %maxvalue, i8* %name) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %type.addr = alloca %struct._typeobject*, align 8
  %handle.addr = alloca %union.sem_t*, align 8
  %kind.addr = alloca i32, align 4
  %maxvalue.addr = alloca i32, align 4
  %name.addr = alloca i8*, align 8
  %self = alloca %struct.SemLockObject*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %union.sem_t* %handle, %union.sem_t** %handle.addr, align 8
  store i32 %kind, i32* %kind.addr, align 4
  store i32 %maxvalue, i32* %maxvalue.addr, align 4
  store i8* %name, i8** %name.addr, align 8
  %0 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %0)
  %1 = bitcast %struct._object* %call to %struct.SemLockObject*
  store %struct.SemLockObject* %1, %struct.SemLockObject** %self, align 8
  %2 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %tobool = icmp ne %struct.SemLockObject* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %union.sem_t*, %union.sem_t** %handle.addr, align 8
  %4 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %handle1 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %4, i32 0, i32 1
  store %union.sem_t* %3, %union.sem_t** %handle1, align 8
  %5 = load i32, i32* %kind.addr, align 4
  %6 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %kind2 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %6, i32 0, i32 5
  store i32 %5, i32* %kind2, align 4
  %7 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %7, i32 0, i32 3
  store i32 0, i32* %count, align 4
  %8 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %8, i32 0, i32 2
  store i64 0, i64* %last_tid, align 8
  %9 = load i32, i32* %maxvalue.addr, align 4
  %10 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %maxvalue3 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %10, i32 0, i32 4
  store i32 %9, i32* %maxvalue3, align 4
  %11 = load i8*, i8** %name.addr, align 8
  %12 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %name4 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %12, i32 0, i32 6
  store i8* %11, i8** %name4, align 8
  %13 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8
  %14 = bitcast %struct.SemLockObject* %13 to %struct._object*
  store %struct._object* %14, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %15 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %15
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
