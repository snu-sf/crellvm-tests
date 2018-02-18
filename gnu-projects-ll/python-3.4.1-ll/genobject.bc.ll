; ModuleID = './genobject.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, {}*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, {}*, i32, {}* }
%struct.PyVarObject = type { %struct._object, i64 }
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
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_atomic_address = type { i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.PyGenObject = type { %struct._object, %struct._frame*, i8, %struct._object*, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct.PyStopIterationObject = type { %struct._object, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8, %struct._object* }
%struct.PyBytesObject = type { %struct.PyVarObject, i64, [1 x i8] }

@PyExc_StopIteration = external global %struct._object*, align 8
@_Py_NoneStruct = external global %struct._object, align 8
@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [10 x i8] c"generator\00", align 1
@gen_methods = internal global [4 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*, %struct._object*)* @_PyGen_Send to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @send_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*, %struct._object*)* @gen_throw to %struct._object* (%struct._object*, %struct._object*)*), i32 1, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @throw_doc, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*, %struct._object*)* @gen_close to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @close_doc, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@gen_memberlist = internal global [4 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 16, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i32 14, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@gen_getsetlist = internal global [2 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct.PyGenObject*)* @gen_get_name to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @gen__name__doc__, i32 0, i32 0), i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyGen_Type = global { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* } { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i64 48, i64 0, void (%struct._object*)* bitcast (void (%struct.PyGenObject*)* @gen_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*)* @gen_repr to %struct._object* (%struct._object*)*), %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 278529, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct.PyGenObject*, i32 (%struct._object*, i8*)*, i8*)* @gen_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 40, %struct._object* (%struct._object*)* @PyObject_SelfIter, %struct._object* (%struct._object*)* bitcast (%struct._object* (%struct.PyGenObject*)* @gen_iternext to %struct._object* (%struct._object*)*), %struct.PyMethodDef* getelementptr inbounds ([4 x %struct.PyMethodDef], [4 x %struct.PyMethodDef]* @gen_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([4 x %struct.PyMemberDef], [4 x %struct.PyMemberDef]* @gen_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([2 x %struct.PyGetSetDef], [2 x %struct.PyGetSetDef]* @gen_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* @_PyGen_Finalize }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"generator already executing\00", align 1
@PyExc_TypeError = external global %struct._object*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"can't send non-None value to a just-started generator\00", align 1
@PyExc_GeneratorExit = external global %struct._object*, align 8
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [32 x i8] c"generator ignored GeneratorExit\00", align 1
@gen_close_iter.PyId_close = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0), %struct._object* null }, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@PyExc_AttributeError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"<generator object %S at %p>\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"send\00", align 1
@send_doc = internal global [90 x i8] c"send(arg) -> send 'arg' into generator,\0Areturn next yielded value or raise StopIteration.\00", align 16
@.str.9 = private unnamed_addr constant [6 x i8] c"throw\00", align 1
@throw_doc = internal global [105 x i8] c"throw(typ[,val[,tb]]) -> raise exception in generator,\0Areturn next yielded value or raise StopIteration.\00", align 16
@close_doc = internal global [49 x i8] c"close() -> raise GeneratorExit inside generator.\00", align 16
@gen_throw.PyId_throw = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), %struct._object* null }, align 8
@PyTraceBack_Type = external global %struct._typeobject, align 8
@.str.10 = private unnamed_addr constant [50 x i8] c"throw() third argument must be a traceback object\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"instance exception may not have a separate value\00", align 1
@.str.12 = private unnamed_addr constant [76 x i8] c"exceptions must be classes or instances deriving from BaseException, not %s\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"gi_frame\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"gi_running\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"gi_code\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"__name__\00", align 1
@gen__name__doc__ = internal global [59 x i8] c"Return the name of the generator's associated code object.\00", align 16

; Function Attrs: nounwind uwtable
define void @_PyGen_Finalize(%struct._object* %self) #0 {
entry:
  %self.addr = alloca %struct._object*, align 8
  %gen = alloca %struct.PyGenObject*, align 8
  %res = alloca %struct._object*, align 8
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._object* %self, %struct._object** %self.addr, align 8
  %0 = load %struct._object*, %struct._object** %self.addr, align 8
  %1 = bitcast %struct._object* %0 to %struct.PyGenObject*
  store %struct.PyGenObject* %1, %struct.PyGenObject** %gen, align 8
  %2 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %2, i32 0, i32 1
  %3 = load %struct._frame*, %struct._frame** %gi_frame, align 8
  %cmp = icmp eq %struct._frame* %3, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %gi_frame1 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %4, i32 0, i32 1
  %5 = load %struct._frame*, %struct._frame** %gi_frame1, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %5, i32 0, i32 7
  %6 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %cmp2 = icmp eq %struct._object** %6, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %7 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %call = call %struct._object* @gen_close(%struct.PyGenObject* %7, %struct._object* null)
  store %struct._object* %call, %struct._object** %res, align 8
  %8 = load %struct._object*, %struct._object** %res, align 8
  %cmp3 = icmp eq %struct._object* %8, null
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %if.end
  %9 = load %struct._object*, %struct._object** %self.addr, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %9)
  br label %if.end.10

if.else:                                          ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.else
  %10 = load %struct._object*, %struct._object** %res, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp5 = icmp ne i64 %dec, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body
  br label %if.end.9

if.else.7:                                        ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %tp_dealloc8 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc8, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else.7, %if.then.6
  br label %do.end

do.end:                                           ; preds = %if.end.9
  br label %if.end.10

if.end.10:                                        ; preds = %do.end, %if.then.4
  %17 = load %struct._object*, %struct._object** %error_type, align 8
  %18 = load %struct._object*, %struct._object** %error_value, align 8
  %19 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %17, %struct._object* %18, %struct._object* %19)
  br label %return

return:                                           ; preds = %if.end.10, %if.then
  ret void
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_close(%struct.PyGenObject* %gen, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %yf = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %call = call %struct._object* @gen_yf(%struct.PyGenObject* %0)
  store %struct._object* %call, %struct._object** %yf, align 8
  store i32 0, i32* %err, align 4
  %1 = load %struct._object*, %struct._object** %yf, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.end.6

if.then:                                          ; preds = %entry
  %2 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %2, i32 0, i32 2
  store i8 1, i8* %gi_running, align 1
  %3 = load %struct._object*, %struct._object** %yf, align 8
  %call2 = call i32 @gen_close_iter(%struct._object* %3)
  store i32 %call2, i32* %err, align 4
  %4 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running3 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %4, i32 0, i32 2
  store i8 0, i8* %gi_running3, align 1
  br label %do.body

do.body:                                          ; preds = %if.then
  %5 = load %struct._object*, %struct._object** %yf, align 8
  store %struct._object* %5, %struct._object** %_py_decref_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %7, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 4
  %tp_dealloc5 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %10 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc5, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %10(%struct._object* %11)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %entry
  %12 = load i32, i32* %err, align 4
  %cmp7 = icmp eq i32 %12, 0
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end.6
  %13 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8
  call void @PyErr_SetNone(%struct._object* %13)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.end.6
  %14 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %call10 = call %struct._object* @gen_send_ex(%struct.PyGenObject* %14, %struct._object* @_Py_NoneStruct, i32 1)
  store %struct._object* %call10, %struct._object** %retval1, align 8
  %15 = load %struct._object*, %struct._object** %retval1, align 8
  %tobool11 = icmp ne %struct._object* %15, null
  br i1 %tobool11, label %if.then.12, label %if.end.25

if.then.12:                                       ; preds = %if.end.9
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.12
  %16 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %16, %struct._object** %_py_decref_tmp14, align 8
  %17 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_refcnt15 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt15, align 8
  %dec16 = add i64 %18, -1
  store i64 %dec16, i64* %ob_refcnt15, align 8
  %cmp17 = icmp ne i64 %dec16, 0
  br i1 %cmp17, label %if.then.18, label %if.else.19

if.then.18:                                       ; preds = %do.body.13
  br label %if.end.23

if.else.19:                                       ; preds = %do.body.13
  %19 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  %ob_type20 = getelementptr inbounds %struct._object, %struct._object* %19, i32 0, i32 1
  %20 = load %struct._typeobject*, %struct._typeobject** %ob_type20, align 8
  %tp_dealloc21 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %20, i32 0, i32 4
  %tp_dealloc22 = bitcast {}** %tp_dealloc21 to void (%struct._object*)**
  %21 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc22, align 8
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp14, align 8
  call void %21(%struct._object* %22)
  br label %if.end.23

if.end.23:                                        ; preds = %if.else.19, %if.then.18
  br label %do.end.24

do.end.24:                                        ; preds = %if.end.23
  %23 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.25:                                        ; preds = %if.end.9
  %24 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call26 = call i32 @PyErr_ExceptionMatches(%struct._object* %24)
  %tobool27 = icmp ne i32 %call26, 0
  br i1 %tobool27, label %if.then.30, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.25
  %25 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8
  %call28 = call i32 @PyErr_ExceptionMatches(%struct._object* %25)
  %tobool29 = icmp ne i32 %call28, 0
  br i1 %tobool29, label %if.then.30, label %if.end.31

if.then.30:                                       ; preds = %lor.lhs.false, %if.end.25
  call void @PyErr_Clear()
  %26 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

if.end.31:                                        ; preds = %lor.lhs.false
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.31, %if.then.30, %do.end.24
  %27 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %27
}

declare void @PyErr_WriteUnraisable(%struct._object*) #1

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @_PyGen_Send(%struct.PyGenObject* %gen, %struct._object* %arg) #0 {
entry:
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %1 = load %struct._object*, %struct._object** %arg.addr, align 8
  %call = call %struct._object* @gen_send_ex(%struct.PyGenObject* %0, %struct._object* %1, i32 0)
  ret %struct._object* %call
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_send_ex(%struct.PyGenObject* %gen, %struct._object* %arg, i32 %exc) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %arg.addr = alloca %struct._object*, align 8
  %exc.addr = alloca i32, align 4
  %tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %f = alloca %struct._frame*, align 8
  %result6 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %e = alloca %struct._object*, align 8
  %_py_decref_tmp64 = alloca %struct._object*, align 8
  %_py_tmp79 = alloca %struct._object*, align 8
  %_py_decref_tmp84 = alloca %struct._object*, align 8
  %t = alloca %struct._object*, align 8
  %v = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_xdecref_tmp130 = alloca %struct._object*, align 8
  %_py_decref_tmp135 = alloca %struct._object*, align 8
  %_py_xdecref_tmp150 = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  %_py_decref_tmp172 = alloca %struct._object*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  store %struct._object* %arg, %struct._object** %arg.addr, align 8
  store i32 %exc, i32* %exc.addr, align 4
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %0 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %0, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %1 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = bitcast %struct._Py_atomic_address* %1 to i8*
  %3 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %2, i32 %3)
  %4 = load i32, i32* %order, align 4
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %entry, %entry, %entry
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %5 = load i8**, i8*** %volatile_data, align 8
  %6 = load volatile i8*, i8** %5, align 8
  store i8* %6, i8** %result, align 8
  %7 = load i32, i32* %order, align 4
  switch i32 %7, label %sw.default.2 [
    i32 1, label %sw.bb.1
    i32 3, label %sw.bb.1
    i32 4, label %sw.bb.1
  ]

sw.bb.1:                                          ; preds = %sw.epilog, %sw.epilog, %sw.epilog
  call void @_Py_atomic_signal_fence(i32 1)
  br label %sw.epilog.3

sw.default.2:                                     ; preds = %sw.epilog
  br label %sw.epilog.3

sw.epilog.3:                                      ; preds = %sw.default.2, %sw.bb.1
  %8 = load i8*, i8** %result, align 8
  store i8* %8, i8** %tmp
  %9 = load i8*, i8** %tmp
  %10 = bitcast i8* %9 to %struct._ts*
  store %struct._ts* %10, %struct._ts** %tstate, align 8
  %11 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %11, i32 0, i32 1
  %12 = load %struct._frame*, %struct._frame** %gi_frame, align 8
  store %struct._frame* %12, %struct._frame** %f, align 8
  %13 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %13, i32 0, i32 2
  %14 = load i8, i8* %gi_running, align 1
  %tobool = icmp ne i8 %14, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %sw.epilog.3
  %15 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %sw.epilog.3
  %16 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp = icmp eq %struct._frame* %16, null
  br i1 %cmp, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %17 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %17, i32 0, i32 7
  %18 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %cmp7 = icmp eq %struct._object** %18, null
  br i1 %cmp7, label %if.then.8, label %if.end.13

if.then.8:                                        ; preds = %lor.lhs.false, %if.end
  %19 = load %struct._object*, %struct._object** %arg.addr, align 8
  %tobool9 = icmp ne %struct._object* %19, null
  br i1 %tobool9, label %land.lhs.true, label %if.end.12

land.lhs.true:                                    ; preds = %if.then.8
  %20 = load i32, i32* %exc.addr, align 4
  %tobool10 = icmp ne i32 %20, 0
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %land.lhs.true
  %21 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  call void @PyErr_SetNone(%struct._object* %21)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.11, %land.lhs.true, %if.then.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.13:                                        ; preds = %lor.lhs.false
  %22 = load %struct._frame*, %struct._frame** %f, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %22, i32 0, i32 13
  %23 = load i32, i32* %f_lasti, align 4
  %cmp14 = icmp eq i32 %23, -1
  br i1 %cmp14, label %if.then.15, label %if.else

if.then.15:                                       ; preds = %if.end.13
  %24 = load %struct._object*, %struct._object** %arg.addr, align 8
  %tobool16 = icmp ne %struct._object* %24, null
  br i1 %tobool16, label %land.lhs.true.17, label %if.end.20

land.lhs.true.17:                                 ; preds = %if.then.15
  %25 = load %struct._object*, %struct._object** %arg.addr, align 8
  %cmp18 = icmp ne %struct._object* %25, @_Py_NoneStruct
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %land.lhs.true.17
  %26 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %26, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.20:                                        ; preds = %land.lhs.true.17, %if.then.15
  br label %if.end.23

if.else:                                          ; preds = %if.end.13
  %27 = load %struct._object*, %struct._object** %arg.addr, align 8
  %tobool21 = icmp ne %struct._object* %27, null
  br i1 %tobool21, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else
  %28 = load %struct._object*, %struct._object** %arg.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %if.else
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct._object* [ %28, %cond.true ], [ @_Py_NoneStruct, %cond.false ]
  store %struct._object* %cond, %struct._object** %result6, align 8
  %29 = load %struct._object*, %struct._object** %result6, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  %30 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %30, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %31 = load %struct._object*, %struct._object** %result6, align 8
  %32 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop22 = getelementptr inbounds %struct._frame, %struct._frame* %32, i32 0, i32 7
  %33 = load %struct._object**, %struct._object*** %f_stacktop22, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %33, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %f_stacktop22, align 8
  store %struct._object* %31, %struct._object** %33, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %cond.end, %if.end.20
  br label %do.body

do.body:                                          ; preds = %if.end.23
  %34 = load %struct._ts*, %struct._ts** %tstate, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %34, i32 0, i32 3
  %35 = load %struct._frame*, %struct._frame** %frame, align 8
  %36 = bitcast %struct._frame* %35 to %struct._object*
  store %struct._object* %36, %struct._object** %_py_xincref_tmp, align 8
  %37 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp25 = icmp ne %struct._object* %37, null
  br i1 %cmp25, label %if.then.26, label %if.end.29

if.then.26:                                       ; preds = %do.body
  %38 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt27 = getelementptr inbounds %struct._object, %struct._object* %38, i32 0, i32 0
  %39 = load i64, i64* %ob_refcnt27, align 8
  %inc28 = add i64 %39, 1
  store i64 %inc28, i64* %ob_refcnt27, align 8
  br label %if.end.29

if.end.29:                                        ; preds = %if.then.26, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.29
  %40 = load %struct._ts*, %struct._ts** %tstate, align 8
  %frame30 = getelementptr inbounds %struct._ts, %struct._ts* %40, i32 0, i32 3
  %41 = load %struct._frame*, %struct._frame** %frame30, align 8
  %42 = load %struct._frame*, %struct._frame** %f, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %42, i32 0, i32 1
  store %struct._frame* %41, %struct._frame** %f_back, align 8
  %43 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running31 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %43, i32 0, i32 2
  store i8 1, i8* %gi_running31, align 1
  %44 = load %struct._frame*, %struct._frame** %f, align 8
  %45 = load i32, i32* %exc.addr, align 4
  %call = call %struct._object* @PyEval_EvalFrameEx(%struct._frame* %44, i32 %45)
  store %struct._object* %call, %struct._object** %result6, align 8
  %46 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running32 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %46, i32 0, i32 2
  store i8 0, i8* %gi_running32, align 1
  br label %do.body.33

do.body.33:                                       ; preds = %do.end
  %47 = load %struct._frame*, %struct._frame** %f, align 8
  %f_back35 = getelementptr inbounds %struct._frame, %struct._frame* %47, i32 0, i32 1
  %48 = load %struct._frame*, %struct._frame** %f_back35, align 8
  %49 = bitcast %struct._frame* %48 to %struct._object*
  store %struct._object* %49, %struct._object** %_py_tmp, align 8
  %50 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp36 = icmp ne %struct._object* %50, null
  br i1 %cmp36, label %if.then.37, label %if.end.48

if.then.37:                                       ; preds = %do.body.33
  %51 = load %struct._frame*, %struct._frame** %f, align 8
  %f_back38 = getelementptr inbounds %struct._frame, %struct._frame* %51, i32 0, i32 1
  store %struct._frame* null, %struct._frame** %f_back38, align 8
  br label %do.body.39

do.body.39:                                       ; preds = %if.then.37
  %52 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt41, align 8
  %dec = add i64 %54, -1
  store i64 %dec, i64* %ob_refcnt41, align 8
  %cmp42 = icmp ne i64 %dec, 0
  br i1 %cmp42, label %if.then.43, label %if.else.44

if.then.43:                                       ; preds = %do.body.39
  br label %if.end.46

if.else.44:                                       ; preds = %do.body.39
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %tp_dealloc45 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc45, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %57(%struct._object* %58)
  br label %if.end.46

if.end.46:                                        ; preds = %if.else.44, %if.then.43
  br label %do.end.47

do.end.47:                                        ; preds = %if.end.46
  br label %if.end.48

if.end.48:                                        ; preds = %do.end.47, %do.body.33
  br label %do.end.49

do.end.49:                                        ; preds = %if.end.48
  %59 = load %struct._object*, %struct._object** %result6, align 8
  %tobool50 = icmp ne %struct._object* %59, null
  br i1 %tobool50, label %land.lhs.true.51, label %if.end.97

land.lhs.true.51:                                 ; preds = %do.end.49
  %60 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop52 = getelementptr inbounds %struct._frame, %struct._frame* %60, i32 0, i32 7
  %61 = load %struct._object**, %struct._object*** %f_stacktop52, align 8
  %cmp53 = icmp eq %struct._object** %61, null
  br i1 %cmp53, label %if.then.54, label %if.end.97

if.then.54:                                       ; preds = %land.lhs.true.51
  %62 = load %struct._object*, %struct._object** %result6, align 8
  %cmp55 = icmp eq %struct._object* %62, @_Py_NoneStruct
  br i1 %cmp55, label %if.then.56, label %if.else.57

if.then.56:                                       ; preds = %if.then.54
  %63 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  call void @PyErr_SetNone(%struct._object* %63)
  br label %if.end.76

if.else.57:                                       ; preds = %if.then.54
  %64 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %65 = load %struct._object*, %struct._object** %result6, align 8
  %call59 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %64, %struct._object* %65, i8* null)
  store %struct._object* %call59, %struct._object** %e, align 8
  %66 = load %struct._object*, %struct._object** %e, align 8
  %cmp60 = icmp ne %struct._object* %66, null
  br i1 %cmp60, label %if.then.61, label %if.end.75

if.then.61:                                       ; preds = %if.else.57
  %67 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %68 = load %struct._object*, %struct._object** %e, align 8
  call void @PyErr_SetObject(%struct._object* %67, %struct._object* %68)
  br label %do.body.62

do.body.62:                                       ; preds = %if.then.61
  %69 = load %struct._object*, %struct._object** %e, align 8
  store %struct._object* %69, %struct._object** %_py_decref_tmp64, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_refcnt65 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 0
  %71 = load i64, i64* %ob_refcnt65, align 8
  %dec66 = add i64 %71, -1
  store i64 %dec66, i64* %ob_refcnt65, align 8
  %cmp67 = icmp ne i64 %dec66, 0
  br i1 %cmp67, label %if.then.68, label %if.else.69

if.then.68:                                       ; preds = %do.body.62
  br label %if.end.73

if.else.69:                                       ; preds = %do.body.62
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  %ob_type70 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 1
  %73 = load %struct._typeobject*, %struct._typeobject** %ob_type70, align 8
  %tp_dealloc71 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %73, i32 0, i32 4
  %tp_dealloc72 = bitcast {}** %tp_dealloc71 to void (%struct._object*)**
  %74 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %75 = load %struct._object*, %struct._object** %_py_decref_tmp64, align 8
  call void %74(%struct._object* %75)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.69, %if.then.68
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %if.end.75

if.end.75:                                        ; preds = %do.end.74, %if.else.57
  br label %if.end.76

if.end.76:                                        ; preds = %if.end.75, %if.then.56
  br label %do.body.77

do.body.77:                                       ; preds = %if.end.76
  %76 = load %struct._object*, %struct._object** %result6, align 8
  store %struct._object* %76, %struct._object** %_py_tmp79, align 8
  %77 = load %struct._object*, %struct._object** %_py_tmp79, align 8
  %cmp80 = icmp ne %struct._object* %77, null
  br i1 %cmp80, label %if.then.81, label %if.end.95

if.then.81:                                       ; preds = %do.body.77
  store %struct._object* null, %struct._object** %result6, align 8
  br label %do.body.82

do.body.82:                                       ; preds = %if.then.81
  %78 = load %struct._object*, %struct._object** %_py_tmp79, align 8
  store %struct._object* %78, %struct._object** %_py_decref_tmp84, align 8
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_refcnt85 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  %80 = load i64, i64* %ob_refcnt85, align 8
  %dec86 = add i64 %80, -1
  store i64 %dec86, i64* %ob_refcnt85, align 8
  %cmp87 = icmp ne i64 %dec86, 0
  br i1 %cmp87, label %if.then.88, label %if.else.89

if.then.88:                                       ; preds = %do.body.82
  br label %if.end.93

if.else.89:                                       ; preds = %do.body.82
  %81 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  %ob_type90 = getelementptr inbounds %struct._object, %struct._object* %81, i32 0, i32 1
  %82 = load %struct._typeobject*, %struct._typeobject** %ob_type90, align 8
  %tp_dealloc91 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %82, i32 0, i32 4
  %tp_dealloc92 = bitcast {}** %tp_dealloc91 to void (%struct._object*)**
  %83 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc92, align 8
  %84 = load %struct._object*, %struct._object** %_py_decref_tmp84, align 8
  call void %83(%struct._object* %84)
  br label %if.end.93

if.end.93:                                        ; preds = %if.else.89, %if.then.88
  br label %do.end.94

do.end.94:                                        ; preds = %if.end.93
  br label %if.end.95

if.end.95:                                        ; preds = %do.end.94, %do.body.77
  br label %do.end.96

do.end.96:                                        ; preds = %if.end.95
  br label %if.end.97

if.end.97:                                        ; preds = %do.end.96, %land.lhs.true.51, %do.end.49
  %85 = load %struct._object*, %struct._object** %result6, align 8
  %tobool98 = icmp ne %struct._object* %85, null
  br i1 %tobool98, label %lor.lhs.false.99, label %if.then.102

lor.lhs.false.99:                                 ; preds = %if.end.97
  %86 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop100 = getelementptr inbounds %struct._frame, %struct._frame* %86, i32 0, i32 7
  %87 = load %struct._object**, %struct._object*** %f_stacktop100, align 8
  %cmp101 = icmp eq %struct._object** %87, null
  br i1 %cmp101, label %if.then.102, label %if.end.183

if.then.102:                                      ; preds = %lor.lhs.false.99, %if.end.97
  %88 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_type = getelementptr inbounds %struct._frame, %struct._frame* %88, i32 0, i32 9
  %89 = load %struct._object*, %struct._object** %f_exc_type, align 8
  store %struct._object* %89, %struct._object** %t, align 8
  %90 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_value = getelementptr inbounds %struct._frame, %struct._frame* %90, i32 0, i32 10
  %91 = load %struct._object*, %struct._object** %f_exc_value, align 8
  store %struct._object* %91, %struct._object** %v, align 8
  %92 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_traceback = getelementptr inbounds %struct._frame, %struct._frame* %92, i32 0, i32 11
  %93 = load %struct._object*, %struct._object** %f_exc_traceback, align 8
  store %struct._object* %93, %struct._object** %tb, align 8
  %94 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_type106 = getelementptr inbounds %struct._frame, %struct._frame* %94, i32 0, i32 9
  store %struct._object* null, %struct._object** %f_exc_type106, align 8
  %95 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_value107 = getelementptr inbounds %struct._frame, %struct._frame* %95, i32 0, i32 10
  store %struct._object* null, %struct._object** %f_exc_value107, align 8
  %96 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_traceback108 = getelementptr inbounds %struct._frame, %struct._frame* %96, i32 0, i32 11
  store %struct._object* null, %struct._object** %f_exc_traceback108, align 8
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.102
  %97 = load %struct._object*, %struct._object** %t, align 8
  store %struct._object* %97, %struct._object** %_py_xdecref_tmp, align 8
  %98 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp111 = icmp ne %struct._object* %98, null
  br i1 %cmp111, label %if.then.112, label %if.end.126

if.then.112:                                      ; preds = %do.body.109
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.112
  %99 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %99, %struct._object** %_py_decref_tmp115, align 8
  %100 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 0
  %101 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %101, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.124

if.else.120:                                      ; preds = %do.body.113
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 1
  %103 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %103, i32 0, i32 4
  %tp_dealloc123 = bitcast {}** %tp_dealloc122 to void (%struct._object*)**
  %104 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc123, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %104(%struct._object* %105)
  br label %if.end.124

if.end.124:                                       ; preds = %if.else.120, %if.then.119
  br label %do.end.125

do.end.125:                                       ; preds = %if.end.124
  br label %if.end.126

if.end.126:                                       ; preds = %do.end.125, %do.body.109
  br label %do.end.127

do.end.127:                                       ; preds = %if.end.126
  br label %do.body.128

do.body.128:                                      ; preds = %do.end.127
  %106 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %106, %struct._object** %_py_xdecref_tmp130, align 8
  %107 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8
  %cmp131 = icmp ne %struct._object* %107, null
  br i1 %cmp131, label %if.then.132, label %if.end.146

if.then.132:                                      ; preds = %do.body.128
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.132
  %108 = load %struct._object*, %struct._object** %_py_xdecref_tmp130, align 8
  store %struct._object* %108, %struct._object** %_py_decref_tmp135, align 8
  %109 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %109, i32 0, i32 0
  %110 = load i64, i64* %ob_refcnt136, align 8
  %dec137 = add i64 %110, -1
  store i64 %dec137, i64* %ob_refcnt136, align 8
  %cmp138 = icmp ne i64 %dec137, 0
  br i1 %cmp138, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %do.body.133
  br label %if.end.144

if.else.140:                                      ; preds = %do.body.133
  %111 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %111, i32 0, i32 1
  %112 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %112, i32 0, i32 4
  %tp_dealloc143 = bitcast {}** %tp_dealloc142 to void (%struct._object*)**
  %113 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc143, align 8
  %114 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  call void %113(%struct._object* %114)
  br label %if.end.144

if.end.144:                                       ; preds = %if.else.140, %if.then.139
  br label %do.end.145

do.end.145:                                       ; preds = %if.end.144
  br label %if.end.146

if.end.146:                                       ; preds = %do.end.145, %do.body.128
  br label %do.end.147

do.end.147:                                       ; preds = %if.end.146
  br label %do.body.148

do.body.148:                                      ; preds = %do.end.147
  %115 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %115, %struct._object** %_py_xdecref_tmp150, align 8
  %116 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  %cmp151 = icmp ne %struct._object* %116, null
  br i1 %cmp151, label %if.then.152, label %if.end.166

if.then.152:                                      ; preds = %do.body.148
  br label %do.body.153

do.body.153:                                      ; preds = %if.then.152
  %117 = load %struct._object*, %struct._object** %_py_xdecref_tmp150, align 8
  store %struct._object* %117, %struct._object** %_py_decref_tmp155, align 8
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 0
  %119 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %119, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %do.body.153
  br label %if.end.164

if.else.160:                                      ; preds = %do.body.153
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %120, i32 0, i32 1
  %121 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %121, i32 0, i32 4
  %tp_dealloc163 = bitcast {}** %tp_dealloc162 to void (%struct._object*)**
  %122 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc163, align 8
  %123 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %122(%struct._object* %123)
  br label %if.end.164

if.end.164:                                       ; preds = %if.else.160, %if.then.159
  br label %do.end.165

do.end.165:                                       ; preds = %if.end.164
  br label %if.end.166

if.end.166:                                       ; preds = %do.end.165, %do.body.148
  br label %do.end.167

do.end.167:                                       ; preds = %if.end.166
  %124 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame168 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %124, i32 0, i32 1
  %125 = load %struct._frame*, %struct._frame** %gi_frame168, align 8
  %f_gen = getelementptr inbounds %struct._frame, %struct._frame* %125, i32 0, i32 12
  store %struct._object* null, %struct._object** %f_gen, align 8
  %126 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame169 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %126, i32 0, i32 1
  store %struct._frame* null, %struct._frame** %gi_frame169, align 8
  br label %do.body.170

do.body.170:                                      ; preds = %do.end.167
  %127 = load %struct._frame*, %struct._frame** %f, align 8
  %128 = bitcast %struct._frame* %127 to %struct._object*
  store %struct._object* %128, %struct._object** %_py_decref_tmp172, align 8
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  %ob_refcnt173 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 0
  %130 = load i64, i64* %ob_refcnt173, align 8
  %dec174 = add i64 %130, -1
  store i64 %dec174, i64* %ob_refcnt173, align 8
  %cmp175 = icmp ne i64 %dec174, 0
  br i1 %cmp175, label %if.then.176, label %if.else.177

if.then.176:                                      ; preds = %do.body.170
  br label %if.end.181

if.else.177:                                      ; preds = %do.body.170
  %131 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  %ob_type178 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 1
  %132 = load %struct._typeobject*, %struct._typeobject** %ob_type178, align 8
  %tp_dealloc179 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %132, i32 0, i32 4
  %tp_dealloc180 = bitcast {}** %tp_dealloc179 to void (%struct._object*)**
  %133 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc180, align 8
  %134 = load %struct._object*, %struct._object** %_py_decref_tmp172, align 8
  call void %133(%struct._object* %134)
  br label %if.end.181

if.end.181:                                       ; preds = %if.else.177, %if.then.176
  br label %do.end.182

do.end.182:                                       ; preds = %if.end.181
  br label %if.end.183

if.end.183:                                       ; preds = %do.end.182, %lor.lhs.false.99
  %135 = load %struct._object*, %struct._object** %result6, align 8
  store %struct._object* %135, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.183, %if.then.19, %if.end.12, %if.then
  %136 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %136
}

; Function Attrs: nounwind uwtable
define i32 @_PyGen_FetchStopIterationValue(%struct._object** %pvalue) #0 {
entry:
  %retval = alloca i32, align 4
  %pvalue.addr = alloca %struct._object**, align 8
  %et = alloca %struct._object*, align 8
  %ev = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp13 = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  store %struct._object** %pvalue, %struct._object*** %pvalue.addr, align 8
  store %struct._object* null, %struct._object** %value, align 8
  %0 = load %struct._object*, %struct._object** @PyExc_StopIteration, align 8
  %call = call i32 @PyErr_ExceptionMatches(%struct._object* %0)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.else.43

if.then:                                          ; preds = %entry
  call void @PyErr_Fetch(%struct._object** %et, %struct._object** %ev, %struct._object** %tb)
  br label %do.body

do.body:                                          ; preds = %if.then
  %1 = load %struct._object*, %struct._object** %et, align 8
  store %struct._object* %1, %struct._object** %_py_xdecref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %2, null
  br i1 %cmp, label %if.then.1, label %if.end.6

if.then.1:                                        ; preds = %do.body
  br label %do.body.2

do.body.2:                                        ; preds = %if.then.1
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp3 = icmp ne i64 %dec, 0
  br i1 %cmp3, label %if.then.4, label %if.else

if.then.4:                                        ; preds = %do.body.2
  br label %if.end

if.else:                                          ; preds = %do.body.2
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %tp_dealloc5 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc5, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.4
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %10 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp9, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  %cmp10 = icmp ne %struct._object* %11, null
  br i1 %cmp10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %do.body.8
  br label %do.body.12

do.body.12:                                       ; preds = %if.then.11
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp9, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp13, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_refcnt14 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt14, align 8
  %dec15 = add i64 %14, -1
  store i64 %dec15, i64* %ob_refcnt14, align 8
  %cmp16 = icmp ne i64 %dec15, 0
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %do.body.12
  br label %if.end.22

if.else.18:                                       ; preds = %do.body.12
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  %ob_type19 = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type19, align 8
  %tp_dealloc20 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %tp_dealloc21 = bitcast {}** %tp_dealloc20 to void (%struct._object*)**
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc21, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp13, align 8
  call void %17(%struct._object* %18)
  br label %if.end.22

if.end.22:                                        ; preds = %if.else.18, %if.then.17
  br label %do.end.23

do.end.23:                                        ; preds = %if.end.22
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.8
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  %19 = load %struct._object*, %struct._object** %ev, align 8
  %tobool26 = icmp ne %struct._object* %19, null
  br i1 %tobool26, label %if.then.27, label %if.end.42

if.then.27:                                       ; preds = %do.end.25
  %20 = load %struct._object*, %struct._object** %ev, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyStopIterationObject*
  %value28 = getelementptr inbounds %struct.PyStopIterationObject, %struct.PyStopIterationObject* %21, i32 0, i32 7
  %22 = load %struct._object*, %struct._object** %value28, align 8
  store %struct._object* %22, %struct._object** %value, align 8
  %23 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 0
  %24 = load i64, i64* %ob_refcnt29, align 8
  %inc = add i64 %24, 1
  store i64 %inc, i64* %ob_refcnt29, align 8
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.27
  %25 = load %struct._object*, %struct._object** %ev, align 8
  store %struct._object* %25, %struct._object** %_py_decref_tmp31, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %26, i32 0, i32 0
  %27 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %27, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.40

if.else.36:                                       ; preds = %do.body.30
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 1
  %29 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %29, i32 0, i32 4
  %tp_dealloc39 = bitcast {}** %tp_dealloc38 to void (%struct._object*)**
  %30 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %30(%struct._object* %31)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.end.25
  br label %if.end.48

if.else.43:                                       ; preds = %entry
  %call44 = call %struct._object* @PyErr_Occurred()
  %tobool45 = icmp ne %struct._object* %call44, null
  br i1 %tobool45, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %if.else.43
  store i32 -1, i32* %retval
  br label %return

if.end.47:                                        ; preds = %if.else.43
  br label %if.end.48

if.end.48:                                        ; preds = %if.end.47, %if.end.42
  %32 = load %struct._object*, %struct._object** %value, align 8
  %cmp49 = icmp eq %struct._object* %32, null
  br i1 %cmp49, label %if.then.50, label %if.end.53

if.then.50:                                       ; preds = %if.end.48
  store %struct._object* @_Py_NoneStruct, %struct._object** %value, align 8
  %33 = load %struct._object*, %struct._object** %value, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 0
  %34 = load i64, i64* %ob_refcnt51, align 8
  %inc52 = add i64 %34, 1
  store i64 %inc52, i64* %ob_refcnt51, align 8
  br label %if.end.53

if.end.53:                                        ; preds = %if.then.50, %if.end.48
  %35 = load %struct._object*, %struct._object** %value, align 8
  %36 = load %struct._object**, %struct._object*** %pvalue.addr, align 8
  store %struct._object* %35, %struct._object** %36, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.53, %if.then.46
  %37 = load i32, i32* %retval
  ret i32 %37
}

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare %struct._object* @PyErr_Occurred() #1

; Function Attrs: nounwind uwtable
define internal void @gen_dealloc(%struct.PyGenObject* %gen) #0 {
entry:
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %self = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  %g18 = alloca %union._gc_head*, align 8
  %g49 = alloca %union._gc_head*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp87 = alloca %struct._object*, align 8
  %_py_decref_tmp92 = alloca %struct._object*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %1 = bitcast %struct.PyGenObject* %0 to %struct._object*
  store %struct._object* %1, %struct._object** %self, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %3 = bitcast %struct.PyGenObject* %2 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %3, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  br label %do.body.1

do.body.1:                                        ; preds = %do.body
  %4 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %4 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %5 = load i64, i64* %gc_refs, align 8
  %and = and i64 %5, 1
  %or = or i64 %and, -4
  %6 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc2 = bitcast %union._gc_head* %6 to %struct.anon*
  %gc_refs3 = getelementptr inbounds %struct.anon, %struct.anon* %gc2, i32 0, i32 2
  store i64 %or, i64* %gc_refs3, align 8
  br label %do.end

do.end:                                           ; preds = %do.body.1
  %7 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc4 = bitcast %union._gc_head* %7 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc4, i32 0, i32 0
  %8 = load %union._gc_head*, %union._gc_head** %gc_next, align 8
  %9 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc5 = bitcast %union._gc_head* %9 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc5, i32 0, i32 1
  %10 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %gc6 = bitcast %union._gc_head* %10 to %struct.anon*
  %gc_next7 = getelementptr inbounds %struct.anon, %struct.anon* %gc6, i32 0, i32 0
  store %union._gc_head* %8, %union._gc_head** %gc_next7, align 8
  %11 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc8 = bitcast %union._gc_head* %11 to %struct.anon*
  %gc_prev9 = getelementptr inbounds %struct.anon, %struct.anon* %gc8, i32 0, i32 1
  %12 = load %union._gc_head*, %union._gc_head** %gc_prev9, align 8
  %13 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc10 = bitcast %union._gc_head* %13 to %struct.anon*
  %gc_next11 = getelementptr inbounds %struct.anon, %struct.anon* %gc10, i32 0, i32 0
  %14 = load %union._gc_head*, %union._gc_head** %gc_next11, align 8
  %gc12 = bitcast %union._gc_head* %14 to %struct.anon*
  %gc_prev13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 1
  store %union._gc_head* %12, %union._gc_head** %gc_prev13, align 8
  %15 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %15 to %struct.anon*
  %gc_next15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.end
  %16 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_weakreflist = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %16, i32 0, i32 4
  %17 = load %struct._object*, %struct._object** %gi_weakreflist, align 8
  %cmp = icmp ne %struct._object* %17, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.end.16
  %18 = load %struct._object*, %struct._object** %self, align 8
  call void @PyObject_ClearWeakRefs(%struct._object* %18)
  br label %if.end

if.end:                                           ; preds = %if.then, %do.end.16
  br label %do.body.17

do.body.17:                                       ; preds = %if.end
  %19 = load %struct._object*, %struct._object** %self, align 8
  %20 = bitcast %struct._object* %19 to %union._gc_head*
  %add.ptr19 = getelementptr %union._gc_head, %union._gc_head* %20, i64 -1
  store %union._gc_head* %add.ptr19, %union._gc_head** %g18, align 8
  %21 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %gc20 = bitcast %union._gc_head* %21 to %struct.anon*
  %gc_refs21 = getelementptr inbounds %struct.anon, %struct.anon* %gc20, i32 0, i32 2
  %22 = load i64, i64* %gc_refs21, align 8
  %shr = ashr i64 %22, 1
  %cmp22 = icmp ne i64 %shr, -2
  br i1 %cmp22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %do.body.17
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable

if.end.24:                                        ; preds = %do.body.17
  br label %do.body.25

do.body.25:                                       ; preds = %if.end.24
  %23 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %gc26 = bitcast %union._gc_head* %23 to %struct.anon*
  %gc_refs27 = getelementptr inbounds %struct.anon, %struct.anon* %gc26, i32 0, i32 2
  %24 = load i64, i64* %gc_refs27, align 8
  %and28 = and i64 %24, 1
  %or29 = or i64 %and28, -6
  %25 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %gc30 = bitcast %union._gc_head* %25 to %struct.anon*
  %gc_refs31 = getelementptr inbounds %struct.anon, %struct.anon* %gc30, i32 0, i32 2
  store i64 %or29, i64* %gc_refs31, align 8
  br label %do.end.32

do.end.32:                                        ; preds = %do.body.25
  %26 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %27 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %gc33 = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_next34 = getelementptr inbounds %struct.anon, %struct.anon* %gc33, i32 0, i32 0
  store %union._gc_head* %26, %union._gc_head** %gc_next34, align 8
  %28 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc35 = bitcast %union._gc_head* %28 to %struct.anon*
  %gc_prev36 = getelementptr inbounds %struct.anon, %struct.anon* %gc35, i32 0, i32 1
  %29 = load %union._gc_head*, %union._gc_head** %gc_prev36, align 8
  %30 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %gc37 = bitcast %union._gc_head* %30 to %struct.anon*
  %gc_prev38 = getelementptr inbounds %struct.anon, %struct.anon* %gc37, i32 0, i32 1
  store %union._gc_head* %29, %union._gc_head** %gc_prev38, align 8
  %31 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %32 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %gc39 = bitcast %union._gc_head* %32 to %struct.anon*
  %gc_prev40 = getelementptr inbounds %struct.anon, %struct.anon* %gc39, i32 0, i32 1
  %33 = load %union._gc_head*, %union._gc_head** %gc_prev40, align 8
  %gc41 = bitcast %union._gc_head* %33 to %struct.anon*
  %gc_next42 = getelementptr inbounds %struct.anon, %struct.anon* %gc41, i32 0, i32 0
  store %union._gc_head* %31, %union._gc_head** %gc_next42, align 8
  %34 = load %union._gc_head*, %union._gc_head** %g18, align 8
  %35 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc43 = bitcast %union._gc_head* %35 to %struct.anon*
  %gc_prev44 = getelementptr inbounds %struct.anon, %struct.anon* %gc43, i32 0, i32 1
  store %union._gc_head* %34, %union._gc_head** %gc_prev44, align 8
  br label %do.end.45

do.end.45:                                        ; preds = %do.end.32
  %36 = load %struct._object*, %struct._object** %self, align 8
  %call = call i32 @PyObject_CallFinalizerFromDealloc(%struct._object* %36)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then.46, label %if.end.47

if.then.46:                                       ; preds = %do.end.45
  br label %return

if.end.47:                                        ; preds = %do.end.45
  br label %do.body.48

do.body.48:                                       ; preds = %if.end.47
  %37 = load %struct._object*, %struct._object** %self, align 8
  %38 = bitcast %struct._object* %37 to %union._gc_head*
  %add.ptr50 = getelementptr %union._gc_head, %union._gc_head* %38, i64 -1
  store %union._gc_head* %add.ptr50, %union._gc_head** %g49, align 8
  br label %do.body.51

do.body.51:                                       ; preds = %do.body.48
  %39 = load %union._gc_head*, %union._gc_head** %g49, align 8
  %gc52 = bitcast %union._gc_head* %39 to %struct.anon*
  %gc_refs53 = getelementptr inbounds %struct.anon, %struct.anon* %gc52, i32 0, i32 2
  %40 = load i64, i64* %gc_refs53, align 8
  %and54 = and i64 %40, 1
  %or55 = or i64 %and54, -4
  %41 = load %union._gc_head*, %union._gc_head** %g49, align 8
  %gc56 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_refs57 = getelementptr inbounds %struct.anon, %struct.anon* %gc56, i32 0, i32 2
  store i64 %or55, i64* %gc_refs57, align 8
  br label %do.end.58

do.end.58:                                        ; preds = %do.body.51
  %42 = load %union._gc_head*, %union._gc_head** %g49, align 8
  %gc59 = bitcast %union._gc_head* %42 to %struct.anon*
  %gc_next60 = getelementptr inbounds %struct.anon, %struct.anon* %gc59, i32 0, i32 0
  %43 = load %union._gc_head*, %union._gc_head** %gc_next60, align 8
  %44 = load %union._gc_head*, %union._gc_head** %g49, align 8
  %gc61 = bitcast %union._gc_head* %44 to %struct.anon*
  %gc_prev62 = getelementptr inbounds %struct.anon, %struct.anon* %gc61, i32 0, i32 1
  %45 = load %union._gc_head*, %union._gc_head** %gc_prev62, align 8
  %gc63 = bitcast %union._gc_head* %45 to %struct.anon*
  %gc_next64 = getelementptr inbounds %struct.anon, %struct.anon* %gc63, i32 0, i32 0
  store %union._gc_head* %43, %union._gc_head** %gc_next64, align 8
  %46 = load %union._gc_head*, %union._gc_head** %g49, align 8
  %gc65 = bitcast %union._gc_head* %46 to %struct.anon*
  %gc_prev66 = getelementptr inbounds %struct.anon, %struct.anon* %gc65, i32 0, i32 1
  %47 = load %union._gc_head*, %union._gc_head** %gc_prev66, align 8
  %48 = load %union._gc_head*, %union._gc_head** %g49, align 8
  %gc67 = bitcast %union._gc_head* %48 to %struct.anon*
  %gc_next68 = getelementptr inbounds %struct.anon, %struct.anon* %gc67, i32 0, i32 0
  %49 = load %union._gc_head*, %union._gc_head** %gc_next68, align 8
  %gc69 = bitcast %union._gc_head* %49 to %struct.anon*
  %gc_prev70 = getelementptr inbounds %struct.anon, %struct.anon* %gc69, i32 0, i32 1
  store %union._gc_head* %47, %union._gc_head** %gc_prev70, align 8
  %50 = load %union._gc_head*, %union._gc_head** %g49, align 8
  %gc71 = bitcast %union._gc_head* %50 to %struct.anon*
  %gc_next72 = getelementptr inbounds %struct.anon, %struct.anon* %gc71, i32 0, i32 0
  store %union._gc_head* null, %union._gc_head** %gc_next72, align 8
  br label %do.end.73

do.end.73:                                        ; preds = %do.end.58
  br label %do.body.74

do.body.74:                                       ; preds = %do.end.73
  %51 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %51, i32 0, i32 1
  %52 = load %struct._frame*, %struct._frame** %gi_frame, align 8
  %53 = bitcast %struct._frame* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %_py_tmp, align 8
  %54 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp75 = icmp ne %struct._object* %54, null
  br i1 %cmp75, label %if.then.76, label %if.end.84

if.then.76:                                       ; preds = %do.body.74
  %55 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame77 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %55, i32 0, i32 1
  store %struct._frame* null, %struct._frame** %gi_frame77, align 8
  br label %do.body.78

do.body.78:                                       ; preds = %if.then.76
  %56 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %56, %struct._object** %_py_decref_tmp, align 8
  %57 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %57, i32 0, i32 0
  %58 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %58, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp79 = icmp ne i64 %dec, 0
  br i1 %cmp79, label %if.then.80, label %if.else

if.then.80:                                       ; preds = %do.body.78
  br label %if.end.82

if.else:                                          ; preds = %do.body.78
  %59 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %59, i32 0, i32 1
  %60 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %60, i32 0, i32 4
  %tp_dealloc81 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %61 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %62 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %61(%struct._object* %62)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else, %if.then.80
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  br label %if.end.84

if.end.84:                                        ; preds = %do.end.83, %do.body.74
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %do.body.86

do.body.86:                                       ; preds = %do.end.85
  %63 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %63, i32 0, i32 3
  %64 = load %struct._object*, %struct._object** %gi_code, align 8
  store %struct._object* %64, %struct._object** %_py_tmp87, align 8
  %65 = load %struct._object*, %struct._object** %_py_tmp87, align 8
  %cmp88 = icmp ne %struct._object* %65, null
  br i1 %cmp88, label %if.then.89, label %if.end.103

if.then.89:                                       ; preds = %do.body.86
  %66 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_code90 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %66, i32 0, i32 3
  store %struct._object* null, %struct._object** %gi_code90, align 8
  br label %do.body.91

do.body.91:                                       ; preds = %if.then.89
  %67 = load %struct._object*, %struct._object** %_py_tmp87, align 8
  store %struct._object* %67, %struct._object** %_py_decref_tmp92, align 8
  %68 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_refcnt93 = getelementptr inbounds %struct._object, %struct._object* %68, i32 0, i32 0
  %69 = load i64, i64* %ob_refcnt93, align 8
  %dec94 = add i64 %69, -1
  store i64 %dec94, i64* %ob_refcnt93, align 8
  %cmp95 = icmp ne i64 %dec94, 0
  br i1 %cmp95, label %if.then.96, label %if.else.97

if.then.96:                                       ; preds = %do.body.91
  br label %if.end.101

if.else.97:                                       ; preds = %do.body.91
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  %ob_type98 = getelementptr inbounds %struct._object, %struct._object* %70, i32 0, i32 1
  %71 = load %struct._typeobject*, %struct._typeobject** %ob_type98, align 8
  %tp_dealloc99 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %71, i32 0, i32 4
  %tp_dealloc100 = bitcast {}** %tp_dealloc99 to void (%struct._object*)**
  %72 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc100, align 8
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp92, align 8
  call void %72(%struct._object* %73)
  br label %if.end.101

if.end.101:                                       ; preds = %if.else.97, %if.then.96
  br label %do.end.102

do.end.102:                                       ; preds = %if.end.101
  br label %if.end.103

if.end.103:                                       ; preds = %do.end.102, %do.body.86
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  %74 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %75 = bitcast %struct.PyGenObject* %74 to i8*
  call void @PyObject_GC_Del(i8* %75)
  br label %return

return:                                           ; preds = %do.end.104, %if.then.46
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_repr(%struct.PyGenObject* %gen) #0 {
entry:
  %gen.addr = alloca %struct.PyGenObject*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %gi_code, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyCodeObject*
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %2, i32 0, i32 14
  %3 = load %struct._object*, %struct._object** %co_name, align 8
  %4 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i32 0, i32 0), %struct._object* %3, %struct.PyGenObject* %4)
  ret %struct._object* %call
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @gen_traverse(%struct.PyGenObject* %gen, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %0, i32 0, i32 1
  %1 = load %struct._frame*, %struct._frame** %gi_frame, align 8
  %2 = bitcast %struct._frame* %1 to %struct._object*
  %tobool = icmp ne %struct._object* %2, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %3 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %4 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame1 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %4, i32 0, i32 1
  %5 = load %struct._frame*, %struct._frame** %gi_frame1, align 8
  %6 = bitcast %struct._frame* %5 to %struct._object*
  %7 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %3(%struct._object* %6, i8* %7)
  store i32 %call, i32* %vret, align 4
  %8 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %8, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %9 = load i32, i32* %vret, align 4
  store i32 %9, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %10 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %10, i32 0, i32 3
  %11 = load %struct._object*, %struct._object** %gi_code, align 8
  %tobool6 = icmp ne %struct._object* %11, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %12 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %13 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_code9 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %13, i32 0, i32 3
  %14 = load %struct._object*, %struct._object** %gi_code9, align 8
  %15 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %12(%struct._object* %14, i8* %15)
  store i32 %call10, i32* %vret8, align 4
  %16 = load i32, i32* %vret8, align 4
  %tobool11 = icmp ne i32 %16, 0
  br i1 %tobool11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.7
  %17 = load i32, i32* %vret8, align 4
  store i32 %17, i32* %retval
  br label %return

if.end.13:                                        ; preds = %if.then.7
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %do.body.5
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.15, %if.then.12, %if.then.3
  %18 = load i32, i32* %retval
  ret i32 %18
}

declare %struct._object* @PyObject_SelfIter(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_iternext(%struct.PyGenObject* %gen) #0 {
entry:
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %val = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  store %struct._object* null, %struct._object** %val, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %1 = load %struct._object*, %struct._object** %val, align 8
  %call = call %struct._object* @gen_send_ex(%struct.PyGenObject* %0, %struct._object* %1, i32 0)
  store %struct._object* %call, %struct._object** %ret, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %2, %struct._object** %_py_xdecref_tmp, align 8
  %3 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp = icmp ne %struct._object* %3, null
  br i1 %cmp, label %if.then, label %if.end.5

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
  %tp_dealloc4 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc4, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.3
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.5

if.end.5:                                         ; preds = %do.end, %do.body
  br label %do.end.6

do.end.6:                                         ; preds = %if.end.5
  %11 = load %struct._object*, %struct._object** %ret, align 8
  ret %struct._object* %11
}

; Function Attrs: nounwind uwtable
define %struct._object* @PyGen_New(%struct._frame* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %f.addr = alloca %struct._frame*, align 8
  %gen = alloca %struct.PyGenObject*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %call = call %struct._object* @_PyObject_GC_New(%struct._typeobject* bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyGen_Type to %struct._typeobject*))
  %0 = bitcast %struct._object* %call to %struct.PyGenObject*
  store %struct.PyGenObject* %0, %struct.PyGenObject** %gen, align 8
  %1 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %cmp = icmp eq %struct.PyGenObject* %1, null
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %2 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %3 = bitcast %struct._frame* %2 to %struct._object*
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %tp_dealloc3 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc3, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.4:                                         ; preds = %entry
  %10 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %11 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %11, i32 0, i32 1
  store %struct._frame* %10, %struct._frame** %gi_frame, align 8
  %12 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %13 = bitcast %struct.PyGenObject* %12 to %struct._object*
  %14 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_gen = getelementptr inbounds %struct._frame, %struct._frame* %14, i32 0, i32 12
  store %struct._object* %13, %struct._object** %f_gen, align 8
  %15 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %15, i32 0, i32 2
  %16 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %17 = bitcast %struct.PyCodeObject* %16 to %struct._object*
  %ob_refcnt5 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt5, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt5, align 8
  %19 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code6 = getelementptr inbounds %struct._frame, %struct._frame* %19, i32 0, i32 2
  %20 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code6, align 8
  %21 = bitcast %struct.PyCodeObject* %20 to %struct._object*
  %22 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %22, i32 0, i32 3
  store %struct._object* %21, %struct._object** %gi_code, align 8
  %23 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %gi_running = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %23, i32 0, i32 2
  store i8 0, i8* %gi_running, align 1
  %24 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %gi_weakreflist = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %24, i32 0, i32 4
  store %struct._object* null, %struct._object** %gi_weakreflist, align 8
  br label %do.body.7

do.body.7:                                        ; preds = %if.end.4
  %25 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %26 = bitcast %struct.PyGenObject* %25 to %union._gc_head*
  %add.ptr = getelementptr %union._gc_head, %union._gc_head* %26, i64 -1
  store %union._gc_head* %add.ptr, %union._gc_head** %g, align 8
  %27 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %27 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %28 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %28, 1
  %cmp8 = icmp ne i64 %shr, -2
  br i1 %cmp8, label %if.then.9, label %if.end.10

if.then.9:                                        ; preds = %do.body.7
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0)) #4
  unreachable

if.end.10:                                        ; preds = %do.body.7
  br label %do.body.11

do.body.11:                                       ; preds = %if.end.10
  %29 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc12 = bitcast %union._gc_head* %29 to %struct.anon*
  %gc_refs13 = getelementptr inbounds %struct.anon, %struct.anon* %gc12, i32 0, i32 2
  %30 = load i64, i64* %gc_refs13, align 8
  %and = and i64 %30, 1
  %or = or i64 %and, -6
  %31 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc14 = bitcast %union._gc_head* %31 to %struct.anon*
  %gc_refs15 = getelementptr inbounds %struct.anon, %struct.anon* %gc14, i32 0, i32 2
  store i64 %or, i64* %gc_refs15, align 8
  br label %do.end.16

do.end.16:                                        ; preds = %do.body.11
  %32 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %33 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc17 = bitcast %union._gc_head* %33 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc17, i32 0, i32 0
  store %union._gc_head* %32, %union._gc_head** %gc_next, align 8
  %34 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc18 = bitcast %union._gc_head* %34 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc18, i32 0, i32 1
  %35 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %36 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc19 = bitcast %union._gc_head* %36 to %struct.anon*
  %gc_prev20 = getelementptr inbounds %struct.anon, %struct.anon* %gc19, i32 0, i32 1
  store %union._gc_head* %35, %union._gc_head** %gc_prev20, align 8
  %37 = load %union._gc_head*, %union._gc_head** %g, align 8
  %38 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc21 = bitcast %union._gc_head* %38 to %struct.anon*
  %gc_prev22 = getelementptr inbounds %struct.anon, %struct.anon* %gc21, i32 0, i32 1
  %39 = load %union._gc_head*, %union._gc_head** %gc_prev22, align 8
  %gc23 = bitcast %union._gc_head* %39 to %struct.anon*
  %gc_next24 = getelementptr inbounds %struct.anon, %struct.anon* %gc23, i32 0, i32 0
  store %union._gc_head* %37, %union._gc_head** %gc_next24, align 8
  %40 = load %union._gc_head*, %union._gc_head** %g, align 8
  %41 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc25 = bitcast %union._gc_head* %41 to %struct.anon*
  %gc_prev26 = getelementptr inbounds %struct.anon, %struct.anon* %gc25, i32 0, i32 1
  store %union._gc_head* %40, %union._gc_head** %gc_prev26, align 8
  br label %do.end.27

do.end.27:                                        ; preds = %do.end.16
  %42 = load %struct.PyGenObject*, %struct.PyGenObject** %gen, align 8
  %43 = bitcast %struct.PyGenObject* %42 to %struct._object*
  store %struct._object* %43, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.27, %do.end
  %44 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %44
}

declare %struct._object* @_PyObject_GC_New(%struct._typeobject*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @PyGen_NeedsFinalizing(%struct.PyGenObject* %gen) #0 {
entry:
  %retval = alloca i32, align 4
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %i = alloca i32, align 4
  %f = alloca %struct._frame*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %0, i32 0, i32 1
  %1 = load %struct._frame*, %struct._frame** %gi_frame, align 8
  store %struct._frame* %1, %struct._frame** %f, align 8
  %2 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp = icmp eq %struct._frame* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 7
  %4 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %cmp1 = icmp eq %struct._object** %4, null
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load i32, i32* %i, align 4
  %6 = load %struct._frame*, %struct._frame** %f, align 8
  %f_iblock = getelementptr inbounds %struct._frame, %struct._frame* %6, i32 0, i32 15
  %7 = load i32, i32* %f_iblock, align 4
  %cmp2 = icmp slt i32 %5, %7
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4
  %idxprom = sext i32 %8 to i64
  %9 = load %struct._frame*, %struct._frame** %f, align 8
  %f_blockstack = getelementptr inbounds %struct._frame, %struct._frame* %9, i32 0, i32 17
  %arrayidx = getelementptr [20 x %struct.PyTryBlock], [20 x %struct.PyTryBlock]* %f_blockstack, i32 0, i64 %idxprom
  %b_type = getelementptr inbounds %struct.PyTryBlock, %struct.PyTryBlock* %arrayidx, i32 0, i32 0
  %10 = load i32, i32* %b_type, align 4
  %cmp3 = icmp ne i32 %10, 120
  br i1 %cmp3, label %if.then.4, label %if.end.5

if.then.4:                                        ; preds = %for.body
  store i32 1, i32* %retval
  br label %return

if.end.5:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.5
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.4, %if.then
  %12 = load i32, i32* %retval
  ret i32 %12
}

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
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !1
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #5, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @PyErr_SetNone(%struct._object*) #1

declare %struct._object* @PyEval_EvalFrameEx(%struct._frame*, i32) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare void @PyErr_SetObject(%struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_yf(%struct.PyGenObject* %gen) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %yf = alloca %struct._object*, align 8
  %f = alloca %struct._frame*, align 8
  %bytecode = alloca %struct._object*, align 8
  %code = alloca i8*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  store %struct._object* null, %struct._object** %yf, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %0, i32 0, i32 1
  %1 = load %struct._frame*, %struct._frame** %gi_frame, align 8
  store %struct._frame* %1, %struct._frame** %f, align 8
  %2 = load %struct._frame*, %struct._frame** %f, align 8
  %tobool = icmp ne %struct._frame* %2, null
  br i1 %tobool, label %land.lhs.true, label %if.end.6

land.lhs.true:                                    ; preds = %entry
  %3 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 7
  %4 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %tobool1 = icmp ne %struct._object** %4, null
  br i1 %tobool1, label %if.then, label %if.end.6

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct._frame*, %struct._frame** %f, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %5, i32 0, i32 2
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %co_code = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %6, i32 0, i32 6
  %7 = load %struct._object*, %struct._object** %co_code, align 8
  store %struct._object* %7, %struct._object** %bytecode, align 8
  %8 = load %struct._object*, %struct._object** %bytecode, align 8
  %9 = bitcast %struct._object* %8 to %struct.PyBytesObject*
  %ob_sval = getelementptr inbounds %struct.PyBytesObject, %struct.PyBytesObject* %9, i32 0, i32 2
  %arraydecay = getelementptr inbounds [1 x i8], [1 x i8]* %ob_sval, i32 0, i32 0
  store i8* %arraydecay, i8** %code, align 8
  %10 = load %struct._frame*, %struct._frame** %f, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %10, i32 0, i32 13
  %11 = load i32, i32* %f_lasti, align 4
  %add = add i32 %11, 1
  %idxprom = sext i32 %add to i64
  %12 = load i8*, i8** %code, align 8
  %arrayidx = getelementptr i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %cmp = icmp ne i32 %conv, 72
  br i1 %cmp, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %if.then
  %14 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop4 = getelementptr inbounds %struct._frame, %struct._frame* %14, i32 0, i32 7
  %15 = load %struct._object**, %struct._object*** %f_stacktop4, align 8
  %arrayidx5 = getelementptr %struct._object*, %struct._object** %15, i64 -1
  %16 = load %struct._object*, %struct._object** %arrayidx5, align 8
  store %struct._object* %16, %struct._object** %yf, align 8
  %17 = load %struct._object*, %struct._object** %yf, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 0
  %18 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.end, %land.lhs.true, %entry
  %19 = load %struct._object*, %struct._object** %yf, align 8
  store %struct._object* %19, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.3
  %20 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %20
}

; Function Attrs: nounwind uwtable
define internal i32 @gen_close_iter(%struct._object* %yf) #0 {
entry:
  %retval = alloca i32, align 4
  %yf.addr = alloca %struct._object*, align 8
  %retval1 = alloca %struct._object*, align 8
  %meth = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp27 = alloca %struct._object*, align 8
  store %struct._object* %yf, %struct._object** %yf.addr, align 8
  store %struct._object* null, %struct._object** %retval1, align 8
  %0 = load %struct._object*, %struct._object** %yf.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyGen_Type to %struct._typeobject*)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** %yf.addr, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyGenObject*
  %call = call %struct._object* @gen_close(%struct.PyGenObject* %3, %struct._object* null)
  store %struct._object* %call, %struct._object** %retval1, align 8
  %4 = load %struct._object*, %struct._object** %retval1, align 8
  %cmp2 = icmp eq %struct._object* %4, null
  br i1 %cmp2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.22

if.else:                                          ; preds = %entry
  %5 = load %struct._object*, %struct._object** %yf.addr, align 8
  %call4 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %5, %struct._Py_Identifier* @gen_close_iter.PyId_close)
  store %struct._object* %call4, %struct._object** %meth, align 8
  %6 = load %struct._object*, %struct._object** %meth, align 8
  %cmp5 = icmp eq %struct._object* %6, null
  br i1 %cmp5, label %if.then.6, label %if.else.10

if.then.6:                                        ; preds = %if.else
  %7 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call7 = call i32 @PyErr_ExceptionMatches(%struct._object* %7)
  %tobool = icmp ne i32 %call7, 0
  br i1 %tobool, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.then.6
  %8 = load %struct._object*, %struct._object** %yf.addr, align 8
  call void @PyErr_WriteUnraisable(%struct._object* %8)
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.8, %if.then.6
  call void @PyErr_Clear()
  br label %if.end.21

if.else.10:                                       ; preds = %if.else
  %9 = load %struct._object*, %struct._object** %meth, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0))
  store %struct._object* %call11, %struct._object** %retval1, align 8
  br label %do.body

do.body:                                          ; preds = %if.else.10
  %10 = load %struct._object*, %struct._object** %meth, align 8
  store %struct._object* %10, %struct._object** %_py_decref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 0
  %12 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %12, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else.14

if.then.13:                                       ; preds = %do.body
  br label %if.end.17

if.else.14:                                       ; preds = %do.body
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type15 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 1
  %14 = load %struct._typeobject*, %struct._typeobject** %ob_type15, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %14, i32 0, i32 4
  %tp_dealloc16 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %15 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc16, align 8
  %16 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %15(%struct._object* %16)
  br label %if.end.17

if.end.17:                                        ; preds = %if.else.14, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end.17
  %17 = load %struct._object*, %struct._object** %retval1, align 8
  %cmp18 = icmp eq %struct._object* %17, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.end
  store i32 -1, i32* %retval
  br label %return

if.end.20:                                        ; preds = %do.end
  br label %if.end.21

if.end.21:                                        ; preds = %if.end.20, %if.end.9
  br label %if.end.22

if.end.22:                                        ; preds = %if.end.21, %if.end
  br label %do.body.23

do.body.23:                                       ; preds = %if.end.22
  %18 = load %struct._object*, %struct._object** %retval1, align 8
  store %struct._object* %18, %struct._object** %_py_xdecref_tmp, align 8
  %19 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp24 = icmp ne %struct._object* %19, null
  br i1 %cmp24, label %if.then.25, label %if.end.38

if.then.25:                                       ; preds = %do.body.23
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %20 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp27, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_refcnt28 = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt28, align 8
  %dec29 = add i64 %22, -1
  store i64 %dec29, i64* %ob_refcnt28, align 8
  %cmp30 = icmp ne i64 %dec29, 0
  br i1 %cmp30, label %if.then.31, label %if.else.32

if.then.31:                                       ; preds = %do.body.26
  br label %if.end.36

if.else.32:                                       ; preds = %do.body.26
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  %ob_type33 = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type33, align 8
  %tp_dealloc34 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %tp_dealloc35 = bitcast {}** %tp_dealloc34 to void (%struct._object*)**
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp27, align 8
  call void %25(%struct._object* %26)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.32, %if.then.31
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.23
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %do.end.39, %if.then.19, %if.then.3
  %27 = load i32, i32* %retval
  ret i32 %27
}

declare void @PyErr_Clear() #1

declare %struct._object* @_PyObject_GetAttrId(%struct._object*, %struct._Py_Identifier*) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare void @PyObject_ClearWeakRefs(%struct._object*) #1

declare i32 @PyObject_CallFinalizerFromDealloc(%struct._object*) #1

declare void @PyObject_GC_Del(i8*) #1

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_throw(%struct.PyGenObject* %gen, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %args.addr = alloca %struct._object*, align 8
  %typ = alloca %struct._object*, align 8
  %tb = alloca %struct._object*, align 8
  %val = alloca %struct._object*, align 8
  %yf = alloca %struct._object*, align 8
  %ret = alloca %struct._object*, align 8
  %err = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  %meth = alloca %struct._object*, align 8
  %_py_decref_tmp31 = alloca %struct._object*, align 8
  %_py_decref_tmp44 = alloca %struct._object*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %_py_decref_tmp73 = alloca %struct._object*, align 8
  %val86 = alloca %struct._object*, align 8
  %_py_decref_tmp88 = alloca %struct._object*, align 8
  %_py_decref_tmp105 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xincref_tmp140 = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp169 = alloca %struct._object*, align 8
  %_py_decref_tmp197 = alloca %struct._object*, align 8
  %_py_xdecref_tmp209 = alloca %struct._object*, align 8
  %_py_decref_tmp213 = alloca %struct._object*, align 8
  %_py_xdecref_tmp227 = alloca %struct._object*, align 8
  %_py_decref_tmp231 = alloca %struct._object*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %tb, align 8
  store %struct._object* null, %struct._object** %val, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %call = call %struct._object* @gen_yf(%struct.PyGenObject* %0)
  store %struct._object* %call, %struct._object** %yf, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call1 = call i32 (%struct._object*, i8*, i64, i64, ...) @PyArg_UnpackTuple(%struct._object* %1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0), i64 1, i64 3, %struct._object** %typ, %struct._object** %val, %struct._object** %tb)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct._object*, %struct._object** %yf, align 8
  %tobool2 = icmp ne %struct._object* %2, null
  br i1 %tobool2, label %if.then.3, label %if.end.120

if.then.3:                                        ; preds = %if.end
  %3 = load %struct._object*, %struct._object** %typ, align 8
  %4 = load %struct._object*, %struct._object** @PyExc_GeneratorExit, align 8
  %call4 = call i32 @PyErr_GivenExceptionMatches(%struct._object* %3, %struct._object* %4)
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.then.6, label %if.end.16

if.then.6:                                        ; preds = %if.then.3
  %5 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %5, i32 0, i32 2
  store i8 1, i8* %gi_running, align 1
  %6 = load %struct._object*, %struct._object** %yf, align 8
  %call7 = call i32 @gen_close_iter(%struct._object* %6)
  store i32 %call7, i32* %err, align 4
  %7 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running8 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %7, i32 0, i32 2
  store i8 0, i8* %gi_running8, align 1
  br label %do.body

do.body:                                          ; preds = %if.then.6
  %8 = load %struct._object*, %struct._object** %yf, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.9, label %if.else

if.then.9:                                        ; preds = %do.body
  br label %if.end.11

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %tp_dealloc10 = bitcast {}** %tp_dealloc to void (%struct._object*)**
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc10, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.11

if.end.11:                                        ; preds = %if.else, %if.then.9
  br label %do.end

do.end:                                           ; preds = %if.end.11
  %15 = load i32, i32* %err, align 4
  %cmp12 = icmp slt i32 %15, 0
  br i1 %cmp12, label %if.then.13, label %if.end.15

if.then.13:                                       ; preds = %do.end
  %16 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %call14 = call %struct._object* @gen_send_ex(%struct.PyGenObject* %16, %struct._object* @_Py_NoneStruct, i32 1)
  store %struct._object* %call14, %struct._object** %retval
  br label %return

if.end.15:                                        ; preds = %do.end
  br label %throw_here

if.end.16:                                        ; preds = %if.then.3
  %17 = load %struct._object*, %struct._object** %yf, align 8
  %ob_type17 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type17, align 8
  %cmp18 = icmp eq %struct._typeobject* %18, bitcast ({ %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, i32 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, i32 (%struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }* @PyGen_Type to %struct._typeobject*)
  br i1 %cmp18, label %if.then.19, label %if.else.23

if.then.19:                                       ; preds = %if.end.16
  %19 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running20 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %19, i32 0, i32 2
  store i8 1, i8* %gi_running20, align 1
  %20 = load %struct._object*, %struct._object** %yf, align 8
  %21 = bitcast %struct._object* %20 to %struct.PyGenObject*
  %22 = load %struct._object*, %struct._object** %args.addr, align 8
  %call21 = call %struct._object* @gen_throw(%struct.PyGenObject* %21, %struct._object* %22)
  store %struct._object* %call21, %struct._object** %ret, align 8
  %23 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running22 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %23, i32 0, i32 2
  store i8 0, i8* %gi_running22, align 1
  br label %if.end.71

if.else.23:                                       ; preds = %if.end.16
  %24 = load %struct._object*, %struct._object** %yf, align 8
  %call24 = call %struct._object* @_PyObject_GetAttrId(%struct._object* %24, %struct._Py_Identifier* @gen_throw.PyId_throw)
  store %struct._object* %call24, %struct._object** %meth, align 8
  %25 = load %struct._object*, %struct._object** %meth, align 8
  %cmp25 = icmp eq %struct._object* %25, null
  br i1 %cmp25, label %if.then.26, label %if.end.55

if.then.26:                                       ; preds = %if.else.23
  %26 = load %struct._object*, %struct._object** @PyExc_AttributeError, align 8
  %call27 = call i32 @PyErr_ExceptionMatches(%struct._object* %26)
  %tobool28 = icmp ne i32 %call27, 0
  br i1 %tobool28, label %if.end.42, label %if.then.29

if.then.29:                                       ; preds = %if.then.26
  br label %do.body.30

do.body.30:                                       ; preds = %if.then.29
  %27 = load %struct._object*, %struct._object** %yf, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp31, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_refcnt32 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt32, align 8
  %dec33 = add i64 %29, -1
  store i64 %dec33, i64* %ob_refcnt32, align 8
  %cmp34 = icmp ne i64 %dec33, 0
  br i1 %cmp34, label %if.then.35, label %if.else.36

if.then.35:                                       ; preds = %do.body.30
  br label %if.end.40

if.else.36:                                       ; preds = %do.body.30
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  %ob_type37 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type37, align 8
  %tp_dealloc38 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %tp_dealloc39 = bitcast {}** %tp_dealloc38 to void (%struct._object*)**
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp31, align 8
  call void %32(%struct._object* %33)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.36, %if.then.35
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.42:                                        ; preds = %if.then.26
  call void @PyErr_Clear()
  br label %do.body.43

do.body.43:                                       ; preds = %if.end.42
  %34 = load %struct._object*, %struct._object** %yf, align 8
  store %struct._object* %34, %struct._object** %_py_decref_tmp44, align 8
  %35 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_refcnt45 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 0
  %36 = load i64, i64* %ob_refcnt45, align 8
  %dec46 = add i64 %36, -1
  store i64 %dec46, i64* %ob_refcnt45, align 8
  %cmp47 = icmp ne i64 %dec46, 0
  br i1 %cmp47, label %if.then.48, label %if.else.49

if.then.48:                                       ; preds = %do.body.43
  br label %if.end.53

if.else.49:                                       ; preds = %do.body.43
  %37 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  %ob_type50 = getelementptr inbounds %struct._object, %struct._object* %37, i32 0, i32 1
  %38 = load %struct._typeobject*, %struct._typeobject** %ob_type50, align 8
  %tp_dealloc51 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %38, i32 0, i32 4
  %tp_dealloc52 = bitcast {}** %tp_dealloc51 to void (%struct._object*)**
  %39 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc52, align 8
  %40 = load %struct._object*, %struct._object** %_py_decref_tmp44, align 8
  call void %39(%struct._object* %40)
  br label %if.end.53

if.end.53:                                        ; preds = %if.else.49, %if.then.48
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %throw_here

if.end.55:                                        ; preds = %if.else.23
  %41 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running56 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %41, i32 0, i32 2
  store i8 1, i8* %gi_running56, align 1
  %42 = load %struct._object*, %struct._object** %meth, align 8
  %43 = load %struct._object*, %struct._object** %args.addr, align 8
  %call57 = call %struct._object* @PyObject_CallObject(%struct._object* %42, %struct._object* %43)
  store %struct._object* %call57, %struct._object** %ret, align 8
  %44 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_running58 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %44, i32 0, i32 2
  store i8 0, i8* %gi_running58, align 1
  br label %do.body.59

do.body.59:                                       ; preds = %if.end.55
  %45 = load %struct._object*, %struct._object** %meth, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp60, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %47, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.64, label %if.else.65

if.then.64:                                       ; preds = %do.body.59
  br label %if.end.69

if.else.65:                                       ; preds = %do.body.59
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type66 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type66, align 8
  %tp_dealloc67 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %tp_dealloc68 = bitcast {}** %tp_dealloc67 to void (%struct._object*)**
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %50(%struct._object* %51)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.65, %if.then.64
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %if.end.71

if.end.71:                                        ; preds = %do.end.70, %if.then.19
  br label %do.body.72

do.body.72:                                       ; preds = %if.end.71
  %52 = load %struct._object*, %struct._object** %yf, align 8
  store %struct._object* %52, %struct._object** %_py_decref_tmp73, align 8
  %53 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_refcnt74 = getelementptr inbounds %struct._object, %struct._object* %53, i32 0, i32 0
  %54 = load i64, i64* %ob_refcnt74, align 8
  %dec75 = add i64 %54, -1
  store i64 %dec75, i64* %ob_refcnt74, align 8
  %cmp76 = icmp ne i64 %dec75, 0
  br i1 %cmp76, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body.72
  br label %if.end.82

if.else.78:                                       ; preds = %do.body.72
  %55 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  %ob_type79 = getelementptr inbounds %struct._object, %struct._object* %55, i32 0, i32 1
  %56 = load %struct._typeobject*, %struct._typeobject** %ob_type79, align 8
  %tp_dealloc80 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %56, i32 0, i32 4
  %tp_dealloc81 = bitcast {}** %tp_dealloc80 to void (%struct._object*)**
  %57 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc81, align 8
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp73, align 8
  call void %57(%struct._object* %58)
  br label %if.end.82

if.end.82:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end.83

do.end.83:                                        ; preds = %if.end.82
  %59 = load %struct._object*, %struct._object** %ret, align 8
  %tobool84 = icmp ne %struct._object* %59, null
  br i1 %tobool84, label %if.end.119, label %if.then.85

if.then.85:                                       ; preds = %do.end.83
  %60 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %60, i32 0, i32 1
  %61 = load %struct._frame*, %struct._frame** %gi_frame, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %61, i32 0, i32 7
  %62 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %62, i32 -1
  store %struct._object** %incdec.ptr, %struct._object*** %f_stacktop, align 8
  %63 = load %struct._object*, %struct._object** %incdec.ptr, align 8
  store %struct._object* %63, %struct._object** %ret, align 8
  br label %do.body.87

do.body.87:                                       ; preds = %if.then.85
  %64 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %64, %struct._object** %_py_decref_tmp88, align 8
  %65 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_refcnt89 = getelementptr inbounds %struct._object, %struct._object* %65, i32 0, i32 0
  %66 = load i64, i64* %ob_refcnt89, align 8
  %dec90 = add i64 %66, -1
  store i64 %dec90, i64* %ob_refcnt89, align 8
  %cmp91 = icmp ne i64 %dec90, 0
  br i1 %cmp91, label %if.then.92, label %if.else.93

if.then.92:                                       ; preds = %do.body.87
  br label %if.end.97

if.else.93:                                       ; preds = %do.body.87
  %67 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  %ob_type94 = getelementptr inbounds %struct._object, %struct._object* %67, i32 0, i32 1
  %68 = load %struct._typeobject*, %struct._typeobject** %ob_type94, align 8
  %tp_dealloc95 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %68, i32 0, i32 4
  %tp_dealloc96 = bitcast {}** %tp_dealloc95 to void (%struct._object*)**
  %69 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc96, align 8
  %70 = load %struct._object*, %struct._object** %_py_decref_tmp88, align 8
  call void %69(%struct._object* %70)
  br label %if.end.97

if.end.97:                                        ; preds = %if.else.93, %if.then.92
  br label %do.end.98

do.end.98:                                        ; preds = %if.end.97
  %71 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_frame99 = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %71, i32 0, i32 1
  %72 = load %struct._frame*, %struct._frame** %gi_frame99, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %72, i32 0, i32 13
  %73 = load i32, i32* %f_lasti, align 4
  %inc = add i32 %73, 1
  store i32 %inc, i32* %f_lasti, align 4
  %call100 = call i32 @_PyGen_FetchStopIterationValue(%struct._object** %val86)
  %cmp101 = icmp eq i32 %call100, 0
  br i1 %cmp101, label %if.then.102, label %if.else.116

if.then.102:                                      ; preds = %do.end.98
  %74 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %75 = load %struct._object*, %struct._object** %val86, align 8
  %call103 = call %struct._object* @gen_send_ex(%struct.PyGenObject* %74, %struct._object* %75, i32 0)
  store %struct._object* %call103, %struct._object** %ret, align 8
  br label %do.body.104

do.body.104:                                      ; preds = %if.then.102
  %76 = load %struct._object*, %struct._object** %val86, align 8
  store %struct._object* %76, %struct._object** %_py_decref_tmp105, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_refcnt106 = getelementptr inbounds %struct._object, %struct._object* %77, i32 0, i32 0
  %78 = load i64, i64* %ob_refcnt106, align 8
  %dec107 = add i64 %78, -1
  store i64 %dec107, i64* %ob_refcnt106, align 8
  %cmp108 = icmp ne i64 %dec107, 0
  br i1 %cmp108, label %if.then.109, label %if.else.110

if.then.109:                                      ; preds = %do.body.104
  br label %if.end.114

if.else.110:                                      ; preds = %do.body.104
  %79 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  %ob_type111 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 1
  %80 = load %struct._typeobject*, %struct._typeobject** %ob_type111, align 8
  %tp_dealloc112 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %80, i32 0, i32 4
  %tp_dealloc113 = bitcast {}** %tp_dealloc112 to void (%struct._object*)**
  %81 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc113, align 8
  %82 = load %struct._object*, %struct._object** %_py_decref_tmp105, align 8
  call void %81(%struct._object* %82)
  br label %if.end.114

if.end.114:                                       ; preds = %if.else.110, %if.then.109
  br label %do.end.115

do.end.115:                                       ; preds = %if.end.114
  br label %if.end.118

if.else.116:                                      ; preds = %do.end.98
  %83 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %call117 = call %struct._object* @gen_send_ex(%struct.PyGenObject* %83, %struct._object* @_Py_NoneStruct, i32 1)
  store %struct._object* %call117, %struct._object** %ret, align 8
  br label %if.end.118

if.end.118:                                       ; preds = %if.else.116, %do.end.115
  br label %if.end.119

if.end.119:                                       ; preds = %if.end.118, %do.end.83
  %84 = load %struct._object*, %struct._object** %ret, align 8
  store %struct._object* %84, %struct._object** %retval
  br label %return

if.end.120:                                       ; preds = %if.end
  br label %throw_here

throw_here:                                       ; preds = %if.end.120, %do.end.54, %if.end.15
  %85 = load %struct._object*, %struct._object** %tb, align 8
  %cmp121 = icmp eq %struct._object* %85, @_Py_NoneStruct
  br i1 %cmp121, label %if.then.122, label %if.else.123

if.then.122:                                      ; preds = %throw_here
  store %struct._object* null, %struct._object** %tb, align 8
  br label %if.end.129

if.else.123:                                      ; preds = %throw_here
  %86 = load %struct._object*, %struct._object** %tb, align 8
  %cmp124 = icmp ne %struct._object* %86, null
  br i1 %cmp124, label %land.lhs.true, label %if.end.128

land.lhs.true:                                    ; preds = %if.else.123
  %87 = load %struct._object*, %struct._object** %tb, align 8
  %ob_type125 = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type125, align 8
  %cmp126 = icmp eq %struct._typeobject* %88, @PyTraceBack_Type
  br i1 %cmp126, label %if.end.128, label %if.then.127

if.then.127:                                      ; preds = %land.lhs.true
  %89 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %89, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.128:                                       ; preds = %land.lhs.true, %if.else.123
  br label %if.end.129

if.end.129:                                       ; preds = %if.end.128, %if.then.122
  %90 = load %struct._object*, %struct._object** %typ, align 8
  %ob_refcnt130 = getelementptr inbounds %struct._object, %struct._object* %90, i32 0, i32 0
  %91 = load i64, i64* %ob_refcnt130, align 8
  %inc131 = add i64 %91, 1
  store i64 %inc131, i64* %ob_refcnt130, align 8
  br label %do.body.132

do.body.132:                                      ; preds = %if.end.129
  %92 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %92, %struct._object** %_py_xincref_tmp, align 8
  %93 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp133 = icmp ne %struct._object* %93, null
  br i1 %cmp133, label %if.then.134, label %if.end.137

if.then.134:                                      ; preds = %do.body.132
  %94 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt135 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt135, align 8
  %inc136 = add i64 %95, 1
  store i64 %inc136, i64* %ob_refcnt135, align 8
  br label %if.end.137

if.end.137:                                       ; preds = %if.then.134, %do.body.132
  br label %do.end.138

do.end.138:                                       ; preds = %if.end.137
  br label %do.body.139

do.body.139:                                      ; preds = %do.end.138
  %96 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %96, %struct._object** %_py_xincref_tmp140, align 8
  %97 = load %struct._object*, %struct._object** %_py_xincref_tmp140, align 8
  %cmp141 = icmp ne %struct._object* %97, null
  br i1 %cmp141, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %do.body.139
  %98 = load %struct._object*, %struct._object** %_py_xincref_tmp140, align 8
  %ob_refcnt143 = getelementptr inbounds %struct._object, %struct._object* %98, i32 0, i32 0
  %99 = load i64, i64* %ob_refcnt143, align 8
  %inc144 = add i64 %99, 1
  store i64 %inc144, i64* %ob_refcnt143, align 8
  br label %if.end.145

if.end.145:                                       ; preds = %if.then.142, %do.body.139
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  %100 = load %struct._object*, %struct._object** %typ, align 8
  %ob_type147 = getelementptr inbounds %struct._object, %struct._object* %100, i32 0, i32 1
  %101 = load %struct._typeobject*, %struct._typeobject** %ob_type147, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %101, i32 0, i32 19
  %102 = load i64, i64* %tp_flags, align 8
  %and = and i64 %102, 2147483648
  %cmp148 = icmp ne i64 %and, 0
  br i1 %cmp148, label %land.lhs.true.149, label %if.else.154

land.lhs.true.149:                                ; preds = %do.end.146
  %103 = load %struct._object*, %struct._object** %typ, align 8
  %104 = bitcast %struct._object* %103 to %struct._typeobject*
  %tp_flags150 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %104, i32 0, i32 19
  %105 = load i64, i64* %tp_flags150, align 8
  %and151 = and i64 %105, 1073741824
  %cmp152 = icmp ne i64 %and151, 0
  br i1 %cmp152, label %if.then.153, label %if.else.154

if.then.153:                                      ; preds = %land.lhs.true.149
  call void @PyErr_NormalizeException(%struct._object** %typ, %struct._object** %val, %struct._object** %tb)
  br label %if.end.194

if.else.154:                                      ; preds = %land.lhs.true.149, %do.end.146
  %106 = load %struct._object*, %struct._object** %typ, align 8
  %ob_type155 = getelementptr inbounds %struct._object, %struct._object* %106, i32 0, i32 1
  %107 = load %struct._typeobject*, %struct._typeobject** %ob_type155, align 8
  %tp_flags156 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %107, i32 0, i32 19
  %108 = load i64, i64* %tp_flags156, align 8
  %and157 = and i64 %108, 1073741824
  %cmp158 = icmp ne i64 %and157, 0
  br i1 %cmp158, label %if.then.159, label %if.else.190

if.then.159:                                      ; preds = %if.else.154
  %109 = load %struct._object*, %struct._object** %val, align 8
  %tobool160 = icmp ne %struct._object* %109, null
  br i1 %tobool160, label %land.lhs.true.161, label %if.else.164

land.lhs.true.161:                                ; preds = %if.then.159
  %110 = load %struct._object*, %struct._object** %val, align 8
  %cmp162 = icmp ne %struct._object* %110, @_Py_NoneStruct
  br i1 %cmp162, label %if.then.163, label %if.else.164

if.then.163:                                      ; preds = %land.lhs.true.161
  %111 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  call void @PyErr_SetString(%struct._object* %111, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.11, i32 0, i32 0))
  br label %failed_throw

if.else.164:                                      ; preds = %land.lhs.true.161, %if.then.159
  br label %do.body.165

do.body.165:                                      ; preds = %if.else.164
  %112 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %112, %struct._object** %_py_xdecref_tmp, align 8
  %113 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp166 = icmp ne %struct._object* %113, null
  br i1 %cmp166, label %if.then.167, label %if.end.180

if.then.167:                                      ; preds = %do.body.165
  br label %do.body.168

do.body.168:                                      ; preds = %if.then.167
  %114 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %114, %struct._object** %_py_decref_tmp169, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_refcnt170 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt170, align 8
  %dec171 = add i64 %116, -1
  store i64 %dec171, i64* %ob_refcnt170, align 8
  %cmp172 = icmp ne i64 %dec171, 0
  br i1 %cmp172, label %if.then.173, label %if.else.174

if.then.173:                                      ; preds = %do.body.168
  br label %if.end.178

if.else.174:                                      ; preds = %do.body.168
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  %ob_type175 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type175, align 8
  %tp_dealloc176 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %tp_dealloc177 = bitcast {}** %tp_dealloc176 to void (%struct._object*)**
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc177, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp169, align 8
  call void %119(%struct._object* %120)
  br label %if.end.178

if.end.178:                                       ; preds = %if.else.174, %if.then.173
  br label %do.end.179

do.end.179:                                       ; preds = %if.end.178
  br label %if.end.180

if.end.180:                                       ; preds = %do.end.179, %do.body.165
  br label %do.end.181

do.end.181:                                       ; preds = %if.end.180
  %121 = load %struct._object*, %struct._object** %typ, align 8
  store %struct._object* %121, %struct._object** %val, align 8
  %122 = load %struct._object*, %struct._object** %typ, align 8
  %ob_type182 = getelementptr inbounds %struct._object, %struct._object* %122, i32 0, i32 1
  %123 = load %struct._typeobject*, %struct._typeobject** %ob_type182, align 8
  %124 = bitcast %struct._typeobject* %123 to %struct._object*
  store %struct._object* %124, %struct._object** %typ, align 8
  %125 = load %struct._object*, %struct._object** %typ, align 8
  %ob_refcnt183 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt183, align 8
  %inc184 = add i64 %126, 1
  store i64 %inc184, i64* %ob_refcnt183, align 8
  %127 = load %struct._object*, %struct._object** %tb, align 8
  %cmp185 = icmp eq %struct._object* %127, null
  br i1 %cmp185, label %if.then.186, label %if.end.188

if.then.186:                                      ; preds = %do.end.181
  %128 = load %struct._object*, %struct._object** %val, align 8
  %call187 = call %struct._object* @PyException_GetTraceback(%struct._object* %128)
  store %struct._object* %call187, %struct._object** %tb, align 8
  br label %if.end.188

if.end.188:                                       ; preds = %if.then.186, %do.end.181
  br label %if.end.189

if.end.189:                                       ; preds = %if.end.188
  br label %if.end.193

if.else.190:                                      ; preds = %if.else.154
  %129 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %130 = load %struct._object*, %struct._object** %typ, align 8
  %ob_type191 = getelementptr inbounds %struct._object, %struct._object* %130, i32 0, i32 1
  %131 = load %struct._typeobject*, %struct._typeobject** %ob_type191, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %131, i32 0, i32 1
  %132 = load i8*, i8** %tp_name, align 8
  %call192 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %129, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.12, i32 0, i32 0), i8* %132)
  br label %failed_throw

if.end.193:                                       ; preds = %if.end.189
  br label %if.end.194

if.end.194:                                       ; preds = %if.end.193, %if.then.153
  %133 = load %struct._object*, %struct._object** %typ, align 8
  %134 = load %struct._object*, %struct._object** %val, align 8
  %135 = load %struct._object*, %struct._object** %tb, align 8
  call void @PyErr_Restore(%struct._object* %133, %struct._object* %134, %struct._object* %135)
  %136 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %call195 = call %struct._object* @gen_send_ex(%struct.PyGenObject* %136, %struct._object* @_Py_NoneStruct, i32 1)
  store %struct._object* %call195, %struct._object** %retval
  br label %return

failed_throw:                                     ; preds = %if.else.190, %if.then.163
  br label %do.body.196

do.body.196:                                      ; preds = %failed_throw
  %137 = load %struct._object*, %struct._object** %typ, align 8
  store %struct._object* %137, %struct._object** %_py_decref_tmp197, align 8
  %138 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  %ob_refcnt198 = getelementptr inbounds %struct._object, %struct._object* %138, i32 0, i32 0
  %139 = load i64, i64* %ob_refcnt198, align 8
  %dec199 = add i64 %139, -1
  store i64 %dec199, i64* %ob_refcnt198, align 8
  %cmp200 = icmp ne i64 %dec199, 0
  br i1 %cmp200, label %if.then.201, label %if.else.202

if.then.201:                                      ; preds = %do.body.196
  br label %if.end.206

if.else.202:                                      ; preds = %do.body.196
  %140 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  %ob_type203 = getelementptr inbounds %struct._object, %struct._object* %140, i32 0, i32 1
  %141 = load %struct._typeobject*, %struct._typeobject** %ob_type203, align 8
  %tp_dealloc204 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %141, i32 0, i32 4
  %tp_dealloc205 = bitcast {}** %tp_dealloc204 to void (%struct._object*)**
  %142 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc205, align 8
  %143 = load %struct._object*, %struct._object** %_py_decref_tmp197, align 8
  call void %142(%struct._object* %143)
  br label %if.end.206

if.end.206:                                       ; preds = %if.else.202, %if.then.201
  br label %do.end.207

do.end.207:                                       ; preds = %if.end.206
  br label %do.body.208

do.body.208:                                      ; preds = %do.end.207
  %144 = load %struct._object*, %struct._object** %val, align 8
  store %struct._object* %144, %struct._object** %_py_xdecref_tmp209, align 8
  %145 = load %struct._object*, %struct._object** %_py_xdecref_tmp209, align 8
  %cmp210 = icmp ne %struct._object* %145, null
  br i1 %cmp210, label %if.then.211, label %if.end.224

if.then.211:                                      ; preds = %do.body.208
  br label %do.body.212

do.body.212:                                      ; preds = %if.then.211
  %146 = load %struct._object*, %struct._object** %_py_xdecref_tmp209, align 8
  store %struct._object* %146, %struct._object** %_py_decref_tmp213, align 8
  %147 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_refcnt214 = getelementptr inbounds %struct._object, %struct._object* %147, i32 0, i32 0
  %148 = load i64, i64* %ob_refcnt214, align 8
  %dec215 = add i64 %148, -1
  store i64 %dec215, i64* %ob_refcnt214, align 8
  %cmp216 = icmp ne i64 %dec215, 0
  br i1 %cmp216, label %if.then.217, label %if.else.218

if.then.217:                                      ; preds = %do.body.212
  br label %if.end.222

if.else.218:                                      ; preds = %do.body.212
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  %ob_type219 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 1
  %150 = load %struct._typeobject*, %struct._typeobject** %ob_type219, align 8
  %tp_dealloc220 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %150, i32 0, i32 4
  %tp_dealloc221 = bitcast {}** %tp_dealloc220 to void (%struct._object*)**
  %151 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc221, align 8
  %152 = load %struct._object*, %struct._object** %_py_decref_tmp213, align 8
  call void %151(%struct._object* %152)
  br label %if.end.222

if.end.222:                                       ; preds = %if.else.218, %if.then.217
  br label %do.end.223

do.end.223:                                       ; preds = %if.end.222
  br label %if.end.224

if.end.224:                                       ; preds = %do.end.223, %do.body.208
  br label %do.end.225

do.end.225:                                       ; preds = %if.end.224
  br label %do.body.226

do.body.226:                                      ; preds = %do.end.225
  %153 = load %struct._object*, %struct._object** %tb, align 8
  store %struct._object* %153, %struct._object** %_py_xdecref_tmp227, align 8
  %154 = load %struct._object*, %struct._object** %_py_xdecref_tmp227, align 8
  %cmp228 = icmp ne %struct._object* %154, null
  br i1 %cmp228, label %if.then.229, label %if.end.242

if.then.229:                                      ; preds = %do.body.226
  br label %do.body.230

do.body.230:                                      ; preds = %if.then.229
  %155 = load %struct._object*, %struct._object** %_py_xdecref_tmp227, align 8
  store %struct._object* %155, %struct._object** %_py_decref_tmp231, align 8
  %156 = load %struct._object*, %struct._object** %_py_decref_tmp231, align 8
  %ob_refcnt232 = getelementptr inbounds %struct._object, %struct._object* %156, i32 0, i32 0
  %157 = load i64, i64* %ob_refcnt232, align 8
  %dec233 = add i64 %157, -1
  store i64 %dec233, i64* %ob_refcnt232, align 8
  %cmp234 = icmp ne i64 %dec233, 0
  br i1 %cmp234, label %if.then.235, label %if.else.236

if.then.235:                                      ; preds = %do.body.230
  br label %if.end.240

if.else.236:                                      ; preds = %do.body.230
  %158 = load %struct._object*, %struct._object** %_py_decref_tmp231, align 8
  %ob_type237 = getelementptr inbounds %struct._object, %struct._object* %158, i32 0, i32 1
  %159 = load %struct._typeobject*, %struct._typeobject** %ob_type237, align 8
  %tp_dealloc238 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %159, i32 0, i32 4
  %tp_dealloc239 = bitcast {}** %tp_dealloc238 to void (%struct._object*)**
  %160 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc239, align 8
  %161 = load %struct._object*, %struct._object** %_py_decref_tmp231, align 8
  call void %160(%struct._object* %161)
  br label %if.end.240

if.end.240:                                       ; preds = %if.else.236, %if.then.235
  br label %do.end.241

do.end.241:                                       ; preds = %if.end.240
  br label %if.end.242

if.end.242:                                       ; preds = %do.end.241, %do.body.226
  br label %do.end.243

do.end.243:                                       ; preds = %if.end.242
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %do.end.243, %if.end.194, %if.then.127, %if.end.119, %do.end.41, %if.then.13, %if.then
  %162 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %162
}

declare i32 @PyArg_UnpackTuple(%struct._object*, i8*, i64, i64, ...) #1

declare i32 @PyErr_GivenExceptionMatches(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_CallObject(%struct._object*, %struct._object*) #1

declare void @PyErr_NormalizeException(%struct._object**, %struct._object**, %struct._object**) #1

declare %struct._object* @PyException_GetTraceback(%struct._object*) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @gen_get_name(%struct.PyGenObject* %gen) #0 {
entry:
  %gen.addr = alloca %struct.PyGenObject*, align 8
  %name = alloca %struct._object*, align 8
  store %struct.PyGenObject* %gen, %struct.PyGenObject** %gen.addr, align 8
  %0 = load %struct.PyGenObject*, %struct.PyGenObject** %gen.addr, align 8
  %gi_code = getelementptr inbounds %struct.PyGenObject, %struct.PyGenObject* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %gi_code, align 8
  %2 = bitcast %struct._object* %1 to %struct.PyCodeObject*
  %co_name = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %2, i32 0, i32 14
  %3 = load %struct._object*, %struct._object** %co_name, align 8
  store %struct._object* %3, %struct._object** %name, align 8
  %4 = load %struct._object*, %struct._object** %name, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %5, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %6 = load %struct._object*, %struct._object** %name, align 8
  ret %struct._object* %6
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139698}
!2 = !{i32 139538}
