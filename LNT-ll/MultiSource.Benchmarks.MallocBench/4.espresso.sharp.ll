; ModuleID = './MultiSource.Benchmarks.MallocBench/4.espresso.sharp.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32**, i32*, i32*, i32, i32, i32*, i32, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.set_family = type { i32, i32, i32, i32, i32, i32*, %struct.set_family* }

@cube = external global %struct.cube_struct, align 8
@start_time = common global i64 0, align 8
@debug = external global i32, align 4
@.str = private unnamed_addr constant [41 x i8] c"# SHARP[%d]: %4d = %4d x %4d, time = %s\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8

; Function Attrs: nounwind uwtable
define %struct.set_family* @cv_sharp(%struct.set_family* %A, %struct.set_family* %B) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %T = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %0)
  store %struct.set_family* %call, %struct.set_family** %T, align 8
  %1 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 5
  %2 = load i32*, i32** %data, align 8
  store i32* %2, i32** %p, align 8
  %3 = load i32*, i32** %p, align 8
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 0
  %7 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %5, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32*, i32** %p, align 8
  %9 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.set_family*, %struct.set_family** %T, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %call1 = call %struct.set_family* @cb_sharp(i32* %11, %struct.set_family* %12)
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %10, %struct.set_family* %call1)
  store %struct.set_family* %call2, %struct.set_family** %T, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize3 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 0
  %14 = load i32, i32* %wsize3, align 4
  %15 = load i32*, i32** %p, align 8
  %idx.ext4 = sext i32 %14 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %15, i64 %idx.ext4
  store i32* %add.ptr5, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.set_family*, %struct.set_family** %T, align 8
  ret %struct.set_family* %16
}

declare %struct.set_family* @sf_new(...) #1

declare %struct.set_family* @sf_union(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @cb_sharp(i32* %c, %struct.set_family* %T) #0 {
entry:
  %c.addr = alloca i32*, align 8
  %T.addr = alloca %struct.set_family*, align 8
  store i32* %c, i32** %c.addr, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %2)
  %3 = load i32*, i32** %c.addr, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call, i32* %3)
  store %struct.set_family* %call1, %struct.set_family** %T.addr, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %call2 = call i64 (...) @util_cpu_time()
  store i64 %call2, i64* @start_time, align 8
  %4 = load i32*, i32** %c.addr, align 8
  %5 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %6 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count3, align 4
  %sub = sub nsw i32 %7, 1
  %call4 = call %struct.set_family* @cb_recur_sharp(i32* %4, %struct.set_family* %5, i32 0, i32 %sub, i32 0)
  store %struct.set_family* %call4, %struct.set_family** %T.addr, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  ret %struct.set_family* %8
}

declare %struct.set_family* @sf_addset(...) #1

declare i64 @util_cpu_time(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @cb_recur_sharp(i32* %c, %struct.set_family* %T, i32 %first, i32 %last, i32 %level) #0 {
entry:
  %c.addr = alloca i32*, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %first.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %level.addr = alloca i32, align 4
  %temp = alloca %struct.set_family*, align 8
  %left = alloca %struct.set_family*, align 8
  %right = alloca %struct.set_family*, align 8
  %middle = alloca i32, align 4
  store i32* %c, i32** %c.addr, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32 %first, i32* %first.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  store i32 %level, i32* %level.addr, align 4
  %0 = load i32, i32* %first.addr, align 4
  %1 = load i32, i32* %last.addr, align 4
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32*, i32** %c.addr, align 8
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data, align 8
  %5 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %5, i32 0, i32 0
  %6 = load i32, i32* %wsize, align 4
  %7 = load i32, i32* %first.addr, align 4
  %mul = mul nsw i32 %6, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %4, i64 %idx.ext
  %call = call %struct.set_family* @sharp(i32* %2, i32* %add.ptr)
  store %struct.set_family* %call, %struct.set_family** %temp, align 8
  br label %if.end.15

if.else:                                          ; preds = %entry
  %8 = load i32, i32* %first.addr, align 4
  %9 = load i32, i32* %last.addr, align 4
  %add = add nsw i32 %8, %9
  %div = sdiv i32 %add, 2
  store i32 %div, i32* %middle, align 4
  %10 = load i32*, i32** %c.addr, align 8
  %11 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %12 = load i32, i32* %first.addr, align 4
  %13 = load i32, i32* %middle, align 4
  %14 = load i32, i32* %level.addr, align 4
  %add1 = add nsw i32 %14, 1
  %call2 = call %struct.set_family* @cb_recur_sharp(i32* %10, %struct.set_family* %11, i32 %12, i32 %13, i32 %add1)
  store %struct.set_family* %call2, %struct.set_family** %left, align 8
  %15 = load i32*, i32** %c.addr, align 8
  %16 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %17 = load i32, i32* %middle, align 4
  %add3 = add nsw i32 %17, 1
  %18 = load i32, i32* %last.addr, align 4
  %19 = load i32, i32* %level.addr, align 4
  %add4 = add nsw i32 %19, 1
  %call5 = call %struct.set_family* @cb_recur_sharp(i32* %15, %struct.set_family* %16, i32 %add3, i32 %18, i32 %add4)
  store %struct.set_family* %call5, %struct.set_family** %right, align 8
  %20 = load %struct.set_family*, %struct.set_family** %left, align 8
  %21 = load %struct.set_family*, %struct.set_family** %right, align 8
  %call6 = call %struct.set_family* @cv_intersect(%struct.set_family* %20, %struct.set_family* %21)
  store %struct.set_family* %call6, %struct.set_family** %temp, align 8
  %22 = load i32, i32* @debug, align 4
  %and = and i32 %22, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %if.else
  %23 = load i32, i32* %level.addr, align 4
  %cmp7 = icmp slt i32 %23, 4
  br i1 %cmp7, label %if.then.8, label %if.end

if.then.8:                                        ; preds = %land.lhs.true
  %24 = load i32, i32* %level.addr, align 4
  %25 = load %struct.set_family*, %struct.set_family** %temp, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 3
  %26 = load i32, i32* %count, align 4
  %27 = load %struct.set_family*, %struct.set_family** %left, align 8
  %count9 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 3
  %28 = load i32, i32* %count9, align 4
  %29 = load %struct.set_family*, %struct.set_family** %right, align 8
  %count10 = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 3
  %30 = load i32, i32* %count10, align 4
  %call11 = call i64 (...) @util_cpu_time()
  %31 = load i64, i64* @start_time, align 8
  %sub = sub nsw i64 %call11, %31
  %call12 = call i8* @util_print_time(i64 %sub)
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0), i32 %24, i32 %26, i32 %28, i32 %30, i8* %call12)
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %call14 = call i32 @fflush(%struct._IO_FILE* %32)
  br label %if.end

if.end:                                           ; preds = %if.then.8, %land.lhs.true, %if.else
  %33 = load %struct.set_family*, %struct.set_family** %left, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %33)
  %34 = load %struct.set_family*, %struct.set_family** %right, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %34)
  br label %if.end.15

if.end.15:                                        ; preds = %if.end, %if.then
  %35 = load %struct.set_family*, %struct.set_family** %temp, align 8
  ret %struct.set_family* %35
}

declare i32 @printf(i8*, ...) #1

declare i8* @util_print_time(i64) #1

declare i32 @fflush(%struct._IO_FILE*) #1

declare void @sf_free(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @sharp(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %var = alloca i32, align 4
  %d = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %temp1 = alloca i32*, align 8
  %r = alloca %struct.set_family*, align 8
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %d, align 8
  %2 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx1 = getelementptr inbounds i32*, i32** %2, i64 1
  %3 = load i32*, i32** %arrayidx1, align 8
  store i32* %3, i32** %temp, align 8
  %4 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx2 = getelementptr inbounds i32*, i32** %4, i64 2
  %5 = load i32*, i32** %arrayidx2, align 8
  store i32* %5, i32** %temp1, align 8
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %6, i32 %7)
  store %struct.set_family* %call, %struct.set_family** %r, align 8
  %8 = load i32*, i32** %a.addr, align 8
  %9 = load i32*, i32** %b.addr, align 8
  %call3 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* %8, i32* %9)
  %tobool = icmp ne i32 %call3, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %10 = load i32*, i32** %d, align 8
  %11 = load i32*, i32** %a.addr, align 8
  %12 = load i32*, i32** %b.addr, align 8
  %call4 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %10, i32* %11, i32* %12)
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %13 = load i32, i32* %var, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp = icmp slt i32 %13, %14
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %15 = load i32*, i32** %temp, align 8
  %16 = load i32*, i32** %d, align 8
  %17 = load i32, i32* %var, align 4
  %idxprom = sext i32 %17 to i64
  %18 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx5 = getelementptr inbounds i32*, i32** %18, i64 %idxprom
  %19 = load i32*, i32** %arrayidx5, align 8
  %call6 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %15, i32* %16, i32* %19)
  %call7 = call i32 (i32*, ...) bitcast (i32 (...)* @setp_empty to i32 (i32*, ...)*)(i32* %call6)
  %tobool8 = icmp ne i32 %call7, 0
  br i1 %tobool8, label %if.end, label %if.then.9

if.then.9:                                        ; preds = %for.body
  %20 = load i32*, i32** %temp1, align 8
  %21 = load i32*, i32** %a.addr, align 8
  %22 = load i32, i32* %var, align 4
  %idxprom10 = sext i32 %22 to i64
  %23 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx11 = getelementptr inbounds i32*, i32** %23, i64 %idxprom10
  %24 = load i32*, i32** %arrayidx11, align 8
  %call12 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %20, i32* %21, i32* %24)
  %25 = load %struct.set_family*, %struct.set_family** %r, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %25, i32 0, i32 5
  %26 = load i32*, i32** %data, align 8
  %27 = load %struct.set_family*, %struct.set_family** %r, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize, align 4
  %29 = load %struct.set_family*, %struct.set_family** %r, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %29, i32 0, i32 3
  %30 = load i32, i32* %count, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %count, align 4
  %mul = mul nsw i32 %28, %30
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %26, i64 %idx.ext
  %31 = load i32*, i32** %temp, align 8
  %32 = load i32*, i32** %temp1, align 8
  %call13 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %add.ptr, i32* %31, i32* %32)
  br label %if.end

if.end:                                           ; preds = %if.then.9, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %33 = load i32, i32* %var, align 4
  %inc14 = add nsw i32 %33, 1
  store i32 %inc14, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end.16

if.else:                                          ; preds = %entry
  %34 = load %struct.set_family*, %struct.set_family** %r, align 8
  %35 = load i32*, i32** %a.addr, align 8
  %call15 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %34, i32* %35)
  store %struct.set_family* %call15, %struct.set_family** %r, align 8
  br label %if.end.16

if.end.16:                                        ; preds = %if.else, %for.end
  %36 = load %struct.set_family*, %struct.set_family** %r, align 8
  ret %struct.set_family* %36
}

declare i32 @cdist0(...) #1

declare i32* @set_diff(...) #1

declare i32 @setp_empty(...) #1

declare i32* @set_and(...) #1

declare i32* @set_or(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @make_disjoint(%struct.set_family* %A) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %R = alloca %struct.set_family*, align 8
  %new = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %0)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %1 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 5
  %2 = load i32*, i32** %data, align 8
  store i32* %2, i32** %p, align 8
  %3 = load i32*, i32** %p, align 8
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 0
  %7 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %5, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32*, i32** %p, align 8
  %9 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i32*, i32** %p, align 8
  %11 = load %struct.set_family*, %struct.set_family** %R, align 8
  %call1 = call %struct.set_family* @cb_dsharp(i32* %10, %struct.set_family* %11)
  store %struct.set_family* %call1, %struct.set_family** %new, align 8
  %12 = load %struct.set_family*, %struct.set_family** %R, align 8
  %13 = load %struct.set_family*, %struct.set_family** %new, align 8
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_append to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %12, %struct.set_family* %13)
  store %struct.set_family* %call2, %struct.set_family** %R, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize3 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 0
  %15 = load i32, i32* %wsize3, align 4
  %16 = load i32*, i32** %p, align 8
  %idx.ext4 = sext i32 %15 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %16, i64 %idx.ext4
  store i32* %add.ptr5, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %17 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %17
}

declare %struct.set_family* @sf_append(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @cv_dsharp(%struct.set_family* %A, %struct.set_family* %B) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %T = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 0, i32 %0)
  store %struct.set_family* %call, %struct.set_family** %T, align 8
  %1 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 5
  %2 = load i32*, i32** %data, align 8
  store i32* %2, i32** %p, align 8
  %3 = load i32*, i32** %p, align 8
  %4 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count, align 4
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 0
  %7 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %5, %7
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %3, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32*, i32** %p, align 8
  %9 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %8, %9
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load %struct.set_family*, %struct.set_family** %T, align 8
  %11 = load i32*, i32** %p, align 8
  %12 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %call1 = call %struct.set_family* @cb_dsharp(i32* %11, %struct.set_family* %12)
  %call2 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %10, %struct.set_family* %call1)
  store %struct.set_family* %call2, %struct.set_family** %T, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %13 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize3 = getelementptr inbounds %struct.set_family, %struct.set_family* %13, i32 0, i32 0
  %14 = load i32, i32* %wsize3, align 4
  %15 = load i32*, i32** %p, align 8
  %idx.ext4 = sext i32 %14 to i64
  %add.ptr5 = getelementptr inbounds i32, i32* %15, i64 %idx.ext4
  store i32* %add.ptr5, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %16 = load %struct.set_family*, %struct.set_family** %T, align 8
  ret %struct.set_family* %16
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @cb1_dsharp(%struct.set_family* %T, i32* %c) #0 {
entry:
  %T.addr = alloca %struct.set_family*, align 8
  %c.addr = alloca i32*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %R = alloca %struct.set_family*, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  store i32* %c, i32** %c.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %1, i32 %2)
  store %struct.set_family* %call, %struct.set_family** %R, align 8
  %3 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data, align 8
  store i32* %4, i32** %p, align 8
  %5 = load i32*, i32** %p, align 8
  %6 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count1 = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count1, align 4
  %8 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %7, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  store i32* %add.ptr, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %10 = load i32*, i32** %p, align 8
  %11 = load i32*, i32** %last, align 8
  %cmp = icmp ult i32* %10, %11
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %12 = load %struct.set_family*, %struct.set_family** %R, align 8
  %13 = load i32*, i32** %p, align 8
  %14 = load i32*, i32** %c.addr, align 8
  %call2 = call %struct.set_family* @dsharp(i32* %13, i32* %14)
  %call3 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %12, %struct.set_family* %call2)
  store %struct.set_family* %call3, %struct.set_family** %R, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %15 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 0
  %16 = load i32, i32* %wsize4, align 4
  %17 = load i32*, i32** %p, align 8
  %idx.ext5 = sext i32 %16 to i64
  %add.ptr6 = getelementptr inbounds i32, i32* %17, i64 %idx.ext5
  store i32* %add.ptr6, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %18 = load %struct.set_family*, %struct.set_family** %R, align 8
  ret %struct.set_family* %18
}

; Function Attrs: nounwind uwtable
define %struct.set_family* @cb_dsharp(i32* %c, %struct.set_family* %T) #0 {
entry:
  %c.addr = alloca i32*, align 8
  %T.addr = alloca %struct.set_family*, align 8
  %last = alloca i32*, align 8
  %p = alloca i32*, align 8
  %Y = alloca %struct.set_family*, align 8
  %Y1 = alloca %struct.set_family*, align 8
  store i32* %c, i32** %c.addr, align 8
  store %struct.set_family* %T, %struct.set_family** %T.addr, align 8
  %0 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %0, i32 0, i32 3
  %1 = load i32, i32* %count, align 4
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 1, i32 %2)
  %3 = load i32*, i32** %c.addr, align 8
  %call1 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %call, i32* %3)
  store %struct.set_family* %call1, %struct.set_family** %Y, align 8
  br label %if.end

if.else:                                          ; preds = %entry
  %4 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count2 = getelementptr inbounds %struct.set_family, %struct.set_family* %4, i32 0, i32 3
  %5 = load i32, i32* %count2, align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call3 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %5, i32 %6)
  store %struct.set_family* %call3, %struct.set_family** %Y, align 8
  %7 = load %struct.set_family*, %struct.set_family** %Y, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %7, i32 0, i32 5
  %8 = load i32*, i32** %data, align 8
  %9 = load %struct.set_family*, %struct.set_family** %Y, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %9, i32 0, i32 0
  %10 = load i32, i32* %wsize, align 4
  %11 = load %struct.set_family*, %struct.set_family** %Y, align 8
  %count4 = getelementptr inbounds %struct.set_family, %struct.set_family* %11, i32 0, i32 3
  %12 = load i32, i32* %count4, align 4
  %inc = add nsw i32 %12, 1
  store i32 %inc, i32* %count4, align 4
  %mul = mul nsw i32 %10, %12
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %8, i64 %idx.ext
  %13 = load i32*, i32** %c.addr, align 8
  %call5 = call i32* (i32*, i32*, ...) bitcast (i32* (...)* @set_copy to i32* (i32*, i32*, ...)*)(i32* %add.ptr, i32* %13)
  %14 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %data6 = getelementptr inbounds %struct.set_family, %struct.set_family* %14, i32 0, i32 5
  %15 = load i32*, i32** %data6, align 8
  store i32* %15, i32** %p, align 8
  %16 = load i32*, i32** %p, align 8
  %17 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %count7 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 3
  %18 = load i32, i32* %count7, align 4
  %19 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize8 = getelementptr inbounds %struct.set_family, %struct.set_family* %19, i32 0, i32 0
  %20 = load i32, i32* %wsize8, align 4
  %mul9 = mul nsw i32 %18, %20
  %idx.ext10 = sext i32 %mul9 to i64
  %add.ptr11 = getelementptr inbounds i32, i32* %16, i64 %idx.ext10
  store i32* %add.ptr11, i32** %last, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else
  %21 = load i32*, i32** %p, align 8
  %22 = load i32*, i32** %last, align 8
  %cmp12 = icmp ult i32* %21, %22
  br i1 %cmp12, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %23 = load %struct.set_family*, %struct.set_family** %Y, align 8
  %24 = load i32*, i32** %p, align 8
  %call13 = call %struct.set_family* @cb1_dsharp(%struct.set_family* %23, i32* %24)
  store %struct.set_family* %call13, %struct.set_family** %Y1, align 8
  %25 = load %struct.set_family*, %struct.set_family** %Y, align 8
  call void (%struct.set_family*, ...) bitcast (void (...)* @sf_free to void (%struct.set_family*, ...)*)(%struct.set_family* %25)
  %26 = load %struct.set_family*, %struct.set_family** %Y1, align 8
  store %struct.set_family* %26, %struct.set_family** %Y, align 8
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %27 = load %struct.set_family*, %struct.set_family** %T.addr, align 8
  %wsize14 = getelementptr inbounds %struct.set_family, %struct.set_family* %27, i32 0, i32 0
  %28 = load i32, i32* %wsize14, align 4
  %29 = load i32*, i32** %p, align 8
  %idx.ext15 = sext i32 %28 to i64
  %add.ptr16 = getelementptr inbounds i32, i32* %29, i64 %idx.ext15
  store i32* %add.ptr16, i32** %p, align 8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %30 = load %struct.set_family*, %struct.set_family** %Y, align 8
  ret %struct.set_family* %30
}

declare i32* @set_copy(...) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @dsharp(i32* %a, i32* %b) #0 {
entry:
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %mask = alloca i32*, align 8
  %diff = alloca i32*, align 8
  %and = alloca i32*, align 8
  %temp = alloca i32*, align 8
  %temp1 = alloca i32*, align 8
  %var = alloca i32, align 4
  %r = alloca %struct.set_family*, align 8
  %i_ = alloca i32, align 4
  %i_59 = alloca i32, align 4
  %i_82 = alloca i32, align 4
  %i_102 = alloca i32, align 4
  store i32* %a, i32** %a.addr, align 8
  store i32* %b, i32** %b.addr, align 8
  %0 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 11), align 8
  %arrayidx = getelementptr inbounds i32*, i32** %0, i64 0
  %1 = load i32*, i32** %arrayidx, align 8
  store i32* %1, i32** %temp1, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %3 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 %2, i32 %3)
  store %struct.set_family* %call, %struct.set_family** %r, align 8
  %4 = load i32*, i32** %a.addr, align 8
  %5 = load i32*, i32** %b.addr, align 8
  %call1 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* %4, i32* %5)
  %tobool = icmp ne i32 %call1, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %6 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp = icmp sle i32 %6, 32
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  br label %cond.end

cond.false:                                       ; preds = %if.then
  %7 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub = sub nsw i32 %7, 1
  %shr = ashr i32 %sub, 5
  %add = add nsw i32 %shr, 1
  %add2 = add nsw i32 %add, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 2, %cond.true ], [ %add2, %cond.false ]
  %conv = sext i32 %cond to i64
  %mul = mul i64 4, %conv
  %call3 = call i8* @malloc(i64 %mul)
  %8 = bitcast i8* %call3 to i32*
  %9 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call4 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %8, i32 %9)
  %10 = load i32*, i32** %a.addr, align 8
  %11 = load i32*, i32** %b.addr, align 8
  %call5 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_diff to i32* (i32*, i32*, i32*, ...)*)(i32* %call4, i32* %10, i32* %11)
  store i32* %call5, i32** %diff, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp6 = icmp sle i32 %12, 32
  br i1 %cmp6, label %cond.true.8, label %cond.false.9

cond.true.8:                                      ; preds = %cond.end
  br label %cond.end.14

cond.false.9:                                     ; preds = %cond.end
  %13 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub10 = sub nsw i32 %13, 1
  %shr11 = ashr i32 %sub10, 5
  %add12 = add nsw i32 %shr11, 1
  %add13 = add nsw i32 %add12, 1
  br label %cond.end.14

cond.end.14:                                      ; preds = %cond.false.9, %cond.true.8
  %cond15 = phi i32 [ 2, %cond.true.8 ], [ %add13, %cond.false.9 ]
  %conv16 = sext i32 %cond15 to i64
  %mul17 = mul i64 4, %conv16
  %call18 = call i8* @malloc(i64 %mul17)
  %14 = bitcast i8* %call18 to i32*
  %15 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call19 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %14, i32 %15)
  %16 = load i32*, i32** %a.addr, align 8
  %17 = load i32*, i32** %b.addr, align 8
  %call20 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %call19, i32* %16, i32* %17)
  store i32* %call20, i32** %and, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %cmp21 = icmp sle i32 %18, 32
  br i1 %cmp21, label %cond.true.23, label %cond.false.24

cond.true.23:                                     ; preds = %cond.end.14
  br label %cond.end.29

cond.false.24:                                    ; preds = %cond.end.14
  %19 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %sub25 = sub nsw i32 %19, 1
  %shr26 = ashr i32 %sub25, 5
  %add27 = add nsw i32 %shr26, 1
  %add28 = add nsw i32 %add27, 1
  br label %cond.end.29

cond.end.29:                                      ; preds = %cond.false.24, %cond.true.23
  %cond30 = phi i32 [ 2, %cond.true.23 ], [ %add28, %cond.false.24 ]
  %conv31 = sext i32 %cond30 to i64
  %mul32 = mul i64 4, %conv31
  %call33 = call i8* @malloc(i64 %mul32)
  %20 = bitcast i8* %call33 to i32*
  %21 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call34 = call i32* (i32*, i32, ...) bitcast (i32* (...)* @set_clear to i32* (i32*, i32, ...)*)(i32* %20, i32 %21)
  store i32* %call34, i32** %mask, align 8
  store i32 0, i32* %var, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %cond.end.29
  %22 = load i32, i32* %var, align 4
  %23 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 1), align 4
  %cmp35 = icmp slt i32 %22, %23
  br i1 %cmp35, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %24 = load i32*, i32** %diff, align 8
  %25 = load i32, i32* %var, align 4
  %idxprom = sext i32 %25 to i64
  %26 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx37 = getelementptr inbounds i32*, i32** %26, i64 %idxprom
  %27 = load i32*, i32** %arrayidx37, align 8
  %call38 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @setp_disjoint to i32 (i32*, i32*, ...)*)(i32* %24, i32* %27)
  %tobool39 = icmp ne i32 %call38, 0
  br i1 %tobool39, label %if.end, label %if.then.40

if.then.40:                                       ; preds = %for.body
  %28 = load %struct.set_family*, %struct.set_family** %r, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 5
  %29 = load i32*, i32** %data, align 8
  %30 = load %struct.set_family*, %struct.set_family** %r, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %30, i32 0, i32 0
  %31 = load i32, i32* %wsize, align 4
  %32 = load %struct.set_family*, %struct.set_family** %r, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %32, i32 0, i32 3
  %33 = load i32, i32* %count, align 4
  %inc = add nsw i32 %33, 1
  store i32 %inc, i32* %count, align 4
  %mul41 = mul nsw i32 %31, %33
  %idx.ext = sext i32 %mul41 to i64
  %add.ptr = getelementptr inbounds i32, i32* %29, i64 %idx.ext
  store i32* %add.ptr, i32** %temp, align 8
  %34 = load i32*, i32** %temp, align 8
  %35 = load i32*, i32** %diff, align 8
  %36 = load i32, i32* %var, align 4
  %idxprom42 = sext i32 %36 to i64
  %37 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx43 = getelementptr inbounds i32*, i32** %37, i64 %idxprom42
  %38 = load i32*, i32** %arrayidx43, align 8
  %call44 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %34, i32* %35, i32* %38)
  %39 = load i32*, i32** %and, align 8
  %arrayidx45 = getelementptr inbounds i32, i32* %39, i64 0
  %40 = load i32, i32* %arrayidx45, align 4
  %and46 = and i32 %40, 1023
  store i32 %and46, i32* %i_, align 4
  %41 = load i32*, i32** %temp1, align 8
  %arrayidx47 = getelementptr inbounds i32, i32* %41, i64 0
  %42 = load i32, i32* %arrayidx47, align 4
  %and48 = and i32 %42, -1024
  store i32 %and48, i32* %arrayidx47, align 4
  %43 = load i32, i32* %i_, align 4
  %44 = load i32*, i32** %temp1, align 8
  %arrayidx49 = getelementptr inbounds i32, i32* %44, i64 0
  %45 = load i32, i32* %arrayidx49, align 4
  %or = or i32 %45, %43
  store i32 %or, i32* %arrayidx49, align 4
  br label %do.body

do.body:                                          ; preds = %do.cond, %if.then.40
  %46 = load i32, i32* %i_, align 4
  %idxprom50 = sext i32 %46 to i64
  %47 = load i32*, i32** %and, align 8
  %arrayidx51 = getelementptr inbounds i32, i32* %47, i64 %idxprom50
  %48 = load i32, i32* %arrayidx51, align 4
  %49 = load i32, i32* %i_, align 4
  %idxprom52 = sext i32 %49 to i64
  %50 = load i32*, i32** %mask, align 8
  %arrayidx53 = getelementptr inbounds i32, i32* %50, i64 %idxprom52
  %51 = load i32, i32* %arrayidx53, align 4
  %and54 = and i32 %48, %51
  %52 = load i32, i32* %i_, align 4
  %idxprom55 = sext i32 %52 to i64
  %53 = load i32*, i32** %temp1, align 8
  %arrayidx56 = getelementptr inbounds i32, i32* %53, i64 %idxprom55
  store i32 %and54, i32* %arrayidx56, align 4
  br label %do.cond

do.cond:                                          ; preds = %do.body
  %54 = load i32, i32* %i_, align 4
  %dec = add nsw i32 %54, -1
  store i32 %dec, i32* %i_, align 4
  %cmp57 = icmp sgt i32 %dec, 0
  br i1 %cmp57, label %do.body, label %do.end

do.end:                                           ; preds = %do.cond
  %55 = load i32*, i32** %temp, align 8
  %arrayidx60 = getelementptr inbounds i32, i32* %55, i64 0
  %56 = load i32, i32* %arrayidx60, align 4
  %and61 = and i32 %56, 1023
  store i32 %and61, i32* %i_59, align 4
  %57 = load i32*, i32** %temp, align 8
  %arrayidx62 = getelementptr inbounds i32, i32* %57, i64 0
  %58 = load i32, i32* %arrayidx62, align 4
  %and63 = and i32 %58, -1024
  store i32 %and63, i32* %arrayidx62, align 4
  %59 = load i32, i32* %i_59, align 4
  %60 = load i32*, i32** %temp, align 8
  %arrayidx64 = getelementptr inbounds i32, i32* %60, i64 0
  %61 = load i32, i32* %arrayidx64, align 4
  %or65 = or i32 %61, %59
  store i32 %or65, i32* %arrayidx64, align 4
  br label %do.body.66

do.body.66:                                       ; preds = %do.cond.74, %do.end
  %62 = load i32, i32* %i_59, align 4
  %idxprom67 = sext i32 %62 to i64
  %63 = load i32*, i32** %temp, align 8
  %arrayidx68 = getelementptr inbounds i32, i32* %63, i64 %idxprom67
  %64 = load i32, i32* %arrayidx68, align 4
  %65 = load i32, i32* %i_59, align 4
  %idxprom69 = sext i32 %65 to i64
  %66 = load i32*, i32** %temp1, align 8
  %arrayidx70 = getelementptr inbounds i32, i32* %66, i64 %idxprom69
  %67 = load i32, i32* %arrayidx70, align 4
  %or71 = or i32 %64, %67
  %68 = load i32, i32* %i_59, align 4
  %idxprom72 = sext i32 %68 to i64
  %69 = load i32*, i32** %temp, align 8
  %arrayidx73 = getelementptr inbounds i32, i32* %69, i64 %idxprom72
  store i32 %or71, i32* %arrayidx73, align 4
  br label %do.cond.74

do.cond.74:                                       ; preds = %do.body.66
  %70 = load i32, i32* %i_59, align 4
  %dec75 = add nsw i32 %70, -1
  store i32 %dec75, i32* %i_59, align 4
  %cmp76 = icmp sgt i32 %dec75, 0
  br i1 %cmp76, label %do.body.66, label %do.end.78

do.end.78:                                        ; preds = %do.cond.74
  %71 = load i32*, i32** %mask, align 8
  %72 = load i32*, i32** %mask, align 8
  %73 = load i32, i32* %var, align 4
  %idxprom79 = sext i32 %73 to i64
  %74 = load i32**, i32*** getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 10), align 8
  %arrayidx80 = getelementptr inbounds i32*, i32** %74, i64 %idxprom79
  %75 = load i32*, i32** %arrayidx80, align 8
  %call81 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_or to i32* (i32*, i32*, i32*, ...)*)(i32* %71, i32* %72, i32* %75)
  %76 = load i32*, i32** %a.addr, align 8
  %arrayidx83 = getelementptr inbounds i32, i32* %76, i64 0
  %77 = load i32, i32* %arrayidx83, align 4
  %and84 = and i32 %77, 1023
  store i32 %and84, i32* %i_82, align 4
  %78 = load i32*, i32** %temp1, align 8
  %arrayidx85 = getelementptr inbounds i32, i32* %78, i64 0
  %79 = load i32, i32* %arrayidx85, align 4
  %and86 = and i32 %79, -1024
  store i32 %and86, i32* %arrayidx85, align 4
  %80 = load i32, i32* %i_82, align 4
  %81 = load i32*, i32** %temp1, align 8
  %arrayidx87 = getelementptr inbounds i32, i32* %81, i64 0
  %82 = load i32, i32* %arrayidx87, align 4
  %or88 = or i32 %82, %80
  store i32 %or88, i32* %arrayidx87, align 4
  br label %do.body.89

do.body.89:                                       ; preds = %do.cond.97, %do.end.78
  %83 = load i32, i32* %i_82, align 4
  %idxprom90 = sext i32 %83 to i64
  %84 = load i32*, i32** %a.addr, align 8
  %arrayidx91 = getelementptr inbounds i32, i32* %84, i64 %idxprom90
  %85 = load i32, i32* %arrayidx91, align 4
  %86 = load i32, i32* %i_82, align 4
  %idxprom92 = sext i32 %86 to i64
  %87 = load i32*, i32** %mask, align 8
  %arrayidx93 = getelementptr inbounds i32, i32* %87, i64 %idxprom92
  %88 = load i32, i32* %arrayidx93, align 4
  %neg = xor i32 %88, -1
  %and94 = and i32 %85, %neg
  %89 = load i32, i32* %i_82, align 4
  %idxprom95 = sext i32 %89 to i64
  %90 = load i32*, i32** %temp1, align 8
  %arrayidx96 = getelementptr inbounds i32, i32* %90, i64 %idxprom95
  store i32 %and94, i32* %arrayidx96, align 4
  br label %do.cond.97

do.cond.97:                                       ; preds = %do.body.89
  %91 = load i32, i32* %i_82, align 4
  %dec98 = add nsw i32 %91, -1
  store i32 %dec98, i32* %i_82, align 4
  %cmp99 = icmp sgt i32 %dec98, 0
  br i1 %cmp99, label %do.body.89, label %do.end.101

do.end.101:                                       ; preds = %do.cond.97
  %92 = load i32*, i32** %temp, align 8
  %arrayidx103 = getelementptr inbounds i32, i32* %92, i64 0
  %93 = load i32, i32* %arrayidx103, align 4
  %and104 = and i32 %93, 1023
  store i32 %and104, i32* %i_102, align 4
  %94 = load i32*, i32** %temp, align 8
  %arrayidx105 = getelementptr inbounds i32, i32* %94, i64 0
  %95 = load i32, i32* %arrayidx105, align 4
  %and106 = and i32 %95, -1024
  store i32 %and106, i32* %arrayidx105, align 4
  %96 = load i32, i32* %i_102, align 4
  %97 = load i32*, i32** %temp, align 8
  %arrayidx107 = getelementptr inbounds i32, i32* %97, i64 0
  %98 = load i32, i32* %arrayidx107, align 4
  %or108 = or i32 %98, %96
  store i32 %or108, i32* %arrayidx107, align 4
  br label %do.body.109

do.body.109:                                      ; preds = %do.cond.117, %do.end.101
  %99 = load i32, i32* %i_102, align 4
  %idxprom110 = sext i32 %99 to i64
  %100 = load i32*, i32** %temp, align 8
  %arrayidx111 = getelementptr inbounds i32, i32* %100, i64 %idxprom110
  %101 = load i32, i32* %arrayidx111, align 4
  %102 = load i32, i32* %i_102, align 4
  %idxprom112 = sext i32 %102 to i64
  %103 = load i32*, i32** %temp1, align 8
  %arrayidx113 = getelementptr inbounds i32, i32* %103, i64 %idxprom112
  %104 = load i32, i32* %arrayidx113, align 4
  %or114 = or i32 %101, %104
  %105 = load i32, i32* %i_102, align 4
  %idxprom115 = sext i32 %105 to i64
  %106 = load i32*, i32** %temp, align 8
  %arrayidx116 = getelementptr inbounds i32, i32* %106, i64 %idxprom115
  store i32 %or114, i32* %arrayidx116, align 4
  br label %do.cond.117

do.cond.117:                                      ; preds = %do.body.109
  %107 = load i32, i32* %i_102, align 4
  %dec118 = add nsw i32 %107, -1
  store i32 %dec118, i32* %i_102, align 4
  %cmp119 = icmp sgt i32 %dec118, 0
  br i1 %cmp119, label %do.body.109, label %do.end.121

do.end.121:                                       ; preds = %do.cond.117
  br label %if.end

if.end:                                           ; preds = %do.end.121, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %108 = load i32, i32* %var, align 4
  %inc122 = add nsw i32 %108, 1
  store i32 %inc122, i32* %var, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %109 = load i32*, i32** %diff, align 8
  %tobool123 = icmp ne i32* %109, null
  br i1 %tobool123, label %if.then.124, label %if.end.125

if.then.124:                                      ; preds = %for.end
  %110 = load i32*, i32** %diff, align 8
  %111 = bitcast i32* %110 to i8*
  call void @free(i8* %111)
  store i32* null, i32** %diff, align 8
  br label %if.end.125

if.end.125:                                       ; preds = %if.then.124, %for.end
  %112 = load i32*, i32** %and, align 8
  %tobool126 = icmp ne i32* %112, null
  br i1 %tobool126, label %if.then.127, label %if.end.128

if.then.127:                                      ; preds = %if.end.125
  %113 = load i32*, i32** %and, align 8
  %114 = bitcast i32* %113 to i8*
  call void @free(i8* %114)
  store i32* null, i32** %and, align 8
  br label %if.end.128

if.end.128:                                       ; preds = %if.then.127, %if.end.125
  %115 = load i32*, i32** %mask, align 8
  %tobool129 = icmp ne i32* %115, null
  br i1 %tobool129, label %if.then.130, label %if.end.131

if.then.130:                                      ; preds = %if.end.128
  %116 = load i32*, i32** %mask, align 8
  %117 = bitcast i32* %116 to i8*
  call void @free(i8* %117)
  store i32* null, i32** %mask, align 8
  br label %if.end.131

if.end.131:                                       ; preds = %if.then.130, %if.end.128
  br label %if.end.133

if.else:                                          ; preds = %entry
  %118 = load %struct.set_family*, %struct.set_family** %r, align 8
  %119 = load i32*, i32** %a.addr, align 8
  %call132 = call %struct.set_family* (%struct.set_family*, i32*, ...) bitcast (%struct.set_family* (...)* @sf_addset to %struct.set_family* (%struct.set_family*, i32*, ...)*)(%struct.set_family* %118, i32* %119)
  store %struct.set_family* %call132, %struct.set_family** %r, align 8
  br label %if.end.133

if.end.133:                                       ; preds = %if.else, %if.end.131
  %120 = load %struct.set_family*, %struct.set_family** %r, align 8
  ret %struct.set_family* %120
}

declare i32* @set_clear(...) #1

declare i8* @malloc(i64) #1

declare i32 @setp_disjoint(...) #1

declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define %struct.set_family* @cv_intersect(%struct.set_family* %A, %struct.set_family* %B) #0 {
entry:
  %A.addr = alloca %struct.set_family*, align 8
  %B.addr = alloca %struct.set_family*, align 8
  %pi = alloca i32*, align 8
  %pj = alloca i32*, align 8
  %lasti = alloca i32*, align 8
  %lastj = alloca i32*, align 8
  %pt = alloca i32*, align 8
  %T = alloca %struct.set_family*, align 8
  %Tsave = alloca %struct.set_family*, align 8
  store %struct.set_family* %A, %struct.set_family** %A.addr, align 8
  store %struct.set_family* %B, %struct.set_family** %B.addr, align 8
  store %struct.set_family* null, %struct.set_family** %Tsave, align 8
  %0 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 500, i32 %0)
  store %struct.set_family* %call, %struct.set_family** %T, align 8
  %1 = load %struct.set_family*, %struct.set_family** %T, align 8
  %data = getelementptr inbounds %struct.set_family, %struct.set_family* %1, i32 0, i32 5
  %2 = load i32*, i32** %data, align 8
  store i32* %2, i32** %pt, align 8
  %3 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %data1 = getelementptr inbounds %struct.set_family, %struct.set_family* %3, i32 0, i32 5
  %4 = load i32*, i32** %data1, align 8
  store i32* %4, i32** %pi, align 8
  %5 = load i32*, i32** %pi, align 8
  %6 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %count = getelementptr inbounds %struct.set_family, %struct.set_family* %6, i32 0, i32 3
  %7 = load i32, i32* %count, align 4
  %8 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize = getelementptr inbounds %struct.set_family, %struct.set_family* %8, i32 0, i32 0
  %9 = load i32, i32* %wsize, align 4
  %mul = mul nsw i32 %7, %9
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds i32, i32* %5, i64 %idx.ext
  store i32* %add.ptr, i32** %lasti, align 8
  br label %for.cond

for.cond:                                         ; preds = %for.inc.32, %entry
  %10 = load i32*, i32** %pi, align 8
  %11 = load i32*, i32** %lasti, align 8
  %cmp = icmp ult i32* %10, %11
  br i1 %cmp, label %for.body, label %for.end.36

for.body:                                         ; preds = %for.cond
  %12 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %data2 = getelementptr inbounds %struct.set_family, %struct.set_family* %12, i32 0, i32 5
  %13 = load i32*, i32** %data2, align 8
  store i32* %13, i32** %pj, align 8
  %14 = load i32*, i32** %pj, align 8
  %15 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %count3 = getelementptr inbounds %struct.set_family, %struct.set_family* %15, i32 0, i32 3
  %16 = load i32, i32* %count3, align 4
  %17 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize4 = getelementptr inbounds %struct.set_family, %struct.set_family* %17, i32 0, i32 0
  %18 = load i32, i32* %wsize4, align 4
  %mul5 = mul nsw i32 %16, %18
  %idx.ext6 = sext i32 %mul5 to i64
  %add.ptr7 = getelementptr inbounds i32, i32* %14, i64 %idx.ext6
  store i32* %add.ptr7, i32** %lastj, align 8
  br label %for.cond.8

for.cond.8:                                       ; preds = %for.inc, %for.body
  %19 = load i32*, i32** %pj, align 8
  %20 = load i32*, i32** %lastj, align 8
  %cmp9 = icmp ult i32* %19, %20
  br i1 %cmp9, label %for.body.10, label %for.end

for.body.10:                                      ; preds = %for.cond.8
  %21 = load i32*, i32** %pi, align 8
  %22 = load i32*, i32** %pj, align 8
  %call11 = call i32 (i32*, i32*, ...) bitcast (i32 (...)* @cdist0 to i32 (i32*, i32*, ...)*)(i32* %21, i32* %22)
  %tobool = icmp ne i32 %call11, 0
  br i1 %tobool, label %if.then, label %if.end.28

if.then:                                          ; preds = %for.body.10
  %23 = load i32*, i32** %pt, align 8
  %24 = load i32*, i32** %pi, align 8
  %25 = load i32*, i32** %pj, align 8
  %call12 = call i32* (i32*, i32*, i32*, ...) bitcast (i32* (...)* @set_and to i32* (i32*, i32*, i32*, ...)*)(i32* %23, i32* %24, i32* %25)
  %26 = load %struct.set_family*, %struct.set_family** %T, align 8
  %count13 = getelementptr inbounds %struct.set_family, %struct.set_family* %26, i32 0, i32 3
  %27 = load i32, i32* %count13, align 4
  %inc = add nsw i32 %27, 1
  store i32 %inc, i32* %count13, align 4
  %28 = load %struct.set_family*, %struct.set_family** %T, align 8
  %capacity = getelementptr inbounds %struct.set_family, %struct.set_family* %28, i32 0, i32 2
  %29 = load i32, i32* %capacity, align 4
  %cmp14 = icmp sge i32 %inc, %29
  br i1 %cmp14, label %if.then.15, label %if.else.23

if.then.15:                                       ; preds = %if.then
  %30 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %cmp16 = icmp eq %struct.set_family* %30, null
  br i1 %cmp16, label %if.then.17, label %if.else

if.then.17:                                       ; preds = %if.then.15
  %31 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call18 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %31)
  store %struct.set_family* %call18, %struct.set_family** %Tsave, align 8
  br label %if.end

if.else:                                          ; preds = %if.then.15
  %32 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %33 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call19 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %33)
  %call20 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %32, %struct.set_family* %call19)
  store %struct.set_family* %call20, %struct.set_family** %Tsave, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then.17
  %34 = load i32, i32* getelementptr inbounds (%struct.cube_struct, %struct.cube_struct* @cube, i32 0, i32 0), align 4
  %call21 = call %struct.set_family* (i32, i32, ...) bitcast (%struct.set_family* (...)* @sf_new to %struct.set_family* (i32, i32, ...)*)(i32 500, i32 %34)
  store %struct.set_family* %call21, %struct.set_family** %T, align 8
  %35 = load %struct.set_family*, %struct.set_family** %T, align 8
  %data22 = getelementptr inbounds %struct.set_family, %struct.set_family* %35, i32 0, i32 5
  %36 = load i32*, i32** %data22, align 8
  store i32* %36, i32** %pt, align 8
  br label %if.end.27

if.else.23:                                       ; preds = %if.then
  %37 = load %struct.set_family*, %struct.set_family** %T, align 8
  %wsize24 = getelementptr inbounds %struct.set_family, %struct.set_family* %37, i32 0, i32 0
  %38 = load i32, i32* %wsize24, align 4
  %39 = load i32*, i32** %pt, align 8
  %idx.ext25 = sext i32 %38 to i64
  %add.ptr26 = getelementptr inbounds i32, i32* %39, i64 %idx.ext25
  store i32* %add.ptr26, i32** %pt, align 8
  br label %if.end.27

if.end.27:                                        ; preds = %if.else.23, %if.end
  br label %if.end.28

if.end.28:                                        ; preds = %if.end.27, %for.body.10
  br label %for.inc

for.inc:                                          ; preds = %if.end.28
  %40 = load %struct.set_family*, %struct.set_family** %B.addr, align 8
  %wsize29 = getelementptr inbounds %struct.set_family, %struct.set_family* %40, i32 0, i32 0
  %41 = load i32, i32* %wsize29, align 4
  %42 = load i32*, i32** %pj, align 8
  %idx.ext30 = sext i32 %41 to i64
  %add.ptr31 = getelementptr inbounds i32, i32* %42, i64 %idx.ext30
  store i32* %add.ptr31, i32** %pj, align 8
  br label %for.cond.8

for.end:                                          ; preds = %for.cond.8
  br label %for.inc.32

for.inc.32:                                       ; preds = %for.end
  %43 = load %struct.set_family*, %struct.set_family** %A.addr, align 8
  %wsize33 = getelementptr inbounds %struct.set_family, %struct.set_family* %43, i32 0, i32 0
  %44 = load i32, i32* %wsize33, align 4
  %45 = load i32*, i32** %pi, align 8
  %idx.ext34 = sext i32 %44 to i64
  %add.ptr35 = getelementptr inbounds i32, i32* %45, i64 %idx.ext34
  store i32* %add.ptr35, i32** %pi, align 8
  br label %for.cond

for.end.36:                                       ; preds = %for.cond
  %46 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %cmp37 = icmp eq %struct.set_family* %46, null
  br i1 %cmp37, label %if.then.38, label %if.else.40

if.then.38:                                       ; preds = %for.end.36
  %47 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call39 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %47)
  store %struct.set_family* %call39, %struct.set_family** %Tsave, align 8
  br label %if.end.43

if.else.40:                                       ; preds = %for.end.36
  %48 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  %49 = load %struct.set_family*, %struct.set_family** %T, align 8
  %call41 = call %struct.set_family* (%struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_contain to %struct.set_family* (%struct.set_family*, ...)*)(%struct.set_family* %49)
  %call42 = call %struct.set_family* (%struct.set_family*, %struct.set_family*, ...) bitcast (%struct.set_family* (...)* @sf_union to %struct.set_family* (%struct.set_family*, %struct.set_family*, ...)*)(%struct.set_family* %48, %struct.set_family* %call41)
  store %struct.set_family* %call42, %struct.set_family** %Tsave, align 8
  br label %if.end.43

if.end.43:                                        ; preds = %if.else.40, %if.then.38
  %50 = load %struct.set_family*, %struct.set_family** %Tsave, align 8
  ret %struct.set_family* %50
}

declare %struct.set_family* @sf_contain(...) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
