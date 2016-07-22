; ModuleID = './cache.bc'
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
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }
%struct._pysqlite_Node = type { %struct._object, %struct._object*, %struct._object*, i64, %struct._pysqlite_Node*, %struct._pysqlite_Node* }
%struct.pysqlite_Cache = type { %struct._object, i32, %struct._object*, %struct._object*, %struct._pysqlite_Node*, %struct._pysqlite_Node*, i32 }

@pysqlite_NodeType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0), i64 56, i64 0, void (%struct._object*)* bitcast (void (%struct._pysqlite_Node*)* @pysqlite_node_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* null, %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str = private unnamed_addr constant [4 x i8] c"O|i\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@_Py_NoneStruct = external global %struct._object, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%S <- %S -> %S\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"sqlite3Node\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"sqlite3.Cache\00", align 1
@cache_methods = internal global [3 x %struct.PyMethodDef] [%struct.PyMethodDef { i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cache*, %struct._object*)* @pysqlite_cache_get to %struct._object* (%struct._object*, %struct._object*)*), i32 8, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i32 0, i32 0) }, %struct.PyMethodDef { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0), %struct._object* (%struct._object*, %struct._object*)* bitcast (%struct._object* (%struct.pysqlite_Cache*, %struct._object*)* @pysqlite_cache_display to %struct._object* (%struct._object*, %struct._object*)*), i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0) }, %struct.PyMethodDef zeroinitializer], align 16
@pysqlite_CacheType = global %struct._typeobject { %struct.PyVarObject { %struct._object { i64 1, %struct._typeobject* null }, i64 0 }, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i32 0, i32 0), i64 64, i64 0, void (%struct._object*)* bitcast (void (%struct.pysqlite_Cache*)* @pysqlite_cache_dealloc to void (%struct._object*)*), i32 (%struct._object*, %struct._IO_FILE*, i32)* null, %struct._object* (%struct._object*, i8*)* null, i32 (%struct._object*, i8*, %struct._object*)* null, i8* null, %struct._object* (%struct._object*)* null, %struct.PyNumberMethods* null, %struct.PySequenceMethods* null, %struct.PyMappingMethods* null, i64 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, %struct.PyBufferProcs* null, i64 263168, i8* null, i32 (%struct._object*, i32 (%struct._object*, i8*)*, i8*)* null, i32 (%struct._object*)* null, %struct._object* (%struct._object*, %struct._object*, i32)* null, i64 0, %struct._object* (%struct._object*)* null, %struct._object* (%struct._object*)* null, %struct.PyMethodDef* getelementptr inbounds ([3 x %struct.PyMethodDef], [3 x %struct.PyMethodDef]* @cache_methods, i32 0, i32 0), %struct.PyMemberDef* null, %struct.PyGetSetDef* null, %struct._typeobject* null, %struct._object* null, %struct._object* (%struct._object*, %struct._object*, %struct._object*)* null, i32 (%struct._object*, %struct._object*, %struct._object*)* null, i64 0, i32 (%struct._object*, %struct._object*, %struct._object*)* bitcast (i32 (%struct.pysqlite_Cache*, %struct._object*, %struct._object*)* @pysqlite_cache_init to i32 (%struct._object*, %struct._object*, %struct._object*)*), %struct._object* (%struct._typeobject*, i64)* null, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* null, void (i8*)* null, i32 (%struct._object*)* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, %struct._object* null, void (%struct._object*)* null, i32 0, void (%struct._object*)* null }, align 8
@.str.5 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.6 = private unnamed_addr constant [75 x i8] c"Gets an entry from the cache or calls the factory function to produce one.\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"For debugging only.\00", align 1

; Function Attrs: nounwind uwtable
define %struct._pysqlite_Node* @pysqlite_new_node(%struct._object* %key, %struct._object* %data) #0 {
entry:
  %retval = alloca %struct._pysqlite_Node*, align 8
  %key.addr = alloca %struct._object*, align 8
  %data.addr = alloca %struct._object*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  store %struct._object* %key, %struct._object** %key.addr, align 8
  store %struct._object* %data, %struct._object** %data.addr, align 8
  %0 = load %struct._object* (%struct._typeobject*, i64)*, %struct._object* (%struct._typeobject*, i64)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_NodeType, i32 0, i32 36), align 8
  %call = call %struct._object* %0(%struct._typeobject* @pysqlite_NodeType, i64 0)
  %1 = bitcast %struct._object* %call to %struct._pysqlite_Node*
  store %struct._pysqlite_Node* %1, %struct._pysqlite_Node** %node, align 8
  %2 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %tobool = icmp ne %struct._pysqlite_Node* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load %struct._object*, %struct._object** %key.addr, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %3, i32 0, i32 0
  %4 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %4, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %5 = load %struct._object*, %struct._object** %key.addr, align 8
  %6 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %key1 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %6, i32 0, i32 1
  store %struct._object* %5, %struct._object** %key1, align 8
  %7 = load %struct._object*, %struct._object** %data.addr, align 8
  %ob_refcnt2 = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 0
  %8 = load i64, i64* %ob_refcnt2, align 8
  %inc3 = add i64 %8, 1
  store i64 %inc3, i64* %ob_refcnt2, align 8
  %9 = load %struct._object*, %struct._object** %data.addr, align 8
  %10 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %data4 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %10, i32 0, i32 2
  store %struct._object* %9, %struct._object** %data4, align 8
  %11 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %11, i32 0, i32 4
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %prev, align 8
  %12 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %12, i32 0, i32 5
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %next, align 8
  %13 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  store %struct._pysqlite_Node* %13, %struct._pysqlite_Node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %retval
  ret %struct._pysqlite_Node* %14
}

; Function Attrs: nounwind uwtable
define void @pysqlite_node_dealloc(%struct._pysqlite_Node* %self) #0 {
entry:
  %self.addr = alloca %struct._pysqlite_Node*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp2 = alloca %struct._object*, align 8
  store %struct._pysqlite_Node* %self, %struct._pysqlite_Node** %self.addr, align 8
  br label %do.body

do.body:                                          ; preds = %entry
  %0 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8
  %key = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %0, i32 0, i32 1
  %1 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %1, %struct._object** %_py_decref_tmp, align 8
  %2 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %2, i32 0, i32 0
  %3 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %3, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 1
  %5 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %5, i32 0, i32 4
  %6 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %6(%struct._object* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %do.body.1

do.body.1:                                        ; preds = %do.end
  %8 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8
  %data = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %9, %struct._object** %_py_decref_tmp2, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_refcnt3 = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt3, align 8
  %dec4 = add i64 %11, -1
  store i64 %dec4, i64* %ob_refcnt3, align 8
  %cmp5 = icmp ne i64 %dec4, 0
  br i1 %cmp5, label %if.then.6, label %if.else.7

if.then.6:                                        ; preds = %do.body.1
  br label %if.end.10

if.else.7:                                        ; preds = %do.body.1
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  %ob_type8 = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type8, align 8
  %tp_dealloc9 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc9, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp2, align 8
  call void %14(%struct._object* %15)
  br label %if.end.10

if.end.10:                                        ; preds = %if.else.7, %if.then.6
  br label %do.end.11

do.end.11:                                        ; preds = %if.end.10
  %16 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8
  %17 = bitcast %struct._pysqlite_Node* %16 to %struct._object*
  %ob_type12 = getelementptr inbounds %struct._object, %struct._object* %17, i32 0, i32 1
  %18 = load %struct._typeobject*, %struct._typeobject** %ob_type12, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %18, i32 0, i32 38
  %19 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %20 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %self.addr, align 8
  %21 = bitcast %struct._pysqlite_Node* %20 to %struct._object*
  %22 = bitcast %struct._object* %21 to i8*
  call void %19(i8* %22)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @pysqlite_cache_init(%struct.pysqlite_Cache* %self, %struct._object* %args, %struct._object* %kwargs) #0 {
entry:
  %retval = alloca i32, align 4
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %args.addr = alloca %struct._object*, align 8
  %kwargs.addr = alloca %struct._object*, align 8
  %factory = alloca %struct._object*, align 8
  %size = alloca i32, align 4
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  store %struct._object* %kwargs, %struct._object** %kwargs.addr, align 8
  store i32 10, i32* %size, align 4
  %0 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %factory1 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %0, i32 0, i32 3
  store %struct._object* null, %struct._object** %factory1, align 8
  %1 = load %struct._object*, %struct._object** %args.addr, align 8
  %call = call i32 (%struct._object*, i8*, ...) @PyArg_ParseTuple(%struct._object* %1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), %struct._object** %factory, i32* %size)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %size, align 4
  %cmp = icmp slt i32 %2, 5
  br i1 %cmp, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  store i32 5, i32* %size, align 4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.2, %if.end
  %3 = load i32, i32* %size, align 4
  %4 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %size4 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %4, i32 0, i32 1
  store i32 %3, i32* %size4, align 4
  %5 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %5, i32 0, i32 4
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %first, align 8
  %6 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %6, i32 0, i32 5
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %last, align 8
  %call5 = call %struct._object* @PyDict_New()
  %7 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %mapping = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %7, i32 0, i32 2
  store %struct._object* %call5, %struct._object** %mapping, align 8
  %8 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %mapping6 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %8, i32 0, i32 2
  %9 = load %struct._object*, %struct._object** %mapping6, align 8
  %tobool7 = icmp ne %struct._object* %9, null
  br i1 %tobool7, label %if.end.9, label %if.then.8

if.then.8:                                        ; preds = %if.end.3
  store i32 -1, i32* %retval
  br label %return

if.end.9:                                         ; preds = %if.end.3
  %10 = load %struct._object*, %struct._object** %factory, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %inc = add i64 %11, 1
  store i64 %inc, i64* %ob_refcnt, align 8
  %12 = load %struct._object*, %struct._object** %factory, align 8
  %13 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %factory10 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %13, i32 0, i32 3
  store %struct._object* %12, %struct._object** %factory10, align 8
  %14 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %14, i32 0, i32 6
  store i32 1, i32* %decref_factory, align 4
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.9, %if.then.8, %if.then
  %15 = load i32, i32* %retval
  ret i32 %15
}

declare i32 @PyArg_ParseTuple(%struct._object*, i8*, ...) #1

declare %struct._object* @PyDict_New() #1

; Function Attrs: nounwind uwtable
define void @pysqlite_cache_dealloc(%struct.pysqlite_Cache* %self) #0 {
entry:
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  %delete_node = alloca %struct._pysqlite_Node*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp7 = alloca %struct._object*, align 8
  %_py_decref_tmp20 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8
  %0 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %0, i32 0, i32 3
  %1 = load %struct._object*, %struct._object** %factory, align 8
  %tobool = icmp ne %struct._object* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %2, i32 0, i32 4
  %3 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %first, align 8
  store %struct._pysqlite_Node* %3, %struct._pysqlite_Node** %node, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %if.end
  %4 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %tobool1 = icmp ne %struct._pysqlite_Node* %4, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  store %struct._pysqlite_Node* %5, %struct._pysqlite_Node** %delete_node, align 8
  %6 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %6, i32 0, i32 5
  %7 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8
  store %struct._pysqlite_Node* %7, %struct._pysqlite_Node** %node, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %8 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %delete_node, align 8
  %9 = bitcast %struct._pysqlite_Node* %8 to %struct._object*
  store %struct._object* %9, %struct._object** %_py_decref_tmp, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %10, i32 0, i32 0
  %11 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %11, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end.3

if.else:                                          ; preds = %do.body
  %12 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %12, i32 0, i32 1
  %13 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %13, i32 0, i32 4
  %14 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %15 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %14(%struct._object* %15)
  br label %if.end.3

if.end.3:                                         ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end.3
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %decref_factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %16, i32 0, i32 6
  %17 = load i32, i32* %decref_factory, align 4
  %tobool4 = icmp ne i32 %17, 0
  br i1 %tobool4, label %if.then.5, label %if.end.18

if.then.5:                                        ; preds = %while.end
  br label %do.body.6

do.body.6:                                        ; preds = %if.then.5
  %18 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %factory8 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %18, i32 0, i32 3
  %19 = load %struct._object*, %struct._object** %factory8, align 8
  store %struct._object* %19, %struct._object** %_py_decref_tmp7, align 8
  %20 = load %struct._object*, %struct._object** %_py_decref_tmp7, align 8
  %ob_refcnt9 = getelementptr inbounds %struct._object, %struct._object* %20, i32 0, i32 0
  %21 = load i64, i64* %ob_refcnt9, align 8
  %dec10 = add i64 %21, -1
  store i64 %dec10, i64* %ob_refcnt9, align 8
  %cmp11 = icmp ne i64 %dec10, 0
  br i1 %cmp11, label %if.then.12, label %if.else.13

if.then.12:                                       ; preds = %do.body.6
  br label %if.end.16

if.else.13:                                       ; preds = %do.body.6
  %22 = load %struct._object*, %struct._object** %_py_decref_tmp7, align 8
  %ob_type14 = getelementptr inbounds %struct._object, %struct._object* %22, i32 0, i32 1
  %23 = load %struct._typeobject*, %struct._typeobject** %ob_type14, align 8
  %tp_dealloc15 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %23, i32 0, i32 4
  %24 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc15, align 8
  %25 = load %struct._object*, %struct._object** %_py_decref_tmp7, align 8
  call void %24(%struct._object* %25)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.13, %if.then.12
  br label %do.end.17

do.end.17:                                        ; preds = %if.end.16
  br label %if.end.18

if.end.18:                                        ; preds = %do.end.17, %while.end
  br label %do.body.19

do.body.19:                                       ; preds = %if.end.18
  %26 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %mapping = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %26, i32 0, i32 2
  %27 = load %struct._object*, %struct._object** %mapping, align 8
  store %struct._object* %27, %struct._object** %_py_decref_tmp20, align 8
  %28 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_refcnt21 = getelementptr inbounds %struct._object, %struct._object* %28, i32 0, i32 0
  %29 = load i64, i64* %ob_refcnt21, align 8
  %dec22 = add i64 %29, -1
  store i64 %dec22, i64* %ob_refcnt21, align 8
  %cmp23 = icmp ne i64 %dec22, 0
  br i1 %cmp23, label %if.then.24, label %if.else.25

if.then.24:                                       ; preds = %do.body.19
  br label %if.end.28

if.else.25:                                       ; preds = %do.body.19
  %30 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  %ob_type26 = getelementptr inbounds %struct._object, %struct._object* %30, i32 0, i32 1
  %31 = load %struct._typeobject*, %struct._typeobject** %ob_type26, align 8
  %tp_dealloc27 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %31, i32 0, i32 4
  %32 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc27, align 8
  %33 = load %struct._object*, %struct._object** %_py_decref_tmp20, align 8
  call void %32(%struct._object* %33)
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.24
  br label %do.end.29

do.end.29:                                        ; preds = %if.end.28
  %34 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %35 = bitcast %struct.pysqlite_Cache* %34 to %struct._object*
  %ob_type30 = getelementptr inbounds %struct._object, %struct._object* %35, i32 0, i32 1
  %36 = load %struct._typeobject*, %struct._typeobject** %ob_type30, align 8
  %tp_free = getelementptr inbounds %struct._typeobject, %struct._typeobject* %36, i32 0, i32 38
  %37 = load void (i8*)*, void (i8*)** %tp_free, align 8
  %38 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %39 = bitcast %struct.pysqlite_Cache* %38 to %struct._object*
  %40 = bitcast %struct._object* %39 to i8*
  call void %37(i8* %40)
  br label %return

return:                                           ; preds = %do.end.29, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cache_get(%struct.pysqlite_Cache* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %args.addr = alloca %struct._object*, align 8
  %key = alloca %struct._object*, align 8
  %node = alloca %struct._pysqlite_Node*, align 8
  %ptr = alloca %struct._pysqlite_Node*, align 8
  %data = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  %_py_decref_tmp93 = alloca %struct._object*, align 8
  %_py_decref_tmp110 = alloca %struct._object*, align 8
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct._object*, %struct._object** %args.addr, align 8
  store %struct._object* %0, %struct._object** %key, align 8
  %1 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %mapping = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %1, i32 0, i32 2
  %2 = load %struct._object*, %struct._object** %mapping, align 8
  %3 = load %struct._object*, %struct._object** %key, align 8
  %call = call %struct._object* @PyDict_GetItem(%struct._object* %2, %struct._object* %3)
  %4 = bitcast %struct._object* %call to %struct._pysqlite_Node*
  store %struct._pysqlite_Node* %4, %struct._pysqlite_Node** %node, align 8
  %5 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %tobool = icmp ne %struct._pysqlite_Node* %5, null
  br i1 %tobool, label %if.then, label %if.else.48

if.then:                                          ; preds = %entry
  %6 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %count = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %6, i32 0, i32 3
  %7 = load i64, i64* %count, align 8
  %cmp = icmp slt i64 %7, 9223372036854775807
  br i1 %cmp, label %if.then.1, label %if.end

if.then.1:                                        ; preds = %if.then
  %8 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %count2 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %8, i32 0, i32 3
  %9 = load i64, i64* %count2, align 8
  %inc = add i64 %9, 1
  store i64 %inc, i64* %count2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.1, %if.then
  %10 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %10, i32 0, i32 4
  %11 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev, align 8
  %tobool3 = icmp ne %struct._pysqlite_Node* %11, null
  br i1 %tobool3, label %land.lhs.true, label %if.end.47

land.lhs.true:                                    ; preds = %if.end
  %12 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %count4 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %12, i32 0, i32 3
  %13 = load i64, i64* %count4, align 8
  %14 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev5 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %14, i32 0, i32 4
  %15 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev5, align 8
  %count6 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %15, i32 0, i32 3
  %16 = load i64, i64* %count6, align 8
  %cmp7 = icmp sgt i64 %13, %16
  br i1 %cmp7, label %if.then.8, label %if.end.47

if.then.8:                                        ; preds = %land.lhs.true
  %17 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev9 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %17, i32 0, i32 4
  %18 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev9, align 8
  store %struct._pysqlite_Node* %18, %struct._pysqlite_Node** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %19 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev10 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %19, i32 0, i32 4
  %20 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev10, align 8
  %tobool11 = icmp ne %struct._pysqlite_Node* %20, null
  br i1 %tobool11, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %21 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %count12 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %21, i32 0, i32 3
  %22 = load i64, i64* %count12, align 8
  %23 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev13 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %23, i32 0, i32 4
  %24 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev13, align 8
  %count14 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %24, i32 0, i32 3
  %25 = load i64, i64* %count14, align 8
  %cmp15 = icmp sgt i64 %22, %25
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %26 = phi i1 [ false, %while.cond ], [ %cmp15, %land.rhs ]
  br i1 %26, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %27 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev16 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %27, i32 0, i32 4
  %28 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev16, align 8
  store %struct._pysqlite_Node* %28, %struct._pysqlite_Node** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %land.end
  %29 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %29, i32 0, i32 5
  %30 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8
  %tobool17 = icmp ne %struct._pysqlite_Node* %30, null
  br i1 %tobool17, label %if.then.18, label %if.else

if.then.18:                                       ; preds = %while.end
  %31 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev19 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %31, i32 0, i32 4
  %32 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev19, align 8
  %33 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %next20 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %33, i32 0, i32 5
  %34 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next20, align 8
  %prev21 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %34, i32 0, i32 4
  store %struct._pysqlite_Node* %32, %struct._pysqlite_Node** %prev21, align 8
  br label %if.end.23

if.else:                                          ; preds = %while.end
  %35 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev22 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %35, i32 0, i32 4
  %36 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev22, align 8
  %37 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %37, i32 0, i32 5
  store %struct._pysqlite_Node* %36, %struct._pysqlite_Node** %last, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.18
  %38 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev24 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %38, i32 0, i32 4
  %39 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev24, align 8
  %tobool25 = icmp ne %struct._pysqlite_Node* %39, null
  br i1 %tobool25, label %if.then.26, label %if.end.30

if.then.26:                                       ; preds = %if.end.23
  %40 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %next27 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %40, i32 0, i32 5
  %41 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next27, align 8
  %42 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev28 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %42, i32 0, i32 4
  %43 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev28, align 8
  %next29 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %43, i32 0, i32 5
  store %struct._pysqlite_Node* %41, %struct._pysqlite_Node** %next29, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.then.26, %if.end.23
  %44 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev31 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %44, i32 0, i32 4
  %45 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev31, align 8
  %tobool32 = icmp ne %struct._pysqlite_Node* %45, null
  br i1 %tobool32, label %if.then.33, label %if.else.36

if.then.33:                                       ; preds = %if.end.30
  %46 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %47 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev34 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %47, i32 0, i32 4
  %48 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev34, align 8
  %next35 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %48, i32 0, i32 5
  store %struct._pysqlite_Node* %46, %struct._pysqlite_Node** %next35, align 8
  br label %if.end.37

if.else.36:                                       ; preds = %if.end.30
  %49 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %50 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %50, i32 0, i32 4
  store %struct._pysqlite_Node* %49, %struct._pysqlite_Node** %first, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.else.36, %if.then.33
  %51 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %52 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %next38 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %52, i32 0, i32 5
  store %struct._pysqlite_Node* %51, %struct._pysqlite_Node** %next38, align 8
  %53 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev39 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %53, i32 0, i32 4
  %54 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev39, align 8
  %55 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev40 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %55, i32 0, i32 4
  store %struct._pysqlite_Node* %54, %struct._pysqlite_Node** %prev40, align 8
  %56 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev41 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %56, i32 0, i32 4
  %57 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev41, align 8
  %tobool42 = icmp ne %struct._pysqlite_Node* %57, null
  br i1 %tobool42, label %if.end.45, label %if.then.43

if.then.43:                                       ; preds = %if.end.37
  %58 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %59 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %first44 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %59, i32 0, i32 4
  store %struct._pysqlite_Node* %58, %struct._pysqlite_Node** %first44, align 8
  br label %if.end.45

if.end.45:                                        ; preds = %if.then.43, %if.end.37
  %60 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %61 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev46 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %61, i32 0, i32 4
  store %struct._pysqlite_Node* %60, %struct._pysqlite_Node** %prev46, align 8
  br label %if.end.47

if.end.47:                                        ; preds = %if.end.45, %land.lhs.true, %if.end
  br label %if.end.131

if.else.48:                                       ; preds = %entry
  %62 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %mapping49 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %62, i32 0, i32 2
  %63 = load %struct._object*, %struct._object** %mapping49, align 8
  %call50 = call i64 @PyDict_Size(%struct._object* %63)
  %64 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %size = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %64, i32 0, i32 1
  %65 = load i32, i32* %size, align 4
  %conv = sext i32 %65 to i64
  %cmp51 = icmp eq i64 %call50, %conv
  br i1 %cmp51, label %if.then.53, label %if.end.81

if.then.53:                                       ; preds = %if.else.48
  %66 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last54 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %66, i32 0, i32 5
  %67 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last54, align 8
  %tobool55 = icmp ne %struct._pysqlite_Node* %67, null
  br i1 %tobool55, label %if.then.56, label %if.end.80

if.then.56:                                       ; preds = %if.then.53
  %68 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last57 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %68, i32 0, i32 5
  %69 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last57, align 8
  store %struct._pysqlite_Node* %69, %struct._pysqlite_Node** %node, align 8
  %70 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %mapping58 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %70, i32 0, i32 2
  %71 = load %struct._object*, %struct._object** %mapping58, align 8
  %72 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last59 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %72, i32 0, i32 5
  %73 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last59, align 8
  %key60 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %73, i32 0, i32 1
  %74 = load %struct._object*, %struct._object** %key60, align 8
  %call61 = call i32 @PyDict_DelItem(%struct._object* %71, %struct._object* %74)
  %cmp62 = icmp ne i32 %call61, 0
  br i1 %cmp62, label %if.then.64, label %if.end.65

if.then.64:                                       ; preds = %if.then.56
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.65:                                        ; preds = %if.then.56
  %75 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev66 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %75, i32 0, i32 4
  %76 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev66, align 8
  %tobool67 = icmp ne %struct._pysqlite_Node* %76, null
  br i1 %tobool67, label %if.then.68, label %if.end.71

if.then.68:                                       ; preds = %if.end.65
  %77 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev69 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %77, i32 0, i32 4
  %78 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev69, align 8
  %next70 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %78, i32 0, i32 5
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %next70, align 8
  br label %if.end.71

if.end.71:                                        ; preds = %if.then.68, %if.end.65
  %79 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev72 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %79, i32 0, i32 4
  %80 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev72, align 8
  %81 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last73 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %81, i32 0, i32 5
  store %struct._pysqlite_Node* %80, %struct._pysqlite_Node** %last73, align 8
  %82 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev74 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %82, i32 0, i32 4
  store %struct._pysqlite_Node* null, %struct._pysqlite_Node** %prev74, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.71
  %83 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %84 = bitcast %struct._pysqlite_Node* %83 to %struct._object*
  store %struct._object* %84, %struct._object** %_py_decref_tmp, align 8
  %85 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %85, i32 0, i32 0
  %86 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %86, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp75 = icmp ne i64 %dec, 0
  br i1 %cmp75, label %if.then.77, label %if.else.78

if.then.77:                                       ; preds = %do.body
  br label %if.end.79

if.else.78:                                       ; preds = %do.body
  %87 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %87, i32 0, i32 1
  %88 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %88, i32 0, i32 4
  %89 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %90 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %89(%struct._object* %90)
  br label %if.end.79

if.end.79:                                        ; preds = %if.else.78, %if.then.77
  br label %do.end

do.end:                                           ; preds = %if.end.79
  br label %if.end.80

if.end.80:                                        ; preds = %do.end, %if.then.53
  br label %if.end.81

if.end.81:                                        ; preds = %if.end.80, %if.else.48
  %91 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %factory = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %91, i32 0, i32 3
  %92 = load %struct._object*, %struct._object** %factory, align 8
  %93 = load %struct._object*, %struct._object** %key, align 8
  %call82 = call %struct._object* (%struct._object*, i8*, ...) @PyObject_CallFunction(%struct._object* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0), %struct._object* %93)
  store %struct._object* %call82, %struct._object** %data, align 8
  %94 = load %struct._object*, %struct._object** %data, align 8
  %tobool83 = icmp ne %struct._object* %94, null
  br i1 %tobool83, label %if.end.85, label %if.then.84

if.then.84:                                       ; preds = %if.end.81
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.85:                                        ; preds = %if.end.81
  %95 = load %struct._object*, %struct._object** %key, align 8
  %96 = load %struct._object*, %struct._object** %data, align 8
  %call86 = call %struct._pysqlite_Node* @pysqlite_new_node(%struct._object* %95, %struct._object* %96)
  store %struct._pysqlite_Node* %call86, %struct._pysqlite_Node** %node, align 8
  %97 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %tobool87 = icmp ne %struct._pysqlite_Node* %97, null
  br i1 %tobool87, label %if.end.89, label %if.then.88

if.then.88:                                       ; preds = %if.end.85
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.89:                                        ; preds = %if.end.85
  %98 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last90 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %98, i32 0, i32 5
  %99 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last90, align 8
  %100 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %prev91 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %100, i32 0, i32 4
  store %struct._pysqlite_Node* %99, %struct._pysqlite_Node** %prev91, align 8
  br label %do.body.92

do.body.92:                                       ; preds = %if.end.89
  %101 = load %struct._object*, %struct._object** %data, align 8
  store %struct._object* %101, %struct._object** %_py_decref_tmp93, align 8
  %102 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_refcnt94 = getelementptr inbounds %struct._object, %struct._object* %102, i32 0, i32 0
  %103 = load i64, i64* %ob_refcnt94, align 8
  %dec95 = add i64 %103, -1
  store i64 %dec95, i64* %ob_refcnt94, align 8
  %cmp96 = icmp ne i64 %dec95, 0
  br i1 %cmp96, label %if.then.98, label %if.else.99

if.then.98:                                       ; preds = %do.body.92
  br label %if.end.102

if.else.99:                                       ; preds = %do.body.92
  %104 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  %ob_type100 = getelementptr inbounds %struct._object, %struct._object* %104, i32 0, i32 1
  %105 = load %struct._typeobject*, %struct._typeobject** %ob_type100, align 8
  %tp_dealloc101 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %105, i32 0, i32 4
  %106 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc101, align 8
  %107 = load %struct._object*, %struct._object** %_py_decref_tmp93, align 8
  call void %106(%struct._object* %107)
  br label %if.end.102

if.end.102:                                       ; preds = %if.else.99, %if.then.98
  br label %do.end.103

do.end.103:                                       ; preds = %if.end.102
  %108 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %mapping104 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %108, i32 0, i32 2
  %109 = load %struct._object*, %struct._object** %mapping104, align 8
  %110 = load %struct._object*, %struct._object** %key, align 8
  %111 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %112 = bitcast %struct._pysqlite_Node* %111 to %struct._object*
  %call105 = call i32 @PyDict_SetItem(%struct._object* %109, %struct._object* %110, %struct._object* %112)
  %cmp106 = icmp ne i32 %call105, 0
  br i1 %cmp106, label %if.then.108, label %if.end.121

if.then.108:                                      ; preds = %do.end.103
  br label %do.body.109

do.body.109:                                      ; preds = %if.then.108
  %113 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %114 = bitcast %struct._pysqlite_Node* %113 to %struct._object*
  store %struct._object* %114, %struct._object** %_py_decref_tmp110, align 8
  %115 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_refcnt111 = getelementptr inbounds %struct._object, %struct._object* %115, i32 0, i32 0
  %116 = load i64, i64* %ob_refcnt111, align 8
  %dec112 = add i64 %116, -1
  store i64 %dec112, i64* %ob_refcnt111, align 8
  %cmp113 = icmp ne i64 %dec112, 0
  br i1 %cmp113, label %if.then.115, label %if.else.116

if.then.115:                                      ; preds = %do.body.109
  br label %if.end.119

if.else.116:                                      ; preds = %do.body.109
  %117 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  %ob_type117 = getelementptr inbounds %struct._object, %struct._object* %117, i32 0, i32 1
  %118 = load %struct._typeobject*, %struct._typeobject** %ob_type117, align 8
  %tp_dealloc118 = getelementptr inbounds %struct._typeobject, %struct._typeobject* %118, i32 0, i32 4
  %119 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc118, align 8
  %120 = load %struct._object*, %struct._object** %_py_decref_tmp110, align 8
  call void %119(%struct._object* %120)
  br label %if.end.119

if.end.119:                                       ; preds = %if.else.116, %if.then.115
  br label %do.end.120

do.end.120:                                       ; preds = %if.end.119
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.121:                                       ; preds = %do.end.103
  %121 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last122 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %121, i32 0, i32 5
  %122 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last122, align 8
  %tobool123 = icmp ne %struct._pysqlite_Node* %122, null
  br i1 %tobool123, label %if.then.124, label %if.else.127

if.then.124:                                      ; preds = %if.end.121
  %123 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %124 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last125 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %124, i32 0, i32 5
  %125 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %last125, align 8
  %next126 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %125, i32 0, i32 5
  store %struct._pysqlite_Node* %123, %struct._pysqlite_Node** %next126, align 8
  br label %if.end.129

if.else.127:                                      ; preds = %if.end.121
  %126 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %127 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %first128 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %127, i32 0, i32 4
  store %struct._pysqlite_Node* %126, %struct._pysqlite_Node** %first128, align 8
  br label %if.end.129

if.end.129:                                       ; preds = %if.else.127, %if.then.124
  %128 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %129 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %last130 = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %129, i32 0, i32 5
  store %struct._pysqlite_Node* %128, %struct._pysqlite_Node** %last130, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.end.129, %if.end.47
  %130 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %data132 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %130, i32 0, i32 2
  %131 = load %struct._object*, %struct._object** %data132, align 8
  %ob_refcnt133 = getelementptr inbounds %struct._object, %struct._object* %131, i32 0, i32 0
  %132 = load i64, i64* %ob_refcnt133, align 8
  %inc134 = add i64 %132, 1
  store i64 %inc134, i64* %ob_refcnt133, align 8
  %133 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %node, align 8
  %data135 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %133, i32 0, i32 2
  %134 = load %struct._object*, %struct._object** %data135, align 8
  store %struct._object* %134, %struct._object** %retval
  br label %return

return:                                           ; preds = %if.end.131, %do.end.120, %if.then.88, %if.then.84, %if.then.64
  %135 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %135
}

declare %struct._object* @PyDict_GetItem(%struct._object*, %struct._object*) #1

declare i64 @PyDict_Size(%struct._object*) #1

declare i32 @PyDict_DelItem(%struct._object*, %struct._object*) #1

declare %struct._object* @PyObject_CallFunction(%struct._object*, i8*, ...) #1

declare i32 @PyDict_SetItem(%struct._object*, %struct._object*, %struct._object*) #1

; Function Attrs: nounwind uwtable
define %struct._object* @pysqlite_cache_display(%struct.pysqlite_Cache* %self, %struct._object* %args) #0 {
entry:
  %retval = alloca %struct._object*, align 8
  %self.addr = alloca %struct.pysqlite_Cache*, align 8
  %args.addr = alloca %struct._object*, align 8
  %ptr = alloca %struct._pysqlite_Node*, align 8
  %prevkey = alloca %struct._object*, align 8
  %nextkey = alloca %struct._object*, align 8
  %display_str = alloca %struct._object*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct.pysqlite_Cache* %self, %struct.pysqlite_Cache** %self.addr, align 8
  store %struct._object* %args, %struct._object** %args.addr, align 8
  %0 = load %struct.pysqlite_Cache*, %struct.pysqlite_Cache** %self.addr, align 8
  %first = getelementptr inbounds %struct.pysqlite_Cache, %struct.pysqlite_Cache* %0, i32 0, i32 4
  %1 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %first, align 8
  store %struct._pysqlite_Node* %1, %struct._pysqlite_Node** %ptr, align 8
  br label %while.cond

while.cond:                                       ; preds = %do.end, %entry
  %2 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %tobool = icmp ne %struct._pysqlite_Node* %2, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %3, i32 0, i32 4
  %4 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev, align 8
  %tobool1 = icmp ne %struct._pysqlite_Node* %4, null
  br i1 %tobool1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %5 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %prev2 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %5, i32 0, i32 4
  %6 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %prev2, align 8
  %key = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %6, i32 0, i32 1
  %7 = load %struct._object*, %struct._object** %key, align 8
  store %struct._object* %7, %struct._object** %prevkey, align 8
  br label %if.end

if.else:                                          ; preds = %while.body
  store %struct._object* @_Py_NoneStruct, %struct._object** %prevkey, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %next = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %8, i32 0, i32 5
  %9 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next, align 8
  %tobool3 = icmp ne %struct._pysqlite_Node* %9, null
  br i1 %tobool3, label %if.then.4, label %if.else.7

if.then.4:                                        ; preds = %if.end
  %10 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %next5 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %10, i32 0, i32 5
  %11 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next5, align 8
  %key6 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %11, i32 0, i32 1
  %12 = load %struct._object*, %struct._object** %key6, align 8
  store %struct._object* %12, %struct._object** %nextkey, align 8
  br label %if.end.8

if.else.7:                                        ; preds = %if.end
  store %struct._object* @_Py_NoneStruct, %struct._object** %nextkey, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.else.7, %if.then.4
  %13 = load %struct._object*, %struct._object** %prevkey, align 8
  %14 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %key9 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %14, i32 0, i32 1
  %15 = load %struct._object*, %struct._object** %key9, align 8
  %16 = load %struct._object*, %struct._object** %nextkey, align 8
  %call = call %struct._object* (i8*, ...) @PyUnicode_FromFormat(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0), %struct._object* %13, %struct._object* %15, %struct._object* %16)
  store %struct._object* %call, %struct._object** %display_str, align 8
  %17 = load %struct._object*, %struct._object** %display_str, align 8
  %tobool10 = icmp ne %struct._object* %17, null
  br i1 %tobool10, label %if.end.12, label %if.then.11

if.then.11:                                       ; preds = %if.end.8
  store %struct._object* null, %struct._object** %retval
  br label %return

if.end.12:                                        ; preds = %if.end.8
  %18 = load %struct._object*, %struct._object** %display_str, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call13 = call i32 @PyObject_Print(%struct._object* %18, %struct._IO_FILE* %19, i32 1)
  br label %do.body

do.body:                                          ; preds = %if.end.12
  %20 = load %struct._object*, %struct._object** %display_str, align 8
  store %struct._object* %20, %struct._object** %_py_decref_tmp, align 8
  %21 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %21, i32 0, i32 0
  %22 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %22, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then.14, label %if.else.15

if.then.14:                                       ; preds = %do.body
  br label %if.end.16

if.else.15:                                       ; preds = %do.body
  %23 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %23, i32 0, i32 1
  %24 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %24, i32 0, i32 4
  %25 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %26 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %25(%struct._object* %26)
  br label %if.end.16

if.end.16:                                        ; preds = %if.else.15, %if.then.14
  br label %do.end

do.end:                                           ; preds = %if.end.16
  %27 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %ptr, align 8
  %next17 = getelementptr inbounds %struct._pysqlite_Node, %struct._pysqlite_Node* %27, i32 0, i32 5
  %28 = load %struct._pysqlite_Node*, %struct._pysqlite_Node** %next17, align 8
  store %struct._pysqlite_Node* %28, %struct._pysqlite_Node** %ptr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %29 = load i64, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* getelementptr inbounds (%struct._object, %struct._object* @_Py_NoneStruct, i32 0, i32 0), align 8
  store %struct._object* @_Py_NoneStruct, %struct._object** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then.11
  %30 = load %struct._object*, %struct._object** %retval
  ret %struct._object* %30
}

declare %struct._object* @PyUnicode_FromFormat(i8*, ...) #1

declare i32 @PyObject_Print(%struct._object*, %struct._IO_FILE*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @pysqlite_cache_setup_types() #0 {
entry:
  %retval = alloca i32, align 4
  %rc = alloca i32, align 4
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_NodeType, i32 0, i32 37), align 8
  store %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)* @PyType_GenericNew, %struct._object* (%struct._typeobject*, %struct._object*, %struct._object*)** getelementptr inbounds (%struct._typeobject, %struct._typeobject* @pysqlite_CacheType, i32 0, i32 37), align 8
  %call = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_NodeType)
  store i32 %call, i32* %rc, align 4
  %0 = load i32, i32* %rc, align 4
  %cmp = icmp slt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %rc, align 4
  store i32 %1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %call1 = call i32 @PyType_Ready(%struct._typeobject* @pysqlite_CacheType)
  store i32 %call1, i32* %rc, align 4
  %2 = load i32, i32* %rc, align 4
  store i32 %2, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval
  ret i32 %3
}

declare %struct._object* @PyType_GenericNew(%struct._typeobject*, %struct._object*, %struct._object*) #1

declare i32 @PyType_Ready(%struct._typeobject*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"PIC Level", i32 2}
!1 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
