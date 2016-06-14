; ModuleID = 'partition.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: nounwind uwtable
define %struct.partition_def* @partition_new(i32 %num_elements) #0 {
entry:
  %num_elements.addr = alloca i32, align 4
  %e = alloca i32, align 4
  %part = alloca %struct.partition_def*, align 8
  store i32 %num_elements, i32* %num_elements.addr, align 4
  %0 = load i32, i32* %num_elements.addr, align 4
  %sub = sub nsw i32 %0, 1
  %conv = sext i32 %sub to i64
  %mul = mul i64 %conv, 24
  %add = add i64 32, %mul
  %call = call noalias i8* @xmalloc(i64 %add)
  %1 = bitcast i8* %call to %struct.partition_def*
  store %struct.partition_def* %1, %struct.partition_def** %part, align 8
  %2 = load i32, i32* %num_elements.addr, align 4
  %3 = load %struct.partition_def*, %struct.partition_def** %part, align 8
  %num_elements1 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %3, i32 0, i32 0
  store i32 %2, i32* %num_elements1, align 4
  store i32 0, i32* %e, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %e, align 4
  %5 = load i32, i32* %num_elements.addr, align 4
  %cmp = icmp slt i32 %4, %5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %e, align 4
  %7 = load i32, i32* %e, align 4
  %idxprom = sext i32 %7 to i64
  %8 = load %struct.partition_def*, %struct.partition_def** %part, align 8
  %elements = getelementptr inbounds %struct.partition_def, %struct.partition_def* %8, i32 0, i32 1
  %arrayidx = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements, i32 0, i64 %idxprom
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx, i32 0, i32 0
  store i32 %6, i32* %class_element, align 4
  %9 = load i32, i32* %e, align 4
  %idxprom3 = sext i32 %9 to i64
  %10 = load %struct.partition_def*, %struct.partition_def** %part, align 8
  %elements4 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %10, i32 0, i32 1
  %arrayidx5 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements4, i32 0, i64 %idxprom3
  %11 = load i32, i32* %e, align 4
  %idxprom6 = sext i32 %11 to i64
  %12 = load %struct.partition_def*, %struct.partition_def** %part, align 8
  %elements7 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %12, i32 0, i32 1
  %arrayidx8 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements7, i32 0, i64 %idxprom6
  %next = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx8, i32 0, i32 1
  store %struct.partition_elem* %arrayidx5, %struct.partition_elem** %next, align 8
  %13 = load i32, i32* %e, align 4
  %idxprom9 = sext i32 %13 to i64
  %14 = load %struct.partition_def*, %struct.partition_def** %part, align 8
  %elements10 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %14, i32 0, i32 1
  %arrayidx11 = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements10, i32 0, i64 %idxprom9
  %class_count = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx11, i32 0, i32 2
  store i32 1, i32* %class_count, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %e, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %e, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.partition_def*, %struct.partition_def** %part, align 8
  ret %struct.partition_def* %16
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @partition_delete(%struct.partition_def* %part) #0 {
entry:
  %part.addr = alloca %struct.partition_def*, align 8
  store %struct.partition_def* %part, %struct.partition_def** %part.addr, align 8
  %0 = load %struct.partition_def*, %struct.partition_def** %part.addr, align 8
  %1 = bitcast %struct.partition_def* %0 to i8*
  call void @free(i8* %1) #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define i32 @partition_union(%struct.partition_def* %part, i32 %elem1, i32 %elem2) #0 {
entry:
  %retval = alloca i32, align 4
  %part.addr = alloca %struct.partition_def*, align 8
  %elem1.addr = alloca i32, align 4
  %elem2.addr = alloca i32, align 4
  %elements = alloca %struct.partition_elem*, align 8
  %e1 = alloca %struct.partition_elem*, align 8
  %e2 = alloca %struct.partition_elem*, align 8
  %p = alloca %struct.partition_elem*, align 8
  %old_next = alloca %struct.partition_elem*, align 8
  %class_element = alloca i32, align 4
  %temp = alloca i32, align 4
  store %struct.partition_def* %part, %struct.partition_def** %part.addr, align 8
  store i32 %elem1, i32* %elem1.addr, align 4
  store i32 %elem2, i32* %elem2.addr, align 4
  %0 = load %struct.partition_def*, %struct.partition_def** %part.addr, align 8
  %elements1 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %0, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements1, i32 0, i32 0
  store %struct.partition_elem* %arraydecay, %struct.partition_elem** %elements, align 8
  %1 = load i32, i32* %elem1.addr, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %2, i64 %idxprom
  %class_element2 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx, i32 0, i32 0
  %3 = load i32, i32* %class_element2, align 4
  store i32 %3, i32* %class_element, align 4
  %4 = load i32, i32* %class_element, align 4
  %5 = load i32, i32* %elem2.addr, align 4
  %idxprom3 = sext i32 %5 to i64
  %6 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx4 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %6, i64 %idxprom3
  %class_element5 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx4, i32 0, i32 0
  %7 = load i32, i32* %class_element5, align 4
  %cmp = icmp eq i32 %4, %7
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i32, i32* %class_element, align 4
  store i32 %8, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %9 = load i32, i32* %elem1.addr, align 4
  %idxprom6 = sext i32 %9 to i64
  %10 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx7 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %10, i64 %idxprom6
  %class_count = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx7, i32 0, i32 2
  %11 = load i32, i32* %class_count, align 4
  %12 = load i32, i32* %elem2.addr, align 4
  %idxprom8 = sext i32 %12 to i64
  %13 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx9 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %13, i64 %idxprom8
  %class_count10 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx9, i32 0, i32 2
  %14 = load i32, i32* %class_count10, align 4
  %cmp11 = icmp ult i32 %11, %14
  br i1 %cmp11, label %if.then.12, label %if.end.16

if.then.12:                                       ; preds = %if.end
  %15 = load i32, i32* %elem1.addr, align 4
  store i32 %15, i32* %temp, align 4
  %16 = load i32, i32* %elem2.addr, align 4
  store i32 %16, i32* %elem1.addr, align 4
  %17 = load i32, i32* %temp, align 4
  store i32 %17, i32* %elem2.addr, align 4
  %18 = load i32, i32* %elem1.addr, align 4
  %idxprom13 = sext i32 %18 to i64
  %19 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx14 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %19, i64 %idxprom13
  %class_element15 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx14, i32 0, i32 0
  %20 = load i32, i32* %class_element15, align 4
  store i32 %20, i32* %class_element, align 4
  br label %if.end.16

if.end.16:                                        ; preds = %if.then.12, %if.end
  %21 = load i32, i32* %elem1.addr, align 4
  %idxprom17 = sext i32 %21 to i64
  %22 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx18 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %22, i64 %idxprom17
  store %struct.partition_elem* %arrayidx18, %struct.partition_elem** %e1, align 8
  %23 = load i32, i32* %elem2.addr, align 4
  %idxprom19 = sext i32 %23 to i64
  %24 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx20 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %24, i64 %idxprom19
  store %struct.partition_elem* %arrayidx20, %struct.partition_elem** %e2, align 8
  %25 = load %struct.partition_elem*, %struct.partition_elem** %e2, align 8
  %class_element21 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %25, i32 0, i32 0
  %26 = load i32, i32* %class_element21, align 4
  %idxprom22 = sext i32 %26 to i64
  %27 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx23 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %27, i64 %idxprom22
  %class_count24 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx23, i32 0, i32 2
  %28 = load i32, i32* %class_count24, align 4
  %29 = load i32, i32* %class_element, align 4
  %idxprom25 = sext i32 %29 to i64
  %30 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx26 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %30, i64 %idxprom25
  %class_count27 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx26, i32 0, i32 2
  %31 = load i32, i32* %class_count27, align 4
  %add = add i32 %31, %28
  store i32 %add, i32* %class_count27, align 4
  %32 = load i32, i32* %class_element, align 4
  %33 = load %struct.partition_elem*, %struct.partition_elem** %e2, align 8
  %class_element28 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %33, i32 0, i32 0
  store i32 %32, i32* %class_element28, align 4
  %34 = load %struct.partition_elem*, %struct.partition_elem** %e2, align 8
  %next = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %34, i32 0, i32 1
  %35 = load %struct.partition_elem*, %struct.partition_elem** %next, align 8
  store %struct.partition_elem* %35, %struct.partition_elem** %p, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end.16
  %36 = load %struct.partition_elem*, %struct.partition_elem** %p, align 8
  %37 = load %struct.partition_elem*, %struct.partition_elem** %e2, align 8
  %cmp29 = icmp ne %struct.partition_elem* %36, %37
  br i1 %cmp29, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %38 = load i32, i32* %class_element, align 4
  %39 = load %struct.partition_elem*, %struct.partition_elem** %p, align 8
  %class_element30 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %39, i32 0, i32 0
  store i32 %38, i32* %class_element30, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %40 = load %struct.partition_elem*, %struct.partition_elem** %p, align 8
  %next31 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %40, i32 0, i32 1
  %41 = load %struct.partition_elem*, %struct.partition_elem** %next31, align 8
  store %struct.partition_elem* %41, %struct.partition_elem** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %42 = load %struct.partition_elem*, %struct.partition_elem** %e1, align 8
  %next32 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %42, i32 0, i32 1
  %43 = load %struct.partition_elem*, %struct.partition_elem** %next32, align 8
  store %struct.partition_elem* %43, %struct.partition_elem** %old_next, align 8
  %44 = load %struct.partition_elem*, %struct.partition_elem** %e2, align 8
  %next33 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %44, i32 0, i32 1
  %45 = load %struct.partition_elem*, %struct.partition_elem** %next33, align 8
  %46 = load %struct.partition_elem*, %struct.partition_elem** %e1, align 8
  %next34 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %46, i32 0, i32 1
  store %struct.partition_elem* %45, %struct.partition_elem** %next34, align 8
  %47 = load %struct.partition_elem*, %struct.partition_elem** %old_next, align 8
  %48 = load %struct.partition_elem*, %struct.partition_elem** %e2, align 8
  %next35 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %48, i32 0, i32 1
  store %struct.partition_elem* %47, %struct.partition_elem** %next35, align 8
  %49 = load i32, i32* %class_element, align 4
  store i32 %49, i32* %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %50 = load i32, i32* %retval
  ret i32 %50
}

; Function Attrs: nounwind uwtable
define void @partition_print(%struct.partition_def* %part, %struct._IO_FILE* %fp) #0 {
entry:
  %part.addr = alloca %struct.partition_def*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %done = alloca i8*, align 8
  %num_elements = alloca i32, align 4
  %elements = alloca %struct.partition_elem*, align 8
  %class_elements = alloca i32*, align 8
  %e = alloca i32, align 4
  %c = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.partition_def* %part, %struct.partition_def** %part.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  %0 = load %struct.partition_def*, %struct.partition_def** %part.addr, align 8
  %num_elements1 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %0, i32 0, i32 0
  %1 = load i32, i32* %num_elements1, align 4
  store i32 %1, i32* %num_elements, align 4
  %2 = load %struct.partition_def*, %struct.partition_def** %part.addr, align 8
  %elements2 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %2, i32 0, i32 1
  %arraydecay = getelementptr inbounds [1 x %struct.partition_elem], [1 x %struct.partition_elem]* %elements2, i32 0, i32 0
  store %struct.partition_elem* %arraydecay, %struct.partition_elem** %elements, align 8
  %3 = load i32, i32* %num_elements, align 4
  %conv = sext i32 %3 to i64
  %call = call noalias i8* @xmalloc(i64 %conv)
  store i8* %call, i8** %done, align 8
  %4 = load i8*, i8** %done, align 8
  %5 = load i32, i32* %num_elements, align 4
  %conv3 = sext i32 %5 to i64
  call void @llvm.memset.p0i8.i64(i8* %4, i8 0, i64 %conv3, i32 1, i1 false)
  %6 = load i32, i32* %num_elements, align 4
  %conv4 = sext i32 %6 to i64
  %mul = mul i64 %conv4, 4
  %call5 = call noalias i8* @xmalloc(i64 %mul)
  %7 = bitcast i8* %call5 to i32*
  store i32* %7, i32** %class_elements, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call6 = call i32 @fputc(i32 91, %struct._IO_FILE* %8)
  store i32 0, i32* %e, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.37, %entry
  %9 = load i32, i32* %e, align 4
  %10 = load i32, i32* %num_elements, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end.39

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %e, align 4
  %idxprom = sext i32 %11 to i64
  %12 = load i8*, i8** %done, align 8
  %arrayidx = getelementptr inbounds i8, i8* %12, i64 %idxprom
  %13 = load i8, i8* %arrayidx, align 1
  %tobool = icmp ne i8 %13, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %14 = load i32, i32* %e, align 4
  store i32 %14, i32* %c, align 4
  %15 = load i32, i32* %e, align 4
  %idxprom8 = sext i32 %15 to i64
  %16 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx9 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %16, i64 %idxprom8
  %class_element = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx9, i32 0, i32 0
  %17 = load i32, i32* %class_element, align 4
  %idxprom10 = sext i32 %17 to i64
  %18 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx11 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %18, i64 %idxprom10
  %class_count = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx11, i32 0, i32 2
  %19 = load i32, i32* %class_count, align 4
  store i32 %19, i32* %count, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.12

for.cond.12:                                      ; preds = %for.inc, %if.then
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %count, align 4
  %cmp13 = icmp slt i32 %20, %21
  br i1 %cmp13, label %for.body.15, label %for.end

for.body.15:                                      ; preds = %for.cond.12
  %22 = load i32, i32* %c, align 4
  %23 = load i32, i32* %i, align 4
  %idxprom16 = sext i32 %23 to i64
  %24 = load i32*, i32** %class_elements, align 8
  %arrayidx17 = getelementptr inbounds i32, i32* %24, i64 %idxprom16
  store i32 %22, i32* %arrayidx17, align 4
  %25 = load i32, i32* %c, align 4
  %idxprom18 = sext i32 %25 to i64
  %26 = load i8*, i8** %done, align 8
  %arrayidx19 = getelementptr inbounds i8, i8* %26, i64 %idxprom18
  store i8 1, i8* %arrayidx19, align 1
  %27 = load i32, i32* %c, align 4
  %idxprom20 = sext i32 %27 to i64
  %28 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %arrayidx21 = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %28, i64 %idxprom20
  %next = getelementptr inbounds %struct.partition_elem, %struct.partition_elem* %arrayidx21, i32 0, i32 1
  %29 = load %struct.partition_elem*, %struct.partition_elem** %next, align 8
  %30 = load %struct.partition_elem*, %struct.partition_elem** %elements, align 8
  %sub.ptr.lhs.cast = ptrtoint %struct.partition_elem* %29 to i64
  %sub.ptr.rhs.cast = ptrtoint %struct.partition_elem* %30 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 24
  %conv22 = trunc i64 %sub.ptr.div to i32
  store i32 %conv22, i32* %c, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.15
  %31 = load i32, i32* %i, align 4
  %inc = add nsw i32 %31, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond.12

for.end:                                          ; preds = %for.cond.12
  %32 = load i32*, i32** %class_elements, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = load i32, i32* %count, align 4
  call void @specqsort(i8* %33, i32 %34, i32 4, i32 (...)* bitcast (i32 (i8*, i8*)* @elem_compare to i32 (...)*))
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call23 = call i32 @fputc(i32 40, %struct._IO_FILE* %35)
  store i32 0, i32* %i, align 4
  br label %for.cond.24

for.cond.24:                                      ; preds = %for.inc.33, %for.end
  %36 = load i32, i32* %i, align 4
  %37 = load i32, i32* %count, align 4
  %cmp25 = icmp slt i32 %36, %37
  br i1 %cmp25, label %for.body.27, label %for.end.35

for.body.27:                                      ; preds = %for.cond.24
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %39 = load i32, i32* %i, align 4
  %cmp28 = icmp eq i32 %39, 0
  %cond = select i1 %cmp28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)
  %40 = load i32, i32* %i, align 4
  %idxprom30 = sext i32 %40 to i64
  %41 = load i32*, i32** %class_elements, align 8
  %arrayidx31 = getelementptr inbounds i32, i32* %41, i64 %idxprom30
  %42 = load i32, i32* %arrayidx31, align 4
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* %cond, i32 %42)
  br label %for.inc.33

for.inc.33:                                       ; preds = %for.body.27
  %43 = load i32, i32* %i, align 4
  %inc34 = add nsw i32 %43, 1
  store i32 %inc34, i32* %i, align 4
  br label %for.cond.24

for.end.35:                                       ; preds = %for.cond.24
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @fputc(i32 41, %struct._IO_FILE* %44)
  br label %if.end

if.end:                                           ; preds = %for.end.35, %for.body
  br label %for.inc.37

for.inc.37:                                       ; preds = %if.end
  %45 = load i32, i32* %e, align 4
  %inc38 = add nsw i32 %45, 1
  store i32 %inc38, i32* %e, align 4
  br label %for.cond

for.end.39:                                       ; preds = %for.cond
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call40 = call i32 @fputc(i32 93, %struct._IO_FILE* %46)
  %47 = load i8*, i8** %done, align 8
  call void @free(i8* %47) #3
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #3

declare i32 @fputc(i32, %struct._IO_FILE*) #1

declare void @specqsort(i8*, i32, i32, i32 (...)*) #1

; Function Attrs: nounwind uwtable
define internal i32 @elem_compare(i8* %elem1, i8* %elem2) #0 {
entry:
  %retval = alloca i32, align 4
  %elem1.addr = alloca i8*, align 8
  %elem2.addr = alloca i8*, align 8
  %e1 = alloca i32, align 4
  %e2 = alloca i32, align 4
  store i8* %elem1, i8** %elem1.addr, align 8
  store i8* %elem2, i8** %elem2.addr, align 8
  %0 = load i8*, i8** %elem1.addr, align 8
  %1 = bitcast i8* %0 to i32*
  %2 = load i32, i32* %1, align 4
  store i32 %2, i32* %e1, align 4
  %3 = load i8*, i8** %elem2.addr, align 8
  %4 = bitcast i8* %3 to i32*
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %e2, align 4
  %6 = load i32, i32* %e1, align 4
  %7 = load i32, i32* %e2, align 4
  %cmp = icmp slt i32 %6, %7
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 -1, i32* %retval
  br label %return

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %e1, align 4
  %9 = load i32, i32* %e2, align 4
  %cmp1 = icmp sgt i32 %8, %9
  br i1 %cmp1, label %if.then.2, label %if.else.3

if.then.2:                                        ; preds = %if.else
  store i32 1, i32* %retval
  br label %return

if.else.3:                                        ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

return:                                           ; preds = %if.else.3, %if.then.2, %if.then
  %10 = load i32, i32* %retval
  ret i32 %10
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
