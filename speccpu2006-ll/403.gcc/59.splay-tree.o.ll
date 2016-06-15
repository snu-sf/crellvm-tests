; ModuleID = 'splay-tree.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.splay_tree_s = type { %struct.splay_tree_node_s*, i32 (i64, i64)*, void (i64)*, void (i64)*, i8* (i32, i8*)*, void (i8*, i8*)*, i8* }
%struct.splay_tree_node_s = type { i64, i64, %struct.splay_tree_node_s*, %struct.splay_tree_node_s* }

; Function Attrs: nounwind uwtable
define %struct.splay_tree_s* @splay_tree_new(i32 (i64, i64)* %compare_fn, void (i64)* %delete_key_fn, void (i64)* %delete_value_fn) #0 {
entry:
  %compare_fn.addr = alloca i32 (i64, i64)*, align 8
  %delete_key_fn.addr = alloca void (i64)*, align 8
  %delete_value_fn.addr = alloca void (i64)*, align 8
  store i32 (i64, i64)* %compare_fn, i32 (i64, i64)** %compare_fn.addr, align 8
  store void (i64)* %delete_key_fn, void (i64)** %delete_key_fn.addr, align 8
  store void (i64)* %delete_value_fn, void (i64)** %delete_value_fn.addr, align 8
  %0 = load i32 (i64, i64)*, i32 (i64, i64)** %compare_fn.addr, align 8
  %1 = load void (i64)*, void (i64)** %delete_key_fn.addr, align 8
  %2 = load void (i64)*, void (i64)** %delete_value_fn.addr, align 8
  %call = call %struct.splay_tree_s* @splay_tree_new_with_allocator(i32 (i64, i64)* %0, void (i64)* %1, void (i64)* %2, i8* (i32, i8*)* @splay_tree_xmalloc_allocate, void (i8*, i8*)* @splay_tree_xmalloc_deallocate, i8* null)
  ret %struct.splay_tree_s* %call
}

; Function Attrs: nounwind uwtable
define %struct.splay_tree_s* @splay_tree_new_with_allocator(i32 (i64, i64)* %compare_fn, void (i64)* %delete_key_fn, void (i64)* %delete_value_fn, i8* (i32, i8*)* %allocate_fn, void (i8*, i8*)* %deallocate_fn, i8* %allocate_data) #0 {
entry:
  %compare_fn.addr = alloca i32 (i64, i64)*, align 8
  %delete_key_fn.addr = alloca void (i64)*, align 8
  %delete_value_fn.addr = alloca void (i64)*, align 8
  %allocate_fn.addr = alloca i8* (i32, i8*)*, align 8
  %deallocate_fn.addr = alloca void (i8*, i8*)*, align 8
  %allocate_data.addr = alloca i8*, align 8
  %sp = alloca %struct.splay_tree_s*, align 8
  store i32 (i64, i64)* %compare_fn, i32 (i64, i64)** %compare_fn.addr, align 8
  store void (i64)* %delete_key_fn, void (i64)** %delete_key_fn.addr, align 8
  store void (i64)* %delete_value_fn, void (i64)** %delete_value_fn.addr, align 8
  store i8* (i32, i8*)* %allocate_fn, i8* (i32, i8*)** %allocate_fn.addr, align 8
  store void (i8*, i8*)* %deallocate_fn, void (i8*, i8*)** %deallocate_fn.addr, align 8
  store i8* %allocate_data, i8** %allocate_data.addr, align 8
  %0 = load i8* (i32, i8*)*, i8* (i32, i8*)** %allocate_fn.addr, align 8
  %1 = load i8*, i8** %allocate_data.addr, align 8
  %call = call i8* %0(i32 56, i8* %1)
  %2 = bitcast i8* %call to %struct.splay_tree_s*
  store %struct.splay_tree_s* %2, %struct.splay_tree_s** %sp, align 8
  %3 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %3, i32 0, i32 0
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %root, align 8
  %4 = load i32 (i64, i64)*, i32 (i64, i64)** %compare_fn.addr, align 8
  %5 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %5, i32 0, i32 1
  store i32 (i64, i64)* %4, i32 (i64, i64)** %comp, align 8
  %6 = load void (i64)*, void (i64)** %delete_key_fn.addr, align 8
  %7 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  %delete_key = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %7, i32 0, i32 2
  store void (i64)* %6, void (i64)** %delete_key, align 8
  %8 = load void (i64)*, void (i64)** %delete_value_fn.addr, align 8
  %9 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  %delete_value = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %9, i32 0, i32 3
  store void (i64)* %8, void (i64)** %delete_value, align 8
  %10 = load i8* (i32, i8*)*, i8* (i32, i8*)** %allocate_fn.addr, align 8
  %11 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  %allocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %11, i32 0, i32 4
  store i8* (i32, i8*)* %10, i8* (i32, i8*)** %allocate, align 8
  %12 = load void (i8*, i8*)*, void (i8*, i8*)** %deallocate_fn.addr, align 8
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  %deallocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %13, i32 0, i32 5
  store void (i8*, i8*)* %12, void (i8*, i8*)** %deallocate, align 8
  %14 = load i8*, i8** %allocate_data.addr, align 8
  %15 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  %allocate_data1 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %15, i32 0, i32 6
  store i8* %14, i8** %allocate_data1, align 8
  %16 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp, align 8
  ret %struct.splay_tree_s* %16
}

; Function Attrs: nounwind uwtable
define internal i8* @splay_tree_xmalloc_allocate(i32 %size, i8* %data) #0 {
entry:
  %size.addr = alloca i32, align 4
  %data.addr = alloca i8*, align 8
  store i32 %size, i32* %size.addr, align 4
  store i8* %data, i8** %data.addr, align 8
  %0 = load i32, i32* %size.addr, align 4
  %conv = sext i32 %0 to i64
  %call = call noalias i8* @xmalloc(i64 %conv)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define internal void @splay_tree_xmalloc_deallocate(i8* %object, i8* %data) #0 {
entry:
  %object.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  store i8* %object, i8** %object.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load i8*, i8** %object.addr, align 8
  call void @free(i8* %0) #3
  ret void
}

; Function Attrs: nounwind uwtable
define void @splay_tree_delete(%struct.splay_tree_s* %sp) #0 {
entry:
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %1, i32 0, i32 0
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  call void @splay_tree_delete_helper(%struct.splay_tree_s* %0, %struct.splay_tree_node_s* %2)
  %3 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %deallocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %3, i32 0, i32 5
  %4 = load void (i8*, i8*)*, void (i8*, i8*)** %deallocate, align 8
  %5 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %6 = bitcast %struct.splay_tree_s* %5 to i8*
  %7 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %7, i32 0, i32 6
  %8 = load i8*, i8** %allocate_data, align 8
  call void %4(i8* %6, i8* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @splay_tree_delete_helper(%struct.splay_tree_s* %sp, %struct.splay_tree_node_s* %node) #0 {
entry:
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %node.addr = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store %struct.splay_tree_node_s* %node, %struct.splay_tree_node_s** %node.addr, align 8
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %2, i32 0, i32 2
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  call void @splay_tree_delete_helper(%struct.splay_tree_s* %1, %struct.splay_tree_node_s* %3)
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %5 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %5, i32 0, i32 3
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  call void @splay_tree_delete_helper(%struct.splay_tree_s* %4, %struct.splay_tree_node_s* %6)
  %7 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_key = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %7, i32 0, i32 2
  %8 = load void (i64)*, void (i64)** %delete_key, align 8
  %tobool1 = icmp ne void (i64)* %8, null
  br i1 %tobool1, label %if.then.2, label %if.end.4

if.then.2:                                        ; preds = %if.end
  %9 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_key3 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %9, i32 0, i32 2
  %10 = load void (i64)*, void (i64)** %delete_key3, align 8
  %11 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %key = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %11, i32 0, i32 0
  %12 = load i64, i64* %key, align 8
  call void %10(i64 %12)
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.2, %if.end
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_value = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %13, i32 0, i32 3
  %14 = load void (i64)*, void (i64)** %delete_value, align 8
  %tobool5 = icmp ne void (i64)* %14, null
  br i1 %tobool5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.end.4
  %15 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_value7 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %15, i32 0, i32 3
  %16 = load void (i64)*, void (i64)** %delete_value7, align 8
  %17 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %17, i32 0, i32 1
  %18 = load i64, i64* %value, align 8
  call void %16(i64 %18)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.end.4
  %19 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %deallocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %19, i32 0, i32 5
  %20 = load void (i8*, i8*)*, void (i8*, i8*)** %deallocate, align 8
  %21 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %22 = bitcast %struct.splay_tree_node_s* %21 to i8*
  %23 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %23, i32 0, i32 6
  %24 = load i8*, i8** %allocate_data, align 8
  call void %20(i8* %22, i8* %24)
  br label %return

return:                                           ; preds = %if.end.8, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.splay_tree_node_s* @splay_tree_insert(%struct.splay_tree_s* %sp, i64 %key, i64 %value) #0 {
entry:
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %key.addr = alloca i64, align 8
  %value.addr = alloca i64, align 8
  %comparison = alloca i32, align 4
  %node = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i64 %value, i64* %value.addr, align 8
  store i32 0, i32* %comparison, align 4
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  call void @splay_tree_splay(%struct.splay_tree_s* %0, i64 %1)
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %2, i32 0, i32 0
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %3, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %4, i32 0, i32 1
  %5 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8
  %6 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root1 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %6, i32 0, i32 0
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root1, align 8
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %7, i32 0, i32 0
  %8 = load i64, i64* %key2, align 8
  %9 = load i64, i64* %key.addr, align 8
  %call = call i32 %5(i64 %8, i64 %9)
  store i32 %call, i32* %comparison, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root3 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %10, i32 0, i32 0
  %11 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root3, align 8
  %tobool4 = icmp ne %struct.splay_tree_node_s* %11, null
  br i1 %tobool4, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end
  %12 = load i32, i32* %comparison, align 4
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %land.lhs.true
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_value = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %13, i32 0, i32 3
  %14 = load void (i64)*, void (i64)** %delete_value, align 8
  %tobool6 = icmp ne void (i64)* %14, null
  br i1 %tobool6, label %if.then.7, label %if.end.11

if.then.7:                                        ; preds = %if.then.5
  %15 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_value8 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %15, i32 0, i32 3
  %16 = load void (i64)*, void (i64)** %delete_value8, align 8
  %17 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root9 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %17, i32 0, i32 0
  %18 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root9, align 8
  %value10 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %18, i32 0, i32 1
  %19 = load i64, i64* %value10, align 8
  call void %16(i64 %19)
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.7, %if.then.5
  %20 = load i64, i64* %value.addr, align 8
  %21 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root12 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %21, i32 0, i32 0
  %22 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root12, align 8
  %value13 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %22, i32 0, i32 1
  store i64 %20, i64* %value13, align 8
  br label %if.end.41

if.else:                                          ; preds = %land.lhs.true, %if.end
  %23 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %allocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %23, i32 0, i32 4
  %24 = load i8* (i32, i8*)*, i8* (i32, i8*)** %allocate, align 8
  %25 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %25, i32 0, i32 6
  %26 = load i8*, i8** %allocate_data, align 8
  %call14 = call i8* %24(i32 32, i8* %26)
  %27 = bitcast i8* %call14 to %struct.splay_tree_node_s*
  store %struct.splay_tree_node_s* %27, %struct.splay_tree_node_s** %node, align 8
  %28 = load i64, i64* %key.addr, align 8
  %29 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %key15 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %29, i32 0, i32 0
  store i64 %28, i64* %key15, align 8
  %30 = load i64, i64* %value.addr, align 8
  %31 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %value16 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %31, i32 0, i32 1
  store i64 %30, i64* %value16, align 8
  %32 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root17 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %32, i32 0, i32 0
  %33 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root17, align 8
  %tobool18 = icmp ne %struct.splay_tree_node_s* %33, null
  br i1 %tobool18, label %if.else.20, label %if.then.19

if.then.19:                                       ; preds = %if.else
  %34 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %34, i32 0, i32 3
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %right, align 8
  %35 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %35, i32 0, i32 2
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %left, align 8
  br label %if.end.39

if.else.20:                                       ; preds = %if.else
  %36 = load i32, i32* %comparison, align 4
  %cmp21 = icmp slt i32 %36, 0
  br i1 %cmp21, label %if.then.22, label %if.else.30

if.then.22:                                       ; preds = %if.else.20
  %37 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root23 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %37, i32 0, i32 0
  %38 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root23, align 8
  %39 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %left24 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %39, i32 0, i32 2
  store %struct.splay_tree_node_s* %38, %struct.splay_tree_node_s** %left24, align 8
  %40 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %left25 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %40, i32 0, i32 2
  %41 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left25, align 8
  %right26 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %41, i32 0, i32 3
  %42 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right26, align 8
  %43 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %right27 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %43, i32 0, i32 3
  store %struct.splay_tree_node_s* %42, %struct.splay_tree_node_s** %right27, align 8
  %44 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %left28 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %44, i32 0, i32 2
  %45 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left28, align 8
  %right29 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %45, i32 0, i32 3
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %right29, align 8
  br label %if.end.38

if.else.30:                                       ; preds = %if.else.20
  %46 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root31 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %46, i32 0, i32 0
  %47 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root31, align 8
  %48 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %right32 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %48, i32 0, i32 3
  store %struct.splay_tree_node_s* %47, %struct.splay_tree_node_s** %right32, align 8
  %49 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %right33 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %49, i32 0, i32 3
  %50 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right33, align 8
  %left34 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %50, i32 0, i32 2
  %51 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left34, align 8
  %52 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %left35 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %52, i32 0, i32 2
  store %struct.splay_tree_node_s* %51, %struct.splay_tree_node_s** %left35, align 8
  %53 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %right36 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %53, i32 0, i32 3
  %54 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right36, align 8
  %left37 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %54, i32 0, i32 2
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %left37, align 8
  br label %if.end.38

if.end.38:                                        ; preds = %if.else.30, %if.then.22
  br label %if.end.39

if.end.39:                                        ; preds = %if.end.38, %if.then.19
  %55 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %56 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root40 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %56, i32 0, i32 0
  store %struct.splay_tree_node_s* %55, %struct.splay_tree_node_s** %root40, align 8
  br label %if.end.41

if.end.41:                                        ; preds = %if.end.39, %if.end.11
  %57 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root42 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %57, i32 0, i32 0
  %58 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root42, align 8
  ret %struct.splay_tree_node_s* %58
}

; Function Attrs: nounwind uwtable
define internal void @splay_tree_splay(%struct.splay_tree_s* %sp, i64 %key) #0 {
entry:
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %key.addr = alloca i64, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %0, i32 0, i32 0
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  %cmp = icmp eq %struct.splay_tree_node_s* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %3 = load i64, i64* %key.addr, align 8
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root1 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %4, i32 0, i32 0
  %call = call %struct.splay_tree_node_s* @splay_tree_splay_helper(%struct.splay_tree_s* %2, i64 %3, %struct.splay_tree_node_s** %root1, %struct.splay_tree_node_s** null, %struct.splay_tree_node_s** null)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define void @splay_tree_remove(%struct.splay_tree_s* %sp, i64 %key) #0 {
entry:
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %key.addr = alloca i64, align 8
  %left = alloca %struct.splay_tree_node_s*, align 8
  %right = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  call void @splay_tree_splay(%struct.splay_tree_s* %0, i64 %1)
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %2, i32 0, i32 0
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.end.24

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %4, i32 0, i32 1
  %5 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8
  %6 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root1 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %6, i32 0, i32 0
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root1, align 8
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %7, i32 0, i32 0
  %8 = load i64, i64* %key2, align 8
  %9 = load i64, i64* %key.addr, align 8
  %call = call i32 %5(i64 %8, i64 %9)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end.24

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root3 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %10, i32 0, i32 0
  %11 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root3, align 8
  %left4 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %11, i32 0, i32 2
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left4, align 8
  store %struct.splay_tree_node_s* %12, %struct.splay_tree_node_s** %left, align 8
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root5 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %13, i32 0, i32 0
  %14 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root5, align 8
  %right6 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %14, i32 0, i32 3
  %15 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right6, align 8
  store %struct.splay_tree_node_s* %15, %struct.splay_tree_node_s** %right, align 8
  %16 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_value = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %16, i32 0, i32 3
  %17 = load void (i64)*, void (i64)** %delete_value, align 8
  %tobool7 = icmp ne void (i64)* %17, null
  br i1 %tobool7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %if.then
  %18 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %delete_value9 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %18, i32 0, i32 3
  %19 = load void (i64)*, void (i64)** %delete_value9, align 8
  %20 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root10 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %20, i32 0, i32 0
  %21 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root10, align 8
  %value = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %21, i32 0, i32 1
  %22 = load i64, i64* %value, align 8
  call void %19(i64 %22)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %if.then
  %23 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %deallocate = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %23, i32 0, i32 5
  %24 = load void (i8*, i8*)*, void (i8*, i8*)** %deallocate, align 8
  %25 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root11 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %25, i32 0, i32 0
  %26 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root11, align 8
  %27 = bitcast %struct.splay_tree_node_s* %26 to i8*
  %28 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %allocate_data = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %28, i32 0, i32 6
  %29 = load i8*, i8** %allocate_data, align 8
  call void %24(i8* %27, i8* %29)
  %30 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %tobool12 = icmp ne %struct.splay_tree_node_s* %30, null
  br i1 %tobool12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end
  %31 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %32 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root14 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %32, i32 0, i32 0
  store %struct.splay_tree_node_s* %31, %struct.splay_tree_node_s** %root14, align 8
  %33 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  %tobool15 = icmp ne %struct.splay_tree_node_s* %33, null
  br i1 %tobool15, label %if.then.16, label %if.end.21

if.then.16:                                       ; preds = %if.then.13
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.16
  %34 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %right17 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %34, i32 0, i32 3
  %35 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right17, align 8
  %tobool18 = icmp ne %struct.splay_tree_node_s* %35, null
  br i1 %tobool18, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %36 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %right19 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %36, i32 0, i32 3
  %37 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right19, align 8
  store %struct.splay_tree_node_s* %37, %struct.splay_tree_node_s** %left, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %38 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  %39 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %right20 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %39, i32 0, i32 3
  store %struct.splay_tree_node_s* %38, %struct.splay_tree_node_s** %right20, align 8
  br label %if.end.21

if.end.21:                                        ; preds = %while.end, %if.then.13
  br label %if.end.23

if.else:                                          ; preds = %if.end
  %40 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  %41 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root22 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %41, i32 0, i32 0
  store %struct.splay_tree_node_s* %40, %struct.splay_tree_node_s** %root22, align 8
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.end.21
  br label %if.end.24

if.end.24:                                        ; preds = %if.end.23, %land.lhs.true, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define %struct.splay_tree_node_s* @splay_tree_lookup(%struct.splay_tree_s* %sp, i64 %key) #0 {
entry:
  %retval = alloca %struct.splay_tree_node_s*, align 8
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %key.addr = alloca i64, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  call void @splay_tree_splay(%struct.splay_tree_s* %0, i64 %1)
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %2, i32 0, i32 0
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %3, null
  br i1 %tobool, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %4, i32 0, i32 1
  %5 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8
  %6 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root1 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %6, i32 0, i32 0
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root1, align 8
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %7, i32 0, i32 0
  %8 = load i64, i64* %key2, align 8
  %9 = load i64, i64* %key.addr, align 8
  %call = call i32 %5(i64 %8, i64 %9)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %10 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root3 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %10, i32 0, i32 0
  %11 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root3, align 8
  store %struct.splay_tree_node_s* %11, %struct.splay_tree_node_s** %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true, %entry
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %retval
  br label %return

return:                                           ; preds = %if.else, %if.then
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %retval
  ret %struct.splay_tree_node_s* %12
}

; Function Attrs: nounwind uwtable
define %struct.splay_tree_node_s* @splay_tree_max(%struct.splay_tree_s* %sp) #0 {
entry:
  %retval = alloca %struct.splay_tree_node_s*, align 8
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %0, i32 0, i32 0
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  store %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s** %n, align 8
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i32 0, i32 3
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  %tobool1 = icmp ne %struct.splay_tree_node_s* %4, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %5, i32 0, i32 3
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right2, align 8
  store %struct.splay_tree_node_s* %6, %struct.splay_tree_node_s** %n, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %7, %struct.splay_tree_node_s** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %retval
  ret %struct.splay_tree_node_s* %8
}

; Function Attrs: nounwind uwtable
define %struct.splay_tree_node_s* @splay_tree_min(%struct.splay_tree_s* %sp) #0 {
entry:
  %retval = alloca %struct.splay_tree_node_s*, align 8
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %0, i32 0, i32 0
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  store %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s** %n, align 8
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %3, i32 0, i32 2
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %tobool1 = icmp ne %struct.splay_tree_node_s* %4, null
  br i1 %tobool1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %5, i32 0, i32 2
  %6 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left2, align 8
  store %struct.splay_tree_node_s* %6, %struct.splay_tree_node_s** %n, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %7, %struct.splay_tree_node_s** %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %8 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %retval
  ret %struct.splay_tree_node_s* %8
}

; Function Attrs: nounwind uwtable
define %struct.splay_tree_node_s* @splay_tree_predecessor(%struct.splay_tree_s* %sp, i64 %key) #0 {
entry:
  %retval = alloca %struct.splay_tree_node_s*, align 8
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %key.addr = alloca i64, align 8
  %comparison = alloca i32, align 4
  %node = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %0, i32 0, i32 0
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %3 = load i64, i64* %key.addr, align 8
  call void @splay_tree_splay(%struct.splay_tree_s* %2, i64 %3)
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %4, i32 0, i32 1
  %5 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8
  %6 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root1 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %6, i32 0, i32 0
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root1, align 8
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %7, i32 0, i32 0
  %8 = load i64, i64* %key2, align 8
  %9 = load i64, i64* %key.addr, align 8
  %call = call i32 %5(i64 %8, i64 %9)
  store i32 %call, i32* %comparison, align 4
  %10 = load i32, i32* %comparison, align 4
  %cmp = icmp slt i32 %10, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root4 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %11, i32 0, i32 0
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root4, align 8
  store %struct.splay_tree_node_s* %12, %struct.splay_tree_node_s** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root6 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %13, i32 0, i32 0
  %14 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root6, align 8
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %14, i32 0, i32 2
  %15 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  store %struct.splay_tree_node_s* %15, %struct.splay_tree_node_s** %node, align 8
  %16 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %tobool7 = icmp ne %struct.splay_tree_node_s* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %17 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %17, i32 0, i32 3
  %18 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  %tobool9 = icmp ne %struct.splay_tree_node_s* %18, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %right10 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %19, i32 0, i32 3
  %20 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right10, align 8
  store %struct.splay_tree_node_s* %20, %struct.splay_tree_node_s** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.11

if.end.11:                                        ; preds = %while.end, %if.end.5
  %21 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  store %struct.splay_tree_node_s* %21, %struct.splay_tree_node_s** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.3, %if.then
  %22 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %retval
  ret %struct.splay_tree_node_s* %22
}

; Function Attrs: nounwind uwtable
define %struct.splay_tree_node_s* @splay_tree_successor(%struct.splay_tree_s* %sp, i64 %key) #0 {
entry:
  %retval = alloca %struct.splay_tree_node_s*, align 8
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %key.addr = alloca i64, align 8
  %comparison = alloca i32, align 4
  %node = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %0, i32 0, i32 0
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %1, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store %struct.splay_tree_node_s* null, %struct.splay_tree_node_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %3 = load i64, i64* %key.addr, align 8
  call void @splay_tree_splay(%struct.splay_tree_s* %2, i64 %3)
  %4 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %4, i32 0, i32 1
  %5 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8
  %6 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root1 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %6, i32 0, i32 0
  %7 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root1, align 8
  %key2 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %7, i32 0, i32 0
  %8 = load i64, i64* %key2, align 8
  %9 = load i64, i64* %key.addr, align 8
  %call = call i32 %5(i64 %8, i64 %9)
  store i32 %call, i32* %comparison, align 4
  %10 = load i32, i32* %comparison, align 4
  %cmp = icmp sgt i32 %10, 0
  br i1 %cmp, label %if.then.3, label %if.end.5

if.then.3:                                        ; preds = %if.end
  %11 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root4 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %11, i32 0, i32 0
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root4, align 8
  store %struct.splay_tree_node_s* %12, %struct.splay_tree_node_s** %retval
  br label %return

if.end.5:                                         ; preds = %if.end
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root6 = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %13, i32 0, i32 0
  %14 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root6, align 8
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %14, i32 0, i32 3
  %15 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  store %struct.splay_tree_node_s* %15, %struct.splay_tree_node_s** %node, align 8
  %16 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %tobool7 = icmp ne %struct.splay_tree_node_s* %16, null
  br i1 %tobool7, label %if.then.8, label %if.end.11

if.then.8:                                        ; preds = %if.end.5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then.8
  %17 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %17, i32 0, i32 2
  %18 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %tobool9 = icmp ne %struct.splay_tree_node_s* %18, null
  br i1 %tobool9, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %19 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  %left10 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %19, i32 0, i32 2
  %20 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left10, align 8
  store %struct.splay_tree_node_s* %20, %struct.splay_tree_node_s** %node, align 8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %if.end.11

if.end.11:                                        ; preds = %while.end, %if.end.5
  %21 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node, align 8
  store %struct.splay_tree_node_s* %21, %struct.splay_tree_node_s** %retval
  br label %return

return:                                           ; preds = %if.end.11, %if.then.3, %if.then
  %22 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %retval
  ret %struct.splay_tree_node_s* %22
}

; Function Attrs: nounwind uwtable
define i32 @splay_tree_foreach(%struct.splay_tree_s* %sp, i32 (%struct.splay_tree_node_s*, i8*)* %fn, i8* %data) #0 {
entry:
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %fn.addr = alloca i32 (%struct.splay_tree_node_s*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i32 (%struct.splay_tree_node_s*, i8*)* %fn, i32 (%struct.splay_tree_node_s*, i8*)** %fn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %root = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %1, i32 0, i32 0
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %root, align 8
  %3 = load i32 (%struct.splay_tree_node_s*, i8*)*, i32 (%struct.splay_tree_node_s*, i8*)** %fn.addr, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %call = call i32 @splay_tree_foreach_helper(%struct.splay_tree_s* %0, %struct.splay_tree_node_s* %2, i32 (%struct.splay_tree_node_s*, i8*)* %3, i8* %4)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @splay_tree_foreach_helper(%struct.splay_tree_s* %sp, %struct.splay_tree_node_s* %node, i32 (%struct.splay_tree_node_s*, i8*)* %fn, i8* %data) #0 {
entry:
  %retval = alloca i32, align 4
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %node.addr = alloca %struct.splay_tree_node_s*, align 8
  %fn.addr = alloca i32 (%struct.splay_tree_node_s*, i8*)*, align 8
  %data.addr = alloca i8*, align 8
  %val = alloca i32, align 4
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store %struct.splay_tree_node_s* %node, %struct.splay_tree_node_s** %node.addr, align 8
  store i32 (%struct.splay_tree_node_s*, i8*)* %fn, i32 (%struct.splay_tree_node_s*, i8*)** %fn.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %1 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %2, i32 0, i32 2
  %3 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left, align 8
  %4 = load i32 (%struct.splay_tree_node_s*, i8*)*, i32 (%struct.splay_tree_node_s*, i8*)** %fn.addr, align 8
  %5 = load i8*, i8** %data.addr, align 8
  %call = call i32 @splay_tree_foreach_helper(%struct.splay_tree_s* %1, %struct.splay_tree_node_s* %3, i32 (%struct.splay_tree_node_s*, i8*)* %4, i8* %5)
  store i32 %call, i32* %val, align 4
  %6 = load i32, i32* %val, align 4
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then.2, label %if.end.3

if.then.2:                                        ; preds = %if.end
  %7 = load i32, i32* %val, align 4
  store i32 %7, i32* %retval
  br label %return

if.end.3:                                         ; preds = %if.end
  %8 = load i32 (%struct.splay_tree_node_s*, i8*)*, i32 (%struct.splay_tree_node_s*, i8*)** %fn.addr, align 8
  %9 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %10 = load i8*, i8** %data.addr, align 8
  %call4 = call i32 %8(%struct.splay_tree_node_s* %9, i8* %10)
  store i32 %call4, i32* %val, align 4
  %11 = load i32, i32* %val, align 4
  %tobool5 = icmp ne i32 %11, 0
  br i1 %tobool5, label %if.then.6, label %if.end.7

if.then.6:                                        ; preds = %if.end.3
  %12 = load i32, i32* %val, align 4
  store i32 %12, i32* %retval
  br label %return

if.end.7:                                         ; preds = %if.end.3
  %13 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %14 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %node.addr, align 8
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %14, i32 0, i32 3
  %15 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right, align 8
  %16 = load i32 (%struct.splay_tree_node_s*, i8*)*, i32 (%struct.splay_tree_node_s*, i8*)** %fn.addr, align 8
  %17 = load i8*, i8** %data.addr, align 8
  %call8 = call i32 @splay_tree_foreach_helper(%struct.splay_tree_s* %13, %struct.splay_tree_node_s* %15, i32 (%struct.splay_tree_node_s*, i8*)* %16, i8* %17)
  store i32 %call8, i32* %retval
  br label %return

return:                                           ; preds = %if.end.7, %if.then.6, %if.then.2, %if.then
  %18 = load i32, i32* %retval
  ret i32 %18
}

; Function Attrs: nounwind uwtable
define i32 @splay_tree_compare_ints(i64 %k1, i64 %k2) #0 {
entry:
  %retval = alloca i32, align 4
  %k1.addr = alloca i64, align 8
  %k2.addr = alloca i64, align 8
  store i64 %k1, i64* %k1.addr, align 8
  store i64 %k2, i64* %k2.addr, align 8
  %0 = load i64, i64* %k1.addr, align 8
  %conv = trunc i64 %0 to i32
  %1 = load i64, i64* %k2.addr, align 8
  %conv1 = trunc i64 %1 to i32
  %cmp = icmp slt i32 %conv, %conv1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i64, i64* %k1.addr, align 8
  %conv3 = trunc i64 %2 to i32
  %3 = load i64, i64* %k2.addr, align 8
  %conv4 = trunc i64 %3 to i32
  %cmp5 = icmp sgt i32 %conv3, %conv4
  br i1 %cmp5, label %if.then.7, label %if.else.8

if.then.7:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.8:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.8, %if.then.7, %if.then
  %4 = load i32, i32* %retval
  ret i32 %4
}

; Function Attrs: nounwind uwtable
define i32 @splay_tree_compare_pointers(i64 %k1, i64 %k2) #0 {
entry:
  %retval = alloca i32, align 4
  %k1.addr = alloca i64, align 8
  %k2.addr = alloca i64, align 8
  store i64 %k1, i64* %k1.addr, align 8
  store i64 %k2, i64* %k2.addr, align 8
  %0 = load i64, i64* %k1.addr, align 8
  %1 = inttoptr i64 %0 to i8*
  %2 = load i64, i64* %k2.addr, align 8
  %3 = inttoptr i64 %2 to i8*
  %cmp = icmp ult i8* %1, %3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %4 = load i64, i64* %k1.addr, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = load i64, i64* %k2.addr, align 8
  %7 = inttoptr i64 %6 to i8*
  %cmp1 = icmp ugt i8* %5, %7
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.then.2, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define internal %struct.splay_tree_node_s* @splay_tree_splay_helper(%struct.splay_tree_s* %sp, i64 %key, %struct.splay_tree_node_s** %node, %struct.splay_tree_node_s** %parent, %struct.splay_tree_node_s** %grandparent) #0 {
entry:
  %retval = alloca %struct.splay_tree_node_s*, align 8
  %sp.addr = alloca %struct.splay_tree_s*, align 8
  %key.addr = alloca i64, align 8
  %node.addr = alloca %struct.splay_tree_node_s**, align 8
  %parent.addr = alloca %struct.splay_tree_node_s**, align 8
  %grandparent.addr = alloca %struct.splay_tree_node_s**, align 8
  %next = alloca %struct.splay_tree_node_s**, align 8
  %n = alloca %struct.splay_tree_node_s*, align 8
  %comparison = alloca i32, align 4
  %p = alloca %struct.splay_tree_node_s*, align 8
  %p48 = alloca %struct.splay_tree_node_s*, align 8
  store %struct.splay_tree_s* %sp, %struct.splay_tree_s** %sp.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store %struct.splay_tree_node_s** %node, %struct.splay_tree_node_s*** %node.addr, align 8
  store %struct.splay_tree_node_s** %parent, %struct.splay_tree_node_s*** %parent.addr, align 8
  store %struct.splay_tree_node_s** %grandparent, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %0 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %node.addr, align 8
  %1 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %0, align 8
  store %struct.splay_tree_node_s* %1, %struct.splay_tree_node_s** %n, align 8
  %2 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %tobool = icmp ne %struct.splay_tree_node_s* %2, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %4 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %3, align 8
  store %struct.splay_tree_node_s* %4, %struct.splay_tree_node_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %comp = getelementptr inbounds %struct.splay_tree_s, %struct.splay_tree_s* %5, i32 0, i32 1
  %6 = load i32 (i64, i64)*, i32 (i64, i64)** %comp, align 8
  %7 = load i64, i64* %key.addr, align 8
  %8 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %key1 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %8, i32 0, i32 0
  %9 = load i64, i64* %key1, align 8
  %call = call i32 %6(i64 %7, i64 %9)
  store i32 %call, i32* %comparison, align 4
  %10 = load i32, i32* %comparison, align 4
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  store %struct.splay_tree_node_s** null, %struct.splay_tree_node_s*** %next, align 8
  br label %if.end.7

if.else:                                          ; preds = %if.end
  %11 = load i32, i32* %comparison, align 4
  %cmp3 = icmp slt i32 %11, 0
  br i1 %cmp3, label %if.then.4, label %if.else.5

if.then.4:                                        ; preds = %if.else
  %12 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %12, i32 0, i32 2
  store %struct.splay_tree_node_s** %left, %struct.splay_tree_node_s*** %next, align 8
  br label %if.end.6

if.else.5:                                        ; preds = %if.else
  %13 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %13, i32 0, i32 3
  store %struct.splay_tree_node_s** %right, %struct.splay_tree_node_s*** %next, align 8
  br label %if.end.6

if.end.6:                                         ; preds = %if.else.5, %if.then.4
  br label %if.end.7

if.end.7:                                         ; preds = %if.end.6, %if.then.2
  %14 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %next, align 8
  %tobool8 = icmp ne %struct.splay_tree_node_s** %14, null
  br i1 %tobool8, label %if.then.9, label %if.end.14

if.then.9:                                        ; preds = %if.end.7
  %15 = load %struct.splay_tree_s*, %struct.splay_tree_s** %sp.addr, align 8
  %16 = load i64, i64* %key.addr, align 8
  %17 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %next, align 8
  %18 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %node.addr, align 8
  %19 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %call10 = call %struct.splay_tree_node_s* @splay_tree_splay_helper(%struct.splay_tree_s* %15, i64 %16, %struct.splay_tree_node_s** %17, %struct.splay_tree_node_s** %18, %struct.splay_tree_node_s** %19)
  store %struct.splay_tree_node_s* %call10, %struct.splay_tree_node_s** %n, align 8
  %20 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %node.addr, align 8
  %21 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %20, align 8
  %22 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %cmp11 = icmp ne %struct.splay_tree_node_s* %21, %22
  br i1 %cmp11, label %if.then.12, label %if.end.13

if.then.12:                                       ; preds = %if.then.9
  %23 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %23, %struct.splay_tree_node_s** %retval
  br label %return

if.end.13:                                        ; preds = %if.then.9
  br label %if.end.14

if.end.14:                                        ; preds = %if.end.13, %if.end.7
  %24 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %tobool15 = icmp ne %struct.splay_tree_node_s** %24, null
  br i1 %tobool15, label %if.end.17, label %if.then.16

if.then.16:                                       ; preds = %if.end.14
  %25 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %25, %struct.splay_tree_node_s** %retval
  br label %return

if.end.17:                                        ; preds = %if.end.14
  %26 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %tobool18 = icmp ne %struct.splay_tree_node_s** %26, null
  br i1 %tobool18, label %if.end.29, label %if.then.19

if.then.19:                                       ; preds = %if.end.17
  %27 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %28 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %29 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %28, align 8
  %left20 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %29, i32 0, i32 2
  %30 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left20, align 8
  %cmp21 = icmp eq %struct.splay_tree_node_s* %27, %30
  br i1 %cmp21, label %if.then.22, label %if.else.25

if.then.22:                                       ; preds = %if.then.19
  %31 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right23 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %31, i32 0, i32 3
  %32 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right23, align 8
  %33 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %node.addr, align 8
  store %struct.splay_tree_node_s* %32, %struct.splay_tree_node_s** %33, align 8
  %34 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %35 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %34, align 8
  %36 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right24 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %36, i32 0, i32 3
  store %struct.splay_tree_node_s* %35, %struct.splay_tree_node_s** %right24, align 8
  br label %if.end.28

if.else.25:                                       ; preds = %if.then.19
  %37 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left26 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %37, i32 0, i32 2
  %38 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left26, align 8
  %39 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %node.addr, align 8
  store %struct.splay_tree_node_s* %38, %struct.splay_tree_node_s** %39, align 8
  %40 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %41 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %40, align 8
  %42 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left27 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %42, i32 0, i32 2
  store %struct.splay_tree_node_s* %41, %struct.splay_tree_node_s** %left27, align 8
  br label %if.end.28

if.end.28:                                        ; preds = %if.else.25, %if.then.22
  %43 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %44 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  store %struct.splay_tree_node_s* %43, %struct.splay_tree_node_s** %44, align 8
  %45 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %45, %struct.splay_tree_node_s** %retval
  br label %return

if.end.29:                                        ; preds = %if.end.17
  %46 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %47 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %48 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %47, align 8
  %left30 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %48, i32 0, i32 2
  %49 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left30, align 8
  %cmp31 = icmp eq %struct.splay_tree_node_s* %46, %49
  br i1 %cmp31, label %land.lhs.true, label %if.else.41

land.lhs.true:                                    ; preds = %if.end.29
  %50 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %51 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %50, align 8
  %52 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %53 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %52, align 8
  %left32 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %53, i32 0, i32 2
  %54 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left32, align 8
  %cmp33 = icmp eq %struct.splay_tree_node_s* %51, %54
  br i1 %cmp33, label %if.then.34, label %if.else.41

if.then.34:                                       ; preds = %land.lhs.true
  %55 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %56 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %55, align 8
  store %struct.splay_tree_node_s* %56, %struct.splay_tree_node_s** %p, align 8
  %57 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p, align 8
  %right35 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %57, i32 0, i32 3
  %58 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right35, align 8
  %59 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %60 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %59, align 8
  %left36 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %60, i32 0, i32 2
  store %struct.splay_tree_node_s* %58, %struct.splay_tree_node_s** %left36, align 8
  %61 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %62 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %61, align 8
  %63 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p, align 8
  %right37 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %63, i32 0, i32 3
  store %struct.splay_tree_node_s* %62, %struct.splay_tree_node_s** %right37, align 8
  %64 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right38 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %64, i32 0, i32 3
  %65 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right38, align 8
  %66 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p, align 8
  %left39 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %66, i32 0, i32 2
  store %struct.splay_tree_node_s* %65, %struct.splay_tree_node_s** %left39, align 8
  %67 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p, align 8
  %68 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right40 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %68, i32 0, i32 3
  store %struct.splay_tree_node_s* %67, %struct.splay_tree_node_s** %right40, align 8
  %69 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %70 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  store %struct.splay_tree_node_s* %69, %struct.splay_tree_node_s** %70, align 8
  %71 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %71, %struct.splay_tree_node_s** %retval
  br label %return

if.else.41:                                       ; preds = %land.lhs.true, %if.end.29
  %72 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %73 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %74 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %73, align 8
  %right42 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %74, i32 0, i32 3
  %75 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right42, align 8
  %cmp43 = icmp eq %struct.splay_tree_node_s* %72, %75
  br i1 %cmp43, label %land.lhs.true.44, label %if.end.55

land.lhs.true.44:                                 ; preds = %if.else.41
  %76 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %77 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %76, align 8
  %78 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %79 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %78, align 8
  %right45 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %79, i32 0, i32 3
  %80 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right45, align 8
  %cmp46 = icmp eq %struct.splay_tree_node_s* %77, %80
  br i1 %cmp46, label %if.then.47, label %if.end.55

if.then.47:                                       ; preds = %land.lhs.true.44
  %81 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %82 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %81, align 8
  store %struct.splay_tree_node_s* %82, %struct.splay_tree_node_s** %p48, align 8
  %83 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p48, align 8
  %left49 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %83, i32 0, i32 2
  %84 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left49, align 8
  %85 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %86 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %85, align 8
  %right50 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %86, i32 0, i32 3
  store %struct.splay_tree_node_s* %84, %struct.splay_tree_node_s** %right50, align 8
  %87 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %88 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %87, align 8
  %89 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p48, align 8
  %left51 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %89, i32 0, i32 2
  store %struct.splay_tree_node_s* %88, %struct.splay_tree_node_s** %left51, align 8
  %90 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left52 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %90, i32 0, i32 2
  %91 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left52, align 8
  %92 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p48, align 8
  %right53 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %92, i32 0, i32 3
  store %struct.splay_tree_node_s* %91, %struct.splay_tree_node_s** %right53, align 8
  %93 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %p48, align 8
  %94 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left54 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %94, i32 0, i32 2
  store %struct.splay_tree_node_s* %93, %struct.splay_tree_node_s** %left54, align 8
  %95 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %96 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  store %struct.splay_tree_node_s* %95, %struct.splay_tree_node_s** %96, align 8
  %97 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %97, %struct.splay_tree_node_s** %retval
  br label %return

if.end.55:                                        ; preds = %land.lhs.true.44, %if.else.41
  br label %if.end.56

if.end.56:                                        ; preds = %if.end.55
  %98 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %99 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %100 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %99, align 8
  %left57 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %100, i32 0, i32 2
  %101 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left57, align 8
  %cmp58 = icmp eq %struct.splay_tree_node_s* %98, %101
  br i1 %cmp58, label %if.then.59, label %if.else.66

if.then.59:                                       ; preds = %if.end.56
  %102 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right60 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %102, i32 0, i32 3
  %103 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right60, align 8
  %104 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %105 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %104, align 8
  %left61 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %105, i32 0, i32 2
  store %struct.splay_tree_node_s* %103, %struct.splay_tree_node_s** %left61, align 8
  %106 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %107 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %106, align 8
  %108 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right62 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %108, i32 0, i32 3
  store %struct.splay_tree_node_s* %107, %struct.splay_tree_node_s** %right62, align 8
  %109 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left63 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %109, i32 0, i32 2
  %110 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left63, align 8
  %111 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %112 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %111, align 8
  %right64 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %112, i32 0, i32 3
  store %struct.splay_tree_node_s* %110, %struct.splay_tree_node_s** %right64, align 8
  %113 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %114 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %113, align 8
  %115 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left65 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %115, i32 0, i32 2
  store %struct.splay_tree_node_s* %114, %struct.splay_tree_node_s** %left65, align 8
  %116 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %117 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  store %struct.splay_tree_node_s* %116, %struct.splay_tree_node_s** %117, align 8
  %118 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %118, %struct.splay_tree_node_s** %retval
  br label %return

if.else.66:                                       ; preds = %if.end.56
  %119 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left67 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %119, i32 0, i32 2
  %120 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %left67, align 8
  %121 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %122 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %121, align 8
  %right68 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %122, i32 0, i32 3
  store %struct.splay_tree_node_s* %120, %struct.splay_tree_node_s** %right68, align 8
  %123 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %parent.addr, align 8
  %124 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %123, align 8
  %125 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %left69 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %125, i32 0, i32 2
  store %struct.splay_tree_node_s* %124, %struct.splay_tree_node_s** %left69, align 8
  %126 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right70 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %126, i32 0, i32 3
  %127 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %right70, align 8
  %128 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %129 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %128, align 8
  %left71 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %129, i32 0, i32 2
  store %struct.splay_tree_node_s* %127, %struct.splay_tree_node_s** %left71, align 8
  %130 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  %131 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %130, align 8
  %132 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %right72 = getelementptr inbounds %struct.splay_tree_node_s, %struct.splay_tree_node_s* %132, i32 0, i32 3
  store %struct.splay_tree_node_s* %131, %struct.splay_tree_node_s** %right72, align 8
  %133 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  %134 = load %struct.splay_tree_node_s**, %struct.splay_tree_node_s*** %grandparent.addr, align 8
  store %struct.splay_tree_node_s* %133, %struct.splay_tree_node_s** %134, align 8
  %135 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %n, align 8
  store %struct.splay_tree_node_s* %135, %struct.splay_tree_node_s** %retval
  br label %return

return:                                           ; preds = %if.else.66, %if.then.59, %if.then.47, %if.then.34, %if.end.28, %if.then.16, %if.then.12, %if.then
  %136 = load %struct.splay_tree_node_s*, %struct.splay_tree_node_s** %retval
  ret %struct.splay_tree_node_s* %136
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
