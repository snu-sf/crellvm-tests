; ModuleID = './lib/argmatch.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }

@argmatch_die = global void ()* @__argmatch_die, align 8
@.str = private unnamed_addr constant [29 x i8] c"invalid argument %s for `%s'\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ambiguous argument %s for `%s'\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"Valid arguments are:\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"\0A  - `%s'\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c", `%s'\00", align 1

; Function Attrs: nounwind uwtable
define internal void @__argmatch_die() #0 {
entry:
  call void @exit(i32 1) #5
  unreachable

return:                                           ; No predecessors!
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @argmatch(i8* %arg, i8** %arglist, i8* %vallist, i64 %valsize) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8**, i8*** %arglist.addr, align 8
  %2 = load i8*, i8** %vallist.addr, align 8
  %3 = load i64, i64* %valsize.addr, align 8
  %call = call i32 @__argmatch_internal(i8* %0, i8** %1, i8* %2, i64 %3, i32 1)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define internal i32 @__argmatch_internal(i8* %arg, i8** %arglist, i8* %vallist, i64 %valsize, i32 %case_sensitive) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %case_sensitive.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %arglen = alloca i64, align 8
  %matchind = alloca i32, align 4
  %ambiguous = alloca i32, align 4
  store i8* %arg, i8** %arg.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store i32 %case_sensitive, i32* %case_sensitive.addr, align 4
  store i32 -1, i32* %matchind, align 4
  store i32 0, i32* %ambiguous, align 4
  %0 = load i8*, i8** %arg.addr, align 8
  %call = call i64 @strlen(i8* %0) #6
  store i64 %call, i64* %arglen, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %case_sensitive.addr, align 4
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %5 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %5 to i64
  %6 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %6, i64 %idxprom2
  %7 = load i8*, i8** %arrayidx3, align 8
  %8 = load i8*, i8** %arg.addr, align 8
  %9 = load i64, i64* %arglen, align 8
  %call4 = call i32 @strncmp(i8* %7, i8* %8, i64 %9) #6
  %tobool5 = icmp ne i32 %call4, 0
  br i1 %tobool5, label %if.end.26, label %if.then

cond.false:                                       ; preds = %for.body
  %10 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %10 to i64
  %11 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx7 = getelementptr inbounds i8*, i8** %11, i64 %idxprom6
  %12 = load i8*, i8** %arrayidx7, align 8
  %13 = load i8*, i8** %arg.addr, align 8
  %14 = load i64, i64* %arglen, align 8
  %call8 = call i32 @strncasecmp(i8* %12, i8* %13, i64 %14) #6
  %tobool9 = icmp ne i32 %call8, 0
  br i1 %tobool9, label %if.end.26, label %if.then

if.then:                                          ; preds = %cond.false, %cond.true
  %15 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %15 to i64
  %16 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %16, i64 %idxprom10
  %17 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i64 @strlen(i8* %17) #6
  %18 = load i64, i64* %arglen, align 8
  %cmp = icmp eq i64 %call12, %18
  br i1 %cmp, label %if.then.13, label %if.else

if.then.13:                                       ; preds = %if.then
  %19 = load i32, i32* %i, align 4
  store i32 %19, i32* %retval
  br label %return

if.else:                                          ; preds = %if.then
  %20 = load i32, i32* %matchind, align 4
  %cmp14 = icmp eq i32 %20, -1
  br i1 %cmp14, label %if.then.15, label %if.else.16

if.then.15:                                       ; preds = %if.else
  %21 = load i32, i32* %i, align 4
  store i32 %21, i32* %matchind, align 4
  br label %if.end.24

if.else.16:                                       ; preds = %if.else
  %22 = load i8*, i8** %vallist.addr, align 8
  %cmp17 = icmp eq i8* %22, null
  br i1 %cmp17, label %if.then.23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else.16
  %23 = load i8*, i8** %vallist.addr, align 8
  %24 = load i64, i64* %valsize.addr, align 8
  %25 = load i32, i32* %matchind, align 4
  %conv = sext i32 %25 to i64
  %mul = mul i64 %24, %conv
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %mul
  %26 = load i8*, i8** %vallist.addr, align 8
  %27 = load i64, i64* %valsize.addr, align 8
  %28 = load i32, i32* %i, align 4
  %conv18 = sext i32 %28 to i64
  %mul19 = mul i64 %27, %conv18
  %add.ptr20 = getelementptr inbounds i8, i8* %26, i64 %mul19
  %29 = load i64, i64* %valsize.addr, align 8
  %call21 = call i32 @memcmp(i8* %add.ptr, i8* %add.ptr20, i64 %29) #6
  %tobool22 = icmp ne i32 %call21, 0
  br i1 %tobool22, label %if.then.23, label %if.end

if.then.23:                                       ; preds = %lor.lhs.false, %if.else.16
  store i32 1, i32* %ambiguous, align 4
  br label %if.end

if.end:                                           ; preds = %if.then.23, %lor.lhs.false
  br label %if.end.24

if.end.24:                                        ; preds = %if.end, %if.then.15
  br label %if.end.25

if.end.25:                                        ; preds = %if.end.24
  br label %if.end.26

if.end.26:                                        ; preds = %if.end.25, %cond.false, %cond.true
  br label %for.inc

for.inc:                                          ; preds = %if.end.26
  %30 = load i32, i32* %i, align 4
  %inc = add nsw i32 %30, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %31 = load i32, i32* %ambiguous, align 4
  %tobool27 = icmp ne i32 %31, 0
  br i1 %tobool27, label %if.then.28, label %if.else.29

if.then.28:                                       ; preds = %for.end
  store i32 -2, i32* %retval
  br label %return

if.else.29:                                       ; preds = %for.end
  %32 = load i32, i32* %matchind, align 4
  store i32 %32, i32* %retval
  br label %return

return:                                           ; preds = %if.else.29, %if.then.28, %if.then.13
  %33 = load i32, i32* %retval
  ret i32 %33
}

; Function Attrs: nounwind uwtable
define i32 @argcasematch(i8* %arg, i8** %arglist, i8* %vallist, i64 %valsize) #0 {
entry:
  %arg.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8**, i8*** %arglist.addr, align 8
  %2 = load i8*, i8** %vallist.addr, align 8
  %3 = load i64, i64* %valsize.addr, align 8
  %call = call i32 @__argmatch_internal(i8* %0, i8** %1, i8* %2, i64 %3, i32 0)
  ret i32 %call
}

; Function Attrs: nounwind uwtable
define void @argmatch_invalid(i8* %context, i8* %value, i32 %problem) #0 {
entry:
  %context.addr = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %problem.addr = alloca i32, align 4
  %format = alloca i8*, align 8
  store i8* %context, i8** %context.addr, align 8
  store i8* %value, i8** %value.addr, align 8
  store i32 %problem, i32* %problem.addr, align 4
  %0 = load i32, i32* %problem.addr, align 4
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  %call = call i8* @gettext(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0)) #7
  br label %cond.end

cond.false:                                       ; preds = %entry
  %call1 = call i8* @gettext(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0)) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ %call1, %cond.false ]
  store i8* %cond, i8** %format, align 8
  %1 = load i8*, i8** %format, align 8
  %2 = load i8*, i8** %value.addr, align 8
  %call2 = call i8* @quotearg_style(i32 5, i8* %2)
  %3 = load i8*, i8** %context.addr, align 8
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %1, i8* %call2, i8* %3)
  ret void
}

; Function Attrs: nounwind
declare i8* @gettext(i8*) #1

declare void @error(i32, i32, i8*, ...) #2

declare i8* @quotearg_style(i32, i8*) #2

; Function Attrs: nounwind uwtable
define void @argmatch_valid(i8** %arglist, i8* %vallist, i64 %valsize) #0 {
entry:
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %last_val = alloca i8*, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store i8* null, i8** %last_val, align 8
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call = call i8* @gettext(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0)) #7
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* %call)
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %2 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom
  %3 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %3, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4
  %cmp = icmp eq i32 %4, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %5 = load i8*, i8** %last_val, align 8
  %6 = load i8*, i8** %vallist.addr, align 8
  %7 = load i64, i64* %valsize.addr, align 8
  %8 = load i32, i32* %i, align 4
  %conv = sext i32 %8 to i64
  %mul = mul i64 %7, %conv
  %add.ptr = getelementptr inbounds i8, i8* %6, i64 %mul
  %9 = load i64, i64* %valsize.addr, align 8
  %call2 = call i32 @memcmp(i8* %5, i8* %add.ptr, i64 %9) #6
  %tobool3 = icmp ne i32 %call2, 0
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %for.body
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %11 to i64
  %12 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx5 = getelementptr inbounds i8*, i8** %12, i64 %idxprom4
  %13 = load i8*, i8** %arrayidx5, align 8
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i32 0, i32 0), i8* %13)
  %14 = load i8*, i8** %vallist.addr, align 8
  %15 = load i64, i64* %valsize.addr, align 8
  %16 = load i32, i32* %i, align 4
  %conv7 = sext i32 %16 to i64
  %mul8 = mul i64 %15, %conv7
  %add.ptr9 = getelementptr inbounds i8, i8* %14, i64 %mul8
  store i8* %add.ptr9, i8** %last_val, align 8
  br label %if.end

if.else:                                          ; preds = %lor.lhs.false
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %18 = load i32, i32* %i, align 4
  %idxprom10 = sext i32 %18 to i64
  %19 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx11 = getelementptr inbounds i8*, i8** %19, i64 %idxprom10
  %20 = load i8*, i8** %arrayidx11, align 8
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), i8* %20)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4
  %inc = add nsw i32 %21, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %call13 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %22)
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8*, i8*, i64) #3

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define i32 @__xargmatch_internal(i8* %context, i8* %arg, i8** %arglist, i8* %vallist, i64 %valsize, i32 %case_sensitive, void ()* %exit_fn) #0 {
entry:
  %retval = alloca i32, align 4
  %context.addr = alloca i8*, align 8
  %arg.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %case_sensitive.addr = alloca i32, align 4
  %exit_fn.addr = alloca void ()*, align 8
  %res = alloca i32, align 4
  store i8* %context, i8** %context.addr, align 8
  store i8* %arg, i8** %arg.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store i32 %case_sensitive, i32* %case_sensitive.addr, align 4
  store void ()* %exit_fn, void ()** %exit_fn.addr, align 8
  %0 = load i8*, i8** %arg.addr, align 8
  %1 = load i8**, i8*** %arglist.addr, align 8
  %2 = load i8*, i8** %vallist.addr, align 8
  %3 = load i64, i64* %valsize.addr, align 8
  %4 = load i32, i32* %case_sensitive.addr, align 4
  %call = call i32 @__argmatch_internal(i8* %0, i8** %1, i8* %2, i64 %3, i32 %4)
  store i32 %call, i32* %res, align 4
  %5 = load i32, i32* %res, align 4
  %cmp = icmp sge i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %res, align 4
  store i32 %6, i32* %retval
  br label %return

if.end:                                           ; preds = %entry
  %7 = load i8*, i8** %context.addr, align 8
  %8 = load i8*, i8** %arg.addr, align 8
  %9 = load i32, i32* %res, align 4
  call void @argmatch_invalid(i8* %7, i8* %8, i32 %9)
  %10 = load i8**, i8*** %arglist.addr, align 8
  %11 = load i8*, i8** %vallist.addr, align 8
  %12 = load i64, i64* %valsize.addr, align 8
  call void @argmatch_valid(i8** %10, i8* %11, i64 %12)
  %13 = load void ()*, void ()** %exit_fn.addr, align 8
  call void %13()
  store i32 -1, i32* %retval
  br label %return

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval
  ret i32 %14
}

; Function Attrs: nounwind uwtable
define i8* @argmatch_to_argument(i8* %value, i8** %arglist, i8* %vallist, i64 %valsize) #0 {
entry:
  %retval = alloca i8*, align 8
  %value.addr = alloca i8*, align 8
  %arglist.addr = alloca i8**, align 8
  %vallist.addr = alloca i8*, align 8
  %valsize.addr = alloca i64, align 8
  %i = alloca i32, align 4
  store i8* %value, i8** %value.addr, align 8
  store i8** %arglist, i8*** %arglist.addr, align 8
  store i8* %vallist, i8** %vallist.addr, align 8
  store i64 %valsize, i64* %valsize.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %idxprom = sext i32 %0 to i64
  %1 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %1, i64 %idxprom
  %2 = load i8*, i8** %arrayidx, align 8
  %tobool = icmp ne i8* %2, null
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i8*, i8** %value.addr, align 8
  %4 = load i8*, i8** %vallist.addr, align 8
  %5 = load i64, i64* %valsize.addr, align 8
  %6 = load i32, i32* %i, align 4
  %conv = sext i32 %6 to i64
  %mul = mul i64 %5, %conv
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %mul
  %7 = load i64, i64* %valsize.addr, align 8
  %call = call i32 @memcmp(i8* %3, i8* %add.ptr, i64 %7) #6
  %tobool1 = icmp ne i32 %call, 0
  br i1 %tobool1, label %if.end, label %if.then

if.then:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %8 to i64
  %9 = load i8**, i8*** %arglist.addr, align 8
  %arrayidx3 = getelementptr inbounds i8*, i8** %9, i64 %idxprom2
  %10 = load i8*, i8** %arrayidx3, align 8
  store i8* %10, i8** %retval
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, i32* %i, align 4
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i8* null, i8** %retval
  br label %return

return:                                           ; preds = %for.end, %if.then
  %12 = load i8*, i8** %retval
  ret i8* %12
}

; Function Attrs: noreturn
declare void @exit(i32) #4

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: nounwind readonly
declare i32 @strncasecmp(i8*, i8*, i64) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"clang version 3.7.0 (tags/RELEASE_370/final)"}
