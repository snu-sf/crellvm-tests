; ModuleID = './hashtable.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._Py_hashtable_entry_t = type { %struct._Py_slist_item_s, i8*, i64 }
%struct._Py_slist_item_s = type { %struct._Py_slist_item_s* }
%struct._Py_hashtable_t = type { i64, i64, %struct._Py_slist_t*, i64, i64 (i8*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)*, i8* (i8*)*, void (i8*)*, i64 (i8*)*, %struct._Py_hashtable_allocator_t }
%struct._Py_slist_t = type { %struct._Py_slist_item_s* }
%struct._Py_hashtable_allocator_t = type { i8* (i64)*, void (i8*)* }

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_hash_int(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %1 = ptrtoint i8* %0 to i64
  ret i64 %1
}

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_hash_ptr(i8* %key) #0 {
entry:
  %key.addr = alloca i8*, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load i8*, i8** %key.addr, align 8
  %call = call i64 @_Py_HashPointer(i8* %0)
  ret i64 %call
}

declare i64 @_Py_HashPointer(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_compare_direct(i8* %key, %struct._Py_hashtable_entry_t* %entry1) #0 {
entry:
  %key.addr = alloca i8*, align 8
  %entry.addr = alloca %struct._Py_hashtable_entry_t*, align 8
  store i8* %key, i8** %key.addr, align 8
  store %struct._Py_hashtable_entry_t* %entry1, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %0 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry.addr, align 8
  %key2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %0, i32 0, i32 1
  %1 = load i8*, i8** %key2, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %cmp = icmp eq i8* %1, %2
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %data_size, i64 %init_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i8* (i8*)* %copy_data_func, void (i8*)* %free_data_func, i64 (i8*)* %get_data_size_func, %struct._Py_hashtable_allocator_t* %allocator) #0 {
entry:
  %retval = alloca %struct._Py_hashtable_t*, align 8
  %data_size.addr = alloca i64, align 8
  %init_size.addr = alloca i64, align 8
  %hash_func.addr = alloca i64 (i8*)*, align 8
  %compare_func.addr = alloca i32 (i8*, %struct._Py_hashtable_entry_t*)*, align 8
  %copy_data_func.addr = alloca i8* (i8*)*, align 8
  %free_data_func.addr = alloca void (i8*)*, align 8
  %get_data_size_func.addr = alloca i64 (i8*)*, align 8
  %allocator.addr = alloca %struct._Py_hashtable_allocator_t*, align 8
  %ht = alloca %struct._Py_hashtable_t*, align 8
  %buckets_size = alloca i64, align 8
  %alloc = alloca %struct._Py_hashtable_allocator_t, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64 %init_size, i64* %init_size.addr, align 8
  store i64 (i8*)* %hash_func, i64 (i8*)** %hash_func.addr, align 8
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8
  store i8* (i8*)* %copy_data_func, i8* (i8*)** %copy_data_func.addr, align 8
  store void (i8*)* %free_data_func, void (i8*)** %free_data_func.addr, align 8
  store i64 (i8*)* %get_data_size_func, i64 (i8*)** %get_data_size_func.addr, align 8
  store %struct._Py_hashtable_allocator_t* %allocator, %struct._Py_hashtable_allocator_t** %allocator.addr, align 8
  %0 = load %struct._Py_hashtable_allocator_t*, %struct._Py_hashtable_allocator_t** %allocator.addr, align 8
  %cmp = icmp eq %struct._Py_hashtable_allocator_t* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %malloc = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0
  store i8* (i64)* @PyMem_RawMalloc, i8* (i64)** %malloc, align 8
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1
  store void (i8*)* @PyMem_RawFree, void (i8*)** %free, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %1 = load %struct._Py_hashtable_allocator_t*, %struct._Py_hashtable_allocator_t** %allocator.addr, align 8
  %2 = bitcast %struct._Py_hashtable_allocator_t* %alloc to i8*
  %3 = bitcast %struct._Py_hashtable_allocator_t* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %2, i8* %3, i64 16, i32 8, i1 false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %malloc1 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0
  %4 = load i8* (i64)*, i8* (i64)** %malloc1, align 8
  %call = call i8* %4(i64 88)
  %5 = bitcast i8* %call to %struct._Py_hashtable_t*
  store %struct._Py_hashtable_t* %5, %struct._Py_hashtable_t** %ht, align 8
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %cmp2 = icmp eq %struct._Py_hashtable_t* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  store %struct._Py_hashtable_t* %7, %struct._Py_hashtable_t** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %8 = load i64, i64* %init_size.addr, align 8
  %call5 = call i64 @round_size(i64 %8)
  %9 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %9, i32 0, i32 0
  store i64 %call5, i64* %num_buckets, align 8
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 1
  store i64 0, i64* %entries, align 8
  %11 = load i64, i64* %data_size.addr, align 8
  %12 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %data_size6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %12, i32 0, i32 3
  store i64 %11, i64* %data_size6, align 8
  %13 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %num_buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %13, i32 0, i32 0
  %14 = load i64, i64* %num_buckets7, align 8
  %mul = mul i64 %14, 8
  store i64 %mul, i64* %buckets_size, align 8
  %malloc8 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0
  %15 = load i8* (i64)*, i8* (i64)** %malloc8, align 8
  %16 = load i64, i64* %buckets_size, align 8
  %call9 = call i8* %15(i64 %16)
  %17 = bitcast i8* %call9 to %struct._Py_slist_t*
  %18 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %18, i32 0, i32 2
  store %struct._Py_slist_t* %17, %struct._Py_slist_t** %buckets, align 8
  %19 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %buckets10 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %19, i32 0, i32 2
  %20 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets10, align 8
  %cmp11 = icmp eq %struct._Py_slist_t* %20, null
  br i1 %cmp11, label %if.then.12, label %if.end.14

if.then.12:                                       ; preds = %if.end.4
  %free13 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1
  %21 = load void (i8*)*, void (i8*)** %free13, align 8
  %22 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %23 = bitcast %struct._Py_hashtable_t* %22 to i8*
  call void %21(i8* %23)
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %retval
  br label %return

if.end.14:                                        ; preds = %if.end.4
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %buckets15 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %24, i32 0, i32 2
  %25 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets15, align 8
  %26 = bitcast %struct._Py_slist_t* %25 to i8*
  %27 = load i64, i64* %buckets_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %26, i8 0, i64 %27, i32 8, i1 false)
  %28 = load i64 (i8*)*, i64 (i8*)** %hash_func.addr, align 8
  %29 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %hash_func16 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %29, i32 0, i32 4
  store i64 (i8*)* %28, i64 (i8*)** %hash_func16, align 8
  %30 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8
  %31 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %compare_func17 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %31, i32 0, i32 5
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %30, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func17, align 8
  %32 = load i8* (i8*)*, i8* (i8*)** %copy_data_func.addr, align 8
  %33 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %copy_data_func18 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %33, i32 0, i32 6
  store i8* (i8*)* %32, i8* (i8*)** %copy_data_func18, align 8
  %34 = load void (i8*)*, void (i8*)** %free_data_func.addr, align 8
  %35 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %free_data_func19 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %35, i32 0, i32 7
  store void (i8*)* %34, void (i8*)** %free_data_func19, align 8
  %36 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func.addr, align 8
  %37 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %get_data_size_func20 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %37, i32 0, i32 8
  store i64 (i8*)* %36, i64 (i8*)** %get_data_size_func20, align 8
  %38 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  %alloc21 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %38, i32 0, i32 9
  %39 = bitcast %struct._Py_hashtable_allocator_t* %alloc21 to i8*
  %40 = bitcast %struct._Py_hashtable_allocator_t* %alloc to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %39, i8* %40, i64 16, i32 8, i1 false)
  %41 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht, align 8
  store %struct._Py_hashtable_t* %41, %struct._Py_hashtable_t** %retval
  br label %return

return:                                           ; preds = %if.end.14, %if.then.12, %if.then.3
  %42 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %retval
  ret %struct._Py_hashtable_t* %42
}

declare i8* @PyMem_RawMalloc(i64) #1

declare void @PyMem_RawFree(i8*) #1

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define internal i64 @round_size(i64 %s) #0 {
entry:
  %retval = alloca i64, align 8
  %s.addr = alloca i64, align 8
  %i = alloca i64, align 8
  store i64 %s, i64* %s.addr, align 8
  %0 = load i64, i64* %s.addr, align 8
  %cmp = icmp ult i64 %0, 16
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 16, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 1, i64* %i, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %1 = load i64, i64* %i, align 8
  %2 = load i64, i64* %s.addr, align 8
  %cmp1 = icmp ult i64 %1, %2
  br i1 %cmp1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i64, i64* %i, align 8
  %shl = shl i64 %3, 1
  store i64 %shl, i64* %i, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i64, i64* %i, align 8
  store i64 %4, i64* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #2

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_new(i64 %data_size, i64 (i8*)* %hash_func, i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func) #0 {
entry:
  %data_size.addr = alloca i64, align 8
  %hash_func.addr = alloca i64 (i8*)*, align 8
  %compare_func.addr = alloca i32 (i8*, %struct._Py_hashtable_entry_t*)*, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  store i64 (i8*)* %hash_func, i64 (i8*)** %hash_func.addr, align 8
  store i32 (i8*, %struct._Py_hashtable_entry_t*)* %compare_func, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8
  %0 = load i64, i64* %data_size.addr, align 8
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_func.addr, align 8
  %2 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func.addr, align 8
  %call = call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %0, i64 16, i64 (i8*)* %1, i32 (i8*, %struct._Py_hashtable_entry_t*)* %2, i8* (i8*)* null, void (i8*)* null, i64 (i8*)* null, %struct._Py_hashtable_allocator_t* null)
  ret %struct._Py_hashtable_t* %call
}

; Function Attrs: nounwind uwtable
define i64 @_Py_hashtable_size(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %size = alloca i64, align 8
  %hv = alloca i64, align 8
  %entry5 = alloca %struct._Py_hashtable_entry_t*, align 8
  %data = alloca i8*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i64 88, i64* %size, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %0, i32 0, i32 0
  %1 = load i64, i64* %num_buckets, align 8
  %mul = mul i64 %1, 8
  %2 = load i64, i64* %size, align 8
  %add = add i64 %2, %mul
  store i64 %add, i64* %size, align 8
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %3, i32 0, i32 1
  %4 = load i64, i64* %entries, align 8
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %data_size = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %5, i32 0, i32 3
  %6 = load i64, i64* %data_size, align 8
  %add1 = add i64 24, %6
  %mul2 = mul i64 %4, %add1
  %7 = load i64, i64* %size, align 8
  %add3 = add i64 %7, %mul2
  store i64 %add3, i64* %size, align 8
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %get_data_size_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %8, i32 0, i32 8
  %9 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func, align 8
  %tobool = icmp ne i64 (i8*)* %9, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %hv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.11, %if.then
  %10 = load i64, i64* %hv, align 8
  %11 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets4 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %11, i32 0, i32 0
  %12 = load i64, i64* %num_buckets4, align 8
  %cmp = icmp ult i64 %10, %12
  br i1 %cmp, label %for.body, label %for.end.12

for.body:                                         ; preds = %for.cond
  %13 = load i64, i64* %hv, align 8
  %14 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %14, i32 0, i32 2
  %15 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %15, i64 %13
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %16 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %17 = bitcast %struct._Py_slist_item_s* %16 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %17, %struct._Py_hashtable_entry_t** %entry5, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc, %for.body
  %18 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry5, align 8
  %tobool7 = icmp ne %struct._Py_hashtable_entry_t* %18, null
  br i1 %tobool7, label %for.body.8, label %for.end

for.body.8:                                       ; preds = %for.cond.6
  %19 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry5, align 8
  %20 = bitcast %struct._Py_hashtable_entry_t* %19 to i8*
  %add.ptr = getelementptr i8, i8* %20, i64 24
  %21 = bitcast i8* %add.ptr to i8**
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %data, align 8
  %23 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %get_data_size_func9 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %23, i32 0, i32 8
  %24 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func9, align 8
  %25 = load i8*, i8** %data, align 8
  %call = call i64 %24(i8* %25)
  %26 = load i64, i64* %size, align 8
  %add10 = add i64 %26, %call
  store i64 %add10, i64* %size, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body.8
  %27 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry5, align 8
  %28 = bitcast %struct._Py_hashtable_entry_t* %27 to %struct._Py_slist_item_s*
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %28, i32 0, i32 0
  %29 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8
  %30 = bitcast %struct._Py_slist_item_s* %29 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %30, %struct._Py_hashtable_entry_t** %entry5, align 8
  br label %for.cond.6

for.end:                                          ; preds = %for.cond.6
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.end
  %31 = load i64, i64* %hv, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %hv, align 8
  br label %for.cond

for.end.12:                                       ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end.12, %entry
  %32 = load i64, i64* %size, align 8
  ret i64 %32
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %ht, i8* %key) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %key_hash = alloca i64, align 8
  %index = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %0, i32 0, i32 4
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i64 %1(i8* %2)
  store i64 %call, i64* %key_hash, align 8
  %3 = load i64, i64* %key_hash, align 8
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 0
  %5 = load i64, i64* %num_buckets, align 8
  %sub = sub i64 %5, 1
  %and = and i64 %3, %sub
  store i64 %and, i64* %index, align 8
  %6 = load i64, i64* %index, align 8
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %7, i32 0, i32 2
  %8 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %8, i64 %6
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %9 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %10 = bitcast %struct._Py_slist_item_s* %9 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %10, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp = icmp ne %struct._Py_hashtable_entry_t* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key_hash2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %12, i32 0, i32 2
  %13 = load i64, i64* %key_hash2, align 8
  %14 = load i64, i64* %key_hash, align 8
  %cmp3 = icmp eq i64 %13, %14
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %compare_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %15, i32 0, i32 5
  %16 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func, align 8
  %17 = load i8*, i8** %key.addr, align 8
  %18 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %call4 = call i32 %16(i8* %17, %struct._Py_hashtable_entry_t* %18)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %19 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %20 = bitcast %struct._Py_hashtable_entry_t* %19 to %struct._Py_slist_item_s*
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %20, i32 0, i32 0
  %21 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8
  %22 = bitcast %struct._Py_slist_item_s* %21 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %22, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %23 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  ret %struct._Py_hashtable_entry_t* %23
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %key_hash = alloca i64, align 8
  %index = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %0, i32 0, i32 4
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i64 %1(i8* %2)
  store i64 %call, i64* %key_hash, align 8
  %3 = load i64, i64* %key_hash, align 8
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 0
  %5 = load i64, i64* %num_buckets, align 8
  %sub = sub i64 %5, 1
  %and = and i64 %3, %sub
  store i64 %and, i64* %index, align 8
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %6, i32 0, i32 9
  %malloc = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0
  %7 = load i8* (i64)*, i8* (i64)** %malloc, align 8
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %data_size2 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %8, i32 0, i32 3
  %9 = load i64, i64* %data_size2, align 8
  %add = add i64 24, %9
  %call3 = call i8* %7(i64 %add)
  %10 = bitcast i8* %call3 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %10, %struct._Py_hashtable_entry_t** %entry1, align 8
  %11 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp = icmp eq %struct._Py_hashtable_entry_t* %11, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %12 = load i8*, i8** %key.addr, align 8
  %13 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key4 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %13, i32 0, i32 1
  store i8* %12, i8** %key4, align 8
  %14 = load i64, i64* %key_hash, align 8
  %15 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key_hash5 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %15, i32 0, i32 2
  store i64 %14, i64* %key_hash5, align 8
  %16 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %17 = bitcast %struct._Py_hashtable_entry_t* %16 to i8*
  %add.ptr = getelementptr i8, i8* %17, i64 24
  %18 = load i8*, i8** %data.addr, align 8
  %19 = load i64, i64* %data_size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %add.ptr, i8* %18, i64 %19, i32 1, i1 false)
  %20 = load i64, i64* %index, align 8
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %21, i32 0, i32 2
  %22 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %22, i64 %20
  %23 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %24 = bitcast %struct._Py_hashtable_entry_t* %23 to %struct._Py_slist_item_s*
  call void @_Py_slist_prepend(%struct._Py_slist_t* %arrayidx, %struct._Py_slist_item_s* %24)
  %25 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %25, i32 0, i32 1
  %26 = load i64, i64* %entries, align 8
  %inc = add i64 %26, 1
  store i64 %inc, i64* %entries, align 8
  %27 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %entries6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %27, i32 0, i32 1
  %28 = load i64, i64* %entries6, align 8
  %conv = uitofp i64 %28 to float
  %29 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %29, i32 0, i32 0
  %30 = load i64, i64* %num_buckets7, align 8
  %conv8 = uitofp i64 %30 to float
  %div = fdiv float %conv, %conv8
  %conv9 = fpext float %div to double
  %cmp10 = fcmp ogt double %conv9, 5.000000e-01
  br i1 %cmp10, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.end
  %31 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  call void @hashtable_rehash(%struct._Py_hashtable_t* %31)
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.12, %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.13, %if.then
  %32 = load i32, i32* %retval
  ret i32 %32
}

; Function Attrs: nounwind uwtable
define internal void @_Py_slist_prepend(%struct._Py_slist_t* %list, %struct._Py_slist_item_s* %item) #0 {
entry:
  %list.addr = alloca %struct._Py_slist_t*, align 8
  %item.addr = alloca %struct._Py_slist_item_s*, align 8
  store %struct._Py_slist_t* %list, %struct._Py_slist_t** %list.addr, align 8
  store %struct._Py_slist_item_s* %item, %struct._Py_slist_item_s** %item.addr, align 8
  %0 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %0, i32 0, i32 0
  %1 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %2 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %2, i32 0, i32 0
  store %struct._Py_slist_item_s* %1, %struct._Py_slist_item_s** %next, align 8
  %3 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8
  %4 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8
  %head1 = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %4, i32 0, i32 0
  store %struct._Py_slist_item_s* %3, %struct._Py_slist_item_s** %head1, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @hashtable_rehash(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %buckets_size = alloca i64, align 8
  %new_size = alloca i64, align 8
  %bucket = alloca i64, align 8
  %old_buckets = alloca %struct._Py_slist_t*, align 8
  %old_num_buckets = alloca i64, align 8
  %entry17 = alloca %struct._Py_hashtable_entry_t*, align 8
  %next = alloca %struct._Py_hashtable_entry_t*, align 8
  %entry_index = alloca i64, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store %struct._Py_slist_t* null, %struct._Py_slist_t** %old_buckets, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %0, i32 0, i32 1
  %1 = load i64, i64* %entries, align 8
  %conv = uitofp i64 %1 to double
  %mul = fmul double %conv, 2.000000e+00
  %div = fdiv double %mul, 6.000000e-01
  %conv1 = fptoui double %div to i64
  %call = call i64 @round_size(i64 %conv1)
  store i64 %call, i64* %new_size, align 8
  %2 = load i64, i64* %new_size, align 8
  %3 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %3, i32 0, i32 0
  %4 = load i64, i64* %num_buckets, align 8
  %cmp = icmp eq i64 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets3 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %5, i32 0, i32 0
  %6 = load i64, i64* %num_buckets3, align 8
  store i64 %6, i64* %old_num_buckets, align 8
  %7 = load i64, i64* %new_size, align 8
  %mul4 = mul i64 %7, 8
  store i64 %mul4, i64* %buckets_size, align 8
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %8, i32 0, i32 2
  %9 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  store %struct._Py_slist_t* %9, %struct._Py_slist_t** %old_buckets, align 8
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 9
  %malloc = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 0
  %11 = load i8* (i64)*, i8* (i64)** %malloc, align 8
  %12 = load i64, i64* %buckets_size, align 8
  %call5 = call i8* %11(i64 %12)
  %13 = bitcast i8* %call5 to %struct._Py_slist_t*
  %14 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %14, i32 0, i32 2
  store %struct._Py_slist_t* %13, %struct._Py_slist_t** %buckets6, align 8
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %15, i32 0, i32 2
  %16 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets7, align 8
  %cmp8 = icmp eq %struct._Py_slist_t* %16, null
  br i1 %cmp8, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %if.end
  %17 = load %struct._Py_slist_t*, %struct._Py_slist_t** %old_buckets, align 8
  %18 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets11 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %18, i32 0, i32 2
  store %struct._Py_slist_t* %17, %struct._Py_slist_t** %buckets11, align 8
  br label %return

if.end.12:                                        ; preds = %if.end
  %19 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets13 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %19, i32 0, i32 2
  %20 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets13, align 8
  %21 = bitcast %struct._Py_slist_t* %20 to i8*
  %22 = load i64, i64* %buckets_size, align 8
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 %22, i32 8, i1 false)
  %23 = load i64, i64* %new_size, align 8
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets14 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %24, i32 0, i32 0
  store i64 %23, i64* %num_buckets14, align 8
  store i64 0, i64* %bucket, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end.12
  %25 = load i64, i64* %bucket, align 8
  %26 = load i64, i64* %old_num_buckets, align 8
  %cmp15 = icmp ult i64 %25, %26
  br i1 %cmp15, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %27 = load i64, i64* %bucket, align 8
  %28 = load %struct._Py_slist_t*, %struct._Py_slist_t** %old_buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %28, i64 %27
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %29 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %30 = bitcast %struct._Py_slist_item_s* %29 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %30, %struct._Py_hashtable_entry_t** %entry17, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc, %for.body
  %31 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8
  %cmp19 = icmp ne %struct._Py_hashtable_entry_t* %31, null
  br i1 %cmp19, label %for.body.21, label %for.end

for.body.21:                                      ; preds = %for.cond.18
  %32 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8
  %33 = bitcast %struct._Py_hashtable_entry_t* %32 to %struct._Py_slist_item_s*
  %next22 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %33, i32 0, i32 0
  %34 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next22, align 8
  %35 = bitcast %struct._Py_slist_item_s* %34 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %35, %struct._Py_hashtable_entry_t** %next, align 8
  %36 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8
  %key_hash = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %36, i32 0, i32 2
  %37 = load i64, i64* %key_hash, align 8
  %38 = load i64, i64* %new_size, align 8
  %sub = sub i64 %38, 1
  %and = and i64 %37, %sub
  store i64 %and, i64* %entry_index, align 8
  %39 = load i64, i64* %entry_index, align 8
  %40 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets23 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %40, i32 0, i32 2
  %41 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets23, align 8
  %arrayidx24 = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %41, i64 %39
  %42 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry17, align 8
  %43 = bitcast %struct._Py_hashtable_entry_t* %42 to %struct._Py_slist_item_s*
  call void @_Py_slist_prepend(%struct._Py_slist_t* %arrayidx24, %struct._Py_slist_item_s* %43)
  br label %for.inc

for.inc:                                          ; preds = %for.body.21
  %44 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %next, align 8
  store %struct._Py_hashtable_entry_t* %44, %struct._Py_hashtable_entry_t** %entry17, align 8
  br label %for.cond.18

for.end:                                          ; preds = %for.cond.18
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %45 = load i64, i64* %bucket, align 8
  %inc = add i64 %45, 1
  store i64 %inc, i64* %bucket, align 8
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %46 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc27 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %46, i32 0, i32 9
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc27, i32 0, i32 1
  %47 = load void (i8*)*, void (i8*)** %free, align 8
  %48 = load %struct._Py_slist_t*, %struct._Py_slist_t** %old_buckets, align 8
  %49 = bitcast %struct._Py_slist_t* %48 to i8*
  call void %47(i8* %49)
  br label %return

return:                                           ; preds = %for.end.26, %if.then.10, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_get(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call %struct._Py_hashtable_entry_t* @_Py_hashtable_get_entry(%struct._Py_hashtable_t* %0, i8* %1)
  store %struct._Py_hashtable_entry_t* %call, %struct._Py_hashtable_entry_t** %entry1, align 8
  %2 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp = icmp eq %struct._Py_hashtable_entry_t* %2, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %if.end
  %3 = load i8*, i8** %data.addr, align 8
  %4 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %5 = bitcast %struct._Py_hashtable_entry_t* %4 to i8*
  %add.ptr = getelementptr i8, i8* %5, i64 24
  %6 = load i64, i64* %data_size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %3, i8* %add.ptr, i64 %6, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %do.end, %if.then
  %7 = load i32, i32* %retval
  ret i32 %7
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_pop(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load i64, i64* %data_size.addr, align 8
  %call = call i32 @_hashtable_pop_entry(%struct._Py_hashtable_t* %0, i8* %1, i8* %2, i64 %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @_hashtable_pop_entry(%struct._Py_hashtable_t* %ht, i8* %key, i8* %data, i64 %data_size) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %data_size.addr = alloca i64, align 8
  %key_hash = alloca i64, align 8
  %index = alloca i64, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %previous = alloca %struct._Py_hashtable_entry_t*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i64 %data_size, i64* %data_size.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %0, i32 0, i32 4
  %1 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8
  %2 = load i8*, i8** %key.addr, align 8
  %call = call i64 %1(i8* %2)
  store i64 %call, i64* %key_hash, align 8
  %3 = load i64, i64* %key_hash, align 8
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 0
  %5 = load i64, i64* %num_buckets, align 8
  %sub = sub i64 %5, 1
  %and = and i64 %3, %sub
  store i64 %and, i64* %index, align 8
  store %struct._Py_hashtable_entry_t* null, %struct._Py_hashtable_entry_t** %previous, align 8
  %6 = load i64, i64* %index, align 8
  %7 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %7, i32 0, i32 2
  %8 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %8, i64 %6
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %9 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %10 = bitcast %struct._Py_slist_item_s* %9 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %10, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %11 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp = icmp ne %struct._Py_hashtable_entry_t* %11, null
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key_hash2 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %12, i32 0, i32 2
  %13 = load i64, i64* %key_hash2, align 8
  %14 = load i64, i64* %key_hash, align 8
  %cmp3 = icmp eq i64 %13, %14
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %compare_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %15, i32 0, i32 5
  %16 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func, align 8
  %17 = load i8*, i8** %key.addr, align 8
  %18 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %call4 = call i32 %16(i8* %17, %struct._Py_hashtable_entry_t* %18)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  br label %for.end

if.end:                                           ; preds = %land.lhs.true, %for.body
  %19 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  store %struct._Py_hashtable_entry_t* %19, %struct._Py_hashtable_entry_t** %previous, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %21 = bitcast %struct._Py_hashtable_entry_t* %20 to %struct._Py_slist_item_s*
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %21, i32 0, i32 0
  %22 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8
  %23 = bitcast %struct._Py_slist_item_s* %22 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %23, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond

for.end:                                          ; preds = %if.then, %for.cond
  %24 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp5 = icmp eq %struct._Py_hashtable_entry_t* %24, null
  br i1 %cmp5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %for.end
  store i32 0, i32* %retval
  br label %return

if.end.7:                                         ; preds = %for.end
  %25 = load i64, i64* %index, align 8
  %26 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets8 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %26, i32 0, i32 2
  %27 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets8, align 8
  %arrayidx9 = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %27, i64 %25
  %28 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %previous, align 8
  %29 = bitcast %struct._Py_hashtable_entry_t* %28 to %struct._Py_slist_item_s*
  %30 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %31 = bitcast %struct._Py_hashtable_entry_t* %30 to %struct._Py_slist_item_s*
  call void @_Py_slist_remove(%struct._Py_slist_t* %arrayidx9, %struct._Py_slist_item_s* %29, %struct._Py_slist_item_s* %31)
  %32 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %32, i32 0, i32 1
  %33 = load i64, i64* %entries, align 8
  %dec = add i64 %33, -1
  store i64 %dec, i64* %entries, align 8
  %34 = load i8*, i8** %data.addr, align 8
  %cmp10 = icmp ne i8* %34, null
  br i1 %cmp10, label %if.then.11, label %if.end.12

if.then.11:                                       ; preds = %if.end.7
  br label %do.body

do.body:                                          ; preds = %if.then.11
  %35 = load i8*, i8** %data.addr, align 8
  %36 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %37 = bitcast %struct._Py_hashtable_entry_t* %36 to i8*
  %add.ptr = getelementptr i8, i8* %37, i64 24
  %38 = load i64, i64* %data_size.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %35, i8* %add.ptr, i64 %38, i32 1, i1 false)
  br label %do.end

do.end:                                           ; preds = %do.body
  br label %if.end.12

if.end.12:                                        ; preds = %do.end, %if.end.7
  %39 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %39, i32 0, i32 9
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1
  %40 = load void (i8*)*, void (i8*)** %free, align 8
  %41 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %42 = bitcast %struct._Py_hashtable_entry_t* %41 to i8*
  call void %40(i8* %42)
  %43 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %entries13 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %43, i32 0, i32 1
  %44 = load i64, i64* %entries13, align 8
  %conv = uitofp i64 %44 to float
  %45 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets14 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %45, i32 0, i32 0
  %46 = load i64, i64* %num_buckets14, align 8
  %conv15 = uitofp i64 %46 to float
  %div = fdiv float %conv, %conv15
  %conv16 = fpext float %div to double
  %cmp17 = fcmp olt double %conv16, 1.000000e-01
  br i1 %cmp17, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.12
  %47 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  call void @hashtable_rehash(%struct._Py_hashtable_t* %47)
  br label %if.end.20

if.end.20:                                        ; preds = %if.then.19, %if.end.12
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end.20, %if.then.6
  %48 = load i32, i32* %retval
  ret i32 %48
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_delete(%struct._Py_hashtable_t* %ht, i8* %key) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %key.addr = alloca i8*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i8* %key, i8** %key.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %1 = load i8*, i8** %key.addr, align 8
  %call = call i32 @_hashtable_pop_entry(%struct._Py_hashtable_t* %0, i8* %1, i8* null, i64 0)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @_Py_hashtable_foreach(%struct._Py_hashtable_t* %ht, i32 (%struct._Py_hashtable_entry_t*, i8*)* %func, i8* %arg) #0 {
entry:
  %retval = alloca i32, align 4
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %func.addr = alloca i32 (%struct._Py_hashtable_entry_t*, i8*)*, align 8
  %arg.addr = alloca i8*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %hv = alloca i64, align 8
  %res = alloca i32, align 4
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i32 (%struct._Py_hashtable_entry_t*, i8*)* %func, i32 (%struct._Py_hashtable_entry_t*, i8*)** %func.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i64 0, i64* %hv, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.5, %entry
  %0 = load i64, i64* %hv, align 8
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %1, i32 0, i32 0
  %2 = load i64, i64* %num_buckets, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end.6

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %hv, align 8
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 2
  %5 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %5, i64 %3
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %6 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %7 = bitcast %struct._Py_slist_item_s* %6 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %7, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %tobool = icmp ne %struct._Py_hashtable_entry_t* %8, null
  br i1 %tobool, label %for.body.3, label %for.end

for.body.3:                                       ; preds = %for.cond.2
  %9 = load i32 (%struct._Py_hashtable_entry_t*, i8*)*, i32 (%struct._Py_hashtable_entry_t*, i8*)** %func.addr, align 8
  %10 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %11 = load i8*, i8** %arg.addr, align 8
  %call = call i32 %9(%struct._Py_hashtable_entry_t* %10, i8* %11)
  store i32 %call, i32* %res, align 4
  %12 = load i32, i32* %res, align 4
  %tobool4 = icmp ne i32 %12, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.3
  %13 = load i32, i32* %res, align 4
  store i32 %13, i32* %retval
  br label %return

if.end:                                           ; preds = %for.body.3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %14 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %15 = bitcast %struct._Py_hashtable_entry_t* %14 to %struct._Py_slist_item_s*
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %15, i32 0, i32 0
  %16 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8
  %17 = bitcast %struct._Py_slist_item_s* %16 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %17, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  br label %for.inc.5

for.inc.5:                                        ; preds = %for.end
  %18 = load i64, i64* %hv, align 8
  %inc = add i64 %18, 1
  store i64 %inc, i64* %hv, align 8
  br label %for.cond

for.end.6:                                        ; preds = %for.cond
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %for.end.6, %if.then
  %19 = load i32, i32* %retval
  ret i32 %19
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_clear(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %next = alloca %struct._Py_hashtable_entry_t*, align 8
  %i = alloca i64, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.9, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %1, i32 0, i32 0
  %2 = load i64, i64* %num_buckets, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end.10

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 2
  %5 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %5, i64 %3
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %6 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %7 = bitcast %struct._Py_slist_item_s* %6 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %7, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond.2

for.cond.2:                                       ; preds = %for.inc, %for.body
  %8 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %cmp3 = icmp ne %struct._Py_hashtable_entry_t* %8, null
  br i1 %cmp3, label %for.body.4, label %for.end

for.body.4:                                       ; preds = %for.cond.2
  %9 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %10 = bitcast %struct._Py_hashtable_entry_t* %9 to %struct._Py_slist_item_s*
  %next5 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %10, i32 0, i32 0
  %11 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next5, align 8
  %12 = bitcast %struct._Py_slist_item_s* %11 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %12, %struct._Py_hashtable_entry_t** %next, align 8
  %13 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %13, i32 0, i32 7
  %14 = load void (i8*)*, void (i8*)** %free_data_func, align 8
  %tobool = icmp ne void (i8*)* %14, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body.4
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %free_data_func6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %15, i32 0, i32 7
  %16 = load void (i8*)*, void (i8*)** %free_data_func6, align 8
  %17 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %18 = bitcast %struct._Py_hashtable_entry_t* %17 to i8*
  %add.ptr = getelementptr i8, i8* %18, i64 24
  %19 = bitcast i8* %add.ptr to i8**
  %20 = load i8*, i8** %19, align 8
  call void %16(i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.4
  %21 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %21, i32 0, i32 9
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1
  %22 = load void (i8*)*, void (i8*)** %free, align 8
  %23 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %24 = bitcast %struct._Py_hashtable_entry_t* %23 to i8*
  call void %22(i8* %24)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %25 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %next, align 8
  store %struct._Py_hashtable_entry_t* %25, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond.2

for.end:                                          ; preds = %for.cond.2
  %26 = load i64, i64* %i, align 8
  %27 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %27, i32 0, i32 2
  %28 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets7, align 8
  %arrayidx8 = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %28, i64 %26
  call void @_Py_slist_init(%struct._Py_slist_t* %arrayidx8)
  br label %for.inc.9

for.inc.9:                                        ; preds = %for.end
  %29 = load i64, i64* %i, align 8
  %inc = add i64 %29, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end.10:                                       ; preds = %for.cond
  %30 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %entries = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %30, i32 0, i32 1
  store i64 0, i64* %entries, align 8
  %31 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  call void @hashtable_rehash(%struct._Py_hashtable_t* %31)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_Py_slist_init(%struct._Py_slist_t* %list) #0 {
entry:
  %list.addr = alloca %struct._Py_slist_t*, align 8
  store %struct._Py_slist_t* %list, %struct._Py_slist_t** %list.addr, align 8
  %0 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %0, i32 0, i32 0
  store %struct._Py_slist_item_s* null, %struct._Py_slist_item_s** %head, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %ht) #0 {
entry:
  %ht.addr = alloca %struct._Py_hashtable_t*, align 8
  %i = alloca i64, align 8
  %entry1 = alloca %struct._Py_slist_item_s*, align 8
  %entry_next = alloca %struct._Py_slist_item_s*, align 8
  store %struct._Py_hashtable_t* %ht, %struct._Py_hashtable_t** %ht.addr, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i64, i64* %i, align 8
  %1 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %1, i32 0, i32 0
  %2 = load i64, i64* %num_buckets, align 8
  %cmp = icmp ult i64 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i64, i64* %i, align 8
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 2
  %5 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %5, i64 %3
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %6 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  store %struct._Py_slist_item_s* %6, %struct._Py_slist_item_s** %entry1, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %for.body
  %7 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8
  %tobool = icmp ne %struct._Py_slist_item_s* %7, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %8 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %8, i32 0, i32 0
  %9 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8
  store %struct._Py_slist_item_s* %9, %struct._Py_slist_item_s** %entry_next, align 8
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 7
  %11 = load void (i8*)*, void (i8*)** %free_data_func, align 8
  %tobool2 = icmp ne void (i8*)* %11, null
  br i1 %tobool2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %12 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %free_data_func3 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %12, i32 0, i32 7
  %13 = load void (i8*)*, void (i8*)** %free_data_func3, align 8
  %14 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8
  %15 = bitcast %struct._Py_slist_item_s* %14 to i8*
  %add.ptr = getelementptr i8, i8* %15, i64 24
  %16 = bitcast i8* %add.ptr to i8**
  %17 = load i8*, i8** %16, align 8
  call void %13(i8* %17)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %18 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %18, i32 0, i32 9
  %free = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc, i32 0, i32 1
  %19 = load void (i8*)*, void (i8*)** %free, align 8
  %20 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry1, align 8
  %21 = bitcast %struct._Py_slist_item_s* %20 to i8*
  call void %19(i8* %21)
  %22 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %entry_next, align 8
  store %struct._Py_slist_item_s* %22, %struct._Py_slist_item_s** %entry1, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %for.inc

for.inc:                                          ; preds = %while.end
  %23 = load i64, i64* %i, align 8
  %inc = add i64 %23, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %24 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc4 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %24, i32 0, i32 9
  %free5 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc4, i32 0, i32 1
  %25 = load void (i8*)*, void (i8*)** %free5, align 8
  %26 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %buckets6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %26, i32 0, i32 2
  %27 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets6, align 8
  %28 = bitcast %struct._Py_slist_t* %27 to i8*
  call void %25(i8* %28)
  %29 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %alloc7 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %29, i32 0, i32 9
  %free8 = getelementptr inbounds %struct._Py_hashtable_allocator_t, %struct._Py_hashtable_allocator_t* %alloc7, i32 0, i32 1
  %30 = load void (i8*)*, void (i8*)** %free8, align 8
  %31 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %ht.addr, align 8
  %32 = bitcast %struct._Py_hashtable_t* %31 to i8*
  call void %30(i8* %32)
  ret void
}

; Function Attrs: nounwind uwtable
define %struct._Py_hashtable_t* @_Py_hashtable_copy(%struct._Py_hashtable_t* %src) #0 {
entry:
  %retval = alloca %struct._Py_hashtable_t*, align 8
  %src.addr = alloca %struct._Py_hashtable_t*, align 8
  %dst = alloca %struct._Py_hashtable_t*, align 8
  %entry1 = alloca %struct._Py_hashtable_entry_t*, align 8
  %bucket = alloca i64, align 8
  %err = alloca i32, align 4
  %data = alloca i8*, align 8
  %new_data = alloca i8*, align 8
  store %struct._Py_hashtable_t* %src, %struct._Py_hashtable_t** %src.addr, align 8
  %0 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %data_size = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %0, i32 0, i32 3
  %1 = load i64, i64* %data_size, align 8
  %2 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %num_buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %2, i32 0, i32 0
  %3 = load i64, i64* %num_buckets, align 8
  %4 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %hash_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %4, i32 0, i32 4
  %5 = load i64 (i8*)*, i64 (i8*)** %hash_func, align 8
  %6 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %compare_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %6, i32 0, i32 5
  %7 = load i32 (i8*, %struct._Py_hashtable_entry_t*)*, i32 (i8*, %struct._Py_hashtable_entry_t*)** %compare_func, align 8
  %8 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %copy_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %8, i32 0, i32 6
  %9 = load i8* (i8*)*, i8* (i8*)** %copy_data_func, align 8
  %10 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %free_data_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %10, i32 0, i32 7
  %11 = load void (i8*)*, void (i8*)** %free_data_func, align 8
  %12 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %get_data_size_func = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %12, i32 0, i32 8
  %13 = load i64 (i8*)*, i64 (i8*)** %get_data_size_func, align 8
  %14 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %alloc = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %14, i32 0, i32 9
  %call = call %struct._Py_hashtable_t* @_Py_hashtable_new_full(i64 %1, i64 %3, i64 (i8*)* %5, i32 (i8*, %struct._Py_hashtable_entry_t*)* %7, i8* (i8*)* %9, void (i8*)* %11, i64 (i8*)* %13, %struct._Py_hashtable_allocator_t* %alloc)
  store %struct._Py_hashtable_t* %call, %struct._Py_hashtable_t** %dst, align 8
  %15 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8
  %cmp = icmp eq %struct._Py_hashtable_t* %15, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %retval
  br label %return

if.end:                                           ; preds = %entry
  store i64 0, i64* %bucket, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.25, %if.end
  %16 = load i64, i64* %bucket, align 8
  %17 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %num_buckets2 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %17, i32 0, i32 0
  %18 = load i64, i64* %num_buckets2, align 8
  %cmp3 = icmp ult i64 %16, %18
  br i1 %cmp3, label %for.body, label %for.end.26

for.body:                                         ; preds = %for.cond
  %19 = load i64, i64* %bucket, align 8
  %20 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %buckets = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %20, i32 0, i32 2
  %21 = load %struct._Py_slist_t*, %struct._Py_slist_t** %buckets, align 8
  %arrayidx = getelementptr %struct._Py_slist_t, %struct._Py_slist_t* %21, i64 %19
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %arrayidx, i32 0, i32 0
  %22 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %head, align 8
  %23 = bitcast %struct._Py_slist_item_s* %22 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %23, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc, %for.body
  %24 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %tobool = icmp ne %struct._Py_hashtable_entry_t* %24, null
  br i1 %tobool, label %for.body.5, label %for.end

for.body.5:                                       ; preds = %for.cond.4
  %25 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %copy_data_func6 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %25, i32 0, i32 6
  %26 = load i8* (i8*)*, i8* (i8*)** %copy_data_func6, align 8
  %tobool7 = icmp ne i8* (i8*)* %26, null
  br i1 %tobool7, label %if.then.8, label %if.else.16

if.then.8:                                        ; preds = %for.body.5
  %27 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %28 = bitcast %struct._Py_hashtable_entry_t* %27 to i8*
  %add.ptr = getelementptr i8, i8* %28, i64 24
  %29 = bitcast i8* %add.ptr to i8**
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %data, align 8
  %31 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %copy_data_func9 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %31, i32 0, i32 6
  %32 = load i8* (i8*)*, i8* (i8*)** %copy_data_func9, align 8
  %33 = load i8*, i8** %data, align 8
  %call10 = call i8* %32(i8* %33)
  store i8* %call10, i8** %new_data, align 8
  %34 = load i8*, i8** %new_data, align 8
  %cmp11 = icmp ne i8* %34, null
  br i1 %cmp11, label %if.then.12, label %if.else

if.then.12:                                       ; preds = %if.then.8
  %35 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8
  %36 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %36, i32 0, i32 1
  %37 = load i8*, i8** %key, align 8
  %38 = bitcast i8** %new_data to i8*
  %39 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %data_size13 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %39, i32 0, i32 3
  %40 = load i64, i64* %data_size13, align 8
  %call14 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %35, i8* %37, i8* %38, i64 %40)
  store i32 %call14, i32* %err, align 4
  br label %if.end.15

if.else:                                          ; preds = %if.then.8
  store i32 1, i32* %err, align 4
  br label %if.end.15

if.end.15:                                        ; preds = %if.else, %if.then.12
  br label %if.end.21

if.else.16:                                       ; preds = %for.body.5
  %41 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %42 = bitcast %struct._Py_hashtable_entry_t* %41 to i8*
  %add.ptr17 = getelementptr i8, i8* %42, i64 24
  store i8* %add.ptr17, i8** %data, align 8
  %43 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8
  %44 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %key18 = getelementptr inbounds %struct._Py_hashtable_entry_t, %struct._Py_hashtable_entry_t* %44, i32 0, i32 1
  %45 = load i8*, i8** %key18, align 8
  %46 = load i8*, i8** %data, align 8
  %47 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %src.addr, align 8
  %data_size19 = getelementptr inbounds %struct._Py_hashtable_t, %struct._Py_hashtable_t* %47, i32 0, i32 3
  %48 = load i64, i64* %data_size19, align 8
  %call20 = call i32 @_Py_hashtable_set(%struct._Py_hashtable_t* %43, i8* %45, i8* %46, i64 %48)
  store i32 %call20, i32* %err, align 4
  br label %if.end.21

if.end.21:                                        ; preds = %if.else.16, %if.end.15
  %49 = load i32, i32* %err, align 4
  %tobool22 = icmp ne i32 %49, 0
  br i1 %tobool22, label %if.then.23, label %if.end.24

if.then.23:                                       ; preds = %if.end.21
  %50 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8
  call void @_Py_hashtable_destroy(%struct._Py_hashtable_t* %50)
  store %struct._Py_hashtable_t* null, %struct._Py_hashtable_t** %retval
  br label %return

if.end.24:                                        ; preds = %if.end.21
  br label %for.inc

for.inc:                                          ; preds = %if.end.24
  %51 = load %struct._Py_hashtable_entry_t*, %struct._Py_hashtable_entry_t** %entry1, align 8
  %52 = bitcast %struct._Py_hashtable_entry_t* %51 to %struct._Py_slist_item_s*
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %52, i32 0, i32 0
  %53 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8
  %54 = bitcast %struct._Py_slist_item_s* %53 to %struct._Py_hashtable_entry_t*
  store %struct._Py_hashtable_entry_t* %54, %struct._Py_hashtable_entry_t** %entry1, align 8
  br label %for.cond.4

for.end:                                          ; preds = %for.cond.4
  br label %for.inc.25

for.inc.25:                                       ; preds = %for.end
  %55 = load i64, i64* %bucket, align 8
  %inc = add i64 %55, 1
  store i64 %inc, i64* %bucket, align 8
  br label %for.cond

for.end.26:                                       ; preds = %for.cond
  %56 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %dst, align 8
  store %struct._Py_hashtable_t* %56, %struct._Py_hashtable_t** %retval
  br label %return

return:                                           ; preds = %for.end.26, %if.then.23, %if.then
  %57 = load %struct._Py_hashtable_t*, %struct._Py_hashtable_t** %retval
  ret %struct._Py_hashtable_t* %57
}

; Function Attrs: nounwind uwtable
define internal void @_Py_slist_remove(%struct._Py_slist_t* %list, %struct._Py_slist_item_s* %previous, %struct._Py_slist_item_s* %item) #0 {
entry:
  %list.addr = alloca %struct._Py_slist_t*, align 8
  %previous.addr = alloca %struct._Py_slist_item_s*, align 8
  %item.addr = alloca %struct._Py_slist_item_s*, align 8
  store %struct._Py_slist_t* %list, %struct._Py_slist_t** %list.addr, align 8
  store %struct._Py_slist_item_s* %previous, %struct._Py_slist_item_s** %previous.addr, align 8
  store %struct._Py_slist_item_s* %item, %struct._Py_slist_item_s** %item.addr, align 8
  %0 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %previous.addr, align 8
  %cmp = icmp ne %struct._Py_slist_item_s* %0, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8
  %next = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %1, i32 0, i32 0
  %2 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next, align 8
  %3 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %previous.addr, align 8
  %next1 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %3, i32 0, i32 0
  store %struct._Py_slist_item_s* %2, %struct._Py_slist_item_s** %next1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %item.addr, align 8
  %next2 = getelementptr inbounds %struct._Py_slist_item_s, %struct._Py_slist_item_s* %4, i32 0, i32 0
  %5 = load %struct._Py_slist_item_s*, %struct._Py_slist_item_s** %next2, align 8
  %6 = load %struct._Py_slist_t*, %struct._Py_slist_t** %list.addr, align 8
  %head = getelementptr inbounds %struct._Py_slist_t, %struct._Py_slist_t* %6, i32 0, i32 0
  store %struct._Py_slist_item_s* %5, %struct._Py_slist_item_s** %head, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
