; ModuleID = './pyarena.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._arena = type { %struct._block*, %struct._block*, %struct._object* }
%struct._block = type { i64, i64, %struct._block*, i8* }
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
%struct.PyMethodDef = type { i8*, %struct._object* (%struct._object*, %struct._object*)*, i32, i8* }
%struct.PyMemberDef = type opaque
%struct.PyGetSetDef = type { i8*, %struct._object* (%struct._object*, i8*)*, i32 (%struct._object*, %struct._object*, i8*)*, i8*, i8* }

; Function Attrs: nounwind uwtable
define %struct._arena* @PyArena_New() #0 {
entry:
  %retval = alloca %struct._arena*, align 8
  %arena = alloca %struct._arena*, align 8
  %call = call i8* @PyMem_Malloc(i64 24)
  %0 = bitcast i8* %call to %struct._arena*
  store %struct._arena* %0, %struct._arena** %arena, align 8
  %1 = load %struct._arena*, %struct._arena** %arena, align 8
  %tobool = icmp ne %struct._arena* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  %2 = bitcast %struct._object* %call1 to %struct._arena*
  store %struct._arena* %2, %struct._arena** %retval
  br label %return

if.end:                                           ; preds = %entry
  %call2 = call %struct._block* @block_new(i64 8192)
  %3 = load %struct._arena*, %struct._arena** %arena, align 8
  %a_head = getelementptr inbounds %struct._arena, %struct._arena* %3, i32 0, i32 0
  store %struct._block* %call2, %struct._block** %a_head, align 8
  %4 = load %struct._arena*, %struct._arena** %arena, align 8
  %a_head3 = getelementptr inbounds %struct._arena, %struct._arena* %4, i32 0, i32 0
  %5 = load %struct._block*, %struct._block** %a_head3, align 8
  %6 = load %struct._arena*, %struct._arena** %arena, align 8
  %a_cur = getelementptr inbounds %struct._arena, %struct._arena* %6, i32 0, i32 1
  store %struct._block* %5, %struct._block** %a_cur, align 8
  %7 = load %struct._arena*, %struct._arena** %arena, align 8
  %a_head4 = getelementptr inbounds %struct._arena, %struct._arena* %7, i32 0, i32 0
  %8 = load %struct._block*, %struct._block** %a_head4, align 8
  %tobool5 = icmp ne %struct._block* %8, null
  br i1 %tobool5, label %if.end.8, label %if.then.6

if.then.6:                                        ; preds = %if.end
  %9 = load %struct._arena*, %struct._arena** %arena, align 8
  %10 = bitcast %struct._arena* %9 to i8*
  call void @PyMem_Free(i8* %10)
  %call7 = call %struct._object* @PyErr_NoMemory()
  %11 = bitcast %struct._object* %call7 to %struct._arena*
  store %struct._arena* %11, %struct._arena** %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %call9 = call %struct._object* @PyList_New(i64 0)
  %12 = load %struct._arena*, %struct._arena** %arena, align 8
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %12, i32 0, i32 2
  store %struct._object* %call9, %struct._object** %a_objects, align 8
  %13 = load %struct._arena*, %struct._arena** %arena, align 8
  %a_objects10 = getelementptr inbounds %struct._arena, %struct._arena* %13, i32 0, i32 2
  %14 = load %struct._object*, %struct._object** %a_objects10, align 8
  %tobool11 = icmp ne %struct._object* %14, null
  br i1 %tobool11, label %if.end.15, label %if.then.12

if.then.12:                                       ; preds = %if.end.8
  %15 = load %struct._arena*, %struct._arena** %arena, align 8
  %a_head13 = getelementptr inbounds %struct._arena, %struct._arena* %15, i32 0, i32 0
  %16 = load %struct._block*, %struct._block** %a_head13, align 8
  call void @block_free(%struct._block* %16)
  %17 = load %struct._arena*, %struct._arena** %arena, align 8
  %18 = bitcast %struct._arena* %17 to i8*
  call void @PyMem_Free(i8* %18)
  %call14 = call %struct._object* @PyErr_NoMemory()
  %19 = bitcast %struct._object* %call14 to %struct._arena*
  store %struct._arena* %19, %struct._arena** %retval
  br label %return

if.end.15:                                        ; preds = %if.end.8
  %20 = load %struct._arena*, %struct._arena** %arena, align 8
  store %struct._arena* %20, %struct._arena** %retval
  br label %return

return:                                           ; preds = %if.end.15, %if.then.12, %if.then.6, %if.then
  %21 = load %struct._arena*, %struct._arena** %retval
  ret %struct._arena* %21
}

declare i8* @PyMem_Malloc(i64) #1

declare %struct._object* @PyErr_NoMemory() #1

; Function Attrs: nounwind uwtable
define internal %struct._block* @block_new(i64 %size) #0 {
entry:
  %retval = alloca %struct._block*, align 8
  %size.addr = alloca i64, align 8
  %b = alloca %struct._block*, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %add = add i64 32, %0
  %call = call i8* @PyMem_Malloc(i64 %add)
  %1 = bitcast i8* %call to %struct._block*
  store %struct._block* %1, %struct._block** %b, align 8
  %2 = load %struct._block*, %struct._block** %b, align 8
  %tobool = icmp ne %struct._block* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct._block* null, %struct._block** %retval
  br label %return

if.end:                                           ; preds = %entry
  %3 = load i64, i64* %size.addr, align 8
  %4 = load %struct._block*, %struct._block** %b, align 8
  %ab_size = getelementptr inbounds %struct._block, %struct._block* %4, i32 0, i32 0
  store i64 %3, i64* %ab_size, align 8
  %5 = load %struct._block*, %struct._block** %b, align 8
  %add.ptr = getelementptr %struct._block, %struct._block* %5, i64 1
  %6 = bitcast %struct._block* %add.ptr to i8*
  %7 = load %struct._block*, %struct._block** %b, align 8
  %ab_mem = getelementptr inbounds %struct._block, %struct._block* %7, i32 0, i32 3
  store i8* %6, i8** %ab_mem, align 8
  %8 = load %struct._block*, %struct._block** %b, align 8
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %8, i32 0, i32 2
  store %struct._block* null, %struct._block** %ab_next, align 8
  %9 = load %struct._block*, %struct._block** %b, align 8
  %ab_mem1 = getelementptr inbounds %struct._block, %struct._block* %9, i32 0, i32 3
  %10 = load i8*, i8** %ab_mem1, align 8
  %11 = ptrtoint i8* %10 to i64
  %add2 = add i64 %11, 7
  %and = and i64 %add2, -8
  %12 = inttoptr i64 %and to i8*
  %13 = load %struct._block*, %struct._block** %b, align 8
  %ab_mem3 = getelementptr inbounds %struct._block, %struct._block* %13, i32 0, i32 3
  %14 = load i8*, i8** %ab_mem3, align 8
  %sub.ptr.lhs.cast = ptrtoint i8* %12 to i64
  %sub.ptr.rhs.cast = ptrtoint i8* %14 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %15 = load %struct._block*, %struct._block** %b, align 8
  %ab_offset = getelementptr inbounds %struct._block, %struct._block* %15, i32 0, i32 1
  store i64 %sub.ptr.sub, i64* %ab_offset, align 8
  %16 = load %struct._block*, %struct._block** %b, align 8
  store %struct._block* %16, %struct._block** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %17 = load %struct._block*, %struct._block** %retval
  ret %struct._block* %17
}

declare void @PyMem_Free(i8*) #1

declare %struct._object* @PyList_New(i64) #1

; Function Attrs: nounwind uwtable
define internal void @block_free(%struct._block* %b) #0 {
entry:
  %b.addr = alloca %struct._block*, align 8
  %next = alloca %struct._block*, align 8
  store %struct._block* %b, %struct._block** %b.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct._block*, %struct._block** %b.addr, align 8
  %tobool = icmp ne %struct._block* %0, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load %struct._block*, %struct._block** %b.addr, align 8
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %1, i32 0, i32 2
  %2 = load %struct._block*, %struct._block** %ab_next, align 8
  store %struct._block* %2, %struct._block** %next, align 8
  %3 = load %struct._block*, %struct._block** %b.addr, align 8
  %4 = bitcast %struct._block* %3 to i8*
  call void @PyMem_Free(i8* %4)
  %5 = load %struct._block*, %struct._block** %next, align 8
  store %struct._block* %5, %struct._block** %b.addr, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define void @PyArena_Free(%struct._arena* %arena) #0 {
entry:
  %arena.addr = alloca %struct._arena*, align 8
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  %0 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %a_head = getelementptr inbounds %struct._arena, %struct._arena* %0, i32 0, i32 0
  %1 = load %struct._block*, %struct._block** %a_head, align 8
  call void @block_free(%struct._block* %1)
  br label %do.body

do.body:                                          ; preds = %entry
  %2 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %2, i32 0, i32 2
  %3 = load %struct._object*, %struct._object** %a_objects, align 8
  store %struct._object* %3, %struct._object** %_py_decref_tmp, align 8
  %4 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %4, i32 0, i32 0
  %5 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %5, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp = icmp ne i64 %dec, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %6 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %6, i32 0, i32 1
  %7 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %7, i32 0, i32 4
  %8 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %9 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %8(%struct._object* %9)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %do.end

do.end:                                           ; preds = %if.end
  %10 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %11 = bitcast %struct._arena* %10 to i8*
  call void @PyMem_Free(i8* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @PyArena_Malloc(%struct._arena* %arena, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %arena.addr = alloca %struct._arena*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %a_cur = getelementptr inbounds %struct._arena, %struct._arena* %0, i32 0, i32 1
  %1 = load %struct._block*, %struct._block** %a_cur, align 8
  %2 = load i64, i64* %size.addr, align 8
  %call = call i8* @block_alloc(%struct._block* %1, i64 %2)
  store i8* %call, i8** %p, align 8
  %3 = load i8*, i8** %p, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call1 = call %struct._object* @PyErr_NoMemory()
  %4 = bitcast %struct._object* %call1 to i8*
  store i8* %4, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %a_cur2 = getelementptr inbounds %struct._arena, %struct._arena* %5, i32 0, i32 1
  %6 = load %struct._block*, %struct._block** %a_cur2, align 8
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %6, i32 0, i32 2
  %7 = load %struct._block*, %struct._block** %ab_next, align 8
  %tobool3 = icmp ne %struct._block* %7, null
  br i1 %tobool3, label %if.then.4, label %if.end.8

if.then.4:                                        ; preds = %if.end
  %8 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %a_cur5 = getelementptr inbounds %struct._arena, %struct._arena* %8, i32 0, i32 1
  %9 = load %struct._block*, %struct._block** %a_cur5, align 8
  %ab_next6 = getelementptr inbounds %struct._block, %struct._block* %9, i32 0, i32 2
  %10 = load %struct._block*, %struct._block** %ab_next6, align 8
  %11 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %a_cur7 = getelementptr inbounds %struct._arena, %struct._arena* %11, i32 0, i32 1
  store %struct._block* %10, %struct._block** %a_cur7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.4, %if.end
  %12 = load i8*, i8** %p, align 8
  store i8* %12, i8** %retval
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  %13 = load i8*, i8** %retval
  ret i8* %13
}

; Function Attrs: nounwind uwtable
define internal i8* @block_alloc(%struct._block* %b, i64 %size) #0 {
entry:
  %retval = alloca i8*, align 8
  %b.addr = alloca %struct._block*, align 8
  %size.addr = alloca i64, align 8
  %p = alloca i8*, align 8
  %newbl = alloca %struct._block*, align 8
  store %struct._block* %b, %struct._block** %b.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load i64, i64* %size.addr, align 8
  %add = add i64 %0, 7
  %and = and i64 %add, -8
  store i64 %and, i64* %size.addr, align 8
  %1 = load %struct._block*, %struct._block** %b.addr, align 8
  %ab_offset = getelementptr inbounds %struct._block, %struct._block* %1, i32 0, i32 1
  %2 = load i64, i64* %ab_offset, align 8
  %3 = load i64, i64* %size.addr, align 8
  %add1 = add i64 %2, %3
  %4 = load %struct._block*, %struct._block** %b.addr, align 8
  %ab_size = getelementptr inbounds %struct._block, %struct._block* %4, i32 0, i32 0
  %5 = load i64, i64* %ab_size, align 8
  %cmp = icmp ugt i64 %add1, %5
  br i1 %cmp, label %if.then, label %if.end.4

if.then:                                          ; preds = %entry
  %6 = load i64, i64* %size.addr, align 8
  %cmp2 = icmp ult i64 %6, 8192
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i64, i64* %size.addr, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 8192, %cond.true ], [ %7, %cond.false ]
  %call = call %struct._block* @block_new(i64 %cond)
  store %struct._block* %call, %struct._block** %newbl, align 8
  %8 = load %struct._block*, %struct._block** %newbl, align 8
  %tobool = icmp ne %struct._block* %8, null
  br i1 %tobool, label %if.end, label %if.then.3

if.then.3:                                        ; preds = %cond.end
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %cond.end
  %9 = load %struct._block*, %struct._block** %newbl, align 8
  %10 = load %struct._block*, %struct._block** %b.addr, align 8
  %ab_next = getelementptr inbounds %struct._block, %struct._block* %10, i32 0, i32 2
  store %struct._block* %9, %struct._block** %ab_next, align 8
  %11 = load %struct._block*, %struct._block** %newbl, align 8
  store %struct._block* %11, %struct._block** %b.addr, align 8
  br label %if.end.4

if.end.4:                                         ; preds = %if.end, %entry
  %12 = load %struct._block*, %struct._block** %b.addr, align 8
  %ab_mem = getelementptr inbounds %struct._block, %struct._block* %12, i32 0, i32 3
  %13 = load i8*, i8** %ab_mem, align 8
  %14 = load %struct._block*, %struct._block** %b.addr, align 8
  %ab_offset5 = getelementptr inbounds %struct._block, %struct._block* %14, i32 0, i32 1
  %15 = load i64, i64* %ab_offset5, align 8
  %add.ptr = getelementptr i8, i8* %13, i64 %15
  store i8* %add.ptr, i8** %p, align 8
  %16 = load i64, i64* %size.addr, align 8
  %17 = load %struct._block*, %struct._block** %b.addr, align 8
  %ab_offset6 = getelementptr inbounds %struct._block, %struct._block* %17, i32 0, i32 1
  %18 = load i64, i64* %ab_offset6, align 8
  %add7 = add i64 %18, %16
  store i64 %add7, i64* %ab_offset6, align 8
  %19 = load i8*, i8** %p, align 8
  store i8* %19, i8** %retval
  br label %return

return:                                           ; preds = %if.end.4, %if.then.3
  %20 = load i8*, i8** %retval
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define i32 @PyArena_AddPyObject(%struct._arena* %arena, %struct._object* %obj) #0 {
entry:
  %arena.addr = alloca %struct._arena*, align 8
  %obj.addr = alloca %struct._object*, align 8
  %r = alloca i32, align 4
  %_py_decref_tmp = alloca %struct._object*, align 8
  store %struct._arena* %arena, %struct._arena** %arena.addr, align 8
  store %struct._object* %obj, %struct._object** %obj.addr, align 8
  %0 = load %struct._arena*, %struct._arena** %arena.addr, align 8
  %a_objects = getelementptr inbounds %struct._arena, %struct._arena* %0, i32 0, i32 2
  %1 = load %struct._object*, %struct._object** %a_objects, align 8
  %2 = load %struct._object*, %struct._object** %obj.addr, align 8
  %call = call i32 @PyList_Append(%struct._object* %1, %struct._object* %2)
  store i32 %call, i32* %r, align 4
  %3 = load i32, i32* %r, align 4
  %cmp = icmp sge i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end.3

if.then:                                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.then
  %4 = load %struct._object*, %struct._object** %obj.addr, align 8
  store %struct._object* %4, %struct._object** %_py_decref_tmp, align 8
  %5 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_refcnt = getelementptr inbounds %struct._object, %struct._object* %5, i32 0, i32 0
  %6 = load i64, i64* %ob_refcnt, align 8
  %dec = add i64 %6, -1
  store i64 %dec, i64* %ob_refcnt, align 8
  %cmp1 = icmp ne i64 %dec, 0
  br i1 %cmp1, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %do.body
  br label %if.end

if.else:                                          ; preds = %do.body
  %7 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  %ob_type = getelementptr inbounds %struct._object, %struct._object* %7, i32 0, i32 1
  %8 = load %struct._typeobject*, %struct._typeobject** %ob_type, align 8
  %tp_dealloc = getelementptr inbounds %struct._typeobject, %struct._typeobject* %8, i32 0, i32 4
  %9 = load void (%struct._object*)*, void (%struct._object*)** %tp_dealloc, align 8
  %10 = load %struct._object*, %struct._object** %_py_decref_tmp, align 8
  call void %9(%struct._object* %10)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.2
  br label %do.end

do.end:                                           ; preds = %if.end
  br label %if.end.3

if.end.3:                                         ; preds = %do.end, %entry
  %11 = load i32, i32* %r, align 4
  ret i32 %11
}

declare i32 @PyList_Append(%struct._object*, %struct._object*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
