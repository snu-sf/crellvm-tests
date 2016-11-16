; ModuleID = './lib/lister.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lister = type { %struct.tterm*, %struct._IO_FILE*, i64 (i8*)*, void (i8*, %struct._IO_FILE*)*, i64, i64, %struct.multicol, %struct.separated }
%struct.tterm = type opaque
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.multicol = type { i64, i64, %struct.world* }
%struct.world = type { i64*, i64, i64 }
%struct.separated = type { i8*, i64, i8* }

@lister_default = internal global %struct.lister { %struct.tterm* null, %struct._IO_FILE* null, i64 (i8*)* @strlen, void (i8*, %struct._IO_FILE*)* bitcast (i32 (i8*, %struct._IO_FILE*)* @fputs to void (i8*, %struct._IO_FILE*)*), i64 0, i64 0, %struct.multicol { i64 2, i64 0, %struct.world* null }, %struct.separated { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0) } }, align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@max_idx = internal global i64 0, align 8

; Function Attrs: nounwind uwtable
define void @lister_initialize(%struct.lister* %lister, %struct._IO_FILE* %stream) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %stream.addr = alloca %struct._IO_FILE*, align 8
  %l = alloca %struct.lister*, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store %struct._IO_FILE* %stream, %struct._IO_FILE** %stream.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  call void @tterm_initialize(%struct.tterm* null, %struct._IO_FILE* %2)
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream.addr, align 8
  %4 = load %struct.lister*, %struct.lister** %l, align 8
  %stream1 = getelementptr inbounds %struct.lister, %struct.lister* %4, i32 0, i32 1
  store %struct._IO_FILE* %3, %struct._IO_FILE** %stream1, align 8
  ret void
}

declare void @tterm_initialize(%struct.tterm*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define %struct.tterm* @lister_tterm_set(%struct.lister* %lister, %struct.tterm* %tterm) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %tterm.addr = alloca %struct.tterm*, align 8
  %l = alloca %struct.lister*, align 8
  %old = alloca %struct.tterm*, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store %struct.tterm* %tterm, %struct.tterm** %tterm.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %l, align 8
  %tterm1 = getelementptr inbounds %struct.lister, %struct.lister* %2, i32 0, i32 0
  %3 = load %struct.tterm*, %struct.tterm** %tterm1, align 8
  store %struct.tterm* %3, %struct.tterm** %old, align 8
  %4 = load %struct.tterm*, %struct.tterm** %tterm.addr, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %tterm2 = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 0
  store %struct.tterm* %4, %struct.tterm** %tterm2, align 8
  %6 = load %struct.tterm*, %struct.tterm** %old, align 8
  ret %struct.tterm* %6
}

; Function Attrs: nounwind uwtable
define i64 @lister_before_set(%struct.lister* %lister, i64 %size) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %size.addr = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  %old = alloca i64, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %l, align 8
  %before = getelementptr inbounds %struct.lister, %struct.lister* %2, i32 0, i32 4
  %3 = load i64, i64* %before, align 8
  store i64 %3, i64* %old, align 8
  %4 = load i64, i64* %size.addr, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %before1 = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 4
  store i64 %4, i64* %before1, align 8
  %6 = load i64, i64* %old, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define i64 @lister_after_set(%struct.lister* %lister, i64 %size) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %size.addr = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  %old = alloca i64, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store i64 %size, i64* %size.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %l, align 8
  %after = getelementptr inbounds %struct.lister, %struct.lister* %2, i32 0, i32 5
  %3 = load i64, i64* %after, align 8
  store i64 %3, i64* %old, align 8
  %4 = load i64, i64* %size.addr, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %after1 = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 5
  store i64 %4, i64* %after1, align 8
  %6 = load i64, i64* %old, align 8
  ret i64 %6
}

; Function Attrs: nounwind uwtable
define void @lister_fprint_vertical(%struct.lister* %lister, %struct._IO_FILE* %unused, i8** %items, i64 %item_number, i64 (i8*)* %item_width_fn, void (i8*, %struct._IO_FILE*)* %item_print_fn) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %unused.addr = alloca %struct._IO_FILE*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %item_width_fn.addr = alloca i64 (i8*)*, align 8
  %item_print_fn.addr = alloca void (i8*, %struct._IO_FILE*)*, align 8
  %line_fmt = alloca %struct.world*, align 8
  %itemno = alloca i64, align 8
  %row = alloca i64, align 8
  %col_width = alloca i64, align 8
  %item_width = alloca i64, align 8
  %pos = alloca i64, align 8
  %cols = alloca i64, align 8
  %rows = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  %m = alloca %struct.multicol*, align 8
  %tabsize = alloca i64, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %col = alloca i64, align 8
  %nextpos = alloca i64, align 8
  %nextcolpos = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store %struct._IO_FILE* %unused, %struct._IO_FILE** %unused.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  store i64 (i8*)* %item_width_fn, i64 (i8*)** %item_width_fn.addr, align 8
  store void (i8*, %struct._IO_FILE*)* %item_print_fn, void (i8*, %struct._IO_FILE*)** %item_print_fn.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %l, align 8
  %multicol = getelementptr inbounds %struct.lister, %struct.lister* %2, i32 0, i32 6
  store %struct.multicol* %multicol, %struct.multicol** %m, align 8
  %3 = load %struct.lister*, %struct.lister** %l, align 8
  %tterm = getelementptr inbounds %struct.lister, %struct.lister* %3, i32 0, i32 0
  %4 = load %struct.tterm*, %struct.tterm** %tterm, align 8
  %call = call i64 @tterm_tabsize(%struct.tterm* %4)
  store i64 %call, i64* %tabsize, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %stream1 = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream1, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** %stream, align 8
  %7 = load %struct.lister*, %struct.lister** %l, align 8
  call void @init_worlds(%struct.lister* %7)
  %8 = load i64, i64* %item_number.addr, align 8
  %cmp = icmp eq i64 %8, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 0, i64* %item_number.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i64, i64* %item_number.addr, align 8
  %10 = load i8**, i8*** %items.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %9
  %11 = load i8*, i8** %arrayidx, align 8
  %tobool2 = icmp ne i8* %11, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %item_number.addr, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %item_number.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  %13 = load %struct.lister*, %struct.lister** %l, align 8
  %14 = load i8**, i8*** %items.addr, align 8
  %15 = load i64, i64* %item_number.addr, align 8
  %16 = load i64 (i8*)*, i64 (i8*)** %item_width_fn.addr, align 8
  %call3 = call i64 @lister_vertical_format(%struct.lister* %13, i8** %14, i64 %15, i64 (i8*)* %16, %struct.world** %line_fmt)
  store i64 %call3, i64* %cols, align 8
  %17 = load i64, i64* %item_number.addr, align 8
  %18 = load i64, i64* %cols, align 8
  %div = udiv i64 %17, %18
  %19 = load i64, i64* %item_number.addr, align 8
  %20 = load i64, i64* %cols, align 8
  %rem = urem i64 %19, %20
  %cmp4 = icmp ne i64 %rem, 0
  %conv = zext i1 %cmp4 to i32
  %conv5 = sext i32 %conv to i64
  %add = add i64 %div, %conv5
  store i64 %add, i64* %rows, align 8
  store i64 0, i64* %row, align 8
  br label %for.cond.6

for.cond.6:                                       ; preds = %for.inc.46, %if.end
  %21 = load i64, i64* %row, align 8
  %22 = load i64, i64* %rows, align 8
  %cmp7 = icmp ult i64 %21, %22
  br i1 %cmp7, label %for.body.9, label %for.end.48

for.body.9:                                       ; preds = %for.cond.6
  store i64 0, i64* %col, align 8
  %23 = load i64, i64* %row, align 8
  store i64 %23, i64* %itemno, align 8
  store i64 0, i64* %pos, align 8
  %24 = load %struct.lister*, %struct.lister** %l, align 8
  %before = getelementptr inbounds %struct.lister, %struct.lister* %24, i32 0, i32 4
  %25 = load i64, i64* %before, align 8
  store i64 %25, i64* %nextpos, align 8
  store i64 %25, i64* %nextcolpos, align 8
  br label %while.body

while.body:                                       ; preds = %for.body.9, %if.end.42
  %26 = load i64, i64* %col, align 8
  %inc10 = add i64 %26, 1
  store i64 %inc10, i64* %col, align 8
  %27 = load %struct.world*, %struct.world** %line_fmt, align 8
  %widths = getelementptr inbounds %struct.world, %struct.world* %27, i32 0, i32 0
  %28 = load i64*, i64** %widths, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %28, i64 %26
  %29 = load i64, i64* %arrayidx11, align 8
  store i64 %29, i64* %col_width, align 8
  %30 = load i64 (i8*)*, i64 (i8*)** %item_width_fn.addr, align 8
  %31 = load i64, i64* %itemno, align 8
  %32 = load i8**, i8*** %items.addr, align 8
  %arrayidx12 = getelementptr inbounds i8*, i8** %32, i64 %31
  %33 = load i8*, i8** %arrayidx12, align 8
  %call13 = call i64 %30(i8* %33)
  store i64 %call13, i64* %item_width, align 8
  %34 = load i64, i64* %col_width, align 8
  %35 = load i64, i64* %item_width, align 8
  %sub = sub i64 %34, %35
  %36 = load %struct.multicol*, %struct.multicol** %m, align 8
  %justify = getelementptr inbounds %struct.multicol, %struct.multicol* %36, i32 0, i32 1
  %37 = load i64, i64* %justify, align 8
  %mul = mul i64 %sub, %37
  %div14 = udiv i64 %mul, 2
  %38 = load i64, i64* %nextpos, align 8
  %add15 = add i64 %38, %div14
  store i64 %add15, i64* %nextpos, align 8
  %39 = load i64, i64* %col_width, align 8
  %40 = load %struct.multicol*, %struct.multicol** %m, align 8
  %between = getelementptr inbounds %struct.multicol, %struct.multicol* %40, i32 0, i32 0
  %41 = load i64, i64* %between, align 8
  %add16 = add i64 %39, %41
  %42 = load i64, i64* %nextcolpos, align 8
  %add17 = add i64 %42, %add16
  store i64 %add17, i64* %nextcolpos, align 8
  br label %do.body

do.body:                                          ; preds = %while.body
  %43 = load i64, i64* %pos, align 8
  store i64 %43, i64* %from, align 8
  %44 = load i64, i64* %nextpos, align 8
  store i64 %44, i64* %to, align 8
  br label %while.cond.18

while.cond.18:                                    ; preds = %if.end.36, %do.body
  %45 = load i64, i64* %from, align 8
  %46 = load i64, i64* %to, align 8
  %cmp19 = icmp ult i64 %45, %46
  br i1 %cmp19, label %while.body.21, label %while.end

while.body.21:                                    ; preds = %while.cond.18
  %47 = load i64, i64* %tabsize, align 8
  %cmp22 = icmp ugt i64 %47, 0
  br i1 %cmp22, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body.21
  %48 = load i64, i64* %to, align 8
  %49 = load i64, i64* %tabsize, align 8
  %div24 = udiv i64 %48, %49
  %50 = load i64, i64* %from, align 8
  %add25 = add i64 %50, 1
  %51 = load i64, i64* %tabsize, align 8
  %div26 = udiv i64 %add25, %51
  %cmp27 = icmp ugt i64 %div24, %div26
  br i1 %cmp27, label %if.then.29, label %if.else

if.then.29:                                       ; preds = %land.lhs.true
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call30 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %52)
  %53 = load i64, i64* %tabsize, align 8
  %54 = load i64, i64* %from, align 8
  %55 = load i64, i64* %tabsize, align 8
  %rem31 = urem i64 %54, %55
  %sub32 = sub i64 %53, %rem31
  %56 = load i64, i64* %from, align 8
  %add33 = add i64 %56, %sub32
  store i64 %add33, i64* %from, align 8
  br label %if.end.36

if.else:                                          ; preds = %land.lhs.true, %while.body.21
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call34 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %57)
  %58 = load i64, i64* %from, align 8
  %inc35 = add i64 %58, 1
  store i64 %inc35, i64* %from, align 8
  br label %if.end.36

if.end.36:                                        ; preds = %if.else, %if.then.29
  br label %while.cond.18

while.end:                                        ; preds = %while.cond.18
  br label %do.end

do.end:                                           ; preds = %while.end
  %59 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %item_print_fn.addr, align 8
  %60 = load i64, i64* %itemno, align 8
  %61 = load i8**, i8*** %items.addr, align 8
  %arrayidx37 = getelementptr inbounds i8*, i8** %61, i64 %60
  %62 = load i8*, i8** %arrayidx37, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  call void %59(i8* %62, %struct._IO_FILE* %63)
  %64 = load i64, i64* %rows, align 8
  %65 = load i64, i64* %itemno, align 8
  %add38 = add i64 %65, %64
  store i64 %add38, i64* %itemno, align 8
  %66 = load i64, i64* %itemno, align 8
  %67 = load i64, i64* %item_number.addr, align 8
  %cmp39 = icmp uge i64 %66, %67
  br i1 %cmp39, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %do.end
  br label %while.end.44

if.end.42:                                        ; preds = %do.end
  %68 = load i64, i64* %nextpos, align 8
  %69 = load i64, i64* %item_width, align 8
  %add43 = add i64 %68, %69
  store i64 %add43, i64* %pos, align 8
  %70 = load i64, i64* %nextcolpos, align 8
  store i64 %70, i64* %nextpos, align 8
  br label %while.body

while.end.44:                                     ; preds = %if.then.41
  %71 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call45 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %71)
  br label %for.inc.46

for.inc.46:                                       ; preds = %while.end.44
  %72 = load i64, i64* %row, align 8
  %inc47 = add i64 %72, 1
  store i64 %inc47, i64* %row, align 8
  br label %for.cond.6

for.end.48:                                       ; preds = %for.cond.6
  ret void
}

declare i64 @tterm_tabsize(%struct.tterm*) #1

; Function Attrs: nounwind uwtable
define internal void @init_worlds(%struct.lister* %l) #0 {
entry:
  %l.addr = alloca %struct.lister*, align 8
  %i = alloca i64, align 8
  %line_width = alloca i64, align 8
  %j = alloca i64, align 8
  store %struct.lister* %l, %struct.lister** %l.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %tterm = getelementptr inbounds %struct.lister, %struct.lister* %0, i32 0, i32 0
  %1 = load %struct.tterm*, %struct.tterm** %tterm, align 8
  %call = call i64 @tterm_width(%struct.tterm* %1)
  store i64 %call, i64* %line_width, align 8
  %2 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol = getelementptr inbounds %struct.lister, %struct.lister* %2, i32 0, i32 6
  %worlds = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol, i32 0, i32 2
  %3 = load %struct.world*, %struct.world** %worlds, align 8
  %cmp = icmp eq %struct.world* %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i64, i64* %line_width, align 8
  %mul = mul i64 24, %4
  %call1 = call i8* @xmalloc(i64 %mul)
  %5 = bitcast i8* %call1 to %struct.world*
  %6 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol2 = getelementptr inbounds %struct.lister, %struct.lister* %6, i32 0, i32 6
  %worlds3 = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol2, i32 0, i32 2
  store %struct.world* %5, %struct.world** %worlds3, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %7 = load i64, i64* %i, align 8
  %8 = load i64, i64* %line_width, align 8
  %cmp4 = icmp ult i64 %7, %8
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i64, i64* %i, align 8
  %add = add i64 %9, 1
  %mul5 = mul i64 8, %add
  %call6 = call i8* @xmalloc(i64 %mul5)
  %10 = bitcast i8* %call6 to i64*
  %11 = load i64, i64* %i, align 8
  %12 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol7 = getelementptr inbounds %struct.lister, %struct.lister* %12, i32 0, i32 6
  %worlds8 = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol7, i32 0, i32 2
  %13 = load %struct.world*, %struct.world** %worlds8, align 8
  %arrayidx = getelementptr inbounds %struct.world, %struct.world* %13, i64 %11
  %widths = getelementptr inbounds %struct.world, %struct.world* %arrayidx, i32 0, i32 0
  store i64* %10, i64** %widths, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i64, i64* %i, align 8
  %inc = add i64 %14, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  %15 = load i64, i64* %line_width, align 8
  %16 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %before = getelementptr inbounds %struct.lister, %struct.lister* %16, i32 0, i32 4
  %17 = load i64, i64* %before, align 8
  %sub = sub i64 %15, %17
  %18 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %after = getelementptr inbounds %struct.lister, %struct.lister* %18, i32 0, i32 5
  %19 = load i64, i64* %after, align 8
  %sub9 = sub i64 %sub, %19
  %20 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol10 = getelementptr inbounds %struct.lister, %struct.lister* %20, i32 0, i32 6
  %between = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol10, i32 0, i32 0
  %21 = load i64, i64* %between, align 8
  %sub11 = sub i64 %sub9, %21
  %22 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol12 = getelementptr inbounds %struct.lister, %struct.lister* %22, i32 0, i32 6
  %between13 = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol12, i32 0, i32 0
  %23 = load i64, i64* %between13, align 8
  %add14 = add i64 1, %23
  %div = udiv i64 %sub11, %add14
  store i64 %div, i64* @max_idx, align 8
  %24 = load i64, i64* @max_idx, align 8
  %cmp15 = icmp eq i64 %24, 0
  br i1 %cmp15, label %if.then.16, label %if.end.17

if.then.16:                                       ; preds = %if.end
  store i64 1, i64* @max_idx, align 8
  br label %if.end.17

if.end.17:                                        ; preds = %if.then.16, %if.end
  store i64 0, i64* %i, align 8
  br label %for.cond.18

for.cond.18:                                      ; preds = %for.inc.40, %if.end.17
  %25 = load i64, i64* %i, align 8
  %26 = load i64, i64* @max_idx, align 8
  %cmp19 = icmp ult i64 %25, %26
  br i1 %cmp19, label %for.body.20, label %for.end.42

for.body.20:                                      ; preds = %for.cond.18
  %27 = load i64, i64* %i, align 8
  %28 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol21 = getelementptr inbounds %struct.lister, %struct.lister* %28, i32 0, i32 6
  %worlds22 = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol21, i32 0, i32 2
  %29 = load %struct.world*, %struct.world** %worlds22, align 8
  %arrayidx23 = getelementptr inbounds %struct.world, %struct.world* %29, i64 %27
  %valid_len = getelementptr inbounds %struct.world, %struct.world* %arrayidx23, i32 0, i32 2
  store i64 1, i64* %valid_len, align 8
  %30 = load i64, i64* %i, align 8
  %add24 = add i64 %30, 1
  %mul25 = mul i64 %add24, 1
  %31 = load i64, i64* %i, align 8
  %32 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol26 = getelementptr inbounds %struct.lister, %struct.lister* %32, i32 0, i32 6
  %worlds27 = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol26, i32 0, i32 2
  %33 = load %struct.world*, %struct.world** %worlds27, align 8
  %arrayidx28 = getelementptr inbounds %struct.world, %struct.world* %33, i64 %31
  %width = getelementptr inbounds %struct.world, %struct.world* %arrayidx28, i32 0, i32 1
  store i64 %mul25, i64* %width, align 8
  store i64 0, i64* %j, align 8
  br label %for.cond.29

for.cond.29:                                      ; preds = %for.inc.37, %for.body.20
  %34 = load i64, i64* %j, align 8
  %35 = load i64, i64* %i, align 8
  %cmp30 = icmp ule i64 %34, %35
  br i1 %cmp30, label %for.body.31, label %for.end.39

for.body.31:                                      ; preds = %for.cond.29
  %36 = load i64, i64* %j, align 8
  %37 = load i64, i64* %i, align 8
  %38 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol32 = getelementptr inbounds %struct.lister, %struct.lister* %38, i32 0, i32 6
  %worlds33 = getelementptr inbounds %struct.multicol, %struct.multicol* %multicol32, i32 0, i32 2
  %39 = load %struct.world*, %struct.world** %worlds33, align 8
  %arrayidx34 = getelementptr inbounds %struct.world, %struct.world* %39, i64 %37
  %widths35 = getelementptr inbounds %struct.world, %struct.world* %arrayidx34, i32 0, i32 0
  %40 = load i64*, i64** %widths35, align 8
  %arrayidx36 = getelementptr inbounds i64, i64* %40, i64 %36
  store i64 1, i64* %arrayidx36, align 8
  br label %for.inc.37

for.inc.37:                                       ; preds = %for.body.31
  %41 = load i64, i64* %j, align 8
  %inc38 = add i64 %41, 1
  store i64 %inc38, i64* %j, align 8
  br label %for.cond.29

for.end.39:                                       ; preds = %for.cond.29
  br label %for.inc.40

for.inc.40:                                       ; preds = %for.end.39
  %42 = load i64, i64* %i, align 8
  %inc41 = add i64 %42, 1
  store i64 %inc41, i64* %i, align 8
  br label %for.cond.18

for.end.42:                                       ; preds = %for.cond.18
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @lister_vertical_format(%struct.lister* %l, i8** %items, i64 %item_number, i64 (i8*)* %item_width_fn, %struct.world** %line_fmt) #0 {
entry:
  %l.addr = alloca %struct.lister*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %item_width_fn.addr = alloca i64 (i8*)*, align 8
  %line_fmt.addr = alloca %struct.world**, align 8
  %max_cols = alloca i64, align 8
  %cols = alloca i64, align 8
  %itemno = alloca i64, align 8
  %item_width = alloca i64, align 8
  %m = alloca %struct.multicol*, align 8
  %available_width = alloca i64, align 8
  %worlds = alloca %struct.world*, align 8
  %i = alloca i64, align 8
  %effective_width = alloca i64, align 8
  %idx = alloca i64, align 8
  %real_width = alloca i64, align 8
  store %struct.lister* %l, %struct.lister** %l.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  store i64 (i8*)* %item_width_fn, i64 (i8*)** %item_width_fn.addr, align 8
  store %struct.world** %line_fmt, %struct.world*** %line_fmt.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol = getelementptr inbounds %struct.lister, %struct.lister* %0, i32 0, i32 6
  store %struct.multicol* %multicol, %struct.multicol** %m, align 8
  %1 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %tterm = getelementptr inbounds %struct.lister, %struct.lister* %1, i32 0, i32 0
  %2 = load %struct.tterm*, %struct.tterm** %tterm, align 8
  %call = call i64 @tterm_width(%struct.tterm* %2)
  %3 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %after = getelementptr inbounds %struct.lister, %struct.lister* %3, i32 0, i32 5
  %4 = load i64, i64* %after, align 8
  %sub = sub i64 %call, %4
  %5 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %before = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 4
  %6 = load i64, i64* %before, align 8
  %sub1 = sub i64 %sub, %6
  store i64 %sub1, i64* %available_width, align 8
  %7 = load %struct.multicol*, %struct.multicol** %m, align 8
  %worlds2 = getelementptr inbounds %struct.multicol, %struct.multicol* %7, i32 0, i32 2
  %8 = load %struct.world*, %struct.world** %worlds2, align 8
  store %struct.world* %8, %struct.world** %worlds, align 8
  %9 = load i64, i64* @max_idx, align 8
  %10 = load i64, i64* %item_number.addr, align 8
  %cmp = icmp ugt i64 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i64, i64* %item_number.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i64, i64* @max_idx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ]
  store i64 %cond, i64* %max_cols, align 8
  store i64 0, i64* %itemno, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %cond.end
  %13 = load i64, i64* %itemno, align 8
  %14 = load i64, i64* %item_number.addr, align 8
  %cmp3 = icmp ult i64 %13, %14
  br i1 %cmp3, label %for.body, label %for.end.34

for.body:                                         ; preds = %for.cond
  %15 = load i64 (i8*)*, i64 (i8*)** %item_width_fn.addr, align 8
  %16 = load i64, i64* %itemno, align 8
  %17 = load i8**, i8*** %items.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %16
  %18 = load i8*, i8** %arrayidx, align 8
  %call4 = call i64 %15(i8* %18)
  store i64 %call4, i64* %item_width, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %max_cols, align 8
  %cmp6 = icmp ult i64 %19, %20
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx8 = getelementptr inbounds %struct.world, %struct.world* %22, i64 %21
  %valid_len = getelementptr inbounds %struct.world, %struct.world* %arrayidx8, i32 0, i32 2
  %23 = load i64, i64* %valid_len, align 8
  %tobool = icmp ne i64 %23, 0
  br i1 %tobool, label %if.then, label %if.end.31

if.then:                                          ; preds = %for.body.7
  %24 = load i64, i64* %available_width, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load %struct.multicol*, %struct.multicol** %m, align 8
  %between = getelementptr inbounds %struct.multicol, %struct.multicol* %26, i32 0, i32 0
  %27 = load i64, i64* %between, align 8
  %mul = mul i64 %25, %27
  %sub9 = sub i64 %24, %mul
  store i64 %sub9, i64* %effective_width, align 8
  %28 = load i64, i64* %itemno, align 8
  %29 = load i64, i64* %item_number.addr, align 8
  %30 = load i64, i64* %i, align 8
  %add = add i64 %29, %30
  %31 = load i64, i64* %i, align 8
  %add10 = add i64 %31, 1
  %div = udiv i64 %add, %add10
  %div11 = udiv i64 %28, %div
  store i64 %div11, i64* %idx, align 8
  %32 = load i64, i64* %item_width, align 8
  store i64 %32, i64* %real_width, align 8
  %33 = load i64, i64* %real_width, align 8
  %34 = load i64, i64* %idx, align 8
  %35 = load i64, i64* %i, align 8
  %36 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx12 = getelementptr inbounds %struct.world, %struct.world* %36, i64 %35
  %widths = getelementptr inbounds %struct.world, %struct.world* %arrayidx12, i32 0, i32 0
  %37 = load i64*, i64** %widths, align 8
  %arrayidx13 = getelementptr inbounds i64, i64* %37, i64 %34
  %38 = load i64, i64* %arrayidx13, align 8
  %cmp14 = icmp ugt i64 %33, %38
  br i1 %cmp14, label %if.then.15, label %if.end

if.then.15:                                       ; preds = %if.then
  %39 = load i64, i64* %real_width, align 8
  %40 = load i64, i64* %idx, align 8
  %41 = load i64, i64* %i, align 8
  %42 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx16 = getelementptr inbounds %struct.world, %struct.world* %42, i64 %41
  %widths17 = getelementptr inbounds %struct.world, %struct.world* %arrayidx16, i32 0, i32 0
  %43 = load i64*, i64** %widths17, align 8
  %arrayidx18 = getelementptr inbounds i64, i64* %43, i64 %40
  %44 = load i64, i64* %arrayidx18, align 8
  %sub19 = sub i64 %39, %44
  %45 = load i64, i64* %i, align 8
  %46 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx20 = getelementptr inbounds %struct.world, %struct.world* %46, i64 %45
  %width = getelementptr inbounds %struct.world, %struct.world* %arrayidx20, i32 0, i32 1
  %47 = load i64, i64* %width, align 8
  %add21 = add i64 %47, %sub19
  store i64 %add21, i64* %width, align 8
  %48 = load i64, i64* %real_width, align 8
  %49 = load i64, i64* %idx, align 8
  %50 = load i64, i64* %i, align 8
  %51 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx22 = getelementptr inbounds %struct.world, %struct.world* %51, i64 %50
  %widths23 = getelementptr inbounds %struct.world, %struct.world* %arrayidx22, i32 0, i32 0
  %52 = load i64*, i64** %widths23, align 8
  %arrayidx24 = getelementptr inbounds i64, i64* %52, i64 %49
  store i64 %48, i64* %arrayidx24, align 8
  %53 = load i64, i64* %i, align 8
  %54 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx25 = getelementptr inbounds %struct.world, %struct.world* %54, i64 %53
  %width26 = getelementptr inbounds %struct.world, %struct.world* %arrayidx25, i32 0, i32 1
  %55 = load i64, i64* %width26, align 8
  %56 = load i64, i64* %effective_width, align 8
  %cmp27 = icmp ule i64 %55, %56
  %conv = zext i1 %cmp27 to i32
  %conv28 = sext i32 %conv to i64
  %57 = load i64, i64* %i, align 8
  %58 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx29 = getelementptr inbounds %struct.world, %struct.world* %58, i64 %57
  %valid_len30 = getelementptr inbounds %struct.world, %struct.world* %arrayidx29, i32 0, i32 2
  store i64 %conv28, i64* %valid_len30, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.15, %if.then
  br label %if.end.31

if.end.31:                                        ; preds = %if.end, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.31
  %59 = load i64, i64* %i, align 8
  %inc = add i64 %59, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %60 = load i64, i64* %itemno, align 8
  %inc33 = add i64 %60, 1
  store i64 %inc33, i64* %itemno, align 8
  br label %for.cond

for.end.34:                                       ; preds = %for.cond
  %61 = load i64, i64* %max_cols, align 8
  store i64 %61, i64* %cols, align 8
  br label %for.cond.35

for.cond.35:                                      ; preds = %for.inc.45, %for.end.34
  %62 = load i64, i64* %cols, align 8
  %cmp36 = icmp ugt i64 %62, 1
  br i1 %cmp36, label %for.body.38, label %for.end.46

for.body.38:                                      ; preds = %for.cond.35
  %63 = load i64, i64* %cols, align 8
  %sub39 = sub i64 %63, 1
  %64 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx40 = getelementptr inbounds %struct.world, %struct.world* %64, i64 %sub39
  %valid_len41 = getelementptr inbounds %struct.world, %struct.world* %arrayidx40, i32 0, i32 2
  %65 = load i64, i64* %valid_len41, align 8
  %tobool42 = icmp ne i64 %65, 0
  br i1 %tobool42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %for.body.38
  br label %for.end.46

if.end.44:                                        ; preds = %for.body.38
  br label %for.inc.45

for.inc.45:                                       ; preds = %if.end.44
  %66 = load i64, i64* %cols, align 8
  %dec = add i64 %66, -1
  store i64 %dec, i64* %cols, align 8
  br label %for.cond.35

for.end.46:                                       ; preds = %if.then.43, %for.cond.35
  %67 = load i64, i64* %cols, align 8
  %sub47 = sub i64 %67, 1
  %68 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx48 = getelementptr inbounds %struct.world, %struct.world* %68, i64 %sub47
  %69 = load %struct.world**, %struct.world*** %line_fmt.addr, align 8
  store %struct.world* %arrayidx48, %struct.world** %69, align 8
  %70 = load i64, i64* %cols, align 8
  ret i64 %70
}

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @lister_print_vertical(%struct.lister* %lister, i8** %items, i64 %item_number) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %3 = load i8**, i8*** %items.addr, align 8
  %4 = load i64, i64* %item_number.addr, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %width_fn = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 2
  %6 = load i64 (i8*)*, i64 (i8*)** %width_fn, align 8
  %7 = load %struct.lister*, %struct.lister** %l, align 8
  %print_fn = getelementptr inbounds %struct.lister, %struct.lister* %7, i32 0, i32 3
  %8 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %print_fn, align 8
  call void @lister_fprint_vertical(%struct.lister* %2, %struct._IO_FILE* null, i8** %3, i64 %4, i64 (i8*)* %6, void (i8*, %struct._IO_FILE*)* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lister_fprint_horizontal(%struct.lister* %lister, %struct._IO_FILE* %unused, i8** %items, i64 %item_number, i64 (i8*)* %item_width_fn, void (i8*, %struct._IO_FILE*)* %item_print_fn) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %unused.addr = alloca %struct._IO_FILE*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %item_width_fn.addr = alloca i64 (i8*)*, align 8
  %item_print_fn.addr = alloca void (i8*, %struct._IO_FILE*)*, align 8
  %line_fmt = alloca %struct.world*, align 8
  %itemno = alloca i64, align 8
  %col_width = alloca i64, align 8
  %item_width = alloca i64, align 8
  %cols = alloca i64, align 8
  %pos = alloca i64, align 8
  %nextpos = alloca i64, align 8
  %nextcolpos = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  %m = alloca %struct.multicol*, align 8
  %tabsize = alloca i64, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %col = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store %struct._IO_FILE* %unused, %struct._IO_FILE** %unused.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  store i64 (i8*)* %item_width_fn, i64 (i8*)** %item_width_fn.addr, align 8
  store void (i8*, %struct._IO_FILE*)* %item_print_fn, void (i8*, %struct._IO_FILE*)** %item_print_fn.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %l, align 8
  %multicol = getelementptr inbounds %struct.lister, %struct.lister* %2, i32 0, i32 6
  store %struct.multicol* %multicol, %struct.multicol** %m, align 8
  %3 = load %struct.lister*, %struct.lister** %l, align 8
  %tterm = getelementptr inbounds %struct.lister, %struct.lister* %3, i32 0, i32 0
  %4 = load %struct.tterm*, %struct.tterm** %tterm, align 8
  %call = call i64 @tterm_tabsize(%struct.tterm* %4)
  store i64 %call, i64* %tabsize, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %stream1 = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** %stream1, align 8
  store %struct._IO_FILE* %6, %struct._IO_FILE** %stream, align 8
  %7 = load %struct.lister*, %struct.lister** %l, align 8
  call void @init_worlds(%struct.lister* %7)
  %8 = load i64, i64* %item_number.addr, align 8
  %cmp = icmp eq i64 %8, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %cond.end
  store i64 0, i64* %item_number.addr, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %9 = load i64, i64* %item_number.addr, align 8
  %10 = load i8**, i8*** %items.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %10, i64 %9
  %11 = load i8*, i8** %arrayidx, align 8
  %tobool2 = icmp ne i8* %11, null
  br i1 %tobool2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, i64* %item_number.addr, align 8
  %inc = add i64 %12, 1
  store i64 %inc, i64* %item_number.addr, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %cond.end
  %13 = load %struct.lister*, %struct.lister** %l, align 8
  %14 = load i8**, i8*** %items.addr, align 8
  %15 = load i64, i64* %item_number.addr, align 8
  %16 = load i64 (i8*)*, i64 (i8*)** %item_width_fn.addr, align 8
  %call3 = call i64 @lister_horizontal_format(%struct.lister* %13, i8** %14, i64 %15, i64 (i8*)* %16, %struct.world** %line_fmt)
  store i64 %call3, i64* %cols, align 8
  store i64 0, i64* %pos, align 8
  %17 = load %struct.lister*, %struct.lister** %l, align 8
  %before = getelementptr inbounds %struct.lister, %struct.lister* %17, i32 0, i32 4
  %18 = load i64, i64* %before, align 8
  store i64 %18, i64* %nextpos, align 8
  store i64 %18, i64* %nextcolpos, align 8
  store i64 0, i64* %itemno, align 8
  br label %for.cond.4

for.cond.4:                                       ; preds = %for.inc.35, %if.end
  %19 = load i64, i64* %itemno, align 8
  %20 = load i64, i64* %item_number.addr, align 8
  %cmp5 = icmp ult i64 %19, %20
  br i1 %cmp5, label %for.body.6, label %for.end.37

for.body.6:                                       ; preds = %for.cond.4
  %21 = load i64, i64* %itemno, align 8
  %22 = load i64, i64* %cols, align 8
  %rem = urem i64 %21, %22
  store i64 %rem, i64* %col, align 8
  %23 = load i64, i64* %itemno, align 8
  %24 = load i8**, i8*** %items.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %24, i64 %23
  %25 = load i8*, i8** %arrayidx7, align 8
  %call8 = call i64 @strlen(i8* %25) #3
  store i64 %call8, i64* %item_width, align 8
  %26 = load i64, i64* %col, align 8
  %27 = load %struct.world*, %struct.world** %line_fmt, align 8
  %widths = getelementptr inbounds %struct.world, %struct.world* %27, i32 0, i32 0
  %28 = load i64*, i64** %widths, align 8
  %arrayidx9 = getelementptr inbounds i64, i64* %28, i64 %26
  %29 = load i64, i64* %arrayidx9, align 8
  store i64 %29, i64* %col_width, align 8
  %30 = load i64, i64* %col, align 8
  %cmp10 = icmp eq i64 %30, 0
  br i1 %cmp10, label %land.lhs.true, label %if.end.15

land.lhs.true:                                    ; preds = %for.body.6
  %31 = load i64, i64* %itemno, align 8
  %cmp11 = icmp ne i64 %31, 0
  br i1 %cmp11, label %if.then.12, label %if.end.15

if.then.12:                                       ; preds = %land.lhs.true
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call13 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %32)
  store i64 0, i64* %pos, align 8
  %33 = load %struct.lister*, %struct.lister** %l, align 8
  %before14 = getelementptr inbounds %struct.lister, %struct.lister* %33, i32 0, i32 4
  %34 = load i64, i64* %before14, align 8
  store i64 %34, i64* %nextpos, align 8
  store i64 %34, i64* %nextcolpos, align 8
  br label %if.end.15

if.end.15:                                        ; preds = %if.then.12, %land.lhs.true, %for.body.6
  %35 = load i64, i64* %col_width, align 8
  %36 = load i64, i64* %item_width, align 8
  %sub = sub i64 %35, %36
  %37 = load %struct.multicol*, %struct.multicol** %m, align 8
  %justify = getelementptr inbounds %struct.multicol, %struct.multicol* %37, i32 0, i32 1
  %38 = load i64, i64* %justify, align 8
  %mul = mul i64 %sub, %38
  %div = udiv i64 %mul, 2
  %39 = load i64, i64* %nextpos, align 8
  %add = add i64 %39, %div
  store i64 %add, i64* %nextpos, align 8
  br label %do.body

do.body:                                          ; preds = %if.end.15
  %40 = load i64, i64* %pos, align 8
  store i64 %40, i64* %from, align 8
  %41 = load i64, i64* %nextpos, align 8
  store i64 %41, i64* %to, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end.30, %do.body
  %42 = load i64, i64* %from, align 8
  %43 = load i64, i64* %to, align 8
  %cmp16 = icmp ult i64 %42, %43
  br i1 %cmp16, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %44 = load i64, i64* %tabsize, align 8
  %cmp17 = icmp ugt i64 %44, 0
  br i1 %cmp17, label %land.lhs.true.18, label %if.else

land.lhs.true.18:                                 ; preds = %while.body
  %45 = load i64, i64* %to, align 8
  %46 = load i64, i64* %tabsize, align 8
  %div19 = udiv i64 %45, %46
  %47 = load i64, i64* %from, align 8
  %add20 = add i64 %47, 1
  %48 = load i64, i64* %tabsize, align 8
  %div21 = udiv i64 %add20, %48
  %cmp22 = icmp ugt i64 %div19, %div21
  br i1 %cmp22, label %if.then.23, label %if.else

if.then.23:                                       ; preds = %land.lhs.true.18
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call24 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %49)
  %50 = load i64, i64* %tabsize, align 8
  %51 = load i64, i64* %from, align 8
  %52 = load i64, i64* %tabsize, align 8
  %rem25 = urem i64 %51, %52
  %sub26 = sub i64 %50, %rem25
  %53 = load i64, i64* %from, align 8
  %add27 = add i64 %53, %sub26
  store i64 %add27, i64* %from, align 8
  br label %if.end.30

if.else:                                          ; preds = %land.lhs.true.18, %while.body
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call28 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %54)
  %55 = load i64, i64* %from, align 8
  %inc29 = add i64 %55, 1
  store i64 %inc29, i64* %from, align 8
  br label %if.end.30

if.end.30:                                        ; preds = %if.else, %if.then.23
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  %56 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %item_print_fn.addr, align 8
  %57 = load i64, i64* %itemno, align 8
  %58 = load i8**, i8*** %items.addr, align 8
  %arrayidx31 = getelementptr inbounds i8*, i8** %58, i64 %57
  %59 = load i8*, i8** %arrayidx31, align 8
  %60 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  call void %56(i8* %59, %struct._IO_FILE* %60)
  %61 = load i64, i64* %nextpos, align 8
  %62 = load i64, i64* %item_width, align 8
  %add32 = add i64 %61, %62
  store i64 %add32, i64* %pos, align 8
  %63 = load i64, i64* %col_width, align 8
  %64 = load %struct.multicol*, %struct.multicol** %m, align 8
  %between = getelementptr inbounds %struct.multicol, %struct.multicol* %64, i32 0, i32 0
  %65 = load i64, i64* %between, align 8
  %add33 = add i64 %63, %65
  %66 = load i64, i64* %nextcolpos, align 8
  %add34 = add i64 %66, %add33
  store i64 %add34, i64* %nextcolpos, align 8
  %67 = load i64, i64* %nextcolpos, align 8
  store i64 %67, i64* %nextpos, align 8
  br label %for.inc.35

for.inc.35:                                       ; preds = %do.end
  %68 = load i64, i64* %itemno, align 8
  %inc36 = add i64 %68, 1
  store i64 %inc36, i64* %itemno, align 8
  br label %for.cond.4

for.end.37:                                       ; preds = %for.cond.4
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call38 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %69)
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @lister_horizontal_format(%struct.lister* %l, i8** %items, i64 %item_number, i64 (i8*)* %item_width_fn, %struct.world** %line_fmt) #0 {
entry:
  %l.addr = alloca %struct.lister*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %item_width_fn.addr = alloca i64 (i8*)*, align 8
  %line_fmt.addr = alloca %struct.world**, align 8
  %max_cols = alloca i64, align 8
  %cols = alloca i64, align 8
  %itemno = alloca i64, align 8
  %item_width = alloca i64, align 8
  %m = alloca %struct.multicol*, align 8
  %available_width = alloca i64, align 8
  %worlds = alloca %struct.world*, align 8
  %i = alloca i64, align 8
  %effective_width = alloca i64, align 8
  %idx = alloca i64, align 8
  %real_width = alloca i64, align 8
  store %struct.lister* %l, %struct.lister** %l.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  store i64 (i8*)* %item_width_fn, i64 (i8*)** %item_width_fn.addr, align 8
  store %struct.world** %line_fmt, %struct.world*** %line_fmt.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %multicol = getelementptr inbounds %struct.lister, %struct.lister* %0, i32 0, i32 6
  store %struct.multicol* %multicol, %struct.multicol** %m, align 8
  %1 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %tterm = getelementptr inbounds %struct.lister, %struct.lister* %1, i32 0, i32 0
  %2 = load %struct.tterm*, %struct.tterm** %tterm, align 8
  %call = call i64 @tterm_width(%struct.tterm* %2)
  %3 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %after = getelementptr inbounds %struct.lister, %struct.lister* %3, i32 0, i32 5
  %4 = load i64, i64* %after, align 8
  %sub = sub i64 %call, %4
  %5 = load %struct.lister*, %struct.lister** %l.addr, align 8
  %before = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 4
  %6 = load i64, i64* %before, align 8
  %sub1 = sub i64 %sub, %6
  store i64 %sub1, i64* %available_width, align 8
  %7 = load %struct.multicol*, %struct.multicol** %m, align 8
  %worlds2 = getelementptr inbounds %struct.multicol, %struct.multicol* %7, i32 0, i32 2
  %8 = load %struct.world*, %struct.world** %worlds2, align 8
  store %struct.world* %8, %struct.world** %worlds, align 8
  %9 = load i64, i64* @max_idx, align 8
  %10 = load i64, i64* %item_number.addr, align 8
  %cmp = icmp ugt i64 %9, %10
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %11 = load i64, i64* %item_number.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  %12 = load i64, i64* @max_idx, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %11, %cond.true ], [ %12, %cond.false ]
  store i64 %cond, i64* %max_cols, align 8
  store i64 0, i64* %itemno, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.30, %cond.end
  %13 = load i64, i64* %itemno, align 8
  %14 = load i64, i64* %item_number.addr, align 8
  %cmp3 = icmp ult i64 %13, %14
  br i1 %cmp3, label %for.body, label %for.end.32

for.body:                                         ; preds = %for.cond
  %15 = load i64 (i8*)*, i64 (i8*)** %item_width_fn.addr, align 8
  %16 = load i64, i64* %itemno, align 8
  %17 = load i8**, i8*** %items.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %17, i64 %16
  %18 = load i8*, i8** %arrayidx, align 8
  %call4 = call i64 %15(i8* %18)
  store i64 %call4, i64* %item_width, align 8
  store i64 0, i64* %i, align 8
  br label %for.cond.5

for.cond.5:                                       ; preds = %for.inc, %for.body
  %19 = load i64, i64* %i, align 8
  %20 = load i64, i64* %max_cols, align 8
  %cmp6 = icmp ult i64 %19, %20
  br i1 %cmp6, label %for.body.7, label %for.end

for.body.7:                                       ; preds = %for.cond.5
  %21 = load i64, i64* %i, align 8
  %22 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx8 = getelementptr inbounds %struct.world, %struct.world* %22, i64 %21
  %valid_len = getelementptr inbounds %struct.world, %struct.world* %arrayidx8, i32 0, i32 2
  %23 = load i64, i64* %valid_len, align 8
  %tobool = icmp ne i64 %23, 0
  br i1 %tobool, label %if.then, label %if.end.29

if.then:                                          ; preds = %for.body.7
  %24 = load i64, i64* %available_width, align 8
  %25 = load i64, i64* %i, align 8
  %26 = load %struct.multicol*, %struct.multicol** %m, align 8
  %between = getelementptr inbounds %struct.multicol, %struct.multicol* %26, i32 0, i32 0
  %27 = load i64, i64* %between, align 8
  %mul = mul i64 %25, %27
  %sub9 = sub i64 %24, %mul
  store i64 %sub9, i64* %effective_width, align 8
  %28 = load i64, i64* %itemno, align 8
  %29 = load i64, i64* %i, align 8
  %add = add i64 %29, 1
  %rem = urem i64 %28, %add
  store i64 %rem, i64* %idx, align 8
  %30 = load i64, i64* %item_width, align 8
  store i64 %30, i64* %real_width, align 8
  %31 = load i64, i64* %real_width, align 8
  %32 = load i64, i64* %idx, align 8
  %33 = load i64, i64* %i, align 8
  %34 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx10 = getelementptr inbounds %struct.world, %struct.world* %34, i64 %33
  %widths = getelementptr inbounds %struct.world, %struct.world* %arrayidx10, i32 0, i32 0
  %35 = load i64*, i64** %widths, align 8
  %arrayidx11 = getelementptr inbounds i64, i64* %35, i64 %32
  %36 = load i64, i64* %arrayidx11, align 8
  %cmp12 = icmp ugt i64 %31, %36
  br i1 %cmp12, label %if.then.13, label %if.end

if.then.13:                                       ; preds = %if.then
  %37 = load i64, i64* %real_width, align 8
  %38 = load i64, i64* %idx, align 8
  %39 = load i64, i64* %i, align 8
  %40 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx14 = getelementptr inbounds %struct.world, %struct.world* %40, i64 %39
  %widths15 = getelementptr inbounds %struct.world, %struct.world* %arrayidx14, i32 0, i32 0
  %41 = load i64*, i64** %widths15, align 8
  %arrayidx16 = getelementptr inbounds i64, i64* %41, i64 %38
  %42 = load i64, i64* %arrayidx16, align 8
  %sub17 = sub i64 %37, %42
  %43 = load i64, i64* %i, align 8
  %44 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx18 = getelementptr inbounds %struct.world, %struct.world* %44, i64 %43
  %width = getelementptr inbounds %struct.world, %struct.world* %arrayidx18, i32 0, i32 1
  %45 = load i64, i64* %width, align 8
  %add19 = add i64 %45, %sub17
  store i64 %add19, i64* %width, align 8
  %46 = load i64, i64* %real_width, align 8
  %47 = load i64, i64* %idx, align 8
  %48 = load i64, i64* %i, align 8
  %49 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx20 = getelementptr inbounds %struct.world, %struct.world* %49, i64 %48
  %widths21 = getelementptr inbounds %struct.world, %struct.world* %arrayidx20, i32 0, i32 0
  %50 = load i64*, i64** %widths21, align 8
  %arrayidx22 = getelementptr inbounds i64, i64* %50, i64 %47
  store i64 %46, i64* %arrayidx22, align 8
  %51 = load i64, i64* %i, align 8
  %52 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx23 = getelementptr inbounds %struct.world, %struct.world* %52, i64 %51
  %width24 = getelementptr inbounds %struct.world, %struct.world* %arrayidx23, i32 0, i32 1
  %53 = load i64, i64* %width24, align 8
  %54 = load i64, i64* %effective_width, align 8
  %cmp25 = icmp ule i64 %53, %54
  %conv = zext i1 %cmp25 to i32
  %conv26 = sext i32 %conv to i64
  %55 = load i64, i64* %i, align 8
  %56 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx27 = getelementptr inbounds %struct.world, %struct.world* %56, i64 %55
  %valid_len28 = getelementptr inbounds %struct.world, %struct.world* %arrayidx27, i32 0, i32 2
  store i64 %conv26, i64* %valid_len28, align 8
  br label %if.end

if.end:                                           ; preds = %if.then.13, %if.then
  br label %if.end.29

if.end.29:                                        ; preds = %if.end, %for.body.7
  br label %for.inc

for.inc:                                          ; preds = %if.end.29
  %57 = load i64, i64* %i, align 8
  %inc = add i64 %57, 1
  store i64 %inc, i64* %i, align 8
  br label %for.cond.5

for.end:                                          ; preds = %for.cond.5
  br label %for.inc.30

for.inc.30:                                       ; preds = %for.end
  %58 = load i64, i64* %itemno, align 8
  %inc31 = add i64 %58, 1
  store i64 %inc31, i64* %itemno, align 8
  br label %for.cond

for.end.32:                                       ; preds = %for.cond
  %59 = load i64, i64* %max_cols, align 8
  store i64 %59, i64* %cols, align 8
  br label %for.cond.33

for.cond.33:                                      ; preds = %for.inc.43, %for.end.32
  %60 = load i64, i64* %cols, align 8
  %cmp34 = icmp ugt i64 %60, 1
  br i1 %cmp34, label %for.body.36, label %for.end.44

for.body.36:                                      ; preds = %for.cond.33
  %61 = load i64, i64* %cols, align 8
  %sub37 = sub i64 %61, 1
  %62 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx38 = getelementptr inbounds %struct.world, %struct.world* %62, i64 %sub37
  %valid_len39 = getelementptr inbounds %struct.world, %struct.world* %arrayidx38, i32 0, i32 2
  %63 = load i64, i64* %valid_len39, align 8
  %tobool40 = icmp ne i64 %63, 0
  br i1 %tobool40, label %if.then.41, label %if.end.42

if.then.41:                                       ; preds = %for.body.36
  br label %for.end.44

if.end.42:                                        ; preds = %for.body.36
  br label %for.inc.43

for.inc.43:                                       ; preds = %if.end.42
  %64 = load i64, i64* %cols, align 8
  %dec = add i64 %64, -1
  store i64 %dec, i64* %cols, align 8
  br label %for.cond.33

for.end.44:                                       ; preds = %if.then.41, %for.cond.33
  %65 = load i64, i64* %cols, align 8
  %sub45 = sub i64 %65, 1
  %66 = load %struct.world*, %struct.world** %worlds, align 8
  %arrayidx46 = getelementptr inbounds %struct.world, %struct.world* %66, i64 %sub45
  %67 = load %struct.world**, %struct.world*** %line_fmt.addr, align 8
  store %struct.world* %arrayidx46, %struct.world** %67, align 8
  %68 = load i64, i64* %cols, align 8
  ret i64 %68
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind uwtable
define void @lister_print_horizontal(%struct.lister* %lister, i8** %items, i64 %item_number) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %3 = load i8**, i8*** %items.addr, align 8
  %4 = load i64, i64* %item_number.addr, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %width_fn = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 2
  %6 = load i64 (i8*)*, i64 (i8*)** %width_fn, align 8
  %7 = load %struct.lister*, %struct.lister** %l, align 8
  %print_fn = getelementptr inbounds %struct.lister, %struct.lister* %7, i32 0, i32 3
  %8 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %print_fn, align 8
  call void @lister_fprint_horizontal(%struct.lister* %2, %struct._IO_FILE* null, i8** %3, i64 %4, i64 (i8*)* %6, void (i8*, %struct._IO_FILE*)* %8)
  ret void
}

; Function Attrs: nounwind uwtable
define void @lister_fprint_separated(%struct.lister* %lister, %struct._IO_FILE* %unused, i8** %items, i64 %item_number, i64 (i8*)* %item_width_fn, void (i8*, %struct._IO_FILE*)* %item_print_fn) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %unused.addr = alloca %struct._IO_FILE*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %item_width_fn.addr = alloca i64 (i8*)*, align 8
  %item_print_fn.addr = alloca void (i8*, %struct._IO_FILE*)*, align 8
  %itemno = alloca i64, align 8
  %pos = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  %s = alloca %struct.separated*, align 8
  %final_width = alloca i64, align 8
  %separator_width = alloca i64, align 8
  %tabsize = alloca i64, align 8
  %stream = alloca %struct._IO_FILE*, align 8
  %line_width = alloca i64, align 8
  %old_pos = alloca i64, align 8
  %from = alloca i64, align 8
  %to = alloca i64, align 8
  %from41 = alloca i64, align 8
  %to42 = alloca i64, align 8
  %from72 = alloca i64, align 8
  %to73 = alloca i64, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store %struct._IO_FILE* %unused, %struct._IO_FILE** %unused.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  store i64 (i8*)* %item_width_fn, i64 (i8*)** %item_width_fn.addr, align 8
  store void (i8*, %struct._IO_FILE*)* %item_print_fn, void (i8*, %struct._IO_FILE*)** %item_print_fn.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %l, align 8
  %separated = getelementptr inbounds %struct.lister, %struct.lister* %2, i32 0, i32 7
  store %struct.separated* %separated, %struct.separated** %s, align 8
  %3 = load %struct.separated*, %struct.separated** %s, align 8
  %final = getelementptr inbounds %struct.separated, %struct.separated* %3, i32 0, i32 2
  %4 = load i8*, i8** %final, align 8
  %call = call i64 @strlen(i8* %4) #3
  store i64 %call, i64* %final_width, align 8
  %5 = load %struct.separated*, %struct.separated** %s, align 8
  %separator = getelementptr inbounds %struct.separated, %struct.separated* %5, i32 0, i32 0
  %6 = load i8*, i8** %separator, align 8
  %call1 = call i64 @strlen(i8* %6) #3
  store i64 %call1, i64* %separator_width, align 8
  %7 = load %struct.lister*, %struct.lister** %l, align 8
  %tterm = getelementptr inbounds %struct.lister, %struct.lister* %7, i32 0, i32 0
  %8 = load %struct.tterm*, %struct.tterm** %tterm, align 8
  %call2 = call i64 @tterm_tabsize(%struct.tterm* %8)
  store i64 %call2, i64* %tabsize, align 8
  %9 = load %struct.lister*, %struct.lister** %l, align 8
  %stream3 = getelementptr inbounds %struct.lister, %struct.lister* %9, i32 0, i32 1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %stream3, align 8
  store %struct._IO_FILE* %10, %struct._IO_FILE** %stream, align 8
  %11 = load %struct.lister*, %struct.lister** %l, align 8
  %tterm4 = getelementptr inbounds %struct.lister, %struct.lister* %11, i32 0, i32 0
  %12 = load %struct.tterm*, %struct.tterm** %tterm4, align 8
  %call5 = call i64 @tterm_width(%struct.tterm* %12)
  %13 = load %struct.lister*, %struct.lister** %l, align 8
  %after = getelementptr inbounds %struct.lister, %struct.lister* %13, i32 0, i32 5
  %14 = load i64, i64* %after, align 8
  %sub = sub i64 %call5, %14
  store i64 %sub, i64* %line_width, align 8
  %15 = load %struct.lister*, %struct.lister** %l, align 8
  %before = getelementptr inbounds %struct.lister, %struct.lister* %15, i32 0, i32 4
  %16 = load i64, i64* %before, align 8
  store i64 %16, i64* %pos, align 8
  br label %do.body

do.body:                                          ; preds = %cond.end
  store i64 0, i64* %from, align 8
  %17 = load i64, i64* %pos, align 8
  store i64 %17, i64* %to, align 8
  br label %while.cond

while.cond:                                       ; preds = %if.end, %do.body
  %18 = load i64, i64* %from, align 8
  %19 = load i64, i64* %to, align 8
  %cmp = icmp ult i64 %18, %19
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %20 = load i64, i64* %tabsize, align 8
  %cmp6 = icmp ugt i64 %20, 0
  br i1 %cmp6, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %while.body
  %21 = load i64, i64* %to, align 8
  %22 = load i64, i64* %tabsize, align 8
  %div = udiv i64 %21, %22
  %23 = load i64, i64* %from, align 8
  %add = add i64 %23, 1
  %24 = load i64, i64* %tabsize, align 8
  %div7 = udiv i64 %add, %24
  %cmp8 = icmp ugt i64 %div, %div7
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call9 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %25)
  %26 = load i64, i64* %tabsize, align 8
  %27 = load i64, i64* %from, align 8
  %28 = load i64, i64* %tabsize, align 8
  %rem = urem i64 %27, %28
  %sub10 = sub i64 %26, %rem
  %29 = load i64, i64* %from, align 8
  %add11 = add i64 %29, %sub10
  store i64 %add11, i64* %from, align 8
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %while.body
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call12 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %30)
  %31 = load i64, i64* %from, align 8
  %inc = add i64 %31, 1
  store i64 %inc, i64* %from, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %while.cond

while.end:                                        ; preds = %while.cond
  br label %do.end

do.end:                                           ; preds = %while.end
  store i64 0, i64* %itemno, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %do.end
  %32 = load i64, i64* %item_number.addr, align 8
  %cmp13 = icmp ne i64 %32, -1
  br i1 %cmp13, label %cond.true.14, label %cond.false.16

cond.true.14:                                     ; preds = %for.cond
  %33 = load i64, i64* %itemno, align 8
  %34 = load i64, i64* %item_number.addr, align 8
  %cmp15 = icmp ult i64 %33, %34
  %conv = zext i1 %cmp15 to i32
  br label %cond.end.19

cond.false.16:                                    ; preds = %for.cond
  %35 = load i64, i64* %itemno, align 8
  %36 = load i8**, i8*** %items.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %36, i64 %35
  %37 = load i8*, i8** %arrayidx, align 8
  %cmp17 = icmp ne i8* %37, null
  %conv18 = zext i1 %cmp17 to i32
  br label %cond.end.19

cond.end.19:                                      ; preds = %cond.false.16, %cond.true.14
  %cond20 = phi i32 [ %conv, %cond.true.14 ], [ %conv18, %cond.false.16 ]
  %tobool21 = icmp ne i32 %cond20, 0
  br i1 %tobool21, label %for.body, label %for.end

for.body:                                         ; preds = %cond.end.19
  %38 = load i64, i64* %pos, align 8
  store i64 %38, i64* %old_pos, align 8
  %39 = load i64 (i8*)*, i64 (i8*)** %item_width_fn.addr, align 8
  %40 = load i64, i64* %itemno, align 8
  %41 = load i8**, i8*** %items.addr, align 8
  %arrayidx22 = getelementptr inbounds i8*, i8** %41, i64 %40
  %42 = load i8*, i8** %arrayidx22, align 8
  %call23 = call i64 %39(i8* %42)
  %43 = load i64, i64* %pos, align 8
  %add24 = add i64 %43, %call23
  store i64 %add24, i64* %pos, align 8
  %44 = load i64, i64* %itemno, align 8
  %add25 = add i64 %44, 1
  %45 = load i64, i64* %item_number.addr, align 8
  %cmp26 = icmp ult i64 %add25, %45
  br i1 %cmp26, label %cond.true.28, label %cond.false.29

cond.true.28:                                     ; preds = %for.body
  %46 = load i64, i64* %separator_width, align 8
  br label %cond.end.30

cond.false.29:                                    ; preds = %for.body
  %47 = load i64, i64* %final_width, align 8
  br label %cond.end.30

cond.end.30:                                      ; preds = %cond.false.29, %cond.true.28
  %cond31 = phi i64 [ %46, %cond.true.28 ], [ %47, %cond.false.29 ]
  %48 = load i64, i64* %pos, align 8
  %add32 = add i64 %48, %cond31
  store i64 %add32, i64* %pos, align 8
  %49 = load i64, i64* %itemno, align 8
  %tobool33 = icmp ne i64 %49, 0
  br i1 %tobool33, label %if.then.34, label %if.end.102

if.then.34:                                       ; preds = %cond.end.30
  %50 = load i64, i64* %pos, align 8
  %51 = load %struct.separated*, %struct.separated** %s, align 8
  %between = getelementptr inbounds %struct.separated, %struct.separated* %51, i32 0, i32 1
  %52 = load i64, i64* %between, align 8
  %add35 = add i64 %50, %52
  %53 = load i64, i64* %line_width, align 8
  %cmp36 = icmp ugt i64 %add35, %53
  br i1 %cmp36, label %if.then.38, label %if.else.70

if.then.38:                                       ; preds = %if.then.34
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call39 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %54)
  br label %do.body.40

do.body.40:                                       ; preds = %if.then.38
  store i64 0, i64* %from41, align 8
  %55 = load %struct.lister*, %struct.lister** %l, align 8
  %before43 = getelementptr inbounds %struct.lister, %struct.lister* %55, i32 0, i32 4
  %56 = load i64, i64* %before43, align 8
  store i64 %56, i64* %to42, align 8
  br label %while.cond.44

while.cond.44:                                    ; preds = %if.end.64, %do.body.40
  %57 = load i64, i64* %from41, align 8
  %58 = load i64, i64* %to42, align 8
  %cmp45 = icmp ult i64 %57, %58
  br i1 %cmp45, label %while.body.47, label %while.end.65

while.body.47:                                    ; preds = %while.cond.44
  %59 = load i64, i64* %tabsize, align 8
  %cmp48 = icmp ugt i64 %59, 0
  br i1 %cmp48, label %land.lhs.true.50, label %if.else.61

land.lhs.true.50:                                 ; preds = %while.body.47
  %60 = load i64, i64* %to42, align 8
  %61 = load i64, i64* %tabsize, align 8
  %div51 = udiv i64 %60, %61
  %62 = load i64, i64* %from41, align 8
  %add52 = add i64 %62, 1
  %63 = load i64, i64* %tabsize, align 8
  %div53 = udiv i64 %add52, %63
  %cmp54 = icmp ugt i64 %div51, %div53
  br i1 %cmp54, label %if.then.56, label %if.else.61

if.then.56:                                       ; preds = %land.lhs.true.50
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call57 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %64)
  %65 = load i64, i64* %tabsize, align 8
  %66 = load i64, i64* %from41, align 8
  %67 = load i64, i64* %tabsize, align 8
  %rem58 = urem i64 %66, %67
  %sub59 = sub i64 %65, %rem58
  %68 = load i64, i64* %from41, align 8
  %add60 = add i64 %68, %sub59
  store i64 %add60, i64* %from41, align 8
  br label %if.end.64

if.else.61:                                       ; preds = %land.lhs.true.50, %while.body.47
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call62 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %69)
  %70 = load i64, i64* %from41, align 8
  %inc63 = add i64 %70, 1
  store i64 %inc63, i64* %from41, align 8
  br label %if.end.64

if.end.64:                                        ; preds = %if.else.61, %if.then.56
  br label %while.cond.44

while.end.65:                                     ; preds = %while.cond.44
  br label %do.end.66

do.end.66:                                        ; preds = %while.end.65
  %71 = load i64, i64* %pos, align 8
  %72 = load i64, i64* %old_pos, align 8
  %sub67 = sub i64 %71, %72
  %73 = load %struct.lister*, %struct.lister** %l, align 8
  %before68 = getelementptr inbounds %struct.lister, %struct.lister* %73, i32 0, i32 4
  %74 = load i64, i64* %before68, align 8
  %add69 = add i64 %sub67, %74
  store i64 %add69, i64* %pos, align 8
  br label %if.end.101

if.else.70:                                       ; preds = %if.then.34
  br label %do.body.71

do.body.71:                                       ; preds = %if.else.70
  %75 = load i64, i64* %old_pos, align 8
  store i64 %75, i64* %from72, align 8
  %76 = load i64, i64* %old_pos, align 8
  %77 = load %struct.separated*, %struct.separated** %s, align 8
  %between74 = getelementptr inbounds %struct.separated, %struct.separated* %77, i32 0, i32 1
  %78 = load i64, i64* %between74, align 8
  %add75 = add i64 %76, %78
  store i64 %add75, i64* %to73, align 8
  br label %while.cond.76

while.cond.76:                                    ; preds = %if.end.96, %do.body.71
  %79 = load i64, i64* %from72, align 8
  %80 = load i64, i64* %to73, align 8
  %cmp77 = icmp ult i64 %79, %80
  br i1 %cmp77, label %while.body.79, label %while.end.97

while.body.79:                                    ; preds = %while.cond.76
  %81 = load i64, i64* %tabsize, align 8
  %cmp80 = icmp ugt i64 %81, 0
  br i1 %cmp80, label %land.lhs.true.82, label %if.else.93

land.lhs.true.82:                                 ; preds = %while.body.79
  %82 = load i64, i64* %to73, align 8
  %83 = load i64, i64* %tabsize, align 8
  %div83 = udiv i64 %82, %83
  %84 = load i64, i64* %from72, align 8
  %add84 = add i64 %84, 1
  %85 = load i64, i64* %tabsize, align 8
  %div85 = udiv i64 %add84, %85
  %cmp86 = icmp ugt i64 %div83, %div85
  br i1 %cmp86, label %if.then.88, label %if.else.93

if.then.88:                                       ; preds = %land.lhs.true.82
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call89 = call i32 @_IO_putc(i32 9, %struct._IO_FILE* %86)
  %87 = load i64, i64* %tabsize, align 8
  %88 = load i64, i64* %from72, align 8
  %89 = load i64, i64* %tabsize, align 8
  %rem90 = urem i64 %88, %89
  %sub91 = sub i64 %87, %rem90
  %90 = load i64, i64* %from72, align 8
  %add92 = add i64 %90, %sub91
  store i64 %add92, i64* %from72, align 8
  br label %if.end.96

if.else.93:                                       ; preds = %land.lhs.true.82, %while.body.79
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call94 = call i32 @_IO_putc(i32 32, %struct._IO_FILE* %91)
  %92 = load i64, i64* %from72, align 8
  %inc95 = add i64 %92, 1
  store i64 %inc95, i64* %from72, align 8
  br label %if.end.96

if.end.96:                                        ; preds = %if.else.93, %if.then.88
  br label %while.cond.76

while.end.97:                                     ; preds = %while.cond.76
  br label %do.end.98

do.end.98:                                        ; preds = %while.end.97
  %93 = load %struct.separated*, %struct.separated** %s, align 8
  %between99 = getelementptr inbounds %struct.separated, %struct.separated* %93, i32 0, i32 1
  %94 = load i64, i64* %between99, align 8
  %95 = load i64, i64* %pos, align 8
  %add100 = add i64 %95, %94
  store i64 %add100, i64* %pos, align 8
  br label %if.end.101

if.end.101:                                       ; preds = %do.end.98, %do.end.66
  br label %if.end.102

if.end.102:                                       ; preds = %if.end.101, %cond.end.30
  %96 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %item_print_fn.addr, align 8
  %97 = load i64, i64* %itemno, align 8
  %98 = load i8**, i8*** %items.addr, align 8
  %arrayidx103 = getelementptr inbounds i8*, i8** %98, i64 %97
  %99 = load i8*, i8** %arrayidx103, align 8
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  call void %96(i8* %99, %struct._IO_FILE* %100)
  %101 = load i64, i64* %itemno, align 8
  %add104 = add i64 %101, 1
  %102 = load i64, i64* %item_number.addr, align 8
  %cmp105 = icmp ult i64 %add104, %102
  br i1 %cmp105, label %cond.true.107, label %cond.false.109

cond.true.107:                                    ; preds = %if.end.102
  %103 = load %struct.separated*, %struct.separated** %s, align 8
  %separator108 = getelementptr inbounds %struct.separated, %struct.separated* %103, i32 0, i32 0
  %104 = load i8*, i8** %separator108, align 8
  br label %cond.end.111

cond.false.109:                                   ; preds = %if.end.102
  %105 = load %struct.separated*, %struct.separated** %s, align 8
  %final110 = getelementptr inbounds %struct.separated, %struct.separated* %105, i32 0, i32 2
  %106 = load i8*, i8** %final110, align 8
  br label %cond.end.111

cond.end.111:                                     ; preds = %cond.false.109, %cond.true.107
  %cond112 = phi i8* [ %104, %cond.true.107 ], [ %106, %cond.false.109 ]
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call113 = call i32 @fputs(i8* %cond112, %struct._IO_FILE* %107)
  br label %for.inc

for.inc:                                          ; preds = %cond.end.111
  %108 = load i64, i64* %itemno, align 8
  %inc114 = add i64 %108, 1
  store i64 %inc114, i64* %itemno, align 8
  br label %for.cond

for.end:                                          ; preds = %cond.end.19
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8
  %call115 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %109)
  ret void
}

declare i64 @tterm_width(%struct.tterm*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

; Function Attrs: nounwind uwtable
define void @lister_print_separated(%struct.lister* %lister, i8** %items, i64 %item_number) #0 {
entry:
  %lister.addr = alloca %struct.lister*, align 8
  %items.addr = alloca i8**, align 8
  %item_number.addr = alloca i64, align 8
  %l = alloca %struct.lister*, align 8
  store %struct.lister* %lister, %struct.lister** %lister.addr, align 8
  store i8** %items, i8*** %items.addr, align 8
  store i64 %item_number, i64* %item_number.addr, align 8
  %0 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %tobool = icmp ne %struct.lister* %0, null
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %1 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  br label %cond.end

cond.false:                                       ; preds = %entry
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi %struct.lister* [ %1, %cond.true ], [ @lister_default, %cond.false ]
  store %struct.lister* %cond, %struct.lister** %l, align 8
  %2 = load %struct.lister*, %struct.lister** %lister.addr, align 8
  %3 = load i8**, i8*** %items.addr, align 8
  %4 = load i64, i64* %item_number.addr, align 8
  %5 = load %struct.lister*, %struct.lister** %l, align 8
  %width_fn = getelementptr inbounds %struct.lister, %struct.lister* %5, i32 0, i32 2
  %6 = load i64 (i8*)*, i64 (i8*)** %width_fn, align 8
  %7 = load %struct.lister*, %struct.lister** %l, align 8
  %print_fn = getelementptr inbounds %struct.lister, %struct.lister* %7, i32 0, i32 3
  %8 = load void (i8*, %struct._IO_FILE*)*, void (i8*, %struct._IO_FILE*)** %print_fn, align 8
  call void @lister_fprint_separated(%struct.lister* %2, %struct._IO_FILE* null, i8** %3, i64 %4, i64 (i8*)* %6, void (i8*, %struct._IO_FILE*)* %8)
  ret void
}

declare i8* @xmalloc(i64) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
