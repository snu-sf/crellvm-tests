; ModuleID = './frameobject.bc'
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
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct._frame = type { %struct.PyVarObject, %struct._frame*, %struct.PyCodeObject*, %struct._object*, %struct._object*, %struct._object*, %struct._object**, %struct._object**, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, i8, [20 x %struct.PyTryBlock], [1 x %struct._object*] }
%struct.PyCodeObject = type { %struct._object, i32, i32, i32, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i8*, %struct._object*, %struct._object*, i32, %struct._object*, i8*, %struct._object* }
%struct.PyTryBlock = type { i32, i32, i32 }
%union._gc_head = type { %struct.anon }
%struct.anon = type { %union._gc_head*, %union._gc_head*, i64 }
%struct._Py_atomic_address = type { i8* }
%struct._ts = type { %struct._ts*, %struct._ts*, %struct._is*, %struct._frame*, i32, i8, i8, i32, i32, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, i32 (%struct._object*, %struct._frame*, i32, %struct._object*)*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, %struct._object*, i64, i32, %struct._object*, void (i8*)*, i8* }
%struct._is = type { %struct._is*, %struct._ts*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, i32, i32, i32, %struct._object* }
%struct.PyTupleObject = type { %struct.PyVarObject, [1 x %struct._object*] }
%struct.PyCellObject = type { %struct._object, %struct._object* }

@PyType_Type = external global %struct._typeobject, align 8
@.str = private unnamed_addr constant [6 x i8] c"frame\00", align 1
@frame_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._frame*)* @frame_clear to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @clear__doc__, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct._frame*)* @frame_sizeof to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @sizeof__doc__, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@frame_memberlist = internal global [6 x %struct.PyMemberDef] [%struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i32 6, i64 24, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 6, i64 32, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i32 0, i32 0), i32 6, i64 40, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i32 0, i32 0), i32 6, i64 48, i32 1, i8* null }, %struct.PyMemberDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i32 1, i64 120, i32 1, i8* null }, %struct.PyMemberDef zeroinitializer], align 16
@frame_getsetlist = internal global [4 x %struct.PyGetSetDef] [%struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._frame*, i8*)* @frame_getlocals to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* null, i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._frame*, i8*)* @frame_getlineno to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct._frame*, %struct._object*)* @frame_setlineno to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i32 0, i32 0), %struct._object* (%struct._object*, i8*)* bitcast (%struct._object* (%struct._frame*, i8*)* @frame_gettrace to %struct._object* (%struct._object*, i8*)*), i32 (%struct._object*, %struct._object*, i8*)* bitcast (i32 (%struct._frame*, %struct._object*, i8*)* @frame_settrace to i32 (%struct._object*, %struct._object*, i8*)*), i8* null, i8* null }, %struct.PyGetSetDef zeroinitializer], align 16
@PyFrame_Type = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* @PyType_Type }, i64 0 }, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0), i64 384, i64 8, void (%struct._object*)* bitcast (void (%struct._frame*)* @frame_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* @PyObject_GenericGetAttr, i32 (%struct._object*, %struct._object*, %struct._object*)* @PyObject_GenericSetAttr, %struct.PyBufferProcs* null, i64 278528, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* bitcast (i32 (%struct._frame*, i32 (%struct._object*, i8*)*, i8*)* @frame_traverse to i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*), i32 (%struct._object*)* bitcast (void (%struct._frame*)* @frame_tp_clear to i32 (%struct._object*)*), %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @frame_methods, i32 0, i32 0), %struct.PyMemberDef* getelementptr inbounds ([6 x %struct.PyMemberDef], [6 x %struct.PyMemberDef]* @frame_memberlist, i32 0, i32 0), %struct.PyGetSetDef* getelementptr inbounds ([4 x %struct.PyGetSetDef], [4 x %struct.PyGetSetDef]* @frame_getsetlist, i32 0, i32 0), %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@PyId___builtins__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i32 0, i32 0), %struct._object* null }, align 8
@PyModule_Type = external global %struct._typeobject, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@free_list = internal global %struct._frame* null, align 8
@numfree = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"GC object already tracked\00", align 1
@_PyGC_generation0 = external global %union._gc_head*, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"XXX block stack overflow\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"XXX block stack underflow\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Objects/frameobject.c\00", align 1
@PyExc_SystemError = external global %struct._object*, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"co_varnames must be a tuple, not %s\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"free PyFrameObject\00", align 1
@_PyThreadState_Current = external global %struct._Py_atomic_address, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"clear\00", align 1
@clear__doc__ = internal global [51 x i8] c"F.clear(): clear most references held by the frame\00", align 16
@.str.9 = private unnamed_addr constant [11 x i8] c"__sizeof__\00", align 1
@sizeof__doc__ = internal global [48 x i8] c"F.__sizeof__() -> size of F in memory, in bytes\00", align 16
@PyExc_RuntimeError = external global %struct._object*, align 8
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot clear an executing frame\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"f_back\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"f_code\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"f_builtins\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"f_globals\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"f_lasti\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"f_locals\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"f_lineno\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"f_trace\00", align 1
@PyLong_Type = external global %struct._typeobject, align 8
@PyExc_ValueError = external global %struct._object*, align 8
@.str.19 = private unnamed_addr constant [26 x i8] c"lineno must be an integer\00", align 1
@.str.20 = private unnamed_addr constant [50 x i8] c"f_lineno can only be set by a line trace function\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"lineno out of range\00", align 1
@.str.22 = private unnamed_addr constant [44 x i8] c"line %d comes before the current code block\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"line %d comes after the current code block\00", align 1
@.str.24 = private unnamed_addr constant [52 x i8] c"can't jump to 'except' line as there's no exception\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"can't jump into or out of a 'finally' block\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"can't jump into the middle of a block\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"__builtins__\00", align 1
@PyExc_KeyError = external global %struct._object*, align 8

; Function Attrs: nounwind uwtable
define i32 @PyFrame_GetLineNumber(%struct._frame* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._frame*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 8
  %1 = load %struct._object*, %struct._object** %f_trace, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lineno = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 14
  %3 = load i32, i32* %f_lineno, align 4
  store i32 %3, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %4, i32 0, i32 2
  %5 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %6 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %6, i32 0, i32 13
  %7 = load i32, i32* %f_lasti, align 4
  %call = call i32 @PyCode_Addr2Line(%struct.PyCodeObject* %5, i32 %7)
  store i32 %call, i32* %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare i32 @PyCode_Addr2Line(%struct.PyCodeObject*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @frame_dealloc(%struct._frame* %f) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %p = alloca %struct._object**, align 8
  %valuestack = alloca %struct._object**, align 8
  %co = alloca %struct.PyCodeObject*, align 8
  %_tstate = alloca %struct._ts*, align 8
  %atomic_val = alloca %struct._Py_atomic_address*, align 8
  %result = alloca i8*, align 8
  %volatile_data = alloca i8**, align 8
  %order = alloca i32, align 4
  %tmp = alloca i8*, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp28 = alloca %struct._object*, align 8
  %_py_xdecref_tmp46 = alloca %struct._object*, align 8
  %_py_decref_tmp51 = alloca %struct._object*, align 8
  %_py_decref_tmp65 = alloca %struct._object*, align 8
  %_py_decref_tmp77 = alloca %struct._object*, align 8
  %_py_tmp89 = alloca %struct._object*, align 8
  %_py_decref_tmp95 = alloca %struct._object*, align 8
  %_py_tmp109 = alloca %struct._object*, align 8
  %_py_decref_tmp115 = alloca %struct._object*, align 8
  %_py_tmp129 = alloca %struct._object*, align 8
  %_py_decref_tmp135 = alloca %struct._object*, align 8
  %_py_tmp149 = alloca %struct._object*, align 8
  %_py_decref_tmp155 = alloca %struct._object*, align 8
  %_py_tmp169 = alloca %struct._object*, align 8
  %_py_decref_tmp175 = alloca %struct._object*, align 8
  %_py_decref_tmp200 = alloca %struct._object*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %1 = bitcast %struct._frame* %0 to i8*
  call void @PyObject_GC_UnTrack(i8* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  store %struct._Py_atomic_address* @_PyThreadState_Current, %struct._Py_atomic_address** %atomic_val, align 8
  %2 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %_value = getelementptr inbounds %struct._Py_atomic_address, %struct._Py_atomic_address* %2, i32 0, i32 0
  store i8** %_value, i8*** %volatile_data, align 8
  store i32 0, i32* %order, align 4
  %3 = load %struct._Py_atomic_address*, %struct._Py_atomic_address** %atomic_val, align 8
  %4 = bitcast %struct._Py_atomic_address* %3 to i8*
  %5 = load i32, i32* %order, align 4
  call void @_Py_ANNOTATE_MEMORY_ORDER(i8* %4, i32 %5)
  %6 = load i32, i32* %order, align 4
  switch i32 %6, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb
    i32 4, label %sw.bb
  ]

sw.bb:                                            ; preds = %do.body, %do.body, %do.body
  call void @_Py_atomic_thread_fence(i32 2)
  br label %sw.epilog

sw.default:                                       ; preds = %do.body
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  %7 = load i8**, i8*** %volatile_data, align 8
  %8 = load volatile i8*, i8** %7, align 8
  store i8* %8, i8** %result, align 8
  %9 = load i32, i32* %order, align 4
  switch i32 %9, label %sw.default.2 [
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
  %10 = load i8*, i8** %result, align 8
  store i8* %10, i8** %tmp
  %11 = load i8*, i8** %tmp
  %12 = bitcast i8* %11 to %struct._ts*
  store %struct._ts* %12, %struct._ts** %_tstate, align 8
  %13 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting = getelementptr inbounds %struct._ts, %struct._ts* %13, i32 0, i32 23
  %14 = load i32, i32* %trash_delete_nesting, align 4
  %cmp = icmp slt i32 %14, 50
  br i1 %cmp, label %if.then, label %if.else.216

if.then:                                          ; preds = %sw.epilog.3
  %15 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting4 = getelementptr inbounds %struct._ts, %struct._ts* %15, i32 0, i32 23
  %16 = load i32, i32* %trash_delete_nesting4, align 4
  %inc = add i32 %16, 1
  store i32 %inc, i32* %trash_delete_nesting4, align 4
  %17 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_valuestack = getelementptr inbounds %struct._frame, %struct._frame* %17, i32 0, i32 6
  %18 = load %struct._object**, %struct._object*** %f_valuestack, align 8
  store %struct._object** %18, %struct._object*** %valuestack, align 8
  %19 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_localsplus = getelementptr inbounds %struct._frame, %struct._frame* %19, i32 0, i32 18
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %f_localsplus, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %20 = load %struct._object**, %struct._object*** %p, align 8
  %21 = load %struct._object**, %struct._object*** %valuestack, align 8
  %cmp5 = icmp ult %struct._object** %20, %21
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.6

do.body.6:                                        ; preds = %for.body
  %22 = load %struct._object**, %struct._object*** %p, align 8
  %23 = load %struct._object*, %struct._object** %22, align 8
  store %struct._object* %23, %struct._object** %_py_tmp, align 8
  %24 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp8 = icmp ne %struct._object* %24, null
  br i1 %cmp8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %do.body.6
  %25 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* null, %struct._object** %25, align 8
  br label %do.body.10

do.body.10:                                       ; preds = %if.then.9
  %26 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %26, %struct._object** %_py_decref_tmp, align 8
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %28, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp12 = icmp ne i64 %dec, 0
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %do.body.10
  br label %if.end

if.else:                                          ; preds = %do.body.10
  %29 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 1
  %30 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %30, i32 0, i32 4
  %31 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %32 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %31(%struct._object* %32)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.13
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.14

if.end.14:                                        ; preds = %do.end, %do.body.6
  br label %do.end.15

do.end.15:                                        ; preds = %if.end.14
  br label %for.inc

for.inc:                                          ; preds = %do.end.15
  %33 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %33, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %34 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %34, i32 0, i32 7
  %35 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %cmp16 = icmp ne %struct._object** %35, null
  br i1 %cmp16, label %if.then.17, label %if.end.43

if.then.17:                                       ; preds = %for.end
  %36 = load %struct._object**, %struct._object*** %valuestack, align 8
  store %struct._object** %36, %struct._object*** %p, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.40, %if.then.17
  %37 = load %struct._object**, %struct._object*** %p, align 8
  %38 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop19 = getelementptr inbounds %struct._frame, %struct._frame* %38, i32 0, i32 7
  %39 = load %struct._object**, %struct._object*** %f_stacktop19, align 8
  %cmp20 = icmp ult %struct._object** %37, %39
  br i1 %cmp20, label %for.body.21, label %for.end.42

for.body.21:                                      ; preds = %for.cond.18
  br label %do.body.22

do.body.22:                                       ; preds = %for.body.21
  %40 = load %struct._object**, %struct._object*** %p, align 8
  %41 = load %struct._object*, %struct._object** %40, align 8
  store %struct._object* %41, %struct._object** %_py_xdecref_tmp, align 8
  %42 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp24 = icmp ne %struct._object* %42, null
  br i1 %cmp24, label %if.then.25, label %if.end.38

if.then.25:                                       ; preds = %do.body.22
  br label %do.body.26

do.body.26:                                       ; preds = %if.then.25
  %43 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %43, %struct._object** %_py_decref_tmp28, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 0
  %45 = load i64, i64* %ob_refcnt29, align 8
  %dec30 = add i64 %45, -1
  store i64 %dec30, i64* %ob_refcnt29, align 8
  %cmp31 = icmp ne i64 %dec30, 0
  br i1 %cmp31, label %if.then.32, label %if.else.33

if.then.32:                                       ; preds = %do.body.26
  br label %if.end.36

if.else.33:                                       ; preds = %do.body.26
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  %ob_type34 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 1
  %47 = load %struct._typeobject*, %struct._typeobject** %ob_type34, align 8
  %tp_dealloc35 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %47, i32 0, i32 4
  %48 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc35, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp28, align 8
  call void %48(%struct._object* %49)
  br label %if.end.36

if.end.36:                                        ; preds = %if.else.33, %if.then.32
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %if.end.38

if.end.38:                                        ; preds = %do.end.37, %do.body.22
  br label %do.end.39

do.end.39:                                        ; preds = %if.end.38
  br label %for.inc.40

for.inc.40:                                       ; preds = %do.end.39
  %50 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr41 = getelementptr %struct._object*, %struct._object** %50, i32 1
  store %struct._object** %incdec.ptr41, %struct._object*** %p, align 8
  br label %for.cond.18

for.end.42:                                       ; preds = %for.cond.18
  br label %if.end.43

if.end.43:                                        ; preds = %for.end.42, %for.end
  br label %do.body.44

do.body.44:                                       ; preds = %if.end.43
  %51 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %51, i32 0, i32 1
  %52 = load %struct._frame*, %struct._frame** %f_back, align 8
  %53 = bitcast %struct._frame* %52 to %struct._object*
  store %struct._object* %53, %struct._object** %_py_xdecref_tmp46, align 8
  %54 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  %cmp47 = icmp ne %struct._object* %54, null
  br i1 %cmp47, label %if.then.48, label %if.end.61

if.then.48:                                       ; preds = %do.body.44
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.48
  %55 = load %struct._object*, %struct._object** %_py_xdecref_tmp46, align 8
  store %struct._object* %55, %struct._object** %_py_decref_tmp51, align 8
  %56 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_refcnt52 = getelementptr inbounds %struct._object, %struct._object* %56, i32 0, i32 0
  %57 = load i64, i64* %ob_refcnt52, align 8
  %dec53 = add i64 %57, -1
  store i64 %dec53, i64* %ob_refcnt52, align 8
  %cmp54 = icmp ne i64 %dec53, 0
  br i1 %cmp54, label %if.then.55, label %if.else.56

if.then.55:                                       ; preds = %do.body.49
  br label %if.end.59

if.else.56:                                       ; preds = %do.body.49
  %58 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  %ob_type57 = getelementptr inbounds %struct._object, %struct._object* %58, i32 0, i32 1
  %59 = load %struct._typeobject*, %struct._typeobject** %ob_type57, align 8
  %tp_dealloc58 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %59, i32 0, i32 4
  %60 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc58, align 8
  %61 = load %struct._object*, %struct._object** %_py_decref_tmp51, align 8
  call void %60(%struct._object* %61)
  br label %if.end.59

if.end.59:                                        ; preds = %if.else.56, %if.then.55
  br label %do.end.60

do.end.60:                                        ; preds = %if.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %do.end.60, %do.body.44
  br label %do.end.62

do.end.62:                                        ; preds = %if.end.61
  br label %do.body.63

do.body.63:                                       ; preds = %do.end.62
  %62 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_builtins = getelementptr inbounds %struct._frame, %struct._frame* %62, i32 0, i32 3
  %63 = load %struct._object*, %struct._object** %f_builtins, align 8
  store %struct._object* %63, %struct._object** %_py_decref_tmp65, align 8
  %64 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_refcnt66 = getelementptr inbounds %struct._object, %struct._object* %64, i32 0, i32 0
  %65 = load i64, i64* %ob_refcnt66, align 8
  %dec67 = add i64 %65, -1
  store i64 %dec67, i64* %ob_refcnt66, align 8
  %cmp68 = icmp ne i64 %dec67, 0
  br i1 %cmp68, label %if.then.69, label %if.else.70

if.then.69:                                       ; preds = %do.body.63
  br label %if.end.73

if.else.70:                                       ; preds = %do.body.63
  %66 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  %ob_type71 = getelementptr inbounds %struct._object, %struct._object* %66, i32 0, i32 1
  %67 = load %struct._typeobject*, %struct._typeobject** %ob_type71, align 8
  %tp_dealloc72 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %67, i32 0, i32 4
  %68 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc72, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp65, align 8
  call void %68(%struct._object* %69)
  br label %if.end.73

if.end.73:                                        ; preds = %if.else.70, %if.then.69
  br label %do.end.74

do.end.74:                                        ; preds = %if.end.73
  br label %do.body.75

do.body.75:                                       ; preds = %do.end.74
  %70 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_globals = getelementptr inbounds %struct._frame, %struct._frame* %70, i32 0, i32 4
  %71 = load %struct._object*, %struct._object** %f_globals, align 8
  store %struct._object* %71, %struct._object** %_py_decref_tmp77, align 8
  %72 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_refcnt78 = getelementptr inbounds %struct._object, %struct._object* %72, i32 0, i32 0
  %73 = load i64, i64* %ob_refcnt78, align 8
  %dec79 = add i64 %73, -1
  store i64 %dec79, i64* %ob_refcnt78, align 8
  %cmp80 = icmp ne i64 %dec79, 0
  br i1 %cmp80, label %if.then.81, label %if.else.82

if.then.81:                                       ; preds = %do.body.75
  br label %if.end.85

if.else.82:                                       ; preds = %do.body.75
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  %ob_type83 = getelementptr inbounds %struct._object, %struct._object* %74, i32 0, i32 1
  %75 = load %struct._typeobject*, %struct._typeobject** %ob_type83, align 8
  %tp_dealloc84 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %75, i32 0, i32 4
  %76 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc84, align 8
  %77 = load %struct._object*, %struct._object** %_py_decref_tmp77, align 8
  call void %76(%struct._object* %77)
  br label %if.end.85

if.end.85:                                        ; preds = %if.else.82, %if.then.81
  br label %do.end.86

do.end.86:                                        ; preds = %if.end.85
  br label %do.body.87

do.body.87:                                       ; preds = %do.end.86
  %78 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals = getelementptr inbounds %struct._frame, %struct._frame* %78, i32 0, i32 5
  %79 = load %struct._object*, %struct._object** %f_locals, align 8
  store %struct._object* %79, %struct._object** %_py_tmp89, align 8
  %80 = load %struct._object*, %struct._object** %_py_tmp89, align 8
  %cmp90 = icmp ne %struct._object* %80, null
  br i1 %cmp90, label %if.then.91, label %if.end.105

if.then.91:                                       ; preds = %do.body.87
  %81 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals92 = getelementptr inbounds %struct._frame, %struct._frame* %81, i32 0, i32 5
  store %struct._object* null, %struct._object** %f_locals92, align 8
  br label %do.body.93

do.body.93:                                       ; preds = %if.then.91
  %82 = load %struct._object*, %struct._object** %_py_tmp89, align 8
  store %struct._object* %82, %struct._object** %_py_decref_tmp95, align 8
  %83 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_refcnt96 = getelementptr inbounds %struct._object, %struct._object* %83, i32 0, i32 0
  %84 = load i64, i64* %ob_refcnt96, align 8
  %dec97 = add i64 %84, -1
  store i64 %dec97, i64* %ob_refcnt96, align 8
  %cmp98 = icmp ne i64 %dec97, 0
  br i1 %cmp98, label %if.then.99, label %if.else.100

if.then.99:                                       ; preds = %do.body.93
  br label %if.end.103

if.else.100:                                      ; preds = %do.body.93
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  %ob_type101 = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 1
  %86 = load %struct._typeobject*, %struct._typeobject** %ob_type101, align 8
  %tp_dealloc102 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %86, i32 0, i32 4
  %87 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc102, align 8
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp95, align 8
  call void %87(%struct._object* %88)
  br label %if.end.103

if.end.103:                                       ; preds = %if.else.100, %if.then.99
  br label %do.end.104

do.end.104:                                       ; preds = %if.end.103
  br label %if.end.105

if.end.105:                                       ; preds = %do.end.104, %do.body.87
  br label %do.end.106

do.end.106:                                       ; preds = %if.end.105
  br label %do.body.107

do.body.107:                                      ; preds = %do.end.106
  %89 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %89, i32 0, i32 8
  %90 = load %struct._object*, %struct._object** %f_trace, align 8
  store %struct._object* %90, %struct._object** %_py_tmp109, align 8
  %91 = load %struct._object*, %struct._object** %_py_tmp109, align 8
  %cmp110 = icmp ne %struct._object* %91, null
  br i1 %cmp110, label %if.then.111, label %if.end.125

if.then.111:                                      ; preds = %do.body.107
  %92 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace112 = getelementptr inbounds %struct._frame, %struct._frame* %92, i32 0, i32 8
  store %struct._object* null, %struct._object** %f_trace112, align 8
  br label %do.body.113

do.body.113:                                      ; preds = %if.then.111
  %93 = load %struct._object*, %struct._object** %_py_tmp109, align 8
  store %struct._object* %93, %struct._object** %_py_decref_tmp115, align 8
  %94 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_refcnt116 = getelementptr inbounds %struct._object, %struct._object* %94, i32 0, i32 0
  %95 = load i64, i64* %ob_refcnt116, align 8
  %dec117 = add i64 %95, -1
  store i64 %dec117, i64* %ob_refcnt116, align 8
  %cmp118 = icmp ne i64 %dec117, 0
  br i1 %cmp118, label %if.then.119, label %if.else.120

if.then.119:                                      ; preds = %do.body.113
  br label %if.end.123

if.else.120:                                      ; preds = %do.body.113
  %96 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  %ob_type121 = getelementptr inbounds %struct._object, %struct._object* %96, i32 0, i32 1
  %97 = load %struct._typeobject*, %struct._typeobject** %ob_type121, align 8
  %tp_dealloc122 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %97, i32 0, i32 4
  %98 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc122, align 8
  %99 = load %struct._object*, %struct._object** %_py_decref_tmp115, align 8
  call void %98(%struct._object* %99)
  br label %if.end.123

if.end.123:                                       ; preds = %if.else.120, %if.then.119
  br label %do.end.124

do.end.124:                                       ; preds = %if.end.123
  br label %if.end.125

if.end.125:                                       ; preds = %do.end.124, %do.body.107
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  br label %do.body.127

do.body.127:                                      ; preds = %do.end.126
  %100 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_type = getelementptr inbounds %struct._frame, %struct._frame* %100, i32 0, i32 9
  %101 = load %struct._object*, %struct._object** %f_exc_type, align 8
  store %struct._object* %101, %struct._object** %_py_tmp129, align 8
  %102 = load %struct._object*, %struct._object** %_py_tmp129, align 8
  %cmp130 = icmp ne %struct._object* %102, null
  br i1 %cmp130, label %if.then.131, label %if.end.145

if.then.131:                                      ; preds = %do.body.127
  %103 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_type132 = getelementptr inbounds %struct._frame, %struct._frame* %103, i32 0, i32 9
  store %struct._object* null, %struct._object** %f_exc_type132, align 8
  br label %do.body.133

do.body.133:                                      ; preds = %if.then.131
  %104 = load %struct._object*, %struct._object** %_py_tmp129, align 8
  store %struct._object* %104, %struct._object** %_py_decref_tmp135, align 8
  %105 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_refcnt136 = getelementptr inbounds %struct._object, %struct._object* %105, i32 0, i32 0
  %106 = load i64, i64* %ob_refcnt136, align 8
  %dec137 = add i64 %106, -1
  store i64 %dec137, i64* %ob_refcnt136, align 8
  %cmp138 = icmp ne i64 %dec137, 0
  br i1 %cmp138, label %if.then.139, label %if.else.140

if.then.139:                                      ; preds = %do.body.133
  br label %if.end.143

if.else.140:                                      ; preds = %do.body.133
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  %ob_type141 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 1
  %108 = load %struct._typeobject*, %struct._typeobject** %ob_type141, align 8
  %tp_dealloc142 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %108, i32 0, i32 4
  %109 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc142, align 8
  %110 = load %struct._object*, %struct._object** %_py_decref_tmp135, align 8
  call void %109(%struct._object* %110)
  br label %if.end.143

if.end.143:                                       ; preds = %if.else.140, %if.then.139
  br label %do.end.144

do.end.144:                                       ; preds = %if.end.143
  br label %if.end.145

if.end.145:                                       ; preds = %do.end.144, %do.body.127
  br label %do.end.146

do.end.146:                                       ; preds = %if.end.145
  br label %do.body.147

do.body.147:                                      ; preds = %do.end.146
  %111 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_value = getelementptr inbounds %struct._frame, %struct._frame* %111, i32 0, i32 10
  %112 = load %struct._object*, %struct._object** %f_exc_value, align 8
  store %struct._object* %112, %struct._object** %_py_tmp149, align 8
  %113 = load %struct._object*, %struct._object** %_py_tmp149, align 8
  %cmp150 = icmp ne %struct._object* %113, null
  br i1 %cmp150, label %if.then.151, label %if.end.165

if.then.151:                                      ; preds = %do.body.147
  %114 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_value152 = getelementptr inbounds %struct._frame, %struct._frame* %114, i32 0, i32 10
  store %struct._object* null, %struct._object** %f_exc_value152, align 8
  br label %do.body.153

do.body.153:                                      ; preds = %if.then.151
  %115 = load %struct._object*, %struct._object** %_py_tmp149, align 8
  store %struct._object* %115, %struct._object** %_py_decref_tmp155, align 8
  %116 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_refcnt156 = getelementptr inbounds %struct._object, %struct._object* %116, i32 0, i32 0
  %117 = load i64, i64* %ob_refcnt156, align 8
  %dec157 = add i64 %117, -1
  store i64 %dec157, i64* %ob_refcnt156, align 8
  %cmp158 = icmp ne i64 %dec157, 0
  br i1 %cmp158, label %if.then.159, label %if.else.160

if.then.159:                                      ; preds = %do.body.153
  br label %if.end.163

if.else.160:                                      ; preds = %do.body.153
  %118 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  %ob_type161 = getelementptr inbounds %struct._object, %struct._object* %118, i32 0, i32 1
  %119 = load %struct._typeobject*, %struct._typeobject** %ob_type161, align 8
  %tp_dealloc162 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %119, i32 0, i32 4
  %120 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc162, align 8
  %121 = load %struct._object*, %struct._object** %_py_decref_tmp155, align 8
  call void %120(%struct._object* %121)
  br label %if.end.163

if.end.163:                                       ; preds = %if.else.160, %if.then.159
  br label %do.end.164

do.end.164:                                       ; preds = %if.end.163
  br label %if.end.165

if.end.165:                                       ; preds = %do.end.164, %do.body.147
  br label %do.end.166

do.end.166:                                       ; preds = %if.end.165
  br label %do.body.167

do.body.167:                                      ; preds = %do.end.166
  %122 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_traceback = getelementptr inbounds %struct._frame, %struct._frame* %122, i32 0, i32 11
  %123 = load %struct._object*, %struct._object** %f_exc_traceback, align 8
  store %struct._object* %123, %struct._object** %_py_tmp169, align 8
  %124 = load %struct._object*, %struct._object** %_py_tmp169, align 8
  %cmp170 = icmp ne %struct._object* %124, null
  br i1 %cmp170, label %if.then.171, label %if.end.185

if.then.171:                                      ; preds = %do.body.167
  %125 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_traceback172 = getelementptr inbounds %struct._frame, %struct._frame* %125, i32 0, i32 11
  store %struct._object* null, %struct._object** %f_exc_traceback172, align 8
  br label %do.body.173

do.body.173:                                      ; preds = %if.then.171
  %126 = load %struct._object*, %struct._object** %_py_tmp169, align 8
  store %struct._object* %126, %struct._object** %_py_decref_tmp175, align 8
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  %ob_refcnt176 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 0
  %128 = load i64, i64* %ob_refcnt176, align 8
  %dec177 = add i64 %128, -1
  store i64 %dec177, i64* %ob_refcnt176, align 8
  %cmp178 = icmp ne i64 %dec177, 0
  br i1 %cmp178, label %if.then.179, label %if.else.180

if.then.179:                                      ; preds = %do.body.173
  br label %if.end.183

if.else.180:                                      ; preds = %do.body.173
  %129 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  %ob_type181 = getelementptr inbounds %struct._object, %struct._object* %129, i32 0, i32 1
  %130 = load %struct._typeobject*, %struct._typeobject** %ob_type181, align 8
  %tp_dealloc182 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %130, i32 0, i32 4
  %131 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc182, align 8
  %132 = load %struct._object*, %struct._object** %_py_decref_tmp175, align 8
  call void %131(%struct._object* %132)
  br label %if.end.183

if.end.183:                                       ; preds = %if.else.180, %if.then.179
  br label %do.end.184

do.end.184:                                       ; preds = %if.end.183
  br label %if.end.185

if.end.185:                                       ; preds = %do.end.184, %do.body.167
  br label %do.end.186

do.end.186:                                       ; preds = %if.end.185
  %133 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %133, i32 0, i32 2
  %134 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  store %struct.PyCodeObject* %134, %struct.PyCodeObject** %co, align 8
  %135 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_zombieframe = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %135, i32 0, i32 17
  %136 = load i8*, i8** %co_zombieframe, align 8
  %cmp187 = icmp eq i8* %136, null
  br i1 %cmp187, label %if.then.188, label %if.else.190

if.then.188:                                      ; preds = %do.end.186
  %137 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %138 = bitcast %struct._frame* %137 to i8*
  %139 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_zombieframe189 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %139, i32 0, i32 17
  store i8* %138, i8** %co_zombieframe189, align 8
  br label %if.end.197

if.else.190:                                      ; preds = %do.end.186
  %140 = load i32, i32* @numfree, align 4
  %cmp191 = icmp slt i32 %140, 200
  br i1 %cmp191, label %if.then.192, label %if.else.195

if.then.192:                                      ; preds = %if.else.190
  %141 = load i32, i32* @numfree, align 4
  %inc193 = add i32 %141, 1
  store i32 %inc193, i32* @numfree, align 4
  %142 = load %struct._frame*, %struct._frame** @free_list, align 8
  %143 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_back194 = getelementptr inbounds %struct._frame, %struct._frame* %143, i32 0, i32 1
  store %struct._frame* %142, %struct._frame** %f_back194, align 8
  %144 = load %struct._frame*, %struct._frame** %f.addr, align 8
  store %struct._frame* %144, %struct._frame** @free_list, align 8
  br label %if.end.196

if.else.195:                                      ; preds = %if.else.190
  %145 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %146 = bitcast %struct._frame* %145 to i8*
  call void @PyObject_GC_Del(i8* %146)
  br label %if.end.196

if.end.196:                                       ; preds = %if.else.195, %if.then.192
  br label %if.end.197

if.end.197:                                       ; preds = %if.end.196, %if.then.188
  br label %do.body.198

do.body.198:                                      ; preds = %if.end.197
  %147 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %148 = bitcast %struct.PyCodeObject* %147 to %struct._object*
  store %struct._object* %148, %struct._object** %_py_decref_tmp200, align 8
  %149 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  %ob_refcnt201 = getelementptr inbounds %struct._object, %struct._object* %149, i32 0, i32 0
  %150 = load i64, i64* %ob_refcnt201, align 8
  %dec202 = add i64 %150, -1
  store i64 %dec202, i64* %ob_refcnt201, align 8
  %cmp203 = icmp ne i64 %dec202, 0
  br i1 %cmp203, label %if.then.204, label %if.else.205

if.then.204:                                      ; preds = %do.body.198
  br label %if.end.208

if.else.205:                                      ; preds = %do.body.198
  %151 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  %ob_type206 = getelementptr inbounds %struct._object, %struct._object* %151, i32 0, i32 1
  %152 = load %struct._typeobject*, %struct._typeobject** %ob_type206, align 8
  %tp_dealloc207 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %152, i32 0, i32 4
  %153 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc207, align 8
  %154 = load %struct._object*, %struct._object** %_py_decref_tmp200, align 8
  call void %153(%struct._object* %154)
  br label %if.end.208

if.end.208:                                       ; preds = %if.else.205, %if.then.204
  br label %do.end.209

do.end.209:                                       ; preds = %if.end.208
  %155 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting210 = getelementptr inbounds %struct._ts, %struct._ts* %155, i32 0, i32 23
  %156 = load i32, i32* %trash_delete_nesting210, align 4
  %dec211 = add i32 %156, -1
  store i32 %dec211, i32* %trash_delete_nesting210, align 4
  %157 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_later = getelementptr inbounds %struct._ts, %struct._ts* %157, i32 0, i32 24
  %158 = load %struct._object*, %struct._object** %trash_delete_later, align 8
  %tobool = icmp ne %struct._object* %158, null
  br i1 %tobool, label %land.lhs.true, label %if.end.215

land.lhs.true:                                    ; preds = %do.end.209
  %159 = load %struct._ts*, %struct._ts** %_tstate, align 8
  %trash_delete_nesting212 = getelementptr inbounds %struct._ts, %struct._ts* %159, i32 0, i32 23
  %160 = load i32, i32* %trash_delete_nesting212, align 4
  %cmp213 = icmp sle i32 %160, 0
  br i1 %cmp213, label %if.then.214, label %if.end.215

if.then.214:                                      ; preds = %land.lhs.true
  call void @_PyTrash_thread_destroy_chain()
  br label %if.end.215

if.end.215:                                       ; preds = %if.then.214, %land.lhs.true, %do.end.209
  br label %if.end.217

if.else.216:                                      ; preds = %sw.epilog.3
  %161 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %162 = bitcast %struct._frame* %161 to %struct._object*
  call void @_PyTrash_thread_deposit_object(%struct._object* %162)
  br label %if.end.217

if.end.217:                                       ; preds = %if.else.216, %if.end.215
  br label %do.end.218

do.end.218:                                       ; preds = %if.end.217
  ret void
}

declare %struct._object* @PyObject_GenericGetAttr(%struct._object*, %struct._object*) #1

declare i32 @PyObject_GenericSetAttr(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define internal i32 @frame_traverse(%struct._frame* %f, i32 (%struct._object*, i8*)* %visit, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._frame*, align 8
  %visit.addr = alloca i32 (%struct._object*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %fastlocals = alloca %struct._object**, align 8
  %p = alloca %struct._object**, align 8
  %i = alloca i64, align 8
  %slots = alloca i64, align 8
  %vret = alloca i32, align 4
  %vret8 = alloca i32, align 4
  %vret19 = alloca i32, align 4
  %vret30 = alloca i32, align 4
  %vret41 = alloca i32, align 4
  %vret52 = alloca i32, align 4
  %vret63 = alloca i32, align 4
  %vret74 = alloca i32, align 4
  %vret85 = alloca i32, align 4
  %vret102 = alloca i32, align 4
  %vret120 = alloca i32, align 4
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store i32 (%struct._object*, i8*)* %visit, i32 (%struct._object*, i8*)** %visit.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 1
  %1 = load %struct._frame*, %struct._frame** %f_back, align 8
  %tobool = icmp ne %struct._frame* %1, null
  br i1 %tobool, label %if.then, label %if.end.4

if.then:                                          ; preds = %do.body
  %2 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %3 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_back1 = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 1
  %4 = load %struct._frame*, %struct._frame** %f_back1, align 8
  %5 = bitcast %struct._frame* %4 to %struct._object*
  %6 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %2(%struct._object* %5, i8* %6)
  store i32 %call, i32* %vret, align 4
  %7 = load i32, i32* %vret, align 4
  %tobool2 = icmp ne i32 %7, 0
  br i1 %tobool2, label %if.then.3, label %if.end

if.then.3:                                        ; preds = %if.then
  %8 = load i32, i32* %vret, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.4
  br label %do.body.5

do.body.5:                                        ; preds = %do.end
  %9 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %9, i32 0, i32 2
  %10 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %tobool6 = icmp ne %struct.PyCodeObject* %10, null
  br i1 %tobool6, label %if.then.7, label %if.end.14

if.then.7:                                        ; preds = %do.body.5
  %11 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %12 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code9 = getelementptr inbounds %struct._frame, %struct._frame* %12, i32 0, i32 2
  %13 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code9, align 8
  %14 = bitcast %struct.PyCodeObject* %13 to %struct._object*
  %15 = load i8*, i8** %arg.addr, align 8
  %call10 = call i32 %11(%struct._object* %14, i8* %15)
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
  br label %do.body.16

do.body.16:                                       ; preds = %do.end.15
  %18 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_builtins = getelementptr inbounds %struct._frame, %struct._frame* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %f_builtins, align 8
  %tobool17 = icmp ne %struct._object* %19, null
  br i1 %tobool17, label %if.then.18, label %if.end.25

if.then.18:                                       ; preds = %do.body.16
  %20 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %21 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_builtins20 = getelementptr inbounds %struct._frame, %struct._frame* %21, i32 0, i32 3
  %22 = load %struct._object*, %struct._object** %f_builtins20, align 8
  %23 = load i8*, i8** %arg.addr, align 8
  %call21 = call i32 %20(%struct._object* %22, i8* %23)
  store i32 %call21, i32* %vret19, align 4
  %24 = load i32, i32* %vret19, align 4
  %tobool22 = icmp ne i32 %24, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.then.18
  %25 = load i32, i32* %vret19, align 4
  store i32 %25, i32* %retval
  br label %return

if.end.24:                                        ; preds = %if.then.18
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24, %do.body.16
  br label %do.end.26

do.end.26:                                        ; preds = %if.end.25
  br label %do.body.27

do.body.27:                                       ; preds = %do.end.26
  %26 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_globals = getelementptr inbounds %struct._frame, %struct._frame* %26, i32 0, i32 4
  %27 = load %struct._object*, %struct._object** %f_globals, align 8
  %tobool28 = icmp ne %struct._object* %27, null
  br i1 %tobool28, label %if.then.29, label %if.end.36

if.then.29:                                       ; preds = %do.body.27
  %28 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %29 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_globals31 = getelementptr inbounds %struct._frame, %struct._frame* %29, i32 0, i32 4
  %30 = load %struct._object*, %struct._object** %f_globals31, align 8
  %31 = load i8*, i8** %arg.addr, align 8
  %call32 = call i32 %28(%struct._object* %30, i8* %31)
  store i32 %call32, i32* %vret30, align 4
  %32 = load i32, i32* %vret30, align 4
  %tobool33 = icmp ne i32 %32, 0
  br i1 %tobool33, label %if.then.34, label %if.end.35

if.then.34:                                       ; preds = %if.then.29
  %33 = load i32, i32* %vret30, align 4
  store i32 %33, i32* %retval
  br label %return

if.end.35:                                        ; preds = %if.then.29
  br label %if.end.36

if.end.36:                                        ; preds = %if.end.35, %do.body.27
  br label %do.end.37

do.end.37:                                        ; preds = %if.end.36
  br label %do.body.38

do.body.38:                                       ; preds = %do.end.37
  %34 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals = getelementptr inbounds %struct._frame, %struct._frame* %34, i32 0, i32 5
  %35 = load %struct._object*, %struct._object** %f_locals, align 8
  %tobool39 = icmp ne %struct._object* %35, null
  br i1 %tobool39, label %if.then.40, label %if.end.47

if.then.40:                                       ; preds = %do.body.38
  %36 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %37 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals42 = getelementptr inbounds %struct._frame, %struct._frame* %37, i32 0, i32 5
  %38 = load %struct._object*, %struct._object** %f_locals42, align 8
  %39 = load i8*, i8** %arg.addr, align 8
  %call43 = call i32 %36(%struct._object* %38, i8* %39)
  store i32 %call43, i32* %vret41, align 4
  %40 = load i32, i32* %vret41, align 4
  %tobool44 = icmp ne i32 %40, 0
  br i1 %tobool44, label %if.then.45, label %if.end.46

if.then.45:                                       ; preds = %if.then.40
  %41 = load i32, i32* %vret41, align 4
  store i32 %41, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.then.40
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.46, %do.body.38
  br label %do.end.48

do.end.48:                                        ; preds = %if.end.47
  br label %do.body.49

do.body.49:                                       ; preds = %do.end.48
  %42 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %42, i32 0, i32 8
  %43 = load %struct._object*, %struct._object** %f_trace, align 8
  %tobool50 = icmp ne %struct._object* %43, null
  br i1 %tobool50, label %if.then.51, label %if.end.58

if.then.51:                                       ; preds = %do.body.49
  %44 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %45 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace53 = getelementptr inbounds %struct._frame, %struct._frame* %45, i32 0, i32 8
  %46 = load %struct._object*, %struct._object** %f_trace53, align 8
  %47 = load i8*, i8** %arg.addr, align 8
  %call54 = call i32 %44(%struct._object* %46, i8* %47)
  store i32 %call54, i32* %vret52, align 4
  %48 = load i32, i32* %vret52, align 4
  %tobool55 = icmp ne i32 %48, 0
  br i1 %tobool55, label %if.then.56, label %if.end.57

if.then.56:                                       ; preds = %if.then.51
  %49 = load i32, i32* %vret52, align 4
  store i32 %49, i32* %retval
  br label %return

if.end.57:                                        ; preds = %if.then.51
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.57, %do.body.49
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %do.body.60

do.body.60:                                       ; preds = %do.end.59
  %50 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_type = getelementptr inbounds %struct._frame, %struct._frame* %50, i32 0, i32 9
  %51 = load %struct._object*, %struct._object** %f_exc_type, align 8
  %tobool61 = icmp ne %struct._object* %51, null
  br i1 %tobool61, label %if.then.62, label %if.end.69

if.then.62:                                       ; preds = %do.body.60
  %52 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %53 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_type64 = getelementptr inbounds %struct._frame, %struct._frame* %53, i32 0, i32 9
  %54 = load %struct._object*, %struct._object** %f_exc_type64, align 8
  %55 = load i8*, i8** %arg.addr, align 8
  %call65 = call i32 %52(%struct._object* %54, i8* %55)
  store i32 %call65, i32* %vret63, align 4
  %56 = load i32, i32* %vret63, align 4
  %tobool66 = icmp ne i32 %56, 0
  br i1 %tobool66, label %if.then.67, label %if.end.68

if.then.67:                                       ; preds = %if.then.62
  %57 = load i32, i32* %vret63, align 4
  store i32 %57, i32* %retval
  br label %return

if.end.68:                                        ; preds = %if.then.62
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %do.body.60
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  br label %do.body.71

do.body.71:                                       ; preds = %do.end.70
  %58 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_value = getelementptr inbounds %struct._frame, %struct._frame* %58, i32 0, i32 10
  %59 = load %struct._object*, %struct._object** %f_exc_value, align 8
  %tobool72 = icmp ne %struct._object* %59, null
  br i1 %tobool72, label %if.then.73, label %if.end.80

if.then.73:                                       ; preds = %do.body.71
  %60 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %61 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_value75 = getelementptr inbounds %struct._frame, %struct._frame* %61, i32 0, i32 10
  %62 = load %struct._object*, %struct._object** %f_exc_value75, align 8
  %63 = load i8*, i8** %arg.addr, align 8
  %call76 = call i32 %60(%struct._object* %62, i8* %63)
  store i32 %call76, i32* %vret74, align 4
  %64 = load i32, i32* %vret74, align 4
  %tobool77 = icmp ne i32 %64, 0
  br i1 %tobool77, label %if.then.78, label %if.end.79

if.then.78:                                       ; preds = %if.then.73
  %65 = load i32, i32* %vret74, align 4
  store i32 %65, i32* %retval
  br label %return

if.end.79:                                        ; preds = %if.then.73
  br label %if.end.80

if.end.80:                                        ; preds = %if.end.79, %do.body.71
  br label %do.end.81

do.end.81:                                        ; preds = %if.end.80
  br label %do.body.82

do.body.82:                                       ; preds = %do.end.81
  %66 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_traceback = getelementptr inbounds %struct._frame, %struct._frame* %66, i32 0, i32 11
  %67 = load %struct._object*, %struct._object** %f_exc_traceback, align 8
  %tobool83 = icmp ne %struct._object* %67, null
  br i1 %tobool83, label %if.then.84, label %if.end.91

if.then.84:                                       ; preds = %do.body.82
  %68 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %69 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_traceback86 = getelementptr inbounds %struct._frame, %struct._frame* %69, i32 0, i32 11
  %70 = load %struct._object*, %struct._object** %f_exc_traceback86, align 8
  %71 = load i8*, i8** %arg.addr, align 8
  %call87 = call i32 %68(%struct._object* %70, i8* %71)
  store i32 %call87, i32* %vret85, align 4
  %72 = load i32, i32* %vret85, align 4
  %tobool88 = icmp ne i32 %72, 0
  br i1 %tobool88, label %if.then.89, label %if.end.90

if.then.89:                                       ; preds = %if.then.84
  %73 = load i32, i32* %vret85, align 4
  store i32 %73, i32* %retval
  br label %return

if.end.90:                                        ; preds = %if.then.84
  br label %if.end.91

if.end.91:                                        ; preds = %if.end.90, %do.body.82
  br label %do.end.92

do.end.92:                                        ; preds = %if.end.91
  %74 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code93 = getelementptr inbounds %struct._frame, %struct._frame* %74, i32 0, i32 2
  %75 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code93, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %75, i32 0, i32 3
  %76 = load i32, i32* %co_nlocals, align 4
  %conv = sext i32 %76 to i64
  %77 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code94 = getelementptr inbounds %struct._frame, %struct._frame* %77, i32 0, i32 2
  %78 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code94, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %78, i32 0, i32 11
  %79 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %80 = bitcast %struct._object* %79 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %80, i32 0, i32 1
  %81 = load i64, i64* %ob_size, align 8
  %add = add i64 %conv, %81
  %82 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code95 = getelementptr inbounds %struct._frame, %struct._frame* %82, i32 0, i32 2
  %83 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code95, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %83, i32 0, i32 10
  %84 = load %struct._object*, %struct._object** %co_freevars, align 8
  %85 = bitcast %struct._object* %84 to %struct.PyVarObject*
  %ob_size96 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %85, i32 0, i32 1
  %86 = load i64, i64* %ob_size96, align 8
  %add97 = add i64 %add, %86
  store i64 %add97, i64* %slots, align 8
  %87 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_localsplus = getelementptr inbounds %struct._frame, %struct._frame* %87, i32 0, i32 18
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %f_localsplus, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %fastlocals, align 8
  %88 = load i64, i64* %slots, align 8
  store i64 %88, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.92
  %89 = load i64, i64* %i, align 8
  %dec = add i64 %89, -1
  store i64 %dec, i64* %i, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.99

do.body.99:                                       ; preds = %for.body
  %90 = load %struct._object**, %struct._object*** %fastlocals, align 8
  %91 = load %struct._object*, %struct._object** %90, align 8
  %tobool100 = icmp ne %struct._object* %91, null
  br i1 %tobool100, label %if.then.101, label %if.end.107

if.then.101:                                      ; preds = %do.body.99
  %92 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %93 = load %struct._object**, %struct._object*** %fastlocals, align 8
  %94 = load %struct._object*, %struct._object** %93, align 8
  %95 = load i8*, i8** %arg.addr, align 8
  %call103 = call i32 %92(%struct._object* %94, i8* %95)
  store i32 %call103, i32* %vret102, align 4
  %96 = load i32, i32* %vret102, align 4
  %tobool104 = icmp ne i32 %96, 0
  br i1 %tobool104, label %if.then.105, label %if.end.106

if.then.105:                                      ; preds = %if.then.101
  %97 = load i32, i32* %vret102, align 4
  store i32 %97, i32* %retval
  br label %return

if.end.106:                                       ; preds = %if.then.101
  br label %if.end.107

if.end.107:                                       ; preds = %if.end.106, %do.body.99
  br label %do.end.108

do.end.108:                                       ; preds = %if.end.107
  br label %for.inc

for.inc:                                          ; preds = %do.end.108
  %98 = load %struct._object**, %struct._object*** %fastlocals, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %98, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %fastlocals, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %99 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %99, i32 0, i32 7
  %100 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %cmp109 = icmp ne %struct._object** %100, null
  br i1 %cmp109, label %if.then.111, label %if.end.130

if.then.111:                                      ; preds = %for.end
  %101 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_valuestack = getelementptr inbounds %struct._frame, %struct._frame* %101, i32 0, i32 6
  %102 = load %struct._object**, %struct._object*** %f_valuestack, align 8
  store %struct._object** %102, %struct._object*** %p, align 8
  br label %for.cond.112

for.cond.112:                                     ; preds = %for.inc.127, %if.then.111
  %103 = load %struct._object**, %struct._object*** %p, align 8
  %104 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop113 = getelementptr inbounds %struct._frame, %struct._frame* %104, i32 0, i32 7
  %105 = load %struct._object**, %struct._object*** %f_stacktop113, align 8
  %cmp114 = icmp ult %struct._object** %103, %105
  br i1 %cmp114, label %for.body.116, label %for.end.129

for.body.116:                                     ; preds = %for.cond.112
  br label %do.body.117

do.body.117:                                      ; preds = %for.body.116
  %106 = load %struct._object**, %struct._object*** %p, align 8
  %107 = load %struct._object*, %struct._object** %106, align 8
  %tobool118 = icmp ne %struct._object* %107, null
  br i1 %tobool118, label %if.then.119, label %if.end.125

if.then.119:                                      ; preds = %do.body.117
  %108 = load i32 (%struct._object*, i8*)*, i32 (%struct._object*, i8*)** %visit.addr, align 8
  %109 = load %struct._object**, %struct._object*** %p, align 8
  %110 = load %struct._object*, %struct._object** %109, align 8
  %111 = load i8*, i8** %arg.addr, align 8
  %call121 = call i32 %108(%struct._object* %110, i8* %111)
  store i32 %call121, i32* %vret120, align 4
  %112 = load i32, i32* %vret120, align 4
  %tobool122 = icmp ne i32 %112, 0
  br i1 %tobool122, label %if.then.123, label %if.end.124

if.then.123:                                      ; preds = %if.then.119
  %113 = load i32, i32* %vret120, align 4
  store i32 %113, i32* %retval
  br label %return

if.end.124:                                       ; preds = %if.then.119
  br label %if.end.125

if.end.125:                                       ; preds = %if.end.124, %do.body.117
  br label %do.end.126

do.end.126:                                       ; preds = %if.end.125
  br label %for.inc.127

for.inc.127:                                      ; preds = %do.end.126
  %114 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr128 = getelementptr %struct._object*, %struct._object** %114, i32 1
  store %struct._object** %incdec.ptr128, %struct._object*** %p, align 8
  br label %for.cond.112

for.end.129:                                      ; preds = %for.cond.112
  br label %if.end.130

if.end.130:                                       ; preds = %for.end.129, %for.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.130, %if.then.123, %if.then.105, %if.then.89, %if.then.78, %if.then.67, %if.then.56, %if.then.45, %if.then.34, %if.then.23, %if.then.12, %if.then.3
  %115 = load i32, i32* %retval
  ret i32 %115
}

; Function Attrs: nounwind uwtable
define internal void @frame_tp_clear(%struct._frame* %f) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %fastlocals = alloca %struct._object**, align 8
  %p = alloca %struct._object**, align 8
  %oldtop = alloca %struct._object**, align 8
  %i = alloca i64, align 8
  %slots = alloca i64, align 8
  %_py_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_tmp9 = alloca %struct._object*, align 8
  %_py_decref_tmp14 = alloca %struct._object*, align 8
  %_py_tmp27 = alloca %struct._object*, align 8
  %_py_decref_tmp32 = alloca %struct._object*, align 8
  %_py_tmp45 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  %_py_tmp70 = alloca %struct._object*, align 8
  %_py_decref_tmp75 = alloca %struct._object*, align 8
  %_py_tmp96 = alloca %struct._object*, align 8
  %_py_decref_tmp101 = alloca %struct._object*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 7
  %1 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  store %struct._object** %1, %struct._object*** %oldtop, align 8
  %2 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop1 = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 7
  store %struct._object** null, %struct._object*** %f_stacktop1, align 8
  %3 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_executing = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 16
  store i8 0, i8* %f_executing, align 1
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_type = getelementptr inbounds %struct._frame, %struct._frame* %4, i32 0, i32 9
  %5 = load %struct._object*, %struct._object** %f_exc_type, align 8
  store %struct._object* %5, %struct._object** %_py_tmp, align 8
  %6 = load %struct._object*, %struct._object** %_py_tmp, align 8
  %cmp = icmp ne %struct._object* %6, null
  br i1 %cmp, label %if.then, label %if.end.6

if.then:                                          ; preds = %do.body
  %7 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_type2 = getelementptr inbounds %struct._frame, %struct._frame* %7, i32 0, i32 9
  store %struct._object* null, %struct._object** %f_exc_type2, align 8
  br label %do.body.3

do.body.3:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %_py_tmp, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body.3
  br label %if.end

if.else:                                          ; preds = %do.body.3
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.6

if.end.6:                                         ; preds = %do.end, %do.body
  br label %do.end.7

do.end.7:                                         ; preds = %if.end.6
  br label %do.body.8

do.body.8:                                        ; preds = %do.end.7
  %15 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_value = getelementptr inbounds %struct._frame, %struct._frame* %15, i32 0, i32 10
  %16 = load %struct._object*, %struct._object** %f_exc_value, align 8
  store %struct._object* %16, %struct._object** %_py_tmp9, align 8
  %17 = load %struct._object*, %struct._object** %_py_tmp9, align 8
  %cmp10 = icmp ne %struct._object* %17, null
  br i1 %cmp10, label %if.then.11, label %if.end.24

if.then.11:                                       ; preds = %do.body.8
  %18 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_value12 = getelementptr inbounds %struct._frame, %struct._frame* %18, i32 0, i32 10
  store %struct._object* null, %struct._object** %f_exc_value12, align 8
  br label %do.body.13

do.body.13:                                       ; preds = %if.then.11
  %19 = load %struct._object*, %struct._object** %_py_tmp9, align 8
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
  br label %if.end.24

if.end.24:                                        ; preds = %do.end.23, %do.body.8
  br label %do.end.25

do.end.25:                                        ; preds = %if.end.24
  br label %do.body.26

do.body.26:                                       ; preds = %do.end.25
  %26 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_traceback = getelementptr inbounds %struct._frame, %struct._frame* %26, i32 0, i32 11
  %27 = load %struct._object*, %struct._object** %f_exc_traceback, align 8
  store %struct._object* %27, %struct._object** %_py_tmp27, align 8
  %28 = load %struct._object*, %struct._object** %_py_tmp27, align 8
  %cmp28 = icmp ne %struct._object* %28, null
  br i1 %cmp28, label %if.then.29, label %if.end.42

if.then.29:                                       ; preds = %do.body.26
  %29 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_exc_traceback30 = getelementptr inbounds %struct._frame, %struct._frame* %29, i32 0, i32 11
  store %struct._object* null, %struct._object** %f_exc_traceback30, align 8
  br label %do.body.31

do.body.31:                                       ; preds = %if.then.29
  %30 = load %struct._object*, %struct._object** %_py_tmp27, align 8
  store %struct._object* %30, %struct._object** %_py_decref_tmp32, align 8
  %31 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_refcnt33 = getelementptr inbounds %struct._object, %struct._object* %31, i32 0, i32 0
  %32 = load i64, i64* %ob_refcnt33, align 8
  %dec34 = add i64 %32, -1
  store i64 %dec34, i64* %ob_refcnt33, align 8
  %cmp35 = icmp ne i64 %dec34, 0
  br i1 %cmp35, label %if.then.36, label %if.else.37

if.then.36:                                       ; preds = %do.body.31
  br label %if.end.40

if.else.37:                                       ; preds = %do.body.31
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  %ob_type38 = getelementptr inbounds %struct._object, %struct._object* %33, i32 0, i32 1
  %34 = load %struct._typeobject*, %struct._typeobject** %ob_type38, align 8
  %tp_dealloc39 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %34, i32 0, i32 4
  %35 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc39, align 8
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp32, align 8
  call void %35(%struct._object* %36)
  br label %if.end.40

if.end.40:                                        ; preds = %if.else.37, %if.then.36
  br label %do.end.41

do.end.41:                                        ; preds = %if.end.40
  br label %if.end.42

if.end.42:                                        ; preds = %do.end.41, %do.body.26
  br label %do.end.43

do.end.43:                                        ; preds = %if.end.42
  br label %do.body.44

do.body.44:                                       ; preds = %do.end.43
  %37 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %37, i32 0, i32 8
  %38 = load %struct._object*, %struct._object** %f_trace, align 8
  store %struct._object* %38, %struct._object** %_py_tmp45, align 8
  %39 = load %struct._object*, %struct._object** %_py_tmp45, align 8
  %cmp46 = icmp ne %struct._object* %39, null
  br i1 %cmp46, label %if.then.47, label %if.end.60

if.then.47:                                       ; preds = %do.body.44
  %40 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace48 = getelementptr inbounds %struct._frame, %struct._frame* %40, i32 0, i32 8
  store %struct._object* null, %struct._object** %f_trace48, align 8
  br label %do.body.49

do.body.49:                                       ; preds = %if.then.47
  %41 = load %struct._object*, %struct._object** %_py_tmp45, align 8
  store %struct._object* %41, %struct._object** %_py_decref_tmp50, align 8
  %42 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %42, i32 0, i32 0
  %43 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %43, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %44, i32 0, i32 1
  %45 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %45, i32 0, i32 4
  %46 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %47 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %46(%struct._object* %47)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59, %do.body.44
  br label %do.end.61

do.end.61:                                        ; preds = %if.end.60
  %48 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %48, i32 0, i32 2
  %49 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %49, i32 0, i32 3
  %50 = load i32, i32* %co_nlocals, align 4
  %conv = sext i32 %50 to i64
  %51 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code62 = getelementptr inbounds %struct._frame, %struct._frame* %51, i32 0, i32 2
  %52 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code62, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %52, i32 0, i32 11
  %53 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %54 = bitcast %struct._object* %53 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %54, i32 0, i32 1
  %55 = load i64, i64* %ob_size, align 8
  %add = add i64 %conv, %55
  %56 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code63 = getelementptr inbounds %struct._frame, %struct._frame* %56, i32 0, i32 2
  %57 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code63, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %57, i32 0, i32 10
  %58 = load %struct._object*, %struct._object** %co_freevars, align 8
  %59 = bitcast %struct._object* %58 to %struct.PyVarObject*
  %ob_size64 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %59, i32 0, i32 1
  %60 = load i64, i64* %ob_size64, align 8
  %add65 = add i64 %add, %60
  store i64 %add65, i64* %slots, align 8
  %61 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_localsplus = getelementptr inbounds %struct._frame, %struct._frame* %61, i32 0, i32 18
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %f_localsplus, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %fastlocals, align 8
  %62 = load i64, i64* %slots, align 8
  store i64 %62, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end.61
  %63 = load i64, i64* %i, align 8
  %dec66 = add i64 %63, -1
  store i64 %dec66, i64* %i, align 8
  %cmp67 = icmp sge i64 %dec66, 0
  br i1 %cmp67, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %do.body.69

do.body.69:                                       ; preds = %for.body
  %64 = load %struct._object**, %struct._object*** %fastlocals, align 8
  %65 = load %struct._object*, %struct._object** %64, align 8
  store %struct._object* %65, %struct._object** %_py_tmp70, align 8
  %66 = load %struct._object*, %struct._object** %_py_tmp70, align 8
  %cmp71 = icmp ne %struct._object* %66, null
  br i1 %cmp71, label %if.then.73, label %if.end.86

if.then.73:                                       ; preds = %do.body.69
  %67 = load %struct._object**, %struct._object*** %fastlocals, align 8
  store %struct._object* null, %struct._object** %67, align 8
  br label %do.body.74

do.body.74:                                       ; preds = %if.then.73
  %68 = load %struct._object*, %struct._object** %_py_tmp70, align 8
  store %struct._object* %68, %struct._object** %_py_decref_tmp75, align 8
  %69 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_refcnt76 = getelementptr inbounds %struct._object, %struct._object* %69, i32 0, i32 0
  %70 = load i64, i64* %ob_refcnt76, align 8
  %dec77 = add i64 %70, -1
  store i64 %dec77, i64* %ob_refcnt76, align 8
  %cmp78 = icmp ne i64 %dec77, 0
  br i1 %cmp78, label %if.then.80, label %if.else.81

if.then.80:                                       ; preds = %do.body.74
  br label %if.end.84

if.else.81:                                       ; preds = %do.body.74
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  %ob_type82 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 1
  %72 = load %struct._typeobject*, %struct._typeobject** %ob_type82, align 8
  %tp_dealloc83 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %72, i32 0, i32 4
  %73 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc83, align 8
  %74 = load %struct._object*, %struct._object** %_py_decref_tmp75, align 8
  call void %73(%struct._object* %74)
  br label %if.end.84

if.end.84:                                        ; preds = %if.else.81, %if.then.80
  br label %do.end.85

do.end.85:                                        ; preds = %if.end.84
  br label %if.end.86

if.end.86:                                        ; preds = %do.end.85, %do.body.69
  br label %do.end.87

do.end.87:                                        ; preds = %if.end.86
  br label %for.inc

for.inc:                                          ; preds = %do.end.87
  %75 = load %struct._object**, %struct._object*** %fastlocals, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %75, i32 1
  store %struct._object** %incdec.ptr, %struct._object*** %fastlocals, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %76 = load %struct._object**, %struct._object*** %oldtop, align 8
  %cmp88 = icmp ne %struct._object** %76, null
  br i1 %cmp88, label %if.then.90, label %if.end.117

if.then.90:                                       ; preds = %for.end
  %77 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_valuestack = getelementptr inbounds %struct._frame, %struct._frame* %77, i32 0, i32 6
  %78 = load %struct._object**, %struct._object*** %f_valuestack, align 8
  store %struct._object** %78, %struct._object*** %p, align 8
  br label %for.cond.91

for.cond.91:                                      ; preds = %for.inc.114, %if.then.90
  %79 = load %struct._object**, %struct._object*** %p, align 8
  %80 = load %struct._object**, %struct._object*** %oldtop, align 8
  %cmp92 = icmp ult %struct._object** %79, %80
  br i1 %cmp92, label %for.body.94, label %for.end.116

for.body.94:                                      ; preds = %for.cond.91
  br label %do.body.95

do.body.95:                                       ; preds = %for.body.94
  %81 = load %struct._object**, %struct._object*** %p, align 8
  %82 = load %struct._object*, %struct._object** %81, align 8
  store %struct._object* %82, %struct._object** %_py_tmp96, align 8
  %83 = load %struct._object*, %struct._object** %_py_tmp96, align 8
  %cmp97 = icmp ne %struct._object* %83, null
  br i1 %cmp97, label %if.then.99, label %if.end.112

if.then.99:                                       ; preds = %do.body.95
  %84 = load %struct._object**, %struct._object*** %p, align 8
  store %struct._object* null, %struct._object** %84, align 8
  br label %do.body.100

do.body.100:                                      ; preds = %if.then.99
  %85 = load %struct._object*, %struct._object** %_py_tmp96, align 8
  store %struct._object* %85, %struct._object** %_py_decref_tmp101, align 8
  %86 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_refcnt102 = getelementptr inbounds %struct._object, %struct._object* %86, i32 0, i32 0
  %87 = load i64, i64* %ob_refcnt102, align 8
  %dec103 = add i64 %87, -1
  store i64 %dec103, i64* %ob_refcnt102, align 8
  %cmp104 = icmp ne i64 %dec103, 0
  br i1 %cmp104, label %if.then.106, label %if.else.107

if.then.106:                                      ; preds = %do.body.100
  br label %if.end.110

if.else.107:                                      ; preds = %do.body.100
  %88 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  %ob_type108 = getelementptr inbounds %struct._object, %struct._object* %88, i32 0, i32 1
  %89 = load %struct._typeobject*, %struct._typeobject** %ob_type108, align 8
  %tp_dealloc109 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %89, i32 0, i32 4
  %90 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc109, align 8
  %91 = load %struct._object*, %struct._object** %_py_decref_tmp101, align 8
  call void %90(%struct._object* %91)
  br label %if.end.110

if.end.110:                                       ; preds = %if.else.107, %if.then.106
  br label %do.end.111

do.end.111:                                       ; preds = %if.end.110
  br label %if.end.112

if.end.112:                                       ; preds = %do.end.111, %do.body.95
  br label %do.end.113

do.end.113:                                       ; preds = %if.end.112
  br label %for.inc.114

for.inc.114:                                      ; preds = %do.end.113
  %92 = load %struct._object**, %struct._object*** %p, align 8
  %incdec.ptr115 = getelementptr %struct._object*, %struct._object** %92, i32 1
  store %struct._object** %incdec.ptr115, %struct._object*** %p, align 8
  br label %for.cond.91

for.end.116:                                      ; preds = %for.cond.91
  br label %if.end.117

if.end.117:                                       ; preds = %for.end.116, %for.end
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_PyFrame_Init() #0 {
entry:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define %struct._frame* @PyFrame_New(%struct._ts* %tstate, %struct.PyCodeObject* %code, %struct._object* %globals, %struct._object* %locals) #0 {
entry:
  %retval = alloca %struct._frame*, align 8
  %tstate.addr = alloca %struct._ts*, align 8
  %code.addr = alloca %struct.PyCodeObject*, align 8
  %globals.addr = alloca %struct._object*, align 8
  %locals.addr = alloca %struct._object*, align 8
  %back = alloca %struct._frame*, align 8
  %f = alloca %struct._frame*, align 8
  %builtins = alloca %struct._object*, align 8
  %i = alloca i64, align 8
  %extras = alloca i64, align 8
  %ncells = alloca i64, align 8
  %nfrees = alloca i64, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %new_f = alloca %struct._frame*, align 8
  %_py_decref_tmp60 = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp113 = alloca %struct._object*, align 8
  %g = alloca %union._gc_head*, align 8
  store %struct._ts* %tstate, %struct._ts** %tstate.addr, align 8
  store %struct.PyCodeObject* %code, %struct.PyCodeObject** %code.addr, align 8
  store %struct._object* %globals, %struct._object** %globals.addr, align 8
  store %struct._object* %locals, %struct._object** %locals.addr, align 8
  %0 = load %struct._ts*, %struct._ts** %tstate.addr, align 8
  %frame = getelementptr inbounds %struct._ts, %struct._ts* %0, i32 0, i32 3
  %1 = load %struct._frame*, %struct._frame** %frame, align 8
  store %struct._frame* %1, %struct._frame** %back, align 8
  %2 = load %struct._frame*, %struct._frame** %back, align 8
  %cmp = icmp eq %struct._frame* %2, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load %struct._frame*, %struct._frame** %back, align 8
  %f_globals = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 4
  %4 = load %struct._object*, %struct._object** %f_globals, align 8
  %5 = load %struct._object*, %struct._object** %globals.addr, align 8
  %cmp1 = icmp ne %struct._object* %4, %5
  br i1 %cmp1, label %if.then, label %if.else.21

if.then:                                          ; preds = %lor.lhs.false, %entry
  %6 = load %struct._object*, %struct._object** %globals.addr, align 8
  %call = call %struct._object* @_PyDict_GetItemId(%struct._object* %6, %struct._Py_Identifier* @PyId___builtins__)
  store %struct._object* %call, %struct._object** %builtins, align 8
  %7 = load %struct._object*, %struct._object** %builtins, align 8
  %tobool = icmp ne %struct._object* %7, null
  br i1 %tobool, label %if.then.2, label %if.end.10

if.then.2:                                        ; preds = %if.then
  %8 = load %struct._object*, %struct._object** %builtins, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp3 = icmp eq %struct._typeobject* %9, @PyModule_Type
  br i1 %cmp3, label %if.then.8, label %lor.lhs.false.4

lor.lhs.false.4:                                  ; preds = %if.then.2
  %10 = load %struct._object*, %struct._object** %builtins, align 8
  %ob_type5 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type5, align 8
  %call6 = call i32 @PyType_IsSubtype(%struct._typeobject* %11, %struct._typeobject* @PyModule_Type)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %lor.lhs.false.4, %if.then.2
  %12 = load %struct._object*, %struct._object** %builtins, align 8
  %call9 = call %struct._object* @PyModule_GetDict(%struct._object* %12)
  store %struct._object* %call9, %struct._object** %builtins, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.8, %lor.lhs.false.4
  br label %if.end.10

if.end.10:                                        ; preds = %if.end, %if.then
  %13 = load %struct._object*, %struct._object** %builtins, align 8
  %cmp11 = icmp eq %struct._object* %13, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.10
  %call13 = call %struct._object* @PyDict_New()
  store %struct._object* %call13, %struct._object** %builtins, align 8
  %14 = load %struct._object*, %struct._object** %builtins, align 8
  %cmp14 = icmp eq %struct._object* %14, null
  br i1 %cmp14, label %if.then.18, label %lor.lhs.false.15

lor.lhs.false.15:                                 ; preds = %if.then.12
  %15 = load %struct._object*, %struct._object** %builtins, align 8
  %call16 = call i32 @PyDict_SetItemString(%struct._object* %15, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._object* @_Py_NoneStruct)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then.18, label %if.end.19

if.then.18:                                       ; preds = %lor.lhs.false.15, %if.then.12
  store %struct._frame* null, %struct._frame** %retval
  br label %return

if.end.19:                                        ; preds = %lor.lhs.false.15
  br label %if.end.20

if.else:                                          ; preds = %if.end.10
  %16 = load %struct._object*, %struct._object** %builtins, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %16, i32 0, i32 0
  %17 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %17, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.else, %if.end.19
  br label %if.end.24

if.else.21:                                       ; preds = %lor.lhs.false
  %18 = load %struct._frame*, %struct._frame** %back, align 8
  %f_builtins = getelementptr inbounds %struct._frame, %struct._frame* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %f_builtins, align 8
  store %struct._object* %19, %struct._object** %builtins, align 8
  %20 = load %struct._object*, %struct._object** %builtins, align 8
  %ob_refcnt22 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt22, align 8
  %inc23 = add i64 %21, 1
  store i64 %inc23, i64* %ob_refcnt22, align 8
  br label %if.end.24

if.end.24:                                        ; preds = %if.else.21, %if.end.20
  %22 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_zombieframe = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %22, i32 0, i32 17
  %23 = load i8*, i8** %co_zombieframe, align 8
  %cmp25 = icmp ne i8* %23, null
  br i1 %cmp25, label %if.then.26, label %if.else.30

if.then.26:                                       ; preds = %if.end.24
  %24 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_zombieframe27 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %24, i32 0, i32 17
  %25 = load i8*, i8** %co_zombieframe27, align 8
  %26 = bitcast i8* %25 to %struct._frame*
  store %struct._frame* %26, %struct._frame** %f, align 8
  %27 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_zombieframe28 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %27, i32 0, i32 17
  store i8* null, i8** %co_zombieframe28, align 8
  %28 = load %struct._frame*, %struct._frame** %f, align 8
  %29 = bitcast %struct._frame* %28 to %struct._object*
  %ob_refcnt29 = getelementptr inbounds %struct._object, %struct._object* %29, i32 0, i32 0
  store i64 1, i64* %ob_refcnt29, align 8
  br label %if.end.83

if.else.30:                                       ; preds = %if.end.24
  %30 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %30, i32 0, i32 11
  %31 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %32 = bitcast %struct._object* %31 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %32, i32 0, i32 1
  %33 = load i64, i64* %ob_size, align 8
  store i64 %33, i64* %ncells, align 8
  %34 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %34, i32 0, i32 10
  %35 = load %struct._object*, %struct._object** %co_freevars, align 8
  %36 = bitcast %struct._object* %35 to %struct.PyVarObject*
  %ob_size31 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %36, i32 0, i32 1
  %37 = load i64, i64* %ob_size31, align 8
  store i64 %37, i64* %nfrees, align 8
  %38 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_stacksize = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %38, i32 0, i32 4
  %39 = load i32, i32* %co_stacksize, align 4
  %40 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %40, i32 0, i32 3
  %41 = load i32, i32* %co_nlocals, align 4
  %add = add i32 %39, %41
  %conv = sext i32 %add to i64
  %42 = load i64, i64* %ncells, align 8
  %add32 = add i64 %conv, %42
  %43 = load i64, i64* %nfrees, align 8
  %add33 = add i64 %add32, %43
  store i64 %add33, i64* %extras, align 8
  %44 = load %struct._frame*, %struct._frame** @free_list, align 8
  %cmp34 = icmp eq %struct._frame* %44, null
  br i1 %cmp34, label %if.then.36, label %if.else.49

if.then.36:                                       ; preds = %if.else.30
  %45 = load i64, i64* %extras, align 8
  %call37 = call %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject* @PyFrame_Type, i64 %45)
  %46 = bitcast %struct.PyVarObject* %call37 to %struct._frame*
  store %struct._frame* %46, %struct._frame** %f, align 8
  %47 = load %struct._frame*, %struct._frame** %f, align 8
  %cmp38 = icmp eq %struct._frame* %47, null
  br i1 %cmp38, label %if.then.40, label %if.end.48

if.then.40:                                       ; preds = %if.then.36
  br label %do.body

do.body:                                          ; preds = %if.then.40
  %48 = load %struct._object*, %struct._object** %builtins, align 8
  store %struct._object* %48, %struct._object** %_py_decref_tmp, align 8
  %49 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt41 = getelementptr inbounds %struct._object, %struct._object* %49, i32 0, i32 0
  %50 = load i64, i64* %ob_refcnt41, align 8
  %dec = add i64 %50, -1
  store i64 %dec, i64* %ob_refcnt41, align 8
  %cmp42 = icmp ne i64 %dec, 0
  br i1 %cmp42, label %if.then.44, label %if.else.45

if.then.44:                                       ; preds = %do.body
  br label %if.end.47

if.else.45:                                       ; preds = %do.body
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type46 = getelementptr inbounds %struct._object, %struct._object* %51, i32 0, i32 1
  %52 = load %struct._typeobject*, %struct._typeobject** %ob_type46, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %52, i32 0, i32 4
  %53 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %54 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %53(%struct._object* %54)
  br label %if.end.47

if.end.47:                                        ; preds = %if.else.45, %if.then.44
  br label %do.end

do.end:                                           ; preds = %if.end.47
  store %struct._frame* null, %struct._frame** %retval
  br label %return

if.end.48:                                        ; preds = %if.then.36
  br label %if.end.74

if.else.49:                                       ; preds = %if.else.30
  %55 = load i32, i32* @numfree, align 4
  %dec50 = add i32 %55, -1
  store i32 %dec50, i32* @numfree, align 4
  %56 = load %struct._frame*, %struct._frame** @free_list, align 8
  store %struct._frame* %56, %struct._frame** %f, align 8
  %57 = load %struct._frame*, %struct._frame** @free_list, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %57, i32 0, i32 1
  %58 = load %struct._frame*, %struct._frame** %f_back, align 8
  store %struct._frame* %58, %struct._frame** @free_list, align 8
  %59 = load %struct._frame*, %struct._frame** %f, align 8
  %60 = bitcast %struct._frame* %59 to %struct.PyVarObject*
  %ob_size51 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %60, i32 0, i32 1
  %61 = load i64, i64* %ob_size51, align 8
  %62 = load i64, i64* %extras, align 8
  %cmp52 = icmp slt i64 %61, %62
  br i1 %cmp52, label %if.then.54, label %if.end.72

if.then.54:                                       ; preds = %if.else.49
  %63 = load %struct._frame*, %struct._frame** %f, align 8
  %64 = bitcast %struct._frame* %63 to %struct.PyVarObject*
  %65 = load i64, i64* %extras, align 8
  %call55 = call %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject* %64, i64 %65)
  %66 = bitcast %struct.PyVarObject* %call55 to %struct._frame*
  store %struct._frame* %66, %struct._frame** %new_f, align 8
  %67 = load %struct._frame*, %struct._frame** %new_f, align 8
  %cmp56 = icmp eq %struct._frame* %67, null
  br i1 %cmp56, label %if.then.58, label %if.end.71

if.then.58:                                       ; preds = %if.then.54
  %68 = load %struct._frame*, %struct._frame** %f, align 8
  %69 = bitcast %struct._frame* %68 to i8*
  call void @PyObject_GC_Del(i8* %69)
  br label %do.body.59

do.body.59:                                       ; preds = %if.then.58
  %70 = load %struct._object*, %struct._object** %builtins, align 8
  store %struct._object* %70, %struct._object** %_py_decref_tmp60, align 8
  %71 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_refcnt61 = getelementptr inbounds %struct._object, %struct._object* %71, i32 0, i32 0
  %72 = load i64, i64* %ob_refcnt61, align 8
  %dec62 = add i64 %72, -1
  store i64 %dec62, i64* %ob_refcnt61, align 8
  %cmp63 = icmp ne i64 %dec62, 0
  br i1 %cmp63, label %if.then.65, label %if.else.66

if.then.65:                                       ; preds = %do.body.59
  br label %if.end.69

if.else.66:                                       ; preds = %do.body.59
  %73 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  %ob_type67 = getelementptr inbounds %struct._object, %struct._object* %73, i32 0, i32 1
  %74 = load %struct._typeobject*, %struct._typeobject** %ob_type67, align 8
  %tp_dealloc68 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %74, i32 0, i32 4
  %75 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc68, align 8
  %76 = load %struct._object*, %struct._object** %_py_decref_tmp60, align 8
  call void %75(%struct._object* %76)
  br label %if.end.69

if.end.69:                                        ; preds = %if.else.66, %if.then.65
  br label %do.end.70

do.end.70:                                        ; preds = %if.end.69
  store %struct._frame* null, %struct._frame** %retval
  br label %return

if.end.71:                                        ; preds = %if.then.54
  %77 = load %struct._frame*, %struct._frame** %new_f, align 8
  store %struct._frame* %77, %struct._frame** %f, align 8
  br label %if.end.72

if.end.72:                                        ; preds = %if.end.71, %if.else.49
  %78 = load %struct._frame*, %struct._frame** %f, align 8
  %79 = bitcast %struct._frame* %78 to %struct._object*
  %ob_refcnt73 = getelementptr inbounds %struct._object, %struct._object* %79, i32 0, i32 0
  store i64 1, i64* %ob_refcnt73, align 8
  br label %if.end.74

if.end.74:                                        ; preds = %if.end.72, %if.end.48
  %80 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %81 = load %struct._frame*, %struct._frame** %f, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %81, i32 0, i32 2
  store %struct.PyCodeObject* %80, %struct.PyCodeObject** %f_code, align 8
  %82 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_nlocals75 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %82, i32 0, i32 3
  %83 = load i32, i32* %co_nlocals75, align 4
  %conv76 = sext i32 %83 to i64
  %84 = load i64, i64* %ncells, align 8
  %add77 = add i64 %conv76, %84
  %85 = load i64, i64* %nfrees, align 8
  %add78 = add i64 %add77, %85
  store i64 %add78, i64* %extras, align 8
  %86 = load %struct._frame*, %struct._frame** %f, align 8
  %f_localsplus = getelementptr inbounds %struct._frame, %struct._frame* %86, i32 0, i32 18
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %f_localsplus, i32 0, i32 0
  %87 = load i64, i64* %extras, align 8
  %add.ptr = getelementptr %struct._object*, %struct._object** %arraydecay, i64 %87
  %88 = load %struct._frame*, %struct._frame** %f, align 8
  %f_valuestack = getelementptr inbounds %struct._frame, %struct._frame* %88, i32 0, i32 6
  store %struct._object** %add.ptr, %struct._object*** %f_valuestack, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.74
  %89 = load i64, i64* %i, align 8
  %90 = load i64, i64* %extras, align 8
  %cmp79 = icmp slt i64 %89, %90
  br i1 %cmp79, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %91 = load i64, i64* %i, align 8
  %92 = load %struct._frame*, %struct._frame** %f, align 8
  %f_localsplus81 = getelementptr inbounds %struct._frame, %struct._frame* %92, i32 0, i32 18
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %f_localsplus81, i32 0, i64 %91
  store %struct._object* null, %struct._object** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %93 = load i64, i64* %i, align 8
  %inc82 = add i64 %93, 1
  store i64 %inc82, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %94 = load %struct._frame*, %struct._frame** %f, align 8
  %f_locals = getelementptr inbounds %struct._frame, %struct._frame* %94, i32 0, i32 5
  store %struct._object* null, %struct._object** %f_locals, align 8
  %95 = load %struct._frame*, %struct._frame** %f, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %95, i32 0, i32 8
  store %struct._object* null, %struct._object** %f_trace, align 8
  %96 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_traceback = getelementptr inbounds %struct._frame, %struct._frame* %96, i32 0, i32 11
  store %struct._object* null, %struct._object** %f_exc_traceback, align 8
  %97 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_value = getelementptr inbounds %struct._frame, %struct._frame* %97, i32 0, i32 10
  store %struct._object* null, %struct._object** %f_exc_value, align 8
  %98 = load %struct._frame*, %struct._frame** %f, align 8
  %f_exc_type = getelementptr inbounds %struct._frame, %struct._frame* %98, i32 0, i32 9
  store %struct._object* null, %struct._object** %f_exc_type, align 8
  br label %if.end.83

if.end.83:                                        ; preds = %for.end, %if.then.26
  %99 = load %struct._frame*, %struct._frame** %f, align 8
  %f_valuestack84 = getelementptr inbounds %struct._frame, %struct._frame* %99, i32 0, i32 6
  %100 = load %struct._object**, %struct._object*** %f_valuestack84, align 8
  %101 = load %struct._frame*, %struct._frame** %f, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %101, i32 0, i32 7
  store %struct._object** %100, %struct._object*** %f_stacktop, align 8
  %102 = load %struct._object*, %struct._object** %builtins, align 8
  %103 = load %struct._frame*, %struct._frame** %f, align 8
  %f_builtins85 = getelementptr inbounds %struct._frame, %struct._frame* %103, i32 0, i32 3
  store %struct._object* %102, %struct._object** %f_builtins85, align 8
  br label %do.body.86

do.body.86:                                       ; preds = %if.end.83
  %104 = load %struct._frame*, %struct._frame** %back, align 8
  %105 = bitcast %struct._frame* %104 to %struct._object*
  store %struct._object* %105, %struct._object** %_py_xincref_tmp, align 8
  %106 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp87 = icmp ne %struct._object* %106, null
  br i1 %cmp87, label %if.then.89, label %if.end.92

if.then.89:                                       ; preds = %do.body.86
  %107 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt90 = getelementptr inbounds %struct._object, %struct._object* %107, i32 0, i32 0
  %108 = load i64, i64* %ob_refcnt90, align 8
  %inc91 = add i64 %108, 1
  store i64 %inc91, i64* %ob_refcnt90, align 8
  br label %if.end.92

if.end.92:                                        ; preds = %if.then.89, %do.body.86
  br label %do.end.93

do.end.93:                                        ; preds = %if.end.92
  %109 = load %struct._frame*, %struct._frame** %back, align 8
  %110 = load %struct._frame*, %struct._frame** %f, align 8
  %f_back94 = getelementptr inbounds %struct._frame, %struct._frame* %110, i32 0, i32 1
  store %struct._frame* %109, %struct._frame** %f_back94, align 8
  %111 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %112 = bitcast %struct.PyCodeObject* %111 to %struct._object*
  %ob_refcnt95 = getelementptr inbounds %struct._object, %struct._object* %112, i32 0, i32 0
  %113 = load i64, i64* %ob_refcnt95, align 8
  %inc96 = add i64 %113, 1
  store i64 %inc96, i64* %ob_refcnt95, align 8
  %114 = load %struct._object*, %struct._object** %globals.addr, align 8
  %ob_refcnt97 = getelementptr inbounds %struct._object, %struct._object* %114, i32 0, i32 0
  %115 = load i64, i64* %ob_refcnt97, align 8
  %inc98 = add i64 %115, 1
  store i64 %inc98, i64* %ob_refcnt97, align 8
  %116 = load %struct._object*, %struct._object** %globals.addr, align 8
  %117 = load %struct._frame*, %struct._frame** %f, align 8
  %f_globals99 = getelementptr inbounds %struct._frame, %struct._frame* %117, i32 0, i32 4
  store %struct._object* %116, %struct._object** %f_globals99, align 8
  %118 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %118, i32 0, i32 5
  %119 = load i32, i32* %co_flags, align 4
  %and = and i32 %119, 3
  %cmp100 = icmp eq i32 %and, 3
  br i1 %cmp100, label %if.then.102, label %if.else.103

if.then.102:                                      ; preds = %do.end.93
  br label %if.end.135

if.else.103:                                      ; preds = %do.end.93
  %120 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_flags104 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %120, i32 0, i32 5
  %121 = load i32, i32* %co_flags104, align 4
  %and105 = and i32 %121, 2
  %tobool106 = icmp ne i32 %and105, 0
  br i1 %tobool106, label %if.then.107, label %if.else.126

if.then.107:                                      ; preds = %if.else.103
  %call108 = call %struct._object* @PyDict_New()
  store %struct._object* %call108, %struct._object** %locals.addr, align 8
  %122 = load %struct._object*, %struct._object** %locals.addr, align 8
  %cmp109 = icmp eq %struct._object* %122, null
  br i1 %cmp109, label %if.then.111, label %if.end.124

if.then.111:                                      ; preds = %if.then.107
  br label %do.body.112

do.body.112:                                      ; preds = %if.then.111
  %123 = load %struct._frame*, %struct._frame** %f, align 8
  %124 = bitcast %struct._frame* %123 to %struct._object*
  store %struct._object* %124, %struct._object** %_py_decref_tmp113, align 8
  %125 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_refcnt114 = getelementptr inbounds %struct._object, %struct._object* %125, i32 0, i32 0
  %126 = load i64, i64* %ob_refcnt114, align 8
  %dec115 = add i64 %126, -1
  store i64 %dec115, i64* %ob_refcnt114, align 8
  %cmp116 = icmp ne i64 %dec115, 0
  br i1 %cmp116, label %if.then.118, label %if.else.119

if.then.118:                                      ; preds = %do.body.112
  br label %if.end.122

if.else.119:                                      ; preds = %do.body.112
  %127 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  %ob_type120 = getelementptr inbounds %struct._object, %struct._object* %127, i32 0, i32 1
  %128 = load %struct._typeobject*, %struct._typeobject** %ob_type120, align 8
  %tp_dealloc121 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %128, i32 0, i32 4
  %129 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc121, align 8
  %130 = load %struct._object*, %struct._object** %_py_decref_tmp113, align 8
  call void %129(%struct._object* %130)
  br label %if.end.122

if.end.122:                                       ; preds = %if.else.119, %if.then.118
  br label %do.end.123

do.end.123:                                       ; preds = %if.end.122
  store %struct._frame* null, %struct._frame** %retval
  br label %return

if.end.124:                                       ; preds = %if.then.107
  %131 = load %struct._object*, %struct._object** %locals.addr, align 8
  %132 = load %struct._frame*, %struct._frame** %f, align 8
  %f_locals125 = getelementptr inbounds %struct._frame, %struct._frame* %132, i32 0, i32 5
  store %struct._object* %131, %struct._object** %f_locals125, align 8
  br label %if.end.134

if.else.126:                                      ; preds = %if.else.103
  %133 = load %struct._object*, %struct._object** %locals.addr, align 8
  %cmp127 = icmp eq %struct._object* %133, null
  br i1 %cmp127, label %if.then.129, label %if.end.130

if.then.129:                                      ; preds = %if.else.126
  %134 = load %struct._object*, %struct._object** %globals.addr, align 8
  store %struct._object* %134, %struct._object** %locals.addr, align 8
  br label %if.end.130

if.end.130:                                       ; preds = %if.then.129, %if.else.126
  %135 = load %struct._object*, %struct._object** %locals.addr, align 8
  %ob_refcnt131 = getelementptr inbounds %struct._object, %struct._object* %135, i32 0, i32 0
  %136 = load i64, i64* %ob_refcnt131, align 8
  %inc132 = add i64 %136, 1
  store i64 %inc132, i64* %ob_refcnt131, align 8
  %137 = load %struct._object*, %struct._object** %locals.addr, align 8
  %138 = load %struct._frame*, %struct._frame** %f, align 8
  %f_locals133 = getelementptr inbounds %struct._frame, %struct._frame* %138, i32 0, i32 5
  store %struct._object* %137, %struct._object** %f_locals133, align 8
  br label %if.end.134

if.end.134:                                       ; preds = %if.end.130, %if.end.124
  br label %if.end.135

if.end.135:                                       ; preds = %if.end.134, %if.then.102
  %139 = load %struct._frame*, %struct._frame** %f, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %139, i32 0, i32 13
  store i32 -1, i32* %f_lasti, align 4
  %140 = load %struct.PyCodeObject*, %struct.PyCodeObject** %code.addr, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %140, i32 0, i32 15
  %141 = load i32, i32* %co_firstlineno, align 4
  %142 = load %struct._frame*, %struct._frame** %f, align 8
  %f_lineno = getelementptr inbounds %struct._frame, %struct._frame* %142, i32 0, i32 14
  store i32 %141, i32* %f_lineno, align 4
  %143 = load %struct._frame*, %struct._frame** %f, align 8
  %f_iblock = getelementptr inbounds %struct._frame, %struct._frame* %143, i32 0, i32 15
  store i32 0, i32* %f_iblock, align 4
  %144 = load %struct._frame*, %struct._frame** %f, align 8
  %f_executing = getelementptr inbounds %struct._frame, %struct._frame* %144, i32 0, i32 16
  store i8 0, i8* %f_executing, align 1
  %145 = load %struct._frame*, %struct._frame** %f, align 8
  %f_gen = getelementptr inbounds %struct._frame, %struct._frame* %145, i32 0, i32 12
  store %struct._object* null, %struct._object** %f_gen, align 8
  br label %do.body.136

do.body.136:                                      ; preds = %if.end.135
  %146 = load %struct._frame*, %struct._frame** %f, align 8
  %147 = bitcast %struct._frame* %146 to %union._gc_head*
  %add.ptr137 = getelementptr %union._gc_head, %union._gc_head* %147, i64 -1
  store %union._gc_head* %add.ptr137, %union._gc_head** %g, align 8
  %148 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc = bitcast %union._gc_head* %148 to %struct.anon*
  %gc_refs = getelementptr inbounds %struct.anon, %struct.anon* %gc, i32 0, i32 2
  %149 = load i64, i64* %gc_refs, align 8
  %shr = ashr i64 %149, 1
  %cmp138 = icmp ne i64 %shr, -2
  br i1 %cmp138, label %if.then.140, label %if.end.141

if.then.140:                                      ; preds = %do.body.136
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0)) #5
  unreachable

if.end.141:                                       ; preds = %do.body.136
  br label %do.body.142

do.body.142:                                      ; preds = %if.end.141
  %150 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc143 = bitcast %union._gc_head* %150 to %struct.anon*
  %gc_refs144 = getelementptr inbounds %struct.anon, %struct.anon* %gc143, i32 0, i32 2
  %151 = load i64, i64* %gc_refs144, align 8
  %and145 = and i64 %151, 1
  %or = or i64 %and145, -6
  %152 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc146 = bitcast %union._gc_head* %152 to %struct.anon*
  %gc_refs147 = getelementptr inbounds %struct.anon, %struct.anon* %gc146, i32 0, i32 2
  store i64 %or, i64* %gc_refs147, align 8
  br label %do.end.148

do.end.148:                                       ; preds = %do.body.142
  %153 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %154 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc149 = bitcast %union._gc_head* %154 to %struct.anon*
  %gc_next = getelementptr inbounds %struct.anon, %struct.anon* %gc149, i32 0, i32 0
  store %union._gc_head* %153, %union._gc_head** %gc_next, align 8
  %155 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc150 = bitcast %union._gc_head* %155 to %struct.anon*
  %gc_prev = getelementptr inbounds %struct.anon, %struct.anon* %gc150, i32 0, i32 1
  %156 = load %union._gc_head*, %union._gc_head** %gc_prev, align 8
  %157 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc151 = bitcast %union._gc_head* %157 to %struct.anon*
  %gc_prev152 = getelementptr inbounds %struct.anon, %struct.anon* %gc151, i32 0, i32 1
  store %union._gc_head* %156, %union._gc_head** %gc_prev152, align 8
  %158 = load %union._gc_head*, %union._gc_head** %g, align 8
  %159 = load %union._gc_head*, %union._gc_head** %g, align 8
  %gc153 = bitcast %union._gc_head* %159 to %struct.anon*
  %gc_prev154 = getelementptr inbounds %struct.anon, %struct.anon* %gc153, i32 0, i32 1
  %160 = load %union._gc_head*, %union._gc_head** %gc_prev154, align 8
  %gc155 = bitcast %union._gc_head* %160 to %struct.anon*
  %gc_next156 = getelementptr inbounds %struct.anon, %struct.anon* %gc155, i32 0, i32 0
  store %union._gc_head* %158, %union._gc_head** %gc_next156, align 8
  %161 = load %union._gc_head*, %union._gc_head** %g, align 8
  %162 = load %union._gc_head*, %union._gc_head** @_PyGC_generation0, align 8
  %gc157 = bitcast %union._gc_head* %162 to %struct.anon*
  %gc_prev158 = getelementptr inbounds %struct.anon, %struct.anon* %gc157, i32 0, i32 1
  store %union._gc_head* %161, %union._gc_head** %gc_prev158, align 8
  br label %do.end.159

do.end.159:                                       ; preds = %do.end.148
  %163 = load %struct._frame*, %struct._frame** %f, align 8
  store %struct._frame* %163, %struct._frame** %retval
  br label %return

return:                                           ; preds = %do.end.159, %do.end.123, %do.end.70, %do.end, %if.then.18
  %164 = load %struct._frame*, %struct._frame** %retval
  ret %struct._frame* %164
}

declare %struct._object* @_PyDict_GetItemId(%struct._object*, %struct._Py_Identifier*) #1

declare i32 @PyType_IsSubtype(%struct._typeobject*, %struct._typeobject*) #1

declare %struct._object* @PyModule_GetDict(%struct._object*) #1

declare %struct._object* @PyDict_New() #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

declare %struct.PyVarObject* @_PyObject_GC_NewVar(%struct._typeobject*, i64) #1

declare %struct.PyVarObject* @_PyObject_GC_Resize(%struct.PyVarObject*, i64) #1

declare void @PyObject_GC_Del(i8*) #1

; Function Attrs: noreturn
declare void @Py_FatalError(i8*) #2

; Function Attrs: nounwind uwtable
define void @PyFrame_BlockSetup(%struct._frame* %f, i32 %type, i32 %handler, i32 %level) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %type.addr = alloca i32, align 4
  %handler.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %b = alloca %struct.PyTryBlock*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i32 %handler, i32* %handler.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 15
  %1 = load i32, i32* %f_iblock, align 4
  %cmp = icmp sge i32 %1, 20
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock1 = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 15
  %3 = load i32, i32* %f_iblock1, align 4
  %inc = add i32 %3, 1
  store i32 %inc, i32* %f_iblock1, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_blockstack = getelementptr inbounds %struct._frame, %struct._frame* %4, i32 0, i32 17
  %arrayidx = getelementptr [20 x %struct.PyTryBlock], [20 x %struct.PyTryBlock]* %f_blockstack, i32 0, i64 %idxprom
  store %struct.PyTryBlock* %arrayidx, %struct.PyTryBlock** %b, align 8
  %5 = load i32, i32* %type.addr, align 4
  %6 = load %struct.PyTryBlock*, %struct.PyTryBlock** %b, align 8
  %b_type = getelementptr inbounds %struct.PyTryBlock, %struct.PyTryBlock* %6, i32 0, i32 0
  store i32 %5, i32* %b_type, align 4
  %7 = load i32, i32* %level.addr, align 4
  %8 = load %struct.PyTryBlock*, %struct.PyTryBlock** %b, align 8
  %b_level = getelementptr inbounds %struct.PyTryBlock, %struct.PyTryBlock* %8, i32 0, i32 2
  store i32 %7, i32* %b_level, align 4
  %9 = load i32, i32* %handler.addr, align 4
  %10 = load %struct.PyTryBlock*, %struct.PyTryBlock** %b, align 8
  %b_handler = getelementptr inbounds %struct.PyTryBlock, %struct.PyTryBlock* %10, i32 0, i32 1
  store i32 %9, i32* %b_handler, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.PyTryBlock* @PyFrame_BlockPop(%struct._frame* %f) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %b = alloca %struct.PyTryBlock*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 15
  %1 = load i32, i32* %f_iblock, align 4
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @Py_FatalError(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0)) #5
  unreachable

if.end:                                           ; preds = %entry
  %2 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock1 = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 15
  %3 = load i32, i32* %f_iblock1, align 4
  %dec = add i32 %3, -1
  store i32 %dec, i32* %f_iblock1, align 4
  %idxprom = sext i32 %dec to i64
  %4 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_blockstack = getelementptr inbounds %struct._frame, %struct._frame* %4, i32 0, i32 17
  %arrayidx = getelementptr [20 x %struct.PyTryBlock], [20 x %struct.PyTryBlock]* %f_blockstack, i32 0, i64 %idxprom
  store %struct.PyTryBlock* %arrayidx, %struct.PyTryBlock** %b, align 8
  %5 = load %struct.PyTryBlock*, %struct.PyTryBlock** %b, align 8
  ret %struct.PyTryBlock* %5
}

; Function Attrs: nounwind uwtable
define i32 @PyFrame_FastToLocalsWithError(%struct._frame* %f) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._frame*, align 8
  %locals = alloca %struct._object*, align 8
  %map = alloca %struct._object*, align 8
  %fast = alloca %struct._object**, align 8
  %co = alloca %struct.PyCodeObject*, align 8
  %j = alloca i64, align 8
  %ncells = alloca i64, align 8
  %nfreevars = alloca i64, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %cmp = icmp eq %struct._frame* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_PyErr_BadInternalCall(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i32 874)
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals = getelementptr inbounds %struct._frame, %struct._frame* %1, i32 0, i32 5
  %2 = load %struct._object*, %struct._object** %f_locals, align 8
  store %struct._object* %2, %struct._object** %locals, align 8
  %3 = load %struct._object*, %struct._object** %locals, align 8
  %cmp1 = icmp eq %struct._object* %3, null
  br i1 %cmp1, label %if.then.2, label %if.end.7

if.then.2:                                        ; preds = %if.end
  %call = call %struct._object* @PyDict_New()
  %4 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals3 = getelementptr inbounds %struct._frame, %struct._frame* %4, i32 0, i32 5
  store %struct._object* %call, %struct._object** %f_locals3, align 8
  store %struct._object* %call, %struct._object** %locals, align 8
  %5 = load %struct._object*, %struct._object** %locals, align 8
  %cmp4 = icmp eq %struct._object* %5, null
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.then.2
  store i32 -1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.then.2
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.end
  %6 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %6, i32 0, i32 2
  %7 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  store %struct.PyCodeObject* %7, %struct.PyCodeObject** %co, align 8
  %8 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_varnames = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %8, i32 0, i32 9
  %9 = load %struct._object*, %struct._object** %co_varnames, align 8
  store %struct._object* %9, %struct._object** %map, align 8
  %10 = load %struct._object*, %struct._object** %map, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 19
  %12 = load i64, i64* %tp_flags, align 8
  %and = and i64 %12, 67108864
  %cmp8 = icmp ne i64 %and, 0
  br i1 %cmp8, label %if.end.12, label %if.then.9

if.then.9:                                        ; preds = %if.end.7
  %13 = load %struct._object*, %struct._object** @PyExc_SystemError, align 8
  %14 = load %struct._object*, %struct._object** %map, align 8
  %ob_type10 = getelementptr inbounds %struct._object, %struct._object* %14, i32 0, i32 1
  %15 = load %struct._typeobject*, %struct._typeobject** %ob_type10, align 8
  %tp_name = getelementptr inbounds %struct._typeobject, %struct._typeobject* %15, i32 0, i32 1
  %16 = load i8*, i8** %tp_name, align 8
  %call11 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i8* %16)
  store i32 -1, i32* %retval
  br label %return

if.end.12:                                        ; preds = %if.end.7
  %17 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_localsplus = getelementptr inbounds %struct._frame, %struct._frame* %17, i32 0, i32 18
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %f_localsplus, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %fast, align 8
  %18 = load %struct._object*, %struct._object** %map, align 8
  %19 = bitcast %struct._object* %18 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %19, i32 0, i32 1
  %20 = load i64, i64* %ob_size, align 8
  store i64 %20, i64* %j, align 8
  %21 = load i64, i64* %j, align 8
  %22 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %22, i32 0, i32 3
  %23 = load i32, i32* %co_nlocals, align 4
  %conv = sext i32 %23 to i64
  %cmp13 = icmp sgt i64 %21, %conv
  br i1 %cmp13, label %if.then.15, label %if.end.18

if.then.15:                                       ; preds = %if.end.12
  %24 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals16 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %24, i32 0, i32 3
  %25 = load i32, i32* %co_nlocals16, align 4
  %conv17 = sext i32 %25 to i64
  store i64 %conv17, i64* %j, align 8
  br label %if.end.18

if.end.18:                                        ; preds = %if.then.15, %if.end.12
  %26 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals19 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %26, i32 0, i32 3
  %27 = load i32, i32* %co_nlocals19, align 4
  %tobool = icmp ne i32 %27, 0
  br i1 %tobool, label %if.then.20, label %if.end.26

if.then.20:                                       ; preds = %if.end.18
  %28 = load %struct._object*, %struct._object** %map, align 8
  %29 = load i64, i64* %j, align 8
  %30 = load %struct._object*, %struct._object** %locals, align 8
  %31 = load %struct._object**, %struct._object*** %fast, align 8
  %call21 = call i32 @map_to_dict(%struct._object* %28, i64 %29, %struct._object* %30, %struct._object** %31, i32 0)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.then.24, label %if.end.25

if.then.24:                                       ; preds = %if.then.20
  store i32 -1, i32* %retval
  br label %return

if.end.25:                                        ; preds = %if.then.20
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %if.end.18
  %32 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %32, i32 0, i32 11
  %33 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyVarObject*
  %ob_size27 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %34, i32 0, i32 1
  %35 = load i64, i64* %ob_size27, align 8
  store i64 %35, i64* %ncells, align 8
  %36 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %36, i32 0, i32 10
  %37 = load %struct._object*, %struct._object** %co_freevars, align 8
  %38 = bitcast %struct._object* %37 to %struct.PyVarObject*
  %ob_size28 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %38, i32 0, i32 1
  %39 = load i64, i64* %ob_size28, align 8
  store i64 %39, i64* %nfreevars, align 8
  %40 = load i64, i64* %ncells, align 8
  %tobool29 = icmp ne i64 %40, 0
  br i1 %tobool29, label %if.then.31, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.26
  %41 = load i64, i64* %nfreevars, align 8
  %tobool30 = icmp ne i64 %41, 0
  br i1 %tobool30, label %if.then.31, label %if.end.52

if.then.31:                                       ; preds = %lor.lhs.false, %if.end.26
  %42 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cellvars32 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %42, i32 0, i32 11
  %43 = load %struct._object*, %struct._object** %co_cellvars32, align 8
  %44 = load i64, i64* %ncells, align 8
  %45 = load %struct._object*, %struct._object** %locals, align 8
  %46 = load %struct._object**, %struct._object*** %fast, align 8
  %47 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals33 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %47, i32 0, i32 3
  %48 = load i32, i32* %co_nlocals33, align 4
  %idx.ext = sext i32 %48 to i64
  %add.ptr = getelementptr %struct._object*, %struct._object** %46, i64 %idx.ext
  %call34 = call i32 @map_to_dict(%struct._object* %43, i64 %44, %struct._object* %45, %struct._object** %add.ptr, i32 1)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.then.36, label %if.end.37

if.then.36:                                       ; preds = %if.then.31
  store i32 -1, i32* %retval
  br label %return

if.end.37:                                        ; preds = %if.then.31
  %49 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %49, i32 0, i32 5
  %50 = load i32, i32* %co_flags, align 4
  %and38 = and i32 %50, 1
  %tobool39 = icmp ne i32 %and38, 0
  br i1 %tobool39, label %if.then.40, label %if.end.51

if.then.40:                                       ; preds = %if.end.37
  %51 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_freevars41 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %51, i32 0, i32 10
  %52 = load %struct._object*, %struct._object** %co_freevars41, align 8
  %53 = load i64, i64* %nfreevars, align 8
  %54 = load %struct._object*, %struct._object** %locals, align 8
  %55 = load %struct._object**, %struct._object*** %fast, align 8
  %56 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals42 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %56, i32 0, i32 3
  %57 = load i32, i32* %co_nlocals42, align 4
  %idx.ext43 = sext i32 %57 to i64
  %add.ptr44 = getelementptr %struct._object*, %struct._object** %55, i64 %idx.ext43
  %58 = load i64, i64* %ncells, align 8
  %add.ptr45 = getelementptr %struct._object*, %struct._object** %add.ptr44, i64 %58
  %call46 = call i32 @map_to_dict(%struct._object* %52, i64 %53, %struct._object* %54, %struct._object** %add.ptr45, i32 1)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.40
  store i32 -1, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.40
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %if.end.37
  br label %if.end.52

if.end.52:                                        ; preds = %if.end.51, %lor.lhs.false
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.52, %if.then.49, %if.then.36, %if.then.24, %if.then.9, %if.then.5, %if.then
  %59 = load i32, i32* %retval
  ret i32 %59
}

declare void @_PyErr_BadInternalCall(i8*, i32) #1

declare %struct._object* @PyErr_Format(%struct._object*, i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @map_to_dict(%struct._object* %map, i64 %nmap, %struct._object* %dict, %struct._object** %values, i32 %deref) #0 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct._object*, align 8
  %nmap.addr = alloca i64, align 8
  %dict.addr = alloca %struct._object*, align 8
  %values.addr = alloca %struct._object**, align 8
  %deref.addr = alloca i32, align 4
  %j = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  store %struct._object* %map, %struct._object** %map.addr, align 8
  store i64 %nmap, i64* %nmap.addr, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  store %struct._object** %values, %struct._object*** %values.addr, align 8
  store i32 %deref, i32* %deref.addr, align 4
  %0 = load i64, i64* %nmap.addr, align 8
  store i64 %0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %if.end.16, %entry
  %1 = load i64, i64* %j, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %j, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  %3 = load %struct._object*, %struct._object** %map.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %2
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %5, %struct._object** %key, align 8
  %6 = load i64, i64* %j, align 8
  %7 = load %struct._object**, %struct._object*** %values.addr, align 8
  %arrayidx1 = getelementptr %struct._object*, %struct._object** %7, i64 %6
  %8 = load %struct._object*, %struct._object** %arrayidx1, align 8
  store %struct._object* %8, %struct._object** %value, align 8
  %9 = load i32, i32* %deref.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load %struct._object*, %struct._object** %value, align 8
  %11 = bitcast %struct._object* %10 to %struct.PyCellObject*
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %ob_ref, align 8
  store %struct._object* %12, %struct._object** %value, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %13 = load %struct._object*, %struct._object** %value, align 8
  %cmp2 = icmp eq %struct._object* %13, null
  br i1 %cmp2, label %if.then.3, label %if.else.11

if.then.3:                                        ; preds = %if.end
  %14 = load %struct._object*, %struct._object** %dict.addr, align 8
  %15 = load %struct._object*, %struct._object** %key, align 8
  %call = call i32 @PyObject_DelItem(%struct._object* %14, %struct._object* %15)
  %cmp4 = icmp ne i32 %call, 0
  br i1 %cmp4, label %if.then.5, label %if.end.10

if.then.5:                                        ; preds = %if.then.3
  %16 = load %struct._object*, %struct._object** @PyExc_KeyError, align 8
  %call6 = call i32 @PyErr_ExceptionMatches(%struct._object* %16)
  %tobool7 = icmp ne i32 %call6, 0
  br i1 %tobool7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %if.then.5
  call void @PyErr_Clear()
  br label %if.end.9

if.else:                                          ; preds = %if.then.5
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.then.8
  br label %if.end.10

if.end.10:                                        ; preds = %if.end.9, %if.then.3
  br label %if.end.16

if.else.11:                                       ; preds = %if.end
  %17 = load %struct._object*, %struct._object** %dict.addr, align 8
  %18 = load %struct._object*, %struct._object** %key, align 8
  %19 = load %struct._object*, %struct._object** %value, align 8
  %call12 = call i32 @PyObject_SetItem(%struct._object* %17, %struct._object* %18, %struct._object* %19)
  %cmp13 = icmp ne i32 %call12, 0
  br i1 %cmp13, label %if.then.14, label %if.end.15

if.then.14:                                       ; preds = %if.else.11
  store i32 -1, i32* %retval
  br label %return

if.end.15:                                        ; preds = %if.else.11
  br label %if.end.16

if.end.16:                                        ; preds = %if.end.15, %if.end.10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then.14, %if.else
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define void @PyFrame_FastToLocals(%struct._frame* %f) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %res = alloca i32, align 4
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %call = call i32 @PyFrame_FastToLocalsWithError(%struct._frame* %0)
  store i32 %call, i32* %res, align 4
  %1 = load i32, i32* %res, align 4
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @PyErr_Clear()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @PyErr_Clear() #1

; Function Attrs: nounwind uwtable
define void @PyFrame_LocalsToFast(%struct._frame* %f, i32 %clear) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %clear.addr = alloca i32, align 4
  %locals = alloca %struct._object*, align 8
  %map = alloca %struct._object*, align 8
  %fast = alloca %struct._object**, align 8
  %error_type = alloca %struct._object*, align 8
  %error_value = alloca %struct._object*, align 8
  %error_traceback = alloca %struct._object*, align 8
  %co = alloca %struct.PyCodeObject*, align 8
  %j = alloca i64, align 8
  %ncells = alloca i64, align 8
  %nfreevars = alloca i64, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store i32 %clear, i32* %clear.addr, align 4
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %cmp = icmp eq %struct._frame* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals = getelementptr inbounds %struct._frame, %struct._frame* %1, i32 0, i32 5
  %2 = load %struct._object*, %struct._object** %f_locals, align 8
  store %struct._object* %2, %struct._object** %locals, align 8
  %3 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 2
  %4 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  store %struct.PyCodeObject* %4, %struct.PyCodeObject** %co, align 8
  %5 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_varnames = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %5, i32 0, i32 9
  %6 = load %struct._object*, %struct._object** %co_varnames, align 8
  store %struct._object* %6, %struct._object** %map, align 8
  %7 = load %struct._object*, %struct._object** %locals, align 8
  %cmp1 = icmp eq %struct._object* %7, null
  br i1 %cmp1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %map, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 1
  %9 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_flags = getelementptr inbounds %struct._typeobject, %struct._typeobject* %9, i32 0, i32 19
  %10 = load i64, i64* %tp_flags, align 8
  %and = and i64 %10, 67108864
  %cmp4 = icmp ne i64 %and, 0
  br i1 %cmp4, label %if.end.6, label %if.then.5

if.then.5:                                        ; preds = %if.end.3
  br label %return

if.end.6:                                         ; preds = %if.end.3
  call void @PyErr_Fetch(%struct._object** %error_type, %struct._object** %error_value, %struct._object** %error_traceback)
  %11 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_localsplus = getelementptr inbounds %struct._frame, %struct._frame* %11, i32 0, i32 18
  %arraydecay = getelementptr inbounds [1 x %struct._object*], [1 x %struct._object*]* %f_localsplus, i32 0, i32 0
  store %struct._object** %arraydecay, %struct._object*** %fast, align 8
  %12 = load %struct._object*, %struct._object** %map, align 8
  %13 = bitcast %struct._object* %12 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %13, i32 0, i32 1
  %14 = load i64, i64* %ob_size, align 8
  store i64 %14, i64* %j, align 8
  %15 = load i64, i64* %j, align 8
  %16 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %16, i32 0, i32 3
  %17 = load i32, i32* %co_nlocals, align 4
  %conv = sext i32 %17 to i64
  %cmp7 = icmp sgt i64 %15, %conv
  br i1 %cmp7, label %if.then.9, label %if.end.12

if.then.9:                                        ; preds = %if.end.6
  %18 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals10 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %18, i32 0, i32 3
  %19 = load i32, i32* %co_nlocals10, align 4
  %conv11 = sext i32 %19 to i64
  store i64 %conv11, i64* %j, align 8
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.9, %if.end.6
  %20 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals13 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %20, i32 0, i32 3
  %21 = load i32, i32* %co_nlocals13, align 4
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.then.14, label %if.end.16

if.then.14:                                       ; preds = %if.end.12
  %22 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_varnames15 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %22, i32 0, i32 9
  %23 = load %struct._object*, %struct._object** %co_varnames15, align 8
  %24 = load i64, i64* %j, align 8
  %25 = load %struct._object*, %struct._object** %locals, align 8
  %26 = load %struct._object**, %struct._object*** %fast, align 8
  %27 = load i32, i32* %clear.addr, align 4
  call void @dict_to_map(%struct._object* %23, i64 %24, %struct._object* %25, %struct._object** %26, i32 0, i32 %27)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.14, %if.end.12
  %28 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %28, i32 0, i32 11
  %29 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %30 = bitcast %struct._object* %29 to %struct.PyVarObject*
  %ob_size17 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %30, i32 0, i32 1
  %31 = load i64, i64* %ob_size17, align 8
  store i64 %31, i64* %ncells, align 8
  %32 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %32, i32 0, i32 10
  %33 = load %struct._object*, %struct._object** %co_freevars, align 8
  %34 = bitcast %struct._object* %33 to %struct.PyVarObject*
  %ob_size18 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %34, i32 0, i32 1
  %35 = load i64, i64* %ob_size18, align 8
  store i64 %35, i64* %nfreevars, align 8
  %36 = load i64, i64* %ncells, align 8
  %tobool19 = icmp ne i64 %36, 0
  br i1 %tobool19, label %if.then.21, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.16
  %37 = load i64, i64* %nfreevars, align 8
  %tobool20 = icmp ne i64 %37, 0
  br i1 %tobool20, label %if.then.21, label %if.end.33

if.then.21:                                       ; preds = %lor.lhs.false, %if.end.16
  %38 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_cellvars22 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %38, i32 0, i32 11
  %39 = load %struct._object*, %struct._object** %co_cellvars22, align 8
  %40 = load i64, i64* %ncells, align 8
  %41 = load %struct._object*, %struct._object** %locals, align 8
  %42 = load %struct._object**, %struct._object*** %fast, align 8
  %43 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals23 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %43, i32 0, i32 3
  %44 = load i32, i32* %co_nlocals23, align 4
  %idx.ext = sext i32 %44 to i64
  %add.ptr = getelementptr %struct._object*, %struct._object** %42, i64 %idx.ext
  %45 = load i32, i32* %clear.addr, align 4
  call void @dict_to_map(%struct._object* %39, i64 %40, %struct._object* %41, %struct._object** %add.ptr, i32 1, i32 %45)
  %46 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_flags = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %46, i32 0, i32 5
  %47 = load i32, i32* %co_flags, align 4
  %and24 = and i32 %47, 1
  %tobool25 = icmp ne i32 %and24, 0
  br i1 %tobool25, label %if.then.26, label %if.end.32

if.then.26:                                       ; preds = %if.then.21
  %48 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_freevars27 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %48, i32 0, i32 10
  %49 = load %struct._object*, %struct._object** %co_freevars27, align 8
  %50 = load i64, i64* %nfreevars, align 8
  %51 = load %struct._object*, %struct._object** %locals, align 8
  %52 = load %struct._object**, %struct._object*** %fast, align 8
  %53 = load %struct.PyCodeObject*, %struct.PyCodeObject** %co, align 8
  %co_nlocals28 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %53, i32 0, i32 3
  %54 = load i32, i32* %co_nlocals28, align 4
  %idx.ext29 = sext i32 %54 to i64
  %add.ptr30 = getelementptr %struct._object*, %struct._object** %52, i64 %idx.ext29
  %55 = load i64, i64* %ncells, align 8
  %add.ptr31 = getelementptr %struct._object*, %struct._object** %add.ptr30, i64 %55
  %56 = load i32, i32* %clear.addr, align 4
  call void @dict_to_map(%struct._object* %49, i64 %50, %struct._object* %51, %struct._object** %add.ptr31, i32 1, i32 %56)
  br label %if.end.32

if.end.32:                                        ; preds = %if.then.26, %if.then.21
  br label %if.end.33

if.end.33:                                        ; preds = %if.end.32, %lor.lhs.false
  %57 = load %struct._object*, %struct._object** %error_type, align 8
  %58 = load %struct._object*, %struct._object** %error_value, align 8
  %59 = load %struct._object*, %struct._object** %error_traceback, align 8
  call void @PyErr_Restore(%struct._object* %57, %struct._object* %58, %struct._object* %59)
  br label %return

return:                                           ; preds = %if.end.33, %if.then.5, %if.then.2, %if.then
  ret void
}

declare void @PyErr_Fetch(%struct._object**, %struct._object**, %struct._object**) #1

; Function Attrs: nounwind uwtable
define internal void @dict_to_map(%struct._object* %map, i64 %nmap, %struct._object* %dict, %struct._object** %values, i32 %deref, i32 %clear) #0 {
entry:
  %map.addr = alloca %struct._object*, align 8
  %nmap.addr = alloca i64, align 8
  %dict.addr = alloca %struct._object*, align 8
  %values.addr = alloca %struct._object**, align 8
  %deref.addr = alloca i32, align 4
  %clear.addr = alloca i32, align 4
  %j = alloca i64, align 8
  %key = alloca %struct._object*, align 8
  %value = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp39 = alloca %struct._object*, align 8
  %_py_decref_tmp43 = alloca %struct._object*, align 8
  store %struct._object* %map, %struct._object** %map.addr, align 8
  store i64 %nmap, i64* %nmap.addr, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  store %struct._object** %values, %struct._object*** %values.addr, align 8
  store i32 %deref, i32* %deref.addr, align 4
  store i32 %clear, i32* %clear.addr, align 4
  %0 = load i64, i64* %nmap.addr, align 8
  store i64 %0, i64* %j, align 8
  br label %for.cond

for.cond:                                         ; preds = %do.end.54, %if.then.2, %entry
  %1 = load i64, i64* %j, align 8
  %dec = add i64 %1, -1
  store i64 %dec, i64* %j, align 8
  %cmp = icmp sge i64 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i64, i64* %j, align 8
  %3 = load %struct._object*, %struct._object** %map.addr, align 8
  %4 = bitcast %struct._object* %3 to %struct.PyTupleObject*
  %ob_item = getelementptr inbounds %struct.PyTupleObject, %struct.PyTupleObject* %4, i32 0, i32 1
  %arrayidx = getelementptr [1 x %struct._object*], [1 x %struct._object*]* %ob_item, i32 0, i64 %2
  %5 = load %struct._object*, %struct._object** %arrayidx, align 8
  store %struct._object* %5, %struct._object** %key, align 8
  %6 = load %struct._object*, %struct._object** %dict.addr, align 8
  %7 = load %struct._object*, %struct._object** %key, align 8
  %call = call %struct._object* @PyObject_GetItem(%struct._object* %6, %struct._object* %7)
  store %struct._object* %call, %struct._object** %value, align 8
  %8 = load %struct._object*, %struct._object** %value, align 8
  %cmp1 = icmp eq %struct._object* %8, null
  br i1 %cmp1, label %if.then, label %if.end.3

if.then:                                          ; preds = %for.body
  call void @PyErr_Clear()
  %9 = load i32, i32* %clear.addr, align 4
  %tobool = icmp ne i32 %9, 0
  br i1 %tobool, label %if.end, label %if.then.2

if.then.2:                                        ; preds = %if.then
  br label %for.cond

if.end:                                           ; preds = %if.then
  br label %if.end.3

if.end.3:                                         ; preds = %if.end, %for.body
  %10 = load i32, i32* %deref.addr, align 4
  %tobool4 = icmp ne i32 %10, 0
  br i1 %tobool4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %if.end.3
  %11 = load i64, i64* %j, align 8
  %12 = load %struct._object**, %struct._object*** %values.addr, align 8
  %arrayidx6 = getelementptr %struct._object*, %struct._object** %12, i64 %11
  %13 = load %struct._object*, %struct._object** %arrayidx6, align 8
  %14 = bitcast %struct._object* %13 to %struct.PyCellObject*
  %ob_ref = getelementptr inbounds %struct.PyCellObject, %struct.PyCellObject* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %ob_ref, align 8
  %16 = load %struct._object*, %struct._object** %value, align 8
  %cmp7 = icmp ne %struct._object* %15, %16
  br i1 %cmp7, label %if.then.8, label %if.end.14

if.then.8:                                        ; preds = %if.then.5
  %17 = load i64, i64* %j, align 8
  %18 = load %struct._object**, %struct._object*** %values.addr, align 8
  %arrayidx9 = getelementptr %struct._object*, %struct._object** %18, i64 %17
  %19 = load %struct._object*, %struct._object** %arrayidx9, align 8
  %20 = load %struct._object*, %struct._object** %value, align 8
  %call10 = call i32 @PyCell_Set(%struct._object* %19, %struct._object* %20)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.8
  call void @PyErr_Clear()
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.then.8
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.then.5
  br label %if.end.37

if.else:                                          ; preds = %if.end.3
  %21 = load i64, i64* %j, align 8
  %22 = load %struct._object**, %struct._object*** %values.addr, align 8
  %arrayidx15 = getelementptr %struct._object*, %struct._object** %22, i64 %21
  %23 = load %struct._object*, %struct._object** %arrayidx15, align 8
  %24 = load %struct._object*, %struct._object** %value, align 8
  %cmp16 = icmp ne %struct._object* %23, %24
  br i1 %cmp16, label %if.then.17, label %if.end.36

if.then.17:                                       ; preds = %if.else
  br label %do.body

do.body:                                          ; preds = %if.then.17
  %25 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %25, %struct._object** %_py_xincref_tmp, align 8
  %26 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp18 = icmp ne %struct._object* %26, null
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %do.body
  %27 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 0
  %28 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %28, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end.20
  br label %do.body.21

do.body.21:                                       ; preds = %do.end
  %29 = load i64, i64* %j, align 8
  %30 = load %struct._object**, %struct._object*** %values.addr, align 8
  %arrayidx22 = getelementptr %struct._object*, %struct._object** %30, i64 %29
  %31 = load %struct._object*, %struct._object** %arrayidx22, align 8
  store %struct._object* %31, %struct._object** %_py_xdecref_tmp, align 8
  %32 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp23 = icmp ne %struct._object* %32, null
  br i1 %cmp23, label %if.then.24, label %if.end.33

if.then.24:                                       ; preds = %do.body.21
  br label %do.body.25

do.body.25:                                       ; preds = %if.then.24
  %33 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %33, %struct._object** %_py_decref_tmp, align 8
  %34 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt26 = getelementptr inbounds %struct._object, %struct._object* %34, i32 0, i32 0
  %35 = load i64, i64* %ob_refcnt26, align 8
  %dec27 = add i64 %35, -1
  store i64 %dec27, i64* %ob_refcnt26, align 8
  %cmp28 = icmp ne i64 %dec27, 0
  br i1 %cmp28, label %if.then.29, label %if.else.30

if.then.29:                                       ; preds = %do.body.25
  br label %if.end.31

if.else.30:                                       ; preds = %do.body.25
  %36 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %36, i32 0, i32 1
  %37 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %37, i32 0, i32 4
  %38 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %38(%struct._object* %39)
  br label %if.end.31

if.end.31:                                        ; preds = %if.else.30, %if.then.29
  br label %do.end.32

do.end.32:                                        ; preds = %if.end.31
  br label %if.end.33

if.end.33:                                        ; preds = %do.end.32, %do.body.21
  br label %do.end.34

do.end.34:                                        ; preds = %if.end.33
  %40 = load %struct._object*, %struct._object** %value, align 8
  %41 = load i64, i64* %j, align 8
  %42 = load %struct._object**, %struct._object*** %values.addr, align 8
  %arrayidx35 = getelementptr %struct._object*, %struct._object** %42, i64 %41
  store %struct._object* %40, %struct._object** %arrayidx35, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %do.end.34, %if.else
  br label %if.end.37

if.end.37:                                        ; preds = %if.end.36, %if.end.14
  br label %do.body.38

do.body.38:                                       ; preds = %if.end.37
  %43 = load %struct._object*, %struct._object** %value, align 8
  store %struct._object* %43, %struct._object** %_py_xdecref_tmp39, align 8
  %44 = load %struct._object*, %struct._object** %_py_xdecref_tmp39, align 8
  %cmp40 = icmp ne %struct._object* %44, null
  br i1 %cmp40, label %if.then.41, label %if.end.53

if.then.41:                                       ; preds = %do.body.38
  br label %do.body.42

do.body.42:                                       ; preds = %if.then.41
  %45 = load %struct._object*, %struct._object** %_py_xdecref_tmp39, align 8
  store %struct._object* %45, %struct._object** %_py_decref_tmp43, align 8
  %46 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_refcnt44 = getelementptr inbounds %struct._object, %struct._object* %46, i32 0, i32 0
  %47 = load i64, i64* %ob_refcnt44, align 8
  %dec45 = add i64 %47, -1
  store i64 %dec45, i64* %ob_refcnt44, align 8
  %cmp46 = icmp ne i64 %dec45, 0
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %do.body.42
  br label %if.end.51

if.else.48:                                       ; preds = %do.body.42
  %48 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  %ob_type49 = getelementptr inbounds %struct._object, %struct._object* %48, i32 0, i32 1
  %49 = load %struct._typeobject*, %struct._typeobject** %ob_type49, align 8
  %tp_dealloc50 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %49, i32 0, i32 4
  %50 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc50, align 8
  %51 = load %struct._object*, %struct._object** %_py_decref_tmp43, align 8
  call void %50(%struct._object* %51)
  br label %if.end.51

if.end.51:                                        ; preds = %if.else.48, %if.then.47
  br label %do.end.52

do.end.52:                                        ; preds = %if.end.51
  br label %if.end.53

if.end.53:                                        ; preds = %do.end.52, %do.body.38
  br label %do.end.54

do.end.54:                                        ; preds = %if.end.53
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

declare void @PyErr_Restore(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @PyFrame_ClearFreeList() #0 {
entry:
  %freelist_size = alloca i32, align 4
  %f = alloca %struct._frame*, align 8
  %0 = load i32, i32* @numfree, align 4
  store i32 %0, i32* %freelist_size, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load %struct._frame*, %struct._frame** @free_list, align 8
  %cmp = icmp ne %struct._frame* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct._frame*, %struct._frame** @free_list, align 8
  store %struct._frame* %2, %struct._frame** %f, align 8
  %3 = load %struct._frame*, %struct._frame** @free_list, align 8
  %f_back = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 1
  %4 = load %struct._frame*, %struct._frame** %f_back, align 8
  store %struct._frame* %4, %struct._frame** @free_list, align 8
  %5 = load %struct._frame*, %struct._frame** %f, align 8
  %6 = bitcast %struct._frame* %5 to i8*
  call void @PyObject_GC_Del(i8* %6)
  %7 = load i32, i32* @numfree, align 4
  %dec = add i32 %7, -1
  store i32 %dec, i32* @numfree, align 4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %8 = load i32, i32* %freelist_size, align 4
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define void @PyFrame_Fini() #0 {
entry:
  %call = call i32 @PyFrame_ClearFreeList()
  ret void
}

; Function Attrs: nounwind uwtable
define void @_PyFrame_DebugMallocStats(%struct._IO_FILE* %out) #0 {
entry:
  %out.addr = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %out, %struct._IO_FILE** %out.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** %out.addr, align 8
  %1 = load i32, i32* @numfree, align 4
  call void @_PyDebugAllocatorStats(%struct._IO_FILE* %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0), i32 %1, i64 384)
  ret void
}

declare void @_PyDebugAllocatorStats(%struct._IO_FILE*, i8*, i32, i64) #1

declare void @PyObject_GC_UnTrack(i8*) #1

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
  call void asm sideeffect "mfence", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !1
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
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #4, !srcloc !2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

declare void @_PyTrash_thread_destroy_chain() #1

declare void @_PyTrash_thread_deposit_object(%struct._object*) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @frame_clear(%struct._frame* %f) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %f.addr = alloca %struct._frame*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_executing = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 16
  %1 = load i8, i8* %f_executing, align 1
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_RuntimeError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_gen = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 12
  %4 = load %struct._object*, %struct._object** %f_gen, align 8
  %tobool1 = icmp ne %struct._object* %4, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %5 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_gen3 = getelementptr inbounds %struct._frame, %struct._frame* %5, i32 0, i32 12
  %6 = load %struct._object*, %struct._object** %f_gen3, align 8
  call void @_PyGen_Finalize(%struct._object* %6)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %7 = load %struct._frame*, %struct._frame** %f.addr, align 8
  call void @frame_tp_clear(%struct._frame* %7)
  %8 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %8, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then
  %9 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %9
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @frame_sizeof(%struct._frame* %f) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %res = alloca i64, align 8
  %extras = alloca i64, align 8
  %ncells = alloca i64, align 8
  %nfrees = alloca i64, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 2
  %1 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %co_cellvars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %1, i32 0, i32 11
  %2 = load %struct._object*, %struct._object** %co_cellvars, align 8
  %3 = bitcast %struct._object* %2 to %struct.PyVarObject*
  %ob_size = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %3, i32 0, i32 1
  %4 = load i64, i64* %ob_size, align 8
  store i64 %4, i64* %ncells, align 8
  %5 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code1 = getelementptr inbounds %struct._frame, %struct._frame* %5, i32 0, i32 2
  %6 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code1, align 8
  %co_freevars = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %6, i32 0, i32 10
  %7 = load %struct._object*, %struct._object** %co_freevars, align 8
  %8 = bitcast %struct._object* %7 to %struct.PyVarObject*
  %ob_size2 = getelementptr inbounds %struct.PyVarObject, %struct.PyVarObject* %8, i32 0, i32 1
  %9 = load i64, i64* %ob_size2, align 8
  store i64 %9, i64* %nfrees, align 8
  %10 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code3 = getelementptr inbounds %struct._frame, %struct._frame* %10, i32 0, i32 2
  %11 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code3, align 8
  %co_stacksize = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %11, i32 0, i32 4
  %12 = load i32, i32* %co_stacksize, align 4
  %13 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code4 = getelementptr inbounds %struct._frame, %struct._frame* %13, i32 0, i32 2
  %14 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code4, align 8
  %co_nlocals = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %14, i32 0, i32 3
  %15 = load i32, i32* %co_nlocals, align 4
  %add = add i32 %12, %15
  %conv = sext i32 %add to i64
  %16 = load i64, i64* %ncells, align 8
  %add5 = add i64 %conv, %16
  %17 = load i64, i64* %nfrees, align 8
  %add6 = add i64 %add5, %17
  store i64 %add6, i64* %extras, align 8
  %18 = load i64, i64* %extras, align 8
  %sub = sub i64 %18, 1
  %mul = mul i64 %sub, 8
  %add7 = add i64 384, %mul
  store i64 %add7, i64* %res, align 8
  %19 = load i64, i64* %res, align 8
  %call = call %struct._object* @PyLong_FromSsize_t(i64 %19)
  ret %struct._object* %call
}

declare void @PyErr_SetString(%struct._object*, i8*) #1

declare void @_PyGen_Finalize(%struct._object*) #1

declare %struct._object* @PyLong_FromSsize_t(i64) #1

; Function Attrs: nounwind uwtable
define internal %struct._object* @frame_getlocals(%struct._frame* %f, i8* %closure) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %f.addr = alloca %struct._frame*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %call = call i32 @PyFrame_FastToLocalsWithError(%struct._frame* %0)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals = getelementptr inbounds %struct._frame, %struct._frame* %1, i32 0, i32 5
  %2 = load %struct._object*, %struct._object** %f_locals, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %3, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %4 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_locals1 = getelementptr inbounds %struct._frame, %struct._frame* %4, i32 0, i32 5
  %5 = load %struct._object*, %struct._object** %f_locals1, align 8
  store %struct._object* %5, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %6 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %6
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @frame_getlineno(%struct._frame* %f, i8* %closure) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %closure.addr = alloca i8*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %call = call i32 @PyFrame_GetLineNumber(%struct._frame* %0)
  %conv = sext i32 %call to i64
  %call1 = call %struct._object* @PyLong_FromLong(i64 %conv)
  ret %struct._object* %call1
}

; Function Attrs: nounwind uwtable
define internal i32 @frame_setlineno(%struct._frame* %f, %struct._object* %p_new_lineno) #0 {
entry:
  %retval = alloca i32, align 4
  %f.addr = alloca %struct._frame*, align 8
  %p_new_lineno.addr = alloca %struct._object*, align 8
  %new_lineno = alloca i32, align 4
  %l_new_lineno = alloca i64, align 8
  %overflow = alloca i32, align 4
  %new_lasti = alloca i32, align 4
  %new_iblock = alloca i32, align 4
  %code = alloca i8*, align 8
  %code_len = alloca i64, align 8
  %lnotab = alloca i8*, align 8
  %lnotab_len = alloca i64, align 8
  %offset = alloca i32, align 4
  %line = alloca i32, align 4
  %addr = alloca i32, align 4
  %min_addr = alloca i32, align 4
  %max_addr = alloca i32, align 4
  %delta_iblock = alloca i32, align 4
  %min_delta_iblock = alloca i32, align 4
  %min_iblock = alloca i32, align 4
  %f_lasti_setup_addr = alloca i32, align 4
  %new_lasti_setup_addr = alloca i32, align 4
  %blockstack = alloca [20 x i32], align 16
  %in_finally = alloca [20 x i32], align 16
  %blockstack_top = alloca i32, align 4
  %setup_op = alloca i8, align 1
  %tmp = alloca i8*, align 8
  %op = alloca i8, align 1
  %i = alloca i32, align 4
  %setup_addr = alloca i32, align 4
  %op181 = alloca i8, align 1
  %b = alloca %struct.PyTryBlock*, align 8
  %v = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store %struct._object* %p_new_lineno, %struct._object** %p_new_lineno.addr, align 8
  store i32 0, i32* %new_lineno, align 4
  store i32 0, i32* %new_lasti, align 4
  store i32 0, i32* %new_iblock, align 4
  store i8* null, i8** %code, align 8
  store i64 0, i64* %code_len, align 8
  store i8* null, i8** %lnotab, align 8
  store i64 0, i64* %lnotab_len, align 8
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %line, align 4
  store i32 0, i32* %addr, align 4
  store i32 0, i32* %min_addr, align 4
  store i32 0, i32* %max_addr, align 4
  store i32 0, i32* %delta_iblock, align 4
  store i32 0, i32* %min_delta_iblock, align 4
  store i32 0, i32* %min_iblock, align 4
  store i32 0, i32* %f_lasti_setup_addr, align 4
  store i32 0, i32* %new_lasti_setup_addr, align 4
  store i32 0, i32* %blockstack_top, align 4
  store i8 0, i8* %setup_op, align 1
  %0 = load %struct._object*, %struct._object** %p_new_lineno.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %cmp = icmp eq %struct._typeobject* %1, @PyLong_Type
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %2 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %3, i32 0, i32 8
  %4 = load %struct._object*, %struct._object** %f_trace, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %call = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %5, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %6 = load %struct._object*, %struct._object** %p_new_lineno.addr, align 8
  %call3 = call i64 @PyLong_AsLongAndOverflow(%struct._object* %6, i32* %overflow)
  store i64 %call3, i64* %l_new_lineno, align 8
  %7 = load i32, i32* %overflow, align 4
  %tobool4 = icmp ne i32 %7, 0
  br i1 %tobool4, label %if.then.8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.2
  %8 = load i64, i64* %l_new_lineno, align 8
  %cmp5 = icmp sgt i64 %8, 2147483647
  br i1 %cmp5, label %if.then.8, label %lor.lhs.false.6

lor.lhs.false.6:                                  ; preds = %lor.lhs.false
  %9 = load i64, i64* %l_new_lineno, align 8
  %cmp7 = icmp slt i64 %9, -2147483648
  br i1 %cmp7, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %lor.lhs.false.6, %lor.lhs.false, %if.end.2
  %10 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %lor.lhs.false.6
  %11 = load i64, i64* %l_new_lineno, align 8
  %conv = trunc i64 %11 to i32
  store i32 %conv, i32* %new_lineno, align 4
  %12 = load i32, i32* %new_lineno, align 4
  %13 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code = getelementptr inbounds %struct._frame, %struct._frame* %13, i32 0, i32 2
  %14 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code, align 8
  %co_firstlineno = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %14, i32 0, i32 15
  %15 = load i32, i32* %co_firstlineno, align 4
  %cmp10 = icmp slt i32 %12, %15
  br i1 %cmp10, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.end.9
  %16 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %17 = load i32, i32* %new_lineno, align 4
  %call13 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.22, i32 0, i32 0), i32 %17)
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %if.end.9
  %18 = load i32, i32* %new_lineno, align 4
  %19 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code14 = getelementptr inbounds %struct._frame, %struct._frame* %19, i32 0, i32 2
  %20 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code14, align 8
  %co_firstlineno15 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %20, i32 0, i32 15
  %21 = load i32, i32* %co_firstlineno15, align 4
  %cmp16 = icmp eq i32 %18, %21
  br i1 %cmp16, label %if.then.18, label %if.else.21

if.then.18:                                       ; preds = %if.else
  store i32 0, i32* %new_lasti, align 4
  %22 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code19 = getelementptr inbounds %struct._frame, %struct._frame* %22, i32 0, i32 2
  %23 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code19, align 8
  %co_firstlineno20 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %23, i32 0, i32 15
  %24 = load i32, i32* %co_firstlineno20, align 4
  store i32 %24, i32* %new_lineno, align 4
  br label %if.end.40

if.else.21:                                       ; preds = %if.else
  %25 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code22 = getelementptr inbounds %struct._frame, %struct._frame* %25, i32 0, i32 2
  %26 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code22, align 8
  %co_lnotab = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %26, i32 0, i32 16
  %27 = load %struct._object*, %struct._object** %co_lnotab, align 8
  %call23 = call i32 @PyBytes_AsStringAndSize(%struct._object* %27, i8** %tmp, i64* %lnotab_len)
  %28 = load i8*, i8** %tmp, align 8
  store i8* %28, i8** %lnotab, align 8
  store i32 0, i32* %addr, align 4
  %29 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code24 = getelementptr inbounds %struct._frame, %struct._frame* %29, i32 0, i32 2
  %30 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code24, align 8
  %co_firstlineno25 = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %30, i32 0, i32 15
  %31 = load i32, i32* %co_firstlineno25, align 4
  store i32 %31, i32* %line, align 4
  store i32 -1, i32* %new_lasti, align 4
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else.21
  %32 = load i32, i32* %offset, align 4
  %conv26 = sext i32 %32 to i64
  %33 = load i64, i64* %lnotab_len, align 8
  %cmp27 = icmp slt i64 %conv26, %33
  br i1 %cmp27, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %offset, align 4
  %idxprom = sext i32 %34 to i64
  %35 = load i8*, i8** %lnotab, align 8
  %arrayidx = getelementptr i8, i8* %35, i64 %idxprom
  %36 = load i8, i8* %arrayidx, align 1
  %conv29 = zext i8 %36 to i32
  %37 = load i32, i32* %addr, align 4
  %add = add i32 %37, %conv29
  store i32 %add, i32* %addr, align 4
  %38 = load i32, i32* %offset, align 4
  %add30 = add i32 %38, 1
  %idxprom31 = sext i32 %add30 to i64
  %39 = load i8*, i8** %lnotab, align 8
  %arrayidx32 = getelementptr i8, i8* %39, i64 %idxprom31
  %40 = load i8, i8* %arrayidx32, align 1
  %conv33 = zext i8 %40 to i32
  %41 = load i32, i32* %line, align 4
  %add34 = add i32 %41, %conv33
  store i32 %add34, i32* %line, align 4
  %42 = load i32, i32* %line, align 4
  %43 = load i32, i32* %new_lineno, align 4
  %cmp35 = icmp sge i32 %42, %43
  br i1 %cmp35, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %for.body
  %44 = load i32, i32* %addr, align 4
  store i32 %44, i32* %new_lasti, align 4
  %45 = load i32, i32* %line, align 4
  store i32 %45, i32* %new_lineno, align 4
  br label %for.end

if.end.38:                                        ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %46 = load i32, i32* %offset, align 4
  %add39 = add i32 %46, 2
  store i32 %add39, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.37, %for.cond
  br label %if.end.40

if.end.40:                                        ; preds = %for.end, %if.then.18
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.40
  %47 = load i32, i32* %new_lasti, align 4
  %cmp42 = icmp eq i32 %47, -1
  br i1 %cmp42, label %if.then.44, label %if.end.46

if.then.44:                                       ; preds = %if.end.41
  %48 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  %49 = load i32, i32* %new_lineno, align 4
  %call45 = call %struct._object* (%struct._object*, i8*, ...) @PyErr_Format(%struct._object* %48, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i32 0, i32 0), i32 %49)
  store i32 -1, i32* %retval
  br label %return

if.end.46:                                        ; preds = %if.end.41
  %50 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_code47 = getelementptr inbounds %struct._frame, %struct._frame* %50, i32 0, i32 2
  %51 = load %struct.PyCodeObject*, %struct.PyCodeObject** %f_code47, align 8
  %co_code = getelementptr inbounds %struct.PyCodeObject, %struct.PyCodeObject* %51, i32 0, i32 6
  %52 = load %struct._object*, %struct._object** %co_code, align 8
  %call48 = call i32 @PyBytes_AsStringAndSize(%struct._object* %52, i8** %code, i64* %code_len)
  %53 = load i32, i32* %new_lasti, align 4
  %54 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti = getelementptr inbounds %struct._frame, %struct._frame* %54, i32 0, i32 13
  %55 = load i32, i32* %f_lasti, align 4
  %cmp49 = icmp sgt i32 %53, %55
  br i1 %cmp49, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.46
  %56 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti51 = getelementptr inbounds %struct._frame, %struct._frame* %56, i32 0, i32 13
  %57 = load i32, i32* %f_lasti51, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end.46
  %58 = load i32, i32* %new_lasti, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %57, %cond.true ], [ %58, %cond.false ]
  store i32 %cond, i32* %min_addr, align 4
  %59 = load i32, i32* %new_lasti, align 4
  %60 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti52 = getelementptr inbounds %struct._frame, %struct._frame* %60, i32 0, i32 13
  %61 = load i32, i32* %f_lasti52, align 4
  %cmp53 = icmp sgt i32 %59, %61
  br i1 %cmp53, label %cond.true.55, label %cond.false.56

cond.true.55:                                     ; preds = %cond.end
  %62 = load i32, i32* %new_lasti, align 4
  br label %cond.end.58

cond.false.56:                                    ; preds = %cond.end
  %63 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti57 = getelementptr inbounds %struct._frame, %struct._frame* %63, i32 0, i32 13
  %64 = load i32, i32* %f_lasti57, align 4
  br label %cond.end.58

cond.end.58:                                      ; preds = %cond.false.56, %cond.true.55
  %cond59 = phi i32 [ %62, %cond.true.55 ], [ %64, %cond.false.56 ]
  store i32 %cond59, i32* %max_addr, align 4
  %65 = load i32, i32* %new_lasti, align 4
  %idxprom60 = sext i32 %65 to i64
  %66 = load i8*, i8** %code, align 8
  %arrayidx61 = getelementptr i8, i8* %66, i64 %idxprom60
  %67 = load i8, i8* %arrayidx61, align 1
  %conv62 = zext i8 %67 to i32
  %cmp63 = icmp eq i32 %conv62, 4
  br i1 %cmp63, label %if.then.71, label %lor.lhs.false.65

lor.lhs.false.65:                                 ; preds = %cond.end.58
  %68 = load i32, i32* %new_lasti, align 4
  %idxprom66 = sext i32 %68 to i64
  %69 = load i8*, i8** %code, align 8
  %arrayidx67 = getelementptr i8, i8* %69, i64 %idxprom66
  %70 = load i8, i8* %arrayidx67, align 1
  %conv68 = zext i8 %70 to i32
  %cmp69 = icmp eq i32 %conv68, 1
  br i1 %cmp69, label %if.then.71, label %if.end.72

if.then.71:                                       ; preds = %lor.lhs.false.65, %cond.end.58
  %71 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %71, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.24, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.72:                                        ; preds = %lor.lhs.false.65
  store i32 -1, i32* %f_lasti_setup_addr, align 4
  store i32 -1, i32* %new_lasti_setup_addr, align 4
  %72 = bitcast [20 x i32]* %blockstack to i8*
  call void @llvm.memset.p0i8.i64(i8* %72, i8 0, i64 80, i32 16, i1 false)
  %73 = bitcast [20 x i32]* %in_finally to i8*
  call void @llvm.memset.p0i8.i64(i8* %73, i8 0, i64 80, i32 16, i1 false)
  store i32 0, i32* %blockstack_top, align 4
  store i32 0, i32* %addr, align 4
  br label %for.cond.73

for.cond.73:                                      ; preds = %for.inc.169, %if.end.72
  %74 = load i32, i32* %addr, align 4
  %conv74 = sext i32 %74 to i64
  %75 = load i64, i64* %code_len, align 8
  %cmp75 = icmp slt i64 %conv74, %75
  br i1 %cmp75, label %for.body.77, label %for.end.171

for.body.77:                                      ; preds = %for.cond.73
  %76 = load i32, i32* %addr, align 4
  %idxprom79 = sext i32 %76 to i64
  %77 = load i8*, i8** %code, align 8
  %arrayidx80 = getelementptr i8, i8* %77, i64 %idxprom79
  %78 = load i8, i8* %arrayidx80, align 1
  store i8 %78, i8* %op, align 1
  %79 = load i8, i8* %op, align 1
  %conv81 = zext i8 %79 to i32
  switch i32 %conv81, label %sw.epilog [
    i32 120, label %sw.bb
    i32 121, label %sw.bb
    i32 122, label %sw.bb
    i32 143, label %sw.bb
    i32 87, label %sw.bb.86
    i32 88, label %sw.bb.105
  ]

sw.bb:                                            ; preds = %for.body.77, %for.body.77, %for.body.77, %for.body.77
  %80 = load i32, i32* %addr, align 4
  %81 = load i32, i32* %blockstack_top, align 4
  %inc = add i32 %81, 1
  store i32 %inc, i32* %blockstack_top, align 4
  %idxprom82 = sext i32 %81 to i64
  %arrayidx83 = getelementptr [20 x i32], [20 x i32]* %blockstack, i32 0, i64 %idxprom82
  store i32 %80, i32* %arrayidx83, align 4
  %82 = load i32, i32* %blockstack_top, align 4
  %sub = sub i32 %82, 1
  %idxprom84 = sext i32 %sub to i64
  %arrayidx85 = getelementptr [20 x i32], [20 x i32]* %in_finally, i32 0, i64 %idxprom84
  store i32 0, i32* %arrayidx85, align 4
  br label %sw.epilog

sw.bb.86:                                         ; preds = %for.body.77
  %83 = load i32, i32* %blockstack_top, align 4
  %sub87 = sub i32 %83, 1
  %idxprom88 = sext i32 %sub87 to i64
  %arrayidx89 = getelementptr [20 x i32], [20 x i32]* %blockstack, i32 0, i64 %idxprom88
  %84 = load i32, i32* %arrayidx89, align 4
  %idxprom90 = sext i32 %84 to i64
  %85 = load i8*, i8** %code, align 8
  %arrayidx91 = getelementptr i8, i8* %85, i64 %idxprom90
  %86 = load i8, i8* %arrayidx91, align 1
  store i8 %86, i8* %setup_op, align 1
  %87 = load i8, i8* %setup_op, align 1
  %conv92 = zext i8 %87 to i32
  %cmp93 = icmp eq i32 %conv92, 122
  br i1 %cmp93, label %if.then.99, label %lor.lhs.false.95

lor.lhs.false.95:                                 ; preds = %sw.bb.86
  %88 = load i8, i8* %setup_op, align 1
  %conv96 = zext i8 %88 to i32
  %cmp97 = icmp eq i32 %conv96, 143
  br i1 %cmp97, label %if.then.99, label %if.else.103

if.then.99:                                       ; preds = %lor.lhs.false.95, %sw.bb.86
  %89 = load i32, i32* %blockstack_top, align 4
  %sub100 = sub i32 %89, 1
  %idxprom101 = sext i32 %sub100 to i64
  %arrayidx102 = getelementptr [20 x i32], [20 x i32]* %in_finally, i32 0, i64 %idxprom101
  store i32 1, i32* %arrayidx102, align 4
  br label %if.end.104

if.else.103:                                      ; preds = %lor.lhs.false.95
  %90 = load i32, i32* %blockstack_top, align 4
  %dec = add i32 %90, -1
  store i32 %dec, i32* %blockstack_top, align 4
  br label %if.end.104

if.end.104:                                       ; preds = %if.else.103, %if.then.99
  br label %sw.epilog

sw.bb.105:                                        ; preds = %for.body.77
  %91 = load i32, i32* %blockstack_top, align 4
  %cmp106 = icmp sgt i32 %91, 0
  br i1 %cmp106, label %if.then.108, label %if.end.124

if.then.108:                                      ; preds = %sw.bb.105
  %92 = load i32, i32* %blockstack_top, align 4
  %sub109 = sub i32 %92, 1
  %idxprom110 = sext i32 %sub109 to i64
  %arrayidx111 = getelementptr [20 x i32], [20 x i32]* %blockstack, i32 0, i64 %idxprom110
  %93 = load i32, i32* %arrayidx111, align 4
  %idxprom112 = sext i32 %93 to i64
  %94 = load i8*, i8** %code, align 8
  %arrayidx113 = getelementptr i8, i8* %94, i64 %idxprom112
  %95 = load i8, i8* %arrayidx113, align 1
  store i8 %95, i8* %setup_op, align 1
  %96 = load i8, i8* %setup_op, align 1
  %conv114 = zext i8 %96 to i32
  %cmp115 = icmp eq i32 %conv114, 122
  br i1 %cmp115, label %if.then.121, label %lor.lhs.false.117

lor.lhs.false.117:                                ; preds = %if.then.108
  %97 = load i8, i8* %setup_op, align 1
  %conv118 = zext i8 %97 to i32
  %cmp119 = icmp eq i32 %conv118, 143
  br i1 %cmp119, label %if.then.121, label %if.end.123

if.then.121:                                      ; preds = %lor.lhs.false.117, %if.then.108
  %98 = load i32, i32* %blockstack_top, align 4
  %dec122 = add i32 %98, -1
  store i32 %dec122, i32* %blockstack_top, align 4
  br label %if.end.123

if.end.123:                                       ; preds = %if.then.121, %lor.lhs.false.117
  br label %if.end.124

if.end.124:                                       ; preds = %if.end.123, %sw.bb.105
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.77, %if.end.124, %if.end.104, %sw.bb
  %99 = load i32, i32* %addr, align 4
  %100 = load i32, i32* %new_lasti, align 4
  %cmp125 = icmp eq i32 %99, %100
  br i1 %cmp125, label %if.then.131, label %lor.lhs.false.127

lor.lhs.false.127:                                ; preds = %sw.epilog
  %101 = load i32, i32* %addr, align 4
  %102 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti128 = getelementptr inbounds %struct._frame, %struct._frame* %102, i32 0, i32 13
  %103 = load i32, i32* %f_lasti128, align 4
  %cmp129 = icmp eq i32 %101, %103
  br i1 %cmp129, label %if.then.131, label %if.end.162

if.then.131:                                      ; preds = %lor.lhs.false.127, %sw.epilog
  store i32 0, i32* %i, align 4
  store i32 -1, i32* %setup_addr, align 4
  %104 = load i32, i32* %blockstack_top, align 4
  %sub134 = sub i32 %104, 1
  store i32 %sub134, i32* %i, align 4
  br label %for.cond.135

for.cond.135:                                     ; preds = %for.inc.146, %if.then.131
  %105 = load i32, i32* %i, align 4
  %cmp136 = icmp sge i32 %105, 0
  br i1 %cmp136, label %for.body.138, label %for.end.148

for.body.138:                                     ; preds = %for.cond.135
  %106 = load i32, i32* %i, align 4
  %idxprom139 = sext i32 %106 to i64
  %arrayidx140 = getelementptr [20 x i32], [20 x i32]* %in_finally, i32 0, i64 %idxprom139
  %107 = load i32, i32* %arrayidx140, align 4
  %tobool141 = icmp ne i32 %107, 0
  br i1 %tobool141, label %if.then.142, label %if.end.145

if.then.142:                                      ; preds = %for.body.138
  %108 = load i32, i32* %i, align 4
  %idxprom143 = sext i32 %108 to i64
  %arrayidx144 = getelementptr [20 x i32], [20 x i32]* %blockstack, i32 0, i64 %idxprom143
  %109 = load i32, i32* %arrayidx144, align 4
  store i32 %109, i32* %setup_addr, align 4
  br label %for.end.148

if.end.145:                                       ; preds = %for.body.138
  br label %for.inc.146

for.inc.146:                                      ; preds = %if.end.145
  %110 = load i32, i32* %i, align 4
  %dec147 = add i32 %110, -1
  store i32 %dec147, i32* %i, align 4
  br label %for.cond.135

for.end.148:                                      ; preds = %if.then.142, %for.cond.135
  %111 = load i32, i32* %setup_addr, align 4
  %cmp149 = icmp ne i32 %111, -1
  br i1 %cmp149, label %if.then.151, label %if.end.161

if.then.151:                                      ; preds = %for.end.148
  %112 = load i32, i32* %addr, align 4
  %113 = load i32, i32* %new_lasti, align 4
  %cmp152 = icmp eq i32 %112, %113
  br i1 %cmp152, label %if.then.154, label %if.end.155

if.then.154:                                      ; preds = %if.then.151
  %114 = load i32, i32* %setup_addr, align 4
  store i32 %114, i32* %new_lasti_setup_addr, align 4
  br label %if.end.155

if.end.155:                                       ; preds = %if.then.154, %if.then.151
  %115 = load i32, i32* %addr, align 4
  %116 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti156 = getelementptr inbounds %struct._frame, %struct._frame* %116, i32 0, i32 13
  %117 = load i32, i32* %f_lasti156, align 4
  %cmp157 = icmp eq i32 %115, %117
  br i1 %cmp157, label %if.then.159, label %if.end.160

if.then.159:                                      ; preds = %if.end.155
  %118 = load i32, i32* %setup_addr, align 4
  store i32 %118, i32* %f_lasti_setup_addr, align 4
  br label %if.end.160

if.end.160:                                       ; preds = %if.then.159, %if.end.155
  br label %if.end.161

if.end.161:                                       ; preds = %if.end.160, %for.end.148
  br label %if.end.162

if.end.162:                                       ; preds = %if.end.161, %lor.lhs.false.127
  %119 = load i8, i8* %op, align 1
  %conv163 = zext i8 %119 to i32
  %cmp164 = icmp sge i32 %conv163, 90
  br i1 %cmp164, label %if.then.166, label %if.end.168

if.then.166:                                      ; preds = %if.end.162
  %120 = load i32, i32* %addr, align 4
  %add167 = add i32 %120, 2
  store i32 %add167, i32* %addr, align 4
  br label %if.end.168

if.end.168:                                       ; preds = %if.then.166, %if.end.162
  br label %for.inc.169

for.inc.169:                                      ; preds = %if.end.168
  %121 = load i32, i32* %addr, align 4
  %inc170 = add i32 %121, 1
  store i32 %inc170, i32* %addr, align 4
  br label %for.cond.73

for.end.171:                                      ; preds = %for.cond.73
  %122 = load i32, i32* %new_lasti_setup_addr, align 4
  %123 = load i32, i32* %f_lasti_setup_addr, align 4
  %cmp172 = icmp ne i32 %122, %123
  br i1 %cmp172, label %if.then.174, label %if.end.175

if.then.174:                                      ; preds = %for.end.171
  %124 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %124, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.25, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.175:                                       ; preds = %for.end.171
  store i32 0, i32* %delta_iblock, align 4
  %125 = load i32, i32* %min_addr, align 4
  store i32 %125, i32* %addr, align 4
  br label %for.cond.176

for.cond.176:                                     ; preds = %for.inc.202, %if.end.175
  %126 = load i32, i32* %addr, align 4
  %127 = load i32, i32* %max_addr, align 4
  %cmp177 = icmp slt i32 %126, %127
  br i1 %cmp177, label %for.body.179, label %for.end.204

for.body.179:                                     ; preds = %for.cond.176
  %128 = load i32, i32* %addr, align 4
  %idxprom182 = sext i32 %128 to i64
  %129 = load i8*, i8** %code, align 8
  %arrayidx183 = getelementptr i8, i8* %129, i64 %idxprom182
  %130 = load i8, i8* %arrayidx183, align 1
  store i8 %130, i8* %op181, align 1
  %131 = load i8, i8* %op181, align 1
  %conv184 = zext i8 %131 to i32
  switch i32 %conv184, label %sw.epilog.189 [
    i32 120, label %sw.bb.185
    i32 121, label %sw.bb.185
    i32 122, label %sw.bb.185
    i32 143, label %sw.bb.185
    i32 87, label %sw.bb.187
  ]

sw.bb.185:                                        ; preds = %for.body.179, %for.body.179, %for.body.179, %for.body.179
  %132 = load i32, i32* %delta_iblock, align 4
  %inc186 = add i32 %132, 1
  store i32 %inc186, i32* %delta_iblock, align 4
  br label %sw.epilog.189

sw.bb.187:                                        ; preds = %for.body.179
  %133 = load i32, i32* %delta_iblock, align 4
  %dec188 = add i32 %133, -1
  store i32 %dec188, i32* %delta_iblock, align 4
  br label %sw.epilog.189

sw.epilog.189:                                    ; preds = %for.body.179, %sw.bb.187, %sw.bb.185
  %134 = load i32, i32* %min_delta_iblock, align 4
  %135 = load i32, i32* %delta_iblock, align 4
  %cmp190 = icmp sgt i32 %134, %135
  br i1 %cmp190, label %cond.true.192, label %cond.false.193

cond.true.192:                                    ; preds = %sw.epilog.189
  %136 = load i32, i32* %delta_iblock, align 4
  br label %cond.end.194

cond.false.193:                                   ; preds = %sw.epilog.189
  %137 = load i32, i32* %min_delta_iblock, align 4
  br label %cond.end.194

cond.end.194:                                     ; preds = %cond.false.193, %cond.true.192
  %cond195 = phi i32 [ %136, %cond.true.192 ], [ %137, %cond.false.193 ]
  store i32 %cond195, i32* %min_delta_iblock, align 4
  %138 = load i8, i8* %op181, align 1
  %conv196 = zext i8 %138 to i32
  %cmp197 = icmp sge i32 %conv196, 90
  br i1 %cmp197, label %if.then.199, label %if.end.201

if.then.199:                                      ; preds = %cond.end.194
  %139 = load i32, i32* %addr, align 4
  %add200 = add i32 %139, 2
  store i32 %add200, i32* %addr, align 4
  br label %if.end.201

if.end.201:                                       ; preds = %if.then.199, %cond.end.194
  br label %for.inc.202

for.inc.202:                                      ; preds = %if.end.201
  %140 = load i32, i32* %addr, align 4
  %inc203 = add i32 %140, 1
  store i32 %inc203, i32* %addr, align 4
  br label %for.cond.176

for.end.204:                                      ; preds = %for.cond.176
  %141 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock = getelementptr inbounds %struct._frame, %struct._frame* %141, i32 0, i32 15
  %142 = load i32, i32* %f_iblock, align 4
  %143 = load i32, i32* %min_delta_iblock, align 4
  %add205 = add i32 %142, %143
  store i32 %add205, i32* %min_iblock, align 4
  %144 = load i32, i32* %new_lasti, align 4
  %145 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti206 = getelementptr inbounds %struct._frame, %struct._frame* %145, i32 0, i32 13
  %146 = load i32, i32* %f_lasti206, align 4
  %cmp207 = icmp sgt i32 %144, %146
  br i1 %cmp207, label %if.then.209, label %if.else.212

if.then.209:                                      ; preds = %for.end.204
  %147 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock210 = getelementptr inbounds %struct._frame, %struct._frame* %147, i32 0, i32 15
  %148 = load i32, i32* %f_iblock210, align 4
  %149 = load i32, i32* %delta_iblock, align 4
  %add211 = add i32 %148, %149
  store i32 %add211, i32* %new_iblock, align 4
  br label %if.end.215

if.else.212:                                      ; preds = %for.end.204
  %150 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock213 = getelementptr inbounds %struct._frame, %struct._frame* %150, i32 0, i32 15
  %151 = load i32, i32* %f_iblock213, align 4
  %152 = load i32, i32* %delta_iblock, align 4
  %sub214 = sub i32 %151, %152
  store i32 %sub214, i32* %new_iblock, align 4
  br label %if.end.215

if.end.215:                                       ; preds = %if.else.212, %if.then.209
  %153 = load i32, i32* %new_iblock, align 4
  %154 = load i32, i32* %min_iblock, align 4
  %cmp216 = icmp sgt i32 %153, %154
  br i1 %cmp216, label %if.then.218, label %if.end.219

if.then.218:                                      ; preds = %if.end.215
  %155 = load %struct._object*, %struct._object** @PyExc_ValueError, align 8
  call void @PyErr_SetString(%struct._object* %155, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.26, i32 0, i32 0))
  store i32 -1, i32* %retval
  br label %return

if.end.219:                                       ; preds = %if.end.215
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.end.219
  %156 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock220 = getelementptr inbounds %struct._frame, %struct._frame* %156, i32 0, i32 15
  %157 = load i32, i32* %f_iblock220, align 4
  %158 = load i32, i32* %new_iblock, align 4
  %cmp221 = icmp sgt i32 %157, %158
  br i1 %cmp221, label %while.body, label %while.end.243

while.body:                                       ; preds = %while.cond
  %159 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_iblock224 = getelementptr inbounds %struct._frame, %struct._frame* %159, i32 0, i32 15
  %160 = load i32, i32* %f_iblock224, align 4
  %dec225 = add i32 %160, -1
  store i32 %dec225, i32* %f_iblock224, align 4
  %idxprom226 = sext i32 %dec225 to i64
  %161 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_blockstack = getelementptr inbounds %struct._frame, %struct._frame* %161, i32 0, i32 17
  %arrayidx227 = getelementptr [20 x %struct.PyTryBlock], [20 x %struct.PyTryBlock]* %f_blockstack, i32 0, i64 %idxprom226
  store %struct.PyTryBlock* %arrayidx227, %struct.PyTryBlock** %b, align 8
  br label %while.cond.228

while.cond.228:                                   ; preds = %do.end, %while.body
  %162 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop = getelementptr inbounds %struct._frame, %struct._frame* %162, i32 0, i32 7
  %163 = load %struct._object**, %struct._object*** %f_stacktop, align 8
  %164 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_valuestack = getelementptr inbounds %struct._frame, %struct._frame* %164, i32 0, i32 6
  %165 = load %struct._object**, %struct._object*** %f_valuestack, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct._object** %163 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct._object** %165 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 8
  %166 = load %struct.PyTryBlock*, %struct.PyTryBlock** %b, align 8
  %b_level = getelementptr inbounds %struct.PyTryBlock, %struct.PyTryBlock* %166, i32 0, i32 2
  %167 = load i32, i32* %b_level, align 4
  %conv229 = sext i32 %167 to i64
  %cmp230 = icmp sgt i64 %sub.ptr.div, %conv229
  br i1 %cmp230, label %while.body.232, label %while.end

while.body.232:                                   ; preds = %while.cond.228
  %168 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_stacktop234 = getelementptr inbounds %struct._frame, %struct._frame* %168, i32 0, i32 7
  %169 = load %struct._object**, %struct._object*** %f_stacktop234, align 8
  %incdec.ptr = getelementptr %struct._object*, %struct._object** %169, i32 -1
  store %struct._object** %incdec.ptr, %struct._object*** %f_stacktop234, align 8
  %170 = load %struct._object*, %struct._object** %incdec.ptr, align 8
  store %struct._object* %170, %struct._object** %v, align 8
  br label %do.body

do.body:                                          ; preds = %while.body.232
  %171 = load %struct._object*, %struct._object** %v, align 8
  store %struct._object* %171, %struct._object** %_py_decref_tmp, align 8
  %172 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %172, i32 0, i32 0
  %173 = load i64, i64* %ob_refcnt, align 8
  %dec236 = add i64 %173, -1
  store i64 %dec236, i64* %ob_refcnt, align 8
  %cmp237 = icmp ne i64 %dec236, 0
  br i1 %cmp237, label %if.then.239, label %if.else.240

if.then.239:                                      ; preds = %do.body
  br label %if.end.242

if.else.240:                                      ; preds = %do.body
  %174 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type241 = getelementptr inbounds %struct._object, %struct._object* %174, i32 0, i32 1
  %175 = load %struct._typeobject*, %struct._typeobject** %ob_type241, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %175, i32 0, i32 4
  %176 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %177 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %176(%struct._object* %177)
  br label %if.end.242

if.end.242:                                       ; preds = %if.else.240, %if.then.239
  br label %do.end

do.end:                                           ; preds = %if.end.242
  br label %while.cond.228

while.end:                                        ; preds = %while.cond.228
  br label %while.cond

while.end.243:                                    ; preds = %while.cond
  %178 = load i32, i32* %new_lineno, align 4
  %179 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lineno = getelementptr inbounds %struct._frame, %struct._frame* %179, i32 0, i32 14
  store i32 %178, i32* %f_lineno, align 4
  %180 = load i32, i32* %new_lasti, align 4
  %181 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lasti244 = getelementptr inbounds %struct._frame, %struct._frame* %181, i32 0, i32 13
  store i32 %180, i32* %f_lasti244, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %while.end.243, %if.then.218, %if.then.174, %if.then.71, %if.then.44, %if.then.12, %if.then.8, %if.then.1, %if.then
  %182 = load i32, i32* %retval
  ret i32 %182
}

; Function Attrs: nounwind uwtable
define internal %struct._object* @frame_gettrace(%struct._frame* %f, i8* %closure) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %closure.addr = alloca i8*, align 8
  %trace = alloca %struct._object*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %0, i32 0, i32 8
  %1 = load %struct._object*, %struct._object** %f_trace, align 8
  store %struct._object* %1, %struct._object** %trace, align 8
  %2 = load %struct._object*, %struct._object** %trace, align 8
  %cmp = icmp eq %struct._object* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* @_Py_NoneStruct, %struct._object** %trace, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct._object*, %struct._object** %trace, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %trace, align 8
  ret %struct._object* %5
}

; Function Attrs: nounwind uwtable
define internal i32 @frame_settrace(%struct._frame* %f, %struct._object* %v, i8* %closure) #0 {
entry:
  %f.addr = alloca %struct._frame*, align 8
  %v.addr = alloca %struct._object*, align 8
  %closure.addr = alloca i8*, align 8
  %old_value = alloca %struct._object*, align 8
  %_py_xincref_tmp = alloca %struct._object*, align 8
  %_py_xdecref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._frame* %f, %struct._frame** %f.addr, align 8
  store %struct._object* %v, %struct._object** %v.addr, align 8
  store i8* %closure, i8** %closure.addr, align 8
  %0 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %call = call i32 @PyFrame_GetLineNumber(%struct._frame* %0)
  %1 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_lineno = getelementptr inbounds %struct._frame, %struct._frame* %1, i32 0, i32 14
  store i32 %call, i32* %f_lineno, align 4
  %2 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace = getelementptr inbounds %struct._frame, %struct._frame* %2, i32 0, i32 8
  %3 = load %struct._object*, %struct._object** %f_trace, align 8
  store %struct._object* %3, %struct._object** %old_value, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %4 = load %struct._object*, %struct._object** %v.addr, align 8
  store %struct._object* %4, %struct._object** %_py_xincref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %cmp = icmp ne %struct._object* %5, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_xincref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 0
  %7 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %7, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  br label %do.end

do.end:                                           ; preds = %if.end
  %8 = load %struct._object*, %struct._object** %v.addr, align 8
  %9 = load %struct._frame*, %struct._frame** %f.addr, align 8
  %f_trace1 = getelementptr inbounds %struct._frame, %struct._frame* %9, i32 0, i32 8
  store %struct._object* %8, %struct._object** %f_trace1, align 8
  br label %do.body.2

do.body.2:                                        ; preds = %do.end
  %10 = load %struct._object*, %struct._object** %old_value, align 8
  store %struct._object* %10, %struct._object** %_py_xdecref_tmp, align 8
  %11 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  %cmp3 = icmp ne %struct._object* %11, null
  br i1 %cmp3, label %if.then.4, label %if.end.11

if.then.4:                                        ; preds = %do.body.2
  br label %do.body.5

do.body.5:                                        ; preds = %if.then.4
  %12 = load %struct._object*, %struct._object** %_py_xdecref_tmp, align 8
  store %struct._object* %12, %struct._object** %_py_decref_tmp, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt6 = getelementptr inbounds %struct._object, %struct._object* %13, i32 0, i32 0
  %14 = load i64, i64* %ob_refcnt6, align 8
  %dec = add i64 %14, -1
  store i64 %dec, i64* %ob_refcnt6, align 8
  %cmp7 = icmp ne i64 %dec, 0
  br i1 %cmp7, label %if.then.8, label %if.else

if.then.8:                                        ; preds = %do.body.5
  br label %if.end.9

if.else:                                          ; preds = %do.body.5
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %15, i32 0, i32 1
  %16 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %16, i32 0, i32 4
  %17 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %18 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %17(%struct._object* %18)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.8
  br label %do.end.10

do.end.10:                                        ; preds = %if.end.9
  br label %if.end.11

if.end.11:                                        ; preds = %do.end.10, %do.body.2
  br label %do.end.12

do.end.12:                                        ; preds = %if.end.11
  ret i32 0
}

declare %struct._object* @PyLong_FromLong(i64) #1

declare i64 @PyLong_AsLongAndOverflow(%struct._object*, i32*) #1

declare i32 @PyBytes_AsStringAndSize(%struct._object*, i8**, i64*) #1

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i32 @PyObject_DelItem(%struct._object*, %struct._object*) #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare i32 @PyObject_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_GetItem(%struct._object*, %struct._object*) #1

declare i32 @PyCell_Set(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
!1 = !{i32 139702}
!2 = !{i32 139542}
