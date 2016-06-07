; ModuleID = 'fibheap.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fibheap = type { i64, %struct.fibnode*, %struct.fibnode* }
%struct.fibnode = type { %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, %struct.fibnode*, i64, i8*, i32 }

; Function Attrs: nounwind uwtable
define %struct.fibheap* @fibheap_new() #0 {
entry:
  %call = call noalias i8* @xcalloc(i64 1, i64 24)
  %0 = bitcast i8* %call to %struct.fibheap*
  ret %struct.fibheap* %0
}

declare noalias i8* @xcalloc(i64, i64) #1

; Function Attrs: nounwind uwtable
define %struct.fibnode* @fibheap_insert(%struct.fibheap* %heap, i64 %key, i8* %data) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %key.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %node = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %call = call %struct.fibnode* @fibnode_new()
  store %struct.fibnode* %call, %struct.fibnode** %node, align 8
  %0 = load i8*, i8** %data.addr, align 8
  %1 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %data1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %1, i32 0, i32 5
  store i8* %0, i8** %data1, align 8
  %2 = load i64, i64* %key.addr, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %key2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i32 0, i32 4
  store i64 %2, i64* %key2, align 8
  %4 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  call void @fibheap_ins_root(%struct.fibheap* %4, %struct.fibnode* %5)
  %6 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %6, i32 0, i32 1
  %7 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  %cmp = icmp eq %struct.fibnode* %7, null
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %8 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %key3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %8, i32 0, i32 4
  %9 = load i64, i64* %key3, align 8
  %10 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min4 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %10, i32 0, i32 1
  %11 = load %struct.fibnode*, %struct.fibnode** %min4, align 8
  %key5 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %11, i32 0, i32 4
  %12 = load i64, i64* %key5, align 8
  %cmp6 = icmp slt i64 %9, %12
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %13 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %14 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min7 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %14, i32 0, i32 1
  store %struct.fibnode* %13, %struct.fibnode** %min7, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %15 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %15, i32 0, i32 0
  %16 = load i64, i64* %nodes, align 8
  %inc = add i64 %16, 1
  store i64 %inc, i64* %nodes, align 8
  %17 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  ret %struct.fibnode* %17
}

; Function Attrs: nounwind uwtable
define internal %struct.fibnode* @fibnode_new() #0 {
entry:
  %node = alloca %struct.fibnode*, align 8
  %call = call noalias i8* @xcalloc(i64 1, i64 56)
  %0 = bitcast i8* %call to %struct.fibnode*
  store %struct.fibnode* %0, %struct.fibnode** %node, align 8
  %1 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %2 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %2, i32 0, i32 2
  store %struct.fibnode* %1, %struct.fibnode** %left, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %4 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %4, i32 0, i32 3
  store %struct.fibnode* %3, %struct.fibnode** %right, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %node, align 8
  ret %struct.fibnode* %5
}

; Function Attrs: nounwind uwtable
define internal void @fibheap_ins_root(%struct.fibheap* %heap, %struct.fibnode* %node) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 2
  %1 = load %struct.fibnode*, %struct.fibnode** %root, align 8
  %cmp = icmp eq %struct.fibnode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %3 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %root1 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %3, i32 0, i32 2
  store %struct.fibnode* %2, %struct.fibnode** %root1, align 8
  %4 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %5, i32 0, i32 2
  store %struct.fibnode* %4, %struct.fibnode** %left, align 8
  %6 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %7 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %7, i32 0, i32 3
  store %struct.fibnode* %6, %struct.fibnode** %right, align 8
  br label %return

if.end:                                           ; preds = %entry
  %8 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %root2 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %8, i32 0, i32 2
  %9 = load %struct.fibnode*, %struct.fibnode** %root2, align 8
  %10 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  call void @fibnode_insert_after(%struct.fibnode* %9, %struct.fibnode* %10)
  br label %return

return:                                           ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @fibheap_min(%struct.fibheap* %heap) #0 {
entry:
  %retval = alloca i8*, align 8
  %heap.addr = alloca %struct.fibheap*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 1
  %1 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  %cmp = icmp eq %struct.fibnode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min1 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %2, i32 0, i32 1
  %3 = load %struct.fibnode*, %struct.fibnode** %min1, align 8
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i32 0, i32 5
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define i64 @fibheap_min_key(%struct.fibheap* %heap) #0 {
entry:
  %retval = alloca i64, align 8
  %heap.addr = alloca %struct.fibheap*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 1
  %1 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  %cmp = icmp eq %struct.fibnode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, i64* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min1 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %2, i32 0, i32 1
  %3 = load %struct.fibnode*, %struct.fibnode** %min1, align 8
  %key = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i32 0, i32 4
  %4 = load i64, i64* %key, align 8
  store i64 %4, i64* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, i64* %retval
  ret i64 %5
}

; Function Attrs: nounwind uwtable
define %struct.fibheap* @fibheap_union(%struct.fibheap* %heapa, %struct.fibheap* %heapb) #0 {
entry:
  %retval = alloca %struct.fibheap*, align 8
  %heapa.addr = alloca %struct.fibheap*, align 8
  %heapb.addr = alloca %struct.fibheap*, align 8
  %a_root = alloca %struct.fibnode*, align 8
  %b_root = alloca %struct.fibnode*, align 8
  %temp = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heapa, %struct.fibheap** %heapa.addr, align 8
  store %struct.fibheap* %heapb, %struct.fibheap** %heapb.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 2
  %1 = load %struct.fibnode*, %struct.fibnode** %root, align 8
  store %struct.fibnode* %1, %struct.fibnode** %a_root, align 8
  %cmp = icmp eq %struct.fibnode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  %3 = bitcast %struct.fibheap* %2 to i8*
  call void @free(i8* %3) #4
  %4 = load %struct.fibheap*, %struct.fibheap** %heapb.addr, align 8
  store %struct.fibheap* %4, %struct.fibheap** %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.fibheap*, %struct.fibheap** %heapb.addr, align 8
  %root1 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %5, i32 0, i32 2
  %6 = load %struct.fibnode*, %struct.fibnode** %root1, align 8
  store %struct.fibnode* %6, %struct.fibnode** %b_root, align 8
  %cmp2 = icmp eq %struct.fibnode* %6, null
  br i1 %cmp2, label %if.then.3, label %if.end.4

if.then.3:                                        ; preds = %if.end
  %7 = load %struct.fibheap*, %struct.fibheap** %heapb.addr, align 8
  %8 = bitcast %struct.fibheap* %7 to i8*
  call void @free(i8* %8) #4
  %9 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  store %struct.fibheap* %9, %struct.fibheap** %retval
  br label %return

if.end.4:                                         ; preds = %if.end
  %10 = load %struct.fibnode*, %struct.fibnode** %b_root, align 8
  %11 = load %struct.fibnode*, %struct.fibnode** %a_root, align 8
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %11, i32 0, i32 2
  %12 = load %struct.fibnode*, %struct.fibnode** %left, align 8
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %12, i32 0, i32 3
  store %struct.fibnode* %10, %struct.fibnode** %right, align 8
  %13 = load %struct.fibnode*, %struct.fibnode** %a_root, align 8
  %14 = load %struct.fibnode*, %struct.fibnode** %b_root, align 8
  %left5 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %14, i32 0, i32 2
  %15 = load %struct.fibnode*, %struct.fibnode** %left5, align 8
  %right6 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %15, i32 0, i32 3
  store %struct.fibnode* %13, %struct.fibnode** %right6, align 8
  %16 = load %struct.fibnode*, %struct.fibnode** %a_root, align 8
  %left7 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %16, i32 0, i32 2
  %17 = load %struct.fibnode*, %struct.fibnode** %left7, align 8
  store %struct.fibnode* %17, %struct.fibnode** %temp, align 8
  %18 = load %struct.fibnode*, %struct.fibnode** %b_root, align 8
  %left8 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %18, i32 0, i32 2
  %19 = load %struct.fibnode*, %struct.fibnode** %left8, align 8
  %20 = load %struct.fibnode*, %struct.fibnode** %a_root, align 8
  %left9 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %20, i32 0, i32 2
  store %struct.fibnode* %19, %struct.fibnode** %left9, align 8
  %21 = load %struct.fibnode*, %struct.fibnode** %temp, align 8
  %22 = load %struct.fibnode*, %struct.fibnode** %b_root, align 8
  %left10 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %22, i32 0, i32 2
  store %struct.fibnode* %21, %struct.fibnode** %left10, align 8
  %23 = load %struct.fibheap*, %struct.fibheap** %heapb.addr, align 8
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %23, i32 0, i32 0
  %24 = load i64, i64* %nodes, align 8
  %25 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  %nodes11 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %25, i32 0, i32 0
  %26 = load i64, i64* %nodes11, align 8
  %add = add i64 %26, %24
  store i64 %add, i64* %nodes11, align 8
  %27 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  %28 = load %struct.fibheap*, %struct.fibheap** %heapb.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %28, i32 0, i32 1
  %29 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  %30 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  %min12 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %30, i32 0, i32 1
  %31 = load %struct.fibnode*, %struct.fibnode** %min12, align 8
  %call = call i32 @fibheap_compare(%struct.fibheap* %27, %struct.fibnode* %29, %struct.fibnode* %31)
  %cmp13 = icmp slt i32 %call, 0
  br i1 %cmp13, label %if.then.14, label %if.end.17

if.then.14:                                       ; preds = %if.end.4
  %32 = load %struct.fibheap*, %struct.fibheap** %heapb.addr, align 8
  %min15 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %32, i32 0, i32 1
  %33 = load %struct.fibnode*, %struct.fibnode** %min15, align 8
  %34 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  %min16 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %34, i32 0, i32 1
  store %struct.fibnode* %33, %struct.fibnode** %min16, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.14, %if.end.4
  %35 = load %struct.fibheap*, %struct.fibheap** %heapb.addr, align 8
  %36 = bitcast %struct.fibheap* %35 to i8*
  call void @free(i8* %36) #4
  %37 = load %struct.fibheap*, %struct.fibheap** %heapa.addr, align 8
  store %struct.fibheap* %37, %struct.fibheap** %retval
  br label %return

return:                                           ; preds = %if.end.17, %if.then.3, %if.then
  %38 = load %struct.fibheap*, %struct.fibheap** %retval
  ret %struct.fibheap* %38
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fibheap_compare(%struct.fibheap* %heap, %struct.fibnode* %a, %struct.fibnode* %b) #3 {
entry:
  %retval = alloca i32, align 4
  %heap.addr = alloca %struct.fibheap*, align 8
  %a.addr = alloca %struct.fibnode*, align 8
  %b.addr = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %a, %struct.fibnode** %a.addr, align 8
  store %struct.fibnode* %b, %struct.fibnode** %b.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %key = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i32 0, i32 4
  %1 = load i64, i64* %key, align 8
  %2 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %key1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %2, i32 0, i32 4
  %3 = load i64, i64* %key1, align 8
  %cmp = icmp slt i64 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %key2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %4, i32 0, i32 4
  %5 = load i64, i64* %key2, align 8
  %6 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %key3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %6, i32 0, i32 4
  %7 = load i64, i64* %key3, align 8
  %cmp4 = icmp sgt i64 %5, %7
  br i1 %cmp4, label %if.then.5, label %if.end.6

if.then.5:                                        ; preds = %if.end
  store i32 1, i32* %retval
  br label %return

if.end.6:                                         ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.6, %if.then.5, %if.then
  %8 = load i32, i32* %retval
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define i8* @fibheap_extract_min(%struct.fibheap* %heap) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %z = alloca %struct.fibnode*, align 8
  %ret = alloca i8*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store i8* null, i8** %ret, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 1
  %1 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  %cmp = icmp ne %struct.fibnode* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %call = call %struct.fibnode* @fibheap_extr_min_node(%struct.fibheap* %2)
  store %struct.fibnode* %call, %struct.fibnode** %z, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %z, align 8
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i32 0, i32 5
  %4 = load i8*, i8** %data, align 8
  store i8* %4, i8** %ret, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %z, align 8
  %6 = bitcast %struct.fibnode* %5 to i8*
  call void @free(i8* %6) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %7 = load i8*, i8** %ret, align 8
  ret i8* %7
}

; Function Attrs: nounwind uwtable
define internal %struct.fibnode* @fibheap_extr_min_node(%struct.fibheap* %heap) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %ret = alloca %struct.fibnode*, align 8
  %x = alloca %struct.fibnode*, align 8
  %y = alloca %struct.fibnode*, align 8
  %orig = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 1
  %1 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  store %struct.fibnode* %1, %struct.fibnode** %ret, align 8
  %2 = load %struct.fibnode*, %struct.fibnode** %ret, align 8
  %child = getelementptr inbounds %struct.fibnode, %struct.fibnode* %2, i32 0, i32 1
  %3 = load %struct.fibnode*, %struct.fibnode** %child, align 8
  store %struct.fibnode* %3, %struct.fibnode** %x, align 8
  store %struct.fibnode* null, %struct.fibnode** %orig, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %orig, align 8
  %cmp = icmp ne %struct.fibnode* %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %6 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  %cmp1 = icmp ne %struct.fibnode* %6, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %7 = phi i1 [ false, %for.cond ], [ %cmp1, %land.rhs ]
  br i1 %7, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %8 = load %struct.fibnode*, %struct.fibnode** %orig, align 8
  %cmp2 = icmp eq %struct.fibnode* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %9 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  store %struct.fibnode* %9, %struct.fibnode** %orig, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %10 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %10, i32 0, i32 3
  %11 = load %struct.fibnode*, %struct.fibnode** %right, align 8
  store %struct.fibnode* %11, %struct.fibnode** %y, align 8
  %12 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %12, i32 0, i32 0
  store %struct.fibnode* null, %struct.fibnode** %parent, align 8
  %13 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %14 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  call void @fibheap_ins_root(%struct.fibheap* %13, %struct.fibnode* %14)
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  store %struct.fibnode* %15, %struct.fibnode** %x, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %16 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %17 = load %struct.fibnode*, %struct.fibnode** %ret, align 8
  call void @fibheap_rem_root(%struct.fibheap* %16, %struct.fibnode* %17)
  %18 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %18, i32 0, i32 0
  %19 = load i64, i64* %nodes, align 8
  %dec = add i64 %19, -1
  store i64 %dec, i64* %nodes, align 8
  %20 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %nodes3 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %20, i32 0, i32 0
  %21 = load i64, i64* %nodes3, align 8
  %cmp4 = icmp eq i64 %21, 0
  br i1 %cmp4, label %if.then.5, label %if.else

if.then.5:                                        ; preds = %for.end
  %22 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min6 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %22, i32 0, i32 1
  store %struct.fibnode* null, %struct.fibnode** %min6, align 8
  br label %if.end.9

if.else:                                          ; preds = %for.end
  %23 = load %struct.fibnode*, %struct.fibnode** %ret, align 8
  %right7 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %23, i32 0, i32 3
  %24 = load %struct.fibnode*, %struct.fibnode** %right7, align 8
  %25 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min8 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %25, i32 0, i32 1
  store %struct.fibnode* %24, %struct.fibnode** %min8, align 8
  %26 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  call void @fibheap_consolidate(%struct.fibheap* %26)
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.5
  %27 = load %struct.fibnode*, %struct.fibnode** %ret, align 8
  ret %struct.fibnode* %27
}

; Function Attrs: nounwind uwtable
define i8* @fibheap_replace_key_data(%struct.fibheap* %heap, %struct.fibnode* %node, i64 %key, i8* %data) #0 {
entry:
  %retval = alloca i8*, align 8
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  %key.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %odata = alloca i8*, align 8
  %okey = alloca i32, align 4
  %y = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %1 = load i64, i64* %key.addr, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %call = call i32 @fibheap_comp_data(%struct.fibheap* %0, i64 %1, i8* %2, %struct.fibnode* %3)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval
  br label %return

if.end:                                           ; preds = %entry
  %4 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %data1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %4, i32 0, i32 5
  %5 = load i8*, i8** %data1, align 8
  store i8* %5, i8** %odata, align 8
  %6 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %key2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %6, i32 0, i32 4
  %7 = load i64, i64* %key2, align 8
  %conv = trunc i64 %7 to i32
  store i32 %conv, i32* %okey, align 4
  %8 = load i8*, i8** %data.addr, align 8
  %9 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %data3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %9, i32 0, i32 5
  store i8* %8, i8** %data3, align 8
  %10 = load i64, i64* %key.addr, align 8
  %11 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %key4 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %11, i32 0, i32 4
  store i64 %10, i64* %key4, align 8
  %12 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %12, i32 0, i32 0
  %13 = load %struct.fibnode*, %struct.fibnode** %parent, align 8
  store %struct.fibnode* %13, %struct.fibnode** %y, align 8
  %14 = load i32, i32* %okey, align 4
  %conv5 = sext i32 %14 to i64
  %15 = load i64, i64* %key.addr, align 8
  %cmp6 = icmp eq i64 %conv5, %15
  br i1 %cmp6, label %if.then.8, label %if.end.9

if.then.8:                                        ; preds = %if.end
  %16 = load i8*, i8** %odata, align 8
  store i8* %16, i8** %retval
  br label %return

if.end.9:                                         ; preds = %if.end
  %17 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  %cmp10 = icmp ne %struct.fibnode* %17, null
  br i1 %cmp10, label %land.lhs.true, label %if.end.16

land.lhs.true:                                    ; preds = %if.end.9
  %18 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %19 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %20 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  %call12 = call i32 @fibheap_compare(%struct.fibheap* %18, %struct.fibnode* %19, %struct.fibnode* %20)
  %cmp13 = icmp sle i32 %call12, 0
  br i1 %cmp13, label %if.then.15, label %if.end.16

if.then.15:                                       ; preds = %land.lhs.true
  %21 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %22 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %23 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  call void @fibheap_cut(%struct.fibheap* %21, %struct.fibnode* %22, %struct.fibnode* %23)
  %24 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %25 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  call void @fibheap_cascading_cut(%struct.fibheap* %24, %struct.fibnode* %25)
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.15, %land.lhs.true, %if.end.9
  %26 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %27 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %28 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %28, i32 0, i32 1
  %29 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  %call17 = call i32 @fibheap_compare(%struct.fibheap* %26, %struct.fibnode* %27, %struct.fibnode* %29)
  %cmp18 = icmp sle i32 %call17, 0
  br i1 %cmp18, label %if.then.20, label %if.end.22

if.then.20:                                       ; preds = %if.end.16
  %30 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %31 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min21 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %31, i32 0, i32 1
  store %struct.fibnode* %30, %struct.fibnode** %min21, align 8
  br label %if.end.22

if.end.22:                                        ; preds = %if.then.20, %if.end.16
  %32 = load i8*, i8** %odata, align 8
  store i8* %32, i8** %retval
  br label %return

return:                                           ; preds = %if.end.22, %if.then.8, %if.then
  %33 = load i8*, i8** %retval
  ret i8* %33
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @fibheap_comp_data(%struct.fibheap* %heap, i64 %key, i8* %data, %struct.fibnode* %b) #3 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %key.addr = alloca i64, align 8
  %data.addr = alloca i8*, align 8
  %b.addr = alloca %struct.fibnode*, align 8
  %a = alloca %struct.fibnode, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store %struct.fibnode* %b, %struct.fibnode** %b.addr, align 8
  %0 = load i64, i64* %key.addr, align 8
  %key1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %a, i32 0, i32 4
  store i64 %0, i64* %key1, align 8
  %1 = load i8*, i8** %data.addr, align 8
  %data2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %a, i32 0, i32 5
  store i8* %1, i8** %data2, align 8
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %call = call i32 @fibheap_compare(%struct.fibheap* %2, %struct.fibnode* %a, %struct.fibnode* %3)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal void @fibheap_cut(%struct.fibheap* %heap, %struct.fibnode* %node, %struct.fibnode* %parent) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  %parent.addr = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  store %struct.fibnode* %parent, %struct.fibnode** %parent.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %call = call %struct.fibnode* @fibnode_remove(%struct.fibnode* %0)
  %1 = load %struct.fibnode*, %struct.fibnode** %parent.addr, align 8
  %degree = getelementptr inbounds %struct.fibnode, %struct.fibnode* %1, i32 0, i32 6
  %bf.load = load i32, i32* %degree, align 8
  %bf.clear = and i32 %bf.load, 2147483647
  %dec = add i32 %bf.clear, -1
  %bf.load1 = load i32, i32* %degree, align 8
  %bf.value = and i32 %dec, 2147483647
  %bf.clear2 = and i32 %bf.load1, -2147483648
  %bf.set = or i32 %bf.clear2, %bf.value
  store i32 %bf.set, i32* %degree, align 8
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  call void @fibheap_ins_root(%struct.fibheap* %2, %struct.fibnode* %3)
  %4 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %parent3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %4, i32 0, i32 0
  store %struct.fibnode* null, %struct.fibnode** %parent3, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %mark = getelementptr inbounds %struct.fibnode, %struct.fibnode* %5, i32 0, i32 6
  %bf.load4 = load i32, i32* %mark, align 8
  %bf.clear5 = and i32 %bf.load4, 2147483647
  store i32 %bf.clear5, i32* %mark, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fibheap_cascading_cut(%struct.fibheap* %heap, %struct.fibnode* %y) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %y.addr = alloca %struct.fibnode*, align 8
  %z = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %y, %struct.fibnode** %y.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load %struct.fibnode*, %struct.fibnode** %y.addr, align 8
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i32 0, i32 0
  %1 = load %struct.fibnode*, %struct.fibnode** %parent, align 8
  store %struct.fibnode* %1, %struct.fibnode** %z, align 8
  %cmp = icmp ne %struct.fibnode* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.fibnode*, %struct.fibnode** %y.addr, align 8
  %mark = getelementptr inbounds %struct.fibnode, %struct.fibnode* %2, i32 0, i32 6
  %bf.load = load i32, i32* %mark, align 8
  %bf.lshr = lshr i32 %bf.load, 31
  %cmp1 = icmp eq i32 %bf.lshr, 0
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %3 = load %struct.fibnode*, %struct.fibnode** %y.addr, align 8
  %mark2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i32 0, i32 6
  %bf.load3 = load i32, i32* %mark2, align 8
  %bf.clear = and i32 %bf.load3, 2147483647
  %bf.set = or i32 %bf.clear, -2147483648
  store i32 %bf.set, i32* %mark2, align 8
  br label %while.end

if.else:                                          ; preds = %while.body
  %4 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %y.addr, align 8
  %6 = load %struct.fibnode*, %struct.fibnode** %z, align 8
  call void @fibheap_cut(%struct.fibheap* %4, %struct.fibnode* %5, %struct.fibnode* %6)
  %7 = load %struct.fibnode*, %struct.fibnode** %z, align 8
  store %struct.fibnode* %7, %struct.fibnode** %y.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @fibheap_replace_data(%struct.fibheap* %heap, %struct.fibnode* %node, i8* %data) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %1 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %2 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %key = getelementptr inbounds %struct.fibnode, %struct.fibnode* %2, i32 0, i32 4
  %3 = load i64, i64* %key, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %call = call i8* @fibheap_replace_key_data(%struct.fibheap* %0, %struct.fibnode* %1, i64 %3, i8* %4)
  ret i8* %call
}

; Function Attrs: nounwind uwtable
define i64 @fibheap_replace_key(%struct.fibheap* %heap, %struct.fibnode* %node, i64 %key) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  %key.addr = alloca i64, align 8
  %okey = alloca i32, align 4
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  store i64 %key, i64* %key.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %key1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i32 0, i32 4
  %1 = load i64, i64* %key1, align 8
  %conv = trunc i64 %1 to i32
  store i32 %conv, i32* %okey, align 4
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %4 = load i64, i64* %key.addr, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %5, i32 0, i32 5
  %6 = load i8*, i8** %data, align 8
  %call = call i8* @fibheap_replace_key_data(%struct.fibheap* %2, %struct.fibnode* %3, i64 %4, i8* %6)
  %7 = load i32, i32* %okey, align 4
  %conv2 = sext i32 %7 to i64
  ret i64 %conv2
}

; Function Attrs: nounwind uwtable
define i8* @fibheap_delete_node(%struct.fibheap* %heap, %struct.fibnode* %node) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  %ret = alloca i8*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %data = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i32 0, i32 5
  %1 = load i8*, i8** %data, align 8
  store i8* %1, i8** %ret, align 8
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %call = call i64 @fibheap_replace_key(%struct.fibheap* %2, %struct.fibnode* %3, i64 -9223372036854775808)
  %4 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %call1 = call i8* @fibheap_extract_min(%struct.fibheap* %4)
  %5 = load i8*, i8** %ret, align 8
  ret i8* %5
}

; Function Attrs: nounwind uwtable
define void @fibheap_delete(%struct.fibheap* %heap) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 1
  %1 = load %struct.fibnode*, %struct.fibnode** %min, align 8
  %cmp = icmp ne %struct.fibnode* %1, null
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %call = call %struct.fibnode* @fibheap_extr_min_node(%struct.fibheap* %2)
  %3 = bitcast %struct.fibnode* %call to i8*
  call void @free(i8* %3) #4
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %5 = bitcast %struct.fibheap* %4 to i8*
  call void @free(i8* %5) #4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @fibheap_empty(%struct.fibheap* %heap) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  %0 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %nodes = getelementptr inbounds %struct.fibheap, %struct.fibheap* %0, i32 0, i32 0
  %1 = load i64, i64* %nodes, align 8
  %cmp = icmp eq i64 %1, 0
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nounwind uwtable
define internal void @fibheap_rem_root(%struct.fibheap* %heap, %struct.fibnode* %node) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i32 0, i32 2
  %1 = load %struct.fibnode*, %struct.fibnode** %left, align 8
  %2 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %cmp = icmp eq %struct.fibnode* %1, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %3, i32 0, i32 2
  store %struct.fibnode* null, %struct.fibnode** %root, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %call = call %struct.fibnode* @fibnode_remove(%struct.fibnode* %4)
  %5 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %root1 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %5, i32 0, i32 2
  store %struct.fibnode* %call, %struct.fibnode** %root1, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fibheap_consolidate(%struct.fibheap* %heap) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %a = alloca [65 x %struct.fibnode*], align 16
  %w = alloca %struct.fibnode*, align 8
  %y = alloca %struct.fibnode*, align 8
  %x = alloca %struct.fibnode*, align 8
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  %D = alloca i32, align 4
  %temp = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store i32 65, i32* %D, align 4
  %0 = bitcast [65 x %struct.fibnode*]* %a to i8*
  %1 = load i32, i32* %D, align 4
  %conv = sext i32 %1 to i64
  %mul = mul i64 8, %conv
  call void @llvm.memset.p0i8.i64(i8* %0, i8 0, i64 %mul, i32 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %2 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %root = getelementptr inbounds %struct.fibheap, %struct.fibheap* %2, i32 0, i32 2
  %3 = load %struct.fibnode*, %struct.fibnode** %root, align 8
  store %struct.fibnode* %3, %struct.fibnode** %w, align 8
  %cmp = icmp ne %struct.fibnode* %3, null
  br i1 %cmp, label %while.body, label %while.end.14

while.body:                                       ; preds = %while.cond
  %4 = load %struct.fibnode*, %struct.fibnode** %w, align 8
  store %struct.fibnode* %4, %struct.fibnode** %x, align 8
  %5 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %6 = load %struct.fibnode*, %struct.fibnode** %w, align 8
  call void @fibheap_rem_root(%struct.fibheap* %5, %struct.fibnode* %6)
  %7 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  %degree = getelementptr inbounds %struct.fibnode, %struct.fibnode* %7, i32 0, i32 6
  %bf.load = load i32, i32* %degree, align 8
  %bf.clear = and i32 %bf.load, 2147483647
  store i32 %bf.clear, i32* %d, align 4
  br label %while.cond.2

while.cond.2:                                     ; preds = %if.end, %while.body
  %8 = load i32, i32* %d, align 4
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom
  %9 = load %struct.fibnode*, %struct.fibnode** %arrayidx, align 8
  %cmp3 = icmp ne %struct.fibnode* %9, null
  br i1 %cmp3, label %while.body.5, label %while.end

while.body.5:                                     ; preds = %while.cond.2
  %10 = load i32, i32* %d, align 4
  %idxprom6 = sext i32 %10 to i64
  %arrayidx7 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom6
  %11 = load %struct.fibnode*, %struct.fibnode** %arrayidx7, align 8
  store %struct.fibnode* %11, %struct.fibnode** %y, align 8
  %12 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %13 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  %14 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  %call = call i32 @fibheap_compare(%struct.fibheap* %12, %struct.fibnode* %13, %struct.fibnode* %14)
  %cmp8 = icmp sgt i32 %call, 0
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %while.body.5
  %15 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  store %struct.fibnode* %15, %struct.fibnode** %temp, align 8
  %16 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  store %struct.fibnode* %16, %struct.fibnode** %x, align 8
  %17 = load %struct.fibnode*, %struct.fibnode** %temp, align 8
  store %struct.fibnode* %17, %struct.fibnode** %y, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.5
  %18 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %19 = load %struct.fibnode*, %struct.fibnode** %y, align 8
  %20 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  call void @fibheap_link(%struct.fibheap* %18, %struct.fibnode* %19, %struct.fibnode* %20)
  %21 = load i32, i32* %d, align 4
  %idxprom10 = sext i32 %21 to i64
  %arrayidx11 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom10
  store %struct.fibnode* null, %struct.fibnode** %arrayidx11, align 8
  %22 = load i32, i32* %d, align 4
  %inc = add nsw i32 %22, 1
  store i32 %inc, i32* %d, align 4
  br label %while.cond.2

while.end:                                        ; preds = %while.cond.2
  %23 = load %struct.fibnode*, %struct.fibnode** %x, align 8
  %24 = load i32, i32* %d, align 4
  %idxprom12 = sext i32 %24 to i64
  %arrayidx13 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom12
  store %struct.fibnode* %23, %struct.fibnode** %arrayidx13, align 8
  br label %while.cond

while.end.14:                                     ; preds = %while.cond
  %25 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min = getelementptr inbounds %struct.fibheap, %struct.fibheap* %25, i32 0, i32 1
  store %struct.fibnode* null, %struct.fibnode** %min, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end.14
  %26 = load i32, i32* %i, align 4
  %27 = load i32, i32* %D, align 4
  %cmp15 = icmp slt i32 %26, %27
  br i1 %cmp15, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %28 = load i32, i32* %i, align 4
  %idxprom17 = sext i32 %28 to i64
  %arrayidx18 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom17
  %29 = load %struct.fibnode*, %struct.fibnode** %arrayidx18, align 8
  %cmp19 = icmp ne %struct.fibnode* %29, null
  br i1 %cmp19, label %if.then.21, label %if.end.38

if.then.21:                                       ; preds = %for.body
  %30 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %31 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %31 to i64
  %arrayidx23 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom22
  %32 = load %struct.fibnode*, %struct.fibnode** %arrayidx23, align 8
  call void @fibheap_ins_root(%struct.fibheap* %30, %struct.fibnode* %32)
  %33 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min24 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %33, i32 0, i32 1
  %34 = load %struct.fibnode*, %struct.fibnode** %min24, align 8
  %cmp25 = icmp eq %struct.fibnode* %34, null
  br i1 %cmp25, label %if.then.33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then.21
  %35 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %36 = load i32, i32* %i, align 4
  %idxprom27 = sext i32 %36 to i64
  %arrayidx28 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom27
  %37 = load %struct.fibnode*, %struct.fibnode** %arrayidx28, align 8
  %38 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min29 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %38, i32 0, i32 1
  %39 = load %struct.fibnode*, %struct.fibnode** %min29, align 8
  %call30 = call i32 @fibheap_compare(%struct.fibheap* %35, %struct.fibnode* %37, %struct.fibnode* %39)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then.33, label %if.end.37

if.then.33:                                       ; preds = %lor.lhs.false, %if.then.21
  %40 = load i32, i32* %i, align 4
  %idxprom34 = sext i32 %40 to i64
  %arrayidx35 = getelementptr inbounds [65 x %struct.fibnode*], [65 x %struct.fibnode*]* %a, i32 0, i64 %idxprom34
  %41 = load %struct.fibnode*, %struct.fibnode** %arrayidx35, align 8
  %42 = load %struct.fibheap*, %struct.fibheap** %heap.addr, align 8
  %min36 = getelementptr inbounds %struct.fibheap, %struct.fibheap* %42, i32 0, i32 1
  store %struct.fibnode* %41, %struct.fibnode** %min36, align 8
  br label %if.end.37

if.end.37:                                        ; preds = %if.then.33, %lor.lhs.false
  br label %if.end.38

if.end.38:                                        ; preds = %if.end.37, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end.38
  %43 = load i32, i32* %i, align 4
  %inc39 = add nsw i32 %43, 1
  store i32 %inc39, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.fibnode* @fibnode_remove(%struct.fibnode* %node) #0 {
entry:
  %node.addr = alloca %struct.fibnode*, align 8
  %ret = alloca %struct.fibnode*, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %1 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %1, i32 0, i32 2
  %2 = load %struct.fibnode*, %struct.fibnode** %left, align 8
  %cmp = icmp eq %struct.fibnode* %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store %struct.fibnode* null, %struct.fibnode** %ret, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %3 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %left1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i32 0, i32 2
  %4 = load %struct.fibnode*, %struct.fibnode** %left1, align 8
  store %struct.fibnode* %4, %struct.fibnode** %ret, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %parent = getelementptr inbounds %struct.fibnode, %struct.fibnode* %5, i32 0, i32 0
  %6 = load %struct.fibnode*, %struct.fibnode** %parent, align 8
  %cmp2 = icmp ne %struct.fibnode* %6, null
  br i1 %cmp2, label %land.lhs.true, label %if.end.8

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %parent3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %7, i32 0, i32 0
  %8 = load %struct.fibnode*, %struct.fibnode** %parent3, align 8
  %child = getelementptr inbounds %struct.fibnode, %struct.fibnode* %8, i32 0, i32 1
  %9 = load %struct.fibnode*, %struct.fibnode** %child, align 8
  %10 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %cmp4 = icmp eq %struct.fibnode* %9, %10
  br i1 %cmp4, label %if.then.5, label %if.end.8

if.then.5:                                        ; preds = %land.lhs.true
  %11 = load %struct.fibnode*, %struct.fibnode** %ret, align 8
  %12 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %parent6 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %12, i32 0, i32 0
  %13 = load %struct.fibnode*, %struct.fibnode** %parent6, align 8
  %child7 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %13, i32 0, i32 1
  store %struct.fibnode* %11, %struct.fibnode** %child7, align 8
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.5, %land.lhs.true, %if.end
  %14 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %left9 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %14, i32 0, i32 2
  %15 = load %struct.fibnode*, %struct.fibnode** %left9, align 8
  %16 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %16, i32 0, i32 3
  %17 = load %struct.fibnode*, %struct.fibnode** %right, align 8
  %left10 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %17, i32 0, i32 2
  store %struct.fibnode* %15, %struct.fibnode** %left10, align 8
  %18 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %right11 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %18, i32 0, i32 3
  %19 = load %struct.fibnode*, %struct.fibnode** %right11, align 8
  %20 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %left12 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %20, i32 0, i32 2
  %21 = load %struct.fibnode*, %struct.fibnode** %left12, align 8
  %right13 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %21, i32 0, i32 3
  store %struct.fibnode* %19, %struct.fibnode** %right13, align 8
  %22 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %parent14 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %22, i32 0, i32 0
  store %struct.fibnode* null, %struct.fibnode** %parent14, align 8
  %23 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %24 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %left15 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %24, i32 0, i32 2
  store %struct.fibnode* %23, %struct.fibnode** %left15, align 8
  %25 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %26 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %right16 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %26, i32 0, i32 3
  store %struct.fibnode* %25, %struct.fibnode** %right16, align 8
  %27 = load %struct.fibnode*, %struct.fibnode** %ret, align 8
  ret %struct.fibnode* %27
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

; Function Attrs: nounwind uwtable
define internal void @fibheap_link(%struct.fibheap* %heap, %struct.fibnode* %node, %struct.fibnode* %parent) #0 {
entry:
  %heap.addr = alloca %struct.fibheap*, align 8
  %node.addr = alloca %struct.fibnode*, align 8
  %parent.addr = alloca %struct.fibnode*, align 8
  store %struct.fibheap* %heap, %struct.fibheap** %heap.addr, align 8
  store %struct.fibnode* %node, %struct.fibnode** %node.addr, align 8
  store %struct.fibnode* %parent, %struct.fibnode** %parent.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %parent.addr, align 8
  %child = getelementptr inbounds %struct.fibnode, %struct.fibnode* %0, i32 0, i32 1
  %1 = load %struct.fibnode*, %struct.fibnode** %child, align 8
  %cmp = icmp eq %struct.fibnode* %1, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %3 = load %struct.fibnode*, %struct.fibnode** %parent.addr, align 8
  %child1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %3, i32 0, i32 1
  store %struct.fibnode* %2, %struct.fibnode** %child1, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.fibnode*, %struct.fibnode** %parent.addr, align 8
  %child2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %4, i32 0, i32 1
  %5 = load %struct.fibnode*, %struct.fibnode** %child2, align 8
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %5, i32 0, i32 2
  %6 = load %struct.fibnode*, %struct.fibnode** %left, align 8
  %7 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  call void @fibnode_insert_after(%struct.fibnode* %6, %struct.fibnode* %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.fibnode*, %struct.fibnode** %parent.addr, align 8
  %9 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %parent3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %9, i32 0, i32 0
  store %struct.fibnode* %8, %struct.fibnode** %parent3, align 8
  %10 = load %struct.fibnode*, %struct.fibnode** %parent.addr, align 8
  %degree = getelementptr inbounds %struct.fibnode, %struct.fibnode* %10, i32 0, i32 6
  %bf.load = load i32, i32* %degree, align 8
  %bf.clear = and i32 %bf.load, 2147483647
  %inc = add i32 %bf.clear, 1
  %bf.load4 = load i32, i32* %degree, align 8
  %bf.value = and i32 %inc, 2147483647
  %bf.clear5 = and i32 %bf.load4, -2147483648
  %bf.set = or i32 %bf.clear5, %bf.value
  store i32 %bf.set, i32* %degree, align 8
  %11 = load %struct.fibnode*, %struct.fibnode** %node.addr, align 8
  %mark = getelementptr inbounds %struct.fibnode, %struct.fibnode* %11, i32 0, i32 6
  %bf.load6 = load i32, i32* %mark, align 8
  %bf.clear7 = and i32 %bf.load6, 2147483647
  store i32 %bf.clear7, i32* %mark, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fibnode_insert_after(%struct.fibnode* %a, %struct.fibnode* %b) #0 {
entry:
  %a.addr = alloca %struct.fibnode*, align 8
  %b.addr = alloca %struct.fibnode*, align 8
  store %struct.fibnode* %a, %struct.fibnode** %a.addr, align 8
  store %struct.fibnode* %b, %struct.fibnode** %b.addr, align 8
  %0 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %1 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %right = getelementptr inbounds %struct.fibnode, %struct.fibnode* %1, i32 0, i32 3
  %2 = load %struct.fibnode*, %struct.fibnode** %right, align 8
  %cmp = icmp eq %struct.fibnode* %0, %2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %4 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %right1 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %4, i32 0, i32 3
  store %struct.fibnode* %3, %struct.fibnode** %right1, align 8
  %5 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %6 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %left = getelementptr inbounds %struct.fibnode, %struct.fibnode* %6, i32 0, i32 2
  store %struct.fibnode* %5, %struct.fibnode** %left, align 8
  %7 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %8 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %right2 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %8, i32 0, i32 3
  store %struct.fibnode* %7, %struct.fibnode** %right2, align 8
  %9 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %10 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %left3 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %10, i32 0, i32 2
  store %struct.fibnode* %9, %struct.fibnode** %left3, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %11 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %right4 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %11, i32 0, i32 3
  %12 = load %struct.fibnode*, %struct.fibnode** %right4, align 8
  %13 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %right5 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %13, i32 0, i32 3
  store %struct.fibnode* %12, %struct.fibnode** %right5, align 8
  %14 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %15 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %right6 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %15, i32 0, i32 3
  %16 = load %struct.fibnode*, %struct.fibnode** %right6, align 8
  %left7 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %16, i32 0, i32 2
  store %struct.fibnode* %14, %struct.fibnode** %left7, align 8
  %17 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %18 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %right8 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %18, i32 0, i32 3
  store %struct.fibnode* %17, %struct.fibnode** %right8, align 8
  %19 = load %struct.fibnode*, %struct.fibnode** %a.addr, align 8
  %20 = load %struct.fibnode*, %struct.fibnode** %b.addr, align 8
  %left9 = getelementptr inbounds %struct.fibnode, %struct.fibnode* %20, i32 0, i32 2
  store %struct.fibnode* %19, %struct.fibnode** %left9, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { inlinehint nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
