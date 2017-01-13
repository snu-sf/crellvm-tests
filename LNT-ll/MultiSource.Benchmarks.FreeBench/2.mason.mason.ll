; ModuleID = './MultiSource.Benchmarks.FreeBench/2.mason.mason.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.p_type = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [18 x i8] c"Compile date: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"today\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Compiler switches: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"ERROR in %s: Could not open datafile %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%d %d %d %d %d %d %d %d %d\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Trying %d\0A\00", align 1
@mu.near = internal global [18 x i32] [i32 80, i32 112, i32 112, i32 117, i32 15, i32 15, i32 15, i32 112, i32 112, i32 112, i32 125, i32 43, i32 47, i32 15, i32 80, i32 100, i32 103, i32 15], align 16
@.str.8 = private unnamed_addr constant [15 x i8] c"Gul: %d %d %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"bin+art: %d %d\0A\00", align 1
@m0d.m = private unnamed_addr constant [18 x i32] [i32 0, i32 2, i32 3, i32 10, i32 11, i32 5, i32 17, i32 7, i32 1, i32 9, i32 15, i32 12, i32 13, i32 6, i32 8, i32 14, i32 4, i32 16], align 16
@m2d.m = private unnamed_addr constant [18 x i32] [i32 7, i32 0, i32 1, i32 16, i32 4, i32 12, i32 6, i32 14, i32 8, i32 2, i32 3, i32 10, i32 11, i32 13, i32 15, i32 9, i32 17, i32 5], align 16
@m0u.m = private unnamed_addr constant [18 x i32] [i32 0, i32 8, i32 1, i32 2, i32 16, i32 5, i32 13, i32 7, i32 14, i32 9, i32 3, i32 4, i32 11, i32 12, i32 15, i32 10, i32 17, i32 6], align 16
@m2u.m = private unnamed_addr constant [18 x i32] [i32 1, i32 2, i32 9, i32 10, i32 4, i32 17, i32 6, i32 0, i32 8, i32 15, i32 11, i32 12, i32 5, i32 13, i32 7, i32 14, i32 3, i32 16], align 16

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %k = alloca i32, align 4
  %p = alloca %struct.p_type, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  store i32 0, i32* %retval
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0))
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %2 = load i8**, i8*** %argv.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 1
  %3 = load i8*, i8** %arrayidx, align 8
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %call2, %struct._IO_FILE** %fp, align 8
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %cmp = icmp eq %struct._IO_FILE* %4, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %6 = load i8**, i8*** %argv.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 0
  %7 = load i8*, i8** %arrayidx3, align 8
  %8 = load i8**, i8*** %argv.addr, align 8
  %arrayidx4 = getelementptr inbounds i8*, i8** %8, i64 1
  %9 = load i8*, i8** %arrayidx4, align 8
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i32 0, i32 0), i8* %7, i8* %9)
  call void @exit(i32 1) #4
  unreachable

if.end:                                           ; preds = %entry
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %a = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 0
  %b = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 1
  %c = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 2
  %d = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 3
  %bi = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %ar = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %g1 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %g2 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %g3 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i32* %a, i32* %b, i32* %c, i32* %d, i32* %bi, i32* %ar, i32* %g1, i32* %g2, i32* %g3)
  store i32 2, i32* %k, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %k, align 4
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i32 0, i32 0), i32 %11)
  %12 = load i32, i32* %k, align 4
  %call8 = call i32 @mu(%struct.p_type* byval align 8 %p, i32 %12, i32 0, i32 -1)
  %cmp9 = icmp eq i32 %call8, 1
  br i1 %cmp9, label %if.then.10, label %if.end.12

if.then.10:                                       ; preds = %for.cond
  %call11 = call i32 @putchar(i32 10)
  br label %for.end

if.end.12:                                        ; preds = %for.cond
  br label %for.inc

for.inc:                                          ; preds = %if.end.12
  %13 = load i32, i32* %k, align 4
  %add = add nsw i32 %13, 2
  store i32 %add, i32* %k, align 4
  br label %for.cond

for.end:                                          ; preds = %if.then.10
  ret i32 0
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define internal i32 @mu(%struct.p_type* byval align 8 %p, i32 %maxdep, i32 %dep, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %maxdep.addr = alloca i32, align 4
  %dep.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %win = alloca i32, align 4
  %agg.tmp = alloca %struct.p_type, align 8
  %agg.tmp98 = alloca %struct.p_type, align 8
  %agg.tmp115 = alloca %struct.p_type, align 8
  store i32 %maxdep, i32* %maxdep.addr, align 4
  store i32 %dep, i32* %dep.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  %0 = load i32, i32* %dep.addr, align 4
  %1 = load i32, i32* %maxdep.addr, align 4
  %sub = sub nsw i32 %1, 4
  %cmp = icmp eq i32 %0, %sub
  br i1 %cmp, label %if.then, label %if.end.51

if.then:                                          ; preds = %entry
  %b = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 1
  %2 = load i32, i32* %b, align 4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom
  %3 = load i32, i32* %arrayidx, align 4
  %and = and i32 2, %3
  %cmp1 = icmp eq i32 %and, 0
  br i1 %cmp1, label %if.then.2, label %if.end

if.then.2:                                        ; preds = %if.then
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %if.then
  %d = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 3
  %4 = load i32, i32* %d, align 4
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom3
  %5 = load i32, i32* %arrayidx4, align 4
  %and5 = and i32 8, %5
  %cmp6 = icmp eq i32 %and5, 0
  br i1 %cmp6, label %if.then.7, label %if.end.8

if.then.7:                                        ; preds = %if.end
  store i32 0, i32* %retval
  br label %return

if.end.8:                                         ; preds = %if.end
  %bi = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %6 = load i32, i32* %bi, align 4
  %idxprom9 = sext i32 %6 to i64
  %arrayidx10 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom9
  %7 = load i32, i32* %arrayidx10, align 4
  %and11 = and i32 16, %7
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.then.13, label %if.end.14

if.then.13:                                       ; preds = %if.end.8
  store i32 0, i32* %retval
  br label %return

if.end.14:                                        ; preds = %if.end.8
  %ar = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %8 = load i32, i32* %ar, align 4
  %idxprom15 = sext i32 %8 to i64
  %arrayidx16 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom15
  %9 = load i32, i32* %arrayidx16, align 4
  %and17 = and i32 32, %9
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then.19, label %if.end.20

if.then.19:                                       ; preds = %if.end.14
  store i32 0, i32* %retval
  br label %return

if.end.20:                                        ; preds = %if.end.14
  %a = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 0
  %10 = load i32, i32* %a, align 4
  %idxprom21 = sext i32 %10 to i64
  %arrayidx22 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom21
  %11 = load i32, i32* %arrayidx22, align 4
  %and23 = and i32 1, %11
  %cmp24 = icmp eq i32 %and23, 0
  br i1 %cmp24, label %if.then.25, label %if.end.26

if.then.25:                                       ; preds = %if.end.20
  store i32 0, i32* %retval
  br label %return

if.end.26:                                        ; preds = %if.end.20
  %c = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 2
  %12 = load i32, i32* %c, align 4
  %idxprom27 = sext i32 %12 to i64
  %arrayidx28 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom27
  %13 = load i32, i32* %arrayidx28, align 4
  %and29 = and i32 4, %13
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.then.31, label %if.end.32

if.then.31:                                       ; preds = %if.end.26
  store i32 0, i32* %retval
  br label %return

if.end.32:                                        ; preds = %if.end.26
  %g1 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %14 = load i32, i32* %g1, align 4
  %idxprom33 = sext i32 %14 to i64
  %arrayidx34 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom33
  %15 = load i32, i32* %arrayidx34, align 4
  %and35 = and i32 64, %15
  %cmp36 = icmp eq i32 %and35, 0
  br i1 %cmp36, label %if.then.37, label %if.end.38

if.then.37:                                       ; preds = %if.end.32
  store i32 0, i32* %retval
  br label %return

if.end.38:                                        ; preds = %if.end.32
  %g2 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %16 = load i32, i32* %g2, align 4
  %idxprom39 = sext i32 %16 to i64
  %arrayidx40 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom39
  %17 = load i32, i32* %arrayidx40, align 4
  %and41 = and i32 64, %17
  %cmp42 = icmp eq i32 %and41, 0
  br i1 %cmp42, label %if.then.43, label %if.end.44

if.then.43:                                       ; preds = %if.end.38
  store i32 0, i32* %retval
  br label %return

if.end.44:                                        ; preds = %if.end.38
  %g3 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %18 = load i32, i32* %g3, align 4
  %idxprom45 = sext i32 %18 to i64
  %arrayidx46 = getelementptr inbounds [18 x i32], [18 x i32]* @mu.near, i32 0, i64 %idxprom45
  %19 = load i32, i32* %arrayidx46, align 4
  %and47 = and i32 64, %19
  %cmp48 = icmp eq i32 %and47, 0
  br i1 %cmp48, label %if.then.49, label %if.end.50

if.then.49:                                       ; preds = %if.end.44
  store i32 0, i32* %retval
  br label %return

if.end.50:                                        ; preds = %if.end.44
  br label %if.end.51

if.end.51:                                        ; preds = %if.end.50, %entry
  %a52 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 0
  %20 = load i32, i32* %a52, align 4
  %cmp53 = icmp eq i32 %20, 5
  br i1 %cmp53, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %if.end.51
  %b54 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 1
  %21 = load i32, i32* %b54, align 4
  %cmp55 = icmp eq i32 %21, 6
  br i1 %cmp55, label %land.lhs.true.56, label %if.else

land.lhs.true.56:                                 ; preds = %land.lhs.true
  %c57 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 2
  %22 = load i32, i32* %c57, align 4
  %cmp58 = icmp eq i32 %22, 12
  br i1 %cmp58, label %land.lhs.true.59, label %if.else

land.lhs.true.59:                                 ; preds = %land.lhs.true.56
  %d60 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 3
  %23 = load i32, i32* %d60, align 4
  %cmp61 = icmp eq i32 %23, 13
  br i1 %cmp61, label %land.lhs.true.62, label %if.else

land.lhs.true.62:                                 ; preds = %land.lhs.true.59
  %bi63 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %24 = load i32, i32* %bi63, align 4
  %cmp64 = icmp eq i32 %24, 14
  br i1 %cmp64, label %land.lhs.true.65, label %if.else

land.lhs.true.65:                                 ; preds = %land.lhs.true.62
  %ar66 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %25 = load i32, i32* %ar66, align 4
  %cmp67 = icmp eq i32 %25, 15
  br i1 %cmp67, label %land.lhs.true.68, label %if.else

land.lhs.true.68:                                 ; preds = %land.lhs.true.65
  %g169 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %26 = load i32, i32* %g169, align 4
  %g270 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %27 = load i32, i32* %g270, align 4
  %add = add nsw i32 %26, %27
  %g371 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %28 = load i32, i32* %g371, align 4
  %add72 = add nsw i32 %add, %28
  %cmp73 = icmp eq i32 %add72, 3
  br i1 %cmp73, label %if.then.74, label %if.else

if.then.74:                                       ; preds = %land.lhs.true.68
  %g175 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %29 = load i32, i32* %g175, align 4
  %g276 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %30 = load i32, i32* %g276, align 4
  %g377 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %31 = load i32, i32* %g377, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0), i32 %29, i32 %30, i32 %31)
  %bi78 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %32 = load i32, i32* %bi78, align 4
  %ar79 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %33 = load i32, i32* %ar79, align 4
  %call80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i32 %32, i32 %33)
  store i32 1, i32* %retval
  br label %return

if.else:                                          ; preds = %land.lhs.true.68, %land.lhs.true.65, %land.lhs.true.62, %land.lhs.true.59, %land.lhs.true.56, %land.lhs.true, %if.end.51
  %34 = load i32, i32* %maxdep.addr, align 4
  %35 = load i32, i32* %dep.addr, align 4
  %cmp81 = icmp sle i32 %34, %35
  br i1 %cmp81, label %if.then.82, label %if.end.83

if.then.82:                                       ; preds = %if.else
  store i32 0, i32* %retval
  br label %return

if.end.83:                                        ; preds = %if.else
  %36 = load i32, i32* %last.addr, align 4
  %cmp84 = icmp eq i32 %36, 0
  br i1 %cmp84, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end.83
  br label %cond.end

cond.false:                                       ; preds = %if.end.83
  call void @m0u(%struct.p_type* sret %agg.tmp, %struct.p_type* byval align 8 %p)
  %37 = load i32, i32* %maxdep.addr, align 4
  %38 = load i32, i32* %dep.addr, align 4
  %add85 = add nsw i32 %38, 1
  %call86 = call i32 @md(%struct.p_type* byval align 8 %agg.tmp, i32 %37, i32 %add85, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call86, %cond.false ]
  store i32 %cond, i32* %win, align 4
  %39 = load i32, i32* %win, align 4
  %cmp87 = icmp eq i32 %39, 1
  br i1 %cmp87, label %if.then.88, label %if.else.94

if.then.88:                                       ; preds = %cond.end
  %call89 = call i32 @putchar(i32 48)
  %40 = load i32, i32* %dep.addr, align 4
  %rem = srem i32 %40, 4
  %cmp90 = icmp eq i32 %rem, 0
  br i1 %cmp90, label %if.then.91, label %if.end.93

if.then.91:                                       ; preds = %if.then.88
  %call92 = call i32 @putchar(i32 32)
  br label %if.end.93

if.end.93:                                        ; preds = %if.then.91, %if.then.88
  %41 = load i32, i32* %win, align 4
  store i32 %41, i32* %retval
  br label %return

if.else.94:                                       ; preds = %cond.end
  %42 = load i32, i32* %last.addr, align 4
  %cmp95 = icmp eq i32 %42, 1
  br i1 %cmp95, label %cond.true.96, label %cond.false.97

cond.true.96:                                     ; preds = %if.else.94
  br label %cond.end.101

cond.false.97:                                    ; preds = %if.else.94
  call void @m1u(%struct.p_type* sret %agg.tmp98, %struct.p_type* byval align 8 %p)
  %43 = load i32, i32* %maxdep.addr, align 4
  %44 = load i32, i32* %dep.addr, align 4
  %add99 = add nsw i32 %44, 1
  %call100 = call i32 @md(%struct.p_type* byval align 8 %agg.tmp98, i32 %43, i32 %add99, i32 1)
  br label %cond.end.101

cond.end.101:                                     ; preds = %cond.false.97, %cond.true.96
  %cond102 = phi i32 [ 0, %cond.true.96 ], [ %call100, %cond.false.97 ]
  store i32 %cond102, i32* %win, align 4
  %45 = load i32, i32* %win, align 4
  %cmp103 = icmp eq i32 %45, 1
  br i1 %cmp103, label %if.then.104, label %if.else.111

if.then.104:                                      ; preds = %cond.end.101
  %call105 = call i32 @putchar(i32 49)
  %46 = load i32, i32* %dep.addr, align 4
  %rem106 = srem i32 %46, 4
  %cmp107 = icmp eq i32 %rem106, 0
  br i1 %cmp107, label %if.then.108, label %if.end.110

if.then.108:                                      ; preds = %if.then.104
  %call109 = call i32 @putchar(i32 32)
  br label %if.end.110

if.end.110:                                       ; preds = %if.then.108, %if.then.104
  %47 = load i32, i32* %win, align 4
  store i32 %47, i32* %retval
  br label %return

if.else.111:                                      ; preds = %cond.end.101
  %48 = load i32, i32* %last.addr, align 4
  %cmp112 = icmp eq i32 %48, 2
  br i1 %cmp112, label %cond.true.113, label %cond.false.114

cond.true.113:                                    ; preds = %if.else.111
  br label %cond.end.118

cond.false.114:                                   ; preds = %if.else.111
  call void @m2u(%struct.p_type* sret %agg.tmp115, %struct.p_type* byval align 8 %p)
  %49 = load i32, i32* %maxdep.addr, align 4
  %50 = load i32, i32* %dep.addr, align 4
  %add116 = add nsw i32 %50, 1
  %call117 = call i32 @md(%struct.p_type* byval align 8 %agg.tmp115, i32 %49, i32 %add116, i32 2)
  br label %cond.end.118

cond.end.118:                                     ; preds = %cond.false.114, %cond.true.113
  %cond119 = phi i32 [ 0, %cond.true.113 ], [ %call117, %cond.false.114 ]
  store i32 %cond119, i32* %win, align 4
  %51 = load i32, i32* %win, align 4
  %cmp120 = icmp eq i32 %51, 1
  br i1 %cmp120, label %if.then.121, label %if.end.128

if.then.121:                                      ; preds = %cond.end.118
  %call122 = call i32 @putchar(i32 50)
  %52 = load i32, i32* %dep.addr, align 4
  %rem123 = srem i32 %52, 4
  %cmp124 = icmp eq i32 %rem123, 0
  br i1 %cmp124, label %if.then.125, label %if.end.127

if.then.125:                                      ; preds = %if.then.121
  %call126 = call i32 @putchar(i32 32)
  br label %if.end.127

if.end.127:                                       ; preds = %if.then.125, %if.then.121
  br label %if.end.128

if.end.128:                                       ; preds = %if.end.127, %cond.end.118
  %53 = load i32, i32* %win, align 4
  store i32 %53, i32* %retval
  br label %return

return:                                           ; preds = %if.end.128, %if.end.110, %if.end.93, %if.then.82, %if.then.74, %if.then.49, %if.then.43, %if.then.37, %if.then.31, %if.then.25, %if.then.19, %if.then.13, %if.then.7, %if.then.2
  %54 = load i32, i32* %retval
  ret i32 %54
}

declare i32 @putchar(i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @md(%struct.p_type* byval align 8 %p, i32 %maxdep, i32 %dep, i32 %last) #0 {
entry:
  %retval = alloca i32, align 4
  %maxdep.addr = alloca i32, align 4
  %dep.addr = alloca i32, align 4
  %last.addr = alloca i32, align 4
  %win = alloca i32, align 4
  %agg.tmp = alloca %struct.p_type, align 8
  %agg.tmp12 = alloca %struct.p_type, align 8
  %agg.tmp29 = alloca %struct.p_type, align 8
  store i32 %maxdep, i32* %maxdep.addr, align 4
  store i32 %dep, i32* %dep.addr, align 4
  store i32 %last, i32* %last.addr, align 4
  %0 = load i32, i32* %maxdep.addr, align 4
  %1 = load i32, i32* %dep.addr, align 4
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %2 = load i32, i32* %last.addr, align 4
  %cmp1 = icmp eq i32 %2, 0
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @m0d(%struct.p_type* sret %agg.tmp, %struct.p_type* byval align 8 %p)
  %3 = load i32, i32* %maxdep.addr, align 4
  %4 = load i32, i32* %dep.addr, align 4
  %add = add nsw i32 %4, 1
  %call = call i32 @mu(%struct.p_type* byval align 8 %agg.tmp, i32 %3, i32 %add, i32 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 0, %cond.true ], [ %call, %cond.false ]
  store i32 %cond, i32* %win, align 4
  %5 = load i32, i32* %win, align 4
  %cmp2 = icmp eq i32 %5, 1
  br i1 %cmp2, label %if.then.3, label %if.else

if.then.3:                                        ; preds = %cond.end
  %call4 = call i32 @putchar(i32 48)
  %6 = load i32, i32* %dep.addr, align 4
  %rem = srem i32 %6, 4
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then.6, label %if.end.8

if.then.6:                                        ; preds = %if.then.3
  %call7 = call i32 @putchar(i32 32)
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.6, %if.then.3
  %7 = load i32, i32* %win, align 4
  store i32 %7, i32* %retval
  br label %return

if.else:                                          ; preds = %cond.end
  %8 = load i32, i32* %last.addr, align 4
  %cmp9 = icmp eq i32 %8, 1
  br i1 %cmp9, label %cond.true.10, label %cond.false.11

cond.true.10:                                     ; preds = %if.else
  br label %cond.end.15

cond.false.11:                                    ; preds = %if.else
  call void @m1d(%struct.p_type* sret %agg.tmp12, %struct.p_type* byval align 8 %p)
  %9 = load i32, i32* %maxdep.addr, align 4
  %10 = load i32, i32* %dep.addr, align 4
  %add13 = add nsw i32 %10, 1
  %call14 = call i32 @mu(%struct.p_type* byval align 8 %agg.tmp12, i32 %9, i32 %add13, i32 1)
  br label %cond.end.15

cond.end.15:                                      ; preds = %cond.false.11, %cond.true.10
  %cond16 = phi i32 [ 0, %cond.true.10 ], [ %call14, %cond.false.11 ]
  store i32 %cond16, i32* %win, align 4
  %11 = load i32, i32* %win, align 4
  %cmp17 = icmp eq i32 %11, 1
  br i1 %cmp17, label %if.then.18, label %if.else.25

if.then.18:                                       ; preds = %cond.end.15
  %call19 = call i32 @putchar(i32 49)
  %12 = load i32, i32* %dep.addr, align 4
  %rem20 = srem i32 %12, 4
  %cmp21 = icmp eq i32 %rem20, 0
  br i1 %cmp21, label %if.then.22, label %if.end.24

if.then.22:                                       ; preds = %if.then.18
  %call23 = call i32 @putchar(i32 32)
  br label %if.end.24

if.end.24:                                        ; preds = %if.then.22, %if.then.18
  %13 = load i32, i32* %win, align 4
  store i32 %13, i32* %retval
  br label %return

if.else.25:                                       ; preds = %cond.end.15
  %14 = load i32, i32* %last.addr, align 4
  %cmp26 = icmp eq i32 %14, 2
  br i1 %cmp26, label %cond.true.27, label %cond.false.28

cond.true.27:                                     ; preds = %if.else.25
  br label %cond.end.32

cond.false.28:                                    ; preds = %if.else.25
  call void @m2d(%struct.p_type* sret %agg.tmp29, %struct.p_type* byval align 8 %p)
  %15 = load i32, i32* %maxdep.addr, align 4
  %16 = load i32, i32* %dep.addr, align 4
  %add30 = add nsw i32 %16, 1
  %call31 = call i32 @mu(%struct.p_type* byval align 8 %agg.tmp29, i32 %15, i32 %add30, i32 2)
  br label %cond.end.32

cond.end.32:                                      ; preds = %cond.false.28, %cond.true.27
  %cond33 = phi i32 [ 0, %cond.true.27 ], [ %call31, %cond.false.28 ]
  store i32 %cond33, i32* %win, align 4
  %17 = load i32, i32* %win, align 4
  %cmp34 = icmp eq i32 %17, 1
  br i1 %cmp34, label %if.then.35, label %if.end.42

if.then.35:                                       ; preds = %cond.end.32
  %call36 = call i32 @putchar(i32 50)
  %18 = load i32, i32* %dep.addr, align 4
  %rem37 = srem i32 %18, 4
  %cmp38 = icmp eq i32 %rem37, 0
  br i1 %cmp38, label %if.then.39, label %if.end.41

if.then.39:                                       ; preds = %if.then.35
  %call40 = call i32 @putchar(i32 32)
  br label %if.end.41

if.end.41:                                        ; preds = %if.then.39, %if.then.35
  br label %if.end.42

if.end.42:                                        ; preds = %if.end.41, %cond.end.32
  %19 = load i32, i32* %win, align 4
  store i32 %19, i32* %retval
  br label %return

return:                                           ; preds = %if.end.42, %if.end.24, %if.end.8, %if.then
  %20 = load i32, i32* %retval
  ret i32 %20
}

; Function Attrs: nounwind uwtable
define internal void @m0u(%struct.p_type* noalias sret %agg.result, %struct.p_type* byval align 8 %p) #0 {
entry:
  %m = alloca [18 x i32], align 16
  %pu = alloca %struct.p_type, align 4
  %0 = bitcast [18 x i32]* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([18 x i32]* @m0u.m to i8*), i64 72, i32 16, i1 false)
  %a = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 0
  %1 = load i32, i32* %a, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %a1 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 0
  store i32 %2, i32* %a1, align 4
  %b = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 1
  %3 = load i32, i32* %b, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %b4 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 1
  store i32 %4, i32* %b4, align 4
  %c = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 2
  %5 = load i32, i32* %c, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %c7 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 2
  store i32 %6, i32* %c7, align 4
  %d = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 3
  %7 = load i32, i32* %d, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  %d10 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 3
  store i32 %8, i32* %d10, align 4
  %bi = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %9 = load i32, i32* %bi, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %bi13 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 4
  store i32 %10, i32* %bi13, align 4
  %ar = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %11 = load i32, i32* %ar, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %ar16 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 5
  store i32 %12, i32* %ar16, align 4
  %g1 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %13 = load i32, i32* %g1, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %g119 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 6
  store i32 %14, i32* %g119, align 4
  %g2 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %15 = load i32, i32* %g2, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %g222 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 7
  store i32 %16, i32* %g222, align 4
  %g3 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %17 = load i32, i32* %g3, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  %g325 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 8
  store i32 %18, i32* %g325, align 4
  %19 = bitcast %struct.p_type* %agg.result to i8*
  %20 = bitcast %struct.p_type* %pu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 36, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @m1u(%struct.p_type* noalias sret %agg.result, %struct.p_type* byval align 8 %p) #0 {
entry:
  %0 = bitcast %struct.p_type* %agg.result to i8*
  %1 = bitcast %struct.p_type* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 36, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @m2u(%struct.p_type* noalias sret %agg.result, %struct.p_type* byval align 8 %p) #0 {
entry:
  %m = alloca [18 x i32], align 16
  %pu = alloca %struct.p_type, align 4
  %0 = bitcast [18 x i32]* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([18 x i32]* @m2u.m to i8*), i64 72, i32 16, i1 false)
  %a = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 0
  %1 = load i32, i32* %a, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %a1 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 0
  store i32 %2, i32* %a1, align 4
  %b = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 1
  %3 = load i32, i32* %b, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %b4 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 1
  store i32 %4, i32* %b4, align 4
  %c = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 2
  %5 = load i32, i32* %c, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %c7 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 2
  store i32 %6, i32* %c7, align 4
  %d = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 3
  %7 = load i32, i32* %d, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  %d10 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 3
  store i32 %8, i32* %d10, align 4
  %bi = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %9 = load i32, i32* %bi, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %bi13 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 4
  store i32 %10, i32* %bi13, align 4
  %ar = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %11 = load i32, i32* %ar, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %ar16 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 5
  store i32 %12, i32* %ar16, align 4
  %g1 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %13 = load i32, i32* %g1, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %g119 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 6
  store i32 %14, i32* %g119, align 4
  %g2 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %15 = load i32, i32* %g2, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %g222 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 7
  store i32 %16, i32* %g222, align 4
  %g3 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %17 = load i32, i32* %g3, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  %g325 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 8
  store i32 %18, i32* %g325, align 4
  %19 = bitcast %struct.p_type* %agg.result to i8*
  %20 = bitcast %struct.p_type* %pu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 36, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @m0d(%struct.p_type* noalias sret %agg.result, %struct.p_type* byval align 8 %p) #0 {
entry:
  %m = alloca [18 x i32], align 16
  %pu = alloca %struct.p_type, align 4
  %0 = bitcast [18 x i32]* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([18 x i32]* @m0d.m to i8*), i64 72, i32 16, i1 false)
  %a = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 0
  %1 = load i32, i32* %a, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %a1 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 0
  store i32 %2, i32* %a1, align 4
  %b = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 1
  %3 = load i32, i32* %b, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %b4 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 1
  store i32 %4, i32* %b4, align 4
  %c = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 2
  %5 = load i32, i32* %c, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %c7 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 2
  store i32 %6, i32* %c7, align 4
  %d = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 3
  %7 = load i32, i32* %d, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  %d10 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 3
  store i32 %8, i32* %d10, align 4
  %bi = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %9 = load i32, i32* %bi, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %bi13 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 4
  store i32 %10, i32* %bi13, align 4
  %ar = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %11 = load i32, i32* %ar, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %ar16 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 5
  store i32 %12, i32* %ar16, align 4
  %g1 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %13 = load i32, i32* %g1, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %g119 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 6
  store i32 %14, i32* %g119, align 4
  %g2 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %15 = load i32, i32* %g2, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %g222 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 7
  store i32 %16, i32* %g222, align 4
  %g3 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %17 = load i32, i32* %g3, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  %g325 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 8
  store i32 %18, i32* %g325, align 4
  %19 = bitcast %struct.p_type* %agg.result to i8*
  %20 = bitcast %struct.p_type* %pu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 36, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @m1d(%struct.p_type* noalias sret %agg.result, %struct.p_type* byval align 8 %p) #0 {
entry:
  %0 = bitcast %struct.p_type* %agg.result to i8*
  %1 = bitcast %struct.p_type* %p to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* %1, i64 36, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @m2d(%struct.p_type* noalias sret %agg.result, %struct.p_type* byval align 8 %p) #0 {
entry:
  %m = alloca [18 x i32], align 16
  %pu = alloca %struct.p_type, align 4
  %0 = bitcast [18 x i32]* %m to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %0, i8* bitcast ([18 x i32]* @m2d.m to i8*), i64 72, i32 16, i1 false)
  %a = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 0
  %1 = load i32, i32* %a, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom
  %2 = load i32, i32* %arrayidx, align 4
  %a1 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 0
  store i32 %2, i32* %a1, align 4
  %b = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 1
  %3 = load i32, i32* %b, align 4
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom2
  %4 = load i32, i32* %arrayidx3, align 4
  %b4 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 1
  store i32 %4, i32* %b4, align 4
  %c = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 2
  %5 = load i32, i32* %c, align 4
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom5
  %6 = load i32, i32* %arrayidx6, align 4
  %c7 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 2
  store i32 %6, i32* %c7, align 4
  %d = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 3
  %7 = load i32, i32* %d, align 4
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom8
  %8 = load i32, i32* %arrayidx9, align 4
  %d10 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 3
  store i32 %8, i32* %d10, align 4
  %bi = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 4
  %9 = load i32, i32* %bi, align 4
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom11
  %10 = load i32, i32* %arrayidx12, align 4
  %bi13 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 4
  store i32 %10, i32* %bi13, align 4
  %ar = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 5
  %11 = load i32, i32* %ar, align 4
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom14
  %12 = load i32, i32* %arrayidx15, align 4
  %ar16 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 5
  store i32 %12, i32* %ar16, align 4
  %g1 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 6
  %13 = load i32, i32* %g1, align 4
  %idxprom17 = sext i32 %13 to i64
  %arrayidx18 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom17
  %14 = load i32, i32* %arrayidx18, align 4
  %g119 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 6
  store i32 %14, i32* %g119, align 4
  %g2 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 7
  %15 = load i32, i32* %g2, align 4
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom20
  %16 = load i32, i32* %arrayidx21, align 4
  %g222 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 7
  store i32 %16, i32* %g222, align 4
  %g3 = getelementptr inbounds %struct.p_type, %struct.p_type* %p, i32 0, i32 8
  %17 = load i32, i32* %g3, align 4
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [18 x i32], [18 x i32]* %m, i32 0, i64 %idxprom23
  %18 = load i32, i32* %arrayidx24, align 4
  %g325 = getelementptr inbounds %struct.p_type, %struct.p_type* %pu, i32 0, i32 8
  store i32 %18, i32* %g325, align 4
  %19 = bitcast %struct.p_type* %agg.result to i8*
  %20 = bitcast %struct.p_type* %pu to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %19, i8* %20, i64 36, i32 4, i1 false)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture, i8* nocapture readonly, i64, i32, i1) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
