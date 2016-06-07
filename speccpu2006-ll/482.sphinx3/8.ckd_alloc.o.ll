; ModuleID = 'ckd_alloc.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mylist_s = type { i8**, %struct.mylist_s*, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"ckd_alloc.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"FATAL_ERROR\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"calloc(%d,%d) failed from %s(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"malloc(%d) failed from %s(%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"realloc(%d) failed from %s(%d)\0A\00", align 1
@head = internal global %struct.mylist_s* null, align 8
@.str.5 = private unnamed_addr constant [52 x i8] c"List item size (%d) not multiple of sizeof(void *)\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Unknown list item size: %d; called from %s(%d)\0A\00", align 1

; Function Attrs: nounwind uwtable
define i8* @__ckd_calloc__(i64 %n_elem, i64 %elem_size, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %n_elem.addr = alloca i64, align 8
  %elem_size.addr = alloca i64, align 8
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %mem = alloca i8*, align 8
  store i64 %n_elem, i64* %n_elem.addr, align 8
  store i64 %elem_size, i64* %elem_size.addr, align 8
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  %0 = load i64, i64* %n_elem.addr, align 8
  %1 = load i64, i64* %elem_size.addr, align 8
  %call = call noalias i8* @calloc(i64 %0, i64 %1) #4
  store i8* %call, i8** %mem, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 95, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %2 = load i64, i64* %n_elem.addr, align 8
  %3 = load i64, i64* %elem_size.addr, align 8
  %4 = load i8*, i8** %caller_file.addr, align 8
  %5 = load i32, i32* %caller_line.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i64 %2, i64 %3, i8* %4, i32 %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %6 = load i8*, i8** %mem, align 8
  ret i8* %6
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

declare void @_E__pr_header(i8*, i64, i8*) #2

declare void @_E__die_error(i8*, ...) #2

; Function Attrs: nounwind uwtable
define i8* @__ckd_malloc__(i64 %size, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %size.addr = alloca i64, align 8
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %mem = alloca i8*, align 8
  store i64 %size, i64* %size.addr, align 8
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  %0 = load i64, i64* %size.addr, align 8
  %call = call noalias i8* @malloc(i64 %0) #4
  store i8* %call, i8** %mem, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %1 = load i64, i64* %size.addr, align 8
  %2 = load i8*, i8** %caller_file.addr, align 8
  %3 = load i32, i32* %caller_line.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i32 0, i32 0), i64 %1, i8* %2, i32 %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %4 = load i8*, i8** %mem, align 8
  ret i8* %4
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i8* @__ckd_realloc__(i8* %ptr, i64 %new_size, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  %new_size.addr = alloca i64, align 8
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %mem = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  store i64 %new_size, i64* %new_size.addr, align 8
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  %0 = load i8*, i8** %ptr.addr, align 8
  %1 = load i64, i64* %new_size.addr, align 8
  %call = call i8* @realloc(i8* %0, i64 %1) #4
  store i8* %call, i8** %mem, align 8
  %cmp = icmp eq i8* %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 121, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %2 = load i64, i64* %new_size.addr, align 8
  %3 = load i8*, i8** %caller_file.addr, align 8
  %4 = load i32, i32* %caller_line.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i32 0, i32 0), i64 %2, i8* %3, i32 %4)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8*, i8** %mem, align 8
  ret i8* %5
}

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define i8* @__ckd_salloc__(i8* %orig, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %orig.addr = alloca i8*, align 8
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %len = alloca i32, align 4
  %buf = alloca i8*, align 8
  store i8* %orig, i8** %orig.addr, align 8
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  %0 = load i8*, i8** %orig.addr, align 8
  %call = call i64 @strlen(i8* %0) #5
  %add = add i64 %call, 1
  %conv = trunc i64 %add to i32
  store i32 %conv, i32* %len, align 4
  %1 = load i32, i32* %len, align 4
  %conv1 = sext i32 %1 to i64
  %2 = load i8*, i8** %caller_file.addr, align 8
  %3 = load i32, i32* %caller_line.addr, align 4
  %call2 = call i8* @__ckd_malloc__(i64 %conv1, i8* %2, i32 %3)
  store i8* %call2, i8** %buf, align 8
  %4 = load i8*, i8** %buf, align 8
  %5 = load i8*, i8** %orig.addr, align 8
  %call3 = call i8* @strcpy(i8* %4, i8* %5) #4
  %6 = load i8*, i8** %buf, align 8
  ret i8* %6
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i8** @__ckd_calloc_2d__(i32 %d1, i32 %d2, i32 %elemsize, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  %elemsize.addr = alloca i32, align 4
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %ref = alloca i8**, align 8
  %mem = alloca i8*, align 8
  %i = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %d1, i32* %d1.addr, align 4
  store i32 %d2, i32* %d2.addr, align 4
  store i32 %elemsize, i32* %elemsize.addr, align 4
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  %0 = load i32, i32* %d1.addr, align 4
  %1 = load i32, i32* %d2.addr, align 4
  %mul = mul nsw i32 %0, %1
  %conv = sext i32 %mul to i64
  %2 = load i32, i32* %elemsize.addr, align 4
  %conv1 = sext i32 %2 to i64
  %3 = load i8*, i8** %caller_file.addr, align 8
  %4 = load i32, i32* %caller_line.addr, align 4
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 %conv1, i8* %3, i32 %4)
  store i8* %call, i8** %mem, align 8
  %5 = load i32, i32* %d1.addr, align 4
  %conv2 = sext i32 %5 to i64
  %mul3 = mul i64 %conv2, 8
  %6 = load i8*, i8** %caller_file.addr, align 8
  %7 = load i32, i32* %caller_line.addr, align 4
  %call4 = call i8* @__ckd_malloc__(i64 %mul3, i8* %6, i32 %7)
  %8 = bitcast i8* %call4 to i8**
  store i8** %8, i8*** %ref, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4
  %10 = load i32, i32* %d1.addr, align 4
  %cmp = icmp slt i32 %9, %10
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %11 = load i8*, i8** %mem, align 8
  %12 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %12 to i64
  %add.ptr = getelementptr inbounds i8, i8* %11, i64 %idx.ext
  %13 = load i32, i32* %i, align 4
  %idxprom = sext i32 %13 to i64
  %14 = load i8**, i8*** %ref, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %14, i64 %idxprom
  store i8* %add.ptr, i8** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4
  %inc = add nsw i32 %15, 1
  store i32 %inc, i32* %i, align 4
  %16 = load i32, i32* %d2.addr, align 4
  %17 = load i32, i32* %elemsize.addr, align 4
  %mul6 = mul nsw i32 %16, %17
  %18 = load i32, i32* %offset, align 4
  %add = add nsw i32 %18, %mul6
  store i32 %add, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %19 = load i8**, i8*** %ref, align 8
  ret i8** %19
}

; Function Attrs: nounwind uwtable
define void @ckd_free(i8* %ptr) #0 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  %0 = load i8*, i8** %ptr.addr, align 8
  %tobool = icmp ne i8* %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8
  call void @free(i8* %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @ckd_free_2d(i8** %ptr) #0 {
entry:
  %ptr.addr = alloca i8**, align 8
  store i8** %ptr, i8*** %ptr.addr, align 8
  %0 = load i8**, i8*** %ptr.addr, align 8
  %tobool = icmp ne i8** %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i8**, i8*** %ptr.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 0
  %2 = load i8*, i8** %arrayidx, align 8
  call void @ckd_free(i8* %2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8**, i8*** %ptr.addr, align 8
  %4 = bitcast i8** %3 to i8*
  call void @ckd_free(i8* %4)
  ret void
}

; Function Attrs: nounwind uwtable
define i8*** @__ckd_calloc_3d__(i32 %d1, i32 %d2, i32 %d3, i32 %elemsize, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %d1.addr = alloca i32, align 4
  %d2.addr = alloca i32, align 4
  %d3.addr = alloca i32, align 4
  %elemsize.addr = alloca i32, align 4
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %ref1 = alloca i8***, align 8
  %ref2 = alloca i8**, align 8
  %mem = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %offset = alloca i32, align 4
  store i32 %d1, i32* %d1.addr, align 4
  store i32 %d2, i32* %d2.addr, align 4
  store i32 %d3, i32* %d3.addr, align 4
  store i32 %elemsize, i32* %elemsize.addr, align 4
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  %0 = load i32, i32* %d1.addr, align 4
  %1 = load i32, i32* %d2.addr, align 4
  %mul = mul nsw i32 %0, %1
  %2 = load i32, i32* %d3.addr, align 4
  %mul1 = mul nsw i32 %mul, %2
  %conv = sext i32 %mul1 to i64
  %3 = load i32, i32* %elemsize.addr, align 4
  %conv2 = sext i32 %3 to i64
  %4 = load i8*, i8** %caller_file.addr, align 8
  %5 = load i32, i32* %caller_line.addr, align 4
  %call = call i8* @__ckd_calloc__(i64 %conv, i64 %conv2, i8* %4, i32 %5)
  store i8* %call, i8** %mem, align 8
  %6 = load i32, i32* %d1.addr, align 4
  %conv3 = sext i32 %6 to i64
  %mul4 = mul i64 %conv3, 8
  %7 = load i8*, i8** %caller_file.addr, align 8
  %8 = load i32, i32* %caller_line.addr, align 4
  %call5 = call i8* @__ckd_malloc__(i64 %mul4, i8* %7, i32 %8)
  %9 = bitcast i8* %call5 to i8***
  store i8*** %9, i8**** %ref1, align 8
  %10 = load i32, i32* %d1.addr, align 4
  %11 = load i32, i32* %d2.addr, align 4
  %mul6 = mul nsw i32 %10, %11
  %conv7 = sext i32 %mul6 to i64
  %mul8 = mul i64 %conv7, 8
  %12 = load i8*, i8** %caller_file.addr, align 8
  %13 = load i32, i32* %caller_line.addr, align 4
  %call9 = call i8* @__ckd_malloc__(i64 %mul8, i8* %12, i32 %13)
  %14 = bitcast i8* %call9 to i8**
  store i8** %14, i8*** %ref2, align 8
  store i32 0, i32* %i, align 4
  store i32 0, i32* %offset, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %15 = load i32, i32* %i, align 4
  %16 = load i32, i32* %d1.addr, align 4
  %cmp = icmp slt i32 %15, %16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %17 = load i8**, i8*** %ref2, align 8
  %18 = load i32, i32* %offset, align 4
  %idx.ext = sext i32 %18 to i64
  %add.ptr = getelementptr inbounds i8*, i8** %17, i64 %idx.ext
  %19 = load i32, i32* %i, align 4
  %idxprom = sext i32 %19 to i64
  %20 = load i8***, i8**** %ref1, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %20, i64 %idxprom
  store i8** %add.ptr, i8*** %arrayidx, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  %22 = load i32, i32* %d2.addr, align 4
  %23 = load i32, i32* %offset, align 4
  %add = add nsw i32 %23, %22
  store i32 %add, i32* %offset, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %offset, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.11

for.cond.11:                                      ; preds = %for.inc.30, %for.end
  %24 = load i32, i32* %i, align 4
  %25 = load i32, i32* %d1.addr, align 4
  %cmp12 = icmp slt i32 %24, %25
  br i1 %cmp12, label %for.body.14, label %for.end.32

for.body.14:                                      ; preds = %for.cond.11
  store i32 0, i32* %j, align 4
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.27, %for.body.14
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* %d2.addr, align 4
  %cmp16 = icmp slt i32 %26, %27
  br i1 %cmp16, label %for.body.18, label %for.end.29

for.body.18:                                      ; preds = %for.cond.15
  %28 = load i8*, i8** %mem, align 8
  %29 = load i32, i32* %offset, align 4
  %idx.ext19 = sext i32 %29 to i64
  %add.ptr20 = getelementptr inbounds i8, i8* %28, i64 %idx.ext19
  %30 = load i32, i32* %j, align 4
  %idxprom21 = sext i32 %30 to i64
  %31 = load i32, i32* %i, align 4
  %idxprom22 = sext i32 %31 to i64
  %32 = load i8***, i8**** %ref1, align 8
  %arrayidx23 = getelementptr inbounds i8**, i8*** %32, i64 %idxprom22
  %33 = load i8**, i8*** %arrayidx23, align 8
  %arrayidx24 = getelementptr inbounds i8*, i8** %33, i64 %idxprom21
  store i8* %add.ptr20, i8** %arrayidx24, align 8
  %34 = load i32, i32* %d3.addr, align 4
  %35 = load i32, i32* %elemsize.addr, align 4
  %mul25 = mul nsw i32 %34, %35
  %36 = load i32, i32* %offset, align 4
  %add26 = add nsw i32 %36, %mul25
  store i32 %add26, i32* %offset, align 4
  br label %for.inc.27

for.inc.27:                                       ; preds = %for.body.18
  %37 = load i32, i32* %j, align 4
  %inc28 = add nsw i32 %37, 1
  store i32 %inc28, i32* %j, align 4
  br label %for.cond.15

for.end.29:                                       ; preds = %for.cond.15
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end.29
  %38 = load i32, i32* %i, align 4
  %inc31 = add nsw i32 %38, 1
  store i32 %inc31, i32* %i, align 4
  br label %for.cond.11

for.end.32:                                       ; preds = %for.cond.11
  %39 = load i8***, i8**** %ref1, align 8
  ret i8*** %39
}

; Function Attrs: nounwind uwtable
define void @ckd_free_3d(i8*** %ptr) #0 {
entry:
  %ptr.addr = alloca i8***, align 8
  store i8*** %ptr, i8**** %ptr.addr, align 8
  %0 = load i8***, i8**** %ptr.addr, align 8
  %tobool = icmp ne i8*** %0, null
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i8***, i8**** %ptr.addr, align 8
  %arrayidx = getelementptr inbounds i8**, i8*** %1, i64 0
  %2 = load i8**, i8*** %arrayidx, align 8
  %tobool1 = icmp ne i8** %2, null
  br i1 %tobool1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %3 = load i8***, i8**** %ptr.addr, align 8
  %arrayidx2 = getelementptr inbounds i8**, i8*** %3, i64 0
  %4 = load i8**, i8*** %arrayidx2, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %4, i64 0
  %5 = load i8*, i8** %arrayidx3, align 8
  call void @ckd_free(i8* %5)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %6 = load i8***, i8**** %ptr.addr, align 8
  %tobool4 = icmp ne i8*** %6, null
  br i1 %tobool4, label %if.then.5, label %if.end.7

if.then.5:                                        ; preds = %if.end
  %7 = load i8***, i8**** %ptr.addr, align 8
  %arrayidx6 = getelementptr inbounds i8**, i8*** %7, i64 0
  %8 = load i8**, i8*** %arrayidx6, align 8
  %9 = bitcast i8** %8 to i8*
  call void @ckd_free(i8* %9)
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.5, %if.end
  %10 = load i8***, i8**** %ptr.addr, align 8
  %11 = bitcast i8*** %10 to i8*
  call void @ckd_free(i8* %11)
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @__mymalloc__(i32 %elemsize, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %elemsize.addr = alloca i32, align 4
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %cp = alloca i8*, align 8
  %j = alloca i32, align 4
  %cpp = alloca i8**, align 8
  %prev = alloca %struct.mylist_s*, align 8
  %list = alloca %struct.mylist_s*, align 8
  store i32 %elemsize, i32* %elemsize.addr, align 4
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  store %struct.mylist_s* null, %struct.mylist_s** %prev, align 8
  %0 = load %struct.mylist_s*, %struct.mylist_s** @head, align 8
  store %struct.mylist_s* %0, %struct.mylist_s** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %tobool = icmp ne %struct.mylist_s* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %elemsize1 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %2, i32 0, i32 2
  %3 = load i32, i32* %elemsize1, align 4
  %4 = load i32, i32* %elemsize.addr, align 4
  %cmp = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  store %struct.mylist_s* %6, %struct.mylist_s** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %next = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %7, i32 0, i32 1
  %8 = load %struct.mylist_s*, %struct.mylist_s** %next, align 8
  store %struct.mylist_s* %8, %struct.mylist_s** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %tobool2 = icmp ne %struct.mylist_s* %9, null
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  %10 = load i32, i32* %elemsize.addr, align 4
  %conv = sext i32 %10 to i64
  %rem = urem i64 %conv, 8
  %cmp3 = icmp ne i64 %rem, 0
  br i1 %cmp3, label %if.then.5, label %if.end

if.then.5:                                        ; preds = %if.then
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 236, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %11 = load i32, i32* %elemsize.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i32 0, i32 0), i32 %11)
  br label %if.end

if.end:                                           ; preds = %if.then.5, %if.then
  %call = call i8* @__ckd_calloc__(i64 1, i64 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i32 238)
  %12 = bitcast i8* %call to %struct.mylist_s*
  store %struct.mylist_s* %12, %struct.mylist_s** %list, align 8
  %13 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %13, i32 0, i32 0
  store i8** null, i8*** %freelist, align 8
  %14 = load i32, i32* %elemsize.addr, align 4
  %15 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %elemsize6 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %15, i32 0, i32 2
  store i32 %14, i32* %elemsize6, align 4
  %16 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blocksize = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %16, i32 0, i32 3
  store i32 50, i32* %blocksize, align 4
  %17 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blocksize7 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %17, i32 0, i32 3
  %18 = load i32, i32* %blocksize7, align 4
  %19 = load i32, i32* %elemsize.addr, align 4
  %mul = mul nsw i32 %18, %19
  %div = sdiv i32 262144, %mul
  %20 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blk_alloc = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %20, i32 0, i32 4
  store i32 %div, i32* %blk_alloc, align 4
  %21 = load %struct.mylist_s*, %struct.mylist_s** @head, align 8
  %22 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %next8 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %22, i32 0, i32 1
  store %struct.mylist_s* %21, %struct.mylist_s** %next8, align 8
  %23 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  store %struct.mylist_s* %23, %struct.mylist_s** @head, align 8
  br label %if.end.15

if.else:                                          ; preds = %for.end
  %24 = load %struct.mylist_s*, %struct.mylist_s** %prev, align 8
  %tobool9 = icmp ne %struct.mylist_s* %24, null
  br i1 %tobool9, label %if.then.10, label %if.end.14

if.then.10:                                       ; preds = %if.else
  %25 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %next11 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %25, i32 0, i32 1
  %26 = load %struct.mylist_s*, %struct.mylist_s** %next11, align 8
  %27 = load %struct.mylist_s*, %struct.mylist_s** %prev, align 8
  %next12 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %27, i32 0, i32 1
  store %struct.mylist_s* %26, %struct.mylist_s** %next12, align 8
  %28 = load %struct.mylist_s*, %struct.mylist_s** @head, align 8
  %29 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %next13 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %29, i32 0, i32 1
  store %struct.mylist_s* %28, %struct.mylist_s** %next13, align 8
  %30 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  store %struct.mylist_s* %30, %struct.mylist_s** @head, align 8
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.10, %if.else
  br label %if.end.15

if.end.15:                                        ; preds = %if.end.14, %if.end
  %31 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist16 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %31, i32 0, i32 0
  %32 = load i8**, i8*** %freelist16, align 8
  %cmp17 = icmp eq i8** %32, null
  br i1 %cmp17, label %if.then.19, label %if.end.50

if.then.19:                                       ; preds = %if.end.15
  %33 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blk_alloc20 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %33, i32 0, i32 4
  %34 = load i32, i32* %blk_alloc20, align 4
  %cmp21 = icmp eq i32 %34, 0
  br i1 %cmp21, label %if.then.23, label %if.end.35

if.then.23:                                       ; preds = %if.then.19
  %35 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blocksize24 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %35, i32 0, i32 3
  %36 = load i32, i32* %blocksize24, align 4
  %shl = shl i32 %36, 1
  store i32 %shl, i32* %blocksize24, align 4
  %37 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blocksize25 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %37, i32 0, i32 3
  %38 = load i32, i32* %blocksize25, align 4
  %39 = load i32, i32* %elemsize.addr, align 4
  %mul26 = mul nsw i32 %38, %39
  %div27 = sdiv i32 262144, %mul26
  %40 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blk_alloc28 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %40, i32 0, i32 4
  store i32 %div27, i32* %blk_alloc28, align 4
  %41 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blk_alloc29 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %41, i32 0, i32 4
  %42 = load i32, i32* %blk_alloc29, align 4
  %cmp30 = icmp sle i32 %42, 0
  br i1 %cmp30, label %if.then.32, label %if.end.34

if.then.32:                                       ; preds = %if.then.23
  %43 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blk_alloc33 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %43, i32 0, i32 4
  store i32 1879048192, i32* %blk_alloc33, align 4
  br label %if.end.34

if.end.34:                                        ; preds = %if.then.32, %if.then.23
  br label %if.end.35

if.end.35:                                        ; preds = %if.end.34, %if.then.19
  %44 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blocksize36 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %44, i32 0, i32 3
  %45 = load i32, i32* %blocksize36, align 4
  %conv37 = sext i32 %45 to i64
  %46 = load i32, i32* %elemsize.addr, align 4
  %conv38 = sext i32 %46 to i64
  %47 = load i8*, i8** %caller_file.addr, align 8
  %48 = load i32, i32* %caller_line.addr, align 4
  %call39 = call i8* @__ckd_calloc__(i64 %conv37, i64 %conv38, i8* %47, i32 %48)
  %49 = bitcast i8* %call39 to i8**
  %50 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist40 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %50, i32 0, i32 0
  store i8** %49, i8*** %freelist40, align 8
  store i8** %49, i8*** %cpp, align 8
  %51 = load i8**, i8*** %cpp, align 8
  %52 = bitcast i8** %51 to i8*
  store i8* %52, i8** %cp, align 8
  %53 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blocksize41 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %53, i32 0, i32 3
  %54 = load i32, i32* %blocksize41, align 4
  %sub = sub nsw i32 %54, 1
  store i32 %sub, i32* %j, align 4
  br label %for.cond.42

for.cond.42:                                      ; preds = %for.inc.46, %if.end.35
  %55 = load i32, i32* %j, align 4
  %cmp43 = icmp sgt i32 %55, 0
  br i1 %cmp43, label %for.body.45, label %for.end.47

for.body.45:                                      ; preds = %for.cond.42
  %56 = load i32, i32* %elemsize.addr, align 4
  %57 = load i8*, i8** %cp, align 8
  %idx.ext = sext i32 %56 to i64
  %add.ptr = getelementptr inbounds i8, i8* %57, i64 %idx.ext
  store i8* %add.ptr, i8** %cp, align 8
  %58 = load i8*, i8** %cp, align 8
  %59 = load i8**, i8*** %cpp, align 8
  store i8* %58, i8** %59, align 8
  %60 = load i8*, i8** %cp, align 8
  %61 = bitcast i8* %60 to i8**
  store i8** %61, i8*** %cpp, align 8
  br label %for.inc.46

for.inc.46:                                       ; preds = %for.body.45
  %62 = load i32, i32* %j, align 4
  %dec = add nsw i32 %62, -1
  store i32 %dec, i32* %j, align 4
  br label %for.cond.42

for.end.47:                                       ; preds = %for.cond.42
  %63 = load i8**, i8*** %cpp, align 8
  store i8* null, i8** %63, align 8
  %64 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %blk_alloc48 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %64, i32 0, i32 4
  %65 = load i32, i32* %blk_alloc48, align 4
  %dec49 = add nsw i32 %65, -1
  store i32 %dec49, i32* %blk_alloc48, align 4
  br label %if.end.50

if.end.50:                                        ; preds = %for.end.47, %if.end.15
  %66 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist51 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %66, i32 0, i32 0
  %67 = load i8**, i8*** %freelist51, align 8
  %68 = bitcast i8** %67 to i8*
  store i8* %68, i8** %cp, align 8
  %69 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist52 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %69, i32 0, i32 0
  %70 = load i8**, i8*** %freelist52, align 8
  %71 = load i8*, i8** %70, align 8
  %72 = bitcast i8* %71 to i8**
  %73 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist53 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %73, i32 0, i32 0
  store i8** %72, i8*** %freelist53, align 8
  %74 = load i8*, i8** %cp, align 8
  ret i8* %74
}

; Function Attrs: nounwind uwtable
define void @__myfree__(i8* %elem, i32 %elemsize, i8* %caller_file, i32 %caller_line) #0 {
entry:
  %elem.addr = alloca i8*, align 8
  %elemsize.addr = alloca i32, align 4
  %caller_file.addr = alloca i8*, align 8
  %caller_line.addr = alloca i32, align 4
  %cpp = alloca i8**, align 8
  %prev = alloca %struct.mylist_s*, align 8
  %list = alloca %struct.mylist_s*, align 8
  store i8* %elem, i8** %elem.addr, align 8
  store i32 %elemsize, i32* %elemsize.addr, align 4
  store i8* %caller_file, i8** %caller_file.addr, align 8
  store i32 %caller_line, i32* %caller_line.addr, align 4
  store %struct.mylist_s* null, %struct.mylist_s** %prev, align 8
  %0 = load %struct.mylist_s*, %struct.mylist_s** @head, align 8
  store %struct.mylist_s* %0, %struct.mylist_s** %list, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %tobool = icmp ne %struct.mylist_s* %1, null
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond
  %2 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %elemsize1 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %2, i32 0, i32 2
  %3 = load i32, i32* %elemsize1, align 4
  %4 = load i32, i32* %elemsize.addr, align 4
  %cmp = icmp ne i32 %3, %4
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %5 = phi i1 [ false, %for.cond ], [ %cmp, %land.rhs ]
  br i1 %5, label %for.body, label %for.end

for.body:                                         ; preds = %land.end
  %6 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  store %struct.mylist_s* %6, %struct.mylist_s** %prev, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %next = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %7, i32 0, i32 1
  %8 = load %struct.mylist_s*, %struct.mylist_s** %next, align 8
  store %struct.mylist_s* %8, %struct.mylist_s** %list, align 8
  br label %for.cond

for.end:                                          ; preds = %land.end
  %9 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %tobool2 = icmp ne %struct.mylist_s* %9, null
  br i1 %tobool2, label %if.else, label %if.then

if.then:                                          ; preds = %for.end
  call void @_E__pr_header(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i64 302, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0))
  %10 = load i32, i32* %elemsize.addr, align 4
  %11 = load i8*, i8** %caller_file.addr, align 8
  %12 = load i32, i32* %caller_line.addr, align 4
  call void (i8*, ...) @_E__die_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i32 0, i32 0), i32 %10, i8* %11, i32 %12)
  br label %if.end.8

if.else:                                          ; preds = %for.end
  %13 = load %struct.mylist_s*, %struct.mylist_s** %prev, align 8
  %tobool3 = icmp ne %struct.mylist_s* %13, null
  br i1 %tobool3, label %if.then.4, label %if.end

if.then.4:                                        ; preds = %if.else
  %14 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %next5 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %14, i32 0, i32 1
  %15 = load %struct.mylist_s*, %struct.mylist_s** %next5, align 8
  %16 = load %struct.mylist_s*, %struct.mylist_s** %prev, align 8
  %next6 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %16, i32 0, i32 1
  store %struct.mylist_s* %15, %struct.mylist_s** %next6, align 8
  %17 = load %struct.mylist_s*, %struct.mylist_s** @head, align 8
  %18 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %next7 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %18, i32 0, i32 1
  store %struct.mylist_s* %17, %struct.mylist_s** %next7, align 8
  %19 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  store %struct.mylist_s* %19, %struct.mylist_s** @head, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.4, %if.else
  br label %if.end.8

if.end.8:                                         ; preds = %if.end, %if.then
  %20 = load i8*, i8** %elem.addr, align 8
  %21 = bitcast i8* %20 to i8**
  store i8** %21, i8*** %cpp, align 8
  %22 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %22, i32 0, i32 0
  %23 = load i8**, i8*** %freelist, align 8
  %24 = bitcast i8** %23 to i8*
  %25 = load i8**, i8*** %cpp, align 8
  store i8* %24, i8** %25, align 8
  %26 = load i8**, i8*** %cpp, align 8
  %27 = load %struct.mylist_s*, %struct.mylist_s** %list, align 8
  %freelist9 = getelementptr inbounds %struct.mylist_s, %struct.mylist_s* %27, i32 0, i32 0
  store i8** %26, i8*** %freelist9, align 8
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
