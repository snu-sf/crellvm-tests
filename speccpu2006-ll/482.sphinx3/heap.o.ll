; ModuleID = 'heap.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heap_s = type { i8*, i32, i32, i32, %struct.heap_s*, %struct.heap_s* }

@.str = private unnamed_addr constant [7 x i8] c"heap.c\00", align 1

; Function Attrs: nounwind uwtable
define i8* @heap_new() #0 {
entry:
  %h = alloca %struct.heap_s**, align 8
  %call = call i8* @__ckd_calloc__(i64 1, i64 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 97)
  %0 = bitcast i8* %call to %struct.heap_s**
  store %struct.heap_s** %0, %struct.heap_s*** %h, align 8
  %1 = load %struct.heap_s**, %struct.heap_s*** %h, align 8
  store %struct.heap_s* null, %struct.heap_s** %1, align 8
  %2 = load %struct.heap_s**, %struct.heap_s*** %h, align 8
  %3 = bitcast %struct.heap_s** %2 to i8*
  ret i8* %3
}

declare i8* @__ckd_calloc__(i64, i64, i8*, i32) #1

; Function Attrs: nounwind uwtable
define i32 @heap_insert(i8* %heap, i8* %data, i32 %val) #0 {
entry:
  %heap.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %hp = alloca %struct.heap_s**, align 8
  store i8* %heap, i8** %heap.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load i8*, i8** %heap.addr, align 8
  %1 = bitcast i8* %0 to %struct.heap_s**
  store %struct.heap_s** %1, %struct.heap_s*** %hp, align 8
  %2 = load %struct.heap_s**, %struct.heap_s*** %hp, align 8
  %3 = load %struct.heap_s*, %struct.heap_s** %2, align 8
  %4 = load i8*, i8** %data.addr, align 8
  %5 = load i32, i32* %val.addr, align 4
  %call = call %struct.heap_s* @subheap_insert(%struct.heap_s* %3, i8* %4, i32 %5)
  %6 = load %struct.heap_s**, %struct.heap_s*** %hp, align 8
  store %struct.heap_s* %call, %struct.heap_s** %6, align 8
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal %struct.heap_s* @subheap_insert(%struct.heap_s* %root, i8* %data, i32 %val) #0 {
entry:
  %retval = alloca %struct.heap_s*, align 8
  %root.addr = alloca %struct.heap_s*, align 8
  %data.addr = alloca i8*, align 8
  %val.addr = alloca i32, align 4
  %h = alloca %struct.heap_s*, align 8
  %tmpdata = alloca i8*, align 8
  %tmpval = alloca i32, align 4
  store %struct.heap_s* %root, %struct.heap_s** %root.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  store i32 %val, i32* %val.addr, align 4
  %0 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %tobool = icmp ne %struct.heap_s* %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = call i8* @__mymalloc__(i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 111)
  %1 = bitcast i8* %call to %struct.heap_s*
  store %struct.heap_s* %1, %struct.heap_s** %h, align 8
  %2 = load i8*, i8** %data.addr, align 8
  %3 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %data1 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %3, i32 0, i32 0
  store i8* %2, i8** %data1, align 8
  %4 = load i32, i32* %val.addr, align 4
  %5 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %val2 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %5, i32 0, i32 1
  store i32 %4, i32* %val2, align 4
  %6 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %r = getelementptr inbounds %struct.heap_s, %struct.heap_s* %6, i32 0, i32 5
  store %struct.heap_s* null, %struct.heap_s** %r, align 8
  %7 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %l = getelementptr inbounds %struct.heap_s, %struct.heap_s* %7, i32 0, i32 4
  store %struct.heap_s* null, %struct.heap_s** %l, align 8
  %8 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %nr = getelementptr inbounds %struct.heap_s, %struct.heap_s* %8, i32 0, i32 3
  store i32 0, i32* %nr, align 4
  %9 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %nl = getelementptr inbounds %struct.heap_s, %struct.heap_s* %9, i32 0, i32 2
  store i32 0, i32* %nl, align 4
  %10 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  store %struct.heap_s* %10, %struct.heap_s** %retval
  br label %return

if.end:                                           ; preds = %entry
  %11 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %val3 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %11, i32 0, i32 1
  %12 = load i32, i32* %val3, align 4
  %13 = load i32, i32* %val.addr, align 4
  %cmp = icmp sgt i32 %12, %13
  br i1 %cmp, label %if.then.4, label %if.end.9

if.then.4:                                        ; preds = %if.end
  %14 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %data5 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %14, i32 0, i32 0
  %15 = load i8*, i8** %data5, align 8
  store i8* %15, i8** %tmpdata, align 8
  %16 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %val6 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %16, i32 0, i32 1
  %17 = load i32, i32* %val6, align 4
  store i32 %17, i32* %tmpval, align 4
  %18 = load i8*, i8** %data.addr, align 8
  %19 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %data7 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %19, i32 0, i32 0
  store i8* %18, i8** %data7, align 8
  %20 = load i32, i32* %val.addr, align 4
  %21 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %val8 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %21, i32 0, i32 1
  store i32 %20, i32* %val8, align 4
  %22 = load i8*, i8** %tmpdata, align 8
  store i8* %22, i8** %data.addr, align 8
  %23 = load i32, i32* %tmpval, align 4
  store i32 %23, i32* %val.addr, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.4, %if.end
  %24 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %nl10 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %24, i32 0, i32 2
  %25 = load i32, i32* %nl10, align 4
  %26 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %nr11 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %26, i32 0, i32 3
  %27 = load i32, i32* %nr11, align 4
  %cmp12 = icmp sgt i32 %25, %27
  br i1 %cmp12, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.end.9
  %28 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %r14 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %28, i32 0, i32 5
  %29 = load %struct.heap_s*, %struct.heap_s** %r14, align 8
  %30 = load i8*, i8** %data.addr, align 8
  %31 = load i32, i32* %val.addr, align 4
  %call15 = call %struct.heap_s* @subheap_insert(%struct.heap_s* %29, i8* %30, i32 %31)
  %32 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %r16 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %32, i32 0, i32 5
  store %struct.heap_s* %call15, %struct.heap_s** %r16, align 8
  %33 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %nr17 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %33, i32 0, i32 3
  %34 = load i32, i32* %nr17, align 4
  %inc = add nsw i32 %34, 1
  store i32 %inc, i32* %nr17, align 4
  br label %if.end.23

if.else:                                          ; preds = %if.end.9
  %35 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %l18 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %35, i32 0, i32 4
  %36 = load %struct.heap_s*, %struct.heap_s** %l18, align 8
  %37 = load i8*, i8** %data.addr, align 8
  %38 = load i32, i32* %val.addr, align 4
  %call19 = call %struct.heap_s* @subheap_insert(%struct.heap_s* %36, i8* %37, i32 %38)
  %39 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %l20 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %39, i32 0, i32 4
  store %struct.heap_s* %call19, %struct.heap_s** %l20, align 8
  %40 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %nl21 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %40, i32 0, i32 2
  %41 = load i32, i32* %nl21, align 4
  %inc22 = add nsw i32 %41, 1
  store i32 %inc22, i32* %nl21, align 4
  br label %if.end.23

if.end.23:                                        ; preds = %if.else, %if.then.13
  %42 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  store %struct.heap_s* %42, %struct.heap_s** %retval
  br label %return

return:                                           ; preds = %if.end.23, %if.then
  %43 = load %struct.heap_s*, %struct.heap_s** %retval
  ret %struct.heap_s* %43
}

; Function Attrs: nounwind uwtable
define i32 @heap_pop(i8* %heap, i8** %data, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %heap.addr = alloca i8*, align 8
  %data.addr = alloca i8**, align 8
  %val.addr = alloca i32*, align 8
  %hp = alloca %struct.heap_s**, align 8
  %h = alloca %struct.heap_s*, align 8
  store i8* %heap, i8** %heap.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i8*, i8** %heap.addr, align 8
  %1 = bitcast i8* %0 to %struct.heap_s**
  store %struct.heap_s** %1, %struct.heap_s*** %hp, align 8
  %2 = load %struct.heap_s**, %struct.heap_s*** %hp, align 8
  %3 = load %struct.heap_s*, %struct.heap_s** %2, align 8
  store %struct.heap_s* %3, %struct.heap_s** %h, align 8
  %4 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %tobool = icmp ne %struct.heap_s* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %data1 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data1, align 8
  %7 = load i8**, i8*** %data.addr, align 8
  store i8* %6, i8** %7, align 8
  %8 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %val2 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %8, i32 0, i32 1
  %9 = load i32, i32* %val2, align 4
  %10 = load i32*, i32** %val.addr, align 8
  store i32 %9, i32* %10, align 4
  %11 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %call = call %struct.heap_s* @subheap_pop(%struct.heap_s* %11)
  %12 = load %struct.heap_s**, %struct.heap_s*** %hp, align 8
  store %struct.heap_s* %call, %struct.heap_s** %12, align 8
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal %struct.heap_s* @subheap_pop(%struct.heap_s* %root) #0 {
entry:
  %retval = alloca %struct.heap_s*, align 8
  %root.addr = alloca %struct.heap_s*, align 8
  %l = alloca %struct.heap_s*, align 8
  %r = alloca %struct.heap_s*, align 8
  store %struct.heap_s* %root, %struct.heap_s** %root.addr, align 8
  %0 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %l1 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %0, i32 0, i32 4
  %1 = load %struct.heap_s*, %struct.heap_s** %l1, align 8
  store %struct.heap_s* %1, %struct.heap_s** %l, align 8
  %2 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %r2 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %2, i32 0, i32 5
  %3 = load %struct.heap_s*, %struct.heap_s** %r2, align 8
  store %struct.heap_s* %3, %struct.heap_s** %r, align 8
  %4 = load %struct.heap_s*, %struct.heap_s** %l, align 8
  %tobool = icmp ne %struct.heap_s* %4, null
  br i1 %tobool, label %if.else.8, label %if.then

if.then:                                          ; preds = %entry
  %5 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %tobool3 = icmp ne %struct.heap_s* %5, null
  br i1 %tobool3, label %if.else, label %if.then.4

if.then.4:                                        ; preds = %if.then
  %6 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %7 = bitcast %struct.heap_s* %6 to i8*
  call void @__myfree__(i8* %7, i32 40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i32 164)
  store %struct.heap_s* null, %struct.heap_s** %retval
  br label %return

if.else:                                          ; preds = %if.then
  %8 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %data = getelementptr inbounds %struct.heap_s, %struct.heap_s* %8, i32 0, i32 0
  %9 = load i8*, i8** %data, align 8
  %10 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %data5 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %10, i32 0, i32 0
  store i8* %9, i8** %data5, align 8
  %11 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %val = getelementptr inbounds %struct.heap_s, %struct.heap_s* %11, i32 0, i32 1
  %12 = load i32, i32* %val, align 4
  %13 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %val6 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %13, i32 0, i32 1
  store i32 %12, i32* %val6, align 4
  %14 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %call = call %struct.heap_s* @subheap_pop(%struct.heap_s* %14)
  %15 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %r7 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %15, i32 0, i32 5
  store %struct.heap_s* %call, %struct.heap_s** %r7, align 8
  %16 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %nr = getelementptr inbounds %struct.heap_s, %struct.heap_s* %16, i32 0, i32 3
  %17 = load i32, i32* %nr, align 4
  %dec = add nsw i32 %17, -1
  store i32 %dec, i32* %nr, align 4
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %if.end.30

if.else.8:                                        ; preds = %entry
  %18 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %tobool9 = icmp ne %struct.heap_s* %18, null
  br i1 %tobool9, label %lor.lhs.false, label %if.then.12

lor.lhs.false:                                    ; preds = %if.else.8
  %19 = load %struct.heap_s*, %struct.heap_s** %l, align 8
  %val10 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %19, i32 0, i32 1
  %20 = load i32, i32* %val10, align 4
  %21 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %val11 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %21, i32 0, i32 1
  %22 = load i32, i32* %val11, align 4
  %cmp = icmp slt i32 %20, %22
  br i1 %cmp, label %if.then.12, label %if.else.20

if.then.12:                                       ; preds = %lor.lhs.false, %if.else.8
  %23 = load %struct.heap_s*, %struct.heap_s** %l, align 8
  %data13 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %23, i32 0, i32 0
  %24 = load i8*, i8** %data13, align 8
  %25 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %data14 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %25, i32 0, i32 0
  store i8* %24, i8** %data14, align 8
  %26 = load %struct.heap_s*, %struct.heap_s** %l, align 8
  %val15 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %26, i32 0, i32 1
  %27 = load i32, i32* %val15, align 4
  %28 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %val16 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %28, i32 0, i32 1
  store i32 %27, i32* %val16, align 4
  %29 = load %struct.heap_s*, %struct.heap_s** %l, align 8
  %call17 = call %struct.heap_s* @subheap_pop(%struct.heap_s* %29)
  %30 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %l18 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %30, i32 0, i32 4
  store %struct.heap_s* %call17, %struct.heap_s** %l18, align 8
  %31 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %nl = getelementptr inbounds %struct.heap_s, %struct.heap_s* %31, i32 0, i32 2
  %32 = load i32, i32* %nl, align 4
  %dec19 = add nsw i32 %32, -1
  store i32 %dec19, i32* %nl, align 4
  br label %if.end.29

if.else.20:                                       ; preds = %lor.lhs.false
  %33 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %data21 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %33, i32 0, i32 0
  %34 = load i8*, i8** %data21, align 8
  %35 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %data22 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %35, i32 0, i32 0
  store i8* %34, i8** %data22, align 8
  %36 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %val23 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %36, i32 0, i32 1
  %37 = load i32, i32* %val23, align 4
  %38 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %val24 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %38, i32 0, i32 1
  store i32 %37, i32* %val24, align 4
  %39 = load %struct.heap_s*, %struct.heap_s** %r, align 8
  %call25 = call %struct.heap_s* @subheap_pop(%struct.heap_s* %39)
  %40 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %r26 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %40, i32 0, i32 5
  store %struct.heap_s* %call25, %struct.heap_s** %r26, align 8
  %41 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  %nr27 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %41, i32 0, i32 3
  %42 = load i32, i32* %nr27, align 4
  %dec28 = add nsw i32 %42, -1
  store i32 %dec28, i32* %nr27, align 4
  br label %if.end.29

if.end.29:                                        ; preds = %if.else.20, %if.then.12
  br label %if.end.30

if.end.30:                                        ; preds = %if.end.29, %if.end
  %43 = load %struct.heap_s*, %struct.heap_s** %root.addr, align 8
  store %struct.heap_s* %43, %struct.heap_s** %retval
  br label %return

return:                                           ; preds = %if.end.30, %if.then.4
  %44 = load %struct.heap_s*, %struct.heap_s** %retval
  ret %struct.heap_s* %44
}

; Function Attrs: nounwind uwtable
define i32 @heap_top(i8* %heap, i8** %data, i32* %val) #0 {
entry:
  %retval = alloca i32, align 4
  %heap.addr = alloca i8*, align 8
  %data.addr = alloca i8**, align 8
  %val.addr = alloca i32*, align 8
  %hp = alloca %struct.heap_s**, align 8
  %h = alloca %struct.heap_s*, align 8
  store i8* %heap, i8** %heap.addr, align 8
  store i8** %data, i8*** %data.addr, align 8
  store i32* %val, i32** %val.addr, align 8
  %0 = load i8*, i8** %heap.addr, align 8
  %1 = bitcast i8* %0 to %struct.heap_s**
  store %struct.heap_s** %1, %struct.heap_s*** %hp, align 8
  %2 = load %struct.heap_s**, %struct.heap_s*** %hp, align 8
  %3 = load %struct.heap_s*, %struct.heap_s** %2, align 8
  store %struct.heap_s* %3, %struct.heap_s** %h, align 8
  %4 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %tobool = icmp ne %struct.heap_s* %4, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %5 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %data1 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %5, i32 0, i32 0
  %6 = load i8*, i8** %data1, align 8
  %7 = load i8**, i8*** %data.addr, align 8
  store i8* %6, i8** %7, align 8
  %8 = load %struct.heap_s*, %struct.heap_s** %h, align 8
  %val2 = getelementptr inbounds %struct.heap_s, %struct.heap_s* %8, i32 0, i32 1
  %9 = load i32, i32* %val2, align 4
  %10 = load i32*, i32** %val.addr, align 8
  store i32 %9, i32* %10, align 4
  store i32 1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %11 = load i32, i32* %retval
  ret i32 %11
}

; Function Attrs: nounwind uwtable
define i32 @heap_destroy(i8* %heap) #0 {
entry:
  %heap.addr = alloca i8*, align 8
  %data = alloca i8*, align 8
  %val = alloca i32, align 4
  store i8* %heap, i8** %heap.addr, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i8*, i8** %heap.addr, align 8
  %call = call i32 @heap_pop(i8* %0, i8** %data, i32* %val)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %1 = load i8*, i8** %heap.addr, align 8
  call void @ckd_free(i8* %1)
  ret i32 0
}

declare void @ckd_free(i8*) #1

declare i8* @__mymalloc__(i32, i8*, i32) #1

declare void @__myfree__(i8*, i32, i8*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
