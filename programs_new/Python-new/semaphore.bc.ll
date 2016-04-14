; ModuleID = 'programs_new/Python-new/semaphore.bc.ll'
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
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !388, metadata !574), !dbg !575
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !576, !tbaa !570
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 1, !dbg !578
  %1 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !578, !tbaa !579
  %cmp = icmp ne %union.sem_t* %1, null, !dbg !584
  br i1 %cmp, label %if.then, label %if.end, !dbg !585

if.then:                                          ; preds = %entry
  %2 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !586, !tbaa !570
  %handle1 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %2, i32 0, i32 1, !dbg !587
  %3 = load %union.sem_t*, %union.sem_t** %handle1, align 8, !dbg !587, !tbaa !579
  %call = call i32 @sem_close(%union.sem_t* %3) #2, !dbg !588
  br label %if.end, !dbg !588

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !589, !tbaa !570
  %name = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %4, i32 0, i32 6, !dbg !590
  %5 = load i8*, i8** %name, align 8, !dbg !590, !tbaa !591
  call void @PyMem_Free(i8* %5), !dbg !592
  %6 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !593, !tbaa !570
  %7 = bitcast %struct.SemLockObject* %6 to i8*, !dbg !593
  call void @PyObject_Free(i8* %7), !dbg !594
  ret void, !dbg !595
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
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !535, metadata !574), !dbg !596
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !536, metadata !574), !dbg !597
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !537, metadata !574), !dbg !598
  %0 = bitcast %union.sem_t** %handle to i8*, !dbg !599
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !599
  call void @llvm.dbg.declare(metadata %union.sem_t** %handle, metadata !538, metadata !574), !dbg !600
  store %union.sem_t* null, %union.sem_t** %handle, align 8, !dbg !600, !tbaa !570
  %1 = bitcast i32* %kind to i8*, !dbg !601
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !601
  call void @llvm.dbg.declare(metadata i32* %kind, metadata !539, metadata !574), !dbg !602
  %2 = bitcast i32* %maxvalue to i8*, !dbg !601
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !601
  call void @llvm.dbg.declare(metadata i32* %maxvalue, metadata !540, metadata !574), !dbg !603
  %3 = bitcast i32* %value to i8*, !dbg !601
  call void @llvm.lifetime.start(i64 4, i8* %3) #2, !dbg !601
  call void @llvm.dbg.declare(metadata i32* %value, metadata !541, metadata !574), !dbg !604
  %4 = bitcast i32* %unlink to i8*, !dbg !601
  call void @llvm.lifetime.start(i64 4, i8* %4) #2, !dbg !601
  call void @llvm.dbg.declare(metadata i32* %unlink, metadata !542, metadata !574), !dbg !605
  %5 = bitcast %struct._object** %result to i8*, !dbg !606
  call void @llvm.lifetime.start(i64 8, i8* %5) #2, !dbg !606
  call void @llvm.dbg.declare(metadata %struct._object** %result, metadata !543, metadata !574), !dbg !607
  %6 = bitcast i8** %name to i8*, !dbg !608
  call void @llvm.lifetime.start(i64 8, i8* %6) #2, !dbg !608
  call void @llvm.dbg.declare(metadata i8** %name, metadata !544, metadata !574), !dbg !609
  %7 = bitcast i8** %name_copy to i8*, !dbg !608
  call void @llvm.lifetime.start(i64 8, i8* %7) #2, !dbg !608
  call void @llvm.dbg.declare(metadata i8** %name_copy, metadata !545, metadata !574), !dbg !610
  store i8* null, i8** %name_copy, align 8, !dbg !610, !tbaa !570
  %8 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !611, !tbaa !570
  %9 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !613, !tbaa !570
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %8, %struct._object* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0), i8** getelementptr inbounds ([6 x i8*], [6 x i8*]* @semlock_new.kwlist, i32 0, i32 0), i32* %kind, i32* %value, i32* %maxvalue, i8** %name, i32* %unlink), !dbg !614
  %tobool = icmp ne i32 %call, 0, !dbg !614
  br i1 %tobool, label %if.end, label %if.then, !dbg !615

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !616
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !616

if.end:                                           ; preds = %entry
  %10 = load i32, i32* %kind, align 4, !dbg !617, !tbaa !619
  %cmp = icmp ne i32 %10, 0, !dbg !620
  br i1 %cmp, label %land.lhs.true, label %if.end.3, !dbg !621

land.lhs.true:                                    ; preds = %if.end
  %11 = load i32, i32* %kind, align 4, !dbg !622, !tbaa !619
  %cmp1 = icmp ne i32 %11, 1, !dbg !624
  br i1 %cmp1, label %if.then.2, label %if.end.3, !dbg !625

if.then.2:                                        ; preds = %land.lhs.true
  %12 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !626, !tbaa !570
  call void @PyErr_SetString(%struct._object* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.36, i32 0, i32 0)), !dbg !628
  store %struct._object* null, %struct._object** %retval, !dbg !629
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !629

if.end.3:                                         ; preds = %land.lhs.true, %if.end
  %13 = load i32, i32* %unlink, align 4, !dbg !630, !tbaa !619
  %tobool4 = icmp ne i32 %13, 0, !dbg !630
  br i1 %tobool4, label %if.end.12, label %if.then.5, !dbg !632

if.then.5:                                        ; preds = %if.end.3
  %14 = load i8*, i8** %name, align 8, !dbg !633, !tbaa !570
  %call6 = call i64 @strlen(i8* %14) #7, !dbg !635
  %add = add i64 %call6, 1, !dbg !636
  %call7 = call i8* @PyMem_Malloc(i64 %add), !dbg !637
  store i8* %call7, i8** %name_copy, align 8, !dbg !638, !tbaa !570
  %15 = load i8*, i8** %name_copy, align 8, !dbg !639, !tbaa !570
  %cmp8 = icmp eq i8* %15, null, !dbg !641
  br i1 %cmp8, label %if.then.9, label %if.end.10, !dbg !642

if.then.9:                                        ; preds = %if.then.5
  br label %failure, !dbg !643

if.end.10:                                        ; preds = %if.then.5
  %16 = load i8*, i8** %name_copy, align 8, !dbg !644, !tbaa !570
  %17 = load i8*, i8** %name, align 8, !dbg !645, !tbaa !570
  %call11 = call i8* @strcpy(i8* %16, i8* %17) #2, !dbg !646
  br label %if.end.12, !dbg !647

if.end.12:                                        ; preds = %if.end.10, %if.end.3
  %18 = load i8*, i8** %name, align 8, !dbg !648, !tbaa !570
  %19 = load i32, i32* %value, align 4, !dbg !649, !tbaa !619
  %call13 = call %union.sem_t* (i8*, i32, ...) @sem_open(i8* %18, i32 192, i32 384, i32 %19) #2, !dbg !650
  store %union.sem_t* %call13, %union.sem_t** %handle, align 8, !dbg !651, !tbaa !570
  %20 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !652, !tbaa !570
  %cmp14 = icmp eq %union.sem_t* %20, null, !dbg !654
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !655

if.then.15:                                       ; preds = %if.end.12
  br label %failure, !dbg !656

if.end.16:                                        ; preds = %if.end.12
  %21 = load i32, i32* %unlink, align 4, !dbg !657, !tbaa !619
  %tobool17 = icmp ne i32 %21, 0, !dbg !657
  br i1 %tobool17, label %land.lhs.true.18, label %if.end.22, !dbg !659

land.lhs.true.18:                                 ; preds = %if.end.16
  %22 = load i8*, i8** %name, align 8, !dbg !660, !tbaa !570
  %call19 = call i32 @sem_unlink(i8* %22) #2, !dbg !662
  %cmp20 = icmp slt i32 %call19, 0, !dbg !663
  br i1 %cmp20, label %if.then.21, label %if.end.22, !dbg !664

if.then.21:                                       ; preds = %land.lhs.true.18
  br label %failure, !dbg !665

if.end.22:                                        ; preds = %land.lhs.true.18, %if.end.16
  %23 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !666, !tbaa !570
  %24 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !667, !tbaa !570
  %25 = load i32, i32* %kind, align 4, !dbg !668, !tbaa !619
  %26 = load i32, i32* %maxvalue, align 4, !dbg !669, !tbaa !619
  %27 = load i8*, i8** %name_copy, align 8, !dbg !670, !tbaa !570
  %call23 = call %struct._object* @newsemlockobject(%struct._typeobject* %23, %union.sem_t* %24, i32 %25, i32 %26, i8* %27), !dbg !671
  store %struct._object* %call23, %struct._object** %result, align 8, !dbg !672, !tbaa !570
  %28 = load %struct._object*, %struct._object** %result, align 8, !dbg !673, !tbaa !570
  %tobool24 = icmp ne %struct._object* %28, null, !dbg !673
  br i1 %tobool24, label %if.end.26, label %if.then.25, !dbg !675

if.then.25:                                       ; preds = %if.end.22
  br label %failure, !dbg !676

if.end.26:                                        ; preds = %if.end.22
  %29 = load %struct._object*, %struct._object** %result, align 8, !dbg !677, !tbaa !570
  store %struct._object* %29, %struct._object** %retval, !dbg !678
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !678

failure:                                          ; preds = %if.then.25, %if.then.21, %if.then.15, %if.then.9
  %30 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !679, !tbaa !570
  %cmp27 = icmp ne %union.sem_t* %30, null, !dbg !681
  br i1 %cmp27, label %if.then.28, label %if.end.30, !dbg !682

if.then.28:                                       ; preds = %failure
  %31 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !683, !tbaa !570
  %call29 = call i32 @sem_close(%union.sem_t* %31) #2, !dbg !684
  br label %if.end.30, !dbg !684

if.end.30:                                        ; preds = %if.then.28, %failure
  %32 = load i8*, i8** %name_copy, align 8, !dbg !685, !tbaa !570
  call void @PyMem_Free(i8* %32), !dbg !686
  %call31 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1), !dbg !687
  store %struct._object* null, %struct._object** %retval, !dbg !688
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !688

cleanup:                                          ; preds = %if.end.30, %if.end.26, %if.then.2, %if.then
  %33 = bitcast i8** %name_copy to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 8, i8* %33) #2, !dbg !689
  %34 = bitcast i8** %name to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 8, i8* %34) #2, !dbg !689
  %35 = bitcast %struct._object** %result to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 8, i8* %35) #2, !dbg !689
  %36 = bitcast i32* %unlink to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 4, i8* %36) #2, !dbg !689
  %37 = bitcast i32* %value to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 4, i8* %37) #2, !dbg !689
  %38 = bitcast i32* %maxvalue to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 4, i8* %38) #2, !dbg !689
  %39 = bitcast i32* %kind to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 4, i8* %39) #2, !dbg !689
  %40 = bitcast %union.sem_t** %handle to i8*, !dbg !689
  call void @llvm.lifetime.end(i64 8, i8* %40) #2, !dbg !689
  %41 = load %struct._object*, %struct._object** %retval, !dbg !689
  ret %struct._object* %41, !dbg !689
}

; Function Attrs: nounwind uwtable
define %struct._object* @_PyMp_sem_unlink(%struct._object* %ignore, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %ignore.addr = alloca %struct._object*, align 8
  %args.addr = alloca %struct._object*, align 8
  %name = alloca i8*, align 8
  %cleanup.dest.slot = alloca i32
  store %struct._object* %ignore, %struct._object** %ignore.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %ignore.addr, metadata !381, metadata !574), !dbg !690
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !382, metadata !574), !dbg !691
  %0 = bitcast i8** %name to i8*, !dbg !692
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !692
  call void @llvm.dbg.declare(metadata i8** %name, metadata !383, metadata !574), !dbg !693
  %1 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !694, !tbaa !570
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0), i8** %name), !dbg !696
  %tobool = icmp ne i32 %call, 0, !dbg !696
  br i1 %tobool, label %if.end, label %if.then, !dbg !697

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !698
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !698

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %name, align 8, !dbg !699, !tbaa !570
  %call1 = call i32 @sem_unlink(i8* %2) #2, !dbg !701
  %cmp = icmp slt i32 %call1, 0, !dbg !702
  br i1 %cmp, label %if.then.2, label %if.end.4, !dbg !703

if.then.2:                                        ; preds = %if.end
  %call3 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1), !dbg !704
  store %struct._object* null, %struct._object** %retval, !dbg !706
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !706

if.end.4:                                         ; preds = %if.end
  %3 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !707, !tbaa !708
  %inc = add i64 %3, 1, !dbg !707
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !707, !tbaa !708
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !709
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !709

cleanup:                                          ; preds = %if.end.4, %if.then.2, %if.then
  %4 = bitcast i8** %name to i8*, !dbg !710
  call void @llvm.lifetime.end(i64 8, i8* %4) #2, !dbg !710
  %5 = load %struct._object*, %struct._object** %retval, !dbg !710
  ret %struct._object* %5, !dbg !710
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

declare i32 @_PyArg_ParseTuple_SizeT(%struct._object*, i8*, ...) #3

; Function Attrs: nounwind
declare i32 @sem_unlink(i8*) #4

declare %struct._object* @_PyMp_SetError(%struct._object*, i32) #3

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare i32 @sem_close(%union.sem_t*) #4

declare void @PyMem_Free(i8*) #3

declare void @PyObject_Free(i8*) #3

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
  %cleanup.dest.slot = alloca i32
  %_save = alloca %struct._ts*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !393, metadata !574), !dbg !711
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !394, metadata !574), !dbg !712
  store %struct._object* %kwds, %struct._object** %kwds.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %kwds.addr, metadata !395, metadata !574), !dbg !713
  %0 = bitcast i32* %blocking to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !714
  call void @llvm.dbg.declare(metadata i32* %blocking, metadata !396, metadata !574), !dbg !715
  store i32 1, i32* %blocking, align 4, !dbg !715, !tbaa !619
  %1 = bitcast i32* %res to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !714
  call void @llvm.dbg.declare(metadata i32* %res, metadata !397, metadata !574), !dbg !716
  %2 = bitcast i32* %err to i8*, !dbg !714
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !714
  call void @llvm.dbg.declare(metadata i32* %err, metadata !398, metadata !574), !dbg !717
  store i32 0, i32* %err, align 4, !dbg !717, !tbaa !619
  %3 = bitcast double* %timeout to i8*, !dbg !718
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !718
  call void @llvm.dbg.declare(metadata double* %timeout, metadata !399, metadata !574), !dbg !719
  %4 = bitcast %struct._object** %timeout_obj to i8*, !dbg !720
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !720
  call void @llvm.dbg.declare(metadata %struct._object** %timeout_obj, metadata !401, metadata !574), !dbg !721
  store %struct._object* @_Py_NoneStruct, %struct._object** %timeout_obj, align 8, !dbg !721, !tbaa !570
  %5 = bitcast %struct.timespec* %deadline to i8*, !dbg !722
  call void @llvm.lifetime.start(i64 16, i8* %5) #2, !dbg !722
  call void @llvm.dbg.declare(metadata %struct.timespec* %deadline, metadata !402, metadata !574), !dbg !723
  %6 = bitcast %struct.timespec* %deadline to i8*, !dbg !723
  call void @llvm.memset.p0i8.i64(i8* %6, i8 0, i64 16, i32 8, i1 false), !dbg !723
  %7 = bitcast %struct.timeval* %now to i8*, !dbg !724
  call void @llvm.lifetime.start(i64 16, i8* %7) #2, !dbg !724
  call void @llvm.dbg.declare(metadata %struct.timeval* %now, metadata !410, metadata !574), !dbg !725
  %8 = bitcast i64* %sec to i8*, !dbg !726
  call void @llvm.lifetime.start(i64 8, i8* %8) #2, !dbg !726
  call void @llvm.dbg.declare(metadata i64* %sec, metadata !417, metadata !574), !dbg !727
  %9 = bitcast i64* %nsec to i8*, !dbg !726
  call void @llvm.lifetime.start(i64 8, i8* %9) #2, !dbg !726
  call void @llvm.dbg.declare(metadata i64* %nsec, metadata !418, metadata !574), !dbg !728
  %10 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !729, !tbaa !570
  %11 = load %struct._object*, %struct._object** %kwds.addr, align 8, !dbg !731, !tbaa !570
  %call = call i32 (%struct._object*, %struct._object*, i8*, i8**, ...) @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object* %10, %struct._object* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @semlock_acquire.kwlist, i32 0, i32 0), i32* %blocking, %struct._object** %timeout_obj), !dbg !732
  %tobool = icmp ne i32 %call, 0, !dbg !732
  br i1 %tobool, label %if.end, label %if.then, !dbg !733

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !734
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !734

if.end:                                           ; preds = %entry
  %12 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !735, !tbaa !570
  %kind = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %12, i32 0, i32 5, !dbg !737
  %13 = load i32, i32* %kind, align 4, !dbg !737, !tbaa !738
  %cmp = icmp eq i32 %13, 0, !dbg !739
  br i1 %cmp, label %land.lhs.true, label %if.end.8, !dbg !740

land.lhs.true:                                    ; preds = %if.end
  %14 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !741, !tbaa !570
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %14, i32 0, i32 3, !dbg !743
  %15 = load i32, i32* %count, align 4, !dbg !743, !tbaa !744
  %cmp1 = icmp sgt i32 %15, 0, !dbg !745
  br i1 %cmp1, label %land.lhs.true.2, label %if.end.8, !dbg !746

land.lhs.true.2:                                  ; preds = %land.lhs.true
  %call3 = call i64 @PyThread_get_thread_ident(), !dbg !747
  %16 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !749, !tbaa !570
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %16, i32 0, i32 2, !dbg !750
  %17 = load i64, i64* %last_tid, align 8, !dbg !750, !tbaa !751
  %cmp4 = icmp eq i64 %call3, %17, !dbg !752
  br i1 %cmp4, label %if.then.5, label %if.end.8, !dbg !753

if.then.5:                                        ; preds = %land.lhs.true.2
  %18 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !754, !tbaa !570
  %count6 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %18, i32 0, i32 3, !dbg !756
  %19 = load i32, i32* %count6, align 4, !dbg !757, !tbaa !744
  %inc = add i32 %19, 1, !dbg !757
  store i32 %inc, i32* %count6, align 4, !dbg !757, !tbaa !744
  %20 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !758, !tbaa !708
  %inc7 = add i64 %20, 1, !dbg !758
  store i64 %inc7, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !758, !tbaa !708
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !759
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !759

if.end.8:                                         ; preds = %land.lhs.true.2, %land.lhs.true, %if.end
  %21 = load %struct._object*, %struct._object** %timeout_obj, align 8, !dbg !760, !tbaa !570
  %cmp9 = icmp ne %struct._object* %21, @_Py_NoneStruct, !dbg !762
  br i1 %cmp9, label %if.then.10, label %if.end.34, !dbg !763

if.then.10:                                       ; preds = %if.end.8
  %22 = load %struct._object*, %struct._object** %timeout_obj, align 8, !dbg !764, !tbaa !570
  %call11 = call double @PyFloat_AsDouble(%struct._object* %22), !dbg !766
  store double %call11, double* %timeout, align 8, !dbg !767, !tbaa !768
  %call12 = call %struct._object* @PyErr_Occurred(), !dbg !770
  %tobool13 = icmp ne %struct._object* %call12, null, !dbg !770
  br i1 %tobool13, label %if.then.14, label %if.end.15, !dbg !772

if.then.14:                                       ; preds = %if.then.10
  store %struct._object* null, %struct._object** %retval, !dbg !773
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !773

if.end.15:                                        ; preds = %if.then.10
  %23 = load double, double* %timeout, align 8, !dbg !774, !tbaa !768
  %cmp16 = fcmp olt double %23, 0.000000e+00, !dbg !776
  br i1 %cmp16, label %if.then.17, label %if.end.18, !dbg !777

if.then.17:                                       ; preds = %if.end.15
  store double 0.000000e+00, double* %timeout, align 8, !dbg !778, !tbaa !768
  br label %if.end.18, !dbg !779

if.end.18:                                        ; preds = %if.then.17, %if.end.15
  %call19 = call i32 @gettimeofday(%struct.timeval* %now, %struct.timezone* null) #2, !dbg !780
  %cmp20 = icmp slt i32 %call19, 0, !dbg !782
  br i1 %cmp20, label %if.then.21, label %if.end.23, !dbg !783

if.then.21:                                       ; preds = %if.end.18
  %24 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !784, !tbaa !570
  %call22 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %24), !dbg !786
  store %struct._object* null, %struct._object** %retval, !dbg !787
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !787

if.end.23:                                        ; preds = %if.end.18
  %25 = load double, double* %timeout, align 8, !dbg !788, !tbaa !768
  %conv = fptosi double %25 to i64, !dbg !789
  store i64 %conv, i64* %sec, align 8, !dbg !790, !tbaa !791
  %26 = load double, double* %timeout, align 8, !dbg !792, !tbaa !768
  %27 = load i64, i64* %sec, align 8, !dbg !793, !tbaa !791
  %conv24 = sitofp i64 %27 to double, !dbg !793
  %sub = fsub double %26, %conv24, !dbg !794
  %mul = fmul double 1.000000e+09, %sub, !dbg !795
  %add = fadd double %mul, 5.000000e-01, !dbg !796
  %conv25 = fptosi double %add to i64, !dbg !797
  store i64 %conv25, i64* %nsec, align 8, !dbg !798, !tbaa !791
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 0, !dbg !799
  %28 = load i64, i64* %tv_sec, align 8, !dbg !799, !tbaa !800
  %29 = load i64, i64* %sec, align 8, !dbg !802, !tbaa !791
  %add26 = add i64 %28, %29, !dbg !803
  %tv_sec27 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 0, !dbg !804
  store i64 %add26, i64* %tv_sec27, align 8, !dbg !805, !tbaa !806
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %now, i32 0, i32 1, !dbg !808
  %30 = load i64, i64* %tv_usec, align 8, !dbg !808, !tbaa !809
  %mul28 = mul i64 %30, 1000, !dbg !810
  %31 = load i64, i64* %nsec, align 8, !dbg !811, !tbaa !791
  %add29 = add i64 %mul28, %31, !dbg !812
  %tv_nsec = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 1, !dbg !813
  store i64 %add29, i64* %tv_nsec, align 8, !dbg !814, !tbaa !815
  %tv_nsec30 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 1, !dbg !816
  %32 = load i64, i64* %tv_nsec30, align 8, !dbg !816, !tbaa !815
  %div = sdiv i64 %32, 1000000000, !dbg !817
  %tv_sec31 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 0, !dbg !818
  %33 = load i64, i64* %tv_sec31, align 8, !dbg !819, !tbaa !806
  %add32 = add i64 %33, %div, !dbg !819
  store i64 %add32, i64* %tv_sec31, align 8, !dbg !819, !tbaa !806
  %tv_nsec33 = getelementptr inbounds %struct.timespec, %struct.timespec* %deadline, i32 0, i32 1, !dbg !820
  %34 = load i64, i64* %tv_nsec33, align 8, !dbg !821, !tbaa !815
  %rem = srem i64 %34, 1000000000, !dbg !821
  store i64 %rem, i64* %tv_nsec33, align 8, !dbg !821, !tbaa !815
  br label %if.end.34, !dbg !822

if.end.34:                                        ; preds = %if.end.23, %if.end.8
  br label %do.body, !dbg !823

do.body:                                          ; preds = %land.end, %if.end.34
  %35 = bitcast %struct._ts** %_save to i8*, !dbg !824
  call void @llvm.lifetime.start(i64 8, i8* %35) #2, !dbg !824
  call void @llvm.dbg.declare(metadata %struct._ts** %_save, metadata !419, metadata !574), !dbg !825
  %call35 = call %struct._ts* @PyEval_SaveThread(), !dbg !826
  store %struct._ts* %call35, %struct._ts** %_save, align 8, !dbg !827, !tbaa !570
  %36 = load i32, i32* %blocking, align 4, !dbg !828, !tbaa !619
  %tobool36 = icmp ne i32 %36, 0, !dbg !828
  br i1 %tobool36, label %land.lhs.true.37, label %if.else, !dbg !830

land.lhs.true.37:                                 ; preds = %do.body
  %37 = load %struct._object*, %struct._object** %timeout_obj, align 8, !dbg !831, !tbaa !570
  %cmp38 = icmp eq %struct._object* %37, @_Py_NoneStruct, !dbg !833
  br i1 %cmp38, label %if.then.40, label %if.else, !dbg !834

if.then.40:                                       ; preds = %land.lhs.true.37
  %38 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !835, !tbaa !570
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %38, i32 0, i32 1, !dbg !836
  %39 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !836, !tbaa !579
  %call41 = call i32 @sem_wait(%union.sem_t* %39), !dbg !837
  store i32 %call41, i32* %res, align 4, !dbg !838, !tbaa !619
  br label %if.end.50, !dbg !839

if.else:                                          ; preds = %land.lhs.true.37, %do.body
  %40 = load i32, i32* %blocking, align 4, !dbg !840, !tbaa !619
  %tobool42 = icmp ne i32 %40, 0, !dbg !840
  br i1 %tobool42, label %if.else.46, label %if.then.43, !dbg !842

if.then.43:                                       ; preds = %if.else
  %41 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !843, !tbaa !570
  %handle44 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %41, i32 0, i32 1, !dbg !844
  %42 = load %union.sem_t*, %union.sem_t** %handle44, align 8, !dbg !844, !tbaa !579
  %call45 = call i32 @sem_trywait(%union.sem_t* %42) #2, !dbg !845
  store i32 %call45, i32* %res, align 4, !dbg !846, !tbaa !619
  br label %if.end.49, !dbg !847

if.else.46:                                       ; preds = %if.else
  %43 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !848, !tbaa !570
  %handle47 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %43, i32 0, i32 1, !dbg !849
  %44 = load %union.sem_t*, %union.sem_t** %handle47, align 8, !dbg !849, !tbaa !579
  %call48 = call i32 @sem_timedwait(%union.sem_t* %44, %struct.timespec* %deadline), !dbg !850
  store i32 %call48, i32* %res, align 4, !dbg !851, !tbaa !619
  br label %if.end.49

if.end.49:                                        ; preds = %if.else.46, %if.then.43
  br label %if.end.50

if.end.50:                                        ; preds = %if.end.49, %if.then.40
  %45 = load %struct._ts*, %struct._ts** %_save, align 8, !dbg !852, !tbaa !570
  call void @PyEval_RestoreThread(%struct._ts* %45), !dbg !853
  %46 = bitcast %struct._ts** %_save to i8*, !dbg !854
  call void @llvm.lifetime.end(i64 8, i8* %46) #2, !dbg !854
  %call51 = call i32* @__errno_location() #1, !dbg !855
  %47 = load i32, i32* %call51, align 4, !dbg !856, !tbaa !619
  store i32 %47, i32* %err, align 4, !dbg !857, !tbaa !619
  %48 = load i32, i32* %res, align 4, !dbg !858, !tbaa !619
  %cmp52 = icmp eq i32 %48, -1003, !dbg !860
  br i1 %cmp52, label %if.then.54, label %if.end.55, !dbg !861

if.then.54:                                       ; preds = %if.end.50
  br label %do.end, !dbg !862

if.end.55:                                        ; preds = %if.end.50
  br label %do.cond, !dbg !863

do.cond:                                          ; preds = %if.end.55
  %49 = load i32, i32* %res, align 4, !dbg !864, !tbaa !619
  %cmp56 = icmp slt i32 %49, 0, !dbg !866
  br i1 %cmp56, label %land.lhs.true.58, label %land.end, !dbg !867

land.lhs.true.58:                                 ; preds = %do.cond
  %call59 = call i32* @__errno_location() #1, !dbg !868
  %50 = load i32, i32* %call59, align 4, !dbg !870, !tbaa !619
  %cmp60 = icmp eq i32 %50, 4, !dbg !871
  br i1 %cmp60, label %land.rhs, label %land.end, !dbg !872

land.rhs:                                         ; preds = %land.lhs.true.58
  %call62 = call i32 @PyErr_CheckSignals(), !dbg !873
  %tobool63 = icmp ne i32 %call62, 0, !dbg !875
  %lnot = xor i1 %tobool63, true, !dbg !875
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true.58, %do.cond
  %51 = phi i1 [ false, %land.lhs.true.58 ], [ false, %do.cond ], [ %lnot, %land.rhs ]
  br i1 %51, label %do.body, label %do.end, !dbg !876

do.end:                                           ; preds = %land.end, %if.then.54
  %52 = load i32, i32* %res, align 4, !dbg !879, !tbaa !619
  %cmp64 = icmp slt i32 %52, 0, !dbg !881
  br i1 %cmp64, label %if.then.66, label %if.end.83, !dbg !882

if.then.66:                                       ; preds = %do.end
  %53 = load i32, i32* %err, align 4, !dbg !883, !tbaa !619
  %call67 = call i32* @__errno_location() #1, !dbg !885
  store i32 %53, i32* %call67, align 4, !dbg !886, !tbaa !619
  %call68 = call i32* @__errno_location() #1, !dbg !887
  %54 = load i32, i32* %call68, align 4, !dbg !889, !tbaa !619
  %cmp69 = icmp eq i32 %54, 11, !dbg !890
  br i1 %cmp69, label %if.then.74, label %lor.lhs.false, !dbg !891

lor.lhs.false:                                    ; preds = %if.then.66
  %call71 = call i32* @__errno_location() #1, !dbg !892
  %55 = load i32, i32* %call71, align 4, !dbg !894, !tbaa !619
  %cmp72 = icmp eq i32 %55, 110, !dbg !895
  br i1 %cmp72, label %if.then.74, label %if.else.76, !dbg !896

if.then.74:                                       ; preds = %lor.lhs.false, %if.then.66
  %56 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !897, !tbaa !708
  %inc75 = add i64 %56, 1, !dbg !897
  store i64 %inc75, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !897, !tbaa !708
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_FalseStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !898
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !898

if.else.76:                                       ; preds = %lor.lhs.false
  %call77 = call i32* @__errno_location() #1, !dbg !899
  %57 = load i32, i32* %call77, align 4, !dbg !901, !tbaa !619
  %cmp78 = icmp eq i32 %57, 4, !dbg !902
  br i1 %cmp78, label %if.then.80, label %if.else.81, !dbg !903

if.then.80:                                       ; preds = %if.else.76
  store %struct._object* null, %struct._object** %retval, !dbg !904
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !904

if.else.81:                                       ; preds = %if.else.76
  %58 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !905, !tbaa !570
  %call82 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %58), !dbg !906
  store %struct._object* %call82, %struct._object** %retval, !dbg !907
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !907

if.end.83:                                        ; preds = %do.end
  %59 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !908, !tbaa !570
  %count84 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %59, i32 0, i32 3, !dbg !909
  %60 = load i32, i32* %count84, align 4, !dbg !910, !tbaa !744
  %inc85 = add i32 %60, 1, !dbg !910
  store i32 %inc85, i32* %count84, align 4, !dbg !910, !tbaa !744
  %call86 = call i64 @PyThread_get_thread_ident(), !dbg !911
  %61 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !912, !tbaa !570
  %last_tid87 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %61, i32 0, i32 2, !dbg !913
  store i64 %call86, i64* %last_tid87, align 8, !dbg !914, !tbaa !751
  %62 = load i64, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !915, !tbaa !708
  %inc88 = add i64 %62, 1, !dbg !915
  store i64 %inc88, i64* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0, i32 0), align 8, !dbg !915, !tbaa !708
  store %struct._object* getelementptr inbounds (%struct._longobject, %struct._longobject* @_Py_TrueStruct, i32 0, i32 0, i32 0), %struct._object** %retval, !dbg !916
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !916

cleanup:                                          ; preds = %if.end.83, %if.else.81, %if.then.80, %if.then.74, %if.then.21, %if.then.14, %if.then.5, %if.then
  %63 = bitcast i64* %nsec to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 8, i8* %63) #2, !dbg !917
  %64 = bitcast i64* %sec to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 8, i8* %64) #2, !dbg !917
  %65 = bitcast %struct.timeval* %now to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 16, i8* %65) #2, !dbg !917
  %66 = bitcast %struct.timespec* %deadline to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 16, i8* %66) #2, !dbg !917
  %67 = bitcast %struct._object** %timeout_obj to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 8, i8* %67) #2, !dbg !917
  %68 = bitcast double* %timeout to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 8, i8* %68) #2, !dbg !917
  %69 = bitcast i32* %err to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 4, i8* %69) #2, !dbg !917
  %70 = bitcast i32* %res to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 4, i8* %70) #2, !dbg !917
  %71 = bitcast i32* %blocking to i8*, !dbg !917
  call void @llvm.lifetime.end(i64 4, i8* %71) #2, !dbg !917
  %72 = load %struct._object*, %struct._object** %retval, !dbg !917
  ret %struct._object* %72, !dbg !917
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_release(%struct.SemLockObject* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SemLockObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %sval = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !484, metadata !574), !dbg !918
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !485, metadata !574), !dbg !919
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !920, !tbaa !570
  %kind = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 5, !dbg !921
  %1 = load i32, i32* %kind, align 4, !dbg !921, !tbaa !738
  %cmp = icmp eq i32 %1, 0, !dbg !922
  br i1 %cmp, label %if.then, label %if.else, !dbg !923

if.then:                                          ; preds = %entry
  %2 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !924, !tbaa !570
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %2, i32 0, i32 3, !dbg !927
  %3 = load i32, i32* %count, align 4, !dbg !927, !tbaa !744
  %cmp1 = icmp sgt i32 %3, 0, !dbg !928
  br i1 %cmp1, label %land.lhs.true, label %if.then.3, !dbg !929

land.lhs.true:                                    ; preds = %if.then
  %call = call i64 @PyThread_get_thread_ident(), !dbg !930
  %4 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !932, !tbaa !570
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %4, i32 0, i32 2, !dbg !933
  %5 = load i64, i64* %last_tid, align 8, !dbg !933, !tbaa !751
  %cmp2 = icmp eq i64 %call, %5, !dbg !934
  br i1 %cmp2, label %if.end, label %if.then.3, !dbg !935

if.then.3:                                        ; preds = %land.lhs.true, %if.then
  %6 = load %struct._object*, %struct._object** @PyExc_AssertionError, align 8, !dbg !936, !tbaa !570
  call void @PyErr_SetString(%struct._object* %6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.26, i32 0, i32 0)), !dbg !938
  store %struct._object* null, %struct._object** %retval, !dbg !939
  br label %return, !dbg !939

if.end:                                           ; preds = %land.lhs.true
  %7 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !940, !tbaa !570
  %count4 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %7, i32 0, i32 3, !dbg !942
  %8 = load i32, i32* %count4, align 4, !dbg !942, !tbaa !744
  %cmp5 = icmp sgt i32 %8, 1, !dbg !943
  br i1 %cmp5, label %if.then.6, label %if.end.8, !dbg !944

if.then.6:                                        ; preds = %if.end
  %9 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !945, !tbaa !570
  %count7 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %9, i32 0, i32 3, !dbg !947
  %10 = load i32, i32* %count7, align 4, !dbg !948, !tbaa !744
  %dec = add i32 %10, -1, !dbg !948
  store i32 %dec, i32* %count7, align 4, !dbg !948, !tbaa !744
  %11 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !949, !tbaa !708
  %inc = add i64 %11, 1, !dbg !949
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !949, !tbaa !708
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !950
  br label %return, !dbg !950

if.end.8:                                         ; preds = %if.end
  br label %if.end.18, !dbg !951

if.else:                                          ; preds = %entry
  %12 = bitcast i32* %sval to i8*, !dbg !952
  call void @llvm.lifetime.start(i64 4, i8* %12) #2, !dbg !952
  call void @llvm.dbg.declare(metadata i32* %sval, metadata !486, metadata !574), !dbg !953
  %13 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !954, !tbaa !570
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %13, i32 0, i32 1, !dbg !956
  %14 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !956, !tbaa !579
  %call9 = call i32 @sem_getvalue(%union.sem_t* %14, i32* %sval) #2, !dbg !957
  %cmp10 = icmp slt i32 %call9, 0, !dbg !958
  br i1 %cmp10, label %if.then.11, label %if.else.13, !dbg !959

if.then.11:                                       ; preds = %if.else
  %15 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !960, !tbaa !570
  %call12 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %15), !dbg !962
  store %struct._object* %call12, %struct._object** %retval, !dbg !963
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !963

if.else.13:                                       ; preds = %if.else
  %16 = load i32, i32* %sval, align 4, !dbg !964, !tbaa !619
  %17 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !966, !tbaa !570
  %maxvalue = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %17, i32 0, i32 4, !dbg !967
  %18 = load i32, i32* %maxvalue, align 4, !dbg !967, !tbaa !968
  %cmp14 = icmp sge i32 %16, %18, !dbg !969
  br i1 %cmp14, label %if.then.15, label %if.end.16, !dbg !970

if.then.15:                                       ; preds = %if.else.13
  %19 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8, !dbg !971, !tbaa !570
  call void @PyErr_SetString(%struct._object* %19, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i32 0, i32 0)), !dbg !973
  store %struct._object* null, %struct._object** %retval, !dbg !974
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !974

if.end.16:                                        ; preds = %if.else.13
  br label %if.end.17

if.end.17:                                        ; preds = %if.end.16
  store i32 0, i32* %cleanup.dest.slot, !dbg !975
  br label %cleanup, !dbg !975

cleanup:                                          ; preds = %if.end.17, %if.then.15, %if.then.11
  %20 = bitcast i32* %sval to i8*, !dbg !976
  call void @llvm.lifetime.end(i64 4, i8* %20) #2, !dbg !976
  %cleanup.dest = load i32, i32* %cleanup.dest.slot
  br label %LeafBlock

LeafBlock:                                        ; preds = %cleanup
  %SwitchLeaf = icmp eq i32 %cleanup.dest, 1
  br i1 %SwitchLeaf, label %return, label %NewDefault

NewDefault:                                       ; preds = %LeafBlock
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %NewDefault
  br label %if.end.18

if.end.18:                                        ; preds = %cleanup.cont, %if.end.8
  %21 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !978, !tbaa !570
  %handle19 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %21, i32 0, i32 1, !dbg !980
  %22 = load %union.sem_t*, %union.sem_t** %handle19, align 8, !dbg !980, !tbaa !579
  %call20 = call i32 @sem_post(%union.sem_t* %22) #2, !dbg !981
  %cmp21 = icmp slt i32 %call20, 0, !dbg !982
  br i1 %cmp21, label %if.then.22, label %if.end.24, !dbg !983

if.then.22:                                       ; preds = %if.end.18
  %23 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !984, !tbaa !570
  %call23 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %23), !dbg !985
  store %struct._object* %call23, %struct._object** %retval, !dbg !986
  br label %return, !dbg !986

if.end.24:                                        ; preds = %if.end.18
  %24 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !987, !tbaa !570
  %count25 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %24, i32 0, i32 3, !dbg !988
  %25 = load i32, i32* %count25, align 4, !dbg !989, !tbaa !744
  %dec26 = add i32 %25, -1, !dbg !989
  store i32 %dec26, i32* %count25, align 4, !dbg !989, !tbaa !744
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !990, !tbaa !708
  %inc27 = add i64 %26, 1, !dbg !990
  store i64 %inc27, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !990, !tbaa !708
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval, !dbg !991
  br label %return, !dbg !991

return:                                           ; preds = %LeafBlock, %if.end.24, %if.then.22, %if.then.6, %if.then.3
  %27 = load %struct._object*, %struct._object** %retval, !dbg !992
  ret %struct._object* %27, !dbg !992
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_count(%struct.SemLockObject* %self) #0 {
entry:
  %self.addr = alloca %struct.SemLockObject*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !493, metadata !574), !dbg !993
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !994, !tbaa !570
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 3, !dbg !995
  %1 = load i32, i32* %count, align 4, !dbg !995, !tbaa !744
  %conv = sext i32 %1 to i64, !dbg !996
  %call = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !997
  ret %struct._object* %call, !dbg !998
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_ismine(%struct.SemLockObject* %self) #0 {
entry:
  %self.addr = alloca %struct.SemLockObject*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !496, metadata !574), !dbg !999
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !1000, !tbaa !570
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 3, !dbg !1001
  %1 = load i32, i32* %count, align 4, !dbg !1001, !tbaa !744
  %cmp = icmp sgt i32 %1, 0, !dbg !1002
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !1003

land.rhs:                                         ; preds = %entry
  %call = call i64 @PyThread_get_thread_ident(), !dbg !1004
  %2 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !1006, !tbaa !570
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %2, i32 0, i32 2, !dbg !1007
  %3 = load i64, i64* %last_tid, align 8, !dbg !1007, !tbaa !751
  %cmp1 = icmp eq i64 %call, %3, !dbg !1008
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %cmp1, %land.rhs ]
  %land.ext = zext i1 %4 to i32, !dbg !1009
  %conv = sext i32 %land.ext to i64, !dbg !1011
  %call2 = call %struct._object* @PyBool_FromLong(i64 %conv), !dbg !1012
  ret %struct._object* %call2, !dbg !1013
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_getvalue(%struct.SemLockObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SemLockObject*, align 8
  %sval = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !499, metadata !574), !dbg !1014
  %0 = bitcast i32* %sval to i8*, !dbg !1015
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1015
  call void @llvm.dbg.declare(metadata i32* %sval, metadata !500, metadata !574), !dbg !1016
  %1 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !1017, !tbaa !570
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %1, i32 0, i32 1, !dbg !1019
  %2 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !1019, !tbaa !579
  %call = call i32 @sem_getvalue(%union.sem_t* %2, i32* %sval) #2, !dbg !1020
  %cmp = icmp slt i32 %call, 0, !dbg !1021
  br i1 %cmp, label %if.then, label %if.end, !dbg !1022

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1), !dbg !1023
  store %struct._object* %call1, %struct._object** %retval, !dbg !1024
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1024

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %sval, align 4, !dbg !1025, !tbaa !619
  %cmp2 = icmp slt i32 %3, 0, !dbg !1027
  br i1 %cmp2, label %if.then.3, label %if.end.4, !dbg !1028

if.then.3:                                        ; preds = %if.end
  store i32 0, i32* %sval, align 4, !dbg !1029, !tbaa !619
  br label %if.end.4, !dbg !1030

if.end.4:                                         ; preds = %if.then.3, %if.end
  %4 = load i32, i32* %sval, align 4, !dbg !1031, !tbaa !619
  %conv = sext i32 %4 to i64, !dbg !1032
  %call5 = call %struct._object* @PyLong_FromLong(i64 %conv), !dbg !1033
  store %struct._object* %call5, %struct._object** %retval, !dbg !1034
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1034

cleanup:                                          ; preds = %if.end.4, %if.then
  %5 = bitcast i32* %sval to i8*, !dbg !1035
  call void @llvm.lifetime.end(i64 4, i8* %5) #2, !dbg !1035
  %6 = load %struct._object*, %struct._object** %retval, !dbg !1035
  ret %struct._object* %6, !dbg !1035
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_iszero(%struct.SemLockObject* %self) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.SemLockObject*, align 8
  %sval = alloca i32, align 4
  %cleanup.dest.slot = alloca i32
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !503, metadata !574), !dbg !1036
  %0 = bitcast i32* %sval to i8*, !dbg !1037
  call void @llvm.lifetime.start(i64 4, i8* %0) #2, !dbg !1037
  call void @llvm.dbg.declare(metadata i32* %sval, metadata !504, metadata !574), !dbg !1038
  %1 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !1039, !tbaa !570
  %handle = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %1, i32 0, i32 1, !dbg !1041
  %2 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !1041, !tbaa !579
  %call = call i32 @sem_getvalue(%union.sem_t* %2, i32* %sval) #2, !dbg !1042
  %cmp = icmp slt i32 %call, 0, !dbg !1043
  br i1 %cmp, label %if.then, label %if.end, !dbg !1044

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @_PyMp_SetError(%struct._object* null, i32 -1), !dbg !1045
  store %struct._object* %call1, %struct._object** %retval, !dbg !1046
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1046

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %sval, align 4, !dbg !1047, !tbaa !619
  %conv = sext i32 %3 to i64, !dbg !1048
  %cmp2 = icmp eq i64 %conv, 0, !dbg !1049
  %conv3 = zext i1 %cmp2 to i32, !dbg !1049
  %conv4 = sext i32 %conv3 to i64, !dbg !1048
  %call5 = call %struct._object* @PyBool_FromLong(i64 %conv4), !dbg !1050
  store %struct._object* %call5, %struct._object** %retval, !dbg !1051
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1051

cleanup:                                          ; preds = %if.end, %if.then
  %4 = bitcast i32* %sval to i8*, !dbg !1052
  call void @llvm.lifetime.end(i64 4, i8* %4) #2, !dbg !1052
  %5 = load %struct._object*, %struct._object** %retval, !dbg !1052
  ret %struct._object* %5, !dbg !1052
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
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !511, metadata !574), !dbg !1053
  store %struct._object* %args, %struct._object** %args.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._object** %args.addr, metadata !512, metadata !574), !dbg !1054
  %0 = bitcast %union.sem_t** %handle to i8*, !dbg !1055
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1055
  call void @llvm.dbg.declare(metadata %union.sem_t** %handle, metadata !513, metadata !574), !dbg !1056
  %1 = bitcast i32* %kind to i8*, !dbg !1057
  call void @llvm.lifetime.start(i64 4, i8* %1) #2, !dbg !1057
  call void @llvm.dbg.declare(metadata i32* %kind, metadata !514, metadata !574), !dbg !1058
  %2 = bitcast i32* %maxvalue to i8*, !dbg !1057
  call void @llvm.lifetime.start(i64 4, i8* %2) #2, !dbg !1057
  call void @llvm.dbg.declare(metadata i32* %maxvalue, metadata !515, metadata !574), !dbg !1059
  %3 = bitcast i8** %name to i8*, !dbg !1060
  call void @llvm.lifetime.start(i64 8, i8* %3) #2, !dbg !1060
  call void @llvm.dbg.declare(metadata i8** %name, metadata !516, metadata !574), !dbg !1061
  %4 = bitcast i8** %name_copy to i8*, !dbg !1060
  call void @llvm.lifetime.start(i64 8, i8* %4) #2, !dbg !1060
  call void @llvm.dbg.declare(metadata i8** %name_copy, metadata !517, metadata !574), !dbg !1062
  store i8* null, i8** %name_copy, align 8, !dbg !1062, !tbaa !570
  %5 = load %struct._object*, %struct._object** %args.addr, align 8, !dbg !1063, !tbaa !570
  %call = call i32 (%struct._object*, i8*, ...) @_PyArg_ParseTuple_SizeT(%struct._object* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0), %union.sem_t** %handle, i32* %kind, i32* %maxvalue, i8** %name), !dbg !1065
  %tobool = icmp ne i32 %call, 0, !dbg !1065
  br i1 %tobool, label %if.end, label %if.then, !dbg !1066

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1067
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1067

if.end:                                           ; preds = %entry
  %6 = load i8*, i8** %name, align 8, !dbg !1068, !tbaa !570
  %cmp = icmp ne i8* %6, null, !dbg !1070
  br i1 %cmp, label %if.then.1, label %if.end.9, !dbg !1071

if.then.1:                                        ; preds = %if.end
  %7 = load i8*, i8** %name, align 8, !dbg !1072, !tbaa !570
  %call2 = call i64 @strlen(i8* %7) #7, !dbg !1074
  %add = add i64 %call2, 1, !dbg !1075
  %call3 = call i8* @PyMem_Malloc(i64 %add), !dbg !1076
  store i8* %call3, i8** %name_copy, align 8, !dbg !1077, !tbaa !570
  %8 = load i8*, i8** %name_copy, align 8, !dbg !1078, !tbaa !570
  %cmp4 = icmp eq i8* %8, null, !dbg !1080
  br i1 %cmp4, label %if.then.5, label %if.end.7, !dbg !1081

if.then.5:                                        ; preds = %if.then.1
  %call6 = call %struct._object* @PyErr_NoMemory(), !dbg !1082
  store %struct._object* %call6, %struct._object** %retval, !dbg !1083
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1083

if.end.7:                                         ; preds = %if.then.1
  %9 = load i8*, i8** %name_copy, align 8, !dbg !1084, !tbaa !570
  %10 = load i8*, i8** %name, align 8, !dbg !1085, !tbaa !570
  %call8 = call i8* @strcpy(i8* %9, i8* %10) #2, !dbg !1086
  br label %if.end.9, !dbg !1087

if.end.9:                                         ; preds = %if.end.7, %if.end
  %11 = load i8*, i8** %name, align 8, !dbg !1088, !tbaa !570
  %cmp10 = icmp ne i8* %11, null, !dbg !1090
  br i1 %cmp10, label %if.then.11, label %if.end.17, !dbg !1091

if.then.11:                                       ; preds = %if.end.9
  %12 = load i8*, i8** %name, align 8, !dbg !1092, !tbaa !570
  %call12 = call %union.sem_t* (i8*, i32, ...) @sem_open(i8* %12, i32 0) #2, !dbg !1094
  store %union.sem_t* %call12, %union.sem_t** %handle, align 8, !dbg !1095, !tbaa !570
  %13 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !1096, !tbaa !570
  %cmp13 = icmp eq %union.sem_t* %13, null, !dbg !1098
  br i1 %cmp13, label %if.then.14, label %if.end.16, !dbg !1099

if.then.14:                                       ; preds = %if.then.11
  %14 = load i8*, i8** %name_copy, align 8, !dbg !1100, !tbaa !570
  call void @PyMem_Free(i8* %14), !dbg !1102
  %15 = load %struct._object*, %struct._object** @PyExc_OSError, align 8, !dbg !1103, !tbaa !570
  %call15 = call %struct._object* @PyErr_SetFromErrno(%struct._object* %15), !dbg !1104
  store %struct._object* %call15, %struct._object** %retval, !dbg !1105
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1105

if.end.16:                                        ; preds = %if.then.11
  br label %if.end.17, !dbg !1106

if.end.17:                                        ; preds = %if.end.16, %if.end.9
  %16 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1107, !tbaa !570
  %17 = load %union.sem_t*, %union.sem_t** %handle, align 8, !dbg !1108, !tbaa !570
  %18 = load i32, i32* %kind, align 4, !dbg !1109, !tbaa !619
  %19 = load i32, i32* %maxvalue, align 4, !dbg !1110, !tbaa !619
  %20 = load i8*, i8** %name_copy, align 8, !dbg !1111, !tbaa !570
  %call18 = call %struct._object* @newsemlockobject(%struct._typeobject* %16, %union.sem_t* %17, i32 %18, i32 %19, i8* %20), !dbg !1112
  store %struct._object* %call18, %struct._object** %retval, !dbg !1113
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1113

cleanup:                                          ; preds = %if.end.17, %if.then.14, %if.then.5, %if.then
  %21 = bitcast i8** %name_copy to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 8, i8* %21) #2, !dbg !1114
  %22 = bitcast i8** %name to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 8, i8* %22) #2, !dbg !1114
  %23 = bitcast i32* %maxvalue to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %23) #2, !dbg !1114
  %24 = bitcast i32* %kind to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 4, i8* %24) #2, !dbg !1114
  %25 = bitcast %union.sem_t** %handle to i8*, !dbg !1114
  call void @llvm.lifetime.end(i64 8, i8* %25) #2, !dbg !1114
  %26 = load %struct._object*, %struct._object** %retval, !dbg !1114
  ret %struct._object* %26, !dbg !1114
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @semlock_afterfork(%struct.SemLockObject* %self) #0 {
entry:
  %self.addr = alloca %struct.SemLockObject*, align 8
  store %struct.SemLockObject* %self, %struct.SemLockObject** %self.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self.addr, metadata !530, metadata !574), !dbg !1115
  %0 = load %struct.SemLockObject*, %struct.SemLockObject** %self.addr, align 8, !dbg !1116, !tbaa !570
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %0, i32 0, i32 3, !dbg !1117
  store i32 0, i32* %count, align 4, !dbg !1118, !tbaa !744
  %1 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1119, !tbaa !708
  %inc = add i64 %1, 1, !dbg !1119
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8, !dbg !1119, !tbaa !708
  ret %struct._object* @_Py_NoneStruct, !dbg !1120
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

declare i32 @_PyArg_ParseTupleAndKeywords_SizeT(%struct._object*, %struct._object*, i8*, i8**, ...) #3

declare i64 @PyThread_get_thread_ident() #3

declare double @PyFloat_AsDouble(%struct._object*) #3

declare %struct._object* @PyErr_Occurred() #3

; Function Attrs: nounwind
declare i32 @gettimeofday(%struct.timeval*, %struct.timezone*) #4

declare %struct._object* @PyErr_SetFromErrno(%struct._object*) #3

declare %struct._ts* @PyEval_SaveThread() #3

declare i32 @sem_wait(%union.sem_t*) #3

; Function Attrs: nounwind
declare i32 @sem_trywait(%union.sem_t*) #4

declare i32 @sem_timedwait(%union.sem_t*, %struct.timespec*) #3

declare void @PyEval_RestoreThread(%struct._ts*) #3

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

declare i32 @PyErr_CheckSignals() #3

declare void @PyErr_SetString(%struct._object*, i8*) #3

; Function Attrs: nounwind
declare i32 @sem_getvalue(%union.sem_t*, i32*) #4

; Function Attrs: nounwind
declare i32 @sem_post(%union.sem_t*) #4

declare %struct._object* @PyLong_FromLong(i64) #3

declare %struct._object* @PyBool_FromLong(i64) #3

declare i8* @PyMem_Malloc(i64) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #6

declare %struct._object* @PyErr_NoMemory() #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #4

; Function Attrs: nounwind
declare %union.sem_t* @sem_open(i8*, i32, ...) #4

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
  %cleanup.dest.slot = alloca i32
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %struct._typeobject** %type.addr, metadata !522, metadata !574), !dbg !1121
  store %union.sem_t* %handle, %union.sem_t** %handle.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata %union.sem_t** %handle.addr, metadata !523, metadata !574), !dbg !1122
  store i32 %kind, i32* %kind.addr, align 4, !tbaa !619
  call void @llvm.dbg.declare(metadata i32* %kind.addr, metadata !524, metadata !574), !dbg !1123
  store i32 %maxvalue, i32* %maxvalue.addr, align 4, !tbaa !619
  call void @llvm.dbg.declare(metadata i32* %maxvalue.addr, metadata !525, metadata !574), !dbg !1124
  store i8* %name, i8** %name.addr, align 8, !tbaa !570
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !526, metadata !574), !dbg !1125
  %0 = bitcast %struct.SemLockObject** %self to i8*, !dbg !1126
  call void @llvm.lifetime.start(i64 8, i8* %0) #2, !dbg !1126
  call void @llvm.dbg.declare(metadata %struct.SemLockObject** %self, metadata !527, metadata !574), !dbg !1127
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8, !dbg !1128, !tbaa !570
  %call = call %struct._object* @_PyObject_New(%struct._typeobject* %1), !dbg !1129
  %2 = bitcast %struct._object* %call to %struct.SemLockObject*, !dbg !1130
  store %struct.SemLockObject* %2, %struct.SemLockObject** %self, align 8, !dbg !1131, !tbaa !570
  %3 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1132, !tbaa !570
  %tobool = icmp ne %struct.SemLockObject* %3, null, !dbg !1132
  br i1 %tobool, label %if.end, label %if.then, !dbg !1134

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval, !dbg !1135
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1135

if.end:                                           ; preds = %entry
  %4 = load %union.sem_t*, %union.sem_t** %handle.addr, align 8, !dbg !1136, !tbaa !570
  %5 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1137, !tbaa !570
  %handle1 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %5, i32 0, i32 1, !dbg !1138
  store %union.sem_t* %4, %union.sem_t** %handle1, align 8, !dbg !1139, !tbaa !579
  %6 = load i32, i32* %kind.addr, align 4, !dbg !1140, !tbaa !619
  %7 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1141, !tbaa !570
  %kind2 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %7, i32 0, i32 5, !dbg !1142
  store i32 %6, i32* %kind2, align 4, !dbg !1143, !tbaa !738
  %8 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1144, !tbaa !570
  %count = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %8, i32 0, i32 3, !dbg !1145
  store i32 0, i32* %count, align 4, !dbg !1146, !tbaa !744
  %9 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1147, !tbaa !570
  %last_tid = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %9, i32 0, i32 2, !dbg !1148
  store i64 0, i64* %last_tid, align 8, !dbg !1149, !tbaa !751
  %10 = load i32, i32* %maxvalue.addr, align 4, !dbg !1150, !tbaa !619
  %11 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1151, !tbaa !570
  %maxvalue3 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %11, i32 0, i32 4, !dbg !1152
  store i32 %10, i32* %maxvalue3, align 4, !dbg !1153, !tbaa !968
  %12 = load i8*, i8** %name.addr, align 8, !dbg !1154, !tbaa !570
  %13 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1155, !tbaa !570
  %name4 = getelementptr inbounds %struct.SemLockObject, %struct.SemLockObject* %13, i32 0, i32 6, !dbg !1156
  store i8* %12, i8** %name4, align 8, !dbg !1157, !tbaa !591
  %14 = load %struct.SemLockObject*, %struct.SemLockObject** %self, align 8, !dbg !1158, !tbaa !570
  %15 = bitcast %struct.SemLockObject* %14 to %struct._object*, !dbg !1159
  store %struct._object* %15, %struct._object** %retval, !dbg !1160
  store i32 1, i32* %cleanup.dest.slot
  br label %cleanup, !dbg !1160

cleanup:                                          ; preds = %if.end, %if.then
  %16 = bitcast %struct.SemLockObject** %self to i8*, !dbg !1161
  call void @llvm.lifetime.end(i64 8, i8* %16) #2, !dbg !1161
  %17 = load %struct._object*, %struct._object** %retval, !dbg !1161
  ret %struct._object* %17, !dbg !1161
}

declare %struct._object* @_PyObject_New(%struct._typeobject*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { nounwind }
attributes #3 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!566, !567, !568}
!llvm.ident = !{!569}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)", isOptimized: true, runtimeVersion: 0, emissionKind: 1, enums: !2, retainedTypes: !8, subprograms: !378, globals: !546)
!1 = !DIFile(filename: "semaphore.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 12, size: 32, align: 32, elements: !5)
!4 = !DIFile(filename: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1/Modules/_multiprocessing/semaphore.c", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "RECURSIVE_MUTEX", value: 0)
!7 = !DIEnumerator(name: "SEMAPHORE", value: 1)
!8 = !{!9, !355, !21, !94, !365}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64, align: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyObject", file: !11, line: 109, baseType: !12)
!11 = !DIFile(filename: "./Include/object.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!12 = !DICompositeType(tag: DW_TAG_structure_type, name: "_object", file: !11, line: 105, size: 128, align: 64, elements: !13)
!13 = !{!14, !22}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "ob_refcnt", scope: !12, file: !11, line: 107, baseType: !15, size: 64, align: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_ssize_t", file: !16, line: 177, baseType: !17)
!16 = !DIFile(filename: "./Include/pyport.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !18, line: 102, baseType: !19)
!18 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !20, line: 181, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!21 = !DIBasicType(name: "long int", size: 64, align: 64, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "ob_type", scope: !12, file: !11, line: 108, baseType: !23, size: 64, align: 64, offset: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64, align: 64)
!24 = !DICompositeType(tag: DW_TAG_structure_type, name: "_typeobject", file: !11, line: 334, size: 3200, align: 64, elements: !25)
!25 = !{!26, !32, !36, !37, !38, !43, !107, !112, !117, !118, !123, !175, !206, !218, !224, !225, !226, !228, !230, !261, !262, !263, !272, !273, !278, !279, !281, !283, !293, !303, !321, !322, !323, !325, !327, !328, !330, !335, !340, !345, !346, !347, !348, !349, !350, !351, !352, !354}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !24, file: !11, line: 335, baseType: !27, size: 192, align: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyVarObject", file: !11, line: 114, baseType: !28)
!28 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 111, size: 192, align: 64, elements: !29)
!29 = !{!30, !31}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !28, file: !11, line: 112, baseType: !10, size: 128, align: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "ob_size", scope: !28, file: !11, line: 113, baseType: !15, size: 64, align: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tp_name", scope: !24, file: !11, line: 336, baseType: !33, size: 64, align: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64, align: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tp_basicsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "tp_itemsize", scope: !24, file: !11, line: 337, baseType: !15, size: 64, align: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dealloc", scope: !24, file: !11, line: 341, baseType: !39, size: 64, align: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "destructor", file: !11, line: 308, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64, align: 64)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !9}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "tp_print", scope: !24, file: !11, line: 342, baseType: !44, size: 64, align: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "printfunc", file: !11, line: 314, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64, align: 64)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !9, !49, !48}
!48 = !DIBasicType(name: "int", size: 32, align: 32, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64, align: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !18, line: 48, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !52, line: 246, size: 1728, align: 64, elements: !53)
!52 = !DIFile(filename: "/usr/include/libio.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!53 = !{!54, !55, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !75, !76, !77, !78, !80, !82, !84, !88, !91, !93, !95, !96, !97, !98, !102, !103}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !51, file: !52, line: 247, baseType: !48, size: 32, align: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !51, file: !52, line: 252, baseType: !56, size: 64, align: 64, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64, align: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !51, file: !52, line: 253, baseType: !56, size: 64, align: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !51, file: !52, line: 254, baseType: !56, size: 64, align: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !51, file: !52, line: 255, baseType: !56, size: 64, align: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !51, file: !52, line: 256, baseType: !56, size: 64, align: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !51, file: !52, line: 257, baseType: !56, size: 64, align: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !51, file: !52, line: 258, baseType: !56, size: 64, align: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !51, file: !52, line: 259, baseType: !56, size: 64, align: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !51, file: !52, line: 261, baseType: !56, size: 64, align: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !51, file: !52, line: 262, baseType: !56, size: 64, align: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !51, file: !52, line: 263, baseType: !56, size: 64, align: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !51, file: !52, line: 265, baseType: !68, size: 64, align: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64, align: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !52, line: 161, size: 192, align: 64, elements: !70)
!70 = !{!71, !72, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !69, file: !52, line: 162, baseType: !68, size: 64, align: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !69, file: !52, line: 163, baseType: !73, size: 64, align: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64, align: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !69, file: !52, line: 167, baseType: !48, size: 32, align: 32, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !51, file: !52, line: 267, baseType: !73, size: 64, align: 64, offset: 832)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !51, file: !52, line: 269, baseType: !48, size: 32, align: 32, offset: 896)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !51, file: !52, line: 273, baseType: !48, size: 32, align: 32, offset: 928)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !51, file: !52, line: 275, baseType: !79, size: 64, align: 64, offset: 960)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !20, line: 140, baseType: !21)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !51, file: !52, line: 279, baseType: !81, size: 16, align: 16, offset: 1024)
!81 = !DIBasicType(name: "unsigned short", size: 16, align: 16, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !51, file: !52, line: 280, baseType: !83, size: 8, align: 8, offset: 1040)
!83 = !DIBasicType(name: "signed char", size: 8, align: 8, encoding: DW_ATE_signed_char)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !51, file: !52, line: 281, baseType: !85, size: 8, align: 8, offset: 1048)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8, align: 8, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 1)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !51, file: !52, line: 285, baseType: !89, size: 64, align: 64, offset: 1088)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64, align: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !52, line: 155, baseType: null)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !51, file: !52, line: 294, baseType: !92, size: 64, align: 64, offset: 1152)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !20, line: 141, baseType: !21)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !51, file: !52, line: 303, baseType: !94, size: 64, align: 64, offset: 1216)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64, align: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !51, file: !52, line: 304, baseType: !94, size: 64, align: 64, offset: 1280)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !51, file: !52, line: 305, baseType: !94, size: 64, align: 64, offset: 1344)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !51, file: !52, line: 306, baseType: !94, size: 64, align: 64, offset: 1408)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !51, file: !52, line: 307, baseType: !99, size: 64, align: 64, offset: 1472)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 62, baseType: !101)
!100 = !DIFile(filename: "/opt/devel/yoonseung.kim/llvm_work/build/bin/../lib/clang/3.7.1/include/stddef.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!101 = !DIBasicType(name: "long unsigned int", size: 64, align: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !51, file: !52, line: 309, baseType: !48, size: 32, align: 32, offset: 1536)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !51, file: !52, line: 311, baseType: !104, size: 160, align: 8, offset: 1568)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 160, align: 8, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 20)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattr", scope: !24, file: !11, line: 343, baseType: !108, size: 64, align: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrfunc", file: !11, line: 316, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64, align: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!9, !9, !56}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattr", scope: !24, file: !11, line: 344, baseType: !113, size: 64, align: 64, offset: 576)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrfunc", file: !11, line: 318, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64, align: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!48, !9, !56, !9}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "tp_reserved", scope: !24, file: !11, line: 345, baseType: !94, size: 64, align: 64, offset: 640)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "tp_repr", scope: !24, file: !11, line: 346, baseType: !119, size: 64, align: 64, offset: 704)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "reprfunc", file: !11, line: 320, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64, align: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{!9, !9}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_number", scope: !24, file: !11, line: 350, baseType: !124, size: 64, align: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64, align: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyNumberMethods", file: !11, line: 278, baseType: !126)
!126 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 236, size: 2176, align: 64, elements: !127)
!127 = !{!128, !133, !134, !135, !136, !137, !142, !144, !145, !146, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "nb_add", scope: !126, file: !11, line: 241, baseType: !129, size: 64, align: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "binaryfunc", file: !11, line: 166, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64, align: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!9, !9, !9}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "nb_subtract", scope: !126, file: !11, line: 242, baseType: !129, size: 64, align: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "nb_multiply", scope: !126, file: !11, line: 243, baseType: !129, size: 64, align: 64, offset: 128)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "nb_remainder", scope: !126, file: !11, line: 244, baseType: !129, size: 64, align: 64, offset: 192)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "nb_divmod", scope: !126, file: !11, line: 245, baseType: !129, size: 64, align: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "nb_power", scope: !126, file: !11, line: 246, baseType: !138, size: 64, align: 64, offset: 320)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "ternaryfunc", file: !11, line: 167, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64, align: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!9, !9, !9, !9}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_negative", scope: !126, file: !11, line: 247, baseType: !143, size: 64, align: 64, offset: 384)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "unaryfunc", file: !11, line: 165, baseType: !120)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "nb_positive", scope: !126, file: !11, line: 248, baseType: !143, size: 64, align: 64, offset: 448)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "nb_absolute", scope: !126, file: !11, line: 249, baseType: !143, size: 64, align: 64, offset: 512)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "nb_bool", scope: !126, file: !11, line: 250, baseType: !147, size: 64, align: 64, offset: 576)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "inquiry", file: !11, line: 168, baseType: !148)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64, align: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!48, !9}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "nb_invert", scope: !126, file: !11, line: 251, baseType: !143, size: 64, align: 64, offset: 640)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "nb_lshift", scope: !126, file: !11, line: 252, baseType: !129, size: 64, align: 64, offset: 704)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "nb_rshift", scope: !126, file: !11, line: 253, baseType: !129, size: 64, align: 64, offset: 768)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "nb_and", scope: !126, file: !11, line: 254, baseType: !129, size: 64, align: 64, offset: 832)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "nb_xor", scope: !126, file: !11, line: 255, baseType: !129, size: 64, align: 64, offset: 896)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "nb_or", scope: !126, file: !11, line: 256, baseType: !129, size: 64, align: 64, offset: 960)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "nb_int", scope: !126, file: !11, line: 257, baseType: !143, size: 64, align: 64, offset: 1024)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "nb_reserved", scope: !126, file: !11, line: 258, baseType: !94, size: 64, align: 64, offset: 1088)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "nb_float", scope: !126, file: !11, line: 259, baseType: !143, size: 64, align: 64, offset: 1152)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_add", scope: !126, file: !11, line: 261, baseType: !129, size: 64, align: 64, offset: 1216)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_subtract", scope: !126, file: !11, line: 262, baseType: !129, size: 64, align: 64, offset: 1280)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_multiply", scope: !126, file: !11, line: 263, baseType: !129, size: 64, align: 64, offset: 1344)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_remainder", scope: !126, file: !11, line: 264, baseType: !129, size: 64, align: 64, offset: 1408)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_power", scope: !126, file: !11, line: 265, baseType: !138, size: 64, align: 64, offset: 1472)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_lshift", scope: !126, file: !11, line: 266, baseType: !129, size: 64, align: 64, offset: 1536)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_rshift", scope: !126, file: !11, line: 267, baseType: !129, size: 64, align: 64, offset: 1600)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_and", scope: !126, file: !11, line: 268, baseType: !129, size: 64, align: 64, offset: 1664)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_xor", scope: !126, file: !11, line: 269, baseType: !129, size: 64, align: 64, offset: 1728)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_or", scope: !126, file: !11, line: 270, baseType: !129, size: 64, align: 64, offset: 1792)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "nb_floor_divide", scope: !126, file: !11, line: 272, baseType: !129, size: 64, align: 64, offset: 1856)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "nb_true_divide", scope: !126, file: !11, line: 273, baseType: !129, size: 64, align: 64, offset: 1920)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_floor_divide", scope: !126, file: !11, line: 274, baseType: !129, size: 64, align: 64, offset: 1984)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "nb_inplace_true_divide", scope: !126, file: !11, line: 275, baseType: !129, size: 64, align: 64, offset: 2048)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "nb_index", scope: !126, file: !11, line: 277, baseType: !143, size: 64, align: 64, offset: 2112)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_sequence", scope: !24, file: !11, line: 351, baseType: !176, size: 64, align: 64, offset: 832)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64, align: 64)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "PySequenceMethods", file: !11, line: 292, baseType: !178)
!178 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 280, size: 640, align: 64, elements: !179)
!179 = !{!180, !185, !186, !191, !192, !193, !198, !199, !204, !205}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "sq_length", scope: !178, file: !11, line: 281, baseType: !181, size: 64, align: 64)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "lenfunc", file: !11, line: 169, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64, align: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!15, !9}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "sq_concat", scope: !178, file: !11, line: 282, baseType: !129, size: 64, align: 64, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sq_repeat", scope: !178, file: !11, line: 283, baseType: !187, size: 64, align: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeargfunc", file: !11, line: 170, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64, align: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!9, !9, !15}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "sq_item", scope: !178, file: !11, line: 284, baseType: !187, size: 64, align: 64, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_slice", scope: !178, file: !11, line: 285, baseType: !94, size: 64, align: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "sq_ass_item", scope: !178, file: !11, line: 286, baseType: !194, size: 64, align: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssizeobjargproc", file: !11, line: 172, baseType: !195)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64, align: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!48, !9, !15, !9}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "was_sq_ass_slice", scope: !178, file: !11, line: 287, baseType: !94, size: 64, align: 64, offset: 384)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "sq_contains", scope: !178, file: !11, line: 288, baseType: !200, size: 64, align: 64, offset: 448)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjproc", file: !11, line: 231, baseType: !201)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64, align: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!48, !9, !9}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_concat", scope: !178, file: !11, line: 290, baseType: !129, size: 64, align: 64, offset: 512)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "sq_inplace_repeat", scope: !178, file: !11, line: 291, baseType: !187, size: 64, align: 64, offset: 576)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_mapping", scope: !24, file: !11, line: 352, baseType: !207, size: 64, align: 64, offset: 896)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64, align: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMappingMethods", file: !11, line: 298, baseType: !209)
!209 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 294, size: 192, align: 64, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "mp_length", scope: !209, file: !11, line: 295, baseType: !181, size: 64, align: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "mp_subscript", scope: !209, file: !11, line: 296, baseType: !129, size: 64, align: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mp_ass_subscript", scope: !209, file: !11, line: 297, baseType: !214, size: 64, align: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "objobjargproc", file: !11, line: 174, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64, align: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!48, !9, !9, !9}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tp_hash", scope: !24, file: !11, line: 356, baseType: !219, size: 64, align: 64, offset: 960)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashfunc", file: !11, line: 321, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64, align: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!223, !9}
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_hash_t", file: !16, line: 186, baseType: !15)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "tp_call", scope: !24, file: !11, line: 357, baseType: !138, size: 64, align: 64, offset: 1024)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tp_str", scope: !24, file: !11, line: 358, baseType: !119, size: 64, align: 64, offset: 1088)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getattro", scope: !24, file: !11, line: 359, baseType: !227, size: 64, align: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "getattrofunc", file: !11, line: 317, baseType: !130)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "tp_setattro", scope: !24, file: !11, line: 360, baseType: !229, size: 64, align: 64, offset: 1216)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "setattrofunc", file: !11, line: 319, baseType: !215)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "tp_as_buffer", scope: !24, file: !11, line: 363, baseType: !231, size: 64, align: 64, offset: 1280)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64, align: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyBufferProcs", file: !11, line: 304, baseType: !233)
!233 = !DICompositeType(tag: DW_TAG_structure_type, file: !11, line: 301, size: 128, align: 64, elements: !234)
!234 = !{!235, !256}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "bf_getbuffer", scope: !233, file: !11, line: 302, baseType: !236, size: 64, align: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "getbufferproc", file: !11, line: 193, baseType: !237)
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64, align: 64)
!238 = !DISubroutineType(types: !239)
!239 = !{!48, !9, !240, !48}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64, align: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_buffer", file: !11, line: 191, baseType: !242)
!242 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferinfo", file: !11, line: 178, size: 640, align: 64, elements: !243)
!243 = !{!244, !245, !246, !247, !248, !249, !250, !251, !253, !254, !255}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !242, file: !11, line: 179, baseType: !94, size: 64, align: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "obj", scope: !242, file: !11, line: 180, baseType: !9, size: 64, align: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !242, file: !11, line: 181, baseType: !15, size: 64, align: 64, offset: 128)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "itemsize", scope: !242, file: !11, line: 182, baseType: !15, size: 64, align: 64, offset: 192)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "readonly", scope: !242, file: !11, line: 184, baseType: !48, size: 32, align: 32, offset: 256)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "ndim", scope: !242, file: !11, line: 185, baseType: !48, size: 32, align: 32, offset: 288)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "format", scope: !242, file: !11, line: 186, baseType: !56, size: 64, align: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !242, file: !11, line: 187, baseType: !252, size: 64, align: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64, align: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "strides", scope: !242, file: !11, line: 188, baseType: !252, size: 64, align: 64, offset: 448)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "suboffsets", scope: !242, file: !11, line: 189, baseType: !252, size: 64, align: 64, offset: 512)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "internal", scope: !242, file: !11, line: 190, baseType: !94, size: 64, align: 64, offset: 576)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "bf_releasebuffer", scope: !233, file: !11, line: 303, baseType: !257, size: 64, align: 64, offset: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "releasebufferproc", file: !11, line: 194, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64, align: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !9, !240}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tp_flags", scope: !24, file: !11, line: 366, baseType: !101, size: 64, align: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "tp_doc", scope: !24, file: !11, line: 368, baseType: !33, size: 64, align: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "tp_traverse", scope: !24, file: !11, line: 372, baseType: !264, size: 64, align: 64, offset: 1472)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "traverseproc", file: !11, line: 233, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64, align: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!48, !9, !268, !94}
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "visitproc", file: !11, line: 232, baseType: !269)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64, align: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!48, !9, !94}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "tp_clear", scope: !24, file: !11, line: 375, baseType: !147, size: 64, align: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "tp_richcompare", scope: !24, file: !11, line: 379, baseType: !274, size: 64, align: 64, offset: 1600)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "richcmpfunc", file: !11, line: 322, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64, align: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!9, !9, !9, !48}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklistoffset", scope: !24, file: !11, line: 382, baseType: !15, size: 64, align: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iter", scope: !24, file: !11, line: 385, baseType: !280, size: 64, align: 64, offset: 1728)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "getiterfunc", file: !11, line: 323, baseType: !120)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "tp_iternext", scope: !24, file: !11, line: 386, baseType: !282, size: 64, align: 64, offset: 1792)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "iternextfunc", file: !11, line: 324, baseType: !120)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "tp_methods", scope: !24, file: !11, line: 389, baseType: !284, size: 64, align: 64, offset: 1856)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64, align: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMethodDef", file: !286, line: 40, size: 256, align: 64, elements: !287)
!286 = !DIFile(filename: "./Include/methodobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!287 = !{!288, !289, !291, !292}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ml_name", scope: !285, file: !286, line: 41, baseType: !33, size: 64, align: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "ml_meth", scope: !285, file: !286, line: 42, baseType: !290, size: 64, align: 64, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyCFunction", file: !286, line: 18, baseType: !130)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "ml_flags", scope: !285, file: !286, line: 43, baseType: !48, size: 32, align: 32, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "ml_doc", scope: !285, file: !286, line: 45, baseType: !33, size: 64, align: 64, offset: 192)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "tp_members", scope: !24, file: !11, line: 390, baseType: !294, size: 64, align: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64, align: 64)
!295 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyMemberDef", file: !296, line: 18, size: 320, align: 64, elements: !297)
!296 = !DIFile(filename: "./Include/structmember.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!297 = !{!298, !299, !300, !301, !302}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !296, line: 19, baseType: !56, size: 64, align: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !295, file: !296, line: 20, baseType: !48, size: 32, align: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !295, file: !296, line: 21, baseType: !15, size: 64, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !296, line: 22, baseType: !48, size: 32, align: 32, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !295, file: !296, line: 23, baseType: !56, size: 64, align: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "tp_getset", scope: !24, file: !11, line: 391, baseType: !304, size: 64, align: 64, offset: 1984)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64, align: 64)
!305 = !DICompositeType(tag: DW_TAG_structure_type, name: "PyGetSetDef", file: !306, line: 11, size: 320, align: 64, elements: !307)
!306 = !DIFile(filename: "./Include/descrobject.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!307 = !{!308, !309, !314, !319, !320}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !305, file: !306, line: 12, baseType: !56, size: 64, align: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !305, file: !306, line: 13, baseType: !310, size: 64, align: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "getter", file: !306, line: 8, baseType: !311)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64, align: 64)
!312 = !DISubroutineType(types: !313)
!313 = !{!9, !9, !94}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !305, file: !306, line: 14, baseType: !315, size: 64, align: 64, offset: 128)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "setter", file: !306, line: 9, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64, align: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!48, !9, !9, !94}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !305, file: !306, line: 15, baseType: !56, size: 64, align: 64, offset: 192)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "closure", scope: !305, file: !306, line: 16, baseType: !94, size: 64, align: 64, offset: 256)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "tp_base", scope: !24, file: !11, line: 392, baseType: !23, size: 64, align: 64, offset: 2048)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dict", scope: !24, file: !11, line: 393, baseType: !9, size: 64, align: 64, offset: 2112)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_get", scope: !24, file: !11, line: 394, baseType: !324, size: 64, align: 64, offset: 2176)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrgetfunc", file: !11, line: 325, baseType: !139)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "tp_descr_set", scope: !24, file: !11, line: 395, baseType: !326, size: 64, align: 64, offset: 2240)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "descrsetfunc", file: !11, line: 326, baseType: !215)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "tp_dictoffset", scope: !24, file: !11, line: 396, baseType: !15, size: 64, align: 64, offset: 2304)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "tp_init", scope: !24, file: !11, line: 397, baseType: !329, size: 64, align: 64, offset: 2368)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "initproc", file: !11, line: 327, baseType: !215)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "tp_alloc", scope: !24, file: !11, line: 398, baseType: !331, size: 64, align: 64, offset: 2432)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocfunc", file: !11, line: 329, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64, align: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!9, !23, !15}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "tp_new", scope: !24, file: !11, line: 399, baseType: !336, size: 64, align: 64, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "newfunc", file: !11, line: 328, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64, align: 64)
!338 = !DISubroutineType(types: !339)
!339 = !{!9, !23, !9, !9}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "tp_free", scope: !24, file: !11, line: 400, baseType: !341, size: 64, align: 64, offset: 2560)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "freefunc", file: !11, line: 307, baseType: !342)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64, align: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{null, !94}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "tp_is_gc", scope: !24, file: !11, line: 401, baseType: !147, size: 64, align: 64, offset: 2624)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "tp_bases", scope: !24, file: !11, line: 402, baseType: !9, size: 64, align: 64, offset: 2688)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "tp_mro", scope: !24, file: !11, line: 403, baseType: !9, size: 64, align: 64, offset: 2752)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "tp_cache", scope: !24, file: !11, line: 404, baseType: !9, size: 64, align: 64, offset: 2816)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "tp_subclasses", scope: !24, file: !11, line: 405, baseType: !9, size: 64, align: 64, offset: 2880)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "tp_weaklist", scope: !24, file: !11, line: 406, baseType: !9, size: 64, align: 64, offset: 2944)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "tp_del", scope: !24, file: !11, line: 407, baseType: !39, size: 64, align: 64, offset: 3008)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "tp_version_tag", scope: !24, file: !11, line: 410, baseType: !353, size: 32, align: 32, offset: 3072)
!353 = !DIBasicType(name: "unsigned int", size: 32, align: 32, encoding: DW_ATE_unsigned)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "tp_finalize", scope: !24, file: !11, line: 412, baseType: !39, size: 64, align: 64, offset: 3136)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !357, line: 40, baseType: !358)
!357 = !DIFile(filename: "/usr/include/bits/semaphore.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!358 = !DICompositeType(tag: DW_TAG_union_type, file: !357, line: 36, size: 256, align: 64, elements: !359)
!359 = !{!360, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !358, file: !357, line: 38, baseType: !361, size: 256, align: 8)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 256, align: 8, elements: !362)
!362 = !{!363}
!363 = !DISubrange(count: 32)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !358, file: !357, line: 39, baseType: !21, size: 64, align: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64, align: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "SemLockObject", file: !4, line: 22, baseType: !367)
!367 = !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 14, size: 448, align: 64, elements: !368)
!368 = !{!369, !370, !373, !374, !375, !376, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "ob_base", scope: !367, file: !4, line: 15, baseType: !10, size: 128, align: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !367, file: !4, line: 16, baseType: !371, size: 64, align: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "SEM_HANDLE", file: !372, line: 28, baseType: !355)
!372 = !DIFile(filename: "Modules/_multiprocessing/multiprocessing.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!373 = !DIDerivedType(tag: DW_TAG_member, name: "last_tid", scope: !367, file: !4, line: 17, baseType: !21, size: 64, align: 64, offset: 192)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !367, file: !4, line: 18, baseType: !48, size: 32, align: 32, offset: 256)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "maxvalue", scope: !367, file: !4, line: 19, baseType: !48, size: 32, align: 32, offset: 288)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !367, file: !4, line: 20, baseType: !48, size: 32, align: 32, offset: 320)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !367, file: !4, line: 21, baseType: !56, size: 64, align: 64, offset: 384)
!378 = !{!379, !384, !389, !480, !489, !494, !497, !501, !505, !518, !528, !531}
!379 = !DISubprogram(name: "_PyMp_sem_unlink", scope: !4, file: !4, line: 660, type: !131, isLocal: false, isDefinition: true, scopeLine: 661, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._object*, %struct._object*)* @_PyMp_sem_unlink, variables: !380)
!380 = !{!381, !382, !383}
!381 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "ignore", arg: 1, scope: !379, file: !4, line: 660, type: !9)
!382 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !379, file: !4, line: 660, type: !9)
!383 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !379, file: !4, line: 662, type: !56)
!384 = !DISubprogram(name: "semlock_dealloc", scope: !4, file: !4, line: 499, type: !385, isLocal: true, isDefinition: true, scopeLine: 500, flags: DIFlagPrototyped, isOptimized: true, function: void (%struct.SemLockObject*)* @semlock_dealloc, variables: !387)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !365}
!387 = !{!388}
!388 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !384, file: !4, line: 499, type: !365)
!389 = !DISubprogram(name: "semlock_acquire", scope: !4, file: !4, line: 265, type: !390, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.SemLockObject*, %struct._object*, %struct._object*)* @semlock_acquire, variables: !392)
!390 = !DISubroutineType(types: !391)
!391 = !{!9, !365, !9, !9}
!392 = !{!393, !394, !395, !396, !397, !398, !399, !401, !402, !410, !417, !418, !419}
!393 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !389, file: !4, line: 265, type: !365)
!394 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !389, file: !4, line: 265, type: !9)
!395 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !389, file: !4, line: 265, type: !9)
!396 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "blocking", scope: !389, file: !4, line: 267, type: !48)
!397 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "res", scope: !389, file: !4, line: 267, type: !48)
!398 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "err", scope: !389, file: !4, line: 267, type: !48)
!399 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout", scope: !389, file: !4, line: 268, type: !400)
!400 = !DIBasicType(name: "double", size: 64, align: 64, encoding: DW_ATE_float)
!401 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "timeout_obj", scope: !389, file: !4, line: 269, type: !9)
!402 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "deadline", scope: !389, file: !4, line: 270, type: !403)
!403 = !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !404, line: 120, size: 128, align: 64, elements: !405)
!404 = !DIFile(filename: "/usr/include/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!405 = !{!406, !408}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !403, file: !404, line: 122, baseType: !407, size: 64, align: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !20, line: 148, baseType: !21)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !403, file: !404, line: 123, baseType: !409, size: 64, align: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !20, line: 184, baseType: !21)
!410 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "now", scope: !389, file: !4, line: 271, type: !411)
!411 = !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !412, line: 30, size: 128, align: 64, elements: !413)
!412 = !DIFile(filename: "/usr/include/bits/time.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!413 = !{!414, !415}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !411, file: !412, line: 32, baseType: !407, size: 64, align: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !411, file: !412, line: 33, baseType: !416, size: 64, align: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !20, line: 150, baseType: !21)
!417 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sec", scope: !389, file: !4, line: 272, type: !21)
!418 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "nsec", scope: !389, file: !4, line: 272, type: !21)
!419 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "_save", scope: !420, file: !4, line: 305, type: !422)
!420 = distinct !DILexicalBlock(scope: !421, file: !4, line: 305, column: 9)
!421 = distinct !DILexicalBlock(scope: !389, file: !4, line: 304, column: 8)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64, align: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyThreadState", file: !424, line: 139, baseType: !425)
!424 = !DIFile(filename: "./Include/pystate.h", directory: "/home/yoonseung.kim/top/research/pythons/Python-3.4.1")
!425 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ts", file: !424, line: 69, size: 1536, align: 64, elements: !426)
!426 = !{!427, !429, !430, !450, !453, !454, !455, !456, !457, !458, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !425, file: !424, line: 72, baseType: !428, size: 64, align: 64)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64, align: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !425, file: !424, line: 73, baseType: !428, size: 64, align: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "interp", scope: !425, file: !424, line: 74, baseType: !431, size: 64, align: 64, offset: 128)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64, align: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyInterpreterState", file: !424, line: 44, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "_is", file: !424, line: 19, size: 832, align: 64, elements: !434)
!434 = !{!435, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !433, file: !424, line: 21, baseType: !436, size: 64, align: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64, align: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tstate_head", scope: !433, file: !424, line: 22, baseType: !428, size: 64, align: 64, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "modules", scope: !433, file: !424, line: 24, baseType: !9, size: 64, align: 64, offset: 128)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "modules_by_index", scope: !433, file: !424, line: 25, baseType: !9, size: 64, align: 64, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "sysdict", scope: !433, file: !424, line: 26, baseType: !9, size: 64, align: 64, offset: 256)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "builtins", scope: !433, file: !424, line: 27, baseType: !9, size: 64, align: 64, offset: 320)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "importlib", scope: !433, file: !424, line: 28, baseType: !9, size: 64, align: 64, offset: 384)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_path", scope: !433, file: !424, line: 30, baseType: !9, size: 64, align: 64, offset: 448)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "codec_search_cache", scope: !433, file: !424, line: 31, baseType: !9, size: 64, align: 64, offset: 512)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "codec_error_registry", scope: !433, file: !424, line: 32, baseType: !9, size: 64, align: 64, offset: 576)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "codecs_initialized", scope: !433, file: !424, line: 33, baseType: !48, size: 32, align: 32, offset: 640)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "fscodec_initialized", scope: !433, file: !424, line: 34, baseType: !48, size: 32, align: 32, offset: 672)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "dlopenflags", scope: !433, file: !424, line: 37, baseType: !48, size: 32, align: 32, offset: 704)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "builtins_copy", scope: !433, file: !424, line: 43, baseType: !9, size: 64, align: 64, offset: 768)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "frame", scope: !425, file: !424, line: 76, baseType: !451, size: 64, align: 64, offset: 192)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64, align: 64)
!452 = !DICompositeType(tag: DW_TAG_structure_type, name: "_frame", file: !424, line: 50, flags: DIFlagFwdDecl)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_depth", scope: !425, file: !424, line: 77, baseType: !48, size: 32, align: 32, offset: 256)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "overflowed", scope: !425, file: !424, line: 78, baseType: !35, size: 8, align: 8, offset: 288)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "recursion_critical", scope: !425, file: !424, line: 80, baseType: !35, size: 8, align: 8, offset: 296)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "tracing", scope: !425, file: !424, line: 85, baseType: !48, size: 32, align: 32, offset: 320)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "use_tracing", scope: !425, file: !424, line: 86, baseType: !48, size: 32, align: 32, offset: 352)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "c_profilefunc", scope: !425, file: !424, line: 88, baseType: !459, size: 64, align: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "Py_tracefunc", file: !424, line: 54, baseType: !460)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64, align: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!48, !9, !451, !48, !9}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "c_tracefunc", scope: !425, file: !424, line: 89, baseType: !459, size: 64, align: 64, offset: 448)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "c_profileobj", scope: !425, file: !424, line: 90, baseType: !9, size: 64, align: 64, offset: 512)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "c_traceobj", scope: !425, file: !424, line: 91, baseType: !9, size: 64, align: 64, offset: 576)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_type", scope: !425, file: !424, line: 93, baseType: !9, size: 64, align: 64, offset: 640)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_value", scope: !425, file: !424, line: 94, baseType: !9, size: 64, align: 64, offset: 704)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "curexc_traceback", scope: !425, file: !424, line: 95, baseType: !9, size: 64, align: 64, offset: 768)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "exc_type", scope: !425, file: !424, line: 97, baseType: !9, size: 64, align: 64, offset: 832)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "exc_value", scope: !425, file: !424, line: 98, baseType: !9, size: 64, align: 64, offset: 896)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "exc_traceback", scope: !425, file: !424, line: 99, baseType: !9, size: 64, align: 64, offset: 960)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !425, file: !424, line: 101, baseType: !9, size: 64, align: 64, offset: 1024)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "gilstate_counter", scope: !425, file: !424, line: 103, baseType: !48, size: 32, align: 32, offset: 1088)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "async_exc", scope: !425, file: !424, line: 105, baseType: !9, size: 64, align: 64, offset: 1152)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !425, file: !424, line: 106, baseType: !21, size: 64, align: 64, offset: 1216)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_nesting", scope: !425, file: !424, line: 108, baseType: !48, size: 32, align: 32, offset: 1280)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "trash_delete_later", scope: !425, file: !424, line: 109, baseType: !9, size: 64, align: 64, offset: 1344)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete", scope: !425, file: !424, line: 134, baseType: !342, size: 64, align: 64, offset: 1408)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "on_delete_data", scope: !425, file: !424, line: 135, baseType: !94, size: 64, align: 64, offset: 1472)
!480 = !DISubprogram(name: "semlock_release", scope: !4, file: !4, line: 335, type: !481, isLocal: true, isDefinition: true, scopeLine: 336, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.SemLockObject*, %struct._object*)* @semlock_release, variables: !483)
!481 = !DISubroutineType(types: !482)
!482 = !{!9, !365, !9}
!483 = !{!484, !485, !486}
!484 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !480, file: !4, line: 335, type: !365)
!485 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !480, file: !4, line: 335, type: !9)
!486 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sval", scope: !487, file: !4, line: 373, type: !48)
!487 = distinct !DILexicalBlock(scope: !488, file: !4, line: 349, column: 12)
!488 = distinct !DILexicalBlock(scope: !480, file: !4, line: 337, column: 9)
!489 = !DISubprogram(name: "semlock_count", scope: !4, file: !4, line: 508, type: !490, isLocal: true, isDefinition: true, scopeLine: 509, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.SemLockObject*)* @semlock_count, variables: !492)
!490 = !DISubroutineType(types: !491)
!491 = !{!9, !365}
!492 = !{!493}
!493 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !489, file: !4, line: 508, type: !365)
!494 = !DISubprogram(name: "semlock_ismine", scope: !4, file: !4, line: 514, type: !490, isLocal: true, isDefinition: true, scopeLine: 515, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.SemLockObject*)* @semlock_ismine, variables: !495)
!495 = !{!496}
!496 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !494, file: !4, line: 514, type: !365)
!497 = !DISubprogram(name: "semlock_getvalue", scope: !4, file: !4, line: 521, type: !490, isLocal: true, isDefinition: true, scopeLine: 522, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.SemLockObject*)* @semlock_getvalue, variables: !498)
!498 = !{!499, !500}
!499 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !497, file: !4, line: 521, type: !365)
!500 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sval", scope: !497, file: !4, line: 527, type: !48)
!501 = !DISubprogram(name: "semlock_iszero", scope: !4, file: !4, line: 539, type: !490, isLocal: true, isDefinition: true, scopeLine: 540, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.SemLockObject*)* @semlock_iszero, variables: !502)
!502 = !{!503, !504}
!503 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !501, file: !4, line: 539, type: !365)
!504 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "sval", scope: !501, file: !4, line: 552, type: !48)
!505 = !DISubprogram(name: "semlock_rebuild", scope: !4, file: !4, line: 468, type: !506, isLocal: true, isDefinition: true, scopeLine: 469, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*)* @semlock_rebuild, variables: !510)
!506 = !DISubroutineType(types: !507)
!507 = !{!9, !508, !9}
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64, align: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyTypeObject", file: !11, line: 422, baseType: !24)
!510 = !{!511, !512, !513, !514, !515, !516, !517}
!511 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !505, file: !4, line: 468, type: !508)
!512 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !505, file: !4, line: 468, type: !9)
!513 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !505, file: !4, line: 470, type: !371)
!514 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !505, file: !4, line: 471, type: !48)
!515 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxvalue", scope: !505, file: !4, line: 471, type: !48)
!516 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !505, file: !4, line: 472, type: !56)
!517 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_copy", scope: !505, file: !4, line: 472, type: !56)
!518 = !DISubprogram(name: "newsemlockobject", scope: !4, file: !4, line: 401, type: !519, isLocal: true, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %union.sem_t*, i32, i32, i8*)* @newsemlockobject, variables: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!9, !508, !371, !48, !48, !56}
!521 = !{!522, !523, !524, !525, !526, !527}
!522 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !518, file: !4, line: 401, type: !508)
!523 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "handle", arg: 2, scope: !518, file: !4, line: 401, type: !371)
!524 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kind", arg: 3, scope: !518, file: !4, line: 401, type: !48)
!525 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "maxvalue", arg: 4, scope: !518, file: !4, line: 401, type: !48)
!526 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "name", arg: 5, scope: !518, file: !4, line: 402, type: !56)
!527 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "self", scope: !518, file: !4, line: 404, type: !365)
!528 = !DISubprogram(name: "semlock_afterfork", scope: !4, file: !4, line: 560, type: !490, isLocal: true, isDefinition: true, scopeLine: 561, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct.SemLockObject*)* @semlock_afterfork, variables: !529)
!529 = !{!530}
!530 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "self", arg: 1, scope: !528, file: !4, line: 560, type: !365)
!531 = !DISubprogram(name: "semlock_new", scope: !4, file: !4, line: 419, type: !532, isLocal: true, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, function: %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @semlock_new, variables: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!9, !508, !9, !9}
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545}
!535 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "type", arg: 1, scope: !531, file: !4, line: 419, type: !508)
!536 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "args", arg: 2, scope: !531, file: !4, line: 419, type: !9)
!537 = !DILocalVariable(tag: DW_TAG_arg_variable, name: "kwds", arg: 3, scope: !531, file: !4, line: 419, type: !9)
!538 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "handle", scope: !531, file: !4, line: 421, type: !371)
!539 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "kind", scope: !531, file: !4, line: 422, type: !48)
!540 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "maxvalue", scope: !531, file: !4, line: 422, type: !48)
!541 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "value", scope: !531, file: !4, line: 422, type: !48)
!542 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "unlink", scope: !531, file: !4, line: 422, type: !48)
!543 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "result", scope: !531, file: !4, line: 423, type: !9)
!544 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name", scope: !531, file: !4, line: 424, type: !56)
!545 = !DILocalVariable(tag: DW_TAG_auto_variable, name: "name_copy", scope: !531, file: !4, line: 424, type: !56)
!546 = !{!547, !548, !553, !557, !562}
!547 = !DIGlobalVariable(name: "_PyMp_SemLockType", scope: !0, file: !4, line: 614, type: !509, isLocal: false, isDefinition: true, variable: %struct._typeobject* @_PyMp_SemLockType)
!548 = !DIGlobalVariable(name: "semlock_methods", scope: !0, file: !4, line: 570, type: !549, isLocal: true, isDefinition: true, variable: [11 x %struct.PyMethodDef]* @semlock_methods)
!549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !550, size: 2816, align: 64, elements: !551)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMethodDef", file: !286, line: 47, baseType: !285)
!551 = !{!552}
!552 = !DISubrange(count: 11)
!553 = !DIGlobalVariable(name: "kwlist", scope: !389, file: !4, line: 274, type: !554, isLocal: true, isDefinition: true, variable: [3 x i8*]* @semlock_acquire.kwlist)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 192, align: 64, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 3)
!557 = !DIGlobalVariable(name: "semlock_members", scope: !0, file: !4, line: 598, type: !558, isLocal: true, isDefinition: true, variable: [5 x %struct.PyMemberDef]* @semlock_members)
!558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !559, size: 1600, align: 64, elements: !560)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "PyMemberDef", file: !296, line: 24, baseType: !295)
!560 = !{!561}
!561 = !DISubrange(count: 5)
!562 = !DIGlobalVariable(name: "kwlist", scope: !531, file: !4, line: 425, type: !563, isLocal: true, isDefinition: true, variable: [6 x i8*]* @semlock_new.kwlist)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 384, align: 64, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 6)
!566 = !{i32 2, !"Dwarf Version", i32 4}
!567 = !{i32 2, !"Debug Info Version", i32 3}
!568 = !{i32 1, !"PIC Level", i32 2}
!569 = !{!"clang version 3.7.1 (https://github.com/llvm-mirror/clang.git 0dbefa1b83eb90f7a06b5df5df254ce32be3db4b) (git@github.com:kim-yoonseung/llvm.git e8e68907a8135028089af4d924da468e2b7257fa)"}
!570 = !{!571, !571, i64 0}
!571 = !{!"any pointer", !572, i64 0}
!572 = !{!"omnipotent char", !573, i64 0}
!573 = !{!"Simple C/C++ TBAA"}
!574 = !DIExpression()
!575 = !DILocation(line: 499, column: 32, scope: !384)
!576 = !DILocation(line: 501, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !384, file: !4, line: 501, column: 9)
!578 = !DILocation(line: 501, column: 15, scope: !577)
!579 = !{!580, !571, i64 16}
!580 = !{!"", !581, i64 0, !571, i64 16, !582, i64 24, !583, i64 32, !583, i64 36, !583, i64 40, !571, i64 48}
!581 = !{!"_object", !582, i64 0, !571, i64 8}
!582 = !{!"long", !572, i64 0}
!583 = !{!"int", !572, i64 0}
!584 = !DILocation(line: 501, column: 22, scope: !577)
!585 = !DILocation(line: 501, column: 9, scope: !384)
!586 = !DILocation(line: 502, column: 19, scope: !577)
!587 = !DILocation(line: 502, column: 25, scope: !577)
!588 = !DILocation(line: 502, column: 9, scope: !577)
!589 = !DILocation(line: 503, column: 16, scope: !384)
!590 = !DILocation(line: 503, column: 22, scope: !384)
!591 = !{!580, !571, i64 48}
!592 = !DILocation(line: 503, column: 5, scope: !384)
!593 = !DILocation(line: 504, column: 19, scope: !384)
!594 = !DILocation(line: 504, column: 5, scope: !384)
!595 = !DILocation(line: 505, column: 1, scope: !384)
!596 = !DILocation(line: 419, column: 27, scope: !531)
!597 = !DILocation(line: 419, column: 43, scope: !531)
!598 = !DILocation(line: 419, column: 59, scope: !531)
!599 = !DILocation(line: 421, column: 5, scope: !531)
!600 = !DILocation(line: 421, column: 16, scope: !531)
!601 = !DILocation(line: 422, column: 5, scope: !531)
!602 = !DILocation(line: 422, column: 9, scope: !531)
!603 = !DILocation(line: 422, column: 15, scope: !531)
!604 = !DILocation(line: 422, column: 25, scope: !531)
!605 = !DILocation(line: 422, column: 32, scope: !531)
!606 = !DILocation(line: 423, column: 5, scope: !531)
!607 = !DILocation(line: 423, column: 15, scope: !531)
!608 = !DILocation(line: 424, column: 5, scope: !531)
!609 = !DILocation(line: 424, column: 11, scope: !531)
!610 = !DILocation(line: 424, column: 18, scope: !531)
!611 = !DILocation(line: 428, column: 45, scope: !612)
!612 = distinct !DILexicalBlock(scope: !531, file: !4, line: 428, column: 9)
!613 = !DILocation(line: 428, column: 51, scope: !612)
!614 = !DILocation(line: 428, column: 10, scope: !612)
!615 = !DILocation(line: 428, column: 9, scope: !531)
!616 = !DILocation(line: 430, column: 9, scope: !612)
!617 = !DILocation(line: 432, column: 9, scope: !618)
!618 = distinct !DILexicalBlock(scope: !531, file: !4, line: 432, column: 9)
!619 = !{!583, !583, i64 0}
!620 = !DILocation(line: 432, column: 14, scope: !618)
!621 = !DILocation(line: 432, column: 33, scope: !618)
!622 = !DILocation(line: 432, column: 36, scope: !623)
!623 = !DILexicalBlockFile(scope: !618, file: !4, discriminator: 1)
!624 = !DILocation(line: 432, column: 41, scope: !618)
!625 = !DILocation(line: 432, column: 9, scope: !531)
!626 = !DILocation(line: 433, column: 25, scope: !627)
!627 = distinct !DILexicalBlock(scope: !618, file: !4, line: 432, column: 55)
!628 = !DILocation(line: 433, column: 9, scope: !627)
!629 = !DILocation(line: 434, column: 9, scope: !627)
!630 = !DILocation(line: 437, column: 10, scope: !631)
!631 = distinct !DILexicalBlock(scope: !531, file: !4, line: 437, column: 9)
!632 = !DILocation(line: 437, column: 9, scope: !531)
!633 = !DILocation(line: 438, column: 41, scope: !634)
!634 = distinct !DILexicalBlock(scope: !631, file: !4, line: 437, column: 18)
!635 = !DILocation(line: 438, column: 34, scope: !634)
!636 = !DILocation(line: 438, column: 47, scope: !634)
!637 = !DILocation(line: 438, column: 21, scope: !634)
!638 = !DILocation(line: 438, column: 19, scope: !634)
!639 = !DILocation(line: 439, column: 13, scope: !640)
!640 = distinct !DILexicalBlock(scope: !634, file: !4, line: 439, column: 13)
!641 = !DILocation(line: 439, column: 23, scope: !640)
!642 = !DILocation(line: 439, column: 13, scope: !634)
!643 = !DILocation(line: 440, column: 13, scope: !640)
!644 = !DILocation(line: 441, column: 16, scope: !634)
!645 = !DILocation(line: 441, column: 27, scope: !634)
!646 = !DILocation(line: 441, column: 9, scope: !634)
!647 = !DILocation(line: 442, column: 5, scope: !634)
!648 = !DILocation(line: 445, column: 23, scope: !531)
!649 = !DILocation(line: 445, column: 48, scope: !531)
!650 = !DILocation(line: 445, column: 14, scope: !531)
!651 = !DILocation(line: 445, column: 12, scope: !531)
!652 = !DILocation(line: 447, column: 9, scope: !653)
!653 = distinct !DILexicalBlock(scope: !531, file: !4, line: 447, column: 9)
!654 = !DILocation(line: 447, column: 16, scope: !653)
!655 = !DILocation(line: 447, column: 9, scope: !531)
!656 = !DILocation(line: 448, column: 9, scope: !653)
!657 = !DILocation(line: 450, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !531, file: !4, line: 450, column: 9)
!659 = !DILocation(line: 450, column: 16, scope: !658)
!660 = !DILocation(line: 450, column: 30, scope: !661)
!661 = !DILexicalBlockFile(scope: !658, file: !4, discriminator: 1)
!662 = !DILocation(line: 450, column: 19, scope: !658)
!663 = !DILocation(line: 450, column: 36, scope: !658)
!664 = !DILocation(line: 450, column: 9, scope: !531)
!665 = !DILocation(line: 451, column: 9, scope: !658)
!666 = !DILocation(line: 453, column: 31, scope: !531)
!667 = !DILocation(line: 453, column: 37, scope: !531)
!668 = !DILocation(line: 453, column: 45, scope: !531)
!669 = !DILocation(line: 453, column: 51, scope: !531)
!670 = !DILocation(line: 453, column: 61, scope: !531)
!671 = !DILocation(line: 453, column: 14, scope: !531)
!672 = !DILocation(line: 453, column: 12, scope: !531)
!673 = !DILocation(line: 454, column: 10, scope: !674)
!674 = distinct !DILexicalBlock(scope: !531, file: !4, line: 454, column: 9)
!675 = !DILocation(line: 454, column: 9, scope: !531)
!676 = !DILocation(line: 455, column: 9, scope: !674)
!677 = !DILocation(line: 457, column: 12, scope: !531)
!678 = !DILocation(line: 457, column: 5, scope: !531)
!679 = !DILocation(line: 460, column: 9, scope: !680)
!680 = distinct !DILexicalBlock(scope: !531, file: !4, line: 460, column: 9)
!681 = !DILocation(line: 460, column: 16, scope: !680)
!682 = !DILocation(line: 460, column: 9, scope: !531)
!683 = !DILocation(line: 461, column: 19, scope: !680)
!684 = !DILocation(line: 461, column: 9, scope: !680)
!685 = !DILocation(line: 462, column: 16, scope: !531)
!686 = !DILocation(line: 462, column: 5, scope: !531)
!687 = !DILocation(line: 463, column: 5, scope: !531)
!688 = !DILocation(line: 464, column: 5, scope: !531)
!689 = !DILocation(line: 465, column: 1, scope: !531)
!690 = !DILocation(line: 660, column: 28, scope: !379)
!691 = !DILocation(line: 660, column: 46, scope: !379)
!692 = !DILocation(line: 662, column: 5, scope: !379)
!693 = !DILocation(line: 662, column: 11, scope: !379)
!694 = !DILocation(line: 664, column: 34, scope: !695)
!695 = distinct !DILexicalBlock(scope: !379, file: !4, line: 664, column: 9)
!696 = !DILocation(line: 664, column: 10, scope: !695)
!697 = !DILocation(line: 664, column: 9, scope: !379)
!698 = !DILocation(line: 665, column: 9, scope: !695)
!699 = !DILocation(line: 667, column: 20, scope: !700)
!700 = distinct !DILexicalBlock(scope: !379, file: !4, line: 667, column: 9)
!701 = !DILocation(line: 667, column: 9, scope: !700)
!702 = !DILocation(line: 667, column: 26, scope: !700)
!703 = !DILocation(line: 667, column: 9, scope: !379)
!704 = !DILocation(line: 668, column: 9, scope: !705)
!705 = distinct !DILexicalBlock(scope: !700, file: !4, line: 667, column: 31)
!706 = !DILocation(line: 669, column: 9, scope: !705)
!707 = !DILocation(line: 672, column: 58, scope: !379)
!708 = !{!581, !582, i64 0}
!709 = !DILocation(line: 672, column: 5, scope: !379)
!710 = !DILocation(line: 673, column: 1, scope: !379)
!711 = !DILocation(line: 265, column: 32, scope: !389)
!712 = !DILocation(line: 265, column: 48, scope: !389)
!713 = !DILocation(line: 265, column: 64, scope: !389)
!714 = !DILocation(line: 267, column: 5, scope: !389)
!715 = !DILocation(line: 267, column: 9, scope: !389)
!716 = !DILocation(line: 267, column: 23, scope: !389)
!717 = !DILocation(line: 267, column: 28, scope: !389)
!718 = !DILocation(line: 268, column: 5, scope: !389)
!719 = !DILocation(line: 268, column: 12, scope: !389)
!720 = !DILocation(line: 269, column: 5, scope: !389)
!721 = !DILocation(line: 269, column: 15, scope: !389)
!722 = !DILocation(line: 270, column: 5, scope: !389)
!723 = !DILocation(line: 270, column: 21, scope: !389)
!724 = !DILocation(line: 271, column: 5, scope: !389)
!725 = !DILocation(line: 271, column: 20, scope: !389)
!726 = !DILocation(line: 272, column: 5, scope: !389)
!727 = !DILocation(line: 272, column: 10, scope: !389)
!728 = !DILocation(line: 272, column: 15, scope: !389)
!729 = !DILocation(line: 276, column: 45, scope: !730)
!730 = distinct !DILexicalBlock(scope: !389, file: !4, line: 276, column: 9)
!731 = !DILocation(line: 276, column: 51, scope: !730)
!732 = !DILocation(line: 276, column: 10, scope: !730)
!733 = !DILocation(line: 276, column: 9, scope: !389)
!734 = !DILocation(line: 278, column: 9, scope: !730)
!735 = !DILocation(line: 280, column: 9, scope: !736)
!736 = distinct !DILexicalBlock(scope: !389, file: !4, line: 280, column: 9)
!737 = !DILocation(line: 280, column: 15, scope: !736)
!738 = !{!580, !583, i64 40}
!739 = !DILocation(line: 280, column: 20, scope: !736)
!740 = !DILocation(line: 280, column: 39, scope: !736)
!741 = !DILocation(line: 280, column: 43, scope: !742)
!742 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 1)
!743 = !DILocation(line: 280, column: 49, scope: !736)
!744 = !{!580, !583, i64 32}
!745 = !DILocation(line: 280, column: 55, scope: !736)
!746 = !DILocation(line: 280, column: 59, scope: !736)
!747 = !DILocation(line: 280, column: 62, scope: !748)
!748 = !DILexicalBlockFile(scope: !736, file: !4, discriminator: 2)
!749 = !DILocation(line: 280, column: 93, scope: !736)
!750 = !DILocation(line: 280, column: 99, scope: !736)
!751 = !{!580, !582, i64 24}
!752 = !DILocation(line: 280, column: 90, scope: !736)
!753 = !DILocation(line: 280, column: 9, scope: !389)
!754 = !DILocation(line: 281, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !736, file: !4, line: 280, column: 110)
!756 = !DILocation(line: 281, column: 17, scope: !755)
!757 = !DILocation(line: 281, column: 9, scope: !755)
!758 = !DILocation(line: 282, column: 75, scope: !755)
!759 = !DILocation(line: 282, column: 9, scope: !755)
!760 = !DILocation(line: 285, column: 9, scope: !761)
!761 = distinct !DILexicalBlock(scope: !389, file: !4, line: 285, column: 9)
!762 = !DILocation(line: 285, column: 21, scope: !761)
!763 = !DILocation(line: 285, column: 9, scope: !389)
!764 = !DILocation(line: 286, column: 36, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !4, line: 285, column: 43)
!766 = !DILocation(line: 286, column: 19, scope: !765)
!767 = !DILocation(line: 286, column: 17, scope: !765)
!768 = !{!769, !769, i64 0}
!769 = !{!"double", !572, i64 0}
!770 = !DILocation(line: 287, column: 13, scope: !771)
!771 = distinct !DILexicalBlock(scope: !765, file: !4, line: 287, column: 13)
!772 = !DILocation(line: 287, column: 13, scope: !765)
!773 = !DILocation(line: 288, column: 13, scope: !771)
!774 = !DILocation(line: 289, column: 13, scope: !775)
!775 = distinct !DILexicalBlock(scope: !765, file: !4, line: 289, column: 13)
!776 = !DILocation(line: 289, column: 21, scope: !775)
!777 = !DILocation(line: 289, column: 13, scope: !765)
!778 = !DILocation(line: 290, column: 21, scope: !775)
!779 = !DILocation(line: 290, column: 13, scope: !775)
!780 = !DILocation(line: 292, column: 13, scope: !781)
!781 = distinct !DILexicalBlock(scope: !765, file: !4, line: 292, column: 13)
!782 = !DILocation(line: 292, column: 44, scope: !781)
!783 = !DILocation(line: 292, column: 13, scope: !765)
!784 = !DILocation(line: 293, column: 32, scope: !785)
!785 = distinct !DILexicalBlock(scope: !781, file: !4, line: 292, column: 49)
!786 = !DILocation(line: 293, column: 13, scope: !785)
!787 = !DILocation(line: 294, column: 13, scope: !785)
!788 = !DILocation(line: 296, column: 22, scope: !765)
!789 = !DILocation(line: 296, column: 15, scope: !765)
!790 = !DILocation(line: 296, column: 13, scope: !765)
!791 = !{!582, !582, i64 0}
!792 = !DILocation(line: 297, column: 31, scope: !765)
!793 = !DILocation(line: 297, column: 41, scope: !765)
!794 = !DILocation(line: 297, column: 39, scope: !765)
!795 = !DILocation(line: 297, column: 28, scope: !765)
!796 = !DILocation(line: 297, column: 46, scope: !765)
!797 = !DILocation(line: 297, column: 16, scope: !765)
!798 = !DILocation(line: 297, column: 14, scope: !765)
!799 = !DILocation(line: 298, column: 31, scope: !765)
!800 = !{!801, !582, i64 0}
!801 = !{!"timeval", !582, i64 0, !582, i64 8}
!802 = !DILocation(line: 298, column: 40, scope: !765)
!803 = !DILocation(line: 298, column: 38, scope: !765)
!804 = !DILocation(line: 298, column: 18, scope: !765)
!805 = !DILocation(line: 298, column: 25, scope: !765)
!806 = !{!807, !582, i64 0}
!807 = !{!"timespec", !582, i64 0, !582, i64 8}
!808 = !DILocation(line: 299, column: 32, scope: !765)
!809 = !{!801, !582, i64 8}
!810 = !DILocation(line: 299, column: 40, scope: !765)
!811 = !DILocation(line: 299, column: 49, scope: !765)
!812 = !DILocation(line: 299, column: 47, scope: !765)
!813 = !DILocation(line: 299, column: 18, scope: !765)
!814 = !DILocation(line: 299, column: 26, scope: !765)
!815 = !{!807, !582, i64 8}
!816 = !DILocation(line: 300, column: 38, scope: !765)
!817 = !DILocation(line: 300, column: 46, scope: !765)
!818 = !DILocation(line: 300, column: 18, scope: !765)
!819 = !DILocation(line: 300, column: 25, scope: !765)
!820 = !DILocation(line: 301, column: 18, scope: !765)
!821 = !DILocation(line: 301, column: 26, scope: !765)
!822 = !DILocation(line: 302, column: 5, scope: !765)
!823 = !DILocation(line: 304, column: 5, scope: !389)
!824 = !DILocation(line: 305, column: 11, scope: !420)
!825 = !DILocation(line: 305, column: 26, scope: !420)
!826 = !DILocation(line: 305, column: 41, scope: !420)
!827 = !DILocation(line: 305, column: 39, scope: !420)
!828 = !DILocation(line: 306, column: 13, scope: !829)
!829 = distinct !DILexicalBlock(scope: !420, file: !4, line: 306, column: 13)
!830 = !DILocation(line: 306, column: 22, scope: !829)
!831 = !DILocation(line: 306, column: 25, scope: !832)
!832 = !DILexicalBlockFile(scope: !829, file: !4, discriminator: 1)
!833 = !DILocation(line: 306, column: 37, scope: !829)
!834 = !DILocation(line: 306, column: 13, scope: !420)
!835 = !DILocation(line: 307, column: 28, scope: !829)
!836 = !DILocation(line: 307, column: 34, scope: !829)
!837 = !DILocation(line: 307, column: 19, scope: !829)
!838 = !DILocation(line: 307, column: 17, scope: !829)
!839 = !DILocation(line: 307, column: 13, scope: !829)
!840 = !DILocation(line: 308, column: 19, scope: !841)
!841 = distinct !DILexicalBlock(scope: !829, file: !4, line: 308, column: 18)
!842 = !DILocation(line: 308, column: 18, scope: !829)
!843 = !DILocation(line: 309, column: 31, scope: !841)
!844 = !DILocation(line: 309, column: 37, scope: !841)
!845 = !DILocation(line: 309, column: 19, scope: !841)
!846 = !DILocation(line: 309, column: 17, scope: !841)
!847 = !DILocation(line: 309, column: 13, scope: !841)
!848 = !DILocation(line: 311, column: 33, scope: !841)
!849 = !DILocation(line: 311, column: 39, scope: !841)
!850 = !DILocation(line: 311, column: 19, scope: !841)
!851 = !DILocation(line: 311, column: 17, scope: !841)
!852 = !DILocation(line: 312, column: 30, scope: !420)
!853 = !DILocation(line: 312, column: 9, scope: !420)
!854 = !DILocation(line: 312, column: 38, scope: !421)
!855 = !DILocation(line: 313, column: 17, scope: !421)
!856 = !DILocation(line: 313, column: 16, scope: !421)
!857 = !DILocation(line: 313, column: 13, scope: !421)
!858 = !DILocation(line: 314, column: 13, scope: !859)
!859 = distinct !DILexicalBlock(scope: !421, file: !4, line: 314, column: 13)
!860 = !DILocation(line: 314, column: 17, scope: !859)
!861 = !DILocation(line: 314, column: 13, scope: !421)
!862 = !DILocation(line: 315, column: 13, scope: !859)
!863 = !DILocation(line: 316, column: 5, scope: !421)
!864 = !DILocation(line: 316, column: 14, scope: !865)
!865 = !DILexicalBlockFile(scope: !389, file: !4, discriminator: 1)
!866 = !DILocation(line: 316, column: 18, scope: !389)
!867 = !DILocation(line: 316, column: 22, scope: !389)
!868 = !DILocation(line: 316, column: 27, scope: !869)
!869 = !DILexicalBlockFile(scope: !389, file: !4, discriminator: 2)
!870 = !DILocation(line: 316, column: 26, scope: !389)
!871 = !DILocation(line: 316, column: 48, scope: !389)
!872 = !DILocation(line: 316, column: 53, scope: !389)
!873 = !DILocation(line: 316, column: 57, scope: !874)
!874 = !DILexicalBlockFile(scope: !389, file: !4, discriminator: 4)
!875 = !DILocation(line: 316, column: 56, scope: !389)
!876 = !DILocation(line: 316, column: 5, scope: !877)
!877 = !DILexicalBlockFile(scope: !878, file: !4, discriminator: 5)
!878 = !DILexicalBlockFile(scope: !421, file: !4, discriminator: 3)
!879 = !DILocation(line: 318, column: 9, scope: !880)
!880 = distinct !DILexicalBlock(scope: !389, file: !4, line: 318, column: 9)
!881 = !DILocation(line: 318, column: 13, scope: !880)
!882 = !DILocation(line: 318, column: 9, scope: !389)
!883 = !DILocation(line: 319, column: 34, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !4, line: 318, column: 18)
!885 = !DILocation(line: 319, column: 11, scope: !884)
!886 = !DILocation(line: 319, column: 32, scope: !884)
!887 = !DILocation(line: 320, column: 15, scope: !888)
!888 = distinct !DILexicalBlock(scope: !884, file: !4, line: 320, column: 13)
!889 = !DILocation(line: 320, column: 14, scope: !888)
!890 = !DILocation(line: 320, column: 36, scope: !888)
!891 = !DILocation(line: 320, column: 42, scope: !888)
!892 = !DILocation(line: 320, column: 47, scope: !893)
!893 = !DILexicalBlockFile(scope: !888, file: !4, discriminator: 1)
!894 = !DILocation(line: 320, column: 46, scope: !888)
!895 = !DILocation(line: 320, column: 68, scope: !888)
!896 = !DILocation(line: 320, column: 13, scope: !884)
!897 = !DILocation(line: 321, column: 80, scope: !888)
!898 = !DILocation(line: 321, column: 13, scope: !888)
!899 = !DILocation(line: 322, column: 20, scope: !900)
!900 = distinct !DILexicalBlock(scope: !888, file: !4, line: 322, column: 18)
!901 = !DILocation(line: 322, column: 19, scope: !900)
!902 = !DILocation(line: 322, column: 41, scope: !900)
!903 = !DILocation(line: 322, column: 18, scope: !888)
!904 = !DILocation(line: 323, column: 13, scope: !900)
!905 = !DILocation(line: 325, column: 39, scope: !900)
!906 = !DILocation(line: 325, column: 20, scope: !900)
!907 = !DILocation(line: 325, column: 13, scope: !900)
!908 = !DILocation(line: 328, column: 7, scope: !389)
!909 = !DILocation(line: 328, column: 13, scope: !389)
!910 = !DILocation(line: 328, column: 5, scope: !389)
!911 = !DILocation(line: 329, column: 22, scope: !389)
!912 = !DILocation(line: 329, column: 5, scope: !389)
!913 = !DILocation(line: 329, column: 11, scope: !389)
!914 = !DILocation(line: 329, column: 20, scope: !389)
!915 = !DILocation(line: 331, column: 71, scope: !389)
!916 = !DILocation(line: 331, column: 5, scope: !389)
!917 = !DILocation(line: 332, column: 1, scope: !389)
!918 = !DILocation(line: 335, column: 32, scope: !480)
!919 = !DILocation(line: 335, column: 48, scope: !480)
!920 = !DILocation(line: 337, column: 9, scope: !488)
!921 = !DILocation(line: 337, column: 15, scope: !488)
!922 = !DILocation(line: 337, column: 20, scope: !488)
!923 = !DILocation(line: 337, column: 9, scope: !480)
!924 = !DILocation(line: 338, column: 15, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !4, line: 338, column: 13)
!926 = distinct !DILexicalBlock(scope: !488, file: !4, line: 337, column: 40)
!927 = !DILocation(line: 338, column: 21, scope: !925)
!928 = !DILocation(line: 338, column: 27, scope: !925)
!929 = !DILocation(line: 338, column: 31, scope: !925)
!930 = !DILocation(line: 338, column: 34, scope: !931)
!931 = !DILexicalBlockFile(scope: !925, file: !4, discriminator: 1)
!932 = !DILocation(line: 338, column: 65, scope: !925)
!933 = !DILocation(line: 338, column: 71, scope: !925)
!934 = !DILocation(line: 338, column: 62, scope: !925)
!935 = !DILocation(line: 338, column: 13, scope: !926)
!936 = !DILocation(line: 339, column: 29, scope: !937)
!937 = distinct !DILexicalBlock(scope: !925, file: !4, line: 338, column: 82)
!938 = !DILocation(line: 339, column: 13, scope: !937)
!939 = !DILocation(line: 342, column: 13, scope: !937)
!940 = !DILocation(line: 344, column: 13, scope: !941)
!941 = distinct !DILexicalBlock(scope: !926, file: !4, line: 344, column: 13)
!942 = !DILocation(line: 344, column: 19, scope: !941)
!943 = !DILocation(line: 344, column: 25, scope: !941)
!944 = !DILocation(line: 344, column: 13, scope: !926)
!945 = !DILocation(line: 345, column: 15, scope: !946)
!946 = distinct !DILexicalBlock(scope: !941, file: !4, line: 344, column: 30)
!947 = !DILocation(line: 345, column: 21, scope: !946)
!948 = !DILocation(line: 345, column: 13, scope: !946)
!949 = !DILocation(line: 346, column: 66, scope: !946)
!950 = !DILocation(line: 346, column: 13, scope: !946)
!951 = !DILocation(line: 349, column: 5, scope: !926)
!952 = !DILocation(line: 373, column: 9, scope: !487)
!953 = !DILocation(line: 373, column: 13, scope: !487)
!954 = !DILocation(line: 377, column: 26, scope: !955)
!955 = distinct !DILexicalBlock(scope: !487, file: !4, line: 377, column: 13)
!956 = !DILocation(line: 377, column: 32, scope: !955)
!957 = !DILocation(line: 377, column: 13, scope: !955)
!958 = !DILocation(line: 377, column: 47, scope: !955)
!959 = !DILocation(line: 377, column: 13, scope: !487)
!960 = !DILocation(line: 378, column: 39, scope: !961)
!961 = distinct !DILexicalBlock(scope: !955, file: !4, line: 377, column: 52)
!962 = !DILocation(line: 378, column: 20, scope: !961)
!963 = !DILocation(line: 378, column: 13, scope: !961)
!964 = !DILocation(line: 379, column: 20, scope: !965)
!965 = distinct !DILexicalBlock(scope: !955, file: !4, line: 379, column: 20)
!966 = !DILocation(line: 379, column: 28, scope: !965)
!967 = !DILocation(line: 379, column: 34, scope: !965)
!968 = !{!580, !583, i64 36}
!969 = !DILocation(line: 379, column: 25, scope: !965)
!970 = !DILocation(line: 379, column: 20, scope: !955)
!971 = !DILocation(line: 380, column: 29, scope: !972)
!972 = distinct !DILexicalBlock(scope: !965, file: !4, line: 379, column: 44)
!973 = !DILocation(line: 380, column: 13, scope: !972)
!974 = !DILocation(line: 382, column: 13, scope: !972)
!975 = !DILocation(line: 385, column: 5, scope: !488)
!976 = !DILocation(line: 385, column: 5, scope: !977)
!977 = !DILexicalBlockFile(scope: !488, file: !4, discriminator: 1)
!978 = !DILocation(line: 387, column: 18, scope: !979)
!979 = distinct !DILexicalBlock(scope: !480, file: !4, line: 387, column: 9)
!980 = !DILocation(line: 387, column: 24, scope: !979)
!981 = !DILocation(line: 387, column: 9, scope: !979)
!982 = !DILocation(line: 387, column: 32, scope: !979)
!983 = !DILocation(line: 387, column: 9, scope: !480)
!984 = !DILocation(line: 388, column: 35, scope: !979)
!985 = !DILocation(line: 388, column: 16, scope: !979)
!986 = !DILocation(line: 388, column: 9, scope: !979)
!987 = !DILocation(line: 390, column: 7, scope: !480)
!988 = !DILocation(line: 390, column: 13, scope: !480)
!989 = !DILocation(line: 390, column: 5, scope: !480)
!990 = !DILocation(line: 391, column: 58, scope: !480)
!991 = !DILocation(line: 391, column: 5, scope: !480)
!992 = !DILocation(line: 392, column: 1, scope: !480)
!993 = !DILocation(line: 508, column: 30, scope: !489)
!994 = !DILocation(line: 510, column: 34, scope: !489)
!995 = !DILocation(line: 510, column: 40, scope: !489)
!996 = !DILocation(line: 510, column: 28, scope: !489)
!997 = !DILocation(line: 510, column: 12, scope: !489)
!998 = !DILocation(line: 510, column: 5, scope: !489)
!999 = !DILocation(line: 514, column: 31, scope: !494)
!1000 = !DILocation(line: 517, column: 29, scope: !494)
!1001 = !DILocation(line: 517, column: 35, scope: !494)
!1002 = !DILocation(line: 517, column: 41, scope: !494)
!1003 = !DILocation(line: 517, column: 45, scope: !494)
!1004 = !DILocation(line: 517, column: 48, scope: !1005)
!1005 = !DILexicalBlockFile(scope: !494, file: !4, discriminator: 1)
!1006 = !DILocation(line: 517, column: 79, scope: !494)
!1007 = !DILocation(line: 517, column: 85, scope: !494)
!1008 = !DILocation(line: 517, column: 76, scope: !494)
!1009 = !DILocation(line: 517, column: 45, scope: !1010)
!1010 = !DILexicalBlockFile(scope: !494, file: !4, discriminator: 2)
!1011 = !DILocation(line: 517, column: 28, scope: !494)
!1012 = !DILocation(line: 517, column: 12, scope: !494)
!1013 = !DILocation(line: 517, column: 5, scope: !494)
!1014 = !DILocation(line: 521, column: 33, scope: !497)
!1015 = !DILocation(line: 527, column: 5, scope: !497)
!1016 = !DILocation(line: 527, column: 9, scope: !497)
!1017 = !DILocation(line: 528, column: 22, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !497, file: !4, line: 528, column: 9)
!1019 = !DILocation(line: 528, column: 28, scope: !1018)
!1020 = !DILocation(line: 528, column: 9, scope: !1018)
!1021 = !DILocation(line: 528, column: 43, scope: !1018)
!1022 = !DILocation(line: 528, column: 9, scope: !497)
!1023 = !DILocation(line: 529, column: 16, scope: !1018)
!1024 = !DILocation(line: 529, column: 9, scope: !1018)
!1025 = !DILocation(line: 532, column: 9, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !497, file: !4, line: 532, column: 9)
!1027 = !DILocation(line: 532, column: 14, scope: !1026)
!1028 = !DILocation(line: 532, column: 9, scope: !497)
!1029 = !DILocation(line: 533, column: 14, scope: !1026)
!1030 = !DILocation(line: 533, column: 9, scope: !1026)
!1031 = !DILocation(line: 534, column: 34, scope: !497)
!1032 = !DILocation(line: 534, column: 28, scope: !497)
!1033 = !DILocation(line: 534, column: 12, scope: !497)
!1034 = !DILocation(line: 534, column: 5, scope: !497)
!1035 = !DILocation(line: 536, column: 1, scope: !497)
!1036 = !DILocation(line: 539, column: 31, scope: !501)
!1037 = !DILocation(line: 552, column: 5, scope: !501)
!1038 = !DILocation(line: 552, column: 9, scope: !501)
!1039 = !DILocation(line: 553, column: 22, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !501, file: !4, line: 553, column: 9)
!1041 = !DILocation(line: 553, column: 28, scope: !1040)
!1042 = !DILocation(line: 553, column: 9, scope: !1040)
!1043 = !DILocation(line: 553, column: 43, scope: !1040)
!1044 = !DILocation(line: 553, column: 9, scope: !501)
!1045 = !DILocation(line: 554, column: 16, scope: !1040)
!1046 = !DILocation(line: 554, column: 9, scope: !1040)
!1047 = !DILocation(line: 555, column: 34, scope: !501)
!1048 = !DILocation(line: 555, column: 28, scope: !501)
!1049 = !DILocation(line: 555, column: 39, scope: !501)
!1050 = !DILocation(line: 555, column: 12, scope: !501)
!1051 = !DILocation(line: 555, column: 5, scope: !501)
!1052 = !DILocation(line: 557, column: 1, scope: !501)
!1053 = !DILocation(line: 468, column: 31, scope: !505)
!1054 = !DILocation(line: 468, column: 47, scope: !505)
!1055 = !DILocation(line: 470, column: 5, scope: !505)
!1056 = !DILocation(line: 470, column: 16, scope: !505)
!1057 = !DILocation(line: 471, column: 5, scope: !505)
!1058 = !DILocation(line: 471, column: 9, scope: !505)
!1059 = !DILocation(line: 471, column: 15, scope: !505)
!1060 = !DILocation(line: 472, column: 5, scope: !505)
!1061 = !DILocation(line: 472, column: 11, scope: !505)
!1062 = !DILocation(line: 472, column: 18, scope: !505)
!1063 = !DILocation(line: 474, column: 34, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !505, file: !4, line: 474, column: 9)
!1065 = !DILocation(line: 474, column: 10, scope: !1064)
!1066 = !DILocation(line: 474, column: 9, scope: !505)
!1067 = !DILocation(line: 476, column: 9, scope: !1064)
!1068 = !DILocation(line: 478, column: 9, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !505, file: !4, line: 478, column: 9)
!1070 = !DILocation(line: 478, column: 14, scope: !1069)
!1071 = !DILocation(line: 478, column: 9, scope: !505)
!1072 = !DILocation(line: 479, column: 41, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1069, file: !4, line: 478, column: 29)
!1074 = !DILocation(line: 479, column: 34, scope: !1073)
!1075 = !DILocation(line: 479, column: 47, scope: !1073)
!1076 = !DILocation(line: 479, column: 21, scope: !1073)
!1077 = !DILocation(line: 479, column: 19, scope: !1073)
!1078 = !DILocation(line: 480, column: 13, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1073, file: !4, line: 480, column: 13)
!1080 = !DILocation(line: 480, column: 23, scope: !1079)
!1081 = !DILocation(line: 480, column: 13, scope: !1073)
!1082 = !DILocation(line: 481, column: 20, scope: !1079)
!1083 = !DILocation(line: 481, column: 13, scope: !1079)
!1084 = !DILocation(line: 482, column: 16, scope: !1073)
!1085 = !DILocation(line: 482, column: 27, scope: !1073)
!1086 = !DILocation(line: 482, column: 9, scope: !1073)
!1087 = !DILocation(line: 483, column: 5, scope: !1073)
!1088 = !DILocation(line: 486, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !505, file: !4, line: 486, column: 9)
!1090 = !DILocation(line: 486, column: 14, scope: !1089)
!1091 = !DILocation(line: 486, column: 9, scope: !505)
!1092 = !DILocation(line: 487, column: 27, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !4, line: 486, column: 29)
!1094 = !DILocation(line: 487, column: 18, scope: !1093)
!1095 = !DILocation(line: 487, column: 16, scope: !1093)
!1096 = !DILocation(line: 488, column: 13, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !4, line: 488, column: 13)
!1098 = !DILocation(line: 488, column: 20, scope: !1097)
!1099 = !DILocation(line: 488, column: 13, scope: !1093)
!1100 = !DILocation(line: 489, column: 24, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1097, file: !4, line: 488, column: 38)
!1102 = !DILocation(line: 489, column: 13, scope: !1101)
!1103 = !DILocation(line: 490, column: 39, scope: !1101)
!1104 = !DILocation(line: 490, column: 20, scope: !1101)
!1105 = !DILocation(line: 490, column: 13, scope: !1101)
!1106 = !DILocation(line: 492, column: 5, scope: !1093)
!1107 = !DILocation(line: 495, column: 29, scope: !505)
!1108 = !DILocation(line: 495, column: 35, scope: !505)
!1109 = !DILocation(line: 495, column: 43, scope: !505)
!1110 = !DILocation(line: 495, column: 49, scope: !505)
!1111 = !DILocation(line: 495, column: 59, scope: !505)
!1112 = !DILocation(line: 495, column: 12, scope: !505)
!1113 = !DILocation(line: 495, column: 5, scope: !505)
!1114 = !DILocation(line: 496, column: 1, scope: !505)
!1115 = !DILocation(line: 560, column: 34, scope: !528)
!1116 = !DILocation(line: 562, column: 5, scope: !528)
!1117 = !DILocation(line: 562, column: 11, scope: !528)
!1118 = !DILocation(line: 562, column: 17, scope: !528)
!1119 = !DILocation(line: 563, column: 58, scope: !528)
!1120 = !DILocation(line: 563, column: 5, scope: !528)
!1121 = !DILocation(line: 401, column: 32, scope: !518)
!1122 = !DILocation(line: 401, column: 49, scope: !518)
!1123 = !DILocation(line: 401, column: 61, scope: !518)
!1124 = !DILocation(line: 401, column: 71, scope: !518)
!1125 = !DILocation(line: 402, column: 24, scope: !518)
!1126 = !DILocation(line: 404, column: 5, scope: !518)
!1127 = !DILocation(line: 404, column: 20, scope: !518)
!1128 = !DILocation(line: 406, column: 46, scope: !518)
!1129 = !DILocation(line: 406, column: 32, scope: !518)
!1130 = !DILocation(line: 406, column: 14, scope: !518)
!1131 = !DILocation(line: 406, column: 10, scope: !518)
!1132 = !DILocation(line: 407, column: 10, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !518, file: !4, line: 407, column: 9)
!1134 = !DILocation(line: 407, column: 9, scope: !518)
!1135 = !DILocation(line: 408, column: 9, scope: !1133)
!1136 = !DILocation(line: 409, column: 20, scope: !518)
!1137 = !DILocation(line: 409, column: 5, scope: !518)
!1138 = !DILocation(line: 409, column: 11, scope: !518)
!1139 = !DILocation(line: 409, column: 18, scope: !518)
!1140 = !DILocation(line: 410, column: 18, scope: !518)
!1141 = !DILocation(line: 410, column: 5, scope: !518)
!1142 = !DILocation(line: 410, column: 11, scope: !518)
!1143 = !DILocation(line: 410, column: 16, scope: !518)
!1144 = !DILocation(line: 411, column: 5, scope: !518)
!1145 = !DILocation(line: 411, column: 11, scope: !518)
!1146 = !DILocation(line: 411, column: 17, scope: !518)
!1147 = !DILocation(line: 412, column: 5, scope: !518)
!1148 = !DILocation(line: 412, column: 11, scope: !518)
!1149 = !DILocation(line: 412, column: 20, scope: !518)
!1150 = !DILocation(line: 413, column: 22, scope: !518)
!1151 = !DILocation(line: 413, column: 5, scope: !518)
!1152 = !DILocation(line: 413, column: 11, scope: !518)
!1153 = !DILocation(line: 413, column: 20, scope: !518)
!1154 = !DILocation(line: 414, column: 18, scope: !518)
!1155 = !DILocation(line: 414, column: 5, scope: !518)
!1156 = !DILocation(line: 414, column: 11, scope: !518)
!1157 = !DILocation(line: 414, column: 16, scope: !518)
!1158 = !DILocation(line: 415, column: 23, scope: !518)
!1159 = !DILocation(line: 415, column: 12, scope: !518)
!1160 = !DILocation(line: 415, column: 5, scope: !518)
!1161 = !DILocation(line: 416, column: 1, scope: !518)
