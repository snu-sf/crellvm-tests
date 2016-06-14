; ModuleID = 'mkdeps.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.deps = type { i8**, i32, i32, i8**, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".o\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c" \5C\0A \00", align 1

; Function Attrs: nounwind uwtable
define %struct.deps* @deps_init() #0 {
entry:
  %d = alloca %struct.deps*, align 8
  %call = call noalias i8* @xmalloc(i64 32)
  %0 = bitcast i8* %call to %struct.deps*
  store %struct.deps* %0, %struct.deps** %d, align 8
  %1 = load %struct.deps*, %struct.deps** %d, align 8
  %targetv = getelementptr inbounds %struct.deps, %struct.deps* %1, i32 0, i32 0
  store i8** null, i8*** %targetv, align 8
  %2 = load %struct.deps*, %struct.deps** %d, align 8
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %2, i32 0, i32 3
  store i8** null, i8*** %depv, align 8
  %3 = load %struct.deps*, %struct.deps** %d, align 8
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %3, i32 0, i32 1
  store i32 0, i32* %ntargets, align 4
  %4 = load %struct.deps*, %struct.deps** %d, align 8
  %targets_size = getelementptr inbounds %struct.deps, %struct.deps* %4, i32 0, i32 2
  store i32 0, i32* %targets_size, align 4
  %5 = load %struct.deps*, %struct.deps** %d, align 8
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %5, i32 0, i32 4
  store i32 0, i32* %ndeps, align 4
  %6 = load %struct.deps*, %struct.deps** %d, align 8
  %deps_size = getelementptr inbounds %struct.deps, %struct.deps* %6, i32 0, i32 5
  store i32 0, i32* %deps_size, align 4
  %7 = load %struct.deps*, %struct.deps** %d, align 8
  ret %struct.deps* %7
}

declare noalias i8* @xmalloc(i64) #1

; Function Attrs: nounwind uwtable
define void @deps_free(%struct.deps* %d) #0 {
entry:
  %d.addr = alloca %struct.deps*, align 8
  %i = alloca i32, align 4
  store %struct.deps* %d, %struct.deps** %d.addr, align 8
  %0 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv = getelementptr inbounds %struct.deps, %struct.deps* %0, i32 0, i32 0
  %1 = load i8**, i8*** %targetv, align 8
  %tobool = icmp ne i8** %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %3, i32 0, i32 1
  %4 = load i32, i32* %ntargets, align 4
  %cmp = icmp ult i32 %2, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv1 = getelementptr inbounds %struct.deps, %struct.deps* %6, i32 0, i32 0
  %7 = load i8**, i8*** %targetv1, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  call void @free(i8* %8) #4
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %10 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv2 = getelementptr inbounds %struct.deps, %struct.deps* %10, i32 0, i32 0
  %11 = load i8**, i8*** %targetv2, align 8
  %12 = bitcast i8** %11 to i8*
  call void @free(i8* %12) #4
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %13 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %13, i32 0, i32 3
  %14 = load i8**, i8*** %depv, align 8
  %tobool3 = icmp ne i8** %14, null
  br i1 %tobool3, label %if.then.4, label %if.end.15

if.then.4:                                        ; preds = %if.end
  store i32 0, i32* %i, align 4
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc.11, %if.then.4
  %15 = load i32, i32* %i, align 4
  %16 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %16, i32 0, i32 4
  %17 = load i32, i32* %ndeps, align 4
  %cmp6 = icmp ult i32 %15, %17
  br i1 %cmp6, label %for.body.7, label %for.end.13

for.body.7:                                       ; preds = %for.cond.5
  %18 = load i32, i32* %i, align 4
  %idxprom8 = zext i32 %18 to i64
  %19 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv9 = getelementptr inbounds %struct.deps, %struct.deps* %19, i32 0, i32 3
  %20 = load i8**, i8*** %depv9, align 8
  %arrayidx10 = getelementptr inbounds i8*, i8** %20, i64 %idxprom8
  %21 = load i8*, i8** %arrayidx10, align 8
  call void @free(i8* %21) #4
  br label %for.inc.11

for.inc.11:                                       ; preds = %for.body.7
  %22 = load i32, i32* %i, align 4
  %inc12 = add i32 %22, 1
  store i32 %inc12, i32* %i, align 4
  br label %for.cond.5

for.end.13:                                       ; preds = %for.cond.5
  %23 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv14 = getelementptr inbounds %struct.deps, %struct.deps* %23, i32 0, i32 3
  %24 = load i8**, i8*** %depv14, align 8
  %25 = bitcast i8** %24 to i8*
  call void @free(i8* %25) #4
  br label %if.end.15

if.end.15:                                        ; preds = %for.end.13, %if.end
  %26 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %27 = bitcast %struct.deps* %26 to i8*
  call void @free(i8* %27) #4
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind uwtable
define void @deps_add_target(%struct.deps* %d, i8* %t, i32 %quote) #0 {
entry:
  %d.addr = alloca %struct.deps*, align 8
  %t.addr = alloca i8*, align 8
  %quote.addr = alloca i32, align 4
  store %struct.deps* %d, %struct.deps** %d.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  store i32 %quote, i32* %quote.addr, align 4
  %0 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %0, i32 0, i32 1
  %1 = load i32, i32* %ntargets, align 4
  %2 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targets_size = getelementptr inbounds %struct.deps, %struct.deps* %2, i32 0, i32 2
  %3 = load i32, i32* %targets_size, align 4
  %cmp = icmp eq i32 %1, %3
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targets_size1 = getelementptr inbounds %struct.deps, %struct.deps* %4, i32 0, i32 2
  %5 = load i32, i32* %targets_size1, align 4
  %mul = mul i32 %5, 2
  %add = add i32 %mul, 4
  %6 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targets_size2 = getelementptr inbounds %struct.deps, %struct.deps* %6, i32 0, i32 2
  store i32 %add, i32* %targets_size2, align 4
  %7 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv = getelementptr inbounds %struct.deps, %struct.deps* %7, i32 0, i32 0
  %8 = load i8**, i8*** %targetv, align 8
  %9 = bitcast i8** %8 to i8*
  %10 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targets_size3 = getelementptr inbounds %struct.deps, %struct.deps* %10, i32 0, i32 2
  %11 = load i32, i32* %targets_size3, align 4
  %conv = zext i32 %11 to i64
  %mul4 = mul i64 %conv, 8
  %call = call i8* @xrealloc(i8* %9, i64 %mul4)
  %12 = bitcast i8* %call to i8**
  %13 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv5 = getelementptr inbounds %struct.deps, %struct.deps* %13, i32 0, i32 0
  store i8** %12, i8*** %targetv5, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %quote.addr, align 4
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then.6, label %if.else

if.then.6:                                        ; preds = %if.end
  %15 = load i8*, i8** %t.addr, align 8
  %call7 = call i8* @munge(i8* %15)
  store i8* %call7, i8** %t.addr, align 8
  br label %if.end.9

if.else:                                          ; preds = %if.end
  %16 = load i8*, i8** %t.addr, align 8
  %call8 = call noalias i8* @xstrdup(i8* %16)
  store i8* %call8, i8** %t.addr, align 8
  br label %if.end.9

if.end.9:                                         ; preds = %if.else, %if.then.6
  %17 = load i8*, i8** %t.addr, align 8
  %18 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ntargets10 = getelementptr inbounds %struct.deps, %struct.deps* %18, i32 0, i32 1
  %19 = load i32, i32* %ntargets10, align 4
  %inc = add i32 %19, 1
  store i32 %inc, i32* %ntargets10, align 4
  %idxprom = zext i32 %19 to i64
  %20 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv11 = getelementptr inbounds %struct.deps, %struct.deps* %20, i32 0, i32 0
  %21 = load i8**, i8*** %targetv11, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %21, i64 %idxprom
  store i8* %17, i8** %arrayidx, align 8
  ret void
}

declare i8* @xrealloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal i8* @munge(i8* %filename) #0 {
entry:
  %filename.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %dst = alloca i8*, align 8
  %buffer = alloca i8*, align 8
  store i8* %filename, i8** %filename.addr, align 8
  %0 = load i8*, i8** %filename.addr, align 8
  store i8* %0, i8** %p, align 8
  store i32 0, i32* %len, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc.10, %entry
  %1 = load i8*, i8** %p, align 8
  %2 = load i8, i8* %1, align 1
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %for.body, label %for.end.13

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %p, align 8
  %4 = load i8, i8* %3, align 1
  %conv = sext i8 %4 to i32
  switch i32 %conv, label %sw.epilog [
    i32 32, label %sw.bb
    i32 9, label %sw.bb
    i32 36, label %sw.bb.8
  ]

sw.bb:                                            ; preds = %for.body, %for.body
  %5 = load i8*, i8** %p, align 8
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 -1
  store i8* %add.ptr, i8** %q, align 8
  br label %for.cond.1

for.cond.1:                                       ; preds = %for.inc, %sw.bb
  %6 = load i8*, i8** %filename.addr, align 8
  %7 = load i8*, i8** %q, align 8
  %cmp = icmp ule i8* %6, %7
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %for.cond.1
  %8 = load i8*, i8** %q, align 8
  %9 = load i8, i8* %8, align 1
  %conv3 = sext i8 %9 to i32
  %cmp4 = icmp eq i32 %conv3, 92
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond.1
  %10 = phi i1 [ false, %for.cond.1 ], [ %cmp4, %land.rhs ]
  br i1 %10, label %for.body.6, label %for.end

for.body.6:                                       ; preds = %land.end
  %11 = load i32, i32* %len, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %len, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.body.6
  %12 = load i8*, i8** %q, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %12, i32 -1
  store i8* %incdec.ptr, i8** %q, align 8
  br label %for.cond.1

for.end:                                          ; preds = %land.end
  %13 = load i32, i32* %len, align 4
  %inc7 = add nsw i32 %13, 1
  store i32 %inc7, i32* %len, align 4
  br label %sw.epilog

sw.bb.8:                                          ; preds = %for.body
  %14 = load i32, i32* %len, align 4
  %inc9 = add nsw i32 %14, 1
  store i32 %inc9, i32* %len, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body, %sw.bb.8, %for.end
  br label %for.inc.10

for.inc.10:                                       ; preds = %sw.epilog
  %15 = load i8*, i8** %p, align 8
  %incdec.ptr11 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr11, i8** %p, align 8
  %16 = load i32, i32* %len, align 4
  %inc12 = add nsw i32 %16, 1
  store i32 %inc12, i32* %len, align 4
  br label %for.cond

for.end.13:                                       ; preds = %for.cond
  %17 = load i32, i32* %len, align 4
  %add = add nsw i32 %17, 1
  %conv14 = sext i32 %add to i64
  %call = call noalias i8* @xmalloc(i64 %conv14)
  store i8* %call, i8** %buffer, align 8
  %18 = load i8*, i8** %filename.addr, align 8
  store i8* %18, i8** %p, align 8
  %19 = load i8*, i8** %buffer, align 8
  store i8* %19, i8** %dst, align 8
  br label %for.cond.15

for.cond.15:                                      ; preds = %for.inc.38, %for.end.13
  %20 = load i8*, i8** %p, align 8
  %21 = load i8, i8* %20, align 1
  %tobool16 = icmp ne i8 %21, 0
  br i1 %tobool16, label %for.body.17, label %for.end.41

for.body.17:                                      ; preds = %for.cond.15
  %22 = load i8*, i8** %p, align 8
  %23 = load i8, i8* %22, align 1
  %conv18 = sext i8 %23 to i32
  switch i32 %conv18, label %sw.default [
    i32 32, label %sw.bb.19
    i32 9, label %sw.bb.19
    i32 36, label %sw.bb.35
  ]

sw.bb.19:                                         ; preds = %for.body.17, %for.body.17
  %24 = load i8*, i8** %p, align 8
  %add.ptr20 = getelementptr inbounds i8, i8* %24, i64 -1
  store i8* %add.ptr20, i8** %q, align 8
  br label %for.cond.21

for.cond.21:                                      ; preds = %for.inc.31, %sw.bb.19
  %25 = load i8*, i8** %filename.addr, align 8
  %26 = load i8*, i8** %q, align 8
  %cmp22 = icmp ule i8* %25, %26
  br i1 %cmp22, label %land.rhs.24, label %land.end.28

land.rhs.24:                                      ; preds = %for.cond.21
  %27 = load i8*, i8** %q, align 8
  %28 = load i8, i8* %27, align 1
  %conv25 = sext i8 %28 to i32
  %cmp26 = icmp eq i32 %conv25, 92
  br label %land.end.28

land.end.28:                                      ; preds = %land.rhs.24, %for.cond.21
  %29 = phi i1 [ false, %for.cond.21 ], [ %cmp26, %land.rhs.24 ]
  br i1 %29, label %for.body.29, label %for.end.33

for.body.29:                                      ; preds = %land.end.28
  %30 = load i8*, i8** %dst, align 8
  %incdec.ptr30 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr30, i8** %dst, align 8
  store i8 92, i8* %30, align 1
  br label %for.inc.31

for.inc.31:                                       ; preds = %for.body.29
  %31 = load i8*, i8** %q, align 8
  %incdec.ptr32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %incdec.ptr32, i8** %q, align 8
  br label %for.cond.21

for.end.33:                                       ; preds = %land.end.28
  %32 = load i8*, i8** %dst, align 8
  %incdec.ptr34 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr34, i8** %dst, align 8
  store i8 92, i8* %32, align 1
  br label %sw.epilog.37

sw.bb.35:                                         ; preds = %for.body.17
  %33 = load i8*, i8** %dst, align 8
  %incdec.ptr36 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %incdec.ptr36, i8** %dst, align 8
  store i8 36, i8* %33, align 1
  br label %sw.epilog.37

sw.default:                                       ; preds = %for.body.17
  br label %sw.epilog.37

sw.epilog.37:                                     ; preds = %sw.default, %sw.bb.35, %for.end.33
  %34 = load i8*, i8** %p, align 8
  %35 = load i8, i8* %34, align 1
  %36 = load i8*, i8** %dst, align 8
  store i8 %35, i8* %36, align 1
  br label %for.inc.38

for.inc.38:                                       ; preds = %sw.epilog.37
  %37 = load i8*, i8** %p, align 8
  %incdec.ptr39 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr39, i8** %p, align 8
  %38 = load i8*, i8** %dst, align 8
  %incdec.ptr40 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr40, i8** %dst, align 8
  br label %for.cond.15

for.end.41:                                       ; preds = %for.cond.15
  %39 = load i8*, i8** %dst, align 8
  store i8 0, i8* %39, align 1
  %40 = load i8*, i8** %buffer, align 8
  ret i8* %40
}

declare noalias i8* @xstrdup(i8*) #1

; Function Attrs: nounwind uwtable
define void @deps_add_default_target(%struct.deps* %d, i8* %tgt) #0 {
entry:
  %d.addr = alloca %struct.deps*, align 8
  %tgt.addr = alloca i8*, align 8
  %start = alloca i8*, align 8
  %o = alloca i8*, align 8
  %suffix = alloca i8*, align 8
  store %struct.deps* %d, %struct.deps** %d.addr, align 8
  store i8* %tgt, i8** %tgt.addr, align 8
  %0 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %0, i32 0, i32 1
  %1 = load i32, i32* %ntargets, align 4
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %if.end.12

if.end:                                           ; preds = %entry
  %2 = load i8*, i8** %tgt.addr, align 8
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 0
  %3 = load i8, i8* %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then.2, label %if.else

if.then.2:                                        ; preds = %if.end
  %4 = load %struct.deps*, %struct.deps** %d.addr, align 8
  call void @deps_add_target(%struct.deps* %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i32 1)
  br label %if.end.12

if.else:                                          ; preds = %if.end
  %5 = load i8*, i8** %tgt.addr, align 8
  %call = call i8* @lbasename(i8* %5)
  store i8* %call, i8** %start, align 8
  %6 = load i8*, i8** %start, align 8
  %call3 = call i64 @strlen(i8* %6) #5
  %add = add i64 %call3, 2
  %add4 = add i64 %add, 1
  %7 = alloca i8, i64 %add4
  store i8* %7, i8** %o, align 8
  %8 = load i8*, i8** %o, align 8
  %9 = load i8*, i8** %start, align 8
  %call5 = call i8* @strcpy(i8* %8, i8* %9) #4
  %10 = load i8*, i8** %o, align 8
  %call6 = call i8* @strrchr(i8* %10, i32 46) #5
  store i8* %call6, i8** %suffix, align 8
  %11 = load i8*, i8** %suffix, align 8
  %tobool7 = icmp ne i8* %11, null
  br i1 %tobool7, label %if.end.10, label %if.then.8

if.then.8:                                        ; preds = %if.else
  %12 = load i8*, i8** %o, align 8
  %13 = load i8*, i8** %o, align 8
  %call9 = call i64 @strlen(i8* %13) #5
  %add.ptr = getelementptr inbounds i8, i8* %12, i64 %call9
  store i8* %add.ptr, i8** %suffix, align 8
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.8, %if.else
  %14 = load i8*, i8** %suffix, align 8
  %call11 = call i8* @strcpy(i8* %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #4
  %15 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %16 = load i8*, i8** %o, align 8
  call void @deps_add_target(%struct.deps* %15, i8* %16, i32 1)
  br label %if.end.12

if.end.12:                                        ; preds = %if.then, %if.end.10, %if.then.2
  ret void
}

declare i8* @lbasename(i8*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #3

; Function Attrs: nounwind uwtable
define void @deps_add_dep(%struct.deps* %d, i8* %t) #0 {
entry:
  %d.addr = alloca %struct.deps*, align 8
  %t.addr = alloca i8*, align 8
  store %struct.deps* %d, %struct.deps** %d.addr, align 8
  store i8* %t, i8** %t.addr, align 8
  %0 = load i8*, i8** %t.addr, align 8
  %call = call i8* @munge(i8* %0)
  store i8* %call, i8** %t.addr, align 8
  %1 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %1, i32 0, i32 4
  %2 = load i32, i32* %ndeps, align 4
  %3 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %deps_size = getelementptr inbounds %struct.deps, %struct.deps* %3, i32 0, i32 5
  %4 = load i32, i32* %deps_size, align 4
  %cmp = icmp eq i32 %2, %4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %deps_size1 = getelementptr inbounds %struct.deps, %struct.deps* %5, i32 0, i32 5
  %6 = load i32, i32* %deps_size1, align 4
  %mul = mul i32 %6, 2
  %add = add i32 %mul, 8
  %7 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %deps_size2 = getelementptr inbounds %struct.deps, %struct.deps* %7, i32 0, i32 5
  store i32 %add, i32* %deps_size2, align 4
  %8 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %8, i32 0, i32 3
  %9 = load i8**, i8*** %depv, align 8
  %10 = bitcast i8** %9 to i8*
  %11 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %deps_size3 = getelementptr inbounds %struct.deps, %struct.deps* %11, i32 0, i32 5
  %12 = load i32, i32* %deps_size3, align 4
  %conv = zext i32 %12 to i64
  %mul4 = mul i64 %conv, 8
  %call5 = call i8* @xrealloc(i8* %10, i64 %mul4)
  %13 = bitcast i8* %call5 to i8**
  %14 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv6 = getelementptr inbounds %struct.deps, %struct.deps* %14, i32 0, i32 3
  store i8** %13, i8*** %depv6, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %15 = load i8*, i8** %t.addr, align 8
  %16 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ndeps7 = getelementptr inbounds %struct.deps, %struct.deps* %16, i32 0, i32 4
  %17 = load i32, i32* %ndeps7, align 4
  %inc = add i32 %17, 1
  store i32 %inc, i32* %ndeps7, align 4
  %idxprom = zext i32 %17 to i64
  %18 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv8 = getelementptr inbounds %struct.deps, %struct.deps* %18, i32 0, i32 3
  %19 = load i8**, i8*** %depv8, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %19, i64 %idxprom
  store i8* %15, i8** %arrayidx, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @deps_write(%struct.deps* %d, %struct._IO_FILE* %fp, i32 %colmax) #0 {
entry:
  %d.addr = alloca %struct.deps*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %colmax.addr = alloca i32, align 4
  %size = alloca i32, align 4
  %i = alloca i32, align 4
  %column = alloca i32, align 4
  store %struct.deps* %d, %struct.deps** %d.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 %colmax, i32* %colmax.addr, align 4
  store i32 0, i32* %column, align 4
  %0 = load i32, i32* %colmax.addr, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* %colmax.addr, align 4
  %cmp = icmp ult i32 %1, 34
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 34, i32* %colmax.addr, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, i32* %i, align 4
  %3 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ntargets = getelementptr inbounds %struct.deps, %struct.deps* %3, i32 0, i32 1
  %4 = load i32, i32* %ntargets, align 4
  %cmp1 = icmp ult i32 %2, %4
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4
  %idxprom = zext i32 %5 to i64
  %6 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv = getelementptr inbounds %struct.deps, %struct.deps* %6, i32 0, i32 0
  %7 = load i8**, i8*** %targetv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %7, i64 %idxprom
  %8 = load i8*, i8** %arrayidx, align 8
  %call = call i64 @strlen(i8* %8) #5
  %conv = trunc i64 %call to i32
  store i32 %conv, i32* %size, align 4
  %9 = load i32, i32* %size, align 4
  %10 = load i32, i32* %column, align 4
  %add = add i32 %10, %9
  store i32 %add, i32* %column, align 4
  %11 = load i32, i32* %colmax.addr, align 4
  %tobool2 = icmp ne i32 %11, 0
  br i1 %tobool2, label %land.lhs.true.3, label %if.end.9

land.lhs.true.3:                                  ; preds = %for.body
  %12 = load i32, i32* %column, align 4
  %13 = load i32, i32* %colmax.addr, align 4
  %cmp4 = icmp ugt i32 %12, %13
  br i1 %cmp4, label %if.then.6, label %if.end.9

if.then.6:                                        ; preds = %land.lhs.true.3
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call7 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %14)
  %15 = load i32, i32* %size, align 4
  %add8 = add i32 1, %15
  store i32 %add8, i32* %column, align 4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.6, %land.lhs.true.3, %for.body
  %16 = load i32, i32* %i, align 4
  %tobool10 = icmp ne i32 %16, 0
  br i1 %tobool10, label %if.then.11, label %if.end.13

if.then.11:                                       ; preds = %if.end.9
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call12 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %17)
  %18 = load i32, i32* %column, align 4
  %inc = add i32 %18, 1
  store i32 %inc, i32* %column, align 4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.11, %if.end.9
  %19 = load i32, i32* %i, align 4
  %idxprom14 = zext i32 %19 to i64
  %20 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %targetv15 = getelementptr inbounds %struct.deps, %struct.deps* %20, i32 0, i32 0
  %21 = load i8**, i8*** %targetv15, align 8
  %arrayidx16 = getelementptr inbounds i8*, i8** %21, i64 %idxprom14
  %22 = load i8*, i8** %arrayidx16, align 8
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call17 = call i32 @fputs(i8* %22, %struct._IO_FILE* %23)
  br label %for.inc

for.inc:                                          ; preds = %if.end.13
  %24 = load i32, i32* %i, align 4
  %inc18 = add i32 %24, 1
  store i32 %inc18, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call19 = call i32 @_IO_putc(i32 58, %struct._IO_FILE* %25)
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call20 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %26)
  %27 = load i32, i32* %column, align 4
  %add21 = add i32 %27, 2
  store i32 %add21, i32* %column, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond.22

for.cond.22:                                      ; preds = %for.inc.48, %for.end
  %28 = load i32, i32* %i, align 4
  %29 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %29, i32 0, i32 4
  %30 = load i32, i32* %ndeps, align 4
  %cmp23 = icmp ult i32 %28, %30
  br i1 %cmp23, label %for.body.25, label %for.end.50

for.body.25:                                      ; preds = %for.cond.22
  %31 = load i32, i32* %i, align 4
  %idxprom26 = zext i32 %31 to i64
  %32 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %32, i32 0, i32 3
  %33 = load i8**, i8*** %depv, align 8
  %arrayidx27 = getelementptr inbounds i8*, i8** %33, i64 %idxprom26
  %34 = load i8*, i8** %arrayidx27, align 8
  %call28 = call i64 @strlen(i8* %34) #5
  %conv29 = trunc i64 %call28 to i32
  store i32 %conv29, i32* %size, align 4
  %35 = load i32, i32* %size, align 4
  %36 = load i32, i32* %column, align 4
  %add30 = add i32 %36, %35
  store i32 %add30, i32* %column, align 4
  %37 = load i32, i32* %colmax.addr, align 4
  %tobool31 = icmp ne i32 %37, 0
  br i1 %tobool31, label %land.lhs.true.32, label %if.end.38

land.lhs.true.32:                                 ; preds = %for.body.25
  %38 = load i32, i32* %column, align 4
  %39 = load i32, i32* %colmax.addr, align 4
  %cmp33 = icmp ugt i32 %38, %39
  br i1 %cmp33, label %if.then.35, label %if.end.38

if.then.35:                                       ; preds = %land.lhs.true.32
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call36 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct._IO_FILE* %40)
  %41 = load i32, i32* %size, align 4
  %add37 = add i32 1, %41
  store i32 %add37, i32* %column, align 4
  br label %if.end.38

if.end.38:                                        ; preds = %if.then.35, %land.lhs.true.32, %for.body.25
  %42 = load i32, i32* %i, align 4
  %tobool39 = icmp ne i32 %42, 0
  br i1 %tobool39, label %if.then.40, label %if.end.43

if.then.40:                                       ; preds = %if.end.38
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call41 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %43)
  %44 = load i32, i32* %column, align 4
  %inc42 = add i32 %44, 1
  store i32 %inc42, i32* %column, align 4
  br label %if.end.43

if.end.43:                                        ; preds = %if.then.40, %if.end.38
  %45 = load i32, i32* %i, align 4
  %idxprom44 = zext i32 %45 to i64
  %46 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv45 = getelementptr inbounds %struct.deps, %struct.deps* %46, i32 0, i32 3
  %47 = load i8**, i8*** %depv45, align 8
  %arrayidx46 = getelementptr inbounds i8*, i8** %47, i64 %idxprom44
  %48 = load i8*, i8** %arrayidx46, align 8
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call47 = call i32 @fputs(i8* %48, %struct._IO_FILE* %49)
  br label %for.inc.48

for.inc.48:                                       ; preds = %if.end.43
  %50 = load i32, i32* %i, align 4
  %inc49 = add i32 %50, 1
  store i32 %inc49, i32* %i, align 4
  br label %for.cond.22

for.end.50:                                       ; preds = %for.cond.22
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call51 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %51)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @deps_phony_targets(%struct.deps* %d, %struct._IO_FILE* %fp) #0 {
entry:
  %d.addr = alloca %struct.deps*, align 8
  %fp.addr = alloca %struct._IO_FILE*, align 8
  %i = alloca i32, align 4
  store %struct.deps* %d, %struct.deps** %d.addr, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %fp.addr, align 8
  store i32 1, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %1 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %ndeps = getelementptr inbounds %struct.deps, %struct.deps* %1, i32 0, i32 4
  %2 = load i32, i32* %ndeps, align 4
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %3)
  %4 = load i32, i32* %i, align 4
  %idxprom = zext i32 %4 to i64
  %5 = load %struct.deps*, %struct.deps** %d.addr, align 8
  %depv = getelementptr inbounds %struct.deps, %struct.deps* %5, i32 0, i32 3
  %6 = load i8**, i8*** %depv, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 %idxprom
  %7 = load i8*, i8** %arrayidx, align 8
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call1 = call i32 @fputs(i8* %7, %struct._IO_FILE* %8)
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call2 = call i32 @_IO_putc(i32 58, %struct._IO_FILE* %9)
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp.addr, align 8
  %call3 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %10)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4
  %inc = add i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
