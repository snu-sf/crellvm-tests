; ModuleID = './node.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._node = type { i16, i8*, i32, i32, i32, %struct._node* }

; Function Attrs: nounwind uwtable
define %struct._node* @PyNode_New(i32 %type) #0 {
entry:
  %retval = alloca %struct._node*, align 8
  %type.addr = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  store i32 %type, i32* %type.addr, align 4
  %call = call i8* @PyObject_Malloc(i64 40)
  %0 = bitcast i8* %call to %struct._node*
  store %struct._node* %0, %struct._node** %n, align 8
  %1 = load %struct._node*, %struct._node** %n, align 8
  %cmp = icmp eq %struct._node* %1, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store %struct._node* null, %struct._node** %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %type.addr, align 4
  %conv = trunc i32 %2 to i16
  %3 = load %struct._node*, %struct._node** %n, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %3, i32 0, i32 0
  store i16 %conv, i16* %n_type, align 2
  %4 = load %struct._node*, %struct._node** %n, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 1
  store i8* null, i8** %n_str, align 8
  %5 = load %struct._node*, %struct._node** %n, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %5, i32 0, i32 2
  store i32 0, i32* %n_lineno, align 4
  %6 = load %struct._node*, %struct._node** %n, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 4
  store i32 0, i32* %n_nchildren, align 4
  %7 = load %struct._node*, %struct._node** %n, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  store %struct._node* null, %struct._node** %n_child, align 8
  %8 = load %struct._node*, %struct._node** %n, align 8
  store %struct._node* %8, %struct._node** %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %9 = load %struct._node*, %struct._node** %retval
  ret %struct._node* %9
}

declare i8* @PyObject_Malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @PyNode_AddChild(%struct._node* %n1, i32 %type, i8* %str, i32 %lineno, i32 %col_offset) #0 {
entry:
  %retval = alloca i32, align 4
  %n1.addr = alloca %struct._node*, align 8
  %type.addr = alloca i32, align 4
  %str.addr = alloca i8*, align 8
  %lineno.addr = alloca i32, align 4
  %col_offset.addr = alloca i32, align 4
  %nch = alloca i32, align 4
  %current_capacity = alloca i32, align 4
  %required_capacity = alloca i32, align 4
  %n = alloca %struct._node*, align 8
  store %struct._node* %n1, %struct._node** %n1.addr, align 8
  store i32 %type, i32* %type.addr, align 4
  store i8* %str, i8** %str.addr, align 8
  store i32 %lineno, i32* %lineno.addr, align 4
  store i32 %col_offset, i32* %col_offset.addr, align 4
  %0 = load %struct._node*, %struct._node** %n1.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %nch, align 4
  %2 = load i32, i32* %nch, align 4
  %cmp = icmp eq i32 %2, 2147483647
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, i32* %nch, align 4
  %cmp1 = icmp slt i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 19, i32* %retval
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, i32* %nch, align 4
  %cmp2 = icmp sle i32 %4, 1
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  %5 = load i32, i32* %nch, align 4
  %conv = sext i32 %5 to i64
  br label %cond.end.9

cond.false:                                       ; preds = %if.end
  %6 = load i32, i32* %nch, align 4
  %cmp3 = icmp sle i32 %6, 128
  br i1 %cmp3, label %cond.true.5, label %cond.false.7

cond.true.5:                                      ; preds = %cond.false
  %7 = load i32, i32* %nch, align 4
  %conv6 = sext i32 %7 to i64
  %add = add i64 %conv6, 3
  %and = and i64 %add, -4
  br label %cond.end

cond.false.7:                                     ; preds = %cond.false
  %8 = load i32, i32* %nch, align 4
  %call = call i32 @fancy_roundup(i32 %8)
  %conv8 = sext i32 %call to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false.7, %cond.true.5
  %cond = phi i64 [ %and, %cond.true.5 ], [ %conv8, %cond.false.7 ]
  br label %cond.end.9

cond.end.9:                                       ; preds = %cond.end, %cond.true
  %cond10 = phi i64 [ %conv, %cond.true ], [ %cond, %cond.end ]
  %conv11 = trunc i64 %cond10 to i32
  store i32 %conv11, i32* %current_capacity, align 4
  %9 = load i32, i32* %nch, align 4
  %add12 = add i32 %9, 1
  %cmp13 = icmp sle i32 %add12, 1
  br i1 %cmp13, label %cond.true.15, label %cond.false.18

cond.true.15:                                     ; preds = %cond.end.9
  %10 = load i32, i32* %nch, align 4
  %add16 = add i32 %10, 1
  %conv17 = sext i32 %add16 to i64
  br label %cond.end.33

cond.false.18:                                    ; preds = %cond.end.9
  %11 = load i32, i32* %nch, align 4
  %add19 = add i32 %11, 1
  %cmp20 = icmp sle i32 %add19, 128
  br i1 %cmp20, label %cond.true.22, label %cond.false.27

cond.true.22:                                     ; preds = %cond.false.18
  %12 = load i32, i32* %nch, align 4
  %add23 = add i32 %12, 1
  %conv24 = sext i32 %add23 to i64
  %add25 = add i64 %conv24, 3
  %and26 = and i64 %add25, -4
  br label %cond.end.31

cond.false.27:                                    ; preds = %cond.false.18
  %13 = load i32, i32* %nch, align 4
  %add28 = add i32 %13, 1
  %call29 = call i32 @fancy_roundup(i32 %add28)
  %conv30 = sext i32 %call29 to i64
  br label %cond.end.31

cond.end.31:                                      ; preds = %cond.false.27, %cond.true.22
  %cond32 = phi i64 [ %and26, %cond.true.22 ], [ %conv30, %cond.false.27 ]
  br label %cond.end.33

cond.end.33:                                      ; preds = %cond.end.31, %cond.true.15
  %cond34 = phi i64 [ %conv17, %cond.true.15 ], [ %cond32, %cond.end.31 ]
  %conv35 = trunc i64 %cond34 to i32
  store i32 %conv35, i32* %required_capacity, align 4
  %14 = load i32, i32* %current_capacity, align 4
  %cmp36 = icmp slt i32 %14, 0
  br i1 %cmp36, label %if.then.41, label %lor.lhs.false.38

lor.lhs.false.38:                                 ; preds = %cond.end.33
  %15 = load i32, i32* %required_capacity, align 4
  %cmp39 = icmp slt i32 %15, 0
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %lor.lhs.false.38, %cond.end.33
  store i32 19, i32* %retval
  br label %return

if.end.42:                                        ; preds = %lor.lhs.false.38
  %16 = load i32, i32* %current_capacity, align 4
  %17 = load i32, i32* %required_capacity, align 4
  %cmp43 = icmp slt i32 %16, %17
  br i1 %cmp43, label %if.then.45, label %if.end.58

if.then.45:                                       ; preds = %if.end.42
  %18 = load i32, i32* %required_capacity, align 4
  %conv46 = sext i32 %18 to i64
  %cmp47 = icmp ugt i64 %conv46, 461168601842738790
  br i1 %cmp47, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.then.45
  store i32 15, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.then.45
  %19 = load %struct._node*, %struct._node** %n1.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %19, i32 0, i32 5
  %20 = load %struct._node*, %struct._node** %n_child, align 8
  store %struct._node* %20, %struct._node** %n, align 8
  %21 = load %struct._node*, %struct._node** %n, align 8
  %22 = bitcast %struct._node* %21 to i8*
  %23 = load i32, i32* %required_capacity, align 4
  %conv51 = sext i32 %23 to i64
  %mul = mul i64 %conv51, 40
  %call52 = call i8* @PyObject_Realloc(i8* %22, i64 %mul)
  %24 = bitcast i8* %call52 to %struct._node*
  store %struct._node* %24, %struct._node** %n, align 8
  %25 = load %struct._node*, %struct._node** %n, align 8
  %cmp53 = icmp eq %struct._node* %25, null
  br i1 %cmp53, label %if.then.55, label %if.end.56

if.then.55:                                       ; preds = %if.end.50
  store i32 15, i32* %retval
  br label %return

if.end.56:                                        ; preds = %if.end.50
  %26 = load %struct._node*, %struct._node** %n, align 8
  %27 = load %struct._node*, %struct._node** %n1.addr, align 8
  %n_child57 = getelementptr inbounds %struct._node, %struct._node* %27, i32 0, i32 5
  store %struct._node* %26, %struct._node** %n_child57, align 8
  br label %if.end.58

if.end.58:                                        ; preds = %if.end.56, %if.end.42
  %28 = load %struct._node*, %struct._node** %n1.addr, align 8
  %n_nchildren59 = getelementptr inbounds %struct._node, %struct._node* %28, i32 0, i32 4
  %29 = load i32, i32* %n_nchildren59, align 4
  %inc = add i32 %29, 1
  store i32 %inc, i32* %n_nchildren59, align 4
  %idxprom = sext i32 %29 to i64
  %30 = load %struct._node*, %struct._node** %n1.addr, align 8
  %n_child60 = getelementptr inbounds %struct._node, %struct._node* %30, i32 0, i32 5
  %31 = load %struct._node*, %struct._node** %n_child60, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %31, i64 %idxprom
  store %struct._node* %arrayidx, %struct._node** %n, align 8
  %32 = load i32, i32* %type.addr, align 4
  %conv61 = trunc i32 %32 to i16
  %33 = load %struct._node*, %struct._node** %n, align 8
  %n_type = getelementptr inbounds %struct._node, %struct._node* %33, i32 0, i32 0
  store i16 %conv61, i16* %n_type, align 2
  %34 = load i8*, i8** %str.addr, align 8
  %35 = load %struct._node*, %struct._node** %n, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %35, i32 0, i32 1
  store i8* %34, i8** %n_str, align 8
  %36 = load i32, i32* %lineno.addr, align 4
  %37 = load %struct._node*, %struct._node** %n, align 8
  %n_lineno = getelementptr inbounds %struct._node, %struct._node* %37, i32 0, i32 2
  store i32 %36, i32* %n_lineno, align 4
  %38 = load i32, i32* %col_offset.addr, align 4
  %39 = load %struct._node*, %struct._node** %n, align 8
  %n_col_offset = getelementptr inbounds %struct._node, %struct._node* %39, i32 0, i32 3
  store i32 %38, i32* %n_col_offset, align 4
  %40 = load %struct._node*, %struct._node** %n, align 8
  %n_nchildren62 = getelementptr inbounds %struct._node, %struct._node* %40, i32 0, i32 4
  store i32 0, i32* %n_nchildren62, align 4
  %41 = load %struct._node*, %struct._node** %n, align 8
  %n_child63 = getelementptr inbounds %struct._node, %struct._node* %41, i32 0, i32 5
  store %struct._node* null, %struct._node** %n_child63, align 8
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.end.58, %if.then.55, %if.then.49, %if.then.41, %if.then
  %42 = load i32, i32* %retval
  ret i32 %42
}

; Function Attrs: nounwind uwtable
define internal i32 @fancy_roundup(i32 %n) #0 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4
  store i32 256, i32* %result, align 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load i32, i32* %result, align 4
  %1 = load i32, i32* %n.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %result, align 4
  %shl = shl i32 %2, 1
  store i32 %shl, i32* %result, align 4
  %3 = load i32, i32* %result, align 4
  %cmp1 = icmp sle i32 %3, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 -1, i32* %retval
  br label %return

if.end:                                           ; preds = %while.body
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %4 = load i32, i32* %result, align 4
  store i32 %4, i32* %retval
  br label %return

return:                                           ; preds = %while.end, %if.then
  %5 = load i32, i32* %retval
  ret i32 %5
}

declare i8* @PyObject_Realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define void @PyNode_Free(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %cmp = icmp ne %struct._node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  call void @freechildren(%struct._node* %1)
  %2 = load %struct._node*, %struct._node** %n.addr, align 8
  %3 = bitcast %struct._node* %2 to i8*
  call void @PyObject_Free(i8* %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @freechildren(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %i = alloca i32, align 4
  store %struct._node* %n, %struct._node** %n.addr, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, i32* %i, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 %idxprom
  call void @freechildren(%struct._node* %arrayidx)
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %6 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %6, i32 0, i32 5
  %7 = load %struct._node*, %struct._node** %n_child1, align 8
  %cmp2 = icmp ne %struct._node* %7, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %8 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child3 = getelementptr inbounds %struct._node, %struct._node* %8, i32 0, i32 5
  %9 = load %struct._node*, %struct._node** %n_child3, align 8
  %10 = bitcast %struct._node* %9 to i8*
  call void @PyObject_Free(i8* %10)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 1
  %12 = load i8*, i8** %n_str, align 8
  %cmp4 = icmp ne i8* %12, null
  br i1 %cmp4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str6 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 1
  %14 = load i8*, i8** %n_str6, align 8
  call void @PyObject_Free(i8* %14)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  ret void
}

declare void @PyObject_Free(i8*) #1

; Function Attrs: nounwind uwtable
define i64 @_PyNode_SizeOf(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %res = alloca i64, align 8
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i64 0, i64* %res, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %cmp = icmp ne %struct._node* %0, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load %struct._node*, %struct._node** %n.addr, align 8
  %call = call i64 @sizeofchildren(%struct._node* %1)
  %add = add i64 40, %call
  store i64 %add, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i64, i64* %res, align 8
  ret i64 %2
}

; Function Attrs: nounwind uwtable
define internal i64 @sizeofchildren(%struct._node* %n) #0 {
entry:
  %n.addr = alloca %struct._node*, align 8
  %res = alloca i64, align 8
  %i = alloca i32, align 4
  store %struct._node* %n, %struct._node** %n.addr, align 8
  store i64 0, i64* %res, align 8
  %0 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren = getelementptr inbounds %struct._node, %struct._node* %0, i32 0, i32 4
  %1 = load i32, i32* %n_nchildren, align 4
  store i32 %1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %2 = load i32, i32* %i, align 4
  %dec = add i32 %2, -1
  store i32 %dec, i32* %i, align 4
  %cmp = icmp sge i32 %dec, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4
  %idxprom = sext i32 %3 to i64
  %4 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child = getelementptr inbounds %struct._node, %struct._node* %4, i32 0, i32 5
  %5 = load %struct._node*, %struct._node** %n_child, align 8
  %arrayidx = getelementptr %struct._node, %struct._node* %5, i64 %idxprom
  %call = call i64 @sizeofchildren(%struct._node* %arrayidx)
  %6 = load i64, i64* %res, align 8
  %add = add i64 %6, %call
  store i64 %add, i64* %res, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %7 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_child1 = getelementptr inbounds %struct._node, %struct._node* %7, i32 0, i32 5
  %8 = load %struct._node*, %struct._node** %n_child1, align 8
  %cmp2 = icmp ne %struct._node* %8, null
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %9 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren3 = getelementptr inbounds %struct._node, %struct._node* %9, i32 0, i32 4
  %10 = load i32, i32* %n_nchildren3, align 4
  %cmp4 = icmp sle i32 %10, 1
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %11 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren5 = getelementptr inbounds %struct._node, %struct._node* %11, i32 0, i32 4
  %12 = load i32, i32* %n_nchildren5, align 4
  %conv = sext i32 %12 to i64
  br label %cond.end.17

cond.false:                                       ; preds = %if.then
  %13 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren6 = getelementptr inbounds %struct._node, %struct._node* %13, i32 0, i32 4
  %14 = load i32, i32* %n_nchildren6, align 4
  %cmp7 = icmp sle i32 %14, 128
  br i1 %cmp7, label %cond.true.9, label %cond.false.13

cond.true.9:                                      ; preds = %cond.false
  %15 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren10 = getelementptr inbounds %struct._node, %struct._node* %15, i32 0, i32 4
  %16 = load i32, i32* %n_nchildren10, align 4
  %conv11 = sext i32 %16 to i64
  %add12 = add i64 %conv11, 3
  %and = and i64 %add12, -4
  br label %cond.end

cond.false.13:                                    ; preds = %cond.false
  %17 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_nchildren14 = getelementptr inbounds %struct._node, %struct._node* %17, i32 0, i32 4
  %18 = load i32, i32* %n_nchildren14, align 4
  %call15 = call i32 @fancy_roundup(i32 %18)
  %conv16 = sext i32 %call15 to i64
  br label %cond.end

cond.end:                                         ; preds = %cond.false.13, %cond.true.9
  %cond = phi i64 [ %and, %cond.true.9 ], [ %conv16, %cond.false.13 ]
  br label %cond.end.17

cond.end.17:                                      ; preds = %cond.end, %cond.true
  %cond18 = phi i64 [ %conv, %cond.true ], [ %cond, %cond.end ]
  %mul = mul i64 %cond18, 40
  %19 = load i64, i64* %res, align 8
  %add19 = add i64 %19, %mul
  store i64 %add19, i64* %res, align 8
  br label %if.end

if.end:                                           ; preds = %cond.end.17, %for.end
  %20 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str = getelementptr inbounds %struct._node, %struct._node* %20, i32 0, i32 1
  %21 = load i8*, i8** %n_str, align 8
  %cmp20 = icmp ne i8* %21, null
  br i1 %cmp20, label %if.then.22, label %if.end.27

if.then.22:                                       ; preds = %if.end
  %22 = load %struct._node*, %struct._node** %n.addr, align 8
  %n_str23 = getelementptr inbounds %struct._node, %struct._node* %22, i32 0, i32 1
  %23 = load i8*, i8** %n_str23, align 8
  %call24 = call i64 @strlen(i8* %23) #3
  %add25 = add i64 %call24, 1
  %24 = load i64, i64* %res, align 8
  %add26 = add i64 %24, %add25
  store i64 %add26, i64* %res, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.then.22, %if.end
  %25 = load i64, i64* %res, align 8
  ret i64 %25
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
