; ModuleID = './microprotocols.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._object = type { i64, %struct._typeobject* }
%struct._typeobject = type { %struct.PyVarObject, i8*, i64, i64, void (%struct._object*)*, i32 (%struct._object*, %struct._IO_FILE*, i32)*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, i8*, %struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct.PyNumberMethods*, %struct.PySequenceMethods*, %struct.PyMappingMethods*, i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct.PyBufferProcs*, i64, i8*, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)*, {}*, %struct._object* (%struct._object*, %struct._object*, i32)*, i64, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct.PyMethodDef*, %struct.PyMemberDef*, %struct.PyGetSetDef*, %struct._typeobject*, %struct._object*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)*, i64, i32 (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)*, void (i8*)*, {}*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, void (%struct._object*)*, i32, void (%struct._object*)* }
%struct.PyVarObject = type { %struct._object, i64 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.PyNumberMethods = type { %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*)*, {}*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)*, i8*, %struct._object* (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*)* }
%struct.PySequenceMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)*, %struct._object* (%struct._object*, i64)*, i8*, i32 (%struct._object*, i64, %struct._object*)*, i8*, i32 (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, %struct._object* (%struct._object*, i64)* }
%struct.PyMappingMethods = type { i64 (%struct._object*)*, %struct._object* (%struct._object*, %struct._object*)*, i32 (%struct._object*, %struct._object*, %struct._object*)* }
%struct.PyBufferProcs = type { i32 (%struct._object*, %struct.bufferinfo*, i32)*, void (%struct._object*, %struct.bufferinfo*)* }
%struct.bufferinfo = type { i8*, %struct._object*, i64, i64, i32, i32, i8*, i64*, i64*, i64*, i8* }
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type { i8*, i32, i64, i32, i8* }
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._Py_Identifier = type { %struct._Py_Identifier*, i8*, %struct._object* }
%struct.pysqlite_Cursor = type { %struct._object, %struct.pysqlite_Connection*, %struct._object*, %struct._object*, i32, %struct._object*, i64, %struct._object*, %struct.pysqlite_Statement*, i32, i32, i32, i32, %struct._object*, %struct._object* }
%struct.pysqlite_Connection = type { %struct._object, %struct.sqlite3*, i8, i32, double, double, %struct._object*, i8*, i32, i32, i64, %struct.pysqlite_Cache*, %struct._object*, %struct._object*, i32, i32, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object*, %struct._object* }
%struct.sqlite3 = type opaque
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Statement = type { %struct._object, %struct.sqlite3*, %struct.sqlite3_stmt*, %struct._object*, i32, %struct._object* }
%struct.sqlite3_stmt = type opaque

@psyco_adapters = common global %struct._object* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"adapters\00", align 1
@pysqlite_PrepareProtocolType = external global %struct._typeobject, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"(OO)\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"__adapt__\00", align 1
@pysqlite_microprotocols_adapt.PyId___adapt__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), %struct._object* null }, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@PyExc_TypeError = external global %struct._object*, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"__conform__\00", align 1
@pysqlite_microprotocols_adapt.PyId___conform__ = internal global %struct._Py_Identifier { %struct._Py_Identifier* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct._object* null }, align 8
@pysqlite_ProgrammingError = external global %struct._object*, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"can't adapt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"O|OO\00", align 1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_microprotocols_init(%struct._object* %dict) #0 {
entry:
  %retval = alloca i32, align 4
  %dict.addr = alloca %struct._object*, align 8
  store %struct._object* %dict, %struct._object** %dict.addr, align 8
  %call = call %struct._object* @PyDict_New()
  store %struct._object* %call, %struct._object** @psyco_adapters, align 8
  %cmp = icmp eq %struct._object* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %0 = load %struct._object*, %struct._object** %dict.addr, align 8
  %1 = load %struct._object*, %struct._object** @psyco_adapters, align 8
  %call1 = call i32 @PyDict_SetItemString(%struct._object* %0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0), %struct._object* %1)
  store i32 %call1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %2 = load i32, i32* %retval
  ret i32 %2
}

declare %struct._object* @PyDict_New() #1

declare i32 @PyDict_SetItemString(%struct._object*, i8*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_microprotocols_add(%struct._typeobject* %type, %struct._object* %proto, %struct._object* %cast) #0 {
entry:
  %retval = alloca i32, align 4
  %type.addr = alloca %struct._typeobject*, align 8
  %proto.addr = alloca %struct._object*, align 8
  %cast.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %rc = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._typeobject* %type, %struct._typeobject** %type.addr, align 8
  store %struct._object* %proto, %struct._object** %proto.addr, align 8
  store %struct._object* %cast, %struct._object** %cast.addr, align 8
  %0 = load %struct._object*, %struct._object** %proto.addr, align 8
  %cmp = icmp eq %struct._object* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object** %proto.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load %struct._typeobject*, %struct._typeobject** %type.addr, align 8
  %2 = bitcast %struct._typeobject* %1 to %struct._object*
  %3 = load %struct._object*, %struct._object** %proto.addr, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._object* %2, %struct._object* %3)
  store %struct._object* %call, %struct._object** %key, align 8
  %4 = load %struct._object*, %struct._object** %key, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.end.2, label %if.then.1

if.then.1:                                        ; preds = %if.end
  store i32 -1, i32* %retval
  br label %return

if.end.2:                                         ; preds = %if.end
  %5 = load %struct._object*, %struct._object** @psyco_adapters, align 8
  %6 = load %struct._object*, %struct._object** %key, align 8
  %7 = load %struct._object*, %struct._object** %cast.addr, align 8
  %call3 = call i32 @PyDict_SetItem(%struct._object* %5, %struct._object* %6, %struct._object* %7)
  store i32 %call3, i32* %rc, align 4
  br label %do.body

do.body:                                          ; preds = %if.end.2
  %8 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %8, %struct._object** %_py_decref_tmp, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %9, i32 0, i32 0
  %10 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %10, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp4 = icmp ne i64 %dec, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %do.body
  br label %if.end.6

if.else:                                          ; preds = %do.body
  %11 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %11, i32 0, i32 1
  %12 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %12, i32 0, i32 4
  %13 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %14 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %13(%struct._object* %14)
  br label %if.end.6

if.end.6:                                         ; preds = %if.else, %if.then.5
  br label %do.end

do.end:                                           ; preds = %if.end.6
  %15 = load i32, i32* %rc, align 4
  store i32 %15, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then.1
  %16 = load i32, i32* %retval
  ret i32 %16
}

declare %struct._object* @Py_BuildValue(i8*, ...) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %obj, %struct._object* %proto, %struct._object* %alt) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %proto.addr = alloca %struct._object*, align 8
  %alt.addr = alloca %struct._object*, align 8
  %adapter = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %adapted = alloca %struct._object*, align 8
  %adapted12 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  %adapted42 = alloca %struct._object*, align 8
  %_py_decref_tmp50 = alloca %struct._object*, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  store %struct._object* %proto, %struct._object** %proto.addr, align 8
  store %struct._object* %alt, %struct._object** %alt.addr, align 8
  %0 = load %struct._object*, %struct._object** %obj.addr, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %0, i32 0, i32 1
  %1 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %2 = bitcast %struct._typeobject* %1 to %struct._object*
  %3 = load %struct._object*, %struct._object** %proto.addr, align 8
  %call = call %struct._object* (i8*, ...) @Py_BuildValue(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i32 0, i32 0), %struct._object* %2, %struct._object* %3)
  store %struct._object* %call, %struct._object** %key, align 8
  %4 = load %struct._object*, %struct._object** %key, align 8
  %tobool = icmp ne %struct._object* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._object*, %struct._object** @psyco_adapters, align 8
  %6 = load %struct._object*, %struct._object** %key, align 8
  %call1 = call %struct._object* @PyDict_GetItem(%struct._object* %5, %struct._object* %6)
  store %struct._object* %call1, %struct._object** %adapter, align 8
  br label %do.body

do.body:                                          ; preds = %if.end
  %7 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %7, %struct._object** %_py_decref_tmp, align 8
  %8 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %8, i32 0, i32 0
  %9 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.4

if.else:                                          ; preds = %do.body
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 1
  %11 = load %struct._typeobject*, %struct._typeobject** %ob_type3, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %11, i32 0, i32 4
  %12 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %13 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %12(%struct._object* %13)
  br label %if.end.4

if.end.4:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.4
  %14 = load %struct._object*, %struct._object** %adapter, align 8
  %tobool5 = icmp ne %struct._object* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %do.end
  %15 = load %struct._object*, %struct._object** %adapter, align 8
  %16 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call7 = call %struct._object* (%struct._object*, ...) @PyObject_CallFunctionObjArgs(%struct._object* %15, %struct._object* %16, i8* null)
  store %struct._object* %call7, %struct._object** %adapted, align 8
  %17 = load %struct._object*, %struct._object** %adapted, align 8
  store %struct._object* %17, %struct._object** %retval
  br label %return

if.end.8:                                         ; preds = %do.end
  %18 = load %struct._object*, %struct._object** %proto.addr, align 8
  %call9 = call i32 @PyObject_HasAttrString(%struct._object* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  %tobool10 = icmp ne i32 %call9, 0
  br i1 %tobool10, label %if.then.11, label %if.end.38

if.then.11:                                       ; preds = %if.end.8
  %19 = load %struct._object*, %struct._object** %proto.addr, align 8
  %20 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call13 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %19, %struct._Py_Identifier* @pysqlite_microprotocols_adapt.PyId___adapt__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct._object* %20)
  store %struct._object* %call13, %struct._object** %adapted12, align 8
  %21 = load %struct._object*, %struct._object** %adapted12, align 8
  %tobool14 = icmp ne %struct._object* %21, null
  br i1 %tobool14, label %if.then.15, label %if.end.31

if.then.15:                                       ; preds = %if.then.11
  %22 = load %struct._object*, %struct._object** %adapted12, align 8
  %cmp16 = icmp ne %struct._object* %22, @_Py_NoneStruct
  br i1 %cmp16, label %if.then.17, label %if.else.18

if.then.17:                                       ; preds = %if.then.15
  %23 = load %struct._object*, %struct._object** %adapted12, align 8
  store %struct._object* %23, %struct._object** %retval
  br label %return

if.else.18:                                       ; preds = %if.then.15
  br label %do.body.19

do.body.19:                                       ; preds = %if.else.18
  %24 = load %struct._object*, %struct._object** %adapted12, align 8
  store %struct._object* %24, %struct._object** %_py_decref_tmp20, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %25, i32 0, i32 0
  %26 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %26, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %27 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %27, i32 0, i32 1
  %28 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %28, i32 0, i32 4
  %29 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %29(%struct._object* %30)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  br label %if.end.30

if.end.30:                                        ; preds = %do.end.29
  br label %if.end.31

if.end.31:                                        ; preds = %if.end.30, %if.then.11
  %call32 = call %struct._object* @PyErr_Occurred()
  %tobool33 = icmp ne %struct._object* %call32, null
  br i1 %tobool33, label %land.lhs.true, label %if.end.37

land.lhs.true:                                    ; preds = %if.end.31
  %31 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call34 = call i32 @PyErr_ExceptionMatches(%struct._object* %31)
  %tobool35 = icmp ne i32 %call34, 0
  br i1 %tobool35, label %if.end.37, label %if.then.36

if.then.36:                                       ; preds = %land.lhs.true
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.37:                                        ; preds = %land.lhs.true, %if.end.31
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %if.end.8
  %32 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call39 = call i32 @PyObject_HasAttrString(%struct._object* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0))
  %tobool40 = icmp ne i32 %call39, 0
  br i1 %tobool40, label %if.then.41, label %if.end.69

if.then.41:                                       ; preds = %if.end.38
  %33 = load %struct._object*, %struct._object** %obj.addr, align 8
  %34 = load %struct._object*, %struct._object** %proto.addr, align 8
  %call43 = call %struct._object* (%struct._object*, %struct._Py_Identifier*, i8*, ...) @_PyObject_CallMethodId(%struct._object* %33, %struct._Py_Identifier* @pysqlite_microprotocols_adapt.PyId___conform__, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0), %struct._object* %34)
  store %struct._object* %call43, %struct._object** %adapted42, align 8
  %35 = load %struct._object*, %struct._object** %adapted42, align 8
  %tobool44 = icmp ne %struct._object* %35, null
  br i1 %tobool44, label %if.then.45, label %if.end.61

if.then.45:                                       ; preds = %if.then.41
  %36 = load %struct._object*, %struct._object** %adapted42, align 8
  %cmp46 = icmp ne %struct._object* %36, @_Py_NoneStruct
  br i1 %cmp46, label %if.then.47, label %if.else.48

if.then.47:                                       ; preds = %if.then.45
  %37 = load %struct._object*, %struct._object** %adapted42, align 8
  store %struct._object* %37, %struct._object** %retval
  br label %return

if.else.48:                                       ; preds = %if.then.45
  br label %do.body.49

do.body.49:                                       ; preds = %if.else.48
  %38 = load %struct._object*, %struct._object** %adapted42, align 8
  store %struct._object* %38, %struct._object** %_py_decref_tmp50, align 8
  %39 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_refcnt51 = getelementptr inbounds %struct._object, %struct._object* %39, i32 0, i32 0
  %40 = load i64, i64* %ob_refcnt51, align 8
  %dec52 = add i64 %40, -1
  store i64 %dec52, i64* %ob_refcnt51, align 8
  %cmp53 = icmp ne i64 %dec52, 0
  br i1 %cmp53, label %if.then.54, label %if.else.55

if.then.54:                                       ; preds = %do.body.49
  br label %if.end.58

if.else.55:                                       ; preds = %do.body.49
  %41 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  %ob_type56 = getelementptr inbounds %struct._object, %struct._object* %41, i32 0, i32 1
  %42 = load %struct._typeobject*, %struct._typeobject** %ob_type56, align 8
  %tp_dealloc57 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %42, i32 0, i32 4
  %43 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc57, align 8
  %44 = load %struct._object*, %struct._object** %_py_decref_tmp50, align 8
  call void %43(%struct._object* %44)
  br label %if.end.58

if.end.58:                                        ; preds = %if.else.55, %if.then.54
  br label %do.end.59

do.end.59:                                        ; preds = %if.end.58
  br label %if.end.60

if.end.60:                                        ; preds = %do.end.59
  br label %if.end.61

if.end.61:                                        ; preds = %if.end.60, %if.then.41
  %call62 = call %struct._object* @PyErr_Occurred()
  %tobool63 = icmp ne %struct._object* %call62, null
  br i1 %tobool63, label %land.lhs.true.64, label %if.end.68

land.lhs.true.64:                                 ; preds = %if.end.61
  %45 = load %struct._object*, %struct._object** @PyExc_TypeError, align 8
  %call65 = call i32 @PyErr_ExceptionMatches(%struct._object* %45)
  %tobool66 = icmp ne i32 %call65, 0
  br i1 %tobool66, label %if.end.68, label %if.then.67

if.then.67:                                       ; preds = %land.lhs.true.64
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.68:                                        ; preds = %land.lhs.true.64, %if.end.61
  br label %if.end.69

if.end.69:                                        ; preds = %if.end.68, %if.end.38
  %46 = load %struct._object*, %struct._object** @pysqlite_ProgrammingError, align 8
  call void @PyErr_SetString(%struct._object* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i32 0, i32 0))
  store %struct._object* null, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.69, %if.then.67, %if.then.47, %if.then.36, %if.then.17, %if.then.6, %if.then
  %47 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %47
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_CallFunctionObjArgs(%struct._object*, ...) #1

declare i32 @PyObject_HasAttrString(%struct._object*, i8*) #1

declare %struct._object* @_PyObject_CallMethodId(%struct._object*, %struct._Py_Identifier*, i8*, ...) #1

declare %struct._object* @PyErr_Occurred() #1

declare i32 @PyErr_ExceptionMatches(%struct._object*) #1

declare void @PyErr_SetString(%struct._object*, i8*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_adapt(%struct.pysqlite_Cursor* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cursor*, align 8
  %args.addr = alloca %struct._object*, align 8
  %obj = alloca %struct._object*, align 8
  %alt = alloca %struct._object*, align 8
  %proto = alloca %struct._object*, align 8
  store %struct.pysqlite_Cursor* %self, %struct.pysqlite_Cursor** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* null, %struct._object** %alt, align 8
  store %struct._object* getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_PrepareProtocolType, i32 0, i32 0, i32 0), %struct._object** %proto, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), %struct._object** %obj, %struct._object** %proto, %struct._object** %alt)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct._object*, %struct._object** %obj, align 8
  %2 = load %struct._object*, %struct._object** %proto, align 8
  %3 = load %struct._object*, %struct._object** %alt, align 8
  %call1 = call %struct._object* @pysqlite_microprotocols_adapt(%struct._object* %1, %struct._object* %2, %struct._object* %3)
  store %struct._object* %call1, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %4
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
